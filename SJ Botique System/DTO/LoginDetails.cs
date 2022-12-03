using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SJ_Botique_System.DTO
{
    public class LoginDetails
    {
        public int UserId;
        public string RollName;

        public LoginDetails(int _userId, string _roleName)
        {
            this.UserId = _userId;
            this.RollName = _roleName;
        }
    }
}