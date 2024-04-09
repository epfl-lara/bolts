; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117128 () Bool)

(assert start!117128)

(declare-fun res!920842 () Bool)

(declare-fun e!780761 () Bool)

(assert (=> start!117128 (=> (not res!920842) (not e!780761))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93661 0))(
  ( (array!93662 (arr!45226 (Array (_ BitVec 32) (_ BitVec 64))) (size!45777 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93661)

(assert (=> start!117128 (= res!920842 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45777 a!4094))))))

(assert (=> start!117128 e!780761))

(assert (=> start!117128 true))

(declare-fun array_inv!34171 (array!93661) Bool)

(assert (=> start!117128 (array_inv!34171 a!4094)))

(declare-fun b!1378197 () Bool)

(declare-fun e!780759 () Bool)

(assert (=> b!1378197 (= e!780759 (not true))))

(declare-fun lt!606371 () array!93661)

(declare-fun lt!606373 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93661 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378197 (= (bvadd (arrayCountValidKeys!0 lt!606371 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606373) (arrayCountValidKeys!0 lt!606371 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45713 0))(
  ( (Unit!45714) )
))
(declare-fun lt!606370 () Unit!45713)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93661 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45713)

(assert (=> b!1378197 (= lt!606370 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606371 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!606372 () (_ BitVec 32))

(assert (=> b!1378197 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606372) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606369 () Unit!45713)

(assert (=> b!1378197 (= lt!606369 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378198 () Bool)

(declare-fun res!920843 () Bool)

(assert (=> b!1378198 (=> (not res!920843) (not e!780761))))

(assert (=> b!1378198 (= res!920843 (and (bvslt (size!45777 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45777 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378199 () Bool)

(assert (=> b!1378199 (= e!780761 e!780759)))

(declare-fun res!920840 () Bool)

(assert (=> b!1378199 (=> (not res!920840) (not e!780759))))

(assert (=> b!1378199 (= res!920840 (and (= lt!606373 (bvsub lt!606372 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1378199 (= lt!606373 (arrayCountValidKeys!0 lt!606371 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378199 (= lt!606372 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1378199 (= lt!606371 (array!93662 (store (arr!45226 a!4094) i!1451 k!2953) (size!45777 a!4094)))))

(declare-fun b!1378200 () Bool)

(declare-fun res!920841 () Bool)

(assert (=> b!1378200 (=> (not res!920841) (not e!780761))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378200 (= res!920841 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378201 () Bool)

(declare-fun res!920844 () Bool)

(assert (=> b!1378201 (=> (not res!920844) (not e!780761))))

(assert (=> b!1378201 (= res!920844 (validKeyInArray!0 (select (arr!45226 a!4094) i!1451)))))

(assert (= (and start!117128 res!920842) b!1378201))

(assert (= (and b!1378201 res!920844) b!1378200))

(assert (= (and b!1378200 res!920841) b!1378198))

(assert (= (and b!1378198 res!920843) b!1378199))

(assert (= (and b!1378199 res!920840) b!1378197))

(declare-fun m!1262775 () Bool)

(assert (=> b!1378200 m!1262775))

(declare-fun m!1262777 () Bool)

(assert (=> b!1378201 m!1262777))

(assert (=> b!1378201 m!1262777))

(declare-fun m!1262779 () Bool)

(assert (=> b!1378201 m!1262779))

(declare-fun m!1262781 () Bool)

(assert (=> start!117128 m!1262781))

(declare-fun m!1262783 () Bool)

(assert (=> b!1378197 m!1262783))

(declare-fun m!1262785 () Bool)

(assert (=> b!1378197 m!1262785))

(declare-fun m!1262787 () Bool)

(assert (=> b!1378197 m!1262787))

(declare-fun m!1262789 () Bool)

(assert (=> b!1378197 m!1262789))

(declare-fun m!1262791 () Bool)

(assert (=> b!1378197 m!1262791))

(declare-fun m!1262793 () Bool)

(assert (=> b!1378197 m!1262793))

(declare-fun m!1262795 () Bool)

(assert (=> b!1378199 m!1262795))

(declare-fun m!1262797 () Bool)

(assert (=> b!1378199 m!1262797))

(declare-fun m!1262799 () Bool)

(assert (=> b!1378199 m!1262799))

(push 1)

(assert (not b!1378200))

(assert (not b!1378197))

(assert (not start!117128))

(assert (not b!1378201))

(assert (not b!1378199))

(check-sat)

