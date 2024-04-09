; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117160 () Bool)

(assert start!117160)

(declare-fun res!921098 () Bool)

(declare-fun e!780917 () Bool)

(assert (=> start!117160 (=> (not res!921098) (not e!780917))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93693 0))(
  ( (array!93694 (arr!45242 (Array (_ BitVec 32) (_ BitVec 64))) (size!45793 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93693)

(assert (=> start!117160 (= res!921098 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45793 a!4094))))))

(assert (=> start!117160 e!780917))

(assert (=> start!117160 true))

(declare-fun array_inv!34187 (array!93693) Bool)

(assert (=> start!117160 (array_inv!34187 a!4094)))

(declare-fun b!1378451 () Bool)

(declare-fun res!921094 () Bool)

(assert (=> b!1378451 (=> (not res!921094) (not e!780917))))

(declare-fun k0!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378451 (= res!921094 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1378452 () Bool)

(declare-fun res!921097 () Bool)

(assert (=> b!1378452 (=> (not res!921097) (not e!780917))))

(assert (=> b!1378452 (= res!921097 (validKeyInArray!0 (select (arr!45242 a!4094) i!1451)))))

(declare-fun b!1378453 () Bool)

(declare-fun e!780918 () Bool)

(assert (=> b!1378453 (= e!780918 true)))

(declare-fun lt!606686 () array!93693)

(declare-fun arrayCountValidKeys!0 (array!93693 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378453 (= (arrayCountValidKeys!0 lt!606686 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45745 0))(
  ( (Unit!45746) )
))
(declare-fun lt!606679 () Unit!45745)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93693 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45745)

(assert (=> b!1378453 (= lt!606679 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4094 i!1451 k0!2953 (bvsub from!3466 #b00000000000000000000000000000001)))))

(declare-fun b!1378454 () Bool)

(declare-fun e!780920 () Bool)

(assert (=> b!1378454 (= e!780920 (not e!780918))))

(declare-fun res!921096 () Bool)

(assert (=> b!1378454 (=> res!921096 e!780918)))

(declare-fun lt!606684 () (_ BitVec 32))

(declare-fun lt!606683 () (_ BitVec 32))

(assert (=> b!1378454 (= res!921096 (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45793 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (not (= lt!606684 (bvsub lt!606683 #b00000000000000000000000000000001)))))))

(declare-fun lt!606687 () (_ BitVec 32))

(declare-fun lt!606685 () (_ BitVec 32))

(assert (=> b!1378454 (= (bvadd lt!606687 lt!606685) lt!606684)))

(assert (=> b!1378454 (= lt!606684 (arrayCountValidKeys!0 lt!606686 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378454 (= lt!606687 (arrayCountValidKeys!0 lt!606686 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!606680 () Unit!45745)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93693 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45745)

(assert (=> b!1378454 (= lt!606680 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606686 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!606688 () (_ BitVec 32))

(declare-fun lt!606682 () (_ BitVec 32))

(assert (=> b!1378454 (= (bvadd lt!606688 lt!606682) lt!606683)))

(assert (=> b!1378454 (= lt!606683 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378454 (= lt!606688 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!606681 () Unit!45745)

(assert (=> b!1378454 (= lt!606681 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378455 () Bool)

(assert (=> b!1378455 (= e!780917 e!780920)))

(declare-fun res!921099 () Bool)

(assert (=> b!1378455 (=> (not res!921099) (not e!780920))))

(assert (=> b!1378455 (= res!921099 (and (= lt!606685 (bvsub lt!606682 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1378455 (= lt!606685 (arrayCountValidKeys!0 lt!606686 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378455 (= lt!606682 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378455 (= lt!606686 (array!93694 (store (arr!45242 a!4094) i!1451 k0!2953) (size!45793 a!4094)))))

(declare-fun b!1378456 () Bool)

(declare-fun res!921095 () Bool)

(assert (=> b!1378456 (=> (not res!921095) (not e!780917))))

(assert (=> b!1378456 (= res!921095 (and (bvslt (size!45793 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45793 a!4094)) (bvsge i!1451 from!3466)))))

(assert (= (and start!117160 res!921098) b!1378452))

(assert (= (and b!1378452 res!921097) b!1378451))

(assert (= (and b!1378451 res!921094) b!1378456))

(assert (= (and b!1378456 res!921095) b!1378455))

(assert (= (and b!1378455 res!921099) b!1378454))

(assert (= (and b!1378454 (not res!921096)) b!1378453))

(declare-fun m!1263215 () Bool)

(assert (=> b!1378454 m!1263215))

(declare-fun m!1263217 () Bool)

(assert (=> b!1378454 m!1263217))

(declare-fun m!1263219 () Bool)

(assert (=> b!1378454 m!1263219))

(declare-fun m!1263221 () Bool)

(assert (=> b!1378454 m!1263221))

(declare-fun m!1263223 () Bool)

(assert (=> b!1378454 m!1263223))

(declare-fun m!1263225 () Bool)

(assert (=> b!1378454 m!1263225))

(declare-fun m!1263227 () Bool)

(assert (=> b!1378453 m!1263227))

(declare-fun m!1263229 () Bool)

(assert (=> b!1378453 m!1263229))

(declare-fun m!1263231 () Bool)

(assert (=> b!1378453 m!1263231))

(declare-fun m!1263233 () Bool)

(assert (=> b!1378451 m!1263233))

(declare-fun m!1263235 () Bool)

(assert (=> b!1378455 m!1263235))

(declare-fun m!1263237 () Bool)

(assert (=> b!1378455 m!1263237))

(declare-fun m!1263239 () Bool)

(assert (=> b!1378455 m!1263239))

(declare-fun m!1263241 () Bool)

(assert (=> start!117160 m!1263241))

(declare-fun m!1263243 () Bool)

(assert (=> b!1378452 m!1263243))

(assert (=> b!1378452 m!1263243))

(declare-fun m!1263245 () Bool)

(assert (=> b!1378452 m!1263245))

(check-sat (not start!117160) (not b!1378451) (not b!1378453) (not b!1378455) (not b!1378452) (not b!1378454))
(check-sat)
