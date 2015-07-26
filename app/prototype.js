export default function(){
  console.log([1,2,3].get('lastObject'));
  console.log("ember.js".capitalize());
  console.log("my var".camelize());
  console.log("my var".classify());
  [1,2,3,4,5,6,7].filter(function(item){
    if (item < 5){
      console.log(item);
      //return true
    }
  });
}

//for more - http://emberjs.com/api/classes/Ember.Array.html
