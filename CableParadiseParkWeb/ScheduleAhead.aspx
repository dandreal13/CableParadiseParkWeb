<%@ Page Title="Schedule Ahead" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ScheduleAhead.aspx.cs" Inherits="CableParadiseParkWeb.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="content" style="padding-top: 20px; margin-bottom: 25px">
        <div style="padding: 10px; padding-left: 40px; padding-right: 40px;">
            <p>Here at Cable Paradise Park, we allow users to schedule online or in person. If you wish to schedule ahead, fill in your information below.</p>
            <br />

            <script>
                function msgalert() {
                    var FName = document.getElementById("TextBox1").value;
                    var LName = document.getElementById("TextBox2").value;
                    var gnum = document.getElementById("TextBox6").value;
                    var Date = document.getElementById("TextBox4").value;
                    var ArriveTime = document.getElementByID("DropDownList1");
                    var DepartTime = document.getElementByID("DropDownList2");
                    if (FName == null || LName == null || gnum == null || Date == null) {
                        alert("Enter values into all the text boxes!");
                    }
                    else if (ArriveTime.options[a.selectedIndex].value >= DepartTime.options[a.selectedIndex].value) {
                        alert("Invalid Session Length!");
                    }
                    else {
                        var duration = ArriveTime.options[a.selectedIndex].value - DepartTime.options[a.selectedIndex].value
                        var final = (gnum * duration) * 1.07;
                        var final = final.tofixed(2);
                        confirm("Your Order has Been Submitted!" + "You will be charged $" + final + " once you arrive, " + FName + " " + LName);
                    }
                }
            </script>
            <br />
            First Name:  
            <asp:TextBox ID="TextBox1" runat="server" Width="130px"></asp:TextBox>
            <br />
            <br />
            Last Name:  
            <asp:TextBox ID="TextBox2" runat="server" Width="130px"></asp:TextBox>
            <br />
            <br />
            Pick a Date:  
            <asp:TextBox ID="TextBox6" runat="server" Width="50px"></asp:TextBox>
            &nbsp;(MM/DD/YYYY)<br />
            <br />
            Pick a Start Time:  
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Text="11:00 AM" Value="1"></asp:ListItem>
                <asp:ListItem Text="12:00 PM" Value="2"></asp:ListItem>
                <asp:ListItem Text="1:00 PM" Value="3"></asp:ListItem>
                <asp:ListItem Text="2:00 PM" Value="4"></asp:ListItem>
                <asp:ListItem Text="3:00 PM" Value="5"></asp:ListItem>
                <asp:ListItem Text="4:00 PM" Value="6"></asp:ListItem>
                <asp:ListItem Text="5:00 PM" Value="7"></asp:ListItem>
                <asp:ListItem Text="6:00 PM" Value="8"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Pick a End Time:  
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem Text="12:00 PM" Value="1"></asp:ListItem>
                <asp:ListItem Text="1:00 PM" Value="2"></asp:ListItem>
                <asp:ListItem Text="2:00 PM" Value="3"></asp:ListItem>
                <asp:ListItem Text="3:00 PM" Value="4"></asp:ListItem>
                <asp:ListItem Text="4:00 PM" Value="5"></asp:ListItem>
                <asp:ListItem Text="5:00 PM" Value="6"></asp:ListItem>
                <asp:ListItem Text="6:00 PM" Value="7"></asp:ListItem>
                <asp:ListItem Text="7:00 PM" Value="8"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Guest Number:  
            <asp:TextBox ID="TextBox4" runat="server" Width="16px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClientClick="return msgalert()" />
            <br />
            <br />

        </div>
    </div>

</asp:Content>
