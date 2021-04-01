Class {
	#name : #KutoaFileTransport,
	#superclass : #KutoaTransport,
	#instVars : [
		'file',
		'resource'
	],
	#category : #'Kutoa-Kutoa'
}

{ #category : #'instance creation' }
KutoaFileTransport class >> file: aFileReference forResource: aResource [
	^ self new
		file: aFileReference forResource: aResource
]

{ #category : #private }
KutoaFileTransport >> file: aFileReference forResource: aResource [
	file := aFileReference.
	resource := aResource.
	^ self
]

{ #category : #transfering }
KutoaFileTransport >> read [
	^ resource deserialize: file binaryReadStream
]

{ #category : #accessing }
KutoaFileTransport >> write [
	file binaryWriteStream nextPutAll: resource serialize
]
