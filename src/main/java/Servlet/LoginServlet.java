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

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet", "/"})
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        session.invalidate();

        // Correção do caminho para a página inicial
        RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();

        try {
            if (path.equals("/LoginServlet") || path.equals("/")) {
                loginUsuario(request, response);
            } else {
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Endpoint not found");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An internal server error occurred");
        }
    }

    private void loginUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email-login");
        String senha = request.getParameter("senha-login");

        Usuario u = new Usuario();
        u.setEmail(email);
        u.setSenha(senha);

        UsuarioDao dao = new UsuarioDao();
        boolean logado = dao.verifica(u);

        if (logado) {
            HttpSession session = request.getSession();
            session.setAttribute("email-login", u);
            RequestDispatcher rd = request.getRequestDispatcher("/Page/usuario.jsp");
            rd.forward(request, response);
        } else {
            // Define uma mensagem de erro para ser exibida na página de login
            request.setAttribute("erroLogin", "Erro ao tentar fazer login");
            RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
            rd.forward(request, response);
        }
    }
}
