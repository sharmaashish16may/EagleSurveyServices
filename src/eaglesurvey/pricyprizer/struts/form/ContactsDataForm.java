package eaglesurvey.pricyprizer.struts.form;
import org.apache.struts.action.*;
import javax.servlet.http.*;
public class ContactsDataForm extends ActionForm{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String emailid, content;
	@Override
    public void reset(ActionMapping mapping, HttpServletRequest req)
    {
		super.reset(mapping, req);
		this.setEmailid("");
		this.setContent("");
    }
 
	public String getEmailid()
	{
		return emailid;
	}
	public String getContent()
	{
		return content;
	}
  public void setEmailid(String emailid)
	{
		this.emailid = emailid.trim();
	}
	public void setContent(String content)
	{
		this.content = content;
	}
}
