const slideContainer = document.querySelector('.slides');
var slidePosition = 1;
let slidesURL = [
	'/static/img/Animados/bogota.svg',

	'/static/img/Animados/chicago.svg',

	'/static/img/Animados/hong_kong.svg',

	'/static/img/Animados/Japon.svg',

	'/static/img/Animados/lima.svg',

	'/static/img/Animados/londres.svg',

	'/static/img/Animados/new_york.svg',

	'/static/img/Animados/rio_janeiro.svg',

	'/static/img/Animados/roma.svg',

	'/static/img/Animados/toronto_.svg',
];
var slides;
let backgroundCounter = 3;

// insert first thre slides
for (i = 0; i <= 2; i++) {
	slideTemplate(slidesURL[i]);
}
const slideWidth = document.querySelector('.slide').clientWidth;

function slideBackground() {
	if (slidePosition % slideWidth === 0) {
		slidePosition = slidePosition - slideWidth;
		insertDelete();
	}
	slideContainer.style.transform = `translateX(${-slidePosition}px)`;
	slidePosition += 1;
}

function insertDelete() {
	slides = document.querySelectorAll('.slide');
	slides[0].remove();
	slideTemplate(slidesURL[backgroundCounter]);
	if (backgroundCounter == slidesURL.length - 1) {
		backgroundCounter = 0;
	} else {
		backgroundCounter++;
	}
}

function slideTemplate(slideURL) {
	var tag = document.createElement('div');
	tag.innerHTML = `
			<object type="image/svg+xml" data=${slideURL}></object>
			`;

	tag.classList.add('slide');

	slideContainer.appendChild(tag);
}

setInterval(slideBackground, 10);