package eaglesurvey.pricyprizer.struts.form;
import org.apache.struts.action.*;

import javax.servlet.http.*;
public class ServiceDataForm extends ActionForm{
	private static final long serialVersionUID = 1L;
	private String serviceId;
	@Override
    public void reset(ActionMapping mapping, HttpServletRequest req)
    {
		super.reset(mapping, req);
		this.setServiceId("");
    }
 
	public String getServiceId()
	{
		return serviceId;
	}
	public void setServiceId(String serviceId)
	{
		this.serviceId = serviceId;
	}
    
}

