Class {
	#name : #KtSpace,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'sources'
	],
	#category : #'Kutoa-Kutoa'
}

{ #category : #accessing }
KtSpace >> identifier [
	^ identifier
]

{ #category : #space }
KtSpace >> resourceAt: anIdentifier [
	^ self subclassResponsibility
]

{ #category : #space }
KtSpace >> sync: aResource [
	^ self subclassResponsibility
]
