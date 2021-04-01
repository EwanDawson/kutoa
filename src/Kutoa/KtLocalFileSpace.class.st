Class {
	#name : #KtLocalFileSpace,
	#superclass : #KtSpace,
	#instVars : [
		'root'
	],
	#category : #'Kutoa-Kutoa'
}

{ #category : #'instance creation' }
KtLocalFileSpace class >> root: dir [ 
	| space |
	space := KtLocalFileSpace new.
	space root: dir.
	^ space
]

{ #category : #space }
KtLocalFileSpace >> resourceAt: anIdentifier [
	| resource |
	resource := KtLocalFileResource in: self identifier: anIdentifier.
	resource sync.
	^ resource
]

{ #category : #accessing }
KtLocalFileSpace >> root [
	^ root
]

{ #category : #accessing }
KtLocalFileSpace >> root: aFileReference [
	root := aFileReference
]

{ #category : #space }
KtLocalFileSpace >> sync: aResource [
	aResource value: (self root / aResource identifier) asFileReference contents
]
