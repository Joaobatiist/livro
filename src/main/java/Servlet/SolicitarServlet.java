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
@WebServlet (name="SolicitarServlet", urlPatterns = {"/SolicitarServlet"})
public class SolicitarServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();

        try {
            if (path.equals("/SolicitarServlet")) {
                cadastroSolicitar(request, response);
            } else {
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Endpoint not found");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An internal server error occurred");
        }

    }

    private void cadastroSolicitar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome = request.getParameter("nome");
        String data = request.getParameter("data");
        String hora = request.getParameter("hora");
        String solicitar = request.getParameter("solicitar");
        String informacao = request.getParameter("informacao");

          Usuario Solicitar = new Usuario();
          Solicitar.setNome(nome);
          Solicitar.setData(data);
          Solicitar.setHora(hora);
          Solicitar.setSolicitar(solicitar);
          Solicitar.setInformacao(informacao);

        UsuarioDao usuarioDao = new UsuarioDao();

        usuarioDao.cadastroSolicitar(Solicitar);

        RequestDispatcher rd = request.getRequestDispatcher("/Page/usuario.jsp");
        rd.forward(request, response);
    }


}
