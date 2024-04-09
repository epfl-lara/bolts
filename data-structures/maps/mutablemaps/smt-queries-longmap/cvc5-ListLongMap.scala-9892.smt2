; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117140 () Bool)

(assert start!117140)

(declare-fun b!1378287 () Bool)

(declare-fun res!920930 () Bool)

(declare-fun e!780814 () Bool)

(assert (=> b!1378287 (=> (not res!920930) (not e!780814))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378287 (= res!920930 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378288 () Bool)

(declare-fun res!920934 () Bool)

(assert (=> b!1378288 (=> (not res!920934) (not e!780814))))

(declare-datatypes ((array!93673 0))(
  ( (array!93674 (arr!45232 (Array (_ BitVec 32) (_ BitVec 64))) (size!45783 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93673)

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1378288 (= res!920934 (validKeyInArray!0 (select (arr!45232 a!4094) i!1451)))))

(declare-fun b!1378289 () Bool)

(declare-fun e!780813 () Bool)

(assert (=> b!1378289 (= e!780814 e!780813)))

(declare-fun res!920932 () Bool)

(assert (=> b!1378289 (=> (not res!920932) (not e!780813))))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!606461 () (_ BitVec 32))

(declare-fun lt!606459 () (_ BitVec 32))

(assert (=> b!1378289 (= res!920932 (and (= lt!606461 (bvsub lt!606459 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-fun lt!606462 () array!93673)

(declare-fun arrayCountValidKeys!0 (array!93673 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378289 (= lt!606461 (arrayCountValidKeys!0 lt!606462 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378289 (= lt!606459 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378289 (= lt!606462 (array!93674 (store (arr!45232 a!4094) i!1451 k!2953) (size!45783 a!4094)))))

(declare-fun b!1378290 () Bool)

(assert (=> b!1378290 (= e!780813 (not true))))

(assert (=> b!1378290 (= (bvadd (arrayCountValidKeys!0 lt!606462 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606461) (arrayCountValidKeys!0 lt!606462 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45725 0))(
  ( (Unit!45726) )
))
(declare-fun lt!606463 () Unit!45725)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93673 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45725)

(assert (=> b!1378290 (= lt!606463 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606462 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> b!1378290 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606459) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606460 () Unit!45725)

(assert (=> b!1378290 (= lt!606460 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun res!920933 () Bool)

(assert (=> start!117140 (=> (not res!920933) (not e!780814))))

(assert (=> start!117140 (= res!920933 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45783 a!4094))))))

(assert (=> start!117140 e!780814))

(assert (=> start!117140 true))

(declare-fun array_inv!34177 (array!93673) Bool)

(assert (=> start!117140 (array_inv!34177 a!4094)))

(declare-fun b!1378291 () Bool)

(declare-fun res!920931 () Bool)

(assert (=> b!1378291 (=> (not res!920931) (not e!780814))))

(assert (=> b!1378291 (= res!920931 (and (bvslt (size!45783 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45783 a!4094)) (bvsge i!1451 from!3466)))))

(assert (= (and start!117140 res!920933) b!1378288))

(assert (= (and b!1378288 res!920934) b!1378287))

(assert (= (and b!1378287 res!920930) b!1378291))

(assert (= (and b!1378291 res!920931) b!1378289))

(assert (= (and b!1378289 res!920932) b!1378290))

(declare-fun m!1262931 () Bool)

(assert (=> b!1378287 m!1262931))

(declare-fun m!1262933 () Bool)

(assert (=> b!1378288 m!1262933))

(assert (=> b!1378288 m!1262933))

(declare-fun m!1262935 () Bool)

(assert (=> b!1378288 m!1262935))

(declare-fun m!1262937 () Bool)

(assert (=> b!1378290 m!1262937))

(declare-fun m!1262939 () Bool)

(assert (=> b!1378290 m!1262939))

(declare-fun m!1262941 () Bool)

(assert (=> b!1378290 m!1262941))

(declare-fun m!1262943 () Bool)

(assert (=> b!1378290 m!1262943))

(declare-fun m!1262945 () Bool)

(assert (=> b!1378290 m!1262945))

(declare-fun m!1262947 () Bool)

(assert (=> b!1378290 m!1262947))

(declare-fun m!1262949 () Bool)

(assert (=> b!1378289 m!1262949))

(declare-fun m!1262951 () Bool)

(assert (=> b!1378289 m!1262951))

(declare-fun m!1262953 () Bool)

(assert (=> b!1378289 m!1262953))

(declare-fun m!1262955 () Bool)

(assert (=> start!117140 m!1262955))

(push 1)

(assert (not b!1378288))

(assert (not b!1378290))

(assert (not start!117140))

(assert (not b!1378289))

(assert (not b!1378287))

(check-sat)

(pop 1)

