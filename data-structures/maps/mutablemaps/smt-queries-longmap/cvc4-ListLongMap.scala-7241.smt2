; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92548 () Bool)

(assert start!92548)

(declare-fun b!1052103 () Bool)

(declare-fun e!597353 () Bool)

(declare-fun e!597347 () Bool)

(assert (=> b!1052103 (= e!597353 (not e!597347))))

(declare-fun res!701346 () Bool)

(assert (=> b!1052103 (=> res!701346 e!597347)))

(declare-fun lt!464599 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052103 (= res!701346 (or (bvsgt lt!464599 i!1381) (bvsle i!1381 lt!464599)))))

(declare-fun e!597348 () Bool)

(assert (=> b!1052103 e!597348))

(declare-fun res!701348 () Bool)

(assert (=> b!1052103 (=> (not res!701348) (not e!597348))))

(declare-datatypes ((array!66297 0))(
  ( (array!66298 (arr!31884 (Array (_ BitVec 32) (_ BitVec 64))) (size!32421 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66297)

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1052103 (= res!701348 (= (select (store (arr!31884 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464599) k!2747))))

(declare-fun b!1052104 () Bool)

(declare-fun e!597349 () Bool)

(declare-fun e!597350 () Bool)

(assert (=> b!1052104 (= e!597349 e!597350)))

(declare-fun res!701342 () Bool)

(assert (=> b!1052104 (=> (not res!701342) (not e!597350))))

(declare-fun lt!464595 () array!66297)

(declare-fun arrayContainsKey!0 (array!66297 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052104 (= res!701342 (arrayContainsKey!0 lt!464595 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052104 (= lt!464595 (array!66298 (store (arr!31884 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32421 a!3488)))))

(declare-fun b!1052105 () Bool)

(declare-fun res!701338 () Bool)

(assert (=> b!1052105 (=> (not res!701338) (not e!597349))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052105 (= res!701338 (validKeyInArray!0 k!2747))))

(declare-fun b!1052106 () Bool)

(declare-fun e!597352 () Bool)

(assert (=> b!1052106 (= e!597348 e!597352)))

(declare-fun res!701343 () Bool)

(assert (=> b!1052106 (=> res!701343 e!597352)))

(assert (=> b!1052106 (= res!701343 (or (bvsgt lt!464599 i!1381) (bvsle i!1381 lt!464599)))))

(declare-fun b!1052107 () Bool)

(declare-fun res!701340 () Bool)

(declare-fun e!597351 () Bool)

(assert (=> b!1052107 (=> res!701340 e!597351)))

(declare-datatypes ((List!22327 0))(
  ( (Nil!22324) (Cons!22323 (h!23532 (_ BitVec 64)) (t!31641 List!22327)) )
))
(declare-fun noDuplicate!1553 (List!22327) Bool)

(assert (=> b!1052107 (= res!701340 (not (noDuplicate!1553 Nil!22324)))))

(declare-fun b!1052108 () Bool)

(assert (=> b!1052108 (= e!597347 e!597351)))

(declare-fun res!701347 () Bool)

(assert (=> b!1052108 (=> res!701347 e!597351)))

(declare-fun lt!464596 () (_ BitVec 32))

(assert (=> b!1052108 (= res!701347 (or (bvslt lt!464599 #b00000000000000000000000000000000) (bvsge lt!464596 (size!32421 a!3488)) (bvsge lt!464599 (size!32421 a!3488))))))

(assert (=> b!1052108 (arrayContainsKey!0 a!3488 k!2747 lt!464596)))

(declare-datatypes ((Unit!34449 0))(
  ( (Unit!34450) )
))
(declare-fun lt!464594 () Unit!34449)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66297 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34449)

(assert (=> b!1052108 (= lt!464594 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464596))))

(assert (=> b!1052108 (= lt!464596 (bvadd #b00000000000000000000000000000001 lt!464599))))

(declare-fun arrayNoDuplicates!0 (array!66297 (_ BitVec 32) List!22327) Bool)

(assert (=> b!1052108 (arrayNoDuplicates!0 a!3488 lt!464599 Nil!22324)))

(declare-fun lt!464597 () Unit!34449)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66297 (_ BitVec 32) (_ BitVec 32)) Unit!34449)

(assert (=> b!1052108 (= lt!464597 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464599))))

(declare-fun b!1052109 () Bool)

(declare-fun res!701341 () Bool)

(assert (=> b!1052109 (=> res!701341 e!597351)))

(declare-fun contains!6168 (List!22327 (_ BitVec 64)) Bool)

(assert (=> b!1052109 (= res!701341 (contains!6168 Nil!22324 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052111 () Bool)

(declare-fun res!701349 () Bool)

(assert (=> b!1052111 (=> (not res!701349) (not e!597349))))

(assert (=> b!1052111 (= res!701349 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22324))))

(declare-fun b!1052112 () Bool)

(assert (=> b!1052112 (= e!597350 e!597353)))

(declare-fun res!701345 () Bool)

(assert (=> b!1052112 (=> (not res!701345) (not e!597353))))

(assert (=> b!1052112 (= res!701345 (not (= lt!464599 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66297 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052112 (= lt!464599 (arrayScanForKey!0 lt!464595 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1052113 () Bool)

(declare-fun res!701339 () Bool)

(assert (=> b!1052113 (=> (not res!701339) (not e!597349))))

(assert (=> b!1052113 (= res!701339 (= (select (arr!31884 a!3488) i!1381) k!2747))))

(declare-fun b!1052114 () Bool)

(assert (=> b!1052114 (= e!597351 true)))

(declare-fun lt!464598 () Bool)

(assert (=> b!1052114 (= lt!464598 (contains!6168 Nil!22324 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052110 () Bool)

(assert (=> b!1052110 (= e!597352 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun res!701344 () Bool)

(assert (=> start!92548 (=> (not res!701344) (not e!597349))))

(assert (=> start!92548 (= res!701344 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32421 a!3488)) (bvslt (size!32421 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92548 e!597349))

(assert (=> start!92548 true))

(declare-fun array_inv!24506 (array!66297) Bool)

(assert (=> start!92548 (array_inv!24506 a!3488)))

(assert (= (and start!92548 res!701344) b!1052111))

(assert (= (and b!1052111 res!701349) b!1052105))

(assert (= (and b!1052105 res!701338) b!1052113))

(assert (= (and b!1052113 res!701339) b!1052104))

(assert (= (and b!1052104 res!701342) b!1052112))

(assert (= (and b!1052112 res!701345) b!1052103))

(assert (= (and b!1052103 res!701348) b!1052106))

(assert (= (and b!1052106 (not res!701343)) b!1052110))

(assert (= (and b!1052103 (not res!701346)) b!1052108))

(assert (= (and b!1052108 (not res!701347)) b!1052107))

(assert (= (and b!1052107 (not res!701340)) b!1052109))

(assert (= (and b!1052109 (not res!701341)) b!1052114))

(declare-fun m!972655 () Bool)

(assert (=> b!1052111 m!972655))

(declare-fun m!972657 () Bool)

(assert (=> b!1052105 m!972657))

(declare-fun m!972659 () Bool)

(assert (=> b!1052107 m!972659))

(declare-fun m!972661 () Bool)

(assert (=> b!1052104 m!972661))

(declare-fun m!972663 () Bool)

(assert (=> b!1052104 m!972663))

(declare-fun m!972665 () Bool)

(assert (=> start!92548 m!972665))

(declare-fun m!972667 () Bool)

(assert (=> b!1052113 m!972667))

(declare-fun m!972669 () Bool)

(assert (=> b!1052114 m!972669))

(declare-fun m!972671 () Bool)

(assert (=> b!1052109 m!972671))

(declare-fun m!972673 () Bool)

(assert (=> b!1052112 m!972673))

(assert (=> b!1052103 m!972663))

(declare-fun m!972675 () Bool)

(assert (=> b!1052103 m!972675))

(declare-fun m!972677 () Bool)

(assert (=> b!1052110 m!972677))

(declare-fun m!972679 () Bool)

(assert (=> b!1052108 m!972679))

(declare-fun m!972681 () Bool)

(assert (=> b!1052108 m!972681))

(declare-fun m!972683 () Bool)

(assert (=> b!1052108 m!972683))

(declare-fun m!972685 () Bool)

(assert (=> b!1052108 m!972685))

(push 1)

