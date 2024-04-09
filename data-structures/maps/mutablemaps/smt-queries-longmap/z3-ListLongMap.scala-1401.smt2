; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27270 () Bool)

(assert start!27270)

(declare-fun res!145407 () Bool)

(declare-fun e!179251 () Bool)

(assert (=> start!27270 (=> (not res!145407) (not e!179251))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27270 (= res!145407 (validMask!0 mask!3868))))

(assert (=> start!27270 e!179251))

(declare-datatypes ((array!14077 0))(
  ( (array!14078 (arr!6680 (Array (_ BitVec 32) (_ BitVec 64))) (size!7032 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14077)

(declare-fun array_inv!4634 (array!14077) Bool)

(assert (=> start!27270 (array_inv!4634 a!3325)))

(assert (=> start!27270 true))

(declare-fun b!282292 () Bool)

(declare-fun e!179250 () Bool)

(assert (=> b!282292 (= e!179250 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14077 (_ BitVec 32)) Bool)

(assert (=> b!282292 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8961 0))(
  ( (Unit!8962) )
))
(declare-fun lt!139511 () Unit!8961)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14077 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8961)

(assert (=> b!282292 (= lt!139511 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun lt!139514 () array!14077)

(declare-datatypes ((SeekEntryResult!1849 0))(
  ( (MissingZero!1849 (index!9566 (_ BitVec 32))) (Found!1849 (index!9567 (_ BitVec 32))) (Intermediate!1849 (undefined!2661 Bool) (index!9568 (_ BitVec 32)) (x!27751 (_ BitVec 32))) (Undefined!1849) (MissingVacant!1849 (index!9569 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14077 (_ BitVec 32)) SeekEntryResult!1849)

(assert (=> b!282292 (= (seekEntryOrOpen!0 (select (arr!6680 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6680 a!3325) i!1267 k0!2581) startIndex!26) lt!139514 mask!3868))))

(declare-fun lt!139512 () Unit!8961)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14077 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8961)

(assert (=> b!282292 (= lt!139512 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4509 0))(
  ( (Nil!4506) (Cons!4505 (h!5175 (_ BitVec 64)) (t!9599 List!4509)) )
))
(declare-fun arrayNoDuplicates!0 (array!14077 (_ BitVec 32) List!4509) Bool)

(assert (=> b!282292 (arrayNoDuplicates!0 lt!139514 #b00000000000000000000000000000000 Nil!4506)))

(declare-fun lt!139513 () Unit!8961)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14077 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4509) Unit!8961)

(assert (=> b!282292 (= lt!139513 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4506))))

(declare-fun b!282293 () Bool)

(declare-fun res!145405 () Bool)

(assert (=> b!282293 (=> (not res!145405) (not e!179251))))

(declare-fun arrayContainsKey!0 (array!14077 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282293 (= res!145405 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282294 () Bool)

(declare-fun res!145401 () Bool)

(assert (=> b!282294 (=> (not res!145401) (not e!179251))))

(assert (=> b!282294 (= res!145401 (and (= (size!7032 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7032 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7032 a!3325))))))

(declare-fun b!282295 () Bool)

(declare-fun res!145404 () Bool)

(declare-fun e!179249 () Bool)

(assert (=> b!282295 (=> (not res!145404) (not e!179249))))

(assert (=> b!282295 (= res!145404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282296 () Bool)

(declare-fun res!145402 () Bool)

(assert (=> b!282296 (=> (not res!145402) (not e!179250))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282296 (= res!145402 (validKeyInArray!0 (select (arr!6680 a!3325) startIndex!26)))))

(declare-fun b!282297 () Bool)

(assert (=> b!282297 (= e!179249 e!179250)))

(declare-fun res!145406 () Bool)

(assert (=> b!282297 (=> (not res!145406) (not e!179250))))

(assert (=> b!282297 (= res!145406 (not (= startIndex!26 i!1267)))))

(assert (=> b!282297 (= lt!139514 (array!14078 (store (arr!6680 a!3325) i!1267 k0!2581) (size!7032 a!3325)))))

(declare-fun b!282298 () Bool)

(assert (=> b!282298 (= e!179251 e!179249)))

(declare-fun res!145403 () Bool)

(assert (=> b!282298 (=> (not res!145403) (not e!179249))))

(declare-fun lt!139510 () SeekEntryResult!1849)

(assert (=> b!282298 (= res!145403 (or (= lt!139510 (MissingZero!1849 i!1267)) (= lt!139510 (MissingVacant!1849 i!1267))))))

(assert (=> b!282298 (= lt!139510 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!282299 () Bool)

(declare-fun res!145399 () Bool)

(assert (=> b!282299 (=> (not res!145399) (not e!179251))))

(assert (=> b!282299 (= res!145399 (validKeyInArray!0 k0!2581))))

(declare-fun b!282300 () Bool)

(declare-fun res!145400 () Bool)

(assert (=> b!282300 (=> (not res!145400) (not e!179251))))

(assert (=> b!282300 (= res!145400 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4506))))

(assert (= (and start!27270 res!145407) b!282294))

(assert (= (and b!282294 res!145401) b!282299))

(assert (= (and b!282299 res!145399) b!282300))

(assert (= (and b!282300 res!145400) b!282293))

(assert (= (and b!282293 res!145405) b!282298))

(assert (= (and b!282298 res!145403) b!282295))

(assert (= (and b!282295 res!145404) b!282297))

(assert (= (and b!282297 res!145406) b!282296))

(assert (= (and b!282296 res!145402) b!282292))

(declare-fun m!296869 () Bool)

(assert (=> b!282300 m!296869))

(declare-fun m!296871 () Bool)

(assert (=> b!282297 m!296871))

(declare-fun m!296873 () Bool)

(assert (=> b!282292 m!296873))

(declare-fun m!296875 () Bool)

(assert (=> b!282292 m!296875))

(assert (=> b!282292 m!296871))

(declare-fun m!296877 () Bool)

(assert (=> b!282292 m!296877))

(assert (=> b!282292 m!296875))

(declare-fun m!296879 () Bool)

(assert (=> b!282292 m!296879))

(declare-fun m!296881 () Bool)

(assert (=> b!282292 m!296881))

(declare-fun m!296883 () Bool)

(assert (=> b!282292 m!296883))

(declare-fun m!296885 () Bool)

(assert (=> b!282292 m!296885))

(assert (=> b!282292 m!296881))

(declare-fun m!296887 () Bool)

(assert (=> b!282292 m!296887))

(declare-fun m!296889 () Bool)

(assert (=> b!282292 m!296889))

(declare-fun m!296891 () Bool)

(assert (=> b!282299 m!296891))

(declare-fun m!296893 () Bool)

(assert (=> start!27270 m!296893))

(declare-fun m!296895 () Bool)

(assert (=> start!27270 m!296895))

(declare-fun m!296897 () Bool)

(assert (=> b!282293 m!296897))

(declare-fun m!296899 () Bool)

(assert (=> b!282298 m!296899))

(assert (=> b!282296 m!296881))

(assert (=> b!282296 m!296881))

(declare-fun m!296901 () Bool)

(assert (=> b!282296 m!296901))

(declare-fun m!296903 () Bool)

(assert (=> b!282295 m!296903))

(check-sat (not start!27270) (not b!282293) (not b!282299) (not b!282298) (not b!282300) (not b!282295) (not b!282292) (not b!282296))
(check-sat)
