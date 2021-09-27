import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ProductServlet", value = "/ProductServlet")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("description");
        String priceString = request.getParameter("price");
        String discountString = request.getParameter("discount");
        PrintWriter writer = response.getWriter();
        double result = 0;
        try {
            double price = Double.parseDouble(priceString);
            double discount = Double.parseDouble(discountString);
            result = price * discount * 0.01;
        } catch (Exception e) {
            writer.println("<h1>du lieu nhap vao khong dung dinh dang</h1>");
            return;
        }
        writer.println("<h1>" + description + ": " + result + "</h1>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
