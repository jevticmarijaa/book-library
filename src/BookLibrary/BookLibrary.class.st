Class {
	#name : #BookLibrary,
	#superclass : #Object,
	#instVars : [
		'books'
	],
	#category : #BookLibrary
}

{ #category : #'class initialization' }
BookLibrary class >> initialize [
	| library |
	
    WAAdmin register: self asApplicationAt: 'booklibrary'.
	 library := Library new.
    library addBook: (Book new title: 'Sample Book'; author: 'John Doe'; publishedYear: 2022; yourself).
]

{ #category : #initialization }
BookLibrary >> addBook: aBook [
	books add: aBook
]

{ #category : #initialization }
BookLibrary >> books [ 
	^ books
]

{ #category : #initialization }
BookLibrary >> initialize [
	books := OrderedCollection new
]

{ #category : #initialization }
BookLibrary >> printOn: aStream [
    books do: [ :book |
        aStream
            nextPutAll: 'Title: ', (book title printString);
            nextPutAll: '; Author: ', (book author printString);
            nextPutAll: String lf.
    ].
]

{ #category : #initialization }
BookLibrary >> removeBook: aBook [
	books remove: aBook ifAbsent: [ ]
]
