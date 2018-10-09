using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Photographer_bucket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime d = DateTime.Now.Date;
        TxtPBDate.Text = d.ToString();
        if(!IsPostBack)
        {
            if (Session["userLogin"] != null)
            {
                LblDisplayPhotographerUsername.Text = Session["userLogin"].ToString();
                LblDisplayUsernameFromSessionforPB.Text = Session["userLogin"].ToString();
                DropDownListCatPBDisplay.DataBind();
                DropDownListCatPBDisplay.Items.Insert(0, new ListItem("Select Category", "-1"));
            }
            else
            {
                Session.RemoveAll();
                Response.Redirect("~/login.aspx");
            }
        }
    }

    protected void BtnGadgetBucket_Click(object sender, EventArgs e)
    {
        showGB.Visible = true;
        showPB.Visible = false;
        showVB.Visible = false;
    }

    protected void BtnVideoBucket_Click(object sender, EventArgs e)
    {
        showGB.Visible = false;
        showPB.Visible = false;
        showVB.Visible = true;
    }

    protected void BtnPhotoBucket_Click(object sender, EventArgs e)
    {
        showGB.Visible = false;
        showPB.Visible = true;
        showVB.Visible = false;
    }

    protected void BtnSubmitPhotoBucketForReview_Click(object sender, EventArgs e)
    {
        string strFilethumbnailname, strthumbMessage, strFileZipname, strZipMessage;

        var sessionUsername = Session["userLogin"].ToString();
        int session_userid = getUserFromSession(sessionUsername);

        var thumbnailfileId = Guid.NewGuid().ToString().Replace("-", "");
        var ZipfileId = Guid.NewGuid().ToString().Replace("-", "");


        strFilethumbnailname = FileUploadPBThumbnail.PostedFile.FileName.ToString();
        var filethumbnailpath = "~/Photographer/Thumbnail/" + thumbnailfileId;

        strthumbMessage = uploadThumbnail(strFilethumbnailname, ConfigurationManager.AppSettings["folderPaththumbnail"], thumbnailfileId);

        strFileZipname = FileUploadPBZip.PostedFile.FileName.ToString();
        var fileZippath = "~/Photographer/Zip/"  + ZipfileId;
        strZipMessage = uploadZip(strFileZipname, ConfigurationManager.AppSettings["folderPathzip"], ZipfileId);
        string status_ = "Active";

        
            using (var db = new DataClassesPhotogenicDataContext())
            {
                PhotoBucket pb = new PhotoBucket
                {
                    PBName = TxtPBName.Text,
                    PBDescription = TxtPBDescription.Text,
                    Price = Convert.ToInt32( TxtPBPrice.Text),
                    PBDate =   TxtPBDate.Text,
                    Status = status_,
                    CatId = Convert.ToInt32(DropDownListCatPBDisplay.Text),
                    PBId = session_userid,
                    PBZipName = strFileZipname,
                    PBThumbName = strFilethumbnailname,
                    PBZipPath = FileUploadPBZip.ToString(),
                    PBThumbPath = FileUploadPBThumbnail.ToString()
                };
                db.PhotoBuckets.InsertOnSubmit(pb);
                db.SubmitChanges();
            }
        
    }

    public string uploadThumbnail(string fileName, string Thumbnail, string fileid)
    {
        var newgeneratedfileId = fileid;


        if (fileName == "")
        {
            return "Invalid filename supplied";
        }

        if (FileUploadPBThumbnail.PostedFile.ContentLength == 0)
        {
            return "Invalid file content";
        }

        fileName = System.IO.Path.GetFileName(fileName);
        
        if (Thumbnail == "")
        {
            return "Path not found";
        }

        try
        {

            if (FileUploadPBThumbnail.PostedFile.ContentLength <= 3048000)
            {
                FileUploadPBThumbnail.PostedFile.SaveAs(Server.MapPath(Thumbnail) + "\\" + newgeneratedfileId + fileName);
                return "File uploaded successfully";
            }
            else
            {
                return "Unable to upload,file exceeds maximum limit 3 MB";
            }
        }

        catch (UnauthorizedAccessException ex)
        {
            return ex.Message + "Permission to upload file denied";
        }

    }


    public string uploadZip(string fileName, string Zip, string fileid)
    {
        var newgeneratedfileId = fileid;


        if (fileName == "")
        {
            return "Invalid filename supplied";
        }

        if (FileUploadPBZip.PostedFile.ContentLength == 0)
        {
            return "Invalid file content";
        }

        fileName = System.IO.Path.GetFileName(fileName);

        if (Zip == "")
        {
            return "Path not found";
        }

        try
        {

            if (FileUploadPBZip.PostedFile.ContentLength <= 3048000)
            {
                FileUploadPBThumbnail.PostedFile.SaveAs(Server.MapPath(Zip) + "\\" + newgeneratedfileId + fileName);
                return "File uploaded successfully";
            }
            else
            {
                return "Unable to upload,file exceeds maximum limit 3 MB";
            }
        }

        catch (UnauthorizedAccessException ex)
        {
            return ex.Message + "Permission to upload file denied";
        }

    }

    protected int getUserFromSession(string username)
    {
        using (var db = new DataClassesPhotogenicDataContext())
        {
            var q = (from p in db.Users
                     where p.Username == username
                     select p.UserId).SingleOrDefault();

            return q;
        }
    }
}