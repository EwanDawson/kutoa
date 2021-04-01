Class {
	#name : #KtResource,
	#superclass : #Object,
	#category : #'Kutoa-Kutoa'
}

{ #category : #accessing }
KtResource >> identifier [
	^ self subclassResponsibility
]

{ #category : #resource }
KtResource >> sync [
	^ self subclassResponsibility
]
