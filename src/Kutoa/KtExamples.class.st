Class {
	#name : #KtExamples,
	#superclass : #Object,
	#category : #'Kutoa-Kutoa'
}

{ #category : #accessing }
KtExamples class >> createLocalFileSpace [
	<gtExample>
	"Demonstrate how to create a LocalFileSpace"
	| dir space |
	dir := self exampleDirectory.
	space :=KtLocalFileSpace root: dir.
	self assert: space root = dir.
	^ space
]

{ #category : #accessing }
KtExamples class >> exampleDirectory [
	| dir |
	dir := FileLocator imageDirectory / 'KutoaExamples'.
	dir ensureCreateDirectory.
	^ dir asFileReference
]

{ #category : #accessing }
KtExamples class >> exampleJSONFile [
	| file |
	file := self exampleDirectory / 'kutoa-examples.json'.
	file exists ifFalse: [
		file ensureCreateFile.
		file writeStreamDo: [ :stream |
			stream nextPutAll: '{"kutoa":true}' ]].
	^ file asFileReference
]

{ #category : #accessing }
KtExamples class >> getFileResource [
	<gtExample>
	"Demonstrate how to obtain a local file as a Resource"
	| file space resource |
	file := self exampleJSONFile.
	space := self createLocalFileSpace.
	resource := space resourceAt: file basename.
	self assert: resource identifier = file basename.
	self assert: resource value = file contents.
	^ resource 
	
]
