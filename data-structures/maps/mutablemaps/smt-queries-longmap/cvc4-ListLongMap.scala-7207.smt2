; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92344 () Bool)

(assert start!92344)

(declare-fun b!1049073 () Bool)

(declare-fun res!698312 () Bool)

(declare-fun e!595201 () Bool)

(assert (=> b!1049073 (=> (not res!698312) (not e!595201))))

(declare-datatypes ((array!66093 0))(
  ( (array!66094 (arr!31782 (Array (_ BitVec 32) (_ BitVec 64))) (size!32319 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66093)

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1049073 (= res!698312 (= (select (arr!31782 a!3488) i!1381) k!2747))))

(declare-fun b!1049074 () Bool)

(declare-fun lt!463374 () (_ BitVec 32))

(declare-fun e!595199 () Bool)

(declare-fun arrayContainsKey!0 (array!66093 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049074 (= e!595199 (arrayContainsKey!0 a!3488 k!2747 lt!463374))))

(declare-fun b!1049075 () Bool)

(declare-fun e!595197 () Bool)

(assert (=> b!1049075 (= e!595201 e!595197)))

(declare-fun res!698308 () Bool)

(assert (=> b!1049075 (=> (not res!698308) (not e!595197))))

(declare-fun lt!463375 () array!66093)

(assert (=> b!1049075 (= res!698308 (arrayContainsKey!0 lt!463375 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049075 (= lt!463375 (array!66094 (store (arr!31782 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32319 a!3488)))))

(declare-fun b!1049076 () Bool)

(declare-fun e!595202 () Bool)

(declare-fun e!595198 () Bool)

(assert (=> b!1049076 (= e!595202 (not e!595198))))

(declare-fun res!698316 () Bool)

(assert (=> b!1049076 (=> res!698316 e!595198)))

(assert (=> b!1049076 (= res!698316 (bvsle lt!463374 i!1381))))

(declare-fun e!595196 () Bool)

(assert (=> b!1049076 e!595196))

(declare-fun res!698313 () Bool)

(assert (=> b!1049076 (=> (not res!698313) (not e!595196))))

(assert (=> b!1049076 (= res!698313 (= (select (store (arr!31782 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463374) k!2747))))

(declare-fun b!1049077 () Bool)

(assert (=> b!1049077 (= e!595197 e!595202)))

(declare-fun res!698309 () Bool)

(assert (=> b!1049077 (=> (not res!698309) (not e!595202))))

(assert (=> b!1049077 (= res!698309 (not (= lt!463374 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66093 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049077 (= lt!463374 (arrayScanForKey!0 lt!463375 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!698314 () Bool)

(assert (=> start!92344 (=> (not res!698314) (not e!595201))))

(assert (=> start!92344 (= res!698314 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32319 a!3488)) (bvslt (size!32319 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92344 e!595201))

(assert (=> start!92344 true))

(declare-fun array_inv!24404 (array!66093) Bool)

(assert (=> start!92344 (array_inv!24404 a!3488)))

(declare-fun b!1049078 () Bool)

(declare-fun res!698315 () Bool)

(assert (=> b!1049078 (=> (not res!698315) (not e!595201))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049078 (= res!698315 (validKeyInArray!0 k!2747))))

(declare-fun b!1049079 () Bool)

(assert (=> b!1049079 (= e!595198 true)))

(declare-datatypes ((List!22225 0))(
  ( (Nil!22222) (Cons!22221 (h!23430 (_ BitVec 64)) (t!31539 List!22225)) )
))
(declare-fun arrayNoDuplicates!0 (array!66093 (_ BitVec 32) List!22225) Bool)

(assert (=> b!1049079 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22222)))

(declare-datatypes ((Unit!34293 0))(
  ( (Unit!34294) )
))
(declare-fun lt!463373 () Unit!34293)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66093 (_ BitVec 32) (_ BitVec 32)) Unit!34293)

(assert (=> b!1049079 (= lt!463373 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049080 () Bool)

(assert (=> b!1049080 (= e!595196 e!595199)))

(declare-fun res!698310 () Bool)

(assert (=> b!1049080 (=> res!698310 e!595199)))

(assert (=> b!1049080 (= res!698310 (bvsle lt!463374 i!1381))))

(declare-fun b!1049081 () Bool)

(declare-fun res!698311 () Bool)

(assert (=> b!1049081 (=> (not res!698311) (not e!595201))))

(assert (=> b!1049081 (= res!698311 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22222))))

(assert (= (and start!92344 res!698314) b!1049081))

(assert (= (and b!1049081 res!698311) b!1049078))

(assert (= (and b!1049078 res!698315) b!1049073))

(assert (= (and b!1049073 res!698312) b!1049075))

(assert (= (and b!1049075 res!698308) b!1049077))

(assert (= (and b!1049077 res!698309) b!1049076))

(assert (= (and b!1049076 res!698313) b!1049080))

(assert (= (and b!1049080 (not res!698310)) b!1049074))

(assert (= (and b!1049076 (not res!698316)) b!1049079))

(declare-fun m!970031 () Bool)

(assert (=> start!92344 m!970031))

(declare-fun m!970033 () Bool)

(assert (=> b!1049077 m!970033))

(declare-fun m!970035 () Bool)

(assert (=> b!1049076 m!970035))

(declare-fun m!970037 () Bool)

(assert (=> b!1049076 m!970037))

(declare-fun m!970039 () Bool)

(assert (=> b!1049073 m!970039))

(declare-fun m!970041 () Bool)

(assert (=> b!1049074 m!970041))

(declare-fun m!970043 () Bool)

(assert (=> b!1049079 m!970043))

(declare-fun m!970045 () Bool)

(assert (=> b!1049079 m!970045))

(declare-fun m!970047 () Bool)

(assert (=> b!1049078 m!970047))

(declare-fun m!970049 () Bool)

(assert (=> b!1049075 m!970049))

(assert (=> b!1049075 m!970035))

(declare-fun m!970051 () Bool)

(assert (=> b!1049081 m!970051))

(push 1)

