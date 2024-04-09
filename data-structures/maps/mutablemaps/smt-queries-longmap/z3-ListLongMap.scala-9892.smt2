; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117142 () Bool)

(assert start!117142)

(declare-fun b!1378302 () Bool)

(declare-fun res!920948 () Bool)

(declare-fun e!780822 () Bool)

(assert (=> b!1378302 (=> (not res!920948) (not e!780822))))

(declare-datatypes ((array!93675 0))(
  ( (array!93676 (arr!45233 (Array (_ BitVec 32) (_ BitVec 64))) (size!45784 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93675)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378302 (= res!920948 (validKeyInArray!0 (select (arr!45233 a!4094) i!1451)))))

(declare-fun res!920946 () Bool)

(assert (=> start!117142 (=> (not res!920946) (not e!780822))))

(assert (=> start!117142 (= res!920946 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45784 a!4094))))))

(assert (=> start!117142 e!780822))

(assert (=> start!117142 true))

(declare-fun array_inv!34178 (array!93675) Bool)

(assert (=> start!117142 (array_inv!34178 a!4094)))

(declare-fun b!1378303 () Bool)

(declare-fun res!920947 () Bool)

(assert (=> b!1378303 (=> (not res!920947) (not e!780822))))

(declare-fun k0!2953 () (_ BitVec 64))

(assert (=> b!1378303 (= res!920947 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1378304 () Bool)

(declare-fun e!780824 () Bool)

(assert (=> b!1378304 (= e!780822 e!780824)))

(declare-fun res!920945 () Bool)

(assert (=> b!1378304 (=> (not res!920945) (not e!780824))))

(declare-fun lt!606475 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!606474 () (_ BitVec 32))

(assert (=> b!1378304 (= res!920945 (and (= lt!606474 (bvsub lt!606475 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-fun lt!606478 () array!93675)

(declare-fun arrayCountValidKeys!0 (array!93675 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378304 (= lt!606474 (arrayCountValidKeys!0 lt!606478 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378304 (= lt!606475 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378304 (= lt!606478 (array!93676 (store (arr!45233 a!4094) i!1451 k0!2953) (size!45784 a!4094)))))

(declare-fun b!1378305 () Bool)

(declare-fun res!920949 () Bool)

(assert (=> b!1378305 (=> (not res!920949) (not e!780822))))

(assert (=> b!1378305 (= res!920949 (and (bvslt (size!45784 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45784 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378306 () Bool)

(assert (=> b!1378306 (= e!780824 (not true))))

(assert (=> b!1378306 (= (bvadd (arrayCountValidKeys!0 lt!606478 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606474) (arrayCountValidKeys!0 lt!606478 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45727 0))(
  ( (Unit!45728) )
))
(declare-fun lt!606477 () Unit!45727)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93675 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45727)

(assert (=> b!1378306 (= lt!606477 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606478 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> b!1378306 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606475) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606476 () Unit!45727)

(assert (=> b!1378306 (= lt!606476 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (= (and start!117142 res!920946) b!1378302))

(assert (= (and b!1378302 res!920948) b!1378303))

(assert (= (and b!1378303 res!920947) b!1378305))

(assert (= (and b!1378305 res!920949) b!1378304))

(assert (= (and b!1378304 res!920945) b!1378306))

(declare-fun m!1262957 () Bool)

(assert (=> b!1378304 m!1262957))

(declare-fun m!1262959 () Bool)

(assert (=> b!1378304 m!1262959))

(declare-fun m!1262961 () Bool)

(assert (=> b!1378304 m!1262961))

(declare-fun m!1262963 () Bool)

(assert (=> b!1378303 m!1262963))

(declare-fun m!1262965 () Bool)

(assert (=> b!1378306 m!1262965))

(declare-fun m!1262967 () Bool)

(assert (=> b!1378306 m!1262967))

(declare-fun m!1262969 () Bool)

(assert (=> b!1378306 m!1262969))

(declare-fun m!1262971 () Bool)

(assert (=> b!1378306 m!1262971))

(declare-fun m!1262973 () Bool)

(assert (=> b!1378306 m!1262973))

(declare-fun m!1262975 () Bool)

(assert (=> b!1378306 m!1262975))

(declare-fun m!1262977 () Bool)

(assert (=> b!1378302 m!1262977))

(assert (=> b!1378302 m!1262977))

(declare-fun m!1262979 () Bool)

(assert (=> b!1378302 m!1262979))

(declare-fun m!1262981 () Bool)

(assert (=> start!117142 m!1262981))

(check-sat (not b!1378306) (not b!1378302) (not start!117142) (not b!1378304) (not b!1378303))
(check-sat)
