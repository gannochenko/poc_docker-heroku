const express = require('express');

const app = express();

app.get('/', (req, res) => {
    res.status(200).send('Hello');
});

app.listen({ port: process.env.PORT }, () => {
    console.log(`🚀 Application is ready at http://localhost:${port}`);
});
