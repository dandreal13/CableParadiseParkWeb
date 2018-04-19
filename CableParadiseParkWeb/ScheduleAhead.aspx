<%@ Page Title="CPP Schedule Ahead" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ScheduleAhead.aspx.cs" Inherits="CableParadiseParkWeb.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="content" style=style="padding-top:20px;margin-bottom:25px">
    <center>
        <div class="header"><br>Schedule Ahead</div><br>
        <div style="padding: 10px; padding-left: 40px; padding-right: 40px;">
            <p>Here at Cable Paradise Park, we allow users to schedule online or in person. If you wish to schedule ahead follow the button below to be redirected to our scheduling site.</p>
            <a style="float:none;" target="_blank" href="https://my.setmore.com/bookanappointmentv3.do?uniqueKey=691c568a-a405-490b-92ab-76ad4da19999"><img border="none" src="https://my.setmore.com/webapp/images/bookappt/SetMore-book-button.png" alt="Book an appointment with Cable Paradise Park using SetMore"/></a>
            <br />
            <br />
            <br />
            First Name:   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            Last Name:   <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            Pick a Date:   <asp:TextBox ID="TextBox3" runat="server" Width="17px"></asp:TextBox>
            /<asp:TextBox ID="TextBox5" runat="server" Width="16px"></asp:TextBox>
            /<asp:TextBox ID="TextBox6" runat="server" Width="50px"></asp:TextBox>
&nbsp;(MM/DD/YYYY)<br />
            Pick a Start Time:   <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>11:00</asp:ListItem>
                <asp:ListItem>12:00</asp:ListItem>
                <asp:ListItem>1:00</asp:ListItem>
                <asp:ListItem>2:00</asp:ListItem>
                <asp:ListItem>3:00</asp:ListItem>
                <asp:ListItem>4:00</asp:ListItem>
                <asp:ListItem>5:00</asp:ListItem>
                <asp:ListItem>6:00</asp:ListItem>
            </asp:DropDownList>
            <br />
            Pick a End Time:   <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>12:00</asp:ListItem>
                <asp:ListItem>1:00</asp:ListItem>
                <asp:ListItem>2:00</asp:ListItem>
                <asp:ListItem>3:00</asp:ListItem>
                <asp:ListItem>4:00</asp:ListItem>
                <asp:ListItem>5:00</asp:ListItem>
                <asp:ListItem>6:00</asp:ListItem>
                <asp:ListItem>7:00</asp:ListItem>
            </asp:DropDownList>
            <br />
            Guest Number:   <asp:TextBox ID="TextBox4" runat="server" Width="16px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="See Price" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Submit" />
            <br />
            <br />
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <br />
        </div>



    </center>
</div>

</asp:Content>
