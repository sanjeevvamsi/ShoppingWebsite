using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UserMgmtDAL
{
    internal interface IRepository1<T>
    {
        IEnumerable<T> GetAll();
        IEnumerable<T> GetByName(string name);
        T GetById(int id);
        bool Add(T item);
        bool Update(T item);
    }
}

