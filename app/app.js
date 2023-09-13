const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

// Configure o Express para servir arquivos estáticos do diretório 'public'
app.use(express.static('public'));

app.listen(port, () => {
  console.log(`Servidor Express iniciado na porta ${port}`);
});
