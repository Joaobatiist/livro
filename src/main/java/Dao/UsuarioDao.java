package Dao;

import java.sql.*;
import java.util.ArrayList;

import BancoDeDados.Conexao;
import Entidade.Usuario;

public class UsuarioDao {

    public boolean verifica(Usuario usuario) {
        PreparedStatement Ps = null;

        try {
            String sql = "SELECT * FROM Usuario where  Email =? and Senha =?";
            Ps = Conexao.getConnection().prepareStatement(sql);
            Ps.setString(1, usuario.getEmail());
            Ps.setString(2, usuario.getSenha());

            ResultSet rs = Ps.executeQuery();
            if (rs.isBeforeFirst() ) {
                return true;
            }

            Ps.close();

        } catch(SQLException a){
            a.printStackTrace();
        }
        return false;
    }

    public void cadastroUsuario(Usuario usuario) {


        PreparedStatement ps = null;





        try {
            String sql = "INSERT INTO Usuario (Cpf, Email, Nome, Senha, Telefone) VALUES (?, ?, ?, ?, ?)";
            ps = Conexao.getConnection().prepareStatement(sql);
            ps.setString(1, usuario.getCpf());
            ps.setString(2, usuario.getEmail());
            ps.setString(3, usuario.getNome());
            ps.setString(4, usuario.getSenha());
            ps.setString(5, usuario.getTelefone());

            ps.execute();
            ps.close();


        } catch (SQLException e) {
            e.printStackTrace();

        }


    }
    public void cadastroOcorrencia(Usuario ocorrencia) {
        PreparedStatement ps = null;

        try {
            String sql = "INSERT INTO Ocorrencia (Nome, Tipo, Descricao) VALUES (?, ?, ?)";
            ps = Conexao.getConnection().prepareStatement(sql);
            ps.setString(1, ocorrencia.getNome());
            ps.setString(2, ocorrencia.getTipo());
            ps.setString(3, ocorrencia.getDescricao());

            ps.execute();
            ps.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void cadastroSolicitar(Usuario solicitar) {
        PreparedStatement ps = null;

        try {
            String sql = "INSERT INTO Solicitar (Nome, Data, Hora, Solicitar, Informacao) VALUES (?, ?, ?, ?, ?)";
            ps = Conexao.getConnection().prepareStatement(sql);
            ps.setString(1, solicitar.getNome());
            ps.setString(2, solicitar.getData());
            ps.setString(3, solicitar.getHora());
            ps.setString(4, solicitar.getSolicitar());
            ps.setString(5, solicitar.getInformacao());

            ps.execute();
            ps.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public ArrayList<Usuario> consultar (){

        Connection conn=null;
        ArrayList<Usuario> lista = new ArrayList();

        try{
            conn = (Connection) Conexao.getConnection();
            Statement stm = conn.createStatement();
            String sql = "SELECT * FROM Solicitar";
            ResultSet rs = (ResultSet) stm.executeQuery(sql);

            while (rs.next())
            {
                Usuario u = new Usuario();

                u.setNome(rs.getString("Nome"));
                u.setData(rs.getString("Data"));
                u.setHora(rs.getString("Hora"));
                u.setSolicitar(rs.getString("Solicitar"));
                u.setInformacao(rs.getString("Informacao"));
                lista.add(u);
            }

            stm.close();
            conn.close();

        }catch(Exception e){
            e.printStackTrace();
        }
        return lista;
    }
    public void cadastroVisita(Usuario visita) {
        PreparedStatement ps = null;

        try {
            String sql = "INSERT INTO Visita (Pessoa, Apartamento, Dia, Cpf, Permissao) VALUES (?, ?, ?, ?, ?)";
            ps = Conexao.getConnection().prepareStatement(sql);
            ps.setString(1, visita.getPessoa());
            ps.setString(2, visita.getApartamento());
            ps.setString(3, visita.getDia());
            ps.setString(4, visita.getCpf());
            ps.setString(5, visita.getPermissao());

            ps.execute();
            ps.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
}
    }

