; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93490 () Bool)

(assert start!93490)

(declare-fun b!1058521 () Bool)

(declare-fun res!707210 () Bool)

(declare-fun e!602263 () Bool)

(assert (=> b!1058521 (=> (not res!707210) (not e!602263))))

(declare-datatypes ((array!66741 0))(
  ( (array!66742 (arr!32085 (Array (_ BitVec 32) (_ BitVec 64))) (size!32622 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66741)

(declare-datatypes ((List!22528 0))(
  ( (Nil!22525) (Cons!22524 (h!23733 (_ BitVec 64)) (t!31842 List!22528)) )
))
(declare-fun arrayNoDuplicates!0 (array!66741 (_ BitVec 32) List!22528) Bool)

(assert (=> b!1058521 (= res!707210 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22525))))

(declare-fun b!1058522 () Bool)

(declare-fun res!707209 () Bool)

(assert (=> b!1058522 (=> (not res!707209) (not e!602263))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1058522 (= res!707209 (validKeyInArray!0 k!2747))))

(declare-fun res!707211 () Bool)

(assert (=> start!93490 (=> (not res!707211) (not e!602263))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> start!93490 (= res!707211 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32622 a!3488)) (bvslt (size!32622 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93490 e!602263))

(assert (=> start!93490 true))

(declare-fun array_inv!24707 (array!66741) Bool)

(assert (=> start!93490 (array_inv!24707 a!3488)))

(declare-fun b!1058523 () Bool)

(declare-fun res!707208 () Bool)

(assert (=> b!1058523 (=> (not res!707208) (not e!602263))))

(assert (=> b!1058523 (= res!707208 (= (select (arr!32085 a!3488) i!1381) k!2747))))

(declare-fun b!1058524 () Bool)

(declare-fun e!602266 () Bool)

(declare-fun e!602268 () Bool)

(assert (=> b!1058524 (= e!602266 e!602268)))

(declare-fun res!707204 () Bool)

(assert (=> b!1058524 (=> res!707204 e!602268)))

(declare-fun lt!466960 () (_ BitVec 32))

(assert (=> b!1058524 (= res!707204 (or (bvsgt lt!466960 i!1381) (bvsle i!1381 lt!466960)))))

(declare-fun b!1058525 () Bool)

(declare-fun e!602262 () Bool)

(declare-fun e!602267 () Bool)

(assert (=> b!1058525 (= e!602262 e!602267)))

(declare-fun res!707206 () Bool)

(assert (=> b!1058525 (=> (not res!707206) (not e!602267))))

(assert (=> b!1058525 (= res!707206 (not (= lt!466960 i!1381)))))

(declare-fun lt!466963 () array!66741)

(declare-fun arrayScanForKey!0 (array!66741 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058525 (= lt!466960 (arrayScanForKey!0 lt!466963 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1058526 () Bool)

(declare-fun e!602265 () Bool)

(assert (=> b!1058526 (= e!602265 true)))

(assert (=> b!1058526 (not (= (select (arr!32085 a!3488) lt!466960) k!2747))))

(declare-datatypes ((Unit!34701 0))(
  ( (Unit!34702) )
))
(declare-fun lt!466962 () Unit!34701)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66741 (_ BitVec 64) (_ BitVec 32) List!22528) Unit!34701)

(assert (=> b!1058526 (= lt!466962 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 lt!466960 Nil!22525))))

(declare-fun lt!466959 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66741 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058526 (arrayContainsKey!0 a!3488 k!2747 lt!466959)))

(declare-fun lt!466958 () Unit!34701)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66741 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34701)

(assert (=> b!1058526 (= lt!466958 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466959))))

(assert (=> b!1058526 (= lt!466959 (bvadd #b00000000000000000000000000000001 lt!466960))))

(assert (=> b!1058526 (arrayNoDuplicates!0 a!3488 lt!466960 Nil!22525)))

(declare-fun lt!466961 () Unit!34701)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66741 (_ BitVec 32) (_ BitVec 32)) Unit!34701)

(assert (=> b!1058526 (= lt!466961 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466960))))

(declare-fun b!1058527 () Bool)

(assert (=> b!1058527 (= e!602268 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1058528 () Bool)

(assert (=> b!1058528 (= e!602263 e!602262)))

(declare-fun res!707212 () Bool)

(assert (=> b!1058528 (=> (not res!707212) (not e!602262))))

(assert (=> b!1058528 (= res!707212 (arrayContainsKey!0 lt!466963 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1058528 (= lt!466963 (array!66742 (store (arr!32085 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32622 a!3488)))))

(declare-fun b!1058529 () Bool)

(assert (=> b!1058529 (= e!602267 (not e!602265))))

(declare-fun res!707205 () Bool)

(assert (=> b!1058529 (=> res!707205 e!602265)))

(assert (=> b!1058529 (= res!707205 (or (bvsgt lt!466960 i!1381) (bvsle i!1381 lt!466960)))))

(assert (=> b!1058529 e!602266))

(declare-fun res!707207 () Bool)

(assert (=> b!1058529 (=> (not res!707207) (not e!602266))))

(assert (=> b!1058529 (= res!707207 (= (select (store (arr!32085 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466960) k!2747))))

(assert (= (and start!93490 res!707211) b!1058521))

(assert (= (and b!1058521 res!707210) b!1058522))

(assert (= (and b!1058522 res!707209) b!1058523))

(assert (= (and b!1058523 res!707208) b!1058528))

(assert (= (and b!1058528 res!707212) b!1058525))

(assert (= (and b!1058525 res!707206) b!1058529))

(assert (= (and b!1058529 res!707207) b!1058524))

(assert (= (and b!1058524 (not res!707204)) b!1058527))

(assert (= (and b!1058529 (not res!707205)) b!1058526))

(declare-fun m!978309 () Bool)

(assert (=> b!1058528 m!978309))

(declare-fun m!978311 () Bool)

(assert (=> b!1058528 m!978311))

(declare-fun m!978313 () Bool)

(assert (=> b!1058523 m!978313))

(declare-fun m!978315 () Bool)

(assert (=> b!1058522 m!978315))

(declare-fun m!978317 () Bool)

(assert (=> b!1058525 m!978317))

(assert (=> b!1058529 m!978311))

(declare-fun m!978319 () Bool)

(assert (=> b!1058529 m!978319))

(declare-fun m!978321 () Bool)

(assert (=> b!1058521 m!978321))

(declare-fun m!978323 () Bool)

(assert (=> b!1058526 m!978323))

(declare-fun m!978325 () Bool)

(assert (=> b!1058526 m!978325))

(declare-fun m!978327 () Bool)

(assert (=> b!1058526 m!978327))

(declare-fun m!978329 () Bool)

(assert (=> b!1058526 m!978329))

(declare-fun m!978331 () Bool)

(assert (=> b!1058526 m!978331))

(declare-fun m!978333 () Bool)

(assert (=> b!1058526 m!978333))

(declare-fun m!978335 () Bool)

(assert (=> b!1058527 m!978335))

(declare-fun m!978337 () Bool)

(assert (=> start!93490 m!978337))

(push 1)

