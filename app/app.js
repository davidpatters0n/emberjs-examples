import Ember from 'ember';
import Resolver from 'ember/resolver';
import loadInitializers from 'ember/load-initializers';
import config from './config/environment';
import inheritance from './inheritance';
import timeManage from './time_manage';
import father from './father';
import child from './child';
import prototype from './prototype';
import truncateHelper from './helpers/truncate';
var App;

Ember.MODEL_FACTORY_INJECTIONS = true;

App = Ember.Application.extend({
  modulePrefix: config.modulePrefix,
  podModulePrefix: config.podModulePrefix,
  Resolver: Resolver
});

loadInitializers(App, config.modulePrefix);

/* ---- (1) Basic inheritance ---- */
inheritance();


/* ---- (2) Observer Example ---- */
var myTimeManager = timeManage.create({
  time: 12
});

myTimeManager.set("time", 22);
export default App;
/* ---- End Observer Example ---- */

/* ---- (3) Binding Dependencies ----*/
  var dj = father.create({
    name: 'DJ',
    age: 24,
    address: '295 Adelaide St West'
  });

  var dan = child.create({
    school: 'Rutlish',
    father: dj
  });

  console.log(dan.get('address')); //Prints 295 Adelaide St W because of
                                  //the Em.computed.alias('father.address')
  dj.set('address', '25 Singleton Close');
  console.log(dan.get('address'));
/* ---- End Binding Dependcies Example---- */


/* ---- (4) Prototype Extensions ----- */
  prototype();

/* ---- End Prototype Extensions ---- */

Ember.Handlebars.registerBoundHelper('truncate', truncateHelper);
//Two arguments (helperName, function)
