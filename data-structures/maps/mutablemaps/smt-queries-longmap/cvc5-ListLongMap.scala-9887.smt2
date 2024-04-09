; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117110 () Bool)

(assert start!117110)

(declare-fun res!920703 () Bool)

(declare-fun e!780679 () Bool)

(assert (=> start!117110 (=> (not res!920703) (not e!780679))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93643 0))(
  ( (array!93644 (arr!45217 (Array (_ BitVec 32) (_ BitVec 64))) (size!45768 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93643)

(assert (=> start!117110 (= res!920703 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45768 a!4094))))))

(assert (=> start!117110 e!780679))

(assert (=> start!117110 true))

(declare-fun array_inv!34162 (array!93643) Bool)

(assert (=> start!117110 (array_inv!34162 a!4094)))

(declare-fun b!1378055 () Bool)

(declare-fun e!780680 () Bool)

(assert (=> b!1378055 (= e!780679 e!780680)))

(declare-fun res!920699 () Bool)

(assert (=> b!1378055 (=> (not res!920699) (not e!780680))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!606255 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93643 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378055 (= res!920699 (= (arrayCountValidKeys!0 (array!93644 (store (arr!45217 a!4094) i!1451 k!2953) (size!45768 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub lt!606255 #b00000000000000000000000000000001)))))

(assert (=> b!1378055 (= lt!606255 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1378056 () Bool)

(assert (=> b!1378056 (= e!780680 (not true))))

(assert (=> b!1378056 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606255) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45695 0))(
  ( (Unit!45696) )
))
(declare-fun lt!606256 () Unit!45695)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93643 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45695)

(assert (=> b!1378056 (= lt!606256 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378057 () Bool)

(declare-fun res!920701 () Bool)

(assert (=> b!1378057 (=> (not res!920701) (not e!780679))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378057 (= res!920701 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378058 () Bool)

(declare-fun res!920702 () Bool)

(assert (=> b!1378058 (=> (not res!920702) (not e!780679))))

(assert (=> b!1378058 (= res!920702 (and (bvslt (size!45768 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45768 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378059 () Bool)

(declare-fun res!920700 () Bool)

(assert (=> b!1378059 (=> (not res!920700) (not e!780679))))

(assert (=> b!1378059 (= res!920700 (validKeyInArray!0 (select (arr!45217 a!4094) i!1451)))))

(declare-fun b!1378060 () Bool)

(declare-fun res!920698 () Bool)

(assert (=> b!1378060 (=> (not res!920698) (not e!780680))))

(assert (=> b!1378060 (= res!920698 (bvsgt from!3466 #b00000000000000000000000000000000))))

(assert (= (and start!117110 res!920703) b!1378059))

(assert (= (and b!1378059 res!920700) b!1378057))

(assert (= (and b!1378057 res!920701) b!1378058))

(assert (= (and b!1378058 res!920702) b!1378055))

(assert (= (and b!1378055 res!920699) b!1378060))

(assert (= (and b!1378060 res!920698) b!1378056))

(declare-fun m!1262559 () Bool)

(assert (=> b!1378057 m!1262559))

(declare-fun m!1262561 () Bool)

(assert (=> start!117110 m!1262561))

(declare-fun m!1262563 () Bool)

(assert (=> b!1378059 m!1262563))

(assert (=> b!1378059 m!1262563))

(declare-fun m!1262565 () Bool)

(assert (=> b!1378059 m!1262565))

(declare-fun m!1262567 () Bool)

(assert (=> b!1378056 m!1262567))

(declare-fun m!1262569 () Bool)

(assert (=> b!1378056 m!1262569))

(declare-fun m!1262571 () Bool)

(assert (=> b!1378056 m!1262571))

(declare-fun m!1262573 () Bool)

(assert (=> b!1378055 m!1262573))

(declare-fun m!1262575 () Bool)

(assert (=> b!1378055 m!1262575))

(declare-fun m!1262577 () Bool)

(assert (=> b!1378055 m!1262577))

(push 1)

(assert (not b!1378056))

(assert (not b!1378055))

(assert (not b!1378059))

(assert (not start!117110))

(assert (not b!1378057))

(check-sat)

