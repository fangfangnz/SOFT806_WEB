using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace Assignment1_WEB {
    public class Security {

        public static string getHash(string email, string password) {
            //get hash
            //mix with salt
            //apply your mecanism
            string hashPassword = computeHash(email + password);
            return hashPassword;
        }

        private static string computeHash(string param) {

            //1. tranform string into byte[]
            byte[] bytePassword = ASCIIEncoding.ASCII.GetBytes(param);

            HashAlgorithm hashAlgorithm = SHA512.Create();

            byte[] hashBytePassword = hashAlgorithm.ComputeHash(bytePassword);

            return Convert.ToBase64String(hashBytePassword);
        }
    }
}