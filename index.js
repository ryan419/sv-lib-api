const express = require('express');
const { postgraphile } = require('postgraphile');
const PgSimplifyInflectorPlugin = require('@graphile-contrib/pg-simplify-inflector');
const cors = require('cors');

const app = express();

app.use(cors());

app.get('/', (req, res) => res.send('running server'));
app.use(
  '/lib',
  postgraphile(
    'postgres://postgres:postgres@localhost:5432/svlibdb',
    'public',
    {
      appendPlugins: [PgSimplifyInflectorPlugin],
      graphqlRoute: '/graphql',
      graphiql: true,
      graphiqlRoute: '/graphiql',
    },
  ),
);

app.listen(3000, () => console.log('App listening on port 3000!'));
