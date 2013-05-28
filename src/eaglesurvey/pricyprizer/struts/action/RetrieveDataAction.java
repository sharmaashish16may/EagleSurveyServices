package eaglesurvey.pricyprizer.struts.action;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import org.apache.struts.action.*;
import eaglesurvey.common.*;
import eaglesurvey.pricyprizer.struts.form.RetrieveDataForm;
import javax.servlet.http.*;
public class RetrieveDataAction extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest req, HttpServletResponse res) throws Exception
	{
		RetrieveDataForm obj = (RetrieveDataForm)form;
		String privilege = obj.getPrivilege();
		Connection con = null;
		Class.forName(ConnectionStats.DRIVER);
		String url = ConnectionStats.DB_URL;
		String usr = ConnectionStats.DB_USER;
		String pwd = ConnectionStats.DB_PASSWORD;
		con = DriverManager.getConnection(url, usr, pwd);
		Statement stmt = con.createStatement();
		ResultSet rs = null;
		if(privilege.equals("2"))
		{
			rs = stmt.executeQuery("select distinct productId from service2_main");
			ArrayList<String> strProductId = new ArrayList<String>();
			while(rs.next())
			{
				strProductId.add(String.valueOf(rs.getString(1)));
			}
			req.setAttribute("strProductId", strProductId);
			rs = stmt.executeQuery("select distinct store from service2_tbl");
			ArrayList<String> strStore = new ArrayList<String>();
			while(rs.next())
			{
				strStore.add(String.valueOf(rs.getString(1)));
			}
			req.setAttribute("strStore", strStore);
			rs.close();
			con.close();
			return mapping.findForward("executive_pricyprizer");
		}
		else if(privilege.equals("1"))
		{
			rs = stmt.executeQuery("select * from services");
			ArrayList<String[]> serviceSummary = new ArrayList<String[]>();			
			while(rs.next())
			{
				String str[] = new String[8];
				str[0] = rs.getString(1);
				str[1] = rs.getString(2);
				str[2] = rs.getString(3);
				str[3] = rs.getString(4);
				str[4] = rs.getString(5);
				str[5] = rs.getString(6);
				str[6] = rs.getString(7);
				str[7] = rs.getString(8);
				serviceSummary.add(str);
			}
			req.setAttribute("serviceSummary", serviceSummary);
			rs = stmt.executeQuery("select * from clients");
			ArrayList<String[]> clientSummary = new ArrayList<String[]>();			
			while(rs.next())
			{
				String str[] = new String[8];
				str[0] = rs.getString(1);
				str[1] = rs.getString(2);
				str[2] = rs.getString(3);
				str[3] = rs.getString(4);
				str[4] = rs.getString(5);
				str[5] = rs.getString(6);
				clientSummary.add(str);
			}
			req.setAttribute("clientSummary", clientSummary);
			rs = stmt.executeQuery("select * from query_sug_comp");
			ArrayList<String[]> query = new ArrayList<String[]>();			
			while(rs.next())
			{
				String str[] = new String[3];
				str[0] = rs.getString(1);
				str[1] = rs.getString(2);
				str[2] = rs.getString(3);
				query.add(str);
			}
			req.setAttribute("query", query);
			rs = stmt.executeQuery("select * from login");
			ArrayList<String[]> employee = new ArrayList<String[]>();			
			while(rs.next())
			{
				String str[] = new String[4];
				str[0] = rs.getString(1);
				str[1] = rs.getString(2);
				str[2] = rs.getString(3);
				if(rs.getString(4).equals("1"))
				{
					str[3] = "administrator";
				}
				else
				{
					str[3] = "executives";
				}
				employee.add(str);
			}
			req.setAttribute("employee", employee);
			rs.close();
			con.close();
			return mapping.findForward("admin");
		}
		else
		{
			return mapping.findForward("failure");
		}
		
		
	}
}
