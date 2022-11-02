using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using UserMgmtDAL.EntityLayer;

namespace UserMgmtDAL
{

    public class RoleRepository : BaseRepository,
                        IRepository1<EntityLayer.Role>
    {
        bool IRepository1<Role>.Add(Role item)
        {
            throw new NotImplementedException();
        }
        public IEnumerable<Role> GetAll()
        {

            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConString;
                con.Open();

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandType = CommandType.StoredProcedure;
                com.CommandText = "GetRoles";

                List<EntityLayer.Role> roles = new List<Role>();

                SqlDataReader dr = com.ExecuteReader();

                while(dr.Read())
                {
                    Role role = new Role();
                    role.Id = (byte)dr[0];
                    role.Name = (string)dr[1];

                    roles.Add(role);

                }
                con.Close();
                con.Dispose();
                return roles;

            }
            catch (SqlException ex)
            {
                throw ex;

            }
        }

        Role IRepository1<Role>.GetById(int id)
        {
            throw new NotImplementedException();
        }

        IEnumerable<Role> IRepository1<Role>.GetByName(string name)
        {
            throw new NotImplementedException();
        }

        bool IRepository1<Role>.Update(Role item)
        {
            throw new NotImplementedException();
        }
    }
}
