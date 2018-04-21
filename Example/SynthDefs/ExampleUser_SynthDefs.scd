//Here is an example SynthDef file
//it can be run as a .scd file to load the SynthDefs to the server for use, and is loaded within the example file

/*

sinenv - a simple enveloped sine wave

freq = frequency
atk = attack
sus = sustain
rel = release
amp = volume
out = channels out
pan = panning in stereo

*/

(
SynthDef(\sinenv,
	{
		arg freq = 440, atk = 0.01, sus = 0.1, rel = 0.3, out = 0, pan = 0, amp = 0.4;
		var sig, env;
		sig = SinOsc.ar(freq,0,1);
		env = EnvGen.ar(Env.linen(atk,sus,rel),doneAction:2);
		sig = sig * env;
		Out.ar(out,Pan2.ar(sig,pan,amp));
}).add;
)