; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27294 () Bool)

(assert start!27294)

(declare-fun b!282616 () Bool)

(declare-fun res!145726 () Bool)

(declare-fun e!179392 () Bool)

(assert (=> b!282616 (=> (not res!145726) (not e!179392))))

(declare-datatypes ((array!14101 0))(
  ( (array!14102 (arr!6692 (Array (_ BitVec 32) (_ BitVec 64))) (size!7044 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14101)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14101 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282616 (= res!145726 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282617 () Bool)

(declare-fun res!145725 () Bool)

(declare-fun e!179393 () Bool)

(assert (=> b!282617 (=> (not res!145725) (not e!179393))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282617 (= res!145725 (validKeyInArray!0 (select (arr!6692 a!3325) startIndex!26)))))

(declare-fun b!282618 () Bool)

(declare-fun e!179394 () Bool)

(assert (=> b!282618 (= e!179394 e!179393)))

(declare-fun res!145723 () Bool)

(assert (=> b!282618 (=> (not res!145723) (not e!179393))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!282618 (= res!145723 (not (= startIndex!26 i!1267)))))

(declare-fun lt!139693 () array!14101)

(assert (=> b!282618 (= lt!139693 (array!14102 (store (arr!6692 a!3325) i!1267 k0!2581) (size!7044 a!3325)))))

(declare-fun b!282619 () Bool)

(assert (=> b!282619 (= e!179393 (not true))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14101 (_ BitVec 32)) Bool)

(assert (=> b!282619 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8985 0))(
  ( (Unit!8986) )
))
(declare-fun lt!139690 () Unit!8985)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14101 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8985)

(assert (=> b!282619 (= lt!139690 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1861 0))(
  ( (MissingZero!1861 (index!9614 (_ BitVec 32))) (Found!1861 (index!9615 (_ BitVec 32))) (Intermediate!1861 (undefined!2673 Bool) (index!9616 (_ BitVec 32)) (x!27795 (_ BitVec 32))) (Undefined!1861) (MissingVacant!1861 (index!9617 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14101 (_ BitVec 32)) SeekEntryResult!1861)

(assert (=> b!282619 (= (seekEntryOrOpen!0 (select (arr!6692 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6692 a!3325) i!1267 k0!2581) startIndex!26) lt!139693 mask!3868))))

(declare-fun lt!139691 () Unit!8985)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14101 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8985)

(assert (=> b!282619 (= lt!139691 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4521 0))(
  ( (Nil!4518) (Cons!4517 (h!5187 (_ BitVec 64)) (t!9611 List!4521)) )
))
(declare-fun arrayNoDuplicates!0 (array!14101 (_ BitVec 32) List!4521) Bool)

(assert (=> b!282619 (arrayNoDuplicates!0 lt!139693 #b00000000000000000000000000000000 Nil!4518)))

(declare-fun lt!139692 () Unit!8985)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14101 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4521) Unit!8985)

(assert (=> b!282619 (= lt!139692 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4518))))

(declare-fun b!282620 () Bool)

(declare-fun res!145727 () Bool)

(assert (=> b!282620 (=> (not res!145727) (not e!179392))))

(assert (=> b!282620 (= res!145727 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4518))))

(declare-fun b!282621 () Bool)

(declare-fun res!145730 () Bool)

(assert (=> b!282621 (=> (not res!145730) (not e!179394))))

(assert (=> b!282621 (= res!145730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282623 () Bool)

(assert (=> b!282623 (= e!179392 e!179394)))

(declare-fun res!145731 () Bool)

(assert (=> b!282623 (=> (not res!145731) (not e!179394))))

(declare-fun lt!139694 () SeekEntryResult!1861)

(assert (=> b!282623 (= res!145731 (or (= lt!139694 (MissingZero!1861 i!1267)) (= lt!139694 (MissingVacant!1861 i!1267))))))

(assert (=> b!282623 (= lt!139694 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!282624 () Bool)

(declare-fun res!145728 () Bool)

(assert (=> b!282624 (=> (not res!145728) (not e!179392))))

(assert (=> b!282624 (= res!145728 (validKeyInArray!0 k0!2581))))

(declare-fun res!145729 () Bool)

(assert (=> start!27294 (=> (not res!145729) (not e!179392))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27294 (= res!145729 (validMask!0 mask!3868))))

(assert (=> start!27294 e!179392))

(declare-fun array_inv!4646 (array!14101) Bool)

(assert (=> start!27294 (array_inv!4646 a!3325)))

(assert (=> start!27294 true))

(declare-fun b!282622 () Bool)

(declare-fun res!145724 () Bool)

(assert (=> b!282622 (=> (not res!145724) (not e!179392))))

(assert (=> b!282622 (= res!145724 (and (= (size!7044 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7044 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7044 a!3325))))))

(assert (= (and start!27294 res!145729) b!282622))

(assert (= (and b!282622 res!145724) b!282624))

(assert (= (and b!282624 res!145728) b!282620))

(assert (= (and b!282620 res!145727) b!282616))

(assert (= (and b!282616 res!145726) b!282623))

(assert (= (and b!282623 res!145731) b!282621))

(assert (= (and b!282621 res!145730) b!282618))

(assert (= (and b!282618 res!145723) b!282617))

(assert (= (and b!282617 res!145725) b!282619))

(declare-fun m!297301 () Bool)

(assert (=> b!282620 m!297301))

(declare-fun m!297303 () Bool)

(assert (=> b!282621 m!297303))

(declare-fun m!297305 () Bool)

(assert (=> b!282619 m!297305))

(declare-fun m!297307 () Bool)

(assert (=> b!282619 m!297307))

(assert (=> b!282619 m!297307))

(declare-fun m!297309 () Bool)

(assert (=> b!282619 m!297309))

(declare-fun m!297311 () Bool)

(assert (=> b!282619 m!297311))

(declare-fun m!297313 () Bool)

(assert (=> b!282619 m!297313))

(declare-fun m!297315 () Bool)

(assert (=> b!282619 m!297315))

(declare-fun m!297317 () Bool)

(assert (=> b!282619 m!297317))

(declare-fun m!297319 () Bool)

(assert (=> b!282619 m!297319))

(assert (=> b!282619 m!297315))

(declare-fun m!297321 () Bool)

(assert (=> b!282619 m!297321))

(declare-fun m!297323 () Bool)

(assert (=> b!282619 m!297323))

(declare-fun m!297325 () Bool)

(assert (=> b!282624 m!297325))

(assert (=> b!282618 m!297311))

(declare-fun m!297327 () Bool)

(assert (=> b!282623 m!297327))

(assert (=> b!282617 m!297315))

(assert (=> b!282617 m!297315))

(declare-fun m!297329 () Bool)

(assert (=> b!282617 m!297329))

(declare-fun m!297331 () Bool)

(assert (=> start!27294 m!297331))

(declare-fun m!297333 () Bool)

(assert (=> start!27294 m!297333))

(declare-fun m!297335 () Bool)

(assert (=> b!282616 m!297335))

(check-sat (not b!282624) (not b!282616) (not b!282617) (not b!282621) (not b!282619) (not b!282623) (not b!282620) (not start!27294))
(check-sat)
