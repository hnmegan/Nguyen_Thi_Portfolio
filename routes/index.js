var express = require('express');
var router = express.Router();
var sql = require('../utils/sql')

/* GET home page. */

/*repeat section */
router.get('/', (req, res, next) => {
  // res.render('index', { title: 'Megan Nguyen' });
  
  console.log("at the main route");

  let query = "SELECT ID, Name, Type, Description, Image FROM project_detail";/*table name*/

  sql.query(query, (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    }

    console.log(result); 

   
    res.render("index", { project: result }); /*name I call the loop on index.hbs*/
  })
})


router.get("/project/:id", (req, res) => {
 
  console.log("at the user route");
  console.log(req.params.id); 

  let query = `SELECT * from project_detail where ID="${req.params.id}"`; /*change table name*/

  sql.query(query, (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    }

    console.log(result); 


    res.json(result[0]);
  });
});

/*repeat section */

/*put it herex2, change table name*/

module.exports = router;