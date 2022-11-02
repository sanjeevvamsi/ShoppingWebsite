using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UserMgmtDAL
{
    public class BaseRepository1
    {
        protected string ConString;
        public BaseRepository1()
        {
            ConString = System.Configuration
                    .ConfigurationManager
                        .ConnectionStrings["UMCString"].ConnectionString;
        }
    }
}

