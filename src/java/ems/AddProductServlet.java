package ems;

import ecommenrse.ejb.model.bl.ProductFacadeLocal;
import ecommenrse.ejb.model.entities.Image;
import ecommenrse.ejb.model.entities.Product;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
public class AddProductServlet extends HttpServlet {
    @EJB
    private ProductFacadeLocal productFL;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<html><body>");
            out.println("<script type='text/javascript'>");
            out.println("alert('Product added successfully!');");
            out.println("window.location.href = 'add_product.jsp';"); // Redirect to a success page
            out.println("</script>");
            out.println("</body></html>");
        } catch (Exception e) {
            e.printStackTrace();
            response.setContentType("text/html;charset=UTF-8");
            try (PrintWriter out = response.getWriter()) {
                out.println("<html><body>");
                out.println("<script type='text/javascript'>");
                out.println("alert('Error adding product: " + e.getMessage() + "');");
                out.println("window.location.href = 'addProduct.jsp';"); // Redirect back to form
                out.println("</script>");
                out.println("</body></html>");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try {
            // Retrieve form data
            String name = request.getParameter("name");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            String description = request.getParameter("description");
            double normalPrice = Double.parseDouble(request.getParameter("normalPrice"));
            double discount = Double.parseDouble(request.getParameter("discount"));
            double currentPrice = Double.parseDouble(request.getParameter("currentPrice"));
            String size = request.getParameter("size");
            Collection<Part> parts = request.getParts();

            // Handle file uploads
            List<Image> images = new ArrayList<>();
            for (Part part : parts) {
                if (part.getContentType() != null) {
                    InputStream partStream = part.getInputStream();
                    byte[] imageBlob = convertToByteArray(partStream);
                    images.add(new Image(imageBlob, name));
                }
            }

            // Create and save the product
            Product product = new Product(name, quantity, description, normalPrice, discount, currentPrice, images, size);
            productFL.create(product);

            processRequest(request, response);
            response.sendRedirect("add_product.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.setContentType("text/html;charset=UTF-8");
            try (PrintWriter out = response.getWriter()) {
                out.println("<html><body>");
                out.println("<script type='text/javascript'>");
                out.println("alert('Error adding product: " + e.getMessage() + "');");
                out.println("window.location.href = 'addProduct.jsp';"); // Redirect back to form
                out.println("</script>");
                out.println("</body></html>");
            }
        }
    }

    private byte[] convertToByteArray(InputStream inputStream) throws IOException {
        try (ByteArrayOutputStream baos = new ByteArrayOutputStream()) {
            byte[] buffer = new byte[1024];
            int bytesRead;
            while ((bytesRead = inputStream.read(buffer)) != -1) {
                baos.write(buffer, 0, bytesRead);
            }
            return baos.toByteArray();
        }
    }
}
