using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment1_WEB {
    public class User {

        public User(string nameParam) {
            userName = nameParam;
        }

        public string userName { get; set; }
    }
}