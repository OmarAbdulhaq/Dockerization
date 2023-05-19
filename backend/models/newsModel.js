const mysql = require('mysql');

// Create a connection pool
const pool = mysql.createPool({
  host: 'localhost:3306',
  user: 'urgentnews_user',
  password: 'secret',
  database: 'urgentnews'
});

// Model function: Retrieve the ten most recent urgent news articles
exports.findRecentUrgentNews = () => {
  return new Promise((resolve, reject) => {
    const query = 'SELECT * FROM News ORDER BY date DESC LIMIT 10';

    // Acquire a connection from the pool
    pool.getConnection((error, connection) => {
      if (error) {
        reject(error);
      } else {
        // Execute the query
        connection.query(query, (error, results) => {
          // Release the connection back to the pool
          connection.release();

          if (error) {
            reject(error);
          } else {
            resolve(results);
          }
        });
      }
    });
  });
};
