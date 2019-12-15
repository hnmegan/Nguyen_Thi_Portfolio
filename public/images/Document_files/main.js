// import { parse } from "path";

// this is a partially revealing module pattern - just a variation on what we've already done

const myVM = (() => {
    // get the user buttons and fire off an async DB query with Fetch
    let userButtons = document.querySelectorAll(".u-link");
    let lightBox = document.querySelector(".lightbox");
    let projects = document.querySelectorAll('.photo_project a')
    let close = document.querySelector('.close')


    close.addEventListener('click',function(){
      lightBox.classList.add('hidden')
    })
  
    //create the social media list
    function renderSocialMedia(media) {
      return `<ul class="u-social">
        ${media.map(item => `<li>${item}</li>`).join(",")}
        </ul>11
        `;
    }
  
    function parseUserData(project) {
      let name = lightBox.querySelector(".name");
      let img1 = lightBox.querySelector(".img-1");
      let img2 = lightBox.querySelector(".img-2");
      let img3 = lightBox.querySelector(".img-3");
      let img4 = lightBox.querySelector(".img-4");

      lightBox.classList.remove('hidden')

      console.log(project.Photo1)
      img1.src = `images/${project.Photo1}`;
      name.innerHTML = project.Project_name;

    }
  
    function getUserData(e) {
      e.preventDefault();
      //1, 2 , or 3 depending on which anchor tag you click
      let url = `/project/${this.getAttribute("href")}`; 
      let currentImg = this.querySelector("img").getAttribute("src");
      console.log(url)
      //this goes and fetches the database content ( or an API endpoint)
      // that's why it's called a fetch!
  
      fetch(url)
        .then(res => {
          console.log(res);
          return res.json();
        })
        .then(data => {
          console.log(data);
          parseUserData(data);
        })
        .catch(err => console.log(err));
    }
  
    projects.forEach(project => project.addEventListener("click", getUserData));
  
    // wire up the lightbox close button
    // lightBox.querySelector(".close").addEventListener("click", function() {
    //   lightBox.classList.remove("show-lb");
    // });
  })();
  