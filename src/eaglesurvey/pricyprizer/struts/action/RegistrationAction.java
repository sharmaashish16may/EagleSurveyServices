package eaglesurvey.pricyprizer.struts.action;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.apache.struts.action.*;
import eaglesurvey.common.*;
import eaglesurvey.pricyprizer.struts.form.ContactsDataForm;
import eaglesurvey.pricyprizer.struts.form.RegistrationForm;
import javax.servlet.http.*;
public class RegistrationAction extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest req, HttpServletResponse res) throws Exception
	{
		RegistrationForm obj = (RegistrationForm)form;
		String emailid = obj.getEmailid();
		String serviceId = obj.getServiceId();
		String password = obj.getPassword();
		String privilege = obj.getPrivilege();
		Connection con = null;
		Class.forName(ConnectionStats.DRIVER);
		String url = ConnectionStats.DB_URL;
		String usr = ConnectionStats.DB_USER;
		String pwd = ConnectionStats.DB_PASSWORD;
		con = DriverManager.getConnection(url, usr, pwd);
		Statement stmt = con.createStatement();
		try
		{
			stmt.executeUpdate("insert into login values('"+emailid+"','"+password+"','"+serviceId+"','"+privilege+"')");
			req.setAttribute("status", "done");
		}
		catch(SQLException ex)
		{
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>"+ex.getMessage());
			req.setAttribute("status", "notdone");
		}
		return mapping.findForward("done");
	}
}
