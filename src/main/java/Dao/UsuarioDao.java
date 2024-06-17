package Dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import BancoDeDados.Conexao;
import Entidade.Usuario;

public class UsuarioDao {


    private static Usuario getUsuario(ResultSet result) {
        Usuario usuario = new Usuario();

        usuario.setCpf("cpf");
        usuario.setEmail("email");
        usuario.setNome("nome");
        usuario.setSenha("senha");
        usuario.setTelefone("telefone");
        return usuario;
    }


    public boolean verifica(Usuario usuario) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        boolean encontrado = false;

        try {
            String sql = "SELECT * FROM Usuario WHERE Email = ? AND Senha = ?";
            ps = Conexao.getConnection().prepareStatement(sql);
            ps.setString(1, usuario.getEmail());
            ps.setString(2, usuario.getSenha());

            rs = ps.executeQuery();
            encontrado = rs.next();

            if (encontrado) {
                // Preencha os campos do usuário se necessário
                usuario.setRole(rs.getString("role"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Feche os recursos
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        return encontrado;
    }


    public void cadastroUsuario(Usuario usuario) {


        PreparedStatement ps = null;


        try {
            String sql = "INSERT INTO Usuario (Cpf, Email, Nome, Senha, Telefone, Role) VALUES (?, ?, ?, ?, ?, ?)";
            ps = Conexao.getConnection().prepareStatement(sql);
            ps.setString(1, usuario.getCpf());
            ps.setString(2, usuario.getEmail());
            ps.setString(3, usuario.getNome());
            ps.setString(4, usuario.getSenha());
            ps.setString(5, usuario.getTelefone());
            ps.setString(6, usuario.getRole());

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

    public ArrayList<Usuario> consultar() {

        Connection conn = null;
        ArrayList<Usuario> lista = new ArrayList();

        try {
            conn = (Connection) Conexao.getConnection();
            Statement stm = conn.createStatement();
            String sql = "SELECT * FROM Solicitar";
            ResultSet rs = (ResultSet) stm.executeQuery(sql);

            while (rs.next()) {
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

        } catch (Exception e) {
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

    public void cadastroNoticia(Usuario noticia) {
        PreparedStatement ps = null;

        try {
            String sql = "INSERT INTO Noticia (Titulo, Mensagem) VALUES (?, ?)";
            ps = Conexao.getConnection().prepareStatement(sql);
            ps.setString(1, noticia.getTitulo());
            ps.setString(2, noticia.getMensagem());

            ps.execute();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ArrayList<Usuario> ocorrencia() {

        Connection conn = null;
        ArrayList<Usuario> resgistro = new ArrayList();

        try {
            conn = (Connection) Conexao.getConnection();
            Statement stm = conn.createStatement();
            String sql = "SELECT * FROM Ocorrencia";
            ResultSet rs = (ResultSet) stm.executeQuery(sql);

            while (rs.next()) {
                Usuario u = new Usuario();

                u.setNome(rs.getString("Nome"));
                u.setTipo(rs.getString("Tipo"));
                u.setDescricao(rs.getString("Descricao"));

                resgistro.add(u);
            }

            stm.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return resgistro;
    }
    public ArrayList<Usuario> noticia() {

        Connection conn = null;
        ArrayList<Usuario> noticia = new ArrayList();

        try {
            conn = (Connection) Conexao.getConnection();
            Statement stm = conn.createStatement();
            String sql = "SELECT * FROM Noticia";
            ResultSet rs = (ResultSet) stm.executeQuery(sql);

            while (rs.next()) {
                Usuario u = new Usuario();

                u.setTitulo(rs.getString("titulo"));
                u.setMensagem(rs.getString("mensagem"));

                noticia.add(u);
            }

            stm.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return noticia;
    }
    public ArrayList<Usuario> visita() {

        Connection conn = null;
        ArrayList<Usuario> visita = new ArrayList();

        try {
            conn = (Connection) Conexao.getConnection();
            Statement stm = conn.createStatement();
            String sql = "SELECT * FROM Visita";
            ResultSet rs = (ResultSet) stm.executeQuery(sql);

            while (rs.next()) {
                Usuario u = new Usuario();


                u.setPessoa(rs.getString("pessoa"));
                u.setApartamento(rs.getString("apartamento"));
                u.setDia(rs.getString("dia"));
                u.setCpf(rs.getString("cpf"));
                u.setPermissao(rs.getString("permissao"));

                visita.add(u);
            }

            stm.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return visita;
    }
    public void cadastroMensagem(Usuario mensagem) {
        PreparedStatement ps = null;
        Connection conn = null;

        try {
            conn = Conexao.getConnection(); // Método para obter a conexão com o banco de dados
            String sql = "INSERT INTO mensagens (Remetente_id, Destinatario_id, Mensagem) VALUES (?, ?, ?)";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, mensagem.getRemetente_Id());
            ps.setInt(2, mensagem.getDestinatario_Id());
            ps.setString(3, mensagem.getMensagem());

            ps.executeUpdate(); // Executa a operação de INSERT

        } catch (SQLException e) {
            e.printStackTrace();
            // Você pode lançar uma exceção personalizada ou tratar o erro de outra forma, conforme necessário
        } finally {
            // Feche o PreparedStatement e a conexão no bloco finally para garantir que sejam liberados corretamente
            try {
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

}

