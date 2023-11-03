﻿using DAL;

namespace BLL
{
    public class CategoryModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Sale { get; set; }
        public CategoryModel() { }
        public CategoryModel(Category c)
        {
            Id = c.id;
            Name = c.name;
            Sale = (int)c.sale;
        }
    }
}
