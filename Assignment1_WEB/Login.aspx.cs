﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1_WEB {
    public partial class Login : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            
        }

        protected void btnLoginClick(object sender, EventArgs e) {

            //TODO validate user in DB
            User user = DBController.validateLogIn(txtEmail.Text, txtPassword.Text);

            //if users exists, should be redirected to main page, 
            if (user != null) {

                HttpCookie httpCookie = new HttpCookie("logedUser");
                httpCookie.Values["firstName"] = user.userName;
                //httpCookie.Values["idUser"] = user.ID.ToString();
                httpCookie.Expires = DateTime.Now.AddDays(3);
                Response.Cookies.Add(httpCookie);              

                Response.Redirect("Default.aspx");

            } else {
                lblErrorMessage.Visible = true;
                lblErrorMessage.Text = "user not found!";
            }

        }
    }
}