﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SJ_Botique_System.Entities
{
    public class Permission
    {
        //Data Members
        private int Id;
        private string Name;
        private string Description;

        // Methods
        public int GetId()
        {
            return this.Id;
        }
        public void SetId(int _id)
        {
            this.Id = _id;
        }
        public string GetName()
        {
            return this.Name;
        }
        public void SetName(string _name)
        {
            this.Name = _name;
        }
        public string GetDescription()
        {
            return this.Description;
        }
        public void SetDescription(string _description)
        {
            this.Description = _description;
        }
        public Permission(string _name, string _description)
        {
            this.Name = _name;
            this.Description = _description;
        }
    }
}