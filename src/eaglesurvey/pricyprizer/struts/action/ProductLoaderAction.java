package eaglesurvey.pricyprizer.struts.action;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import org.apache.struts.action.*;
import eaglesurvey.common.*;
import eaglesurvey.pricyprizer.struts.form.ProductLoaderForm;
import javax.servlet.http.*;
public class ProductLoaderAction extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest req, HttpServletResponse res) throws Exception
	{
		ProductLoaderForm obj = (ProductLoaderForm)form;
		String productName = obj.getProductName();
		String productId = obj.getProductId();
		String store = obj.getStore();
		String notes = obj.getNotes();
		String productDesc = obj.getProductDesc();
		String price = obj.getPrice();
		Connection con = null;
		Class.forName(ConnectionStats.DRIVER);
		String url = ConnectionStats.DB_URL;
		String usr = ConnectionStats.DB_USER;
		String pwd = ConnectionStats.DB_PASSWORD;
		con = DriverManager.getConnection(url, usr, pwd);
		Statement stmt = con.createStatement();
		try
		{
			ResultSet rs = stmt.executeQuery("select * from service2_main where productId = '"+productId+"'");
			if(!(rs.next()))
			{
				stmt.executeUpdate("insert into service2_main values('"+ productId +"','" + productName + "','" + productDesc + "',)");
			}
			stmt.executeUpdate("delete from service2_tbl where productId = '"+productId+"' and store = '"+ store+"'");
			stmt.executeUpdate("insert into service2_tbl values('"+productId+"','"+store+"',"+Float.parseFloat(price)+",'"+notes+"')");
			req.setAttribute("msg", "Succeeded");
			System.out.println("succeded");
			return mapping.findForward("success");
		}
		catch(Exception ex)
		{
			System.out.println("failure");
			req.setAttribute("msg", "Data updating failed");
			return mapping.findForward("failure");
		}
	}
}
