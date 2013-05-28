package eaglesurvey.pricyprizer.struts.action;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import org.apache.struts.action.*;
import eaglesurvey.common.*;
import eaglesurvey.pricyprizer.struts.form.LogingForm;
import javax.servlet.http.*;
public class LogingAction extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest req, HttpServletResponse res) throws Exception
	{
		LogingForm obj = (LogingForm)form;
		String emailid = obj.getEmailid();
		String password = obj.getPassword();
		Connection con = null;
		HttpSession session = req.getSession();
		Class.forName(ConnectionStats.DRIVER);
		String url = ConnectionStats.DB_URL;
		String usr = ConnectionStats.DB_USER;
		String pwd = ConnectionStats.DB_PASSWORD;
		con = DriverManager.getConnection(url, usr, pwd);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from login where emailid = '"+emailid+"'");
		while(rs.next())
		{
			if(rs.getString("password").equals(password))
			{
				if(rs.getString("privilege").equals("2"))
				{
					session.setAttribute("privilege", "2");
				}
				else if(rs.getString("privilege").equals("1"))
				{
					session.setAttribute("privilege", "1");
				}
				return mapping.findForward("success");
			}
			else
			{
				session.setAttribute("privilege", "0");
				return mapping.findForward("failure");
			}
		}
		rs.close();
		return mapping.findForward("failure");
	}
}
