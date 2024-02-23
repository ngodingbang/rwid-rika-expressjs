 import express from  'express';
 import { router, users } from './routes/api/v1/index.js';
 const app = express();
 const port = 3000

const routes = router;
app.use('/api/v1', routes);


app.get('/', (req, res) => {
  res.send('Hello, World!');
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
