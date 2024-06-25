<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="./style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Fira+Code&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Acme&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/bad7f7f5d4.js" crossorigin="anonymous"></script>
</head>
<body>
<center>
 <h1 class="page-title">Student Grade Management System</h1>
</center>
    <div class="wrapper">
        <div class="box">
            <div class="description">
                <h3>View Student Results</h3>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. A sunt rem magni quasi tempore alias nostrum mollitia delectus cupiditate hic unde minima quis officiis, quidem quae quisquam, aperiam porro fugiat?</p>
                <ul class="list">
                <button class="login-button">
                    <a href="marks-form"  ><h4>View Results</h4></a><br>
                      </button>
                     </ul>
            </div>
        </div>
        
        <div class="box">
            <div class="description">
                <h2>Admin</h2>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. A sunt rem magni quasi tempore alias nostrum mollitia delectus cupiditate hic unde minima quis officiis, quidem quae quisquam, aperiam porro fugiat?</p>
                <ul class="list">
                <button class="login-button">
                    <a href="login"><h4>Login</h4></a>
                    </button>
                </ul>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/vanilla-tilt/1.7.0/vanilla-tilt.min.js"></script>
    <script>
        VanillaTilt.init(document.querySelectorAll(".box"), {
            max: 25,
            speed: 400,
            easing: "cubic-bezier(.03,.98, .52,.99)",
            perspective: 500,
            transition: true
        });
    </script>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .page-title{
            width: 100%;
            height: 100%;
            min-height: 100vh;
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
            background-image: url("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw8PDw8PDw8PDw0PDw8PDw8NDQ8PDQ0NFRUWFhUVFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtOi0BCgoKDQ0NDg0NDisZFRkrLSstKzcrKys3KystNy03KzcrKy03KzcrNys3LS0tLSsrLS0rLTc3KystKysrKysrK//AABEIALcBEwMBIgACEQEDEQH/xAAYAAEBAQEBAAAAAAAAAAAAAAABAAIFB//EABcQAQEBAQAAAAAAAAAAAAAAAAABESH/xAAYAQEBAQEBAAAAAAAAAAAAAAAAAQMCBP/EABYRAQEBAAAAAAAAAAAAAAAAAAARAf/aAAwDAQACEQMRAD8A8uIT0PC1DGdMFbhYlaBosmKjRgMBqNMRqBrRBVC0yZVRpCUyiNIEQmMlVaQ1ASEOYUgBIQFaNQjS0IGuoIRwlqTN6CWWoI1CyZRW4WSo1DGWoI1DGY0DUMZMVG0zpEMaZUVGyzFoNFmERpBA1pZ1KrSCCFAiRJISFBA0ghHESTN6FDoI5MajMaFaiEMUahjJgjZYMoNwxmUg1CyYqNIQgZSyRGjrMpVCYzCDSCEa1aEBhC1VKCAoECghI4pCZNiklTWjGTBGjGZSK0ZWY0odLJ0RuUysRrQalMZhgNGMmKjSGkCghI0WTqo0ggaLJ0CghCkAJCUKGoVxiEyatJIFKYFFctFkg3DKxpFbUESjTTDUojWlnSDWlhqA0WCqNERASEI1qC1UaLK0GkEDWgECgtA6gQcYhM2rRZ0gUkqLSFBGpWtYMFaalZhAmBKNGMkRqGMmUG4WYoDcTOlUaLJApICkBI0glQrQYBQIKpIHHITNs0YyRCQgKSVE1KyRGjGUK3p1mHQaQKhhjJgjaZINGVkg0WTFI1KghGkEBSQFLUIkkBQiVHJQLNsiDBDDBDAKCgFBKjRZMEaLJFaOskGkCodMrMIjRZINaYyQaQlUBrSzqVGkCBWhQCWYQKCCOSgXDUoEQkIQwiECgQSSVCWSI1DGTBWiyQaLJUJZMEa0skCdEq0GlGSDRZWg0glRqJkg0ggckhOGpSQEhCEhQRpaIQIRBJJUJCEahjJFaLMrShQIHVKEI0WdINIICdZIHTrOrQa0srQa1BA5ZCctCQgJCAkahCQhGkCBCIJJKh0xmERqEIVosnQJCUOoEGohqEaWjUBQQEsw6DWoagc1JOWiMSBFIEUgRSERSEMqSAoICklcmUpATqQHUUKkkBSShQQhSQFJANSQP//Z");
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        
        }
        .wrapper {
            width: 100%;
            height: 100%;
            min-height: 100vh;
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
            background-image: url("https://img.freepik.com/free-photo/psychedelic-paper-shapes-with-copy-space_23-2149378246.jpg?w=1380&t=st=1696522872~exp=1696523472~hmac=9d9d52584292e94c314ec6e497f4cab1a23b806c356b384da1d5dddcf1841d1e");
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }

        .wrapper .box {
            position: relative;
            width: 280px;
            height: 400px;
            box-shadow: 20px 20px 50px #0000008c;
            border-radius: 15px;
            margin: 30px;
            display: flex;
            justify-content: center;
            align-items: center;
            border-top: 1px solid rgba(255, 255, 255, 0.5);
            border-left: 1px solid rgba(255, 255, 255, 0.5);
            backdrop-filter: blur(5px);
            transform-style: preserve-3d;
            transform: perspective(800px);
        }

        h2 {
            color: #f5f5f5;
            font-size: 2.5rem;
            text-align: center;
            font-family: 'Acme', sans-serif;
        }
        h3 {
            color: #f5f5f5;
            font-size: 2rem;
            text-align: center;
            font-family: 'Acme', sans-serif;
        }

        p {
            color: rgba(10, 10, 10, 0);
            margin: 20px 10px;
            font-family: 'Fira Code', monospace;
        }

        ul {
            list-style: none;
            width: 100%;
            display: flex;
            justify-content: space-evenly;
            margin: 30px 0;
            padding: 10px;
        }

        li {
            cursor: pointer;
            width: 30px;
            height: 30px;
        }

        i {
            color: #ccc;
            font-size: 1.5rem;
            transition: all 0.3s ease;
        }

        li:hover .fa-twitter {
            transform: translate3d(0, -10px, 20px);
            color: #00acee;
        }

        li:hover .fa-github {
            transform: translate3d(0, -10px, 20px);
            color: gray;
        }

        li:hover .fa-linkedin-in {
            transform: translate3d(0, -10px, 20px);
            color: #077099;
        }
        .page-title {
            font-family: 'Acme', sans-serif;
            font-size: 2.5rem;
            color: #f5f5f5;
            text-align: center;
            margin-bottom: 20px; /* Adjust the margin as needed */
        }
        .login-button {
            background-color: #0074D9;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 1.2rem;
            cursor: pointer;
            transition: background-color 0.3s ease;
            letter-spacing: 1px;
        }
        
        .login-button a {
        color: #fff; /* Set the text color to white for the anchor element inside the button */
        text-decoration: none; 
        letter-spacing: 1px;
   
    }

        .login-button:hover {
            background-color: #0056b3;
        }
    </style>
</body>
</html>
