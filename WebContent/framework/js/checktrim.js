function a(){   
  	  var controls = document.getElementsByTagName('input');
        for(var i=0; i<controls.length; i++){   
           if(controls[i].type=='text'||controls[i].type=='textarea'){   
               controls[i].value=controls[i].value.Trim();//ѭ������Trim()����ȥ��ǰ��ո�,�滻   
          }   
        }
       } 