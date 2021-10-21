setTimeout(function() {alert('HAMMERTIME');}, 5000 );

setInterval(function() {alert('HAMMERTIME');}, 5000);


function hammerTime(time) {
  setTimeout(alert, 5000, `${time} is HAMMERTIME!`);
}

hammerTime('2PM')

