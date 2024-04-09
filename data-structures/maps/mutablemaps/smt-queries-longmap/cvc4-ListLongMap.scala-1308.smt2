; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26420 () Bool)

(assert start!26420)

(declare-fun b!273910 () Bool)

(declare-fun res!137945 () Bool)

(declare-fun e!175468 () Bool)

(assert (=> b!273910 (=> (not res!137945) (not e!175468))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273910 (= res!137945 (validKeyInArray!0 k!2581))))

(declare-fun b!273911 () Bool)

(declare-fun res!137944 () Bool)

(declare-fun e!175467 () Bool)

(assert (=> b!273911 (=> (not res!137944) (not e!175467))))

(declare-datatypes ((array!13506 0))(
  ( (array!13507 (arr!6402 (Array (_ BitVec 32) (_ BitVec 64))) (size!6754 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13506)

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!273911 (= res!137944 (validKeyInArray!0 (select (arr!6402 a!3325) startIndex!26)))))

(declare-fun res!137946 () Bool)

(assert (=> start!26420 (=> (not res!137946) (not e!175468))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26420 (= res!137946 (validMask!0 mask!3868))))

(assert (=> start!26420 e!175468))

(declare-fun array_inv!4356 (array!13506) Bool)

(assert (=> start!26420 (array_inv!4356 a!3325)))

(assert (=> start!26420 true))

(declare-fun b!273912 () Bool)

(declare-fun e!175466 () Bool)

(assert (=> b!273912 (= e!175466 e!175467)))

(declare-fun res!137938 () Bool)

(assert (=> b!273912 (=> (not res!137938) (not e!175467))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!273912 (= res!137938 (not (= startIndex!26 i!1267)))))

(declare-fun lt!136693 () array!13506)

(assert (=> b!273912 (= lt!136693 (array!13507 (store (arr!6402 a!3325) i!1267 k!2581) (size!6754 a!3325)))))

(declare-fun b!273913 () Bool)

(assert (=> b!273913 (= e!175467 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13506 (_ BitVec 32)) Bool)

(assert (=> b!273913 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8608 0))(
  ( (Unit!8609) )
))
(declare-fun lt!136694 () Unit!8608)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13506 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8608)

(assert (=> b!273913 (= lt!136694 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1571 0))(
  ( (MissingZero!1571 (index!8454 (_ BitVec 32))) (Found!1571 (index!8455 (_ BitVec 32))) (Intermediate!1571 (undefined!2383 Bool) (index!8456 (_ BitVec 32)) (x!26720 (_ BitVec 32))) (Undefined!1571) (MissingVacant!1571 (index!8457 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13506 (_ BitVec 32)) SeekEntryResult!1571)

(assert (=> b!273913 (= (seekEntryOrOpen!0 (select (arr!6402 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6402 a!3325) i!1267 k!2581) startIndex!26) lt!136693 mask!3868))))

(declare-fun lt!136691 () Unit!8608)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13506 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8608)

(assert (=> b!273913 (= lt!136691 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4231 0))(
  ( (Nil!4228) (Cons!4227 (h!4894 (_ BitVec 64)) (t!9321 List!4231)) )
))
(declare-fun arrayNoDuplicates!0 (array!13506 (_ BitVec 32) List!4231) Bool)

(assert (=> b!273913 (arrayNoDuplicates!0 lt!136693 #b00000000000000000000000000000000 Nil!4228)))

(declare-fun lt!136690 () Unit!8608)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13506 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4231) Unit!8608)

(assert (=> b!273913 (= lt!136690 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4228))))

(declare-fun b!273914 () Bool)

(assert (=> b!273914 (= e!175468 e!175466)))

(declare-fun res!137940 () Bool)

(assert (=> b!273914 (=> (not res!137940) (not e!175466))))

(declare-fun lt!136692 () SeekEntryResult!1571)

(assert (=> b!273914 (= res!137940 (or (= lt!136692 (MissingZero!1571 i!1267)) (= lt!136692 (MissingVacant!1571 i!1267))))))

(assert (=> b!273914 (= lt!136692 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273915 () Bool)

(declare-fun res!137939 () Bool)

(assert (=> b!273915 (=> (not res!137939) (not e!175466))))

(assert (=> b!273915 (= res!137939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273916 () Bool)

(declare-fun res!137942 () Bool)

(assert (=> b!273916 (=> (not res!137942) (not e!175468))))

(assert (=> b!273916 (= res!137942 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4228))))

(declare-fun b!273917 () Bool)

(declare-fun res!137943 () Bool)

(assert (=> b!273917 (=> (not res!137943) (not e!175468))))

(declare-fun arrayContainsKey!0 (array!13506 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273917 (= res!137943 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273918 () Bool)

(declare-fun res!137941 () Bool)

(assert (=> b!273918 (=> (not res!137941) (not e!175468))))

(assert (=> b!273918 (= res!137941 (and (= (size!6754 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6754 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6754 a!3325))))))

(assert (= (and start!26420 res!137946) b!273918))

(assert (= (and b!273918 res!137941) b!273910))

(assert (= (and b!273910 res!137945) b!273916))

(assert (= (and b!273916 res!137942) b!273917))

(assert (= (and b!273917 res!137943) b!273914))

(assert (= (and b!273914 res!137940) b!273915))

(assert (= (and b!273915 res!137939) b!273912))

(assert (= (and b!273912 res!137938) b!273911))

(assert (= (and b!273911 res!137944) b!273913))

(declare-fun m!289315 () Bool)

(assert (=> start!26420 m!289315))

(declare-fun m!289317 () Bool)

(assert (=> start!26420 m!289317))

(declare-fun m!289319 () Bool)

(assert (=> b!273910 m!289319))

(declare-fun m!289321 () Bool)

(assert (=> b!273914 m!289321))

(declare-fun m!289323 () Bool)

(assert (=> b!273916 m!289323))

(declare-fun m!289325 () Bool)

(assert (=> b!273911 m!289325))

(assert (=> b!273911 m!289325))

(declare-fun m!289327 () Bool)

(assert (=> b!273911 m!289327))

(declare-fun m!289329 () Bool)

(assert (=> b!273912 m!289329))

(declare-fun m!289331 () Bool)

(assert (=> b!273917 m!289331))

(declare-fun m!289333 () Bool)

(assert (=> b!273915 m!289333))

(declare-fun m!289335 () Bool)

(assert (=> b!273913 m!289335))

(declare-fun m!289337 () Bool)

(assert (=> b!273913 m!289337))

(declare-fun m!289339 () Bool)

(assert (=> b!273913 m!289339))

(declare-fun m!289341 () Bool)

(assert (=> b!273913 m!289341))

(assert (=> b!273913 m!289339))

(assert (=> b!273913 m!289329))

(declare-fun m!289343 () Bool)

(assert (=> b!273913 m!289343))

(assert (=> b!273913 m!289325))

(declare-fun m!289345 () Bool)

(assert (=> b!273913 m!289345))

(declare-fun m!289347 () Bool)

(assert (=> b!273913 m!289347))

(assert (=> b!273913 m!289325))

(declare-fun m!289349 () Bool)

(assert (=> b!273913 m!289349))

(push 1)

