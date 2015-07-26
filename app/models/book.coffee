`import DS from 'ember-data'`

BookModel = DS.Model.extend
  title:       DS.attr('string')
  isbn:        DS.attr('string')
  pages:       DS.attr('number')
  description: DS.attr('string')
  authors:     DS.hasMany('author', {async: true})
  publisher:   DS.belongsTo('publisher', {async: true})
  reviews:     DS.hasMany('reviews', {async: true})

`export default BookModel`

###
Given the above example the JSON response from the server should be the following:


{
  id: 1
  title: 'Changes',
  isbn:   '33434324324',
  pages:  100,
  description: 'Lorem ipsum txt is default text.'
  authors: [1,2],
  publisher: 1,
  authors: [1,2],
  reviews: [1,2]

}

association authors tells the serializer that there are many authors with an array of [1,2]
publisher association tells the serializer that there is a 'publisher' with the id 1.

Using {async: true} as the second argument that will tell the DS.RESTAdapter and DS.RESTSerializer that the JSON response that the object will only contain the ID's of the relationships in proper format and that the relationship objects should be fetched separately ONLY when they are requested.
When a reference to the relationship is referred to it will do a @store.find('reviews', 1) #GET /reviews/1 is sent.

When the async is set to false and we sideload the relationship we get the following response

{
  "book": {
     "id": 1,
     "title": "Changes",
     "isbn":   "33434324324",
     "pages":  100,
     "description": "Lorem ipsum txt is default text.",
     "authors": [1,2],
     "publisher": 1,
     "authors": [1,2],
     "reviews": [1,2]
  },
  "publisher": { "id": 1 },
  "authors": [{"id": 1}, {"id": 2}],
  "reviews": [{"id": 1},{"id": 2}]
},



###
