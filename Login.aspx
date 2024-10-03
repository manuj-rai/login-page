<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<!DOCTYPE html>

<script type="text/javascript">
        function showLoader() {
            document.getElementById("page").style.display = "flex";
        }

        function hideLoader() {
            document.getElementById("page").style.display = "none";
        }
</script>

<script type="text/javascript">
        function togglePasswordVisibility() {
            var passwordField = document.getElementById('<%= txtLoginPassword.ClientID %>');
        var eyeIcon = document.getElementById('eye-icon');

        if (passwordField.type === "password") {
            passwordField.type = "text"; // Show password
            eyeIcon.setAttribute("d", "M12 4.5c-5 0-9 3.5-10 7.5c1 4 5 7.5 10 7.5s9-3.5 10-7.5c-1-4-5-7.5-10-7.5zm0 13c2.5 0 4.5-2 4.5-4.5S14.5 8.5 12 8.5s-4.5 2-4.5 4.5S9.5 17.5 12 17.5zm0-7.5a3 3 0 1 0 0 6a3 3 0 0 0 0-6z");
        } else {
            passwordField.type = "password"; // Hide password
            eyeIcon.setAttribute("d", "M12 4.5c-5 0-9 3.5-10 7.5c1 4 5 7.5 10 7.5s9-3.5 10-7.5c-1-4-5-7.5-10-7.5zm0 13c-2.5 0-4.5-2-4.5-4.5S9.5 8.5 12 8.5s4.5 2 4.5 4.5s-2 4.5-4.5 4.5zm0-7.5a3 3 0 1 0 0 6a3 3 0 0 0 0-6z");
        }
    }
</script>

<style>  
    .content-wrapper {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    overflow-y: auto;
    height: 100%;
} 

.login-wrapper {
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    width: 100%;
    background:#1f293b;
    background-size: cover;
    background-position: center;
}

.login-box {
    position: absolute;
    width: 350px;
    padding: 25px;
    backface-visibility: hidden;
    border-radius: 15px;
    border: 2px solid #364052;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
    transition: background-color 0.3s;
    row-gap: 25px;
}

h4 {
    font-size: 2em;
    color: #fff;
    text-align: center;
    margin-bottom: 2px;
    margin-top: 2px;
}

.input-box {
    position: relative;
    width: 100%;
}

.input-box label {
    position: absolute;
    top: 50%;
    left: 10px;
    transform: translateY(-50%);
    font-size: 1em;
    color: #fff;
    pointer-events: none;
    transition: 0.3s;
    background:transparent;
}

.input-box input:focus ~ label,
.input-box input:valid ~ label {
    top: -10px;
    font-size: 0.8em;
    background:transparent;
}

.input-box input {
    width:94%;
    background-color:transparent;
    border: solid 1px #3a4a6a;
    padding:10px;
    font-size:14px;
    color:#fff;
    border-radius:5px;
}

.input-box .icon {
    cursor:pointer;
    position: absolute;
    right: 10px;
    top: 50%;
    transform: translateY(-50%);
    color: #fff;
    z-index:9;
}

.login-remember-forgot {
    font-size: 0.9em;
    color: #fff;
    display: flex;
    justify-content: space-between;
    width: 100%;
}

.login-remember-forgot label {
    display: flex;
    align-items: center;
}

.login-remember-forgot label input {
    margin-right: 5px;
}

.login-remember-forgot a {
    color: #fff;
    text-decoration: none;
    transition: color 0.3s;
}

.login-remember-forgot a:hover {
    color: #ddd;
}

.button-container{
    display:flex;
    column-gap:30px;
    width:100%;
}

.login-button {
    margin-top:30px;
    width: 100%;
    height: 40px;
    background-color: #fff;
    border: none;
    border-radius: 40px;
    cursor: pointer;
    font-size: 1em;
    color: #000;
    font-weight: 500;
    justify-content: center;
    display: flex;
    align-items: center;
    transition: background-color 0.3s;
}

.Login-Reset-Button {    
    margin-top: 30px;
    width: 100%;
    height: 40px;
    background-color: #fff;
    border: none;
    border-radius: 40px;
    cursor: pointer;
    font-size: 1em;
    color: #000;
    font-weight: 500;
    justify-content: center;
    display: flex;
    align-items: center;
    transition: background-color 0.3s;
}

.login-button:hover {
    background-color: #ddd;
}

.Login-Reset-Button:hover {
    background-color: #ddd;
}

