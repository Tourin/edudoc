var rows = document.getElementsByTagName('tr');
for (var i=0;i<rows.length;i++){
rows[i].onmouseover = function(){  //������������ʱ��
this.className += 'altrow';
}
rows[i].onmouseout = function(){  //����뿪ʱ
this.className = this.className.replace('altrow','');
}
}