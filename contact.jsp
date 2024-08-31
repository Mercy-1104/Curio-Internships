<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact Us</title>
  
  <style>
    * {
      box-sizing: border-box;
    }

    body {
      font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
      margin: 0;
      padding: 0;
    }
    .heading{
                background-color: black;
                color: #fff;
                padding: 10px;
                margin-top: 10px;
                margin-bottom: 40px;
                font-size: 18px;
                font-weight: 500;
                font-family: raleway,sans-serif;
            }
            body h2{
                text-align: center;
                font-size: 32px;
                color:rgb(14, 168, 152) ;

            }
            body p{
                text-align: center;

            }
    .container {
      max-width: 800px;
      margin: 0 auto;
      padding: 40px;
    }
    footer {
  background-color:rgb(14, 168, 152);
  color: #fff;
  padding: 20px;
  text-align: center;
}

    .contact-form {
      background-color: #f9f9f9;
      padding: 20px;
      border-radius: 8px;
    }

    .form-group {
      margin-bottom: 20px;
    }

    .form-label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
    }

    .form-input {
      width: 100%;
      padding: 10px;
      font-size: 16px;
      border-radius: 4px;
      border: 1px solid #ccc;
    }

    .form-textarea {
      width: 100%;
      padding: 10px;
      font-size: 16px;
      border-radius: 4px;
      border: 1px solid #ccc;
    }

    .form-submit {
      padding: 10px 20px;
      background-color:rgb(14, 168, 152);
      color: #fff;
      border: none;
      cursor: pointer;
    }

    .form-submit:hover {
      background-color: #555;
    }
    .con {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        padding: 10px;
	    }
        .article {
			flex: 1 1 250px;
			margin: 10px;
			padding: 10px;
			background-color: #fff;
			box-shadow: 0 0 5px #ccc;
      text-align: center;
		}
        .article img {
			max-width: 100%;
			height: auto;
			margin-bottom: 10px;
		}

		.article h3 {
			font-size: 24px;
			margin-top: 0;
			margin-bottom: 10px;
              color: black;
		}

		.article p {
			font-size: 16px;
			margin-top: 0;
			margin-bottom: 10px;
            color:black;
		}
  </style>
</head>
<body>
    <div class="heading">
  <h1>Get in touch with us</h1></div>
    <h2>CONTACT</h2>
    <p>Thank you for your interest in Curio's internship programs. Please provide the following information about your business needs to help us serve you better. This information will enable us to route your request to the appropriate person. You should receive a response within 48 hours.</p>
        <div class="container">
        <div class="contact-form">
      <form action="message.jsp">
        <div class="form-group">
          <label for="name" class="form-label">Name:</label>
          <input type="text" id="name" name="name" class="form-input" required>
        </div>

        <div class="form-group">
          <label for="email" class="form-label">Email:</label>
          <input type="email" id="email" name="email" class="form-input" required>
        </div>

        <div class="form-group">
          <label for="message" class="form-label">Message:</label>
          <textarea id="message" name="message" class="form-textarea" rows="6" required></textarea>
        </div>

        <button type="submit" class="form-submit">Submit</button>
      </form>
    </div>
  </div>
  <div class="con">
  <div class="article">
    <img src="https://images.pexels.com/photos/7009485/pexels-photo-7009485.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load">
    <h3>Our Address</h3>
    <p>401, Shreenath Complex 4th Floor, Near Polyhub FoodCourt Vadgaon Pune, India</p>
  </div>
  <div class="article">
    <img src="https://images.pexels.com/photos/6005305/pexels-photo-6005305.jpeg?auto=compress&cs=tinysrgb&w=1600">
    <h3>Email Us</h3>
    <p>official@Curio.com</p>
  </div>
  <div class="article">
    <img src="https://images.pexels.com/photos/33999/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1">
    <h3>Call Us</h3>
    <p>+91 7030020973</p>
  </div>
</div>
  <footer>
    <p>&copy; 2023 Curio Internships. All rights reserved.</p>
  </footer>
</body>
</html>
