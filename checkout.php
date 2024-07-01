


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Credit Card Login</title>
 <style>
  body {
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

.login-card {
  background-color: #fff;
  padding: 40px;
  border-radius: 20px;
  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
  width: 320px;
  max-width: 90%;
  text-align: center;
}

h2 {
  text-align: center;
  margin-bottom: 30px;
  color: #333;
}

form {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.input-group {
  margin-bottom: 20px;
  width: 100%;
}

label {
  font-weight: bold;
  display: block;
  margin-bottom: 5px;
  color: #555;
}

input[type="text"] {
  padding: 10px;
  border-radius: 6px;
  border: 1px solid #ccc;
  width: calc(100% - 20px);
  transition: border-color 0.3s ease;
}

input[type="text"]:focus {
  outline: none;
  border-color: #667eea;
}

button {
  padding: 12px 20px;
  border: none;
  border-radius: 6px;
  background-color: #667eea;
  color: #fff;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

button:hover {
  background-color: #764ba2;
}

 </style>
</head>
<body>
  <div class="login-card">
    <h2>Credit Card Login</h2>
    <form>
    <div class="input-group">
    <label for="password_field" class="input_label">full name</label>
      <input id="password_field" class="input_field" type="text" name="input-name" title="Inpit title" placeholder="Enter your full name" required>
      </div>
      <div class="input-group">
        <label for="card-number">Card Number</label>
        <input type="text" id="card-number" name="card-number" placeholder="0000 0000 0000 0000" required>
      </div>
      <div class="input-group">
        <label for="expiration-date">Expiration Date</label>
        <input type="text" id="expiration-date" name="expiration-date" placeholder="MM/YY" required>
      </div>
      <div class="input-group">
        <label for="cvv">CVV</label>
        <input type="text" id="cvv" name="cvv" maxlength="3" placeholder="CVV" required>
      </div>
      <button type="submit">Login</button>
    </form>
  </div>
</body>
</html>
