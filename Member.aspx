<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Member.aspx.cs" Inherits="CruiseBookingWeb.Member" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
        <br />
        <br />
        <table>
            <tr>
                <td>Longitude : </td>
                <td>
                    <asp:TextBox ID="txtLong" runat="server" Text="88.08" />
                    <br />
                </td>
            </tr>
            <tr>
                <td>Latitude : </td>
                <td>
                    <asp:TextBox ID="txtLatitude" runat="server" Text="46.58" />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                     <asp:Button Text="Get Weather Information" runat="server" OnClick="GetWeatherInfo" />
                </td>
            </tr>
        </table>

       
        <hr />
        <table id="tblWeather" runat="server" border="0" cellpadding="0" cellspacing="0"
            visible="false">
            <tr>
                <th colspan="2">Weather Information
                </th>
            </tr>
            <tr>
                <td rowspan="3">
                    <asp:Image ID="imgWeatherIcon" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCity_Country" runat="server" />
                    <asp:Image ID="imgCountryFlag" runat="server" />
                    <asp:Label ID="lblDescription" runat="server" />
                     Humidity:
            <asp:Label ID="lblHumidity" runat="server" />
                </td>
            </tr>
              <tr>
        <td>
            Temperature:
            (Min:
            <asp:Label ID="lblTempMin" runat="server" />
            Max:
            <asp:Label ID="lblTempMax" runat="server" />
                Day:
            <asp:Label ID="lblTempDay" runat="server" />
                Night:
            <asp:Label ID="lblTempNight" runat="server" />)
        </td>
    </tr>

        </table>
    </div>


    <div>
        <br />
        <br />
        <br />

        <table>
            <tr>
                <td>Country : </td>
                <td>
                    <asp:TextBox ID="txtCountry" runat="server" Text="us" />
                    <br />
                </td>
            </tr>
            <tr>
                <td>Category : </td>
                <td>
                    <asp:TextBox ID="txtCategory" runat="server" Text="general" />
                    <br />
                </td>
            </tr>
            <tr>
                <td>Language : </td>
                <td>
                    <asp:TextBox ID="txtLanguage" runat="server" Text="en" />
                    <br />
                </td>
            </tr>
            <tr><td><asp:Button Text="Get News" runat="server" OnClick="GetNewsInfo" /></td></tr>
            
        </table>
        <hr />

        <br />
        <asp:GridView ID="grdNews" runat="server"></asp:GridView>

    </div>


     <div>
        <br />
        <br />
        <br />

        <table>
            <tr>
                <td>ORI : </td>
                <td>
                    <asp:TextBox ID="tbORI" runat="server" Text="MI2802800" />
                    <br />
                </td>
            </tr>
            <tr>
                <td>Offense : </td>
                <td>
                    <asp:TextBox ID="tbOffense" runat="server" Text="aggravated-assault" />
                    <br />
                </td>
            </tr>
            <tr>
                <td>From (Year) : </td>
                <td>
                    <asp:TextBox ID="tbFrom" runat="server" Text="1991" />
                    <br />
                </td>
            </tr>

              <tr>
                <td>TO (Year) : </td>
                <td>
                    <asp:TextBox ID="tbTO" runat="server" Text="2000" />
                    <br />
                </td>
            </tr>
            <tr><td><asp:Button Text="Get Crime Data" runat="server" OnClick="getCrimeData" /></td></tr>
            
        </table>
        <hr />

        <br />
        <asp:GridView ID="grdCrimeView" runat="server"></asp:GridView>

    </div>

</asp:Content>
