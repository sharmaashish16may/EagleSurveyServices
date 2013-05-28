package eaglesurvey.pricyprizer.struts.form;
import org.apache.struts.action.*;
import javax.servlet.http.*;
public class RetrieveDataForm extends ActionForm{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String privilege;
	@Override
    public void reset(ActionMapping mapping, HttpServletRequest req)
    {
		super.reset(mapping, req);
		this.setPrivilege("");
    }
	public String getPrivilege()
	{
		return privilege;
	}
	public void setPrivilege(String privilege)
	{
		this.privilege = privilege;
	}
}

