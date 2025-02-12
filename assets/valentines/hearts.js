const hearts = document.getElementById("hearts");

function createHeart() {
    const heart = document.createElement("img");
    heart.src = "assets/valentines/heart.svg";
    heart.id = "heart";
    heart.style.scale = Math.random() * 0.5 + 1;
    heart.style.left = Math.random() * 100 + "vw";
    heart.style.animationDuration = Math.random() * 5 + 3 + "s ";

    hearts.appendChild(heart);
    setTimeout(() => {
        heart.remove();
    }, 7000);
}

setInterval(createHeart, 500)
