Class {
	#name : #Book,
	#superclass : #Object,
	#instVars : [
		'title',
		'author'
	],
	#category : #BookLibrary
}

{ #category : #initialization }
Book >> author [
	^ author 
]

{ #category : #initialization }
Book >> author: aString [
	author := aString 
]

{ #category : #initialization }
Book >> initialize [
	title := ''.
	author := ''.
]

{ #category : #initialization }
Book >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: author printString, ' ', title printString 
]

{ #category : #initialization }
Book >> title [
	^ title.
]

{ #category : #initialization }
Book >> title: aString [
	title := aString.
]
