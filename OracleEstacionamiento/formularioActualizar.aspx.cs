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
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OracleConnection conexion = new OracleConnection("DATA SOURCE = xe; PASSWORD = root; USER ID = testEstacionamiento");
            conexion.Open();

            //OracleCommand comando = new OracleCommand("EXEC actualizarUsuario(':iduser',':nom',':rt',':dire',':tel',':usu',':passwrd') ", conexion);
            //comando.Parameters.Add(":iduser", txtId_update.Text);
            //comando.Parameters.Add(":nom", txtNombre_update.Text);
            //comando.Parameters.Add(":rt", txtRut_update.Text);
            //comando.Parameters.Add(":dire", txtDireccion_update.Text);
            //comando.Parameters.Add(":tel", txtTelefono_update.Text);
            //comando.Parameters.Add(":usu", txtUsuario_update.Text);
            //comando.Parameters.Add(":passwrd", txtPass_update.Text);
            //conexion.Close();

            OracleCommand comando = new OracleCommand("ACTUALIZARUSUARIO", conexion);
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.Parameters.Add("iduser", OracleDbType.Int32).Value = int.Parse(txtId_update.Text);
            comando.Parameters.Add("nom", OracleDbType.Varchar2).Value = txtNombre_update.Text;
            comando.Parameters.Add("rt", OracleDbType.Varchar2).Value = txtRut_update.Text;
            comando.Parameters.Add("dire", OracleDbType.Varchar2).Value = txtDireccion_update.Text;
            comando.Parameters.Add("tel", OracleDbType.Varchar2).Value = txtTelefono_update.Text;
            comando.Parameters.Add("usu", OracleDbType.Varchar2).Value = txtUsuario_update.Text;
            comando.Parameters.Add("passwrd", OracleDbType.Varchar2).Value = txtPass_update.Text;
            comando.ExecuteNonQuery();
            conexion.Close();
            Server.Transfer("HomeAdmin.aspx");

        }
    }
}