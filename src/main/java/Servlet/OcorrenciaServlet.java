package Servlet;

import Dao.UsuarioDao;
import Entidade.Usuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet (name = "OcorrenciaServlet", urlPatterns = {"/OcorrenciaServlet"})
public class OcorrenciaServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();

        try {
            if (path.equals("/OcorrenciaServlet")) {
                cadastroOcorrencia(request, response);
            } else {
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Endpoint not found");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An internal server error occurred");
        }
    }

    private void cadastroOcorrencia(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome = request.getParameter("nome");
        String tipo = request.getParameter("tipo");
        String descricao = request.getParameter("descricao");

        Usuario ocorrencia = new Usuario();
        ocorrencia.setNome(nome);
        ocorrencia.setTipo(tipo);
        ocorrencia.setDescricao(descricao);

        UsuarioDao usuarioDAO = new UsuarioDao();

        usuarioDAO.cadastroOcorrencia(ocorrencia);
    }
}
