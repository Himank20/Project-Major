<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enquiry Form</title>
    <link rel="stylesheet" href="enq.css">
</head>
<body>
    <script type="text/javascript"> var submitted=false</script>
    <script>
        function myFunction() {
        alert("Thanks for your Response!");
        }
    </script>
    <iframe src="" frameborder="0" name="hidden_iframe" id="hidden_iframe" style="display: none;" onload="if(submitted) {window.location='Enquiry.jsp';}"></iframe>
    <form method="POST" action="https://docs.google.com/forms/u/0/d/e/1FAIpQLSfqGa3hH7CavwxT_v8mvFtCdtknmzrpnf0i5IKgNSRaStBNfA/formResponse" target="hidden_iframe" onsubmit="submitted=true" style="max-width: 400px; margin: auto; margin-top: 100px">
    <div class="contact-form">
        <h1>Contact Us</h1>
        <p>We will contact you ASAP</p>
        <div class="fields">
            <input type="text" name="entry.818663687" id="name" placeholder="Your name">
        </div>

        <div class="fields">
            <input type="email" name="entry.1074032131" id="email" placeholder="Your Email Address">
        </div>

        <div class="fields">
            <input type="tel" name="entry.531943437" id="phone" placeholder="Your Phone Number">
        </div>

        <div class="fields">
            <textarea name="entry.1808439629" id="message" cols="30" rows="10" placeholder="Type you message here...."></textarea>
        </div>

        <div class="btn">
            <button type="submit" onclick="myFunction()">Submit</button>
        </div>
    </div>
    </form> 

</body>
</html>