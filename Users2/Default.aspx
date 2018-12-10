<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="no3">
    
        <br />
        姓名:<asp:TextBox ID="name" runat="server" Width="178px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="請輸入姓名" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        電話號碼:<asp:TextBox ID="phone" runat="server" Width="168px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="phone" ErrorMessage="請輸入電話號碼" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="phone" ErrorMessage="請輸入正確電話格式" ForeColor="Blue" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
        <br />
        <br />
        請輸入email:<asp:TextBox ID="e1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="e1" ErrorMessage="請輸入email" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="e1" ErrorMessage="請輸入正確email格式" ForeColor="Blue" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
        輸入優惠卷:<asp:TextBox ID="asd1" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="asd1" ControlToValidate="asd2" ErrorMessage="密碼不一致，請再輸入一遍" ForeColor="#CC0000"></asp:CompareValidator>
        <br />
        <br />
        再次輸入:<asp:TextBox ID="asd2" runat="server" Height="16px" Width="158px"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <br />
    
        <asp:CheckBox ID="C1" runat="server" Text="原味披沙" AutoPostBack="True" OnCheckedChanged="C1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 數量&nbsp;&nbsp; 
        <asp:DropDownList ID="no1" runat="server" Height="30px" Width="148px" AutoPostBack="True" OnSelectedIndexChanged="no1_SelectedIndexChanged">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 單價:&nbsp;
        <asp:TextBox ID="cost1" runat="server" AutoPostBack="True" OnTextChanged="cost1_TextChanged">0</asp:TextBox>
        &nbsp; 小計:<asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <asp:CheckBox ID="C2" runat="server" Text="牛肉披沙" AutoPostBack="True" OnCheckedChanged="C2_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 數量&nbsp; &nbsp;<asp:DropDownList ID="no2" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="no2_SelectedIndexChanged" Width="147px">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 單價:&nbsp;
        <asp:TextBox ID="cost2" runat="server" AutoPostBack="True" OnTextChanged="cost2_TextChanged">0</asp:TextBox>
        &nbsp; 小計:<asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
        <asp:CheckBox ID="C3" runat="server" OnCheckedChanged="C3_CheckedChanged" Text="海鮮披沙" AutoPostBack="True" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 數量 &nbsp;&nbsp;<asp:DropDownList ID="no3" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="no3_SelectedIndexChanged" Width="147px">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 單價:&nbsp;
        <asp:TextBox ID="cost3" runat="server" AutoPostBack="True" OnTextChanged="cost3_TextChanged">0</asp:TextBox>
        &nbsp; 小計:<asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        <asp:RadioButtonList ID="R1" runat="server" Height="48px" RepeatDirection="Horizontal" style="margin-bottom: 0px" Width="714px">
            <asp:ListItem Value="1">一分熟</asp:ListItem>
            <asp:ListItem Value="3">三分熟</asp:ListItem>
            <asp:ListItem Value="5">五分熟</asp:ListItem>
            <asp:ListItem Value="7">七分熟</asp:ListItem>
            <asp:ListItem Value="10">全熟</asp:ListItem>
        </asp:RadioButtonList>
        你需要:<br />
        <br />
        <asp:ListBox ID="LB" runat="server" Height="84px" SelectionMode="Multiple" Width="85px">
            <asp:ListItem Value="1">筷子</asp:ListItem>
            <asp:ListItem Value="2">湯匙</asp:ListItem>
            <asp:ListItem Value="3">提袋</asp:ListItem>
            <asp:ListItem Value="4">發票</asp:ListItem>
        </asp:ListBox>
        <br />
        <br />
        優惠加購:<br />
        <asp:CheckBoxList ID="v1" runat="server">
            <asp:ListItem Value="蔬菜湯 ">蔬菜湯 10元</asp:ListItem>
            <asp:ListItem Value="玉米濃湯 ">玉米濃湯 20元</asp:ListItem>
            <asp:ListItem Value="牛肉湯 ">牛肉湯 30元</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <br />
        回饋意見:<br />
        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="計算總價錢" Width="102px" />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="總價錢"></asp:Label>
        <asp:TextBox ID="total" runat="server" Height="16px" Width="154px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 打折後價錢:<asp:TextBox ID="total2" runat="server" OnTextChanged="total2_TextChanged"></asp:TextBox>
        <br />
        <br />
        <br />
        幾分熟 :&nbsp; <asp:Label ID="L1" runat="server"></asp:Label>
        <br />
        <br />
        你需要:<br />
        <asp:TextBox ID="tt1" runat="server" Height="76px" TextMode="MultiLine" Width="107px"></asp:TextBox>
        <br />
        <br />
        加購項目:<br />
        <asp:TextBox ID="tt2" runat="server" Height="72px" TextMode="MultiLine" Width="109px"></asp:TextBox>
        <br />
        <br />
        意見回饋:<br />
        <asp:Label ID="LL1" runat="server" Text=" "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Height="111px" OnTextChanged="TextBox2_TextChanged" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Label ID="LL2" runat="server" Text=" "></asp:Label>
        <br />
        <asp:Label ID="LL3" runat="server" Text=" "></asp:Label>
        <br />
        <asp:Label ID="LL4" runat="server" Text=" "></asp:Label>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
