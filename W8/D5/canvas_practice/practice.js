document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById('mycanvas');
  canvas.clientWidth = 700;
  canvas.clientHeight = 500;
  const ctx = canvas.getContext('2d')

  ctx.fillStyle = 'red';
  ctx.fillRect(0,0,50,200)

  ctx.beginPath();
  ctx.moveTo(200,500);
  ctx.lineTo(250, 50);
  ctx.lineTo(275, 121);
  ctx.arc(275, 121, 20, 0, 2);
  ctx.lineTo(200,500)
  ctx.strokeStyle = 'blue';
  ctx.stroke();
  ctx.fillStyle = 'green';
  ctx.fill();

  ctx.moveTo(400,50);

  ctx.beginPath();
  ctx.arc(100,75,20,0,200);
  ctx.fillStyle = 'blue';
  ctx.fill();
  

  

  


});
