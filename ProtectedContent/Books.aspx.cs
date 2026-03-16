using System;
using System.Linq;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class ProtectedContent_Books : System.Web.UI.Page
{
    BooksDataContext database = new BooksDataContext(
        ConfigurationManager.ConnectionStrings["BooksConnectionString"].ConnectionString);

    protected void authorsLinqDataSource_Selecting(object sender, LinqDataSourceSelectEventArgs e)
    {
        e.Result =
            from author in database.Authors
            select new
            {
                Name = author.FirstName + " " + author.LastName,
                author.AuthorID
            };
    }

    protected void titlesLinqDataSource_Selecting(object sender, LinqDataSourceSelectEventArgs e)
    {
        e.Result =
            from book in database.AuthorISBNs
            where book.AuthorID == Convert.ToInt32(authorsDropDownList.SelectedValue)
            select book.Title;
    }

    protected void authorsDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        titlesGridView.DataBind();
    }
}