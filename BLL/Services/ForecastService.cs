using BLL;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class ForecastService : IForecastService
    {
        private IDbRepos context;
        public ForecastService(IDbRepos dbCrud)
        {
            context = dbCrud;
        }
        public Forecast ForecastForSeller(int id)
        {
            Seller s = context.Sellers.GetItem(id);
            DateTime monthStart = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);
            int OrderCount = context.Orders.GetList().Where(i => i.date > monthStart && i.id_status == 0).Count();
            return new Forecast { ForecastWage = (decimal)((double)s.wage * (1 + (double)s.experience_years / 2.0)), ForecastAward = 1000 * OrderCount / 10 };
        }
    }
}
