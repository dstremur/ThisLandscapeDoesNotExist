

async function createImage(){


const model = await tf.loadLayersModel('DCGANJavaScript/model.json')

console.log(model.summary());

const randomVector = tf.randomNormal([1,128]);
    //console.log(randomVector);

    img = await model.predict(randomVector);
    console.log(img)
    
    scalar = tf.scalar(127.5)
    // remove rank of tensor
    img = img.squeeze();
    

    console.log(img);
    img = img.mul(scalar);
    img = img.add(scalar);
    
    console.log(img);
    img.print()
    img = img.div(255)

    img = tf.image.resizeBilinear(img,[512,512])

    canvas = document.getElementById('canvas');
    Bild = await tf.browser.toPixels(img,canvas);

    createDownloadButton()
    //img.dispose();
}


//document.getElementById('image').src = createImage()


function createDownloadButton(){
    button = document.createElement("button");
    button.innerText = "Download"
    buttondiv = document.getElementById("buttondiv");
    buttondiv.appendChild(button);

}

createImage()


