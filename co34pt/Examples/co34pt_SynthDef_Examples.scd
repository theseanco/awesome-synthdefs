//Examples for SynthDefs by co34pt

//These SynthDefs were designed to work inside of ProxySpace, with a tempoClock

(
p = ProxySpace.push(s);
p.makeTempoClock;
)

//load the SynthDefs, after a tempoClock has been created
("../SynthDefs/co34pt_synthdefs.scd").loadRelative

//Examples:

//sinfb

//pulse3, sinfb3, tri3, saw3

//ring1

//henon

//bplay (and variants)

//vplay (and variants)

//bpfsaw

//bpfbuf