import express from  'express';
const router = express.Router();
const users = [
        {id:1, name:"John"},
        {id:2,name:"Jane"}
    ];

// Define routes
router.get('/users', (req, res) => {
  res.send(users);
});

router.get('/users/:id',  (req, res) => {
    const userId = req.params.id;
    return res.send(`Hello World! Name is ${users[userId].name}. Nice to meet you!`);
});

router.post('/users', (req, res) => {
  res.send('Create a new user');
});

router.put('/users/:id', (req, res) => {
  const userId = req.params.id;
  res.send(`Update user ${userId}`);
});

router.delete('/users/:id', (req, res) => {
  const userId = req.params.id;
  res.send(`Delete user ${userId}`);
});

export { router, users };