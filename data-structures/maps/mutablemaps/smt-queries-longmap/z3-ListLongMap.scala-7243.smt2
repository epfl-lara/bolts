; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92558 () Bool)

(assert start!92558)

(declare-fun b!1052283 () Bool)

(declare-fun e!597466 () Bool)

(declare-fun e!597471 () Bool)

(assert (=> b!1052283 (= e!597466 e!597471)))

(declare-fun res!701529 () Bool)

(assert (=> b!1052283 (=> res!701529 e!597471)))

(declare-datatypes ((array!66307 0))(
  ( (array!66308 (arr!31889 (Array (_ BitVec 32) (_ BitVec 64))) (size!32426 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66307)

(declare-fun lt!464686 () (_ BitVec 32))

(declare-fun lt!464689 () (_ BitVec 32))

(assert (=> b!1052283 (= res!701529 (or (bvslt lt!464686 #b00000000000000000000000000000000) (bvsge lt!464689 (size!32426 a!3488)) (bvsge lt!464686 (size!32426 a!3488))))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66307 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052283 (arrayContainsKey!0 a!3488 k0!2747 lt!464689)))

(declare-datatypes ((Unit!34459 0))(
  ( (Unit!34460) )
))
(declare-fun lt!464685 () Unit!34459)

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66307 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34459)

(assert (=> b!1052283 (= lt!464685 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!464689))))

(assert (=> b!1052283 (= lt!464689 (bvadd #b00000000000000000000000000000001 lt!464686))))

(declare-datatypes ((List!22332 0))(
  ( (Nil!22329) (Cons!22328 (h!23537 (_ BitVec 64)) (t!31646 List!22332)) )
))
(declare-fun arrayNoDuplicates!0 (array!66307 (_ BitVec 32) List!22332) Bool)

(assert (=> b!1052283 (arrayNoDuplicates!0 a!3488 lt!464686 Nil!22329)))

(declare-fun lt!464687 () Unit!34459)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66307 (_ BitVec 32) (_ BitVec 32)) Unit!34459)

(assert (=> b!1052283 (= lt!464687 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464686))))

(declare-fun b!1052284 () Bool)

(declare-fun res!701522 () Bool)

(declare-fun e!597469 () Bool)

(assert (=> b!1052284 (=> (not res!701522) (not e!597469))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052284 (= res!701522 (validKeyInArray!0 k0!2747))))

(declare-fun b!1052285 () Bool)

(declare-fun res!701523 () Bool)

(assert (=> b!1052285 (=> res!701523 e!597471)))

(declare-fun noDuplicate!1558 (List!22332) Bool)

(assert (=> b!1052285 (= res!701523 (not (noDuplicate!1558 Nil!22329)))))

(declare-fun b!1052286 () Bool)

(declare-fun e!597472 () Bool)

(declare-fun e!597470 () Bool)

(assert (=> b!1052286 (= e!597472 e!597470)))

(declare-fun res!701519 () Bool)

(assert (=> b!1052286 (=> (not res!701519) (not e!597470))))

(assert (=> b!1052286 (= res!701519 (not (= lt!464686 i!1381)))))

(declare-fun lt!464688 () array!66307)

(declare-fun arrayScanForKey!0 (array!66307 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052286 (= lt!464686 (arrayScanForKey!0 lt!464688 k0!2747 #b00000000000000000000000000000000))))

(declare-fun res!701528 () Bool)

(assert (=> start!92558 (=> (not res!701528) (not e!597469))))

(assert (=> start!92558 (= res!701528 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32426 a!3488)) (bvslt (size!32426 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92558 e!597469))

(assert (=> start!92558 true))

(declare-fun array_inv!24511 (array!66307) Bool)

(assert (=> start!92558 (array_inv!24511 a!3488)))

(declare-fun e!597473 () Bool)

(declare-fun b!1052287 () Bool)

(assert (=> b!1052287 (= e!597473 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1052288 () Bool)

(assert (=> b!1052288 (= e!597470 (not e!597466))))

(declare-fun res!701520 () Bool)

(assert (=> b!1052288 (=> res!701520 e!597466)))

(assert (=> b!1052288 (= res!701520 (or (bvsgt lt!464686 i!1381) (bvsle i!1381 lt!464686)))))

(declare-fun e!597467 () Bool)

(assert (=> b!1052288 e!597467))

(declare-fun res!701518 () Bool)

(assert (=> b!1052288 (=> (not res!701518) (not e!597467))))

(assert (=> b!1052288 (= res!701518 (= (select (store (arr!31889 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464686) k0!2747))))

(declare-fun b!1052289 () Bool)

(declare-fun res!701524 () Bool)

(assert (=> b!1052289 (=> (not res!701524) (not e!597469))))

(assert (=> b!1052289 (= res!701524 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22329))))

(declare-fun b!1052290 () Bool)

(assert (=> b!1052290 (= e!597469 e!597472)))

(declare-fun res!701527 () Bool)

(assert (=> b!1052290 (=> (not res!701527) (not e!597472))))

(assert (=> b!1052290 (= res!701527 (arrayContainsKey!0 lt!464688 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052290 (= lt!464688 (array!66308 (store (arr!31889 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32426 a!3488)))))

(declare-fun b!1052291 () Bool)

(assert (=> b!1052291 (= e!597467 e!597473)))

(declare-fun res!701521 () Bool)

(assert (=> b!1052291 (=> res!701521 e!597473)))

(assert (=> b!1052291 (= res!701521 (or (bvsgt lt!464686 i!1381) (bvsle i!1381 lt!464686)))))

(declare-fun b!1052292 () Bool)

(declare-fun res!701526 () Bool)

(assert (=> b!1052292 (=> (not res!701526) (not e!597469))))

(assert (=> b!1052292 (= res!701526 (= (select (arr!31889 a!3488) i!1381) k0!2747))))

(declare-fun b!1052293 () Bool)

(assert (=> b!1052293 (= e!597471 true)))

(declare-fun lt!464684 () Bool)

(declare-fun contains!6173 (List!22332 (_ BitVec 64)) Bool)

(assert (=> b!1052293 (= lt!464684 (contains!6173 Nil!22329 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052294 () Bool)

(declare-fun res!701525 () Bool)

(assert (=> b!1052294 (=> res!701525 e!597471)))

(assert (=> b!1052294 (= res!701525 (contains!6173 Nil!22329 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!92558 res!701528) b!1052289))

(assert (= (and b!1052289 res!701524) b!1052284))

(assert (= (and b!1052284 res!701522) b!1052292))

(assert (= (and b!1052292 res!701526) b!1052290))

(assert (= (and b!1052290 res!701527) b!1052286))

(assert (= (and b!1052286 res!701519) b!1052288))

(assert (= (and b!1052288 res!701518) b!1052291))

(assert (= (and b!1052291 (not res!701521)) b!1052287))

(assert (= (and b!1052288 (not res!701520)) b!1052283))

(assert (= (and b!1052283 (not res!701529)) b!1052285))

(assert (= (and b!1052285 (not res!701523)) b!1052294))

(assert (= (and b!1052294 (not res!701525)) b!1052293))

(declare-fun m!972815 () Bool)

(assert (=> b!1052283 m!972815))

(declare-fun m!972817 () Bool)

(assert (=> b!1052283 m!972817))

(declare-fun m!972819 () Bool)

(assert (=> b!1052283 m!972819))

(declare-fun m!972821 () Bool)

(assert (=> b!1052283 m!972821))

(declare-fun m!972823 () Bool)

(assert (=> b!1052289 m!972823))

(declare-fun m!972825 () Bool)

(assert (=> b!1052287 m!972825))

(declare-fun m!972827 () Bool)

(assert (=> b!1052286 m!972827))

(declare-fun m!972829 () Bool)

(assert (=> b!1052285 m!972829))

(declare-fun m!972831 () Bool)

(assert (=> b!1052293 m!972831))

(declare-fun m!972833 () Bool)

(assert (=> b!1052294 m!972833))

(declare-fun m!972835 () Bool)

(assert (=> b!1052290 m!972835))

(declare-fun m!972837 () Bool)

(assert (=> b!1052290 m!972837))

(assert (=> b!1052288 m!972837))

(declare-fun m!972839 () Bool)

(assert (=> b!1052288 m!972839))

(declare-fun m!972841 () Bool)

(assert (=> b!1052292 m!972841))

(declare-fun m!972843 () Bool)

(assert (=> start!92558 m!972843))

(declare-fun m!972845 () Bool)

(assert (=> b!1052284 m!972845))

(check-sat (not b!1052293) (not b!1052290) (not b!1052284) (not start!92558) (not b!1052283) (not b!1052287) (not b!1052294) (not b!1052285) (not b!1052289) (not b!1052286))
(check-sat)
