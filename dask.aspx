 <title>Student Dashboard</title>
    <style>
        body {
            background-color: #f4f4f4;
            color: #5a5656;
            font-family: 'Open Sans', Arial, Helvetica, sans-serif;
            font-size: 16px;
            line-height: 1.5em;
        }
        a {
            text-decoration: none;
        }
        h1 {
            font-size: 1em;
        }
        h1, p {
            margin-bottom: 10px;
        }
        strong {
            font-weight: bold;
        }
        .uppercase {
            text-transform: uppercase;
        }
        .submit{
            background-color: green;
        }
/* ---------- Registration ---------- */
        #Registration {
            margin: 50px auto;
            width: 300px;
        }

        form fieldset input[type="text"], input[type="password"] {
            background-color: #e5e5e5;
            border: none;
            border-radius: 3px;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            color: #5a5656;
            font-family: 'Open Sans', Arial, Helvetica, sans-serif;
            font-size: 14px;
            height: 50px;
            outline: none;
            padding: 0px 10px;
            width: 280px;
            -webkit-appearance: none;
        }
        form fieldset input[type="submit"] {
            background-color: darkgreen;
            border: none;
            border-radius: 3px;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            color: #f4f4f4;
            cursor: pointer;
            font-family: 'Open Sans', Arial, Helvetica, sans-serif;
            height: 50px;
            text-transform: uppercase;
            width: 300px;
            -webkit-appearance: none;
        }
        form fieldset input[type="button"] {
            background-color: dodgerblue;
            border: none;
            border-radius: 3px;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            color: #f4f4f4;
            cursor: pointer;
            font-family: 'Open Sans', Arial, Helvetica, sans-serif;
            height: 50px;
            text-transform: uppercase;
            width: 300px;
            -webkit-appearance: none;
        }
        form fieldset a {
            color: #5a5656;
            font-size: 10px;
        }
        form fieldset a:hover {
            text-decoration: underline;
        }
        .btn-round {
            background-color: #5a5656;
            border-radius: 50%;
            -moz-border-radius: 50%;
            -webkit-border-radius: 50%;
            color: #f4f4f4;
            display: block;
            font-size: 12px;
            height: 50px;
            line-height: 50px;
            margin: 30px 125px;
            text-align: center;
            text-transform: uppercase;
            width: 50px;
        }
        .facebook-before {
            background-color: #0064ab;
            border-radius: 3px 0px 0px 3px;
            -moz-border-radius: 3px 0px 0px 3px;
            -webkit-border-radius: 3px 0px 0px 3px;
            color: #f4f4f4;
            display: block;
            float: left;
            height: 50px;
            line-height: 50px;
            text-align: center;
            width: 50px;
        }
        .facebook {
            background-color: #0079ce;
            border: none;
            border-radius: 0px 3px 3px 0px;
            -moz-border-radius: 0px 3px 3px 0px;
            -webkit-border-radius: 0px 3px 3px 0px;
            color: #f4f4f4;
            cursor: pointer;
            height: 50px;
            text-transform: uppercase;
            width: 250px;
        }
        .twitter-before {
            background-color: #189bcb;
            border-radius: 3px 0px 0px 3px;
            -moz-border-radius: 3px 0px 0px 3px;
            -webkit-border-radius: 3px 0px 0px 3px;
            color: #f4f4f4;
            display: block;
            float: left;
            height: 50px;
            line-height: 50px;
            text-align: center;
            width: 50px;
        }
        .twitter {
            background-color: #1bb2e9;
            border: none;
            border-radius: 0px 3px 3px 0px;
            -moz-border-radius: 0px 3px 3px 0px;
            -webkit-border-radius: 0px 3px 3px 0px;
            color: #f4f4f4;
            cursor: pointer;
            height: 50px;
            text-transform: uppercase;
            width: 250px;
        }
/* ---------- Record Display styling  ---------- */
        StudentRecord
        {
             background-color: #f4f4f4;
             width:100%;
        }
        .auto-style1 {
            width: 454px;
            margin-left: 0px;
            margin-right: 48px;
        }

    </style>
    <%-- <script type="text/javascript">
        function checkinput() {
            debugger
            var browsername = navigator.appName;
            first = document.getElementById("uid").value;
            if (browsername == "Chrome") {
                    window.location = "http://www.google.com";
                }
            if (first != "") {
                return true;
                prompt("Your UserId is =" + first);
                confirm("Do you want to continue");
              
            }

            else {
                alert("User Id cannot be blank ,please check");

            }
        }
    </script>--%>
