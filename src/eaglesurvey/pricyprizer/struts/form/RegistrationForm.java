package eaglesurvey.pricyprizer.struts.form;
import org.apache.struts.action.*;
import javax.servlet.http.*;
public class RegistrationForm extends ActionForm{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String emailid, password, serviceId, privilege,password2;
	@Override
    public void reset(ActionMapping mapping, HttpServletRequest req)
    {
		super.reset(mapping, req);
		this.setEmailid("");
		this.setPassword("");
		this.setPrivilege("");
		this.setServiceId("");
		this.setPassword2("");
    }
	public String getServiceId()
	{
		return serviceId;
	}
	public String getPrivilege()
	{
		return privilege;
	}
	public String getEmailid()
	{
		return emailid;
	}
	public String getPassword()
	{
		return password;
	}
	public String getPassword2()
	{
		return password2;
	}
	public void setPrivilege(String privilege)
	{
		this.privilege = privilege;
	}
	public void setServiceId(String serviceId)
	{
		this.serviceId = serviceId;
	}
    public void setEmailid(String emailid)
	{
		this.emailid = emailid.trim();
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	public void setPassword2(String password2)
	{
		this.password2 = password2;
	}
}
