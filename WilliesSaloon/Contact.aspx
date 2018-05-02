<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WilliesSaloon.WebForm6" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact">
        <h1 class="">Welcome to contact us!</h1>
        <!--Error Summary-->
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="#F56012" />


        <h2>Please tell us your name:</h2>
        <!--Name Text Box-->
        <p>
            <asp:TextBox ID="NameTextBox" runat="server" CssClass="textbox" Height="45px" Width="244px"></asp:TextBox>
            <!--Name Validator-->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameTextBox"
                ErrorMessage="Please tell us your name!"> *</asp:RequiredFieldValidator>
        </p>

        <h2>Please give us your Email:</h2>
        <!--Email Text Box-->
        <p>
            <asp:TextBox ID="EmailTextBox" runat="server" CssClass="textbox" Height="45px" Width="244px"></asp:TextBox>
            <!--Email Validators-->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailTextBox"
                ErrorMessage="Please tell us your email address!"> *</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox"
                ErrorMessage="Please give us a valid Email!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"> *</asp:RegularExpressionValidator>
        </p>


        <h2>What you want to tell us:</h2>
        <!--MessageText Box-->
        <p>
            <asp:TextBox ID="MessageTextBox" runat="server" CssClass="textbox" Height="163px" Width="593px" TextMode="MultiLine"></asp:TextBox>

            <!--Message Validator-->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="MessageTextBox"
                ErrorMessage="Please leave some messages"> *</asp:RequiredFieldValidator>
        </p>

        <!--Submit Button-->
        <p>
            <asp:Button ID="SubmitButton" runat="server" Height="75px" OnClick="SubmitButton_Click1" CssClass="btn btn-primary" Text="Submit" Width="205px" />
        </p>

        <!--Google Maps-->
        <p>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3222.99656716891!2d-97.0713628842499!3d36.11794138009473!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87b10a405bacaeff%3A0x2fcb1aba3aa6ef71!2sWillies+Saloon!5e0!3m2!1sen!2sus!4v1524100765672" width="600" class="textbox" height="450" style="border: 0" allowfullscreen></iframe>
        </p>

        <!--Database Connection-->
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO Contact(Name, Email, Message) VALUES (@name, @email, @message)" SelectCommand="SELECT * FROM [Contact]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="NameTextBox" Name="name" PropertyName="Text" />
                    <asp:ControlParameter ControlID="EmailTextBox" Name="email" PropertyName="Text" />
                    <asp:ControlParameter ControlID="MessageTextBox" Name="message" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
        </p>
    </div>
</asp:Content>
