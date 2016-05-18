using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Web.Script.Serialization;

public partial class CS : System.Web.UI.Page
{
    protected void UploadMultipleFiles(object sender, EventArgs e)
    {
        if (Validate())
        {
            IEnumerable<FileUpload> fileUploads = Page.Form.Controls.OfType<FileUpload>();
            String strFileName, strPath;
            
            HttpPostedFile postedFile;
            foreach (FileUpload fu in fileUploads)
            {
                postedFile = fu.PostedFile;
                if ((postedFile != null) && (postedFile.ContentLength > 0))
                {
                    try
                    {                       

                        strFileName = txtFileName.Text;
                        strPath = txtFname.Text + "-" + txtLname.Text;

                        if (txtPhone.Text != null & txtPhone.Text != "")
                        {
                            strPath = strPath + txtPhone.Text;
                        }
                        else
                        {
                            strPath = strPath + txtEmail.Text;
                        }

                        if (strFileName == "" || strFileName == null)
                        {
                            strFileName = Path.GetFileName(postedFile.FileName);
                        }

                        postedFile.SaveAs(Server.MapPath("~/App_Data/") + strPath + strFileName);
                    }
                    catch (Exception ex)
                    {
                        Response.Write("Error: " + ex.Message);
                        //Note: Exception.Message returns a detailed message that describes the current exception. 
                        //For security reasons, we do not recommend that you return Exception.Message to end users in 
                        //production environments. It would be better to put a generic error message. 
                    }
                }
                else
                {
                    Response.Write("Please select a file to upload.");
                }
            }
            
        }

        else
        {
            Response.Write("Invalid captcha.");
        }
    }

    public bool Validate()
    {

        string Response = Request["g-recaptcha-response"];//Getting Response String Appned to Post Method

        bool Valid = false;
        //Request to Google Server
        HttpWebRequest req = (HttpWebRequest)WebRequest.Create(" https://www.google.com/recaptcha/api/siteverify?secret=6Le65f4SAAAAAMfPM5hXSHwzdR7ioAo3n3QVVIga&response=" + Response);

        try
        {
            //Google recaptcha Responce 
            using (WebResponse wResponse = req.GetResponse())

            {

                using (StreamReader readStream = new StreamReader(wResponse.GetResponseStream()))
                {
                    string jsonResponse = readStream.ReadToEnd();

                    JavaScriptSerializer js = new JavaScriptSerializer();
                    MyObject data = js.Deserialize<MyObject>(jsonResponse);// Deserialize Json 

                    Valid = Convert.ToBoolean(data.success);
                }
            }

            return Valid;

        }
        catch (WebException ex)
        {
            throw ex;
        }
    }


    public class MyObject
    {
        public string success { get; set; }
    }
}