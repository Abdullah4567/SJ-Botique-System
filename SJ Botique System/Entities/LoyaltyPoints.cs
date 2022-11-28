namespace SJ_Botique_System.Entities
{
    public class LoyaltyPoints
    {

        // Data Members 
        private int Id;
        private double Value;

        // Methods
        public int GetId()
        {
            return this.Id;
        }
        public void SetId(int _id)
        {
            this.Id = _id;
        }

        public double GetValue()
        {
            return this.Value;
        }
        public void SetValue(double _value)
        {
            this.Value = _value;
        }
        public LoyaltyPoints(int _id, double _value)
        {
            this.Id = _id;
            this.Value = _value;
        }
    }
}