; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117150 () Bool)

(assert start!117150)

(declare-fun b!1378362 () Bool)

(declare-fun res!921006 () Bool)

(declare-fun e!780860 () Bool)

(assert (=> b!1378362 (=> (not res!921006) (not e!780860))))

(declare-datatypes ((array!93683 0))(
  ( (array!93684 (arr!45237 (Array (_ BitVec 32) (_ BitVec 64))) (size!45788 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93683)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378362 (= res!921006 (validKeyInArray!0 (select (arr!45237 a!4094) i!1451)))))

(declare-fun b!1378363 () Bool)

(declare-fun e!780858 () Bool)

(assert (=> b!1378363 (= e!780860 e!780858)))

(declare-fun res!921005 () Bool)

(assert (=> b!1378363 (=> (not res!921005) (not e!780858))))

(declare-fun lt!606537 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!606534 () (_ BitVec 32))

(assert (=> b!1378363 (= res!921005 (and (= lt!606537 (bvsub lt!606534 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-fun lt!606538 () array!93683)

(declare-fun arrayCountValidKeys!0 (array!93683 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378363 (= lt!606537 (arrayCountValidKeys!0 lt!606538 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378363 (= lt!606534 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1378363 (= lt!606538 (array!93684 (store (arr!45237 a!4094) i!1451 k!2953) (size!45788 a!4094)))))

(declare-fun b!1378365 () Bool)

(assert (=> b!1378365 (= e!780858 (not true))))

(assert (=> b!1378365 (= (bvadd (arrayCountValidKeys!0 lt!606538 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606537) (arrayCountValidKeys!0 lt!606538 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45735 0))(
  ( (Unit!45736) )
))
(declare-fun lt!606536 () Unit!45735)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93683 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45735)

(assert (=> b!1378365 (= lt!606536 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606538 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> b!1378365 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606534) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606535 () Unit!45735)

(assert (=> b!1378365 (= lt!606535 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378366 () Bool)

(declare-fun res!921007 () Bool)

(assert (=> b!1378366 (=> (not res!921007) (not e!780860))))

(assert (=> b!1378366 (= res!921007 (and (bvslt (size!45788 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45788 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun res!921008 () Bool)

(assert (=> start!117150 (=> (not res!921008) (not e!780860))))

(assert (=> start!117150 (= res!921008 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45788 a!4094))))))

(assert (=> start!117150 e!780860))

(assert (=> start!117150 true))

(declare-fun array_inv!34182 (array!93683) Bool)

(assert (=> start!117150 (array_inv!34182 a!4094)))

(declare-fun b!1378364 () Bool)

(declare-fun res!921009 () Bool)

(assert (=> b!1378364 (=> (not res!921009) (not e!780860))))

(assert (=> b!1378364 (= res!921009 (not (validKeyInArray!0 k!2953)))))

(assert (= (and start!117150 res!921008) b!1378362))

(assert (= (and b!1378362 res!921006) b!1378364))

(assert (= (and b!1378364 res!921009) b!1378366))

(assert (= (and b!1378366 res!921007) b!1378363))

(assert (= (and b!1378363 res!921005) b!1378365))

(declare-fun m!1263061 () Bool)

(assert (=> b!1378364 m!1263061))

(declare-fun m!1263063 () Bool)

(assert (=> start!117150 m!1263063))

(declare-fun m!1263065 () Bool)

(assert (=> b!1378363 m!1263065))

(declare-fun m!1263067 () Bool)

(assert (=> b!1378363 m!1263067))

(declare-fun m!1263069 () Bool)

(assert (=> b!1378363 m!1263069))

(declare-fun m!1263071 () Bool)

(assert (=> b!1378362 m!1263071))

(assert (=> b!1378362 m!1263071))

(declare-fun m!1263073 () Bool)

(assert (=> b!1378362 m!1263073))

(declare-fun m!1263075 () Bool)

(assert (=> b!1378365 m!1263075))

(declare-fun m!1263077 () Bool)

(assert (=> b!1378365 m!1263077))

(declare-fun m!1263079 () Bool)

(assert (=> b!1378365 m!1263079))

(declare-fun m!1263081 () Bool)

(assert (=> b!1378365 m!1263081))

(declare-fun m!1263083 () Bool)

(assert (=> b!1378365 m!1263083))

(declare-fun m!1263085 () Bool)

(assert (=> b!1378365 m!1263085))

(push 1)

