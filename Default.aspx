<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CruiseBookingWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <div class="jumbotron">
        <h1>MyCruise.com </h1>
        <p class="lead">MyCruise.com powered by eTravel, LLC., features cruise bookings, along with many other in-destination services from a broad selection of global partners. MyCruise.com is powered by a very unique proprietary Internet Distribution and Booking Engine technology via eTravel.com, which provided real time bookings for various cruise lines on its web site.</p>
      
    </div>

    <div class="row">

         <div class="col-md-4">
            <h2>Self Sign-Up</h2>
            <p>
           Sign up to receive information about our special offers and deals. You can unsubscribe at any time.
            </p>
               <p>
                <asp:LinkButton runat="server" class="btn btn-default" id="memberSignUP"  href="SignUp.aspx">Become A Member &raquo;</asp:LinkButton>
            </p>
            
        </div>
        <div class="col-md-4">
            <h2>Member Sign-In</h2>
            <p>
               Sign In to avail our special offers and deals.
            </p>
              <p>
                <asp:LinkButton runat="server" class="btn btn-default" id="btnMemberLogin" href="MemberLogin.aspx">Member Login&raquo;</asp:LinkButton>
            </p>
           
        </div>
        <div class="col-md-4">
            <h2>Staff Sign-In</h2>
            <p>
                This features enable to our staff for maintenance and monitoring.
            </p>
              <p>
                <asp:LinkButton runat="server" class="btn btn-default" id="btnStafLogin" href="StaffLogin.aspx">Staff Login &raquo;</asp:LinkButton>
            </p>
           
        </div>
         

    
    </div>

</asp:Content>
