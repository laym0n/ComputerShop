using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class SupplierModel
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public SupplierModel() { }
        public SupplierModel(Supplier s)
        {
            Id = s.id;
            Name = s.name;
        }
    }
}
