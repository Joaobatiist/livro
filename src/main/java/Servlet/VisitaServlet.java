package Servlet;

import Dao.UsuarioDao;
import Entidade.Usuario;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet (name = "VisitaServlet", urlPatterns = {"/VisitaServlet"})
public class VisitaServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();

        try {
            if (path.equals("/VisitaServlet")) {
                cadastroVisita(request, response);
            } else {
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Endpoint not found");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An internal server error occurred");
        }
    }

    private void cadastroVisita(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String pessoa = request.getParameter("pessoa");
        String apartamento = request.getParameter("apartamento");
        String dia = request.getParameter("dia");
        String cpf = request.getParameter("cpf");
        String permissao = request.getParameter("permissao");

        Usuario Visita = new Usuario();
        Visita.setPessoa(pessoa);
        Visita.setApartamento(apartamento);
        Visita.setDia(dia);
        Visita.setCpf(cpf);
        Visita.setPermissao(permissao);

        UsuarioDao usuarioDao = new UsuarioDao();

        usuarioDao.cadastroVisita(Visita);
        RequestDispatcher rd = request.getRequestDispatcher("/Page/usuario.jsp");
        rd.forward(request, response);
    }
}
