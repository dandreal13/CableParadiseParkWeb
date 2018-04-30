<%@ Page Title="Cable Paradise Park" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CableParadiseParkWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<center>
<video style="text-align: center" width="960" height="550" autoplay loop muted>
    <source src="Content/Videos/Website Video.mp4" type="video/mp4">
    This video is not supported by your browser.
</video>
</center>
<div>
    <center>
        <img src="Content/Images/CPP big.png" alt="Cable Paradise Park Logo" height="400" width="600">
        <span style="color:Cornflowerblue; font-size: 36px;font-family:Impact, Charcoal, sans-serif;padding-top: 50px;">
                <strong><br>Hours<br></strong>
        </span>
        <span style="color:Cornflowerblue;">
                Reservation Only Until April<br>
                $100 For Two Hour Group Reservation<br>
                $40 for Every Additional Hour<br>
        </span>
     </center>
</div>
<div class="text" style="width: 50%; margin: 0 auto;">
  <img class="mySlides" src="Content/Images/Beach and board.JPG" style="width:500px;height:375px">
  <img class="mySlides" src="Content/Images/IMG_6742.JPG" style="width:500px;height:375px">
  <img class="mySlides" src="Content/Images/IMG_6745.JPG" style="width:500px;height:375px">
  <img class="mySlides" src="Content/Images/IMG_6746.JPG" style="width:500px;height:375px">
  <img class="mySlides" src="Content/Images/Trent Kickin It.jpg" style="width:500px;height:375px">
</div>


<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>

<br>

<h1><center>About Cable Paradise</center></h1>
<p><center>Located in Eastern North Carolina, Cable Paradise Park is a wakeboarding and water-sports complex with
two 2-tower wakeboard systems. Cable Paradise offers wakeboarding for all skill levels alongside a family 
fun recreation and water-sports complex. Contact us about private lessons, summer camps, birthday parties,
group events, or come by the park to do some wakeboarding today!</center>
</p>


</asp:Content>
