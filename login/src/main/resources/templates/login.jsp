<!DOCTYPE html>
<html lang="en">
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Password Input Light Effect</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <style>
        :root {
            --bgColor: white;
            --inputColor: black;
            --outlineColor: dodgerblue;
            --beamColor: yellow;
            --spacer: 1rem;
        }

        * {
            box-sizing: border-box;
        }

        html, body {
            height: 100%;
        }

        body {
            display: grid;
            place-items: center;
            background: var(--bgColor);
        }

        body.show-password {
            --bgColor: black;
            --inputColor: white;
            --outlineColor: var(--beamColor);
        }

        form {
            transform: translate3d(0, 0, 0);
            padding: var(--spacer);
        }

        form > * + * {
            margin-top: var(--spacer);
        }

        .form-item > * + * {
            margin-top: 0.5rem;
        }

        label, input, button {
            font-size: 1.5rem;
            font-family: monospace;
            color: var(--inputColor);
        }

        label:focus, input:focus, button:focus {
            outline: 3px solid var(--outlineColor);
            outline-offset: 2px;
        }

        label::-moz-focus-inner, input::-moz-focus-inner, button::-moz-focus-inner {
            border: none;
        }

        label[id=password], input[id=password], button[id=password] {
            color: black;
        }

        button {
            border: none;
        }

        [id=submit] {
            cursor: pointer;
            margin: calc(var(--spacer) * 2) 0 0 2px;
            padding: 0.75rem 1.25rem;
            color: var(--bgColor);
            background-color: var(--inputColor);
            box-shadow: 4px 4px 0 rgba(30, 144, 255, 0.2);
        }

        [id=submit]:active {
            transform: translateY(1px);
        }

        .input-wrapper {
            position: relative;
        }

        input {
            padding: 0.75rem 4rem 0.75rem 0.75rem;
            width: 100%;
            border: 2px solid transparent;
            border-radius: 0;
            background-color: transparent;
            box-shadow: inset 0 0 0 2px black, inset 6px 6px 0 rgba(30, 144, 255, 0.2), 3px 3px 0 rgba(30, 144, 255, 0.2);
            -webkit-appearance: none;
        }

        input:focus {
            outline-offset: 1px;
        }

        .show-password input {
            box-shadow: inset 0 0 0 2px black;
            border: 2px dashed white;
        }

        .show-password input:focus {
            outline: none;
            border-color: var(--beamColor);
        }

        [id=eyeball] {
            --size: 1.25rem;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            outline: none;
            position: absolute;
            top: 50%;
            right: 0.75rem;
            border: none;
            background-color: transparent;
            transform: translateY(-50%);
        }

        [id=eyeball]:active {
            transform: translateY(calc(-50% + 1px));
        }

        .eye {
            width: var(--size);
            height: var(--size);
            border: 2px solid var(--inputColor);
            border-radius: calc(var(--size) / 1.5) 0;
            transform: rotate(45deg);
        }

        .eye:before, .eye:after {
            content: "";
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            margin: auto;
            border-radius: 100%;
        }

        .eye:before {
            width: 35%;
            height: 35%;
            background-color: var(--inputColor);
        }

        .eye:after {
            width: 65%;
            height: 65%;
            border: 2px solid var(--inputColor);
            border-radius: 100%;
        }

        [id=beam] {
            position: absolute;
            top: 50%;
            right: 1.75rem;
            -webkit-clip-path: polygon(100% 50%, 100% 50%, 0 0, 0 100%);
            clip-path: polygon(100% 50%, 100% 50%, 0 0, 0 100%);
            width: 100vw;
            height: 25vw;
            z-index: 1;
            mix-blend-mode: multiply;
            transition: transform 200ms ease-out;
            transform-origin: 100% 50%;
            transform: translateY(-50%) rotate(var(--beamDegrees, 0));
            pointer-events: none;
        }

        .show-password [id=beam] {
            background: var(--beamColor);
        }
    </style>
</head>

<body>
    <form  action="/login" method="post">
        <div class="form-item">
            <label>User Id</label>
            <div class="input-wrapper">
                <input type="text" id="username" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" data-lpignore="true" name="id" placeholder="User ID"/>
            </div>
        </div>
        <div class="form-item">
            <label>Password</label>
            <div class="input-wrapper">
                <input type="password" id="password" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" data-lpignore="true" name="password" placeholder="Password"/>
                <button type="button" id="eyeball">
                    <div class="eye"></div>
                </button>
                <div id="beam"></div>
            </div>
        </div>
        <button id="submit">Log In</button>
    </form>
 <p th:text="${error}" style="color: red;"></p>
    <script>
        const root = document.documentElement;
        const eye = document.getElementById('eyeball');
        const beam = document.getElementById('beam');
        const passwordInput = document.getElementById('password');

        root.addEventListener('mousemove', (e) => {
            let rect = beam.getBoundingClientRect();
            let mouseX = rect.right + (rect.width / 2);
            let mouseY = rect.top + (rect.height / 2);
            let rad = Math.atan2(mouseX - e.pageX, mouseY - e.pageY);
            let degrees = (rad * (20 / Math.PI) * -1) - 350;

            root.style.setProperty('--beamDegrees', `${degrees}deg`);
        });

        eye.addEventListener('click', e => {
            e.preventDefault();
            document.body.classList.toggle('show-password');
            passwordInput.type = passwordInput.type === 'password' ? 'text' : 'password'
            passwordInput.focus();
        });
    </script>
</body>
</html>
