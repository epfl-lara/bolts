; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117284 () Bool)

(assert start!117284)

(declare-fun lt!607355 () (_ BitVec 32))

(declare-fun lt!607352 () (_ BitVec 32))

(declare-datatypes ((array!93796 0))(
  ( (array!93797 (arr!45292 (Array (_ BitVec 32) (_ BitVec 64))) (size!45843 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93796)

(declare-fun e!781383 () Bool)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun b!1379310 () Bool)

(assert (=> b!1379310 (= e!781383 (not (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45843 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (not (= lt!607352 (bvsub lt!607355 #b00000000000000000000000000000001))) (bvslt (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))))

(declare-fun lt!607350 () (_ BitVec 32))

(declare-fun lt!607356 () (_ BitVec 32))

(assert (=> b!1379310 (= (bvadd lt!607350 lt!607356) lt!607352)))

(declare-fun lt!607353 () array!93796)

(declare-fun arrayCountValidKeys!0 (array!93796 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379310 (= lt!607352 (arrayCountValidKeys!0 lt!607353 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379310 (= lt!607350 (arrayCountValidKeys!0 lt!607353 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-datatypes ((Unit!45809 0))(
  ( (Unit!45810) )
))
(declare-fun lt!607351 () Unit!45809)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93796 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45809)

(assert (=> b!1379310 (= lt!607351 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607353 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!607357 () (_ BitVec 32))

(declare-fun lt!607349 () (_ BitVec 32))

(assert (=> b!1379310 (= (bvadd lt!607357 lt!607349) lt!607355)))

(assert (=> b!1379310 (= lt!607355 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379310 (= lt!607357 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!607354 () Unit!45809)

(assert (=> b!1379310 (= lt!607354 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun res!921861 () Bool)

(declare-fun e!781384 () Bool)

(assert (=> start!117284 (=> (not res!921861) (not e!781384))))

(assert (=> start!117284 (= res!921861 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45843 a!4094))))))

(assert (=> start!117284 e!781384))

(assert (=> start!117284 true))

(declare-fun array_inv!34237 (array!93796) Bool)

(assert (=> start!117284 (array_inv!34237 a!4094)))

(declare-fun b!1379311 () Bool)

(assert (=> b!1379311 (= e!781384 e!781383)))

(declare-fun res!921858 () Bool)

(assert (=> b!1379311 (=> (not res!921858) (not e!781383))))

(assert (=> b!1379311 (= res!921858 (and (= lt!607356 (bvsub lt!607349 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1379311 (= lt!607356 (arrayCountValidKeys!0 lt!607353 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379311 (= lt!607349 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1379311 (= lt!607353 (array!93797 (store (arr!45292 a!4094) i!1451 k!2953) (size!45843 a!4094)))))

(declare-fun b!1379312 () Bool)

(declare-fun res!921857 () Bool)

(assert (=> b!1379312 (=> (not res!921857) (not e!781384))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379312 (= res!921857 (validKeyInArray!0 (select (arr!45292 a!4094) i!1451)))))

(declare-fun b!1379313 () Bool)

(declare-fun res!921859 () Bool)

(assert (=> b!1379313 (=> (not res!921859) (not e!781384))))

(assert (=> b!1379313 (= res!921859 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1379314 () Bool)

(declare-fun res!921860 () Bool)

(assert (=> b!1379314 (=> (not res!921860) (not e!781384))))

(assert (=> b!1379314 (= res!921860 (and (bvslt (size!45843 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45843 a!4094)) (bvsge i!1451 from!3466)))))

(assert (= (and start!117284 res!921861) b!1379312))

(assert (= (and b!1379312 res!921857) b!1379313))

(assert (= (and b!1379313 res!921859) b!1379314))

(assert (= (and b!1379314 res!921860) b!1379311))

(assert (= (and b!1379311 res!921858) b!1379310))

(declare-fun m!1264407 () Bool)

(assert (=> b!1379310 m!1264407))

(declare-fun m!1264409 () Bool)

(assert (=> b!1379310 m!1264409))

(declare-fun m!1264411 () Bool)

(assert (=> b!1379310 m!1264411))

(declare-fun m!1264413 () Bool)

(assert (=> b!1379310 m!1264413))

(declare-fun m!1264415 () Bool)

(assert (=> b!1379310 m!1264415))

(declare-fun m!1264417 () Bool)

(assert (=> b!1379310 m!1264417))

(declare-fun m!1264419 () Bool)

(assert (=> start!117284 m!1264419))

(declare-fun m!1264421 () Bool)

(assert (=> b!1379311 m!1264421))

(declare-fun m!1264423 () Bool)

(assert (=> b!1379311 m!1264423))

(declare-fun m!1264425 () Bool)

(assert (=> b!1379311 m!1264425))

(declare-fun m!1264427 () Bool)

(assert (=> b!1379312 m!1264427))

(assert (=> b!1379312 m!1264427))

(declare-fun m!1264429 () Bool)

(assert (=> b!1379312 m!1264429))

(declare-fun m!1264431 () Bool)

(assert (=> b!1379313 m!1264431))

(push 1)

(assert (not start!117284))

(assert (not b!1379312))

(assert (not b!1379311))

(assert (not b!1379313))

(assert (not b!1379310))

(check-sat)

(pop 1)

(push 1)

(check-sat)

