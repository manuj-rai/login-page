function togglePasswordVisibility() {
var passwordField = document.getElementById('txtLoginPassword');
var eyeIcon = document.getElementById('eye-icon');

if (passwordField.type === "password") {
      passwordField.type = "text"; // Show password
      eyeIcon.setAttribute("d", "M12 4.5c-5 0-9 3.5-10 7.5c1 4 5 7.5 10 7.5s9-3.5 10-7.5c-1-4-5-7.5-10-7.5zm0 13c2.5 0 4.5-2 4.5-4.5S14.5 8.5 12 8.5s-4.5 2-4.5 4.5S9.5 17.5 12 17.5zm0-7.5a3 3 0 1 0 0 6a3 3 0 0 0 0-6z");
      } 
else {
      passwordField.type = "password"; // Hide password
      eyeIcon.setAttribute("d", "M12 4.5c-5 0-9 3.5-10 7.5c1 4 5 7.5 10 7.5s9-3.5 10-7.5c-1-4-5-7.5-10-7.5zm0 13c-2.5 0-4.5-2-4.5-4.5S9.5 8.5 12 8.5s4.5 2 4.5 4.5s-2 4.5-4.5 4.5zm0-7.5a3 3 0 1 0 0 6a3 3 0 0 0 0-6z");
      }
}
