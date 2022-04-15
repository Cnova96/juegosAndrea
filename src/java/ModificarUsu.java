

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ModificarUsu extends HttpServlet {

 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion");

        try {
            if (accion != null) {
                switch (accion) {
                    case "verificar":
                        verificar(request, response);
                        break;
                    case "cerrar":
                        cerrarsession(request, response);
                    default:
                        response.sendRedirect("crearusuario.jsp");
                }
            } else {
                response.sendRedirect("crearusuario.jsp");
            }
        } catch (Exception e) {
            try {
                /* this.getServletConfig().getServletContext().getRequestDispatcher("/mensaje.jsp").forward(request, response);*/
            } catch (Exception ex) {
                System.out.println("Error" + e.getMessage());
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

     private void verificar(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession sesion;
        DmodificarU dao;
        usuarioc usuarioc;
        usuarioc = this.obtenerusuario(request);
        dao = new DmodificarU();
        usuarioc = dao.identificar(usuarioc);
        if (usuarioc != null ) {
         
         this.getServletConfig().getServletContext().getRequestDispatcher("/crearusuario.jsp").forward(request, response);
          

        }  else {
            request.setAttribute("msje", "no se creo videojuego");
            request.getRequestDispatcher("crearusuario.jsp").forward(request, response);
        }
     }
    

    private void cerrarsession(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession sesion = request.getSession();
        sesion.setAttribute("usuarioc", null);
        sesion.invalidate();
        response.sendRedirect("index.jsp");
    }

    private usuarioc obtenerusuario(HttpServletRequest request) {
        usuarioc u = new usuarioc();
        
        u.setNombre(request.getParameter("nombreusuario"));
        u.setCedula(Integer.parseInt(request.getParameter("cedula")));
        u.setCorreo(request.getParameter("correo"));
        u.setPass(request.getParameter("contrasena"));
         u.setPass(request.getParameter("contrasena2"));
        
        return u;    
    }

    

}

