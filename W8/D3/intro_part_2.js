
function titleize(names, cb) {
  cb(names.map(el => 'Mx. ' + el + ' Jingleheimer Schmidt'))
}

function printCallback(array) {
  array.forEach(el => console.log(el))
}

titleize(["Mary", "Brian", "Leo"], printCallback);