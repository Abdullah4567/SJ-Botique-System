using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SJ_Botique_System.Entities
{
    public class Policy
    {
        //Class Members
        protected int Id;
        protected string Description;

        //Members

        public int GetId()
        {
            return this.Id;
        }
        public string GetDescription()
        {
            return this.Description;
        }
        public void AddPolicy()
        {

            return;
        }
        public void ModifyPolicy()
        { 
        
        
        }
        public Policy(int _id,string _description)
        {
            this.Id = _id;
            this.Description = _description;

        }
    }
}