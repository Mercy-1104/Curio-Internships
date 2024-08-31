<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Application Form</title>
        <style>
            body {
              font-family: Arial, sans-serif;
            }
        
            .container {
              max-width: 800px;
              margin: 0 auto;
              padding: 20px;
            }
        
            .heading {
              color:#fff;
              font-size: 32px;
              margin-bottom: 20px;
              background-color: rgb(14, 168, 152);
              text-align: center;
            }
        
            .form-group {
              margin-bottom: 20px;
            }
        
            .form-group p {
              display: block;
              font-weight: bold;
              color: rgb(14, 168, 152);
            }
        
            .form-input {
              width: 100%;
              padding: 5px;
              font-size: 16px;
            }
            .form-select {
            width: 100%;
            padding: 5px;
            font-size: 16px;
            }
        
            .form-submit {
              padding: 10px 20px;
              background-color:rgb(14, 168, 152);
              color: #fff;
              border: none;
              cursor: pointer;
            }
          </style>        
    </head>
    <body>
        
        <div class="container">
            <h1 class="heading">Apply for Internship</h1>
            <form action="saveapplication.jsp">
            <div class="form-group">
            <p>Internship Domain</p>
            <select id="domain" name="domain" class="form-select" required>
                <option value="">Select a domain</option>
                <option value="Data Science">Data Science</option>
                <option value="Artificial Intelligence">Artificial Intelligence</option>
                <option value="Python Development">Python Development</option>
                <option value="Web Development">Web Development</option>
                <option value="Android Development">Android Development</option>
                <option value="Java Development">Java Development</option>
                <option value="Graphic Design">Graphic Design</option>
                <option value="Content Writer">Content Writer</option>
            </select>
        </div>
        <div class="form-group">
            <p>Full Name</p>
            <input type="text" name="Fname" value="" placeholder="Enter your full name" class="form-input" required>
        </div>
        <div class="form-group">
            <p>Email Address</p>
            <input type="email" name="mail" value="" placeholder="Enter email" class="form-input" required>
        </div>
        <div class="form-group">
            <p>Gender</p>
            <input type="radio" name="gender" value="Male" required>Male
            <input type="radio" name="gender" value="Female">Female
            <input type="radio" name="gender" value="Other">Other
        </div>
        <div class="form-group">
            <p>Country</p>
            <select id="country" name="country" class="form-select" required>
                <option value="">Select a Country</option>
                <option value="India">India</option>
                <option value="China">China</option>
                <option value="Japan">Japan</option>
                <option value="South Korea">South Korea</option>
                <option value="Nepal">Nepal</option>

            </select>
        </div>
        <div class="form-group">
            <p>Mobile Number</p>
            <input type="tel" name="Phn" value="" placeholder="Please enter Whatsapp Number for convinience" class="form-input" required>
        </div>
        <div class="form-group">
            <p>Linkedin Profile Link</p>
            <input type="text" name="linkedin" value="" placeholder="Enter your Linkedin Profile Link" class="form-input" required>
        </div>
        <div class="form-group">
            <p>Github Link</p> 
            <input type="text" name="github" value="" placeholder="Enter your Github Link" class="form-input" required>
        </div>
        <div class="form-group">
            <p>Select Qualification</p>
            <select id="qualification" name="qualification" class="form-select" required>
                <option value="">Choose</option>
                <option value="BE">BE</option>
                <option value="BTECH">BTECH</option>
                <option value="Diploma">Diploma</option>
                <option value="BCS">BCS</option>
                <option value="MCS">MCS</option>
                <option value="BCA">BCA</option>
                <option value="MCA">MCA</option>
                <option value="BSC">BSC</option>

            </select>
        </div>
        <div class="form-group">
            <p>Stream Name</p>
            <input type="text" name="stream" value="" placeholder="Enter your Stream Name" class="form-input" required>
        </div>
        <div class="form-group">
            <p>College</p>
            <input type="text" name="college" value="" placeholder="Enter your College Name" class="form-input" required>
        </div>
        <div class="form-group">
            <p>Passing Year</p>
            <select id="year" name="passingyear" class="form-select" required>
            <option value="">Select a Passing Year</option>
            <option value="2023">2023</option>
            <option value="2024">2024</option>
            <option value="2025">2025</option>
            <option value="2026">2026</option>
            <option value="2027">2027</option>
            </select>
        </div>
            <button type="submit" class="form-submit">Apply</button>
        </form>
    </div>
    </body>

</html>
