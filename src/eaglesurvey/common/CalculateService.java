package eaglesurvey.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.ArrayList;

public class CalculateService {
	public void calculate(String serviceid)
	{
		if(serviceid.equals("service2"))
		{
			try
			{
				Connection con = null;
				Class.forName(ConnectionStats.DRIVER);
				String url = ConnectionStats.DB_URL;
				String usr = ConnectionStats.DB_USER;
				String pwd = ConnectionStats.DB_PASSWORD;
				con = DriverManager.getConnection(url, usr, pwd);
				Statement stmt = con.createStatement();
				Statement stmt2 = con.createStatement();
				ResultSet rs = null;		
				rs = stmt.executeQuery("select * from service2_main");
				while(rs.next())
				{
					String productId = rs.getString("productid");
					ResultSet rs2 = null;
					rs2 = stmt2.executeQuery("select * from service2_tbl where productid = '"+productId+"'");
					int count = 0;
					double total = 0d;
					while(rs2.next())
					{
						count++;
						total = total + rs2.getDouble("price");
					}
					double avg = total / count;
					double idealprice = (double)(avg + ((20/100)*avg));
					Statement stmt3 = con.createStatement();
					stmt3.executeUpdate("update service2_main set idealprice = "+idealprice+" where productid = '"+productId+"'");
				}
			}
			catch(Exception ex)
			{
				System.out.println(ex.getMessage());
			}
		}
	}
}
