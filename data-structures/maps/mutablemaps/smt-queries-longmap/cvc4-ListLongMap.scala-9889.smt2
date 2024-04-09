; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117126 () Bool)

(assert start!117126)

(declare-fun b!1378182 () Bool)

(declare-fun res!920825 () Bool)

(declare-fun e!780752 () Bool)

(assert (=> b!1378182 (=> (not res!920825) (not e!780752))))

(declare-datatypes ((array!93659 0))(
  ( (array!93660 (arr!45225 (Array (_ BitVec 32) (_ BitVec 64))) (size!45776 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93659)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1378182 (= res!920825 (and (bvslt (size!45776 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45776 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378183 () Bool)

(declare-fun e!780750 () Bool)

(assert (=> b!1378183 (= e!780750 (not true))))

(declare-fun lt!606355 () array!93659)

(declare-fun lt!606356 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93659 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378183 (= (bvadd (arrayCountValidKeys!0 lt!606355 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606356) (arrayCountValidKeys!0 lt!606355 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45711 0))(
  ( (Unit!45712) )
))
(declare-fun lt!606358 () Unit!45711)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93659 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45711)

(assert (=> b!1378183 (= lt!606358 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606355 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!606354 () (_ BitVec 32))

(assert (=> b!1378183 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606354) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606357 () Unit!45711)

(assert (=> b!1378183 (= lt!606357 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun res!920828 () Bool)

(assert (=> start!117126 (=> (not res!920828) (not e!780752))))

(assert (=> start!117126 (= res!920828 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45776 a!4094))))))

(assert (=> start!117126 e!780752))

(assert (=> start!117126 true))

(declare-fun array_inv!34170 (array!93659) Bool)

(assert (=> start!117126 (array_inv!34170 a!4094)))

(declare-fun b!1378184 () Bool)

(declare-fun res!920827 () Bool)

(assert (=> b!1378184 (=> (not res!920827) (not e!780752))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378184 (= res!920827 (validKeyInArray!0 (select (arr!45225 a!4094) i!1451)))))

(declare-fun b!1378185 () Bool)

(declare-fun res!920826 () Bool)

(assert (=> b!1378185 (=> (not res!920826) (not e!780752))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1378185 (= res!920826 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378186 () Bool)

(assert (=> b!1378186 (= e!780752 e!780750)))

(declare-fun res!920829 () Bool)

(assert (=> b!1378186 (=> (not res!920829) (not e!780750))))

(assert (=> b!1378186 (= res!920829 (and (= lt!606356 (bvsub lt!606354 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1378186 (= lt!606356 (arrayCountValidKeys!0 lt!606355 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378186 (= lt!606354 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378186 (= lt!606355 (array!93660 (store (arr!45225 a!4094) i!1451 k!2953) (size!45776 a!4094)))))

(assert (= (and start!117126 res!920828) b!1378184))

(assert (= (and b!1378184 res!920827) b!1378185))

(assert (= (and b!1378185 res!920826) b!1378182))

(assert (= (and b!1378182 res!920825) b!1378186))

(assert (= (and b!1378186 res!920829) b!1378183))

(declare-fun m!1262749 () Bool)

(assert (=> b!1378183 m!1262749))

(declare-fun m!1262751 () Bool)

(assert (=> b!1378183 m!1262751))

(declare-fun m!1262753 () Bool)

(assert (=> b!1378183 m!1262753))

(declare-fun m!1262755 () Bool)

(assert (=> b!1378183 m!1262755))

(declare-fun m!1262757 () Bool)

(assert (=> b!1378183 m!1262757))

(declare-fun m!1262759 () Bool)

(assert (=> b!1378183 m!1262759))

(declare-fun m!1262761 () Bool)

(assert (=> b!1378186 m!1262761))

(declare-fun m!1262763 () Bool)

(assert (=> b!1378186 m!1262763))

(declare-fun m!1262765 () Bool)

(assert (=> b!1378186 m!1262765))

(declare-fun m!1262767 () Bool)

(assert (=> b!1378184 m!1262767))

(assert (=> b!1378184 m!1262767))

(declare-fun m!1262769 () Bool)

(assert (=> b!1378184 m!1262769))

(declare-fun m!1262771 () Bool)

(assert (=> b!1378185 m!1262771))

(declare-fun m!1262773 () Bool)

(assert (=> start!117126 m!1262773))

(push 1)

(assert (not b!1378186))

(assert (not start!117126))

(assert (not b!1378183))

(assert (not b!1378184))

(assert (not b!1378185))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

