const Express = require('express')

const PORT = 8080

const app = Express()

app.get('/', (req, res) => {
  res.send('Hello?')
})

app.get('/secret', (req, res) => {
  res.send('This is secret page')
})

app.listen(PORT, () => {
  console.log(`Server is listening port on ${PORT}...`)
})
