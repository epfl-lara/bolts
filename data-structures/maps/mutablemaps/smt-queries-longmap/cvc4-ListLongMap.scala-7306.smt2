; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93478 () Bool)

(assert start!93478)

(declare-fun res!707043 () Bool)

(declare-fun e!602140 () Bool)

(assert (=> start!93478 (=> (not res!707043) (not e!602140))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66729 0))(
  ( (array!66730 (arr!32079 (Array (_ BitVec 32) (_ BitVec 64))) (size!32616 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66729)

(assert (=> start!93478 (= res!707043 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32616 a!3488)) (bvslt (size!32616 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93478 e!602140))

(assert (=> start!93478 true))

(declare-fun array_inv!24701 (array!66729) Bool)

(assert (=> start!93478 (array_inv!24701 a!3488)))

(declare-fun b!1058359 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun e!602137 () Bool)

(declare-fun arrayContainsKey!0 (array!66729 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058359 (= e!602137 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1058360 () Bool)

(declare-fun e!602139 () Bool)

(assert (=> b!1058360 (= e!602140 e!602139)))

(declare-fun res!707046 () Bool)

(assert (=> b!1058360 (=> (not res!707046) (not e!602139))))

(declare-fun lt!466853 () array!66729)

(assert (=> b!1058360 (= res!707046 (arrayContainsKey!0 lt!466853 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1058360 (= lt!466853 (array!66730 (store (arr!32079 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32616 a!3488)))))

(declare-fun b!1058361 () Bool)

(declare-fun e!602138 () Bool)

(assert (=> b!1058361 (= e!602138 false)))

(declare-fun lt!466851 () (_ BitVec 32))

(assert (=> b!1058361 (not (= (select (arr!32079 a!3488) lt!466851) k!2747))))

(declare-datatypes ((Unit!34689 0))(
  ( (Unit!34690) )
))
(declare-fun lt!466852 () Unit!34689)

(declare-datatypes ((List!22522 0))(
  ( (Nil!22519) (Cons!22518 (h!23727 (_ BitVec 64)) (t!31836 List!22522)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66729 (_ BitVec 64) (_ BitVec 32) List!22522) Unit!34689)

(assert (=> b!1058361 (= lt!466852 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 lt!466851 Nil!22519))))

(declare-fun lt!466850 () (_ BitVec 32))

(assert (=> b!1058361 (arrayContainsKey!0 a!3488 k!2747 lt!466850)))

(declare-fun lt!466854 () Unit!34689)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66729 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34689)

(assert (=> b!1058361 (= lt!466854 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466850))))

(assert (=> b!1058361 (= lt!466850 (bvadd #b00000000000000000000000000000001 lt!466851))))

(declare-fun arrayNoDuplicates!0 (array!66729 (_ BitVec 32) List!22522) Bool)

(assert (=> b!1058361 (arrayNoDuplicates!0 a!3488 lt!466851 Nil!22519)))

(declare-fun lt!466855 () Unit!34689)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66729 (_ BitVec 32) (_ BitVec 32)) Unit!34689)

(assert (=> b!1058361 (= lt!466855 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466851))))

(declare-fun b!1058362 () Bool)

(declare-fun res!707049 () Bool)

(assert (=> b!1058362 (=> (not res!707049) (not e!602140))))

(assert (=> b!1058362 (= res!707049 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22519))))

(declare-fun b!1058363 () Bool)

(declare-fun res!707050 () Bool)

(assert (=> b!1058363 (=> (not res!707050) (not e!602140))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1058363 (= res!707050 (validKeyInArray!0 k!2747))))

(declare-fun b!1058364 () Bool)

(declare-fun e!602136 () Bool)

(assert (=> b!1058364 (= e!602139 e!602136)))

(declare-fun res!707042 () Bool)

(assert (=> b!1058364 (=> (not res!707042) (not e!602136))))

(assert (=> b!1058364 (= res!707042 (not (= lt!466851 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66729 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058364 (= lt!466851 (arrayScanForKey!0 lt!466853 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1058365 () Bool)

(declare-fun e!602141 () Bool)

(assert (=> b!1058365 (= e!602141 e!602137)))

(declare-fun res!707045 () Bool)

(assert (=> b!1058365 (=> res!707045 e!602137)))

(assert (=> b!1058365 (= res!707045 (or (bvsgt lt!466851 i!1381) (bvsle i!1381 lt!466851)))))

(declare-fun b!1058366 () Bool)

(declare-fun res!707048 () Bool)

(assert (=> b!1058366 (=> (not res!707048) (not e!602140))))

(assert (=> b!1058366 (= res!707048 (= (select (arr!32079 a!3488) i!1381) k!2747))))

(declare-fun b!1058367 () Bool)

(assert (=> b!1058367 (= e!602136 (not e!602138))))

(declare-fun res!707044 () Bool)

(assert (=> b!1058367 (=> res!707044 e!602138)))

(assert (=> b!1058367 (= res!707044 (or (bvsgt lt!466851 i!1381) (bvsle i!1381 lt!466851)))))

(assert (=> b!1058367 e!602141))

(declare-fun res!707047 () Bool)

(assert (=> b!1058367 (=> (not res!707047) (not e!602141))))

(assert (=> b!1058367 (= res!707047 (= (select (store (arr!32079 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466851) k!2747))))

(assert (= (and start!93478 res!707043) b!1058362))

(assert (= (and b!1058362 res!707049) b!1058363))

(assert (= (and b!1058363 res!707050) b!1058366))

(assert (= (and b!1058366 res!707048) b!1058360))

(assert (= (and b!1058360 res!707046) b!1058364))

(assert (= (and b!1058364 res!707042) b!1058367))

(assert (= (and b!1058367 res!707047) b!1058365))

(assert (= (and b!1058365 (not res!707045)) b!1058359))

(assert (= (and b!1058367 (not res!707044)) b!1058361))

(declare-fun m!978129 () Bool)

(assert (=> b!1058364 m!978129))

(declare-fun m!978131 () Bool)

(assert (=> b!1058367 m!978131))

(declare-fun m!978133 () Bool)

(assert (=> b!1058367 m!978133))

(declare-fun m!978135 () Bool)

(assert (=> b!1058360 m!978135))

(assert (=> b!1058360 m!978131))

(declare-fun m!978137 () Bool)

(assert (=> b!1058359 m!978137))

(declare-fun m!978139 () Bool)

(assert (=> b!1058362 m!978139))

(declare-fun m!978141 () Bool)

(assert (=> start!93478 m!978141))

(declare-fun m!978143 () Bool)

(assert (=> b!1058361 m!978143))

(declare-fun m!978145 () Bool)

(assert (=> b!1058361 m!978145))

(declare-fun m!978147 () Bool)

(assert (=> b!1058361 m!978147))

(declare-fun m!978149 () Bool)

(assert (=> b!1058361 m!978149))

(declare-fun m!978151 () Bool)

(assert (=> b!1058361 m!978151))

(declare-fun m!978153 () Bool)

(assert (=> b!1058361 m!978153))

(declare-fun m!978155 () Bool)

(assert (=> b!1058366 m!978155))

(declare-fun m!978157 () Bool)

(assert (=> b!1058363 m!978157))

(push 1)

(assert (not start!93478))

(assert (not b!1058359))

(assert (not b!1058364))

(assert (not b!1058362))

