
function titleize(names, cb) {
  cb(names.map(el => 'Mx. ' + el + ' Jingleheimer Schmidt'))
}

function printCallback(array) {
  array.forEach(el => console.log(el))
}

titleize(["Mary", "Brian", "Leo"], printCallback);

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  console.log(this.name + ` goes 'phrRRRRRRRR!!!!'`)
}

Elephant.prototype.grow = function() {
  this.height += 12
  console.log(this.height)
}

let ellie = new Elephant("Ellie", 42, ['Snoring', 'Eating'])

ellie.trumpet()
ellie.grow()
ellie.grow()
ellie.grow()
