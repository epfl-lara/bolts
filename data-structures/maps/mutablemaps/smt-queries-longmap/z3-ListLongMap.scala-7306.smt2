; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93476 () Bool)

(assert start!93476)

(declare-fun b!1058332 () Bool)

(declare-fun res!707023 () Bool)

(declare-fun e!602120 () Bool)

(assert (=> b!1058332 (=> (not res!707023) (not e!602120))))

(declare-datatypes ((array!66727 0))(
  ( (array!66728 (arr!32078 (Array (_ BitVec 32) (_ BitVec 64))) (size!32615 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66727)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1058332 (= res!707023 (= (select (arr!32078 a!3488) i!1381) k0!2747))))

(declare-fun e!602121 () Bool)

(declare-fun b!1058333 () Bool)

(declare-fun arrayContainsKey!0 (array!66727 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058333 (= e!602121 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1058334 () Bool)

(declare-fun e!602118 () Bool)

(assert (=> b!1058334 (= e!602120 e!602118)))

(declare-fun res!707017 () Bool)

(assert (=> b!1058334 (=> (not res!707017) (not e!602118))))

(declare-fun lt!466834 () array!66727)

(assert (=> b!1058334 (= res!707017 (arrayContainsKey!0 lt!466834 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1058334 (= lt!466834 (array!66728 (store (arr!32078 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32615 a!3488)))))

(declare-fun b!1058335 () Bool)

(declare-fun res!707021 () Bool)

(assert (=> b!1058335 (=> (not res!707021) (not e!602120))))

(declare-datatypes ((List!22521 0))(
  ( (Nil!22518) (Cons!22517 (h!23726 (_ BitVec 64)) (t!31835 List!22521)) )
))
(declare-fun arrayNoDuplicates!0 (array!66727 (_ BitVec 32) List!22521) Bool)

(assert (=> b!1058335 (= res!707021 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22518))))

(declare-fun b!1058336 () Bool)

(declare-fun e!602115 () Bool)

(declare-fun e!602119 () Bool)

(assert (=> b!1058336 (= e!602115 (not e!602119))))

(declare-fun res!707016 () Bool)

(assert (=> b!1058336 (=> res!707016 e!602119)))

(declare-fun lt!466833 () (_ BitVec 32))

(assert (=> b!1058336 (= res!707016 (or (bvsgt lt!466833 i!1381) (bvsle i!1381 lt!466833)))))

(declare-fun e!602117 () Bool)

(assert (=> b!1058336 e!602117))

(declare-fun res!707020 () Bool)

(assert (=> b!1058336 (=> (not res!707020) (not e!602117))))

(assert (=> b!1058336 (= res!707020 (= (select (store (arr!32078 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466833) k0!2747))))

(declare-fun b!1058337 () Bool)

(declare-fun res!707015 () Bool)

(assert (=> b!1058337 (=> (not res!707015) (not e!602120))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1058337 (= res!707015 (validKeyInArray!0 k0!2747))))

(declare-fun b!1058338 () Bool)

(assert (=> b!1058338 (= e!602119 false)))

(assert (=> b!1058338 (not (= (select (arr!32078 a!3488) lt!466833) k0!2747))))

(declare-datatypes ((Unit!34687 0))(
  ( (Unit!34688) )
))
(declare-fun lt!466832 () Unit!34687)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66727 (_ BitVec 64) (_ BitVec 32) List!22521) Unit!34687)

(assert (=> b!1058338 (= lt!466832 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k0!2747 lt!466833 Nil!22518))))

(declare-fun lt!466835 () (_ BitVec 32))

(assert (=> b!1058338 (arrayContainsKey!0 a!3488 k0!2747 lt!466835)))

(declare-fun lt!466837 () Unit!34687)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66727 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34687)

(assert (=> b!1058338 (= lt!466837 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!466835))))

(assert (=> b!1058338 (= lt!466835 (bvadd #b00000000000000000000000000000001 lt!466833))))

(assert (=> b!1058338 (arrayNoDuplicates!0 a!3488 lt!466833 Nil!22518)))

(declare-fun lt!466836 () Unit!34687)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66727 (_ BitVec 32) (_ BitVec 32)) Unit!34687)

(assert (=> b!1058338 (= lt!466836 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466833))))

(declare-fun res!707022 () Bool)

(assert (=> start!93476 (=> (not res!707022) (not e!602120))))

(assert (=> start!93476 (= res!707022 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32615 a!3488)) (bvslt (size!32615 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93476 e!602120))

(assert (=> start!93476 true))

(declare-fun array_inv!24700 (array!66727) Bool)

(assert (=> start!93476 (array_inv!24700 a!3488)))

(declare-fun b!1058339 () Bool)

(assert (=> b!1058339 (= e!602117 e!602121)))

(declare-fun res!707019 () Bool)

(assert (=> b!1058339 (=> res!707019 e!602121)))

(assert (=> b!1058339 (= res!707019 (or (bvsgt lt!466833 i!1381) (bvsle i!1381 lt!466833)))))

(declare-fun b!1058340 () Bool)

(assert (=> b!1058340 (= e!602118 e!602115)))

(declare-fun res!707018 () Bool)

(assert (=> b!1058340 (=> (not res!707018) (not e!602115))))

(assert (=> b!1058340 (= res!707018 (not (= lt!466833 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66727 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058340 (= lt!466833 (arrayScanForKey!0 lt!466834 k0!2747 #b00000000000000000000000000000000))))

(assert (= (and start!93476 res!707022) b!1058335))

(assert (= (and b!1058335 res!707021) b!1058337))

(assert (= (and b!1058337 res!707015) b!1058332))

(assert (= (and b!1058332 res!707023) b!1058334))

(assert (= (and b!1058334 res!707017) b!1058340))

(assert (= (and b!1058340 res!707018) b!1058336))

(assert (= (and b!1058336 res!707020) b!1058339))

(assert (= (and b!1058339 (not res!707019)) b!1058333))

(assert (= (and b!1058336 (not res!707016)) b!1058338))

(declare-fun m!978099 () Bool)

(assert (=> b!1058336 m!978099))

(declare-fun m!978101 () Bool)

(assert (=> b!1058336 m!978101))

(declare-fun m!978103 () Bool)

(assert (=> b!1058334 m!978103))

(assert (=> b!1058334 m!978099))

(declare-fun m!978105 () Bool)

(assert (=> b!1058335 m!978105))

(declare-fun m!978107 () Bool)

(assert (=> b!1058333 m!978107))

(declare-fun m!978109 () Bool)

(assert (=> b!1058332 m!978109))

(declare-fun m!978111 () Bool)

(assert (=> b!1058337 m!978111))

(declare-fun m!978113 () Bool)

(assert (=> b!1058340 m!978113))

(declare-fun m!978115 () Bool)

(assert (=> b!1058338 m!978115))

(declare-fun m!978117 () Bool)

(assert (=> b!1058338 m!978117))

(declare-fun m!978119 () Bool)

(assert (=> b!1058338 m!978119))

(declare-fun m!978121 () Bool)

(assert (=> b!1058338 m!978121))

(declare-fun m!978123 () Bool)

(assert (=> b!1058338 m!978123))

(declare-fun m!978125 () Bool)

(assert (=> b!1058338 m!978125))

(declare-fun m!978127 () Bool)

(assert (=> start!93476 m!978127))

(check-sat (not b!1058335) (not b!1058334) (not b!1058340) (not b!1058337) (not b!1058338) (not b!1058333) (not start!93476))
(check-sat)
