<%@ Page Title="Events" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="WilliesSaloon.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2 class="text-center"><b>Check Our Daily Events</b></h2>
        <br />
        <!--Dropdown list for days of the week-->
        <p class="text-center">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" CssClass="textbox" DataTextField="Day" DataValueField="Day">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Day] FROM [DailyEvent]"></asp:SqlDataSource>
        </p>
        <!--Dynamic Table from the database-->
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="center" DataSourceID="SqlDataSourceGridview" CellPadding="10" CellSpacing="1">
            <Columns>
                <asp:BoundField DataField="Event" HeaderText="Event" SortExpression="Event" HeaderStyle-ForeColor="#F56012" />
                <asp:BoundField DataField="StartTime" HeaderText="Start Time" SortExpression="StartTime" HeaderStyle-ForeColor="#F56012" />
                <asp:BoundField DataField="EndTime" HeaderText="End Time" SortExpression="EndTime" HeaderStyle-ForeColor="#F56012" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceGridview" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Event], [StartTime], [EndTime] FROM [DailyEvent] WHERE ([Day] = @Day)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Day" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />

        <!--List of Events-->
        <h2 class="text-center"><b>Upcoming Special Events</b></h2>
        <br />

        <p class="date">April 5, 2018 | 9:00 pm - 1:30 am</p>
        <h3 class="indent line ">Josh Hoyer and Soul Colossal</h3>
        <br />

        <p class="date">April 6, 2018  | 9:00 pm - 1:30 am</p>
        <h3 class="indent line">Jimmy Lee Jordan Band</h3>
        <br />

        <p class="date">April 7, 2018 | 9:00 pm - 1:30 am</p>
        <h3 class="indent line">Mark Chamberlain Band</h3>
        <br />

        <p class="date">April 12, 2018 | 9:00 pm - 1:30 am</p>
        <h3 class="indent line">Something Like Seduction</h3>
        <br />

        <p class="date">April 14, 2018 | 9:00 pm - 1:30 am</p>
        <h3 class="indent line">Oklahoma Uprising</h3>
        <br />

        <p class="date">April 21, 2018 | 9:00 pm - 1:30 am</p>
        <h3 class="indent line">Chuck Dunlap</h3>
        <br />

        <p class="date">May 1, 2018 | 9:00 pm - 1:30 am</p>
        <h3 class="indent line">Red Dirt Rangers</h3>
        <br />

        <p class="date">May 1, 2018 | 9:00 pm - 1:30 am</p>
        <h3 class="indent line">Brothers Gow</h3>
        <br />

        <p class="date">May 11, 2018 | 9:00 pm - 1:30 am</p>
        <h3 class="indent line">Isaac McClung</h3>
        <br />

        <p class="date">May 23, 2018 | 9:00 pm - 1:30 am</p>
        <h3 class="indent line">Isaac McClung</h3>
        <br />

        <p class="date">June 2, 2018 | 9:00 pm - 1:30 am</p>
        <h3 class="indent line">Isaac McClung</h3>
        <br />

        <p class="date">June 8, 2018 | 9:00 pm - 1:30 am</p>
        <h3 class="indent line">Caleb McGee</h3>
        <br />

        <p class="date">June 9, 2018 | 9:00 pm - 1:30 am</p>
        <h3 class="indent line">Taylor Lewis</h3>
        <br />

        <p class="date">June 15, 2018 | 6:30 pm - 9:30 pm</p>
        <h3 class="indent line">Tres Dudes</h3>
        <br />

    </div>
</asp:Content>
