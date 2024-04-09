; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36382 () Bool)

(assert start!36382)

(declare-fun b!363678 () Bool)

(declare-fun e!222680 () Bool)

(assert (=> b!363678 (= e!222680 (not true))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-datatypes ((array!20624 0))(
  ( (array!20625 (arr!9788 (Array (_ BitVec 32) (_ BitVec 64))) (size!10140 (_ BitVec 32))) )
))
(declare-fun lt!167967 () array!20624)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun lt!167968 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20624 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363678 (= (bvadd (arrayCountValidKeys!0 lt!167967 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167968) (arrayCountValidKeys!0 lt!167967 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11271 0))(
  ( (Unit!11272) )
))
(declare-fun lt!167969 () Unit!11271)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20624 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11271)

(assert (=> b!363678 (= lt!167969 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167967 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!167966 () (_ BitVec 32))

(declare-fun a!4289 () array!20624)

(assert (=> b!363678 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167966) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!167965 () Unit!11271)

(assert (=> b!363678 (= lt!167965 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!363679 () Bool)

(declare-fun res!202990 () Bool)

(declare-fun e!222679 () Bool)

(assert (=> b!363679 (=> (not res!202990) (not e!222679))))

(assert (=> b!363679 (= res!202990 (and (bvslt (size!10140 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10140 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363680 () Bool)

(declare-fun res!202992 () Bool)

(assert (=> b!363680 (=> (not res!202992) (not e!222679))))

(declare-fun k0!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363680 (= res!202992 (validKeyInArray!0 k0!2974))))

(declare-fun b!363681 () Bool)

(declare-fun res!202989 () Bool)

(assert (=> b!363681 (=> (not res!202989) (not e!222679))))

(assert (=> b!363681 (= res!202989 (not (validKeyInArray!0 (select (arr!9788 a!4289) i!1472))))))

(declare-fun b!363682 () Bool)

(assert (=> b!363682 (= e!222679 e!222680)))

(declare-fun res!202991 () Bool)

(assert (=> b!363682 (=> (not res!202991) (not e!222680))))

(assert (=> b!363682 (= res!202991 (and (= lt!167968 (bvadd #b00000000000000000000000000000001 lt!167966)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!363682 (= lt!167968 (arrayCountValidKeys!0 lt!167967 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363682 (= lt!167966 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363682 (= lt!167967 (array!20625 (store (arr!9788 a!4289) i!1472 k0!2974) (size!10140 a!4289)))))

(declare-fun res!202993 () Bool)

(assert (=> start!36382 (=> (not res!202993) (not e!222679))))

(assert (=> start!36382 (= res!202993 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10140 a!4289))))))

(assert (=> start!36382 e!222679))

(assert (=> start!36382 true))

(declare-fun array_inv!7226 (array!20624) Bool)

(assert (=> start!36382 (array_inv!7226 a!4289)))

(assert (= (and start!36382 res!202993) b!363681))

(assert (= (and b!363681 res!202989) b!363680))

(assert (= (and b!363680 res!202992) b!363679))

(assert (= (and b!363679 res!202990) b!363682))

(assert (= (and b!363682 res!202991) b!363678))

(declare-fun m!360993 () Bool)

(assert (=> start!36382 m!360993))

(declare-fun m!360995 () Bool)

(assert (=> b!363678 m!360995))

(declare-fun m!360997 () Bool)

(assert (=> b!363678 m!360997))

(declare-fun m!360999 () Bool)

(assert (=> b!363678 m!360999))

(declare-fun m!361001 () Bool)

(assert (=> b!363678 m!361001))

(declare-fun m!361003 () Bool)

(assert (=> b!363678 m!361003))

(declare-fun m!361005 () Bool)

(assert (=> b!363678 m!361005))

(declare-fun m!361007 () Bool)

(assert (=> b!363680 m!361007))

(declare-fun m!361009 () Bool)

(assert (=> b!363682 m!361009))

(declare-fun m!361011 () Bool)

(assert (=> b!363682 m!361011))

(declare-fun m!361013 () Bool)

(assert (=> b!363682 m!361013))

(declare-fun m!361015 () Bool)

(assert (=> b!363681 m!361015))

(assert (=> b!363681 m!361015))

(declare-fun m!361017 () Bool)

(assert (=> b!363681 m!361017))

(check-sat (not start!36382) (not b!363682) (not b!363678) (not b!363681) (not b!363680))
(check-sat)
