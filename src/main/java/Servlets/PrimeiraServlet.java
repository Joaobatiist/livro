package Servlets;

import Dao.UsuarioDao;
import Entidade.Usuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "/Primeiro", urlPatterns = {"/", "/Primeiro/login"})
public class PrimeiraServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "GET method is not allowed for this endpoint");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();

        try {
            switch (path) {
                case "/Primeiro/":
                    cadastroUsuario(request, response);
                    break;
                case "/Primeiro/login":
                    loginUsuario(request, response);
                    break;
                default:
                    response.sendError(HttpServletResponse.SC_NOT_FOUND, "Endpoint not found");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An internal server error occurred");
        }
    }

    private void loginUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String email = request.getParameter("email-login");
            String senha = request.getParameter("senha-login");

            Usuario u = new Usuario();
            u.setEmail(email);
            u.setSenha(senha);

            UsuarioDao dao = new UsuarioDao();
            boolean logado = dao.verifica(u);

            if (logado) {
                response.sendRedirect(request.getContextPath() + "/Page/principal.jsp");
            } else {
                response.getWriter().write("Erro ao tentar fazer login");
            }

            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while trying to log in");
        }
    }

    private void cadastroUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String cpf = request.getParameter("cpf");
            String email = request.getParameter("email");
            String nome = request.getParameter("nome");
            String senha = request.getParameter("senha");
            String telefone = request.getParameter("telefone");

            Usuario usuario = new Usuario();
            usuario.setCpf(cpf);
            usuario.setEmail(email);
            usuario.setNome(nome);
            usuario.setSenha(senha);
            usuario.setTelefone(telefone);

            UsuarioDao usuarioDAO = new UsuarioDao();
            usuarioDAO.cadastroUsuario(usuario);

            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("Cadastro realizado com sucesso!");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while trying to register the user");
        }
    }
}
