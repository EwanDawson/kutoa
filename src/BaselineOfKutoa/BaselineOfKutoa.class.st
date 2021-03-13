Class {
	#name : #BaselineOfKutoa,
	#superclass : #Object,
	#category : #BaselineOfKutoa
}

{ #category : #baseline }
BaselineOfKutoa >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			spec
				package: 'Kutoa' ]
]
