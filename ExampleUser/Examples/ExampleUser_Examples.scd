//some examples for the ExampleUser Synthdefs
("../SynthDefs/ExampleUser_SynthDefs.scd").loadRelative

//load ProxySpace, as the SynthDef was written for live coding purposes
p = ProxySpace.push(s)

//here's an example of a simple run up a major scale]
(
~example = Pbind(\instrument,\sinenv,\scale,Scale.major,\degree,Pseq((0..7),inf),\amp,0.4);
~example.play;
)

//stop the example
~example.stop


//example creating some panned chords using an array for \degree, and manipulating the `pan` argument
(
(
~example2 = Pbind(\instrument,\sinenv,
	\scale,Scale.minor,
	\degree,Pwrand([[0,2,4],[4,6,8],[1,2,5],[7,0,2]],[5,3,2,1].normalizeSum,inf),
	\pan,Pwhite(-1.0,1.0),
	\dur,Pwhite(1.0,10.0),
	\atk,3,
	\sus,3,
	\rel,3,
	\octave,Pwrand([4,5,6],[3,2,1].normalizeSum,inf),
	\amp,Pwhite(0.1,0.3))
);
~example2.play;
)