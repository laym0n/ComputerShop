using System;

namespace BLL
{
    public class Forecast
    {
        public decimal ForecastWage { get; set; }
        public decimal ForecastAward { get; set; }
    }

    public class ReportModel
    {
        public int CountOrders { get; set; }
        public int CountSuccessOrders { get; set; }
        public int CountProductsInOrders { get; set; }
        public int Money { get; set; }
    }
}
