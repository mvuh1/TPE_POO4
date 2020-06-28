"
La classe Equation sert à resoudre les équations du second dégré.
"
Class {
	#name : #Equation,
	#superclass : #Object,
	#instVars : [
		'a',
		'b',
		'c'
	],
	#category : #secondDegrePOO3
}

{ #category : #getters }
Equation >> a [
	^a
]

{ #category : #setters }
Equation >> a: new [
	a:=new
]

{ #category : #getters }
Equation >> b [
	^b
]

{ #category : #setters }
Equation >> b: new [
	b:=new
]

{ #category : #getters }
Equation >> c [
	^c
]

{ #category : #setters }
Equation >> c: new [
	c:=new
]

{ #category : #operations }
Equation >> delta [
"Determinons le distiminant"
	| delta |
	delta := (self b squared) - (4 * (self a) *(self c)).
 ^delta
	
]

{ #category : #operations }
Equation >> solution [
 |x1 x2|
(self delta > 0)
		ifTrue: [ 
			x1:= (self b negated + ((self delta) sqrt)) / 2* (self a).
			x2:= (self b negated - ((self delta) sqrt)) / 2*(self a).
		^ OrderedCollection with: x1 with: x2 
		].
	" cas de la solution double"
	(self delta = 0)
		ifTrue: [ 
				x1:= self b negated / 2*(self a).
	^ OrderedCollection with: x1
		 	].
(	self delta<0)
	ifTrue: [ 
		^OrderedCollection new 
		].
	
	
	
	
	
		
 
]