</head>
<body>
    <form id="form1" runat="server"  method="post">
        <div id="Registration" class="auto-style1">
             <h1><strong>Student Dashboard.</strong> </h1>                
                <fieldset>
                <p>
                    <asp:Label runat="server" ID="lblUsername">Username</asp:Label>
                    <asp:TextBox ID="txtuid"  runat="server" placeholder="Your Name" onBlur="if(this.value=='')this.value='txtuid'" onFocus="if(this.value=='txtuid')this.value='' "></asp:TextBox>

                </p>
                    <p>
                        <asp:Label runat="server" ID="lblage">Age</asp:Label>
                        <asp:TextBox ID="txtage"  runat="server" placeholder="Your Age" onBlur="if(this.value=='')this.value='txtage'" onFocus="if(this.value=='txtage')this.value='' "></asp:TextBox>
                    </p>
                <p>
                    <asp:Label runat="server" ID="lbladdress">Address</asp:Label>
                    <asp:TextBox ID="txtaddress"  runat="server" placeholder="Your Address" onBlur="if(this.value=='')this.value='txtaddress'" onFocus="if(this.value=='txtaddress')this.value='' "></asp:TextBox>
                    
                </p>
                <p>
                    <asp:Label runat="server" ID="lblmobile">Mobile</asp:Label>
                    <asp:TextBox ID="txtmobile"  runat="server" placeholder="Your Mobile No" onBlur="if(this.value=='')this.value='txtmobile'" onFocus="if(this.value=='txtmobile')this.value='' "></asp:TextBox>
                    
                </p>
                
                
                <p>
                    <asp:Button ID="btnRegister" runat="server" Text="Update" OnClick="btnRegister_Click" Font-Bold="True"   />
                    </p>
                     <p>
                    <asp:Button ID="btnAdd" runat="server" Text="Add" BackColor="#0099FF" OnClick="btnAdd_Click" Font-Bold="True" />
                    </p>
                    <p>
                    <asp:Button ID="btnLogout" runat="server" Text="Logout" BackColor="#0099CC" OnClick="btnLogout_Click" Font-Bold="True" />
                        </p>
                    <p>
                        <asp:Label ID="lblErrorMeassage" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
                    </p>
                </fieldset>
            
                <h1><strong>Grid Viewcontrol.</strong> </h1>
           <div id="StudentRecord">
            <p>                
                <asp:GridView ID="grdStudentRecord" runat="server" CellPadding="4" GridLines="None" AutoGenerateColumns="False" OnRowDataBound="grdStudentRecord_RowDataBound" Width="100%" ForeColor="#333333">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <columns>
                        <asp:TemplateField HeaderText="Id">
                            <ItemTemplate><asp:Label ID="lbliid" runat="server" Text='<%#Eval("PK_UserId")%>'></asp:Label></ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField  HeaderText="Name">
                            <ItemTemplate><asp:Label ID="lblnname" runat="server" Text='<%#Eval("StudentName")%>'></asp:Label></ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField  HeaderText="Age">
                            <ItemTemplate><asp:Label ID="lblage" runat="server" Text='<%#Eval("Age")%>'></asp:Label></ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField  HeaderText="Address">
                            <ItemTemplate><asp:Label ID="lblaaddress" runat="server" Text='<%#Eval("Address")%>'></asp:Label></ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Mobileno">
                            <ItemTemplate><asp:Label ID="lblmmobileno" runat="server"  Text='<%#Eval("Mobile")%>'></asp:Label></ItemTemplate>
                        </asp:TemplateField>
                        
                    </columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
                </div>

            </p>
    </form>
        <p>                      
            <%--<span class="btn-round">or</span>--%>
        </p>
    <p>
        <asp:Label ID="lblBrowserInfo" runat="server" Font-Bold="True"></asp:Label>
    </p>
    <p>
        <asp:Label ID="lbluser" runat="server" Font-Bold="True"></asp:Label>
    </p>
          
    <p>
          <%--  <a class="facebook-before"></a>
            <button class="facebook">Logout</button>--%>
        </p>
    <%--<p>
            <a class="twitter-before"></a>
            <button class="twitter">Register Using Twitter</button>
        </p>--%>
    <!-- end login -->
       
               
    </div>
    
</body>
</html>
