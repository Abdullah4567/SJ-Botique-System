using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SJ_Botique_System.Entities
{
    public class InventoryPolicy:Policy
    {

        //Methods
       override public void AddPolicy()
        {

            
        }
       override public void ModifyPolicy()
        {


        }
        public InventoryPolicy(int _id, string _description) : base(_id, _description)
        {


        }
    }
}