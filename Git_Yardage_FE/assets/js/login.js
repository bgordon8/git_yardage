const loginForm = document.querySelector('#login_form')
const loginButton = document.querySelector('#login_button')
const email = document.querySelector('#email')
const password = document.querySelector('#password')
const baseURL = 'http://localhost:3000/login'

loginButton.addEventListener('click', (e) => {
    e.preventDefault()
    console.log("password", password.value)
    console.log("email", email.value)
    fetch(baseURL, {
        method: 'POST',
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            email: email.value,
            password: password.value
        })
    })
        .then(response => response.json())
        .then(res => {
            localStorage.setItem('token', res.token)
            window.location = "dashboard.html"
        })
})