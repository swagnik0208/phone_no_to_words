require 'rspec/autorun'
load 'num_to_words.rb'

describe NumToWords do
  subject{NumToWords.new}
  it "Returns the list of possible words or two-word combinations for 6686787825" do
    expect(subject.find_matching_words("6686787825")).to eq([["motor", "usual"], ["noun", "struck"], ["nouns", "truck"], ["nouns", "usual"], ["onto", "struck"], "motortruck"])
  end
  it "Returns the of all possible words or word combinations for 6686787825" do
    expect(subject.find_matching_words("6686787825",true)).to eq([["mot", "opt", "puck"], ["mot", "opt", "ruck"], ["mot", "opt", "suck"], ["mot", "opts", "taj"], ["mot", "opus", "taj"], ["mot", "ort", "puck"], ["mot", "ort", "suck"], ["mot", "orts", "taj"], ["motor", "usual"], ["not", "opt", "puck"], ["not", "opt", "ruck"], ["not", "opt", "suck"], ["not", "opts", "taj"], ["not", "opus", "taj"], ["not", "ort", "puck"], ["not", "ort", "ruck"], ["not", "ort", "suck"], ["not", "orts", "taj"], ["noun", "pup", "taj"], ["noun", "pur", "taj"], ["noun", "pus", "taj"], ["noun", "struck"], ["noun", "sup", "taj"], ["noun", "suq", "taj"], ["nouns", "truck"], ["nouns", "usual"], ["onto", "pup", "taj"], ["onto", "pur", "taj"], ["onto", "pus", "taj"], ["onto", "struck"], ["onto", "sup", "taj"], ["onto", "suq", "taj"], ["oot", "opt", "puck"], ["oot", "opt", "ruck"], ["oot", "opt", "suck"], ["oot", "opts", "taj"], ["oot", "opus", "taj"], ["oot", "ort", "puck"], ["oot", "ort", "ruck"], ["oot", "ort", "suck"], ["oot", "orts", "taj"], "motortruck"])
  end
  it "Returns the list of possible words or two-word combinations for 2282668687" do
    expect(subject.find_matching_words("2282668687")).to eq([["act", "amounts"], ["act", "contour"], ["acta", "mounts"], ["bat", "amounts"], ["bat", "contour"], ["cat", "contour"], "catamounts"])
  end
  it "Returns the list of all possible words or word combinations for 2282668687" do
    expect(subject.find_matching_words("2282668687",true)).to eq([["act", "amounts"], ["act", "boo", "tots"], ["act", "boo", "tour"], ["act", "boot", "mus"], ["act", "boot", "nus"], ["act", "boot", "our"], ["act", "con", "tots"], ["act", "con", "tour"], ["act", "contour"], ["act", "coo", "tots"], ["act", "coo", "tour"], ["act", "coot", "mus"], ["act", "coot", "nus"], ["act", "coot", "our"], ["acta", "mot", "mus"], ["acta", "mot", "nus"], ["acta", "mot", "our"], ["acta", "mounts"], ["acta", "not", "mus"], ["acta", "not", "nus"], ["acta", "not", "our"], ["acta", "oot", "mus"], ["acta", "oot", "nus"], ["acta", "oot", "our"], ["bat", "amounts"], ["bat", "boo", "tots"], ["bat", "boo", "tour"], ["bat", "boot", "mus"], ["bat", "boot", "nus"], ["bat", "boot", "our"], ["bat", "con", "tots"], ["bat", "con", "tour"], ["bat", "contour"], ["bat", "coo", "tots"], ["bat", "coo", "tour"], ["bat", "coot", "mus"], ["bat", "coot", "nus"], ["bat", "coot", "our"], ["cat", "boo", "tots"], ["cat", "boo", "tour"], ["cat", "boot", "mus"], ["cat", "boot", "nus"], ["cat", "boot", "our"], ["cat", "con", "tots"], ["cat", "con", "tour"], ["cat", "contour"], ["cat", "coo", "tots"], ["cat", "coo", "tour"], ["cat", "coot", "mus"], ["cat", "coot", "nus"], ["cat", "coot", "our"], "catamounts"])
  end
end
