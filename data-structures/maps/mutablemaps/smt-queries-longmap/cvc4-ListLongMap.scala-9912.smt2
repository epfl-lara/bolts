; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117288 () Bool)

(assert start!117288)

(declare-fun b!1379340 () Bool)

(declare-fun res!921887 () Bool)

(declare-fun e!781401 () Bool)

(assert (=> b!1379340 (=> (not res!921887) (not e!781401))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379340 (= res!921887 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1379341 () Bool)

(declare-fun res!921890 () Bool)

(assert (=> b!1379341 (=> (not res!921890) (not e!781401))))

(declare-datatypes ((array!93800 0))(
  ( (array!93801 (arr!45294 (Array (_ BitVec 32) (_ BitVec 64))) (size!45845 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93800)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1379341 (= res!921890 (and (bvslt (size!45845 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45845 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1379342 () Bool)

(declare-fun res!921889 () Bool)

(assert (=> b!1379342 (=> (not res!921889) (not e!781401))))

(assert (=> b!1379342 (= res!921889 (validKeyInArray!0 (select (arr!45294 a!4094) i!1451)))))

(declare-fun res!921891 () Bool)

(assert (=> start!117288 (=> (not res!921891) (not e!781401))))

(assert (=> start!117288 (= res!921891 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45845 a!4094))))))

(assert (=> start!117288 e!781401))

(assert (=> start!117288 true))

(declare-fun array_inv!34239 (array!93800) Bool)

(assert (=> start!117288 (array_inv!34239 a!4094)))

(declare-fun b!1379343 () Bool)

(declare-fun e!781402 () Bool)

(assert (=> b!1379343 (= e!781401 e!781402)))

(declare-fun res!921888 () Bool)

(assert (=> b!1379343 (=> (not res!921888) (not e!781402))))

(declare-fun lt!607403 () (_ BitVec 32))

(declare-fun lt!607405 () (_ BitVec 32))

(assert (=> b!1379343 (= res!921888 (and (= lt!607403 (bvsub lt!607405 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-fun lt!607409 () array!93800)

(declare-fun arrayCountValidKeys!0 (array!93800 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379343 (= lt!607403 (arrayCountValidKeys!0 lt!607409 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379343 (= lt!607405 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379343 (= lt!607409 (array!93801 (store (arr!45294 a!4094) i!1451 k!2953) (size!45845 a!4094)))))

(declare-fun b!1379344 () Bool)

(declare-fun lt!607411 () (_ BitVec 32))

(declare-fun lt!607408 () (_ BitVec 32))

(assert (=> b!1379344 (= e!781402 (not (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45845 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (not (= lt!607411 (bvsub lt!607408 #b00000000000000000000000000000001))) (bvslt (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))))

(declare-fun lt!607410 () (_ BitVec 32))

(assert (=> b!1379344 (= (bvadd lt!607410 lt!607403) lt!607411)))

(assert (=> b!1379344 (= lt!607411 (arrayCountValidKeys!0 lt!607409 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379344 (= lt!607410 (arrayCountValidKeys!0 lt!607409 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-datatypes ((Unit!45813 0))(
  ( (Unit!45814) )
))
(declare-fun lt!607407 () Unit!45813)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93800 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45813)

(assert (=> b!1379344 (= lt!607407 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607409 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!607404 () (_ BitVec 32))

(assert (=> b!1379344 (= (bvadd lt!607404 lt!607405) lt!607408)))

(assert (=> b!1379344 (= lt!607408 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379344 (= lt!607404 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!607406 () Unit!45813)

(assert (=> b!1379344 (= lt!607406 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (= (and start!117288 res!921891) b!1379342))

(assert (= (and b!1379342 res!921889) b!1379340))

(assert (= (and b!1379340 res!921887) b!1379341))

(assert (= (and b!1379341 res!921890) b!1379343))

(assert (= (and b!1379343 res!921888) b!1379344))

(declare-fun m!1264459 () Bool)

(assert (=> b!1379340 m!1264459))

(declare-fun m!1264461 () Bool)

(assert (=> start!117288 m!1264461))

(declare-fun m!1264463 () Bool)

(assert (=> b!1379344 m!1264463))

(declare-fun m!1264465 () Bool)

(assert (=> b!1379344 m!1264465))

(declare-fun m!1264467 () Bool)

(assert (=> b!1379344 m!1264467))

(declare-fun m!1264469 () Bool)

(assert (=> b!1379344 m!1264469))

(declare-fun m!1264471 () Bool)

(assert (=> b!1379344 m!1264471))

(declare-fun m!1264473 () Bool)

(assert (=> b!1379344 m!1264473))

(declare-fun m!1264475 () Bool)

(assert (=> b!1379342 m!1264475))

(assert (=> b!1379342 m!1264475))

(declare-fun m!1264477 () Bool)

(assert (=> b!1379342 m!1264477))

(declare-fun m!1264479 () Bool)

(assert (=> b!1379343 m!1264479))

(declare-fun m!1264481 () Bool)

(assert (=> b!1379343 m!1264481))

(declare-fun m!1264483 () Bool)

(assert (=> b!1379343 m!1264483))

(push 1)

(assert (not b!1379340))

(assert (not start!117288))

(assert (not b!1379342))

(assert (not b!1379344))

(assert (not b!1379343))

(check-sat)

(pop 1)

(push 1)

(check-sat)