@media (max-width: 500px) {
    .login-box {
        width: 90%;
        padding: 20px;
    }

    .input-box {
        width: 100%;
    }

    .login-remember-forgot {
        font-size: 0.8em;
    }

    .login-button {
        width: 90%;
    }
}

/* Loader */

#page {
    background:transparent;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    display: none; /* Hide by default */
    justify-content: center;
    align-items: center;
    z-index: 9999;
}

#container {
  color:black;
  display: flex;
  justify-content: center;
  align-items: center;
  position: relative;
}

.h3 {
  color: black;
}

.ring {
  width: 190px;
  height: 190px;
  border: 1px solid transparent;
  border-radius: 50%;
  position: absolute;
}

.ring:nth-child(1) {
  border-bottom: 8px solid rgb(255, 141, 249);
  animation: rotate1 2s linear infinite;
}

@keyframes rotate1 {
  from {
    transform: rotateX(50deg) rotateZ(110deg);
  }

  to {
    transform: rotateX(50deg) rotateZ(470deg);
  }
}

.ring:nth-child(2) {
  border-bottom: 8px solid rgb(255,65,106);
  animation: rotate2 2s linear infinite;
}

@keyframes rotate2 {
  from {
    transform: rotateX(20deg) rotateY(50deg) rotateZ(20deg);
  }

  to {
    transform: rotateX(20deg) rotateY(50deg) rotateZ(380deg);
  }
}

.ring:nth-child(3) {
  border-bottom: 8px solid rgb(0,255,255);
  animation: rotate3 2s linear infinite;
}

@keyframes rotate3 {
  from {
    transform: rotateX(40deg) rotateY(130deg) rotateZ(450deg);
  }

  to {
    transform: rotateX(40deg) rotateY(130deg) rotateZ(90deg);
  }
}

.ring:nth-child(4) {
  border-bottom: 8px solid rgb(252, 183, 55);
  animation: rotate4 2s linear infinite;
}

@keyframes rotate4 {
  from {
    transform: rotateX(70deg) rotateZ(270deg);
  }

  to {
    transform: rotateX(70deg) rotateZ(630deg);
  }
}

.error-message {
    color: red;
    font-size: 12px;
    margin-top: 5px;
}
</style>


  <div class="login-wrapper">
    <div class="login-box" runat="server">
      <asp:Label ID="lblusernotfound" runat="server" Visible="false" ForeColor="Red" ></asp:Label>
        <h4>Login</h4>

            <div class="input-box">
            <span class="icon">
                <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24">
                    <path fill="currentColor" d="M22 6c0-1.1-.9-2-2-2H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2zm-2 0l-8 4.99L4 6zm0 12H4V8l8 5l8-5z" />
                </svg>
            </span>
            <asp:TextBox ID="txtUserName" runat="server" CssClass="input-box" placeholder="Username"></asp:TextBox>                
            </div>

            <div class="input-box">
                <span class="icon" onclick="togglePasswordVisibility()">
                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24">
                        <path id="eye-icon" fill="currentColor" d="M12 4.5c-5 0-9 3.5-10 7.5c1 4 5 7.5 10 7.5s9-3.5 10-7.5c-1-4-5-7.5-10-7.5zm0 13c-2.5 0-4.5-2-4.5-4.5S9.5 8.5 12 8.5s4.5 2 4.5 4.5s-2 4.5-4.5 4.5zm0-7.5a3 3 0 1 0 0 6a3 3 0 0 0 0-6z" />
                    </svg>
                </span>
                <asp:TextBox ID="txtLoginPassword" runat="server" CssClass="input-box" TextMode="Password" placeholder="Password"></asp:TextBox>
            </div>

            <div class="login-remember-forgot">
                <label><asp:CheckBox ID="chkRemember" runat="server" /> Remember me</label>
                <a href="#">Forgot Password?</a>
            </div>

            <div class="button-container">    
                <asp:Button ID="LoginButton" runat="server" CssClass="login-button" Text="Login" OnClick="LoginButton_Click"  OnClientClick="showLoader();" />
                <asp:Button ID="ResetButton" runat="server" CssClass="Login-Reset-Button"  Text="Reset" OnClick="LoginResetButton_Click" OnClientClick="window.location.reload(); return false;" />
            </div>

            <div class="register-link">
                <p>Don't have an account? <a href="#">Register</a></p>
            </div>

            <div id="page">
                <div id="container">
                    <div class="ring"></div>
                    <div class="ring"></div>
                    <div class="ring"></div>
                    <div class="ring"></div>
                    <h3>Loading...</h3>
                </div>
            </div>
        </div>
     </div>
</asp:Content>
