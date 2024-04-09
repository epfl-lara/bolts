; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92810 () Bool)

(assert start!92810)

(declare-fun b!1053763 () Bool)

(declare-fun e!598578 () Bool)

(declare-fun e!598579 () Bool)

(assert (=> b!1053763 (= e!598578 e!598579)))

(declare-fun res!702859 () Bool)

(assert (=> b!1053763 (=> (not res!702859) (not e!598579))))

(declare-datatypes ((array!66451 0))(
  ( (array!66452 (arr!31955 (Array (_ BitVec 32) (_ BitVec 64))) (size!32492 (_ BitVec 32))) )
))
(declare-fun lt!465204 () array!66451)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66451 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053763 (= res!702859 (arrayContainsKey!0 lt!465204 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66451)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1053763 (= lt!465204 (array!66452 (store (arr!31955 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32492 a!3488)))))

(declare-fun lt!465205 () (_ BitVec 32))

(declare-fun e!598580 () Bool)

(declare-fun b!1053764 () Bool)

(assert (=> b!1053764 (= e!598580 (not (or (bvsle lt!465205 i!1381) (bvsgt #b00000000000000000000000000000000 (size!32492 a!3488)) (bvsle i!1381 (size!32492 a!3488)))))))

(declare-fun e!598582 () Bool)

(assert (=> b!1053764 e!598582))

(declare-fun res!702858 () Bool)

(assert (=> b!1053764 (=> (not res!702858) (not e!598582))))

(assert (=> b!1053764 (= res!702858 (= (select (store (arr!31955 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465205) k0!2747))))

(declare-fun b!1053765 () Bool)

(declare-fun e!598581 () Bool)

(assert (=> b!1053765 (= e!598582 e!598581)))

(declare-fun res!702855 () Bool)

(assert (=> b!1053765 (=> res!702855 e!598581)))

(assert (=> b!1053765 (= res!702855 (bvsle lt!465205 i!1381))))

(declare-fun b!1053766 () Bool)

(assert (=> b!1053766 (= e!598581 (arrayContainsKey!0 a!3488 k0!2747 lt!465205))))

(declare-fun res!702857 () Bool)

(assert (=> start!92810 (=> (not res!702857) (not e!598578))))

(assert (=> start!92810 (= res!702857 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32492 a!3488)) (bvslt (size!32492 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92810 e!598578))

(assert (=> start!92810 true))

(declare-fun array_inv!24577 (array!66451) Bool)

(assert (=> start!92810 (array_inv!24577 a!3488)))

(declare-fun b!1053767 () Bool)

(declare-fun res!702854 () Bool)

(assert (=> b!1053767 (=> (not res!702854) (not e!598578))))

(assert (=> b!1053767 (= res!702854 (= (select (arr!31955 a!3488) i!1381) k0!2747))))

(declare-fun b!1053768 () Bool)

(declare-fun res!702860 () Bool)

(assert (=> b!1053768 (=> (not res!702860) (not e!598578))))

(declare-datatypes ((List!22398 0))(
  ( (Nil!22395) (Cons!22394 (h!23603 (_ BitVec 64)) (t!31712 List!22398)) )
))
(declare-fun arrayNoDuplicates!0 (array!66451 (_ BitVec 32) List!22398) Bool)

(assert (=> b!1053768 (= res!702860 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22395))))

(declare-fun b!1053769 () Bool)

(assert (=> b!1053769 (= e!598579 e!598580)))

(declare-fun res!702861 () Bool)

(assert (=> b!1053769 (=> (not res!702861) (not e!598580))))

(assert (=> b!1053769 (= res!702861 (not (= lt!465205 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66451 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053769 (= lt!465205 (arrayScanForKey!0 lt!465204 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1053770 () Bool)

(declare-fun res!702856 () Bool)

(assert (=> b!1053770 (=> (not res!702856) (not e!598578))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053770 (= res!702856 (validKeyInArray!0 k0!2747))))

(assert (= (and start!92810 res!702857) b!1053768))

(assert (= (and b!1053768 res!702860) b!1053770))

(assert (= (and b!1053770 res!702856) b!1053767))

(assert (= (and b!1053767 res!702854) b!1053763))

(assert (= (and b!1053763 res!702859) b!1053769))

(assert (= (and b!1053769 res!702861) b!1053764))

(assert (= (and b!1053764 res!702858) b!1053765))

(assert (= (and b!1053765 (not res!702855)) b!1053766))

(declare-fun m!974097 () Bool)

(assert (=> b!1053769 m!974097))

(declare-fun m!974099 () Bool)

(assert (=> start!92810 m!974099))

(declare-fun m!974101 () Bool)

(assert (=> b!1053768 m!974101))

(declare-fun m!974103 () Bool)

(assert (=> b!1053767 m!974103))

(declare-fun m!974105 () Bool)

(assert (=> b!1053770 m!974105))

(declare-fun m!974107 () Bool)

(assert (=> b!1053764 m!974107))

(declare-fun m!974109 () Bool)

(assert (=> b!1053764 m!974109))

(declare-fun m!974111 () Bool)

(assert (=> b!1053763 m!974111))

(assert (=> b!1053763 m!974107))

(declare-fun m!974113 () Bool)

(assert (=> b!1053766 m!974113))

(check-sat (not b!1053763) (not b!1053768) (not b!1053766) (not start!92810) (not b!1053770) (not b!1053769))
(check-sat)
