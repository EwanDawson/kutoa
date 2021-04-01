Class {
	#name : #KtLocalFileResource,
	#superclass : #KtResource,
	#instVars : [
		'space',
		'identifier',
		'value'
	],
	#category : #'Kutoa-Kutoa'
}

{ #category : #'instance creation' }
KtLocalFileResource class >> in: aSpace identifier: anIdentifier [
	| resource |
	resource := KtLocalFileResource new.
	resource space: aSpace identifier: anIdentifier.
	^ resource 
]

{ #category : #accessing }
KtLocalFileResource >> identifier [
	^ identifier
]

{ #category : #resource }
KtLocalFileResource >> space [
	^ space
]

{ #category : #private }
KtLocalFileResource >> space: aSpace identifier: anIdentifier [
	space := aSpace.
	identifier := anIdentifier
]

{ #category : #resource }
KtLocalFileResource >> sync [
	self space sync: self
]

{ #category : #accessing }
KtLocalFileResource >> value [
	^ value
]

{ #category : #accessing }
KtLocalFileResource >> value: anObject [
	value := anObject
]
