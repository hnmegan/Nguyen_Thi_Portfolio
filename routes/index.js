var express = require('express');
var router = express.Router();
var sql = require('../utils/sql')

/* GET home page. */

/*repeat section */
router.get('/', (req, res, next) => {
  // res.render('index', { title: 'Megan Nguyen' });
  sql.getConnection((err, connection) => {
  console.log("at the main route");

  let query = `SELECT
  *
FROM
  project_detail1 
right join project_detail2 ON project_detail1.ID = project_detail2.ID
right join project_detail3 ON project_detail1.ID = project_detail3.ID;

`
  let query2 = "SELECT * FROM project_detail2";

  sql.query(query, (err, result) => {
    connection.release()
    if (err) {
      throw err;
      console.log(err);
    }

    console.log(result); 
    
    res.render("index", { project: result }); /*name I call the loop on index.hbs*/
  })

  // sql.query(query2, (err, result) => {
  //   if (err) {
  //     throw err;
  //     console.log(err);
  //   }

  //   console.log(result); 

  //   res.render("index", { project2: result });
  // })
  })
})

router.get("/project/:id", (req, res) => {
 
  console.log("at the user route");
  console.log(req.params.id); 

  let query = `SELECT * from light_box where ID="${req.params.id}"`; /*change table name*/

  sql.query(query, (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    }

    console.log(result); 


    res.json(result[0]);
  });
});

// router.get('/', (req, res, next) => {
//   // res.render('index', { title: 'Megan Nguyen' });
  
//   console.log("at the second route");

//   let query = "SELECT * FROM project_detail2";

//   sql.query(query, (err, result) => {
//     if (err) {
//       throw err;
//       console.log(err);
//     }

//     console.log(result); 

   
//     res.render("index", { project2: result }); /*name I call the loop on index.hbs*/
//   })
// })

module.exports = router;