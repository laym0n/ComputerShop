using DAL;
using System;
using System.Collections.Generic;
using System.Linq;

namespace BLL
{
    public class OrderService : IOrderService
    {
        private IDbRepos context;

        public OrderService(IDbRepos repos)
        {
            context = repos;
        }
        public bool CancelOrder(int id, IAutorizationService autorizationService)
        {
            
            OrderC o = context.Orders.GetItem(id);
           
            foreach (var ol in o.Order_line)
            {
                Product p = context.Products.GetItem((int)ol.id_product);
                p.count += ol.count;
                context.Products.Update(p);
            }
            
            o.id_status = 3;
            o.OrderStatus = context.Statuses.GetItem(3);
            if (context.Save() > 0)
                return true;
            return false;

        }
        public bool MakeOrderFromModel(OrderModel orderDto, IAutorizationService autorizationService)
        {
            List<Order_line> orderedProducts = new List<Order_line>();
            int lineid = 0;

            int id;
            if (orderDto.Id != -1)
                id = orderDto.Id;
            else
                id = context.Orders.GetList().OrderByDescending(i => i.id).FirstOrDefault()== null ? 0 : context.Orders.GetList().OrderByDescending(i => i.id).FirstOrDefault().id + 1;

            int sum = 0;
            for (int i = 0; i < orderDto.ProductsIds.Count; ++i)
            {
                Product p = context.Products.GetItem(orderDto.ProductsIds[i]);

                if (p == null)
                    throw new Exception("Продукт не найден");
                orderedProducts.Add(new Order_line {id = lineid++, id_product = p.id, Product = p, count = orderDto.ProductCounts[i],id_order = id});
                sum += (int)(p.price * orderDto.ProductCounts[i] * (1 - p.sale));

                p.count -= orderDto.ProductCounts[i];
                context.Products.Update(p);
            }

            Customer c = context.Customers.GetList().Where(i => i.id == autorizationService.GetCurrentUser().id).FirstOrDefault();

            OrderC r = new OrderC
            {
                date = DateTime.Now,
                id_client = autorizationService.GetCurrentUser().id,
                id_seller = null,
                total_cost = sum,
                Order_line = orderedProducts,
                id = id,
                Seller = null,
                Customer = c,
                id_status = 1,
                OrderStatus = context.Statuses.GetItem(1)
            };

            context.Orders.Create(r);
            if (context.Save() > 0)
                return true;
            return false;
        }

        public bool TakeOrder(int id, IAutorizationService autorizationService)
        {
            OrderC o = context.Orders.GetItem(id);
            o.id_status = 0;

            if (context.Save() > 0)
                return true;
            return false;
        }

        public bool VerifyOrder(int id, IAutorizationService autorizationService)
        {
            OrderC o = context.Orders.GetItem(id);
            o.id_status = 2;
            o.id_seller = autorizationService.GetCurrentUser().id;
            o.Seller = context.Sellers.GetItem((int)o.id_seller);
            o.OrderStatus = context.Statuses.GetItem(2);

            if (context.Save() > 0)
                return true;
            return false;
        }
    }
}
