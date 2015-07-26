`import Ember from 'ember'`

newRoute = Ember.Route.extend
  actions: {
    createBook: ->
      publisher = @store.createRecord('publisher',
        "name":             @get('controller.name'),
        "organisationName": @get('controller.organisationName')
        "address":          @get('controller.address')
      )

      author = @store.createRecord('author',
        "firstName": @get('controller.firstName')
        "lastNamae": @get('controller.lastName')
        "bio":       @get('controller.bio')
      )

      book = @store.createRecrod('book',
        "title":       @get('controller.title')
        "isbn":        @get('controller.isbn')
        "pages":       @get('controller.pages')
        "description": @get('controller.description')

      )

      publisher.save().then(publisherFromDB) ->
        #Set the publisher based
        #on the publisher object
        book.set('publisher', publisherFromDB)

        author.save().then(authorFromServer) ->
          book.get('authors').then(authors) ->
            authors.pushObject authorFromServer

          #Save book
          book.save().then((book) ->
            @transitionTo('books.book', book)
          )
  }

`export default newRoute`



### NOTES
The above action is baed on when someone fills out a form
with publisher, author and book information

1) create the publisher, author and book objects
2) Then we save the publisher calling save() which makes a POST /api/publishers
   which returns a JSON object and a promise, when the promise is resolved we set the
   publisher on the book.
3) The author is saved and also returns a promise. When the response from the server comes
   back and the promise is resolved we make a asynchronous calles to fetch the authors on a book
   and push the authors from the server back to the "associateed" array of authors
   on the book object



###
