$(function(){
	switch(menu){
	
	case 'ABOUT':
		$(about).addClass('active');
		break;
	case 'CONTACT':
		$(contact).addClass('active');
		break;
	default:
		$(home).addClass('active');
	    break;
		
	}	
});