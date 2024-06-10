package Servlet;

import Dao.UsuarioDao;
import Entidade.Usuario;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "CadastrarServlet", urlPatterns = {"/cadastrar"})
public class CadastrarServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();

        try {
            if (path.equals("/cadastrar")) {
                cadastroUsuario(request, response);
            } else {
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Endpoint not found");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An internal server error occurred");
        }
    }

    private void cadastroUsuario(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            String cpf = request.getParameter("cpf");
            String email = request.getParameter("email");
            String nome = request.getParameter("nome");
            String senha = request.getParameter("senha");
            String telefone = request.getParameter("telefone");

            // Check for empty fields
            if (isEmpty(cpf) || isEmpty(email) || isEmpty(nome) || isEmpty(senha) || isEmpty(telefone)) {
                RequestDispatcher rd = request.getRequestDispatcher("/cadastrar.html"); // Replace with your registration form path
                rd.forward(request, response);
                return; // Stop further processing if fields are empty
            }

            // Create Usuario object and set attributes
            Usuario usuario = new Usuario();
            usuario.setCpf(cpf);
            usuario.setEmail(email);
            usuario.setNome(nome);
            usuario.setSenha(senha);
            usuario.setTelefone(telefone);

            // Interact with UsuarioDao for registration
            UsuarioDao usuarioDAO = new UsuarioDao();
            usuarioDAO.cadastroUsuario(usuario);
            boolean cadastrar = usuarioDAO.verifica(usuario);

            // Handle registration success or failure
            if (cadastrar) {
                RequestDispatcher rd = request.getRequestDispatcher("/cadastrar.html"); // Replace with your success page path
                rd.forward(request, response);
            } else {
                request.setAttribute("erroCadastro", "Erro ao cadastrar usuário. Tente novamente.");
                RequestDispatcher rd = request.getRequestDispatcher("/cadastrar.html"); // Replace with your registration form path
                rd.forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while trying to register the user");
        }
    }

    // Helper method to check for empty strings
    private boolean isEmpty(String str) {
        return str == null || str.isEmpty();
    }
}
