import Ember from 'ember';

export default function(){
  var base = Ember.Object.extend({
    baseProperty: true
  });

  var derived = base.extend({});

  var derivedObject = derived.create({

    derivedProperty: true
    });

  derived.reopen({derivedProperty: true})

  var anotherDerivedObject = derived.create();


  console.log(derivedObject.get('baseProperty'));
  console.log(derivedObject.get('derivedProperty'));
  console.log(anotherDerivedObject.get('derivedProperty'))
}
