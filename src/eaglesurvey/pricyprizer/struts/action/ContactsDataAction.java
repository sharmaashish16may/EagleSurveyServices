package eaglesurvey.pricyprizer.struts.action;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;

import java.util.Calendar;
import org.apache.struts.action.*;
import eaglesurvey.common.*;
import eaglesurvey.pricyprizer.struts.form.ContactsDataForm;
import javax.servlet.http.*;
public class ContactsDataAction extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest req, HttpServletResponse res) throws Exception
	{
		ContactsDataForm obj = (ContactsDataForm)form;
		String emailid = obj.getEmailid();
		String content = obj.getContent();
		Connection con = null;
		Class.forName(ConnectionStats.DRIVER);
		String url = ConnectionStats.DB_URL;
		String usr = ConnectionStats.DB_USER;
		String pwd = ConnectionStats.DB_PASSWORD;
		con = DriverManager.getConnection(url, usr, pwd);
		Statement stmt = con.createStatement();
		try
		{
			Calendar currentDate = Calendar.getInstance();
            SimpleDateFormat formatter= new SimpleDateFormat("dd/MMM/yyyy");
            String dateNow = formatter.format(currentDate.getTime());
			stmt.executeUpdate("insert into query_sug_comp values('"+emailid+"','"+content+"','"+dateNow+"')");
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
