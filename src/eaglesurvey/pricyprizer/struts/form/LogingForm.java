package eaglesurvey.pricyprizer.struts.form;
import org.apache.struts.action.*;
import javax.servlet.http.*;
public class LogingForm extends ActionForm{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String emailid, password;
	@Override
    public void reset(ActionMapping mapping, HttpServletRequest req)
    {
		super.reset(mapping, req);
		this.setEmailid("");
		this.setPassword("");
    }
 
	public String getEmailid()
	{
		return emailid;
	}
	public String getPassword()
	{
		return password;
	}
  public void setEmailid(String emailid)
	{
		this.emailid = emailid.trim();
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
}
