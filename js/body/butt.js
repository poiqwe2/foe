
function Butt() {
	this.capacity = new Stat(25);
	this.stretch  = new Stat(1);
	this.buttSize = new Stat(1); // TODO: Default
	// This is a special case for anal pregnancy
	// Only appliable for incubation/eggs
	this.womb     = new Womb();
	
	this.virgin   = true;
}

Butt.prototype.ToStorage = function() {
	var storage = {
		cap    : this.capacity.base,
		str    : this.stretch.base,
		size   : this.buttSize.base,
		virgin : this.virgin ? 1 : 0
	};
	return storage;
}

Butt.prototype.FromStorage = function(storage) {
	this.capacity.base = parseFloat(storage.cap)  || this.capacity.base;
	this.stretch.base  = parseFloat(storage.str)  || this.stretch.base;
	this.buttSize.base = parseFloat(storage.size) || this.buttSize.base;
	this.virgin        = parseInt(storage.virgin) == 1;
}

Butt.prototype.Pregnant = function() {
	return this.womb.pregnant;
}
// TODO
Butt.prototype.Fits = function(cock, extension) {
	extension = extension || 0;
	return cock.length.Get() <= (this.capacity.Get() + extension);
}
Butt.prototype.Tightness = function() {
	return this.stretch.Get();
}
Butt.Tightness = {
	tight : 2,
	loose : 5,
	gaping : 10
}
Butt.prototype.noun = function() {
	var size = this.buttSize.Get();
	var nouns = new Array();
	nouns.push("butt");
	nouns.push("rear");
	nouns.push("rump");
	nouns.push("tush");
	nouns.push("posterior");
	nouns.push("flank");
	return nouns[Rand(nouns.length)];
}
Butt.prototype.adj = function() {
	var size = this.buttSize.Get();
	var adjs = [];
	if(size < 2) {
		adjs.push("flat");
		adjs.push("non-existent");
		adjs.push("tight");
		adjs.push("firm");
	}
	if(size >= 2 && size < 5) {
		adjs.push("delicate");
		adjs.push("soft");
		adjs.push("dainty");
	}
	if(size >= 4 && size < 8) {
		adjs.push("ample");
		adjs.push("full");
		adjs.push("shapely");
		adjs.push("plump");
	}
	if(size >= 6 && size < 12) {
		adjs.push("juicy");
		adjs.push("squeezable");
		adjs.push("gropable");
	}
	if(size >= 10) {
		adjs.push("jiggly");
		adjs.push("expansive");
		adjs.push("massive");
		adjs.push("huge");
	}
	if(size >= 15) {
		adjs.push("immense");
		adjs.push("gargantuan");
		adjs.push("humonguous");
		adjs.push("enormous");
		adjs.push("titanic");
	}
	return adjs[Rand(adjs.length)];
}
Butt.prototype.analNoun = function() {
	var noun;
	r = Rand(7);
	if     (r == 0) noun = "pucker";
	else if(r == 1) noun = "anus";
	else if(r == 2) noun = "anal opening";
	else if(r == 3) noun = "asshole";
	else if(r == 4) noun = "colon";
	else if(r == 5) noun = "sphincter";
	else            noun = "ass"; // sligthly higher prio
	return noun;
}
Butt.prototype.AnalDesc = function() {
	var area = this.capacity.Get() * this.stretch.Get();
	if     (area <= 5  ) ret = {a:"an", adj: "extremely tight"};
	else if(area <= 10 ) ret = {a:"a", adj: "very tight"};
	else if(area <= 20 ) ret = {a:"a", adj: "tight"};
	else if(area <= 30 ) ret = {a:"a", adj: "well-proportioned"};
	else if(area <= 40 ) ret = {a:"a", adj: "flexible"};
	else if(area <= 50 ) ret = {a:"a", adj: "very flexible"};
	else if(area <= 70 ) ret = {a:"a", adj: "loose"};
	else if(area <= 100) ret = {a:"a", adj: "slutty"};
	else                    ret = {a:"a", adj: "gaping"};
	return ret;
}
// TODO
Butt.prototype.Short = function() {
	return Text.Parse("[adj] [noun]", {adj: this.adj(), noun: this.noun()});
}
// TODO: a
Butt.prototype.Long = function() {
	return Text.Parse("a [adj] [noun]", {adj: this.adj(), noun: this.noun()});
}
Butt.prototype.AnalShort = function() {
	var desc = this.AnalDesc();
	var v = this.virgin ? " virgin " : " ";
	return desc.adj + v + this.analNoun();
}
Butt.prototype.AnalLong = function() {
	var desc = this.AnalDesc();
	var v = this.virgin ? " virgin " : " ";
	return desc.a + " " + desc.adj + v + this.analNoun();
}

