using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;

namespace OracleEstacionamiento
{
    public partial class HomeAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OracleConnection conexion = new OracleConnection("DATA SOURCE = xe; PASSWORD = root; USER ID = testEstacionamiento");
            conexion.Open();
            OracleCommand comando = new OracleCommand("listarUsuarios", conexion);
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.Parameters.Add("registros", OracleDbType.RefCursor).Direction = System.Data.ParameterDirection.Output;

            OracleDataAdapter adaptador = new OracleDataAdapter();

            adaptador.SelectCommand = comando;

            DataTable tabla = new DataTable();
            adaptador.Fill(tabla);
            dgvUsuarios.DataSource = tabla;
            dgvUsuarios.DataBind();
            conexion.Close();
        }
    }
}