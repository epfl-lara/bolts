; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117144 () Bool)

(assert start!117144)

(declare-fun b!1378317 () Bool)

(declare-fun res!920964 () Bool)

(declare-fun e!780833 () Bool)

(assert (=> b!1378317 (=> (not res!920964) (not e!780833))))

(declare-datatypes ((array!93677 0))(
  ( (array!93678 (arr!45234 (Array (_ BitVec 32) (_ BitVec 64))) (size!45785 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93677)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378317 (= res!920964 (validKeyInArray!0 (select (arr!45234 a!4094) i!1451)))))

(declare-fun b!1378318 () Bool)

(declare-fun e!780832 () Bool)

(assert (=> b!1378318 (= e!780832 (not true))))

(declare-fun lt!606491 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!606490 () array!93677)

(declare-fun arrayCountValidKeys!0 (array!93677 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378318 (= (bvadd (arrayCountValidKeys!0 lt!606490 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606491) (arrayCountValidKeys!0 lt!606490 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45729 0))(
  ( (Unit!45730) )
))
(declare-fun lt!606493 () Unit!45729)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93677 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45729)

(assert (=> b!1378318 (= lt!606493 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606490 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!606489 () (_ BitVec 32))

(assert (=> b!1378318 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606489) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606492 () Unit!45729)

(assert (=> b!1378318 (= lt!606492 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378319 () Bool)

(assert (=> b!1378319 (= e!780833 e!780832)))

(declare-fun res!920962 () Bool)

(assert (=> b!1378319 (=> (not res!920962) (not e!780832))))

(assert (=> b!1378319 (= res!920962 (and (= lt!606491 (bvsub lt!606489 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1378319 (= lt!606491 (arrayCountValidKeys!0 lt!606490 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378319 (= lt!606489 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1378319 (= lt!606490 (array!93678 (store (arr!45234 a!4094) i!1451 k!2953) (size!45785 a!4094)))))

(declare-fun b!1378320 () Bool)

(declare-fun res!920963 () Bool)

(assert (=> b!1378320 (=> (not res!920963) (not e!780833))))

(assert (=> b!1378320 (= res!920963 (and (bvslt (size!45785 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45785 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun res!920961 () Bool)

(assert (=> start!117144 (=> (not res!920961) (not e!780833))))

(assert (=> start!117144 (= res!920961 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45785 a!4094))))))

(assert (=> start!117144 e!780833))

(assert (=> start!117144 true))

(declare-fun array_inv!34179 (array!93677) Bool)

(assert (=> start!117144 (array_inv!34179 a!4094)))

(declare-fun b!1378321 () Bool)

(declare-fun res!920960 () Bool)

(assert (=> b!1378321 (=> (not res!920960) (not e!780833))))

(assert (=> b!1378321 (= res!920960 (not (validKeyInArray!0 k!2953)))))

(assert (= (and start!117144 res!920961) b!1378317))

(assert (= (and b!1378317 res!920964) b!1378321))

(assert (= (and b!1378321 res!920960) b!1378320))

(assert (= (and b!1378320 res!920963) b!1378319))

(assert (= (and b!1378319 res!920962) b!1378318))

(declare-fun m!1262983 () Bool)

(assert (=> start!117144 m!1262983))

(declare-fun m!1262985 () Bool)

(assert (=> b!1378318 m!1262985))

(declare-fun m!1262987 () Bool)

(assert (=> b!1378318 m!1262987))

(declare-fun m!1262989 () Bool)

(assert (=> b!1378318 m!1262989))

(declare-fun m!1262991 () Bool)

(assert (=> b!1378318 m!1262991))

(declare-fun m!1262993 () Bool)

(assert (=> b!1378318 m!1262993))

(declare-fun m!1262995 () Bool)

(assert (=> b!1378318 m!1262995))

(declare-fun m!1262997 () Bool)

(assert (=> b!1378317 m!1262997))

(assert (=> b!1378317 m!1262997))

(declare-fun m!1262999 () Bool)

(assert (=> b!1378317 m!1262999))

(declare-fun m!1263001 () Bool)

(assert (=> b!1378321 m!1263001))

(declare-fun m!1263003 () Bool)

(assert (=> b!1378319 m!1263003))

(declare-fun m!1263005 () Bool)

(assert (=> b!1378319 m!1263005))

(declare-fun m!1263007 () Bool)

(assert (=> b!1378319 m!1263007))

(push 1)

(assert (not b!1378321))

(assert (not b!1378317))

(assert (not b!1378319))

(assert (not b!1378318))

(assert (not start!117144))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

