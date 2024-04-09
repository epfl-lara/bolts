; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92576 () Bool)

(assert start!92576)

(declare-fun b!1052565 () Bool)

(declare-fun res!701806 () Bool)

(declare-fun e!597673 () Bool)

(assert (=> b!1052565 (=> (not res!701806) (not e!597673))))

(declare-datatypes ((array!66325 0))(
  ( (array!66326 (arr!31898 (Array (_ BitVec 32) (_ BitVec 64))) (size!32435 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66325)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052565 (= res!701806 (= (select (arr!31898 a!3488) i!1381) k0!2747))))

(declare-fun b!1052566 () Bool)

(declare-fun e!597669 () Bool)

(assert (=> b!1052566 (= e!597673 e!597669)))

(declare-fun res!701808 () Bool)

(assert (=> b!1052566 (=> (not res!701808) (not e!597669))))

(declare-fun lt!464851 () array!66325)

(declare-fun arrayContainsKey!0 (array!66325 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052566 (= res!701808 (arrayContainsKey!0 lt!464851 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052566 (= lt!464851 (array!66326 (store (arr!31898 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32435 a!3488)))))

(declare-fun b!1052567 () Bool)

(declare-fun e!597668 () Bool)

(assert (=> b!1052567 (= e!597668 true)))

(declare-fun lt!464847 () (_ BitVec 32))

(assert (=> b!1052567 (not (= (select (arr!31898 a!3488) lt!464847) k0!2747))))

(declare-datatypes ((Unit!34477 0))(
  ( (Unit!34478) )
))
(declare-fun lt!464849 () Unit!34477)

(declare-datatypes ((List!22341 0))(
  ( (Nil!22338) (Cons!22337 (h!23546 (_ BitVec 64)) (t!31655 List!22341)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66325 (_ BitVec 64) (_ BitVec 32) List!22341) Unit!34477)

(assert (=> b!1052567 (= lt!464849 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k0!2747 lt!464847 Nil!22338))))

(declare-fun lt!464848 () (_ BitVec 32))

(assert (=> b!1052567 (arrayContainsKey!0 a!3488 k0!2747 lt!464848)))

(declare-fun lt!464846 () Unit!34477)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66325 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34477)

(assert (=> b!1052567 (= lt!464846 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!464848))))

(assert (=> b!1052567 (= lt!464848 (bvadd #b00000000000000000000000000000001 lt!464847))))

(declare-fun arrayNoDuplicates!0 (array!66325 (_ BitVec 32) List!22341) Bool)

(assert (=> b!1052567 (arrayNoDuplicates!0 a!3488 lt!464847 Nil!22338)))

(declare-fun lt!464850 () Unit!34477)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66325 (_ BitVec 32) (_ BitVec 32)) Unit!34477)

(assert (=> b!1052567 (= lt!464850 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464847))))

(declare-fun b!1052568 () Bool)

(declare-fun e!597671 () Bool)

(assert (=> b!1052568 (= e!597671 (not e!597668))))

(declare-fun res!701807 () Bool)

(assert (=> b!1052568 (=> res!701807 e!597668)))

(assert (=> b!1052568 (= res!701807 (or (bvsgt lt!464847 i!1381) (bvsle i!1381 lt!464847)))))

(declare-fun e!597674 () Bool)

(assert (=> b!1052568 e!597674))

(declare-fun res!701803 () Bool)

(assert (=> b!1052568 (=> (not res!701803) (not e!597674))))

(assert (=> b!1052568 (= res!701803 (= (select (store (arr!31898 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464847) k0!2747))))

(declare-fun b!1052569 () Bool)

(assert (=> b!1052569 (= e!597669 e!597671)))

(declare-fun res!701804 () Bool)

(assert (=> b!1052569 (=> (not res!701804) (not e!597671))))

(assert (=> b!1052569 (= res!701804 (not (= lt!464847 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66325 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052569 (= lt!464847 (arrayScanForKey!0 lt!464851 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1052570 () Bool)

(declare-fun res!701805 () Bool)

(assert (=> b!1052570 (=> (not res!701805) (not e!597673))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052570 (= res!701805 (validKeyInArray!0 k0!2747))))

(declare-fun res!701801 () Bool)

(assert (=> start!92576 (=> (not res!701801) (not e!597673))))

(assert (=> start!92576 (= res!701801 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32435 a!3488)) (bvslt (size!32435 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92576 e!597673))

(assert (=> start!92576 true))

(declare-fun array_inv!24520 (array!66325) Bool)

(assert (=> start!92576 (array_inv!24520 a!3488)))

(declare-fun b!1052571 () Bool)

(declare-fun res!701800 () Bool)

(assert (=> b!1052571 (=> (not res!701800) (not e!597673))))

(assert (=> b!1052571 (= res!701800 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22338))))

(declare-fun b!1052572 () Bool)

(declare-fun e!597670 () Bool)

(assert (=> b!1052572 (= e!597674 e!597670)))

(declare-fun res!701802 () Bool)

(assert (=> b!1052572 (=> res!701802 e!597670)))

(assert (=> b!1052572 (= res!701802 (or (bvsgt lt!464847 i!1381) (bvsle i!1381 lt!464847)))))

(declare-fun b!1052573 () Bool)

(assert (=> b!1052573 (= e!597670 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(assert (= (and start!92576 res!701801) b!1052571))

(assert (= (and b!1052571 res!701800) b!1052570))

(assert (= (and b!1052570 res!701805) b!1052565))

(assert (= (and b!1052565 res!701806) b!1052566))

(assert (= (and b!1052566 res!701808) b!1052569))

(assert (= (and b!1052569 res!701804) b!1052568))

(assert (= (and b!1052568 res!701803) b!1052572))

(assert (= (and b!1052572 (not res!701802)) b!1052573))

(assert (= (and b!1052568 (not res!701807)) b!1052567))

(declare-fun m!973095 () Bool)

(assert (=> b!1052565 m!973095))

(declare-fun m!973097 () Bool)

(assert (=> b!1052567 m!973097))

(declare-fun m!973099 () Bool)

(assert (=> b!1052567 m!973099))

(declare-fun m!973101 () Bool)

(assert (=> b!1052567 m!973101))

(declare-fun m!973103 () Bool)

(assert (=> b!1052567 m!973103))

(declare-fun m!973105 () Bool)

(assert (=> b!1052567 m!973105))

(declare-fun m!973107 () Bool)

(assert (=> b!1052567 m!973107))

(declare-fun m!973109 () Bool)

(assert (=> b!1052571 m!973109))

(declare-fun m!973111 () Bool)

(assert (=> b!1052566 m!973111))

(declare-fun m!973113 () Bool)

(assert (=> b!1052566 m!973113))

(declare-fun m!973115 () Bool)

(assert (=> b!1052569 m!973115))

(declare-fun m!973117 () Bool)

(assert (=> b!1052573 m!973117))

(declare-fun m!973119 () Bool)

(assert (=> start!92576 m!973119))

(declare-fun m!973121 () Bool)

(assert (=> b!1052570 m!973121))

(assert (=> b!1052568 m!973113))

(declare-fun m!973123 () Bool)

(assert (=> b!1052568 m!973123))

(check-sat (not b!1052570) (not b!1052567) (not b!1052566) (not b!1052571) (not b!1052569) (not start!92576) (not b!1052573))
(check-sat)
