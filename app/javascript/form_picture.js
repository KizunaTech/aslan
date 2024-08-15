document.addEventListener("DOMContentLoaded", (event) => {
  console.log("boom DOM");
  console.log(event);
  document.addEventListener("turbolinks:load", function () {
    console.log("boom turbo");
    const inputFile = document.querySelector("#picture__input");
    const pictureImage = document.querySelector(".picture__image");
    const pictureImageTxt = "Choose an image (1:1 recommended)";
    pictureImage.innerHTML = pictureImageTxt;

    console.log(inputFile);

    inputFile.addEventListener("change", function (e) {
      const inputTarget = e.target;
      const file = inputTarget.files[0];

      if (file) {
        const reader = new FileReader();

        reader.addEventListener("load", function (e) {
          const readerTarget = e.target;

          const img = document.createElement("img");
          img.src = readerTarget.result;
          img.classList.add("picture__img");

          pictureImage.innerHTML = "";
          pictureImage.appendChild(img);
        });

        reader.readAsDataURL(file);
      } else {
        pictureImage.innerHTML = pictureImageTxt;
      }
    });
  });
});
