; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117168 () Bool)

(assert start!117168)

(declare-fun b!1378523 () Bool)

(declare-fun e!780966 () Bool)

(declare-fun e!780968 () Bool)

(assert (=> b!1378523 (= e!780966 e!780968)))

(declare-fun res!921168 () Bool)

(assert (=> b!1378523 (=> (not res!921168) (not e!780968))))

(declare-fun lt!606807 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!606804 () (_ BitVec 32))

(assert (=> b!1378523 (= res!921168 (and (= lt!606807 (bvsub lt!606804 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-datatypes ((array!93701 0))(
  ( (array!93702 (arr!45246 (Array (_ BitVec 32) (_ BitVec 64))) (size!45797 (_ BitVec 32))) )
))
(declare-fun lt!606803 () array!93701)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93701 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378523 (= lt!606807 (arrayCountValidKeys!0 lt!606803 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun a!4094 () array!93701)

(assert (=> b!1378523 (= lt!606804 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1378523 (= lt!606803 (array!93702 (store (arr!45246 a!4094) i!1451 k!2953) (size!45797 a!4094)))))

(declare-fun b!1378524 () Bool)

(declare-fun e!780965 () Bool)

(assert (=> b!1378524 (= e!780968 (not e!780965))))

(declare-fun res!921169 () Bool)

(assert (=> b!1378524 (=> res!921169 e!780965)))

(declare-fun lt!606801 () (_ BitVec 32))

(declare-fun lt!606806 () (_ BitVec 32))

(assert (=> b!1378524 (= res!921169 (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45797 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (not (= lt!606801 (bvsub lt!606806 #b00000000000000000000000000000001)))))))

(declare-fun lt!606799 () (_ BitVec 32))

(assert (=> b!1378524 (= (bvadd lt!606799 lt!606807) lt!606801)))

(assert (=> b!1378524 (= lt!606801 (arrayCountValidKeys!0 lt!606803 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378524 (= lt!606799 (arrayCountValidKeys!0 lt!606803 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-datatypes ((Unit!45753 0))(
  ( (Unit!45754) )
))
(declare-fun lt!606802 () Unit!45753)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93701 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45753)

(assert (=> b!1378524 (= lt!606802 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606803 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!606808 () (_ BitVec 32))

(assert (=> b!1378524 (= (bvadd lt!606808 lt!606804) lt!606806)))

(assert (=> b!1378524 (= lt!606806 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378524 (= lt!606808 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!606805 () Unit!45753)

(assert (=> b!1378524 (= lt!606805 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378525 () Bool)

(assert (=> b!1378525 (= e!780965 (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378525 (= (arrayCountValidKeys!0 lt!606803 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001))))

(declare-fun lt!606800 () Unit!45753)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93701 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45753)

(assert (=> b!1378525 (= lt!606800 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4094 i!1451 k!2953 (bvsub from!3466 #b00000000000000000000000000000001)))))

(declare-fun b!1378526 () Bool)

(declare-fun res!921170 () Bool)

(assert (=> b!1378526 (=> (not res!921170) (not e!780966))))

(assert (=> b!1378526 (= res!921170 (and (bvslt (size!45797 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45797 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun res!921171 () Bool)

(assert (=> start!117168 (=> (not res!921171) (not e!780966))))

(assert (=> start!117168 (= res!921171 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45797 a!4094))))))

(assert (=> start!117168 e!780966))

(assert (=> start!117168 true))

(declare-fun array_inv!34191 (array!93701) Bool)

(assert (=> start!117168 (array_inv!34191 a!4094)))

(declare-fun b!1378527 () Bool)

(declare-fun res!921167 () Bool)

(assert (=> b!1378527 (=> (not res!921167) (not e!780966))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378527 (= res!921167 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378528 () Bool)

(declare-fun res!921166 () Bool)

(assert (=> b!1378528 (=> (not res!921166) (not e!780966))))

(assert (=> b!1378528 (= res!921166 (validKeyInArray!0 (select (arr!45246 a!4094) i!1451)))))

(assert (= (and start!117168 res!921171) b!1378528))

(assert (= (and b!1378528 res!921166) b!1378527))

(assert (= (and b!1378527 res!921167) b!1378526))

(assert (= (and b!1378526 res!921170) b!1378523))

(assert (= (and b!1378523 res!921168) b!1378524))

(assert (= (and b!1378524 (not res!921169)) b!1378525))

(declare-fun m!1263343 () Bool)

(assert (=> b!1378525 m!1263343))

(declare-fun m!1263345 () Bool)

(assert (=> b!1378525 m!1263345))

(declare-fun m!1263347 () Bool)

(assert (=> b!1378525 m!1263347))

(declare-fun m!1263349 () Bool)

(assert (=> b!1378524 m!1263349))

(declare-fun m!1263351 () Bool)

(assert (=> b!1378524 m!1263351))

(declare-fun m!1263353 () Bool)

(assert (=> b!1378524 m!1263353))

(declare-fun m!1263355 () Bool)

(assert (=> b!1378524 m!1263355))

(declare-fun m!1263357 () Bool)

(assert (=> b!1378524 m!1263357))

(declare-fun m!1263359 () Bool)

(assert (=> b!1378524 m!1263359))

(declare-fun m!1263361 () Bool)

(assert (=> b!1378528 m!1263361))

(assert (=> b!1378528 m!1263361))

(declare-fun m!1263363 () Bool)

(assert (=> b!1378528 m!1263363))

(declare-fun m!1263365 () Bool)

(assert (=> b!1378527 m!1263365))

(declare-fun m!1263367 () Bool)

(assert (=> start!117168 m!1263367))

(declare-fun m!1263369 () Bool)

(assert (=> b!1378523 m!1263369))

(declare-fun m!1263371 () Bool)

(assert (=> b!1378523 m!1263371))

(declare-fun m!1263373 () Bool)

(assert (=> b!1378523 m!1263373))

(push 1)

(assert (not b!1378528))

(assert (not b!1378525))

(assert (not b!1378524))

(assert (not b!1378527))

(assert (not b!1378523))

(assert (not start!117168))

(check-sat)

(pop 1)

(push 1)

(check-sat)

