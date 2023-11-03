using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class SupplierRepositorySQL : IRepository<Supplier>
    {
        private ComputerShopContext context;

        public SupplierRepositorySQL(ComputerShopContext context)
        {
            this.context = context;
        }

        public void Create(Supplier item)
        {
            context.Supplier.Add(item);
        }

        public void Delete(int id)
        {
            Supplier manuf = context.Supplier.Find(id);
            if (manuf != null)
                context.Supplier.Remove(manuf);
        }

        public Supplier GetItem(int id)
        {
            return context.Supplier.Find(id);
        }

        public List<Supplier> GetList()
        {
            return context.Supplier.ToList();
        }

        public void Update(Supplier item)
        {
            context.Entry(item).State = System.Data.Entity.EntityState.Modified;
        }
    }
}
