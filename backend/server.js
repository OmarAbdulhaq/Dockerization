const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const newsRoutes = require('./routes/news');

app.use(bodyParser.json());
app.use('/api/news', newsRoutes);
app.use((err, req, res, next) => {
  console.error(err);
  res.status(500).json({ error: 'Internal Server Error' });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
