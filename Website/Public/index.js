


async function createImage(){


    tf.enableProdMode();
// Make 2 versions: 
// 64x64: WebGL
// 128x128: WASM
//tf.setBackend('wasm')


const model = await tf.loadLayersModel('DCGAN128/model.json')

//console.log(model.summary());

const randomVector = tf.randomNormal([1,100]);
    //console.log(randomVector);

    img = await model.predict(randomVector);


    //img.print() 
    
    scalar = tf.scalar(127.5)
    // remove rank of tensor
    img = img.squeeze();


    //console.log(img);
    img = img.mul(scalar);
    img = img.add(scalar);
    

    
    //img.print()
    img = img.div(255)


    //img = tf.image.resizeNearestNeighbor(img,[512,512])
    img = tf.image.resizeBilinear(img,[512,512])

    canvas = document.createElement('canvas');
    Bild = await tf.browser.toPixels(img,canvas);


    //console.log(Bild)

    data = canvas.toDataURL();



    
    document.getElementById("img").src = data;
    
    
    //console.log(tf.memory());

    createDownloadButton();

    img.dispose();
    scalar.dispose();
    model.dispose();
    randomVector.dispose();
    tf.disposeVariables();
    // console.log(tf.memory());
    // console.log(tf.engine());

}




function createDownloadButton(){
    var button = document.createElement("button");
    button.className = "btn btn-secondary"
    button.innerText = "Download"
    buttondiv = document.getElementById("buttondiv");
    buttondiv.appendChild(button);
    button.addEventListener("click", DownloadImage)
}

function DownloadImage(){
    var download = canvas.toDataURL();

    var link = document.createElement("a");
    link.attribute = "Download"
    link.href = download; 
    link.download = "image.png"

    link.click();

    console.log(download)
    console.log("sff")
}


createImage();





