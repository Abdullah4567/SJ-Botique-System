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
        public CardCategory(int _id,string _description)
        {
            this.Id = _id;
            this.Description = _description;

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

       public Platinum(int _id, string _description,double _discountpercent) :base(_id, _description)
        {
            this.Id = _id;
            this.Description = _description;
            this.DiscountPercent = _discountpercent;

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

        public Gold(int _id, string _description, double _discountpercent) : base(_id, _description)
        {
            this.Id = _id;
            this.Description = _description;
            this.DiscountPercent = _discountpercent;

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
        public Silver(int _id, string _description, double _discountpercent) : base(_id, _description)
        {
            this.Id = _id;
            this.Description = _description;
            this.DiscountPercent = _discountpercent;

        }


    }
}