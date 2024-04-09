; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92300 () Bool)

(assert start!92300)

(declare-fun res!697752 () Bool)

(declare-fun e!594768 () Bool)

(assert (=> start!92300 (=> (not res!697752) (not e!594768))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66049 0))(
  ( (array!66050 (arr!31760 (Array (_ BitVec 32) (_ BitVec 64))) (size!32297 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66049)

(assert (=> start!92300 (= res!697752 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32297 a!3488)) (bvslt (size!32297 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92300 e!594768))

(assert (=> start!92300 true))

(declare-fun array_inv!24382 (array!66049) Bool)

(assert (=> start!92300 (array_inv!24382 a!3488)))

(declare-fun b!1048510 () Bool)

(declare-fun res!697746 () Bool)

(assert (=> b!1048510 (=> (not res!697746) (not e!594768))))

(declare-datatypes ((List!22203 0))(
  ( (Nil!22200) (Cons!22199 (h!23408 (_ BitVec 64)) (t!31517 List!22203)) )
))
(declare-fun arrayNoDuplicates!0 (array!66049 (_ BitVec 32) List!22203) Bool)

(assert (=> b!1048510 (= res!697746 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22200))))

(declare-fun b!1048511 () Bool)

(declare-fun e!594766 () Bool)

(assert (=> b!1048511 (= e!594766 (not true))))

(declare-fun e!594770 () Bool)

(assert (=> b!1048511 e!594770))

(declare-fun res!697748 () Bool)

(assert (=> b!1048511 (=> (not res!697748) (not e!594770))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun lt!463207 () (_ BitVec 32))

(assert (=> b!1048511 (= res!697748 (= (select (store (arr!31760 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463207) k0!2747))))

(declare-fun b!1048512 () Bool)

(declare-fun e!594765 () Bool)

(assert (=> b!1048512 (= e!594765 e!594766)))

(declare-fun res!697745 () Bool)

(assert (=> b!1048512 (=> (not res!697745) (not e!594766))))

(assert (=> b!1048512 (= res!697745 (not (= lt!463207 i!1381)))))

(declare-fun lt!463206 () array!66049)

(declare-fun arrayScanForKey!0 (array!66049 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048512 (= lt!463207 (arrayScanForKey!0 lt!463206 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048513 () Bool)

(declare-fun res!697747 () Bool)

(assert (=> b!1048513 (=> (not res!697747) (not e!594768))))

(assert (=> b!1048513 (= res!697747 (= (select (arr!31760 a!3488) i!1381) k0!2747))))

(declare-fun b!1048514 () Bool)

(declare-fun e!594767 () Bool)

(assert (=> b!1048514 (= e!594770 e!594767)))

(declare-fun res!697751 () Bool)

(assert (=> b!1048514 (=> res!697751 e!594767)))

(assert (=> b!1048514 (= res!697751 (bvsle lt!463207 i!1381))))

(declare-fun b!1048515 () Bool)

(declare-fun res!697749 () Bool)

(assert (=> b!1048515 (=> (not res!697749) (not e!594768))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048515 (= res!697749 (validKeyInArray!0 k0!2747))))

(declare-fun b!1048516 () Bool)

(declare-fun arrayContainsKey!0 (array!66049 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048516 (= e!594767 (arrayContainsKey!0 a!3488 k0!2747 lt!463207))))

(declare-fun b!1048517 () Bool)

(assert (=> b!1048517 (= e!594768 e!594765)))

(declare-fun res!697750 () Bool)

(assert (=> b!1048517 (=> (not res!697750) (not e!594765))))

(assert (=> b!1048517 (= res!697750 (arrayContainsKey!0 lt!463206 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048517 (= lt!463206 (array!66050 (store (arr!31760 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32297 a!3488)))))

(assert (= (and start!92300 res!697752) b!1048510))

(assert (= (and b!1048510 res!697746) b!1048515))

(assert (= (and b!1048515 res!697749) b!1048513))

(assert (= (and b!1048513 res!697747) b!1048517))

(assert (= (and b!1048517 res!697750) b!1048512))

(assert (= (and b!1048512 res!697745) b!1048511))

(assert (= (and b!1048511 res!697748) b!1048514))

(assert (= (and b!1048514 (not res!697751)) b!1048516))

(declare-fun m!969591 () Bool)

(assert (=> b!1048513 m!969591))

(declare-fun m!969593 () Bool)

(assert (=> b!1048515 m!969593))

(declare-fun m!969595 () Bool)

(assert (=> start!92300 m!969595))

(declare-fun m!969597 () Bool)

(assert (=> b!1048517 m!969597))

(declare-fun m!969599 () Bool)

(assert (=> b!1048517 m!969599))

(assert (=> b!1048511 m!969599))

(declare-fun m!969601 () Bool)

(assert (=> b!1048511 m!969601))

(declare-fun m!969603 () Bool)

(assert (=> b!1048510 m!969603))

(declare-fun m!969605 () Bool)

(assert (=> b!1048516 m!969605))

(declare-fun m!969607 () Bool)

(assert (=> b!1048512 m!969607))

(check-sat (not b!1048512) (not b!1048517) (not b!1048510) (not b!1048516) (not b!1048515) (not start!92300))
(check-sat)
