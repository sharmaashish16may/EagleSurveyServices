package eaglesurvey.pricyprizer.struts.form;
import org.apache.struts.action.*;
import javax.servlet.http.*;
public class ProductLoaderForm extends ActionForm{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String productName, productId, productDesc, price, notes, store;
	@Override
    public void reset(ActionMapping mapping, HttpServletRequest req)
    {
		super.reset(mapping, req);
		this.setProductId("");
		this.setProductName("");
		this.setNotes("");
		this.setPrice("");
		this.setProductDesc("");
		this.setStore("");
    }
 
	public String getProductName()
	{
		return productName;
	}
	public String getProductId()
	{
		return productId;
	}
	public String getProductDesc()
	{
		return productDesc;
	}
	public String getPrice()
	{
		return price;
	}
	public String getNotes()
	{
		return notes;
	}
	public String getStore()
	{
		return store;
	}
	public void setProductName(String productName)
	{
		this.productName = productName.trim();
	}
	public void setProductId(String productId)
	{
		this.productId = productId;
	}
	public void setProductDesc(String productDesc)
	{
		this.productDesc = productDesc;
	}
	public void setPrice(String price)
	{
		this.price = price;
	}
	public void setNotes(String notes)
	{
		this.notes = notes;
	}
	public void setStore(String store)
	{
		this.store = store;
	}
}
