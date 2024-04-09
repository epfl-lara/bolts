; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117234 () Bool)

(assert start!117234)

(declare-fun b!1379019 () Bool)

(declare-fun res!921662 () Bool)

(declare-fun e!781219 () Bool)

(assert (=> b!1379019 (=> (not res!921662) (not e!781219))))

(declare-datatypes ((array!93767 0))(
  ( (array!93768 (arr!45279 (Array (_ BitVec 32) (_ BitVec 64))) (size!45830 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93767)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1379019 (= res!921662 (and (bvslt (size!45830 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45830 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1379020 () Bool)

(declare-fun res!921663 () Bool)

(assert (=> b!1379020 (=> (not res!921663) (not e!781219))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379020 (= res!921663 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1379021 () Bool)

(declare-fun res!921665 () Bool)

(assert (=> b!1379021 (=> (not res!921665) (not e!781219))))

(assert (=> b!1379021 (= res!921665 (validKeyInArray!0 (select (arr!45279 a!4094) i!1451)))))

(declare-fun res!921666 () Bool)

(assert (=> start!117234 (=> (not res!921666) (not e!781219))))

(assert (=> start!117234 (= res!921666 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45830 a!4094))))))

(assert (=> start!117234 e!781219))

(assert (=> start!117234 true))

(declare-fun array_inv!34224 (array!93767) Bool)

(assert (=> start!117234 (array_inv!34224 a!4094)))

(declare-fun b!1379022 () Bool)

(declare-fun e!781218 () Bool)

(assert (=> b!1379022 (= e!781218 (not true))))

(declare-fun lt!607075 () (_ BitVec 32))

(declare-fun lt!607077 () array!93767)

(declare-fun arrayCountValidKeys!0 (array!93767 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379022 (= (bvadd (arrayCountValidKeys!0 lt!607077 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607075) (arrayCountValidKeys!0 lt!607077 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45783 0))(
  ( (Unit!45784) )
))
(declare-fun lt!607078 () Unit!45783)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93767 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45783)

(assert (=> b!1379022 (= lt!607078 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607077 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!607076 () (_ BitVec 32))

(assert (=> b!1379022 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607076) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607074 () Unit!45783)

(assert (=> b!1379022 (= lt!607074 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1379023 () Bool)

(assert (=> b!1379023 (= e!781219 e!781218)))

(declare-fun res!921664 () Bool)

(assert (=> b!1379023 (=> (not res!921664) (not e!781218))))

(assert (=> b!1379023 (= res!921664 (and (= lt!607075 (bvsub lt!607076 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1379023 (= lt!607075 (arrayCountValidKeys!0 lt!607077 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379023 (= lt!607076 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379023 (= lt!607077 (array!93768 (store (arr!45279 a!4094) i!1451 k!2953) (size!45830 a!4094)))))

(assert (= (and start!117234 res!921666) b!1379021))

(assert (= (and b!1379021 res!921665) b!1379020))

(assert (= (and b!1379020 res!921663) b!1379019))

(assert (= (and b!1379019 res!921662) b!1379023))

(assert (= (and b!1379023 res!921664) b!1379022))

(declare-fun m!1263973 () Bool)

(assert (=> b!1379020 m!1263973))

(declare-fun m!1263975 () Bool)

(assert (=> b!1379023 m!1263975))

(declare-fun m!1263977 () Bool)

(assert (=> b!1379023 m!1263977))

(declare-fun m!1263979 () Bool)

(assert (=> b!1379023 m!1263979))

(declare-fun m!1263981 () Bool)

(assert (=> b!1379022 m!1263981))

(declare-fun m!1263983 () Bool)

(assert (=> b!1379022 m!1263983))

(declare-fun m!1263985 () Bool)

(assert (=> b!1379022 m!1263985))

(declare-fun m!1263987 () Bool)

(assert (=> b!1379022 m!1263987))

(declare-fun m!1263989 () Bool)

(assert (=> b!1379022 m!1263989))

(declare-fun m!1263991 () Bool)

(assert (=> b!1379022 m!1263991))

(declare-fun m!1263993 () Bool)

(assert (=> start!117234 m!1263993))

(declare-fun m!1263995 () Bool)

(assert (=> b!1379021 m!1263995))

(assert (=> b!1379021 m!1263995))

(declare-fun m!1263997 () Bool)

(assert (=> b!1379021 m!1263997))

(push 1)

(assert (not b!1379023))

(assert (not b!1379021))

(assert (not b!1379022))

(assert (not b!1379020))

(assert (not start!117234))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

