 <title>Student Login</title>
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
        <div id="Registration">
             <h1><strong>Welcome.</strong> !</h1>                
                <fieldset>
                <p>
                    <asp:TextBox ID="txtuid"  runat="server" placeholder="User Id" onBlur="if(this.value=='')this.value='UserId'" onFocus="if(this.value=='UserId')this.value='' "></asp:TextBox>
                   </p>
                
                <p>
                    <a href="ForgetPassword.aspx">Forgot Password?</a>
                </p>
                <p>
                    <asp:Button ID="btnSubmit" runat="server" Text="Login" OnClick="btnSubmit_Click" />
                    &nbsp;<asp:Label ID="lblErrorMsg" runat="server" Font-Bold="False" ForeColor="#FF3300"></asp:Label>
                    </p>
                    <p>
                        <asp:Button ID="BtnSignup" runat="server" Text="SignUP!" OnClick="BtnSignup_Click" BackColor="#0099FF" />
                </p>
                </fieldset>
    </form>
        <p>
            <span class="btn-round">or</span>
        </p>
          
    <p>
            <a class="facebook-before"></a>
            <button class="facebook">Login Using Facbook</button>
        </p>
        <p>
            <a class="twitter-before"></a>
            <button class="twitter">Login Using Twitter</button>
        </p>
    <!-- end login -->
       
               
    </div>
    
</body>
</html>
