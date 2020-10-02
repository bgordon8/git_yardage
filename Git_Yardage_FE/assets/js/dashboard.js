const token = localStorage.getItem('token')
// console.log(token)

if (!token) {
    window.location = "login.html"
} else {
    const email = document.getElementById('email')
    const username = document.getElementById('username')

    fetch('http://localhost:3000/profile', {
        headers: {
            "Authorization": `Bearer ${token}`
        }
    })
        .then(response => response.json())
        .then(res => {
            email.innerText = res.email
            username.innerText = res.username
        })
}
