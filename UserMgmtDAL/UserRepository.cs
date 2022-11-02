using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UserMgmtDAL.EntityLayer;

using System.Data;
using System.Data.SqlClient;
namespace UserMgmtDAL
{
    public class UserRepository : BaseRepository,
                        IRepository<EntityLayer.User>
    {
        public bool Add(User item)
        {
            SqlConnection con = null;
            try
            {
                con = new SqlConnection();
                con.ConnectionString = ConString;
                con.Open();

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandType = CommandType.StoredProcedure;
                com.CommandText = "AddUser";

                SqlParameter prm = com.Parameters.Add("@name",SqlDbType.NVarChar,30);
                prm.Direction = ParameterDirection.Input;
                prm.Value = item.Name;

                prm = com.Parameters.Add("@dob", SqlDbType.Date);
                prm.Direction = ParameterDirection.Input;
                prm.Value = item.DOB;

                prm = com.Parameters.Add("@gen", SqlDbType.NChar, 1);
                prm.Direction = ParameterDirection.Input;
                prm.Value = item.Gender;

                prm = com.Parameters.Add("@email", SqlDbType.NVarChar, 30);
                prm.Direction = ParameterDirection.Input;
                prm.Value = item.Email;

                prm = com.Parameters.Add("@mob", SqlDbType.NChar, 10);
                prm.Direction = ParameterDirection.Input;
                prm.Value = item.Mobile;

                prm = com.Parameters.Add("@pass", SqlDbType.NVarChar, 50);
                prm.Direction = ParameterDirection.Input;
                prm.Value = item.Password;

                prm = com.Parameters.Add("@rid", SqlDbType.TinyInt);
                prm.Direction = ParameterDirection.Input;
                prm.Value = item.RoleId;

                prm = com.Parameters.Add("@newid", SqlDbType.Int);
                prm.Direction = ParameterDirection.Output;

                com.ExecuteNonQuery();
                int newid = (int)com.Parameters["@newid"].Value;



                if (newid > 0)
                    return true;
                return false;
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            {
                con.Close();
                con.Dispose();
            }



        }

        public IEnumerable<User> GetAll()
        {
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConString;
                con.Open();

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandType = CommandType.StoredProcedure;
                com.CommandText = "GetAllActiveUsers";

                List<EntityLayer.User> users = new List<User>();

                SqlDataReader dr = com.ExecuteReader();

               while( dr.Read())
                {
                    User user = new User();
                    user.Id = (int)dr[0];
                    user.Name = dr.GetString(1);
                    user.DOB = dr.GetDateTime(2);
                    user.DOJ = dr.IsDBNull(3) ? DateTime.Now : dr.GetDateTime(3);
                    user.Gender = dr.GetString(4);
                    user.Mobile = dr.GetString(5);
                    user.Email = dr.GetString(6);
                    user.RoleName = dr.GetString(7);

                    users.Add(user);
                }

                con.Close();
                con.Dispose();
                return users;
            }
            catch (SqlException ex)
            {
                throw ex;
            }
        }

        public User GetById(int id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<User> GetByName(string name)
        {

            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConString;
                con.Open();

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandType = CommandType.StoredProcedure;
                com.CommandText = "SearchUsersOnName";

                SqlParameter prm = com.Parameters.Add("@name",SqlDbType.NVarChar,30);
                prm.Direction = ParameterDirection.Input;
                prm.Value = name;

                List<EntityLayer.User> users = new List<User>();

                SqlDataReader dr = com.ExecuteReader();
                if (dr.HasRows)
                {


                    while (dr.Read())
                    {
                        User user = new User();
                        user.Id = (int)dr[0];
                        user.Name = dr.GetString(1);
                        user.DOB = dr.GetDateTime(2);
                        user.DOJ = dr.IsDBNull(3) ? DateTime.Now : dr.GetDateTime(3);
                        user.Gender = dr.GetString(4);
                        user.Mobile = dr.GetString(5);
                        user.Email = dr.GetString(6);
                        user.RoleName = dr.GetString(7);

                        users.Add(user);
                    }
                }
                else
                {
                    throw new Exception("Records are null");
                }

                con.Close();
                con.Dispose();
                return users;
            }
            catch (SqlException ex)
            {
                throw ex;
            }
        }

        public bool Update(User item)
        {
            throw new NotImplementedException();
        }
    }
}
