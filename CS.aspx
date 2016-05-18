<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CS.aspx.cs" Inherits="CS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.css" />

    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/tags.css" />
    <!-- <link rel="stylesheet" href="css/templates.css" /> -->
    <link rel="stylesheet" href="css/menus.css" />
    <link rel="stylesheet" href="css/page_content.css" />
    <!-- <link rel="stylesheet" href="css/print.css" /> -->

    <link rel="stylesheet" href="css/upload.css" />

    <script src="js/jquery-1.12.0.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>

    <script type="text/javascript" src="js/upload.js"></script>
    <script type="text/javascript" src="js/download.js"></script>
    <script type="text/javascript" src="js/upload-submit.js"></script>
    <script src="https://www.google.com/recaptcha/api.js"></script>
</head>

<body class="pad-top-5">

    <form id="form1" runat="server" clientidmode="Static">

        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">NHS</a>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown"><a data-toggle="collapse"
                        href="#downloadCollapse">Downloads <span class="caret"></span>
                    </a></li>
                    <li><a>Upload </a></li>
                </ul>
            </div>
            <div class="collapse container" id="downloadCollapse">
                <div class="row">
                    <div class="col-sm-3">
                        <h3>Financial Capability Program</h3>

                        <h5>
                            <a href="forms/Financial Capabilities Intake 2016.pdf"
                                class="download" download>Financial Capabilities Intake</a>
                        </h5>
                    </div>

                    <div class="col-sm-3">
                        <h3>Foreclosure Prevention & Mediation Program</h3>

                        <h5>
                            <a
                                href="forms/NHSGC Homeownership Preservation Intake Form 2016-MASTER.PDF"
                                class="download" download>Homeownership Preservation Intake</a>
                        </h5>
                    </div>

                    <div class="col-sm-3">
                        <h3>Homebuyer Education</h3>
                        <h5>
                            <a href="forms/New Homebuyer Intake Form 2016.pdf"
                                class="download" download>New Homebuyer Intake Form</a>
                        </h5>
                    </div>
                    <div class="col-sm-3">
                        <h3>Home Repair Loans/Rehab Lending Program</h3>
                        <h5>
                            <a href="forms/NHSGC Home Repair Loan Program App.pdf"
                                class="download" download>Home Repair Loan Program
							Application</a>
                        </h5>
                        <h5>
                            <a href="forms/NHS ACH Authorization Form 10_24_2014.pdf"
                                class="download" download>NHS ACH Authorization</a>
                        </h5>
                    </div>
                </div>
            </div>
        </nav>

        <div class="container">
            <div class="row pad-top-5">
                <div class="col-sm-offset-3 col-sm-9">
                    <fieldset>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <legend>Customer Information:</legend>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label for="txtFname" class="col-sm-4 control-label">
                                        First
										Name:</label>
                                    <div class="col-sm-4">
                                        <asp:TextBox runat="server" ClientIDMode="Static" CssClass="form-control" ID="txtFname"
                                            placeholder="First Name"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:RequiredFieldValidator ID="rfvFname" runat="server" ErrorMessage="This field is required" ControlToValidate="txtFname"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revFname" runat="server" ErrorMessage="Invalid character found" ControlToValidate="txtFname" ValidationExpression="/^[a-zA-Z ,.'-]+$/i"></asp:RegularExpressionValidator>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="txtLname" class="col-sm-4 control-label">
                                        Last
										Name:
                                    </label>
                                    <div class="col-sm-4">
                                        <asp:TextBox runat="server" ClientIDMode="Static" CssClass="form-control" ID="txtLname"
                                            placeholder="Last Name"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:RequiredFieldValidator ID="rfvLname" runat="server" ErrorMessage="This field is required" ControlToValidate="txtLname"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revLname" runat="server" ErrorMessage="Invalid character found" ControlToValidate="txtLname" ValidationExpression="/^[a-zA-Z ,.'-]+$/i"></asp:RegularExpressionValidator>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="txtAddressLine1" class="col-sm-4 control-label">
                                        Address Line 1:</label>
                                    <div class="col-sm-4">
                                        <asp:TextBox runat="server" ClientIDMode="Static" CssClass="form-control" ID="txtAddressLine1"
                                            placeholder="Address Line 1"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:RequiredFieldValidator ID="rfvAdd1" runat="server" ErrorMessage="This field is required" ControlToValidate="txtAddressLine1"></asp:RequiredFieldValidator>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="txtAddressLine2" class="col-sm-4 control-label">
                                        Address Line 2:
                                    </label>
                                    <div class="col-sm-4">
                                        <asp:TextBox runat="server" ClientIDMode="Static" CssClass="form-control" ID="txtAddressLine2"
                                            placeholder="Address Line 2"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="txtCity" class="col-sm-4 control-label">
                                        City:
                                    </label>
                                    <div class="col-sm-4">
                                        <asp:TextBox runat="server" ClientIDMode="Static" CssClass="form-control" ID="txtCity"
                                            placeholder="Address Line 2"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="This field is required" ControlToValidate="txtCity"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revCity" runat="server" ErrorMessage="Invalid character found" ControlToValidate="txtCity" ValidationExpression="^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$"></asp:RegularExpressionValidator>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="txtState" class="col-sm-4 control-label">
                                        State:
                                    </label>
                                    <div class="col-sm-4">
                                        <asp:TextBox runat="server" ClientIDMode="Static" CssClass="form-control" ID="txtState"
                                            placeholder="State"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="This field is required" ControlToValidate="txtState"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revState" runat="server" ErrorMessage="Invalid character found. Please enter letters only" ControlToValidate="txtState" ValidationExpression="^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$"></asp:RegularExpressionValidator>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="txtPostalCode" class="col-sm-4 control-label">
                                        Postal Code:
                                    </label>
                                    <div class="col-sm-4">
                                        <asp:TextBox runat="server" type="number" CssClass="form-control" ID="txtPostalCode"
                                            placeholder="Postal Code"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:RequiredFieldValidator ID="rfvZipCode" runat="server" ErrorMessage="This field is required" ControlToValidate="txtPostalCode"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revPostal" runat="server" ErrorMessage="Invalid postal code format." ControlToValidate="txtPostalCode" ValidationExpression="\d{5}"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <legend>Contact Information:</legend>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label for="txtPhone" class="col-sm-4 control-label">
                                        Phone Number:
                                    </label>
                                    <div class="col-sm-4">
                                        <asp:TextBox runat="server" type="tel" CssClass="form-control" ID="txtPhone"
                                            placeholder="Phone number"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ErrorMessage="This field is required" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revPhone" runat="server" ErrorMessage="Invalid phone format. Please enter phone number in format 123-456-7890" ControlToValidate="txtPhone" ValidationExpression="\d{3}-\d{3}-\d{4}"></asp:RegularExpressionValidator>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="txtEmail" class="col-sm-4 control-label">
                                        Email:
                                    </label>
                                    <div class="col-sm-4">
                                        <asp:TextBox runat="server" ClientIDMode="Static" CssClass="form-control" ID="txtEmail"
                                            placeholder="Email"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="This field is requỉed" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Invalid email format" ControlToValidate="txtEmail" ValidationExpression="\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend>Document Information</legend>

                        <div id="uploadContainer">
                            <div class="extraFile">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-sm-11 panel-heading">File :</div>
                                            <div class="col-sm-1">
                                                <a href="#" class="remove-file" name="remove-file"><span
                                                    class="glyphicon glyphicon-minus"></span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                        <div class="form-group">
                                            <label for="" class="col-sm-4 control-label" name="lblCategory">
                                                Document Category:
                                            </label>
                                            <div class="col-sm-4">
                                                <asp:DropDownList runat="server" CssClass="form-control" ID="sCategory">
                                                    <asp:ListItem Value="0" Text="-Select-"></asp:ListItem>
                                                    <asp:ListItem Value="1" Text="CityLIFT Program"></asp:ListItem>
                                                    <asp:ListItem Value="2">Cuyahoga County Down Payment
														Assistance Program</asp:ListItem>
                                                    <asp:ListItem Value="3">Financial Capability Program</asp:ListItem>
                                                    <asp:ListItem Value="4">Foreclosure Prevention and
														Meditation Program</asp:ListItem>
                                                    <asp:ListItem Value="5">Home Buyer Education</asp:ListItem>
                                                    <asp:ListItem Value="6">Home Equity Conversion
														Mortgage/Reverse Mortgage</asp:ListItem>
                                                    <asp:ListItem Value="7">Home Repair Loans/ Rehab Lending</asp:ListItem>
                                                    <asp:ListItem Value="8">Land Trust Rental</asp:ListItem>
                                                    <asp:ListItem Value="9">Land Trust Properties for Sale</asp:ListItem>
                                                    <asp:ListItem Value="10">Real Estate Development</asp:ListItem>
                                                    <asp:ListItem Value="11">Small Dollar Landing</asp:ListItem>
                                                    <asp:ListItem Value="12">Volunteer Income Tax Assistance
														(VITA) program</asp:ListItem>
                                                    <asp:ListItem Value="13">Year 16 Home Mortgages</asp:ListItem>
                                                    <asp:ListItem Value="14">Other</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-sm-4 control-label" aria-busy="False" name="lblFileName">
                                                File Name:</label>
                                            <div class="col-sm-4">
                                                <asp:TextBox runat="server" ID="txtFileName" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-sm-4 control-label" name="lblFile">
                                                Select
												File</label>
                                            <div class="col-sm-4">
                                                <%--<input type="file" class="file"file" />--%>
                                                <asp:FileUpload ID="file" runat="server" AllowMultiple="false" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <div class="form-group">
                        <div class="col-sm-offset-4 col-sm-4">
                            <a href="#" id="add-file"><span
                                class="glyphicon glyphicon-plus"></span>Add more files
                            </a>
                        </div>
                    </div>

                    <div class="alert alert-danger fade in" id="emptyCode"
                        style="display: none">
                        <strong>Please enter the verification code.</strong>
                    </div>

                    <div class="alert alert-danger fade in" id="wrongCode"
                        style="display: none">
                        <strong>The verification code you entered was incorrect.</strong>
                    </div>

                    <div class="g-recaptcha col-sm-offset-2 col-sm-10"
                        data-sitekey="6LfXEBsTAAAAACiNW6pZJvietS24FmNJ7p6puDx1">
                    </div>


                    <div class="form-group">
                        <div class="text-center">
                            <asp:Button ID="btnUpload" Text="Upload" runat="server" ClientIDMode="Static" OnClick="UploadMultipleFiles" />
                        </div>
                    </div>

                    <div id="confirmModal" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h2 class="modal-title text-center">Document(s) uploaded
									successfully</h2>
                                </div>
                                <div class="modal-body row">
                                    <div class="col-sm-1 col-lg-1"></div>
                                    <div class="col-sm-10 col-lg-10">
                                        <div>
                                            Thank you for submitting the following application(s) on <span
                                                class="bold" id="date"></span>at <span class="bold"
                                                    id="time"></span>
                                        </div>

                                        <div>
                                            <ul id="docList"></ul>
                                        </div>

                                        <div>
                                            We will be in touch with you shortly. If you have additional
										questions, you can reach us at <span class="bold">216.458.4663</span>
                                            or <a href="mailto:info@nhscleveland.org" id="mailto">info@nhscleveland.org</a>
                                            from 8:30 am to 5:00 pm during the week.
                                        </div>
                                    </div>
                                    <div class="col-sm-1 col-lg-1"></div>

                                </div>
                                <div class="modal-footer text-center">
                                    <button type="button" class="btn btn-warning btn-lg"
                                        data-dismiss="modal" id="btnSubmit">
                                        OK</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr />
                    <asp:Label ID="lblSuccess" runat="server" ClientIDMode="Static" ForeColor="Green" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
