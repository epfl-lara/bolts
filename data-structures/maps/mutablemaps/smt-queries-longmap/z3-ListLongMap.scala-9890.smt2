; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117130 () Bool)

(assert start!117130)

(declare-fun b!1378212 () Bool)

(declare-fun e!780769 () Bool)

(declare-fun e!780768 () Bool)

(assert (=> b!1378212 (= e!780769 e!780768)))

(declare-fun res!920856 () Bool)

(assert (=> b!1378212 (=> (not res!920856) (not e!780768))))

(declare-fun lt!606384 () (_ BitVec 32))

(declare-fun lt!606385 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1378212 (= res!920856 (and (= lt!606385 (bvsub lt!606384 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-datatypes ((array!93663 0))(
  ( (array!93664 (arr!45227 (Array (_ BitVec 32) (_ BitVec 64))) (size!45778 (_ BitVec 32))) )
))
(declare-fun lt!606388 () array!93663)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93663 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378212 (= lt!606385 (arrayCountValidKeys!0 lt!606388 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun a!4094 () array!93663)

(assert (=> b!1378212 (= lt!606384 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k0!2953 () (_ BitVec 64))

(assert (=> b!1378212 (= lt!606388 (array!93664 (store (arr!45227 a!4094) i!1451 k0!2953) (size!45778 a!4094)))))

(declare-fun b!1378213 () Bool)

(declare-fun res!920857 () Bool)

(assert (=> b!1378213 (=> (not res!920857) (not e!780769))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378213 (= res!920857 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1378214 () Bool)

(declare-fun res!920855 () Bool)

(assert (=> b!1378214 (=> (not res!920855) (not e!780769))))

(assert (=> b!1378214 (= res!920855 (validKeyInArray!0 (select (arr!45227 a!4094) i!1451)))))

(declare-fun res!920858 () Bool)

(assert (=> start!117130 (=> (not res!920858) (not e!780769))))

(assert (=> start!117130 (= res!920858 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45778 a!4094))))))

(assert (=> start!117130 e!780769))

(assert (=> start!117130 true))

(declare-fun array_inv!34172 (array!93663) Bool)

(assert (=> start!117130 (array_inv!34172 a!4094)))

(declare-fun b!1378215 () Bool)

(declare-fun res!920859 () Bool)

(assert (=> b!1378215 (=> (not res!920859) (not e!780769))))

(assert (=> b!1378215 (= res!920859 (and (bvslt (size!45778 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45778 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378216 () Bool)

(assert (=> b!1378216 (= e!780768 (not true))))

(assert (=> b!1378216 (= (bvadd (arrayCountValidKeys!0 lt!606388 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606385) (arrayCountValidKeys!0 lt!606388 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45715 0))(
  ( (Unit!45716) )
))
(declare-fun lt!606386 () Unit!45715)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93663 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45715)

(assert (=> b!1378216 (= lt!606386 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606388 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> b!1378216 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606384) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606387 () Unit!45715)

(assert (=> b!1378216 (= lt!606387 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (= (and start!117130 res!920858) b!1378214))

(assert (= (and b!1378214 res!920855) b!1378213))

(assert (= (and b!1378213 res!920857) b!1378215))

(assert (= (and b!1378215 res!920859) b!1378212))

(assert (= (and b!1378212 res!920856) b!1378216))

(declare-fun m!1262801 () Bool)

(assert (=> b!1378212 m!1262801))

(declare-fun m!1262803 () Bool)

(assert (=> b!1378212 m!1262803))

(declare-fun m!1262805 () Bool)

(assert (=> b!1378212 m!1262805))

(declare-fun m!1262807 () Bool)

(assert (=> b!1378216 m!1262807))

(declare-fun m!1262809 () Bool)

(assert (=> b!1378216 m!1262809))

(declare-fun m!1262811 () Bool)

(assert (=> b!1378216 m!1262811))

(declare-fun m!1262813 () Bool)

(assert (=> b!1378216 m!1262813))

(declare-fun m!1262815 () Bool)

(assert (=> b!1378216 m!1262815))

(declare-fun m!1262817 () Bool)

(assert (=> b!1378216 m!1262817))

(declare-fun m!1262819 () Bool)

(assert (=> b!1378213 m!1262819))

(declare-fun m!1262821 () Bool)

(assert (=> b!1378214 m!1262821))

(assert (=> b!1378214 m!1262821))

(declare-fun m!1262823 () Bool)

(assert (=> b!1378214 m!1262823))

(declare-fun m!1262825 () Bool)

(assert (=> start!117130 m!1262825))

(check-sat (not b!1378212) (not b!1378214) (not b!1378216) (not start!117130) (not b!1378213))
