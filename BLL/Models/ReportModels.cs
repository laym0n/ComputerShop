using System;

namespace BLL
{
    public class SupSum
    {
        public string SupName { get; set; }
        public decimal? TotalCost { get; set; }
    }

    public class Forecast
    {
        public decimal ForecastWage { get; set; }
        public decimal ForecastAward { get; set; }
    }
    public class OrderFromTo
    {
        public int Id { get; set; }
        public int Customer { get; set; }
        public int Status { get; set; }
        public int Seller { get; set; }
        public DateTime? Date { get; set; }
        public decimal TotalCost { get; set; }
        public string Products { get; set; }
    }
}
