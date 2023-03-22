(function(){
    var burger = document.querySelector('.burger-container'),
        header = document.querySelector('.header'),
        mobileMenu = document.querySelector('.mobile-menu')
    
    burger.onclick = function() {
        header.classList.toggle('menu-opened');
        mobileMenu.classList.toggle('menu-opened');
    }
}());