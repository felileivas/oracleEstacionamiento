using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;




namespace OracleEstacionamiento
{
    public partial class formularioActualizar : System.Web.UI.Page
    {
        OracleConnection conexion = new OracleConnection("DATA SOURCE = xe; PASSWORD = root; USER ID = FELIPE_DBA");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conexion.Open();
            OracleCommand comando = new OracleCommand("ACTUALIZARUSUARIO", conexion);
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.Parameters.Add("iduser", OracleDbType.Byte).Value = int.Parse(txtId.Text);
            comando.Parameters.Add("nom", OracleDbType.Varchar2).Value = txtNombre.Text;
            comando.Parameters.Add("rt", OracleDbType.Varchar2).Value = txtRut.Text;
            comando.Parameters.Add("dire", OracleDbType.Varchar2).Value = txtDireccion.Text;
            comando.Parameters.Add("tel", OracleDbType.Varchar2).Value = txtTelefono.Text;
            comando.Parameters.Add("usu", OracleDbType.Varchar2).Value = txtUsuario.Text;
            comando.Parameters.Add("passwrd", OracleDbType.Varchar2).Value = txtPass.Text;
            comando.ExecuteNonQuery();
            conexion.Close();

        }
    }
}