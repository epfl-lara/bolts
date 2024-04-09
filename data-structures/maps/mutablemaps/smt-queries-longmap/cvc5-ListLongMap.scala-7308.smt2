; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93486 () Bool)

(assert start!93486)

(declare-fun b!1058467 () Bool)

(declare-fun res!707156 () Bool)

(declare-fun e!602224 () Bool)

(assert (=> b!1058467 (=> (not res!707156) (not e!602224))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1058467 (= res!707156 (validKeyInArray!0 k!2747))))

(declare-fun b!1058468 () Bool)

(declare-fun res!707151 () Bool)

(assert (=> b!1058468 (=> (not res!707151) (not e!602224))))

(declare-datatypes ((array!66737 0))(
  ( (array!66738 (arr!32083 (Array (_ BitVec 32) (_ BitVec 64))) (size!32620 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66737)

(declare-datatypes ((List!22526 0))(
  ( (Nil!22523) (Cons!22522 (h!23731 (_ BitVec 64)) (t!31840 List!22526)) )
))
(declare-fun arrayNoDuplicates!0 (array!66737 (_ BitVec 32) List!22526) Bool)

(assert (=> b!1058468 (= res!707151 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22523))))

(declare-fun b!1058469 () Bool)

(declare-fun res!707152 () Bool)

(assert (=> b!1058469 (=> (not res!707152) (not e!602224))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1058469 (= res!707152 (= (select (arr!32083 a!3488) i!1381) k!2747))))

(declare-fun b!1058470 () Bool)

(declare-fun e!602221 () Bool)

(declare-fun e!602222 () Bool)

(assert (=> b!1058470 (= e!602221 (not e!602222))))

(declare-fun res!707150 () Bool)

(assert (=> b!1058470 (=> res!707150 e!602222)))

(declare-fun lt!466927 () (_ BitVec 32))

(assert (=> b!1058470 (= res!707150 (or (bvsgt lt!466927 i!1381) (bvsle i!1381 lt!466927)))))

(declare-fun e!602220 () Bool)

(assert (=> b!1058470 e!602220))

(declare-fun res!707153 () Bool)

(assert (=> b!1058470 (=> (not res!707153) (not e!602220))))

(assert (=> b!1058470 (= res!707153 (= (select (store (arr!32083 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466927) k!2747))))

(declare-fun b!1058471 () Bool)

(declare-fun e!602226 () Bool)

(assert (=> b!1058471 (= e!602226 e!602221)))

(declare-fun res!707157 () Bool)

(assert (=> b!1058471 (=> (not res!707157) (not e!602221))))

(assert (=> b!1058471 (= res!707157 (not (= lt!466927 i!1381)))))

(declare-fun lt!466922 () array!66737)

(declare-fun arrayScanForKey!0 (array!66737 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058471 (= lt!466927 (arrayScanForKey!0 lt!466922 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1058472 () Bool)

(assert (=> b!1058472 (= e!602224 e!602226)))

(declare-fun res!707158 () Bool)

(assert (=> b!1058472 (=> (not res!707158) (not e!602226))))

(declare-fun arrayContainsKey!0 (array!66737 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058472 (= res!707158 (arrayContainsKey!0 lt!466922 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1058472 (= lt!466922 (array!66738 (store (arr!32083 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32620 a!3488)))))

(declare-fun res!707155 () Bool)

(assert (=> start!93486 (=> (not res!707155) (not e!602224))))

(assert (=> start!93486 (= res!707155 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32620 a!3488)) (bvslt (size!32620 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93486 e!602224))

(assert (=> start!93486 true))

(declare-fun array_inv!24705 (array!66737) Bool)

(assert (=> start!93486 (array_inv!24705 a!3488)))

(declare-fun b!1058473 () Bool)

(assert (=> b!1058473 (= e!602222 true)))

(assert (=> b!1058473 (not (= (select (arr!32083 a!3488) lt!466927) k!2747))))

(declare-datatypes ((Unit!34697 0))(
  ( (Unit!34698) )
))
(declare-fun lt!466925 () Unit!34697)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66737 (_ BitVec 64) (_ BitVec 32) List!22526) Unit!34697)

(assert (=> b!1058473 (= lt!466925 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 lt!466927 Nil!22523))))

(declare-fun lt!466924 () (_ BitVec 32))

(assert (=> b!1058473 (arrayContainsKey!0 a!3488 k!2747 lt!466924)))

(declare-fun lt!466926 () Unit!34697)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66737 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34697)

(assert (=> b!1058473 (= lt!466926 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466924))))

(assert (=> b!1058473 (= lt!466924 (bvadd #b00000000000000000000000000000001 lt!466927))))

(assert (=> b!1058473 (arrayNoDuplicates!0 a!3488 lt!466927 Nil!22523)))

(declare-fun lt!466923 () Unit!34697)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66737 (_ BitVec 32) (_ BitVec 32)) Unit!34697)

(assert (=> b!1058473 (= lt!466923 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466927))))

(declare-fun b!1058474 () Bool)

(declare-fun e!602223 () Bool)

(assert (=> b!1058474 (= e!602223 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1058475 () Bool)

(assert (=> b!1058475 (= e!602220 e!602223)))

(declare-fun res!707154 () Bool)

(assert (=> b!1058475 (=> res!707154 e!602223)))

(assert (=> b!1058475 (= res!707154 (or (bvsgt lt!466927 i!1381) (bvsle i!1381 lt!466927)))))

(assert (= (and start!93486 res!707155) b!1058468))

(assert (= (and b!1058468 res!707151) b!1058467))

(assert (= (and b!1058467 res!707156) b!1058469))

(assert (= (and b!1058469 res!707152) b!1058472))

(assert (= (and b!1058472 res!707158) b!1058471))

(assert (= (and b!1058471 res!707157) b!1058470))

(assert (= (and b!1058470 res!707153) b!1058475))

(assert (= (and b!1058475 (not res!707154)) b!1058474))

(assert (= (and b!1058470 (not res!707150)) b!1058473))

(declare-fun m!978249 () Bool)

(assert (=> b!1058470 m!978249))

(declare-fun m!978251 () Bool)

(assert (=> b!1058470 m!978251))

(declare-fun m!978253 () Bool)

(assert (=> b!1058467 m!978253))

(declare-fun m!978255 () Bool)

(assert (=> b!1058473 m!978255))

(declare-fun m!978257 () Bool)

(assert (=> b!1058473 m!978257))

(declare-fun m!978259 () Bool)

(assert (=> b!1058473 m!978259))

(declare-fun m!978261 () Bool)

(assert (=> b!1058473 m!978261))

(declare-fun m!978263 () Bool)

(assert (=> b!1058473 m!978263))

(declare-fun m!978265 () Bool)

(assert (=> b!1058473 m!978265))

(declare-fun m!978267 () Bool)

(assert (=> b!1058472 m!978267))

(assert (=> b!1058472 m!978249))

(declare-fun m!978269 () Bool)

(assert (=> b!1058468 m!978269))

(declare-fun m!978271 () Bool)

(assert (=> b!1058474 m!978271))

(declare-fun m!978273 () Bool)

(assert (=> start!93486 m!978273))

(declare-fun m!978275 () Bool)

(assert (=> b!1058469 m!978275))

(declare-fun m!978277 () Bool)

(assert (=> b!1058471 m!978277))

(push 1)

