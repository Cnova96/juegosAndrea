

import java.io.IOException;
import java.io.PrintWriter;
import javafx.scene.image.Image;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class srvvideo extends HttpServlet {

   
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
                        response.sendRedirect("videojuego.jsp");
                }
            } else {
                response.sendRedirect("videojuego.jsp");
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
        Dvideojue dao;
        Vidoejuegos Vidoejuegos;
        Vidoejuegos = this.obtenerVidoejuegos(request);
        dao = new Dvideojue();
        Vidoejuegos = dao.identificar(Vidoejuegos);
        if (Vidoejuegos != null ) {
          
            

        }  else {
            request.setAttribute("msje", "Credenciales Incorrectas");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
     }
    

    private void cerrarsession(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession sesion = request.getSession();
        sesion.setAttribute("videoejuegos", null);
        sesion.invalidate();
        response.sendRedirect("index.jsp");
    }

    private Vidoejuegos obtenerVidoejuegos(HttpServletRequest request) {
        Vidoejuegos u = new Vidoejuegos();
        u.setNombre(request.getParameter("nombrevid"));
        u.setCodigov(Integer.parseInt(request.getParameter("codigovid")));
        u.setCodigoej(Integer.parseInt(request.getParameter("codigoej")));
        u.setImagen((Image) request.getAttribute("imgaen"));
        
        return u;    
    }

    
   

}
