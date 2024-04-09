; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117246 () Bool)

(assert start!117246)

(declare-fun b!1379109 () Bool)

(declare-fun e!781272 () Bool)

(declare-fun e!781273 () Bool)

(assert (=> b!1379109 (= e!781272 e!781273)))

(declare-fun res!921755 () Bool)

(assert (=> b!1379109 (=> (not res!921755) (not e!781273))))

(declare-fun lt!607168 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!607166 () (_ BitVec 32))

(assert (=> b!1379109 (= res!921755 (and (= lt!607168 (bvsub lt!607166 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-datatypes ((array!93779 0))(
  ( (array!93780 (arr!45285 (Array (_ BitVec 32) (_ BitVec 64))) (size!45836 (_ BitVec 32))) )
))
(declare-fun lt!607165 () array!93779)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93779 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379109 (= lt!607168 (arrayCountValidKeys!0 lt!607165 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun a!4094 () array!93779)

(assert (=> b!1379109 (= lt!607166 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1379109 (= lt!607165 (array!93780 (store (arr!45285 a!4094) i!1451 k!2953) (size!45836 a!4094)))))

(declare-fun b!1379110 () Bool)

(declare-fun res!921752 () Bool)

(assert (=> b!1379110 (=> (not res!921752) (not e!781272))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379110 (= res!921752 (validKeyInArray!0 (select (arr!45285 a!4094) i!1451)))))

(declare-fun b!1379111 () Bool)

(assert (=> b!1379111 (= e!781273 (not true))))

(assert (=> b!1379111 (= (bvadd (arrayCountValidKeys!0 lt!607165 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607168) (arrayCountValidKeys!0 lt!607165 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45795 0))(
  ( (Unit!45796) )
))
(declare-fun lt!607164 () Unit!45795)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93779 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45795)

(assert (=> b!1379111 (= lt!607164 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607165 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> b!1379111 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607166) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607167 () Unit!45795)

(assert (=> b!1379111 (= lt!607167 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1379112 () Bool)

(declare-fun res!921756 () Bool)

(assert (=> b!1379112 (=> (not res!921756) (not e!781272))))

(assert (=> b!1379112 (= res!921756 (and (bvslt (size!45836 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45836 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1379113 () Bool)

(declare-fun res!921754 () Bool)

(assert (=> b!1379113 (=> (not res!921754) (not e!781272))))

(assert (=> b!1379113 (= res!921754 (not (validKeyInArray!0 k!2953)))))

(declare-fun res!921753 () Bool)

(assert (=> start!117246 (=> (not res!921753) (not e!781272))))

(assert (=> start!117246 (= res!921753 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45836 a!4094))))))

(assert (=> start!117246 e!781272))

(assert (=> start!117246 true))

(declare-fun array_inv!34230 (array!93779) Bool)

(assert (=> start!117246 (array_inv!34230 a!4094)))

(assert (= (and start!117246 res!921753) b!1379110))

(assert (= (and b!1379110 res!921752) b!1379113))

(assert (= (and b!1379113 res!921754) b!1379112))

(assert (= (and b!1379112 res!921756) b!1379109))

(assert (= (and b!1379109 res!921755) b!1379111))

(declare-fun m!1264129 () Bool)

(assert (=> b!1379111 m!1264129))

(declare-fun m!1264131 () Bool)

(assert (=> b!1379111 m!1264131))

(declare-fun m!1264133 () Bool)

(assert (=> b!1379111 m!1264133))

(declare-fun m!1264135 () Bool)

(assert (=> b!1379111 m!1264135))

(declare-fun m!1264137 () Bool)

(assert (=> b!1379111 m!1264137))

(declare-fun m!1264139 () Bool)

(assert (=> b!1379111 m!1264139))

(declare-fun m!1264141 () Bool)

(assert (=> b!1379109 m!1264141))

(declare-fun m!1264143 () Bool)

(assert (=> b!1379109 m!1264143))

(declare-fun m!1264145 () Bool)

(assert (=> b!1379109 m!1264145))

(declare-fun m!1264147 () Bool)

(assert (=> b!1379113 m!1264147))

(declare-fun m!1264149 () Bool)

(assert (=> start!117246 m!1264149))

(declare-fun m!1264151 () Bool)

(assert (=> b!1379110 m!1264151))

(assert (=> b!1379110 m!1264151))

(declare-fun m!1264153 () Bool)

(assert (=> b!1379110 m!1264153))

(push 1)

(assert (not b!1379110))

(assert (not start!117246))

(assert (not b!1379109))

(assert (not b!1379111))

(assert (not b!1379113))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

