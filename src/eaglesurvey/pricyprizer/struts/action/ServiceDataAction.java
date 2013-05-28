package eaglesurvey.pricyprizer.struts.action;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import java.sql.Statement;
import java.util.ArrayList;

import org.apache.struts.action.*;
import eaglesurvey.common.*;
import eaglesurvey.pricyprizer.struts.form.ServiceDataForm;
import javax.servlet.http.*;
public class ServiceDataAction extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest req, HttpServletResponse res) throws Exception
	{
		ServiceDataForm obj = (ServiceDataForm)form;
		String serviceId = obj.getServiceId();
		CalculateService obj2 = new CalculateService();
		obj2.calculate(serviceId);
		Connection con = null;
		Class.forName(ConnectionStats.DRIVER);
		String url = ConnectionStats.DB_URL;
		String usr = ConnectionStats.DB_USER;
		String pwd = ConnectionStats.DB_PASSWORD;
		con = DriverManager.getConnection(url, usr, pwd);
		Statement stmt = con.createStatement();
		ResultSet rs = null;	
		rs = stmt.executeQuery("select * from "+serviceId+"_main");
		ResultSetMetaData rsmd = rs.getMetaData();
		int col = rsmd.getColumnCount();
		String[] mainHeader = new String[col];
		for(int i =0;i<col;i++)
		{
			mainHeader[i] = rsmd.getColumnLabel(i+1);
		}
		ArrayList<String[]> serviceDataMain = new ArrayList<String[]>();
		while(rs.next())
		{
			String[] str = new String[col];
			for(int i = 0;i<col; i++)
			{
				str[i] = rs.getString(i+1);
			}
			serviceDataMain.add(str);
		}
		req.setAttribute("mainHeader",mainHeader);
		req.setAttribute("serviceDataMain", serviceDataMain);		
		rs = stmt.executeQuery("select * from "+serviceId+"_tbl");
		rsmd = rs.getMetaData();
		col = rsmd.getColumnCount();
		String[] tblHeader = new String[col];
		for(int i =0;i<col;i++)
		{
			tblHeader[i] = rsmd.getColumnLabel(i+1);
		}
		ArrayList<String[]> serviceDatatbl = new ArrayList<String[]>();
		while(rs.next())
		{
			String[] str = new String[col];
			for(int i = 0;i<col; i++)
			{
				str[i] = rs.getString(i+1);
			}
			serviceDatatbl.add(str);
		}
		req.setAttribute("tblHeader",tblHeader);
		req.setAttribute("serviceDatatbl", serviceDatatbl);
		rs.close();
		con.close();
		return mapping.findForward("success");		
	}
}
