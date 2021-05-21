import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Love movies", "Love life", "Or some cringey quotes like that"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
