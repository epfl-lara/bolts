; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27240 () Bool)

(assert start!27240)

(declare-fun b!281887 () Bool)

(declare-fun res!144995 () Bool)

(declare-fun e!179071 () Bool)

(assert (=> b!281887 (=> (not res!144995) (not e!179071))))

(declare-datatypes ((array!14047 0))(
  ( (array!14048 (arr!6665 (Array (_ BitVec 32) (_ BitVec 64))) (size!7017 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14047)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14047 (_ BitVec 32)) Bool)

(assert (=> b!281887 (= res!144995 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281888 () Bool)

(declare-fun e!179068 () Bool)

(assert (=> b!281888 (= e!179071 e!179068)))

(declare-fun res!144999 () Bool)

(assert (=> b!281888 (=> (not res!144999) (not e!179068))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!281888 (= res!144999 (not (= startIndex!26 i!1267)))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun lt!139285 () array!14047)

(assert (=> b!281888 (= lt!139285 (array!14048 (store (arr!6665 a!3325) i!1267 k0!2581) (size!7017 a!3325)))))

(declare-fun b!281889 () Bool)

(assert (=> b!281889 (= e!179068 (not true))))

(assert (=> b!281889 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8931 0))(
  ( (Unit!8932) )
))
(declare-fun lt!139288 () Unit!8931)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14047 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8931)

(assert (=> b!281889 (= lt!139288 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1834 0))(
  ( (MissingZero!1834 (index!9506 (_ BitVec 32))) (Found!1834 (index!9507 (_ BitVec 32))) (Intermediate!1834 (undefined!2646 Bool) (index!9508 (_ BitVec 32)) (x!27696 (_ BitVec 32))) (Undefined!1834) (MissingVacant!1834 (index!9509 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14047 (_ BitVec 32)) SeekEntryResult!1834)

(assert (=> b!281889 (= (seekEntryOrOpen!0 (select (arr!6665 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6665 a!3325) i!1267 k0!2581) startIndex!26) lt!139285 mask!3868))))

(declare-fun lt!139286 () Unit!8931)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14047 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8931)

(assert (=> b!281889 (= lt!139286 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4494 0))(
  ( (Nil!4491) (Cons!4490 (h!5160 (_ BitVec 64)) (t!9584 List!4494)) )
))
(declare-fun arrayNoDuplicates!0 (array!14047 (_ BitVec 32) List!4494) Bool)

(assert (=> b!281889 (arrayNoDuplicates!0 lt!139285 #b00000000000000000000000000000000 Nil!4491)))

(declare-fun lt!139289 () Unit!8931)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14047 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4494) Unit!8931)

(assert (=> b!281889 (= lt!139289 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4491))))

(declare-fun res!144997 () Bool)

(declare-fun e!179069 () Bool)

(assert (=> start!27240 (=> (not res!144997) (not e!179069))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27240 (= res!144997 (validMask!0 mask!3868))))

(assert (=> start!27240 e!179069))

(declare-fun array_inv!4619 (array!14047) Bool)

(assert (=> start!27240 (array_inv!4619 a!3325)))

(assert (=> start!27240 true))

(declare-fun b!281890 () Bool)

(assert (=> b!281890 (= e!179069 e!179071)))

(declare-fun res!145001 () Bool)

(assert (=> b!281890 (=> (not res!145001) (not e!179071))))

(declare-fun lt!139287 () SeekEntryResult!1834)

(assert (=> b!281890 (= res!145001 (or (= lt!139287 (MissingZero!1834 i!1267)) (= lt!139287 (MissingVacant!1834 i!1267))))))

(assert (=> b!281890 (= lt!139287 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!281891 () Bool)

(declare-fun res!145000 () Bool)

(assert (=> b!281891 (=> (not res!145000) (not e!179069))))

(declare-fun arrayContainsKey!0 (array!14047 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281891 (= res!145000 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281892 () Bool)

(declare-fun res!145002 () Bool)

(assert (=> b!281892 (=> (not res!145002) (not e!179069))))

(assert (=> b!281892 (= res!145002 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4491))))

(declare-fun b!281893 () Bool)

(declare-fun res!144996 () Bool)

(assert (=> b!281893 (=> (not res!144996) (not e!179068))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281893 (= res!144996 (validKeyInArray!0 (select (arr!6665 a!3325) startIndex!26)))))

(declare-fun b!281894 () Bool)

(declare-fun res!144994 () Bool)

(assert (=> b!281894 (=> (not res!144994) (not e!179069))))

(assert (=> b!281894 (= res!144994 (and (= (size!7017 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7017 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7017 a!3325))))))

(declare-fun b!281895 () Bool)

(declare-fun res!144998 () Bool)

(assert (=> b!281895 (=> (not res!144998) (not e!179069))))

(assert (=> b!281895 (= res!144998 (validKeyInArray!0 k0!2581))))

(assert (= (and start!27240 res!144997) b!281894))

(assert (= (and b!281894 res!144994) b!281895))

(assert (= (and b!281895 res!144998) b!281892))

(assert (= (and b!281892 res!145002) b!281891))

(assert (= (and b!281891 res!145000) b!281890))

(assert (= (and b!281890 res!145001) b!281887))

(assert (= (and b!281887 res!144995) b!281888))

(assert (= (and b!281888 res!144999) b!281893))

(assert (= (and b!281893 res!144996) b!281889))

(declare-fun m!296329 () Bool)

(assert (=> b!281889 m!296329))

(declare-fun m!296331 () Bool)

(assert (=> b!281889 m!296331))

(declare-fun m!296333 () Bool)

(assert (=> b!281889 m!296333))

(assert (=> b!281889 m!296331))

(declare-fun m!296335 () Bool)

(assert (=> b!281889 m!296335))

(declare-fun m!296337 () Bool)

(assert (=> b!281889 m!296337))

(declare-fun m!296339 () Bool)

(assert (=> b!281889 m!296339))

(declare-fun m!296341 () Bool)

(assert (=> b!281889 m!296341))

(declare-fun m!296343 () Bool)

(assert (=> b!281889 m!296343))

(declare-fun m!296345 () Bool)

(assert (=> b!281889 m!296345))

(assert (=> b!281889 m!296339))

(declare-fun m!296347 () Bool)

(assert (=> b!281889 m!296347))

(declare-fun m!296349 () Bool)

(assert (=> start!27240 m!296349))

(declare-fun m!296351 () Bool)

(assert (=> start!27240 m!296351))

(declare-fun m!296353 () Bool)

(assert (=> b!281892 m!296353))

(assert (=> b!281888 m!296335))

(declare-fun m!296355 () Bool)

(assert (=> b!281890 m!296355))

(declare-fun m!296357 () Bool)

(assert (=> b!281887 m!296357))

(assert (=> b!281893 m!296339))

(assert (=> b!281893 m!296339))

(declare-fun m!296359 () Bool)

(assert (=> b!281893 m!296359))

(declare-fun m!296361 () Bool)

(assert (=> b!281895 m!296361))

(declare-fun m!296363 () Bool)

(assert (=> b!281891 m!296363))

(check-sat (not b!281895) (not b!281891) (not b!281889) (not b!281887) (not b!281893) (not b!281892) (not b!281890) (not start!27240))
(check-sat)
