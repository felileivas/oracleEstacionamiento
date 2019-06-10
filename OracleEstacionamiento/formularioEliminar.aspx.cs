using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;

namespace OracleEstacionamiento
{
    public partial class formularioEliminar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OracleConnection conexion = new OracleConnection("DATA SOURCE = xe; PASSWORD = root; USER ID = testEstacionamiento");
            conexion.Open();

            OracleCommand comando = new OracleCommand("borrarUsuario", conexion);
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.Parameters.Add("iduser", OracleDbType.Int32).Value = int.Parse(txtId_delete.Text);
            comando.ExecuteNonQuery();
            conexion.Close();
            Server.Transfer("HomeAdmin.aspx");
        }
    }
}