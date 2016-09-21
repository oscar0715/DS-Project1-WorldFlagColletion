/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package flag;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URL;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jiaming
 */
@WebServlet(name = "NationalFlagServlet", urlPatterns = {"/getCountry"})
public class NationalFlagServlet extends HttpServlet {

    NationalFlagServlevtModel model;

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
    public void init() {
        model = new NationalFlagServlevtModel();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // get shortName from view
        String shortName = request.getParameter("country");

        // fetch pagecontent
        model.fetchPageContent(shortName);

        // get Country Name form model
        String CountryName = model.getCountryName(model.getPageContent());
        request.setAttribute("fullName", CountryName);

        // get flag picture from model
        String flagURL = model.getPictureURL(shortName);

        // if no image can be found with this url
        // replace the url with another image, which indicate this url is invalid;
        // reference http://www.eoeandroid.com/thread-152010-1-1.html
        try {
            URL url = new URL(flagURL);
            InputStream in = url.openStream();
        } catch (Exception e) {
            flagURL = "https://i.ytimg.com/vi/TSXXi2kvl_0/maxresdefault.jpg";
            
        }
        request.setAttribute("flagURL", flagURL);


        // get flag description from model
        String description = model.getDescription(model.getPageContent());
        // if no description is found
        if (description == null) {
            description = "404 ! Sorry, the flag description for this Area is not found";
        }
        request.setAttribute("description", description);

        // redict showFlag.jsp
        String nextView = "showFlag.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(nextView);
        dispatcher.forward(request, response);
        }
}
