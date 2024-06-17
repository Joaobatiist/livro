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
@WebServlet (name = "NoticiaServlet", urlPatterns = {"/NoticiaServlet"})
public class NoticiaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath();

        try {
            if (path.equals("/NoticiaServlet")) {
                cadastroNoticia(req, resp);
            } else {
                resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Endpoint not found");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An internal server error occurred");
        }
    }

    private void cadastroNoticia (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        String titulo = req.getParameter("titulo");
        String mensagem = req.getParameter("mensagem");

        Usuario Noticia = new Usuario();
        Noticia.setTitulo(titulo);
        Noticia.setMensagem(mensagem);

        UsuarioDao usuarioDao = new UsuarioDao();

        usuarioDao.cadastroNoticia(Noticia);

        resp.sendRedirect(req.getContextPath() + "/Page/admin.jsp");

    }

}
