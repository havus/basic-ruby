// const arr = [2, 3, 1, 5, 10, 7, 9]

// const sort = arr => {
//   for (let i = 0; i < arr.length; i++) {
//     for (let j = i + 1; j < arr.length; j++) {
//       if (arr[i] > arr[j]) [arr[i], arr[j]] = [arr[j], arr[i]];
//     }
//   }

//   return arr
// }

// console.log(sort(arr));

// const obj = {
//   name: 'john',
//   __proto__: {
//     phone: '08256756157',
//     city: 'jakarta'
//   }
// }
// // __proto__ * The prototype chain is looked up when the object is deconstructed 
// const {name, city} = obj;

// console.log(name, city);

const spiralFlatten = (arr) => {
  const result = [];
  let step = 'row';
  let startX = 0;
  let startY = 1;
  let stop = false;
  
  while (!stop) {
    if (arr.length < 1) break;
    if (step === 'row') {
      if (!startX) {
        for (let i = 0; i < arr[0].length; i++) {
          result.push(arr[0][i]);
        }
      } else {
        for (let i = arr[0].length - 1; i >= 0; i--) {
          result.push(arr[arr.length - 1][i]);
        }
      }

      if (startX) arr.pop();
      if (!startX) arr = arr.slice(1);

      startX = startX ? 0 : 1;
    } else if (step === 'col') {
      if (startY) {
        for (let i = 0; i < arr.length; i++) {
          result.push(arr[i][arr[i].length - 1]);
          arr[i].pop();
        }
      } else {
        for (let i = arr.length - 1; i >= 0; i--) {
          result.push(arr[i][0]);
          arr[i] = arr[i].slice(1);
        }
      }
      
      startY = startY ? 0 : 1;
    }

    step = (step === 'row') ? 'col' : 'row';
  }

  return result;
};

// [
//    12, 34, 21, 32, 78, 12, 57, 2, 
//    31, 43, 67, 38, 42, 60, 68, 1,
//    78, 30, 42, 47, 90, 11, 37, 76, 3
// ]

const arr = [
  [12, 34, 21, 32, 78],
  [1, 78, 30, 42, 12],
  [68, 76, 3, 47, 57],
  [60, 37, 11, 90, 2],
  [42, 38, 67, 43, 31]
]

console.log(spiralFlatten(arr));