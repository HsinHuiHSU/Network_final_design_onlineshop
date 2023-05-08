window.onload = function() {
    var allInput = this.document.getElementsByTagName('input');
    for(var i = 0; i < allInput.length; i++) {
        allInput[i].onblur = function(){
       if(this.value.length == 0) {
           this.style.border='1px solid red';
           this.style.backgroundColor='#feeeed';
       }
       else{
           this.style.border='';
           this.style.backgroundColor='';
       }
       };
    }
    };