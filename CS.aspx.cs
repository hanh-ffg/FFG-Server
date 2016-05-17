using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class CS : System.Web.UI.Page
{
	protected void UploadMultipleFiles(object sender, EventArgs e)
	{
        List<FileUpload> fileUploads = new List<FileUpload>();

		foreach (HttpPostedFile postedFile in file.PostedFiles)
		{
			string fileName = Path.GetFileName(postedFile.FileName);
			postedFile.SaveAs(Server.MapPath("~/Uploads/") + fileName);
		}
	}
}