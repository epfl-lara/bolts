; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27238 () Bool)

(assert start!27238)

(declare-fun b!281860 () Bool)

(declare-fun res!144973 () Bool)

(declare-fun e!179057 () Bool)

(assert (=> b!281860 (=> (not res!144973) (not e!179057))))

(declare-datatypes ((array!14045 0))(
  ( (array!14046 (arr!6664 (Array (_ BitVec 32) (_ BitVec 64))) (size!7016 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14045)

(declare-datatypes ((List!4493 0))(
  ( (Nil!4490) (Cons!4489 (h!5159 (_ BitVec 64)) (t!9583 List!4493)) )
))
(declare-fun arrayNoDuplicates!0 (array!14045 (_ BitVec 32) List!4493) Bool)

(assert (=> b!281860 (= res!144973 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4490))))

(declare-fun res!144972 () Bool)

(assert (=> start!27238 (=> (not res!144972) (not e!179057))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27238 (= res!144972 (validMask!0 mask!3868))))

(assert (=> start!27238 e!179057))

(declare-fun array_inv!4618 (array!14045) Bool)

(assert (=> start!27238 (array_inv!4618 a!3325)))

(assert (=> start!27238 true))

(declare-fun b!281861 () Bool)

(declare-fun res!144967 () Bool)

(declare-fun e!179056 () Bool)

(assert (=> b!281861 (=> (not res!144967) (not e!179056))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14045 (_ BitVec 32)) Bool)

(assert (=> b!281861 (= res!144967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281862 () Bool)

(declare-fun res!144975 () Bool)

(assert (=> b!281862 (=> (not res!144975) (not e!179057))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14045 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281862 (= res!144975 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281863 () Bool)

(declare-fun res!144971 () Bool)

(assert (=> b!281863 (=> (not res!144971) (not e!179057))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!281863 (= res!144971 (and (= (size!7016 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7016 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7016 a!3325))))))

(declare-fun b!281864 () Bool)

(declare-fun e!179059 () Bool)

(assert (=> b!281864 (= e!179056 e!179059)))

(declare-fun res!144970 () Bool)

(assert (=> b!281864 (=> (not res!144970) (not e!179059))))

(assert (=> b!281864 (= res!144970 (not (= startIndex!26 i!1267)))))

(declare-fun lt!139274 () array!14045)

(assert (=> b!281864 (= lt!139274 (array!14046 (store (arr!6664 a!3325) i!1267 k!2581) (size!7016 a!3325)))))

(declare-fun b!281865 () Bool)

(assert (=> b!281865 (= e!179059 (not true))))

(assert (=> b!281865 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8929 0))(
  ( (Unit!8930) )
))
(declare-fun lt!139272 () Unit!8929)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14045 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8929)

(assert (=> b!281865 (= lt!139272 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1833 0))(
  ( (MissingZero!1833 (index!9502 (_ BitVec 32))) (Found!1833 (index!9503 (_ BitVec 32))) (Intermediate!1833 (undefined!2645 Bool) (index!9504 (_ BitVec 32)) (x!27695 (_ BitVec 32))) (Undefined!1833) (MissingVacant!1833 (index!9505 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14045 (_ BitVec 32)) SeekEntryResult!1833)

(assert (=> b!281865 (= (seekEntryOrOpen!0 (select (arr!6664 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6664 a!3325) i!1267 k!2581) startIndex!26) lt!139274 mask!3868))))

(declare-fun lt!139271 () Unit!8929)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14045 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8929)

(assert (=> b!281865 (= lt!139271 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!281865 (arrayNoDuplicates!0 lt!139274 #b00000000000000000000000000000000 Nil!4490)))

(declare-fun lt!139273 () Unit!8929)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14045 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4493) Unit!8929)

(assert (=> b!281865 (= lt!139273 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4490))))

(declare-fun b!281866 () Bool)

(declare-fun res!144974 () Bool)

(assert (=> b!281866 (=> (not res!144974) (not e!179057))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281866 (= res!144974 (validKeyInArray!0 k!2581))))

(declare-fun b!281867 () Bool)

(declare-fun res!144968 () Bool)

(assert (=> b!281867 (=> (not res!144968) (not e!179059))))

(assert (=> b!281867 (= res!144968 (validKeyInArray!0 (select (arr!6664 a!3325) startIndex!26)))))

(declare-fun b!281868 () Bool)

(assert (=> b!281868 (= e!179057 e!179056)))

(declare-fun res!144969 () Bool)

(assert (=> b!281868 (=> (not res!144969) (not e!179056))))

(declare-fun lt!139270 () SeekEntryResult!1833)

(assert (=> b!281868 (= res!144969 (or (= lt!139270 (MissingZero!1833 i!1267)) (= lt!139270 (MissingVacant!1833 i!1267))))))

(assert (=> b!281868 (= lt!139270 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!27238 res!144972) b!281863))

(assert (= (and b!281863 res!144971) b!281866))

(assert (= (and b!281866 res!144974) b!281860))

(assert (= (and b!281860 res!144973) b!281862))

(assert (= (and b!281862 res!144975) b!281868))

(assert (= (and b!281868 res!144969) b!281861))

(assert (= (and b!281861 res!144967) b!281864))

(assert (= (and b!281864 res!144970) b!281867))

(assert (= (and b!281867 res!144968) b!281865))

(declare-fun m!296293 () Bool)

(assert (=> b!281866 m!296293))

(declare-fun m!296295 () Bool)

(assert (=> b!281865 m!296295))

(declare-fun m!296297 () Bool)

(assert (=> b!281865 m!296297))

(assert (=> b!281865 m!296297))

(declare-fun m!296299 () Bool)

(assert (=> b!281865 m!296299))

(declare-fun m!296301 () Bool)

(assert (=> b!281865 m!296301))

(declare-fun m!296303 () Bool)

(assert (=> b!281865 m!296303))

(declare-fun m!296305 () Bool)

(assert (=> b!281865 m!296305))

(declare-fun m!296307 () Bool)

(assert (=> b!281865 m!296307))

(assert (=> b!281865 m!296303))

(declare-fun m!296309 () Bool)

(assert (=> b!281865 m!296309))

(declare-fun m!296311 () Bool)

(assert (=> b!281865 m!296311))

(declare-fun m!296313 () Bool)

(assert (=> b!281865 m!296313))

(declare-fun m!296315 () Bool)

(assert (=> b!281868 m!296315))

(assert (=> b!281864 m!296311))

(declare-fun m!296317 () Bool)

(assert (=> start!27238 m!296317))

(declare-fun m!296319 () Bool)

(assert (=> start!27238 m!296319))

(declare-fun m!296321 () Bool)

(assert (=> b!281860 m!296321))

(declare-fun m!296323 () Bool)

(assert (=> b!281861 m!296323))

(assert (=> b!281867 m!296303))

(assert (=> b!281867 m!296303))

(declare-fun m!296325 () Bool)

(assert (=> b!281867 m!296325))

(declare-fun m!296327 () Bool)

(assert (=> b!281862 m!296327))

(push 1)

