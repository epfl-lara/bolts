; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117136 () Bool)

(assert start!117136)

(declare-fun res!920900 () Bool)

(declare-fun e!780796 () Bool)

(assert (=> start!117136 (=> (not res!920900) (not e!780796))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93669 0))(
  ( (array!93670 (arr!45230 (Array (_ BitVec 32) (_ BitVec 64))) (size!45781 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93669)

(assert (=> start!117136 (= res!920900 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45781 a!4094))))))

(assert (=> start!117136 e!780796))

(assert (=> start!117136 true))

(declare-fun array_inv!34175 (array!93669) Bool)

(assert (=> start!117136 (array_inv!34175 a!4094)))

(declare-fun b!1378257 () Bool)

(declare-fun e!780795 () Bool)

(assert (=> b!1378257 (= e!780796 e!780795)))

(declare-fun res!920903 () Bool)

(assert (=> b!1378257 (=> (not res!920903) (not e!780795))))

(declare-fun lt!606433 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!606431 () (_ BitVec 32))

(assert (=> b!1378257 (= res!920903 (and (= lt!606431 (bvsub lt!606433 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-fun lt!606430 () array!93669)

(declare-fun arrayCountValidKeys!0 (array!93669 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378257 (= lt!606431 (arrayCountValidKeys!0 lt!606430 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378257 (= lt!606433 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k0!2953 () (_ BitVec 64))

(assert (=> b!1378257 (= lt!606430 (array!93670 (store (arr!45230 a!4094) i!1451 k0!2953) (size!45781 a!4094)))))

(declare-fun b!1378258 () Bool)

(declare-fun res!920904 () Bool)

(assert (=> b!1378258 (=> (not res!920904) (not e!780796))))

(assert (=> b!1378258 (= res!920904 (and (bvslt (size!45781 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45781 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378259 () Bool)

(declare-fun res!920902 () Bool)

(assert (=> b!1378259 (=> (not res!920902) (not e!780796))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378259 (= res!920902 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1378260 () Bool)

(assert (=> b!1378260 (= e!780795 (not true))))

(assert (=> b!1378260 (= (bvadd (arrayCountValidKeys!0 lt!606430 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606431) (arrayCountValidKeys!0 lt!606430 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45721 0))(
  ( (Unit!45722) )
))
(declare-fun lt!606432 () Unit!45721)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93669 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45721)

(assert (=> b!1378260 (= lt!606432 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606430 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> b!1378260 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606433) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606429 () Unit!45721)

(assert (=> b!1378260 (= lt!606429 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378261 () Bool)

(declare-fun res!920901 () Bool)

(assert (=> b!1378261 (=> (not res!920901) (not e!780796))))

(assert (=> b!1378261 (= res!920901 (validKeyInArray!0 (select (arr!45230 a!4094) i!1451)))))

(assert (= (and start!117136 res!920900) b!1378261))

(assert (= (and b!1378261 res!920901) b!1378259))

(assert (= (and b!1378259 res!920902) b!1378258))

(assert (= (and b!1378258 res!920904) b!1378257))

(assert (= (and b!1378257 res!920903) b!1378260))

(declare-fun m!1262879 () Bool)

(assert (=> b!1378257 m!1262879))

(declare-fun m!1262881 () Bool)

(assert (=> b!1378257 m!1262881))

(declare-fun m!1262883 () Bool)

(assert (=> b!1378257 m!1262883))

(declare-fun m!1262885 () Bool)

(assert (=> b!1378260 m!1262885))

(declare-fun m!1262887 () Bool)

(assert (=> b!1378260 m!1262887))

(declare-fun m!1262889 () Bool)

(assert (=> b!1378260 m!1262889))

(declare-fun m!1262891 () Bool)

(assert (=> b!1378260 m!1262891))

(declare-fun m!1262893 () Bool)

(assert (=> b!1378260 m!1262893))

(declare-fun m!1262895 () Bool)

(assert (=> b!1378260 m!1262895))

(declare-fun m!1262897 () Bool)

(assert (=> start!117136 m!1262897))

(declare-fun m!1262899 () Bool)

(assert (=> b!1378259 m!1262899))

(declare-fun m!1262901 () Bool)

(assert (=> b!1378261 m!1262901))

(assert (=> b!1378261 m!1262901))

(declare-fun m!1262903 () Bool)

(assert (=> b!1378261 m!1262903))

(check-sat (not start!117136) (not b!1378257) (not b!1378260) (not b!1378261) (not b!1378259))
