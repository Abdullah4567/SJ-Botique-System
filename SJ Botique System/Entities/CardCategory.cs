using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SJ_Botique_System.Entities
{
    public class CardCategory
    {
        //Data Members

        protected int Id;
        protected string Description;

        //Methods

        public int GetId()
        {
            return this.Id;
        }

        public bool UpdateCategory()
        {



            return true;
        }

    }
    public class Platinum:CardCategory
    {

        //DataMembers
       private double DiscountPercent;
        //Members
        public double GetDiscountPercent()
        {

            return this.DiscountPercent;
        
        }



    }
    public class Gold: CardCategory
    {

        //DataMembers
        private double DiscountPercent;
        //Members
        public double GetDiscountPercent()
        {

            return this.DiscountPercent;

        }



    }
    public class Silver : CardCategory
    {

        //DataMembers
        private double DiscountPercent;
        //Members
        public double GetDiscountPercent()
        {

            return this.DiscountPercent;

        }



    }
}