; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26416 () Bool)

(assert start!26416)

(declare-fun b!273856 () Bool)

(declare-fun res!137888 () Bool)

(declare-fun e!175444 () Bool)

(assert (=> b!273856 (=> (not res!137888) (not e!175444))))

(declare-datatypes ((array!13502 0))(
  ( (array!13503 (arr!6400 (Array (_ BitVec 32) (_ BitVec 64))) (size!6752 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13502)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13502 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273856 (= res!137888 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273857 () Bool)

(declare-fun res!137889 () Bool)

(declare-fun e!175442 () Bool)

(assert (=> b!273857 (=> (not res!137889) (not e!175442))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273857 (= res!137889 (validKeyInArray!0 (select (arr!6400 a!3325) startIndex!26)))))

(declare-fun b!273858 () Bool)

(declare-fun e!175441 () Bool)

(assert (=> b!273858 (= e!175441 e!175442)))

(declare-fun res!137891 () Bool)

(assert (=> b!273858 (=> (not res!137891) (not e!175442))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!273858 (= res!137891 (not (= startIndex!26 i!1267)))))

(declare-fun lt!136662 () array!13502)

(assert (=> b!273858 (= lt!136662 (array!13503 (store (arr!6400 a!3325) i!1267 k!2581) (size!6752 a!3325)))))

(declare-fun b!273859 () Bool)

(declare-fun res!137884 () Bool)

(assert (=> b!273859 (=> (not res!137884) (not e!175441))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13502 (_ BitVec 32)) Bool)

(assert (=> b!273859 (= res!137884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!137890 () Bool)

(assert (=> start!26416 (=> (not res!137890) (not e!175444))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26416 (= res!137890 (validMask!0 mask!3868))))

(assert (=> start!26416 e!175444))

(declare-fun array_inv!4354 (array!13502) Bool)

(assert (=> start!26416 (array_inv!4354 a!3325)))

(assert (=> start!26416 true))

(declare-fun b!273860 () Bool)

(declare-fun res!137887 () Bool)

(assert (=> b!273860 (=> (not res!137887) (not e!175444))))

(assert (=> b!273860 (= res!137887 (validKeyInArray!0 k!2581))))

(declare-fun b!273861 () Bool)

(assert (=> b!273861 (= e!175444 e!175441)))

(declare-fun res!137886 () Bool)

(assert (=> b!273861 (=> (not res!137886) (not e!175441))))

(declare-datatypes ((SeekEntryResult!1569 0))(
  ( (MissingZero!1569 (index!8446 (_ BitVec 32))) (Found!1569 (index!8447 (_ BitVec 32))) (Intermediate!1569 (undefined!2381 Bool) (index!8448 (_ BitVec 32)) (x!26718 (_ BitVec 32))) (Undefined!1569) (MissingVacant!1569 (index!8449 (_ BitVec 32))) )
))
(declare-fun lt!136663 () SeekEntryResult!1569)

(assert (=> b!273861 (= res!137886 (or (= lt!136663 (MissingZero!1569 i!1267)) (= lt!136663 (MissingVacant!1569 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13502 (_ BitVec 32)) SeekEntryResult!1569)

(assert (=> b!273861 (= lt!136663 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273862 () Bool)

(declare-fun res!137885 () Bool)

(assert (=> b!273862 (=> (not res!137885) (not e!175444))))

(declare-datatypes ((List!4229 0))(
  ( (Nil!4226) (Cons!4225 (h!4892 (_ BitVec 64)) (t!9319 List!4229)) )
))
(declare-fun arrayNoDuplicates!0 (array!13502 (_ BitVec 32) List!4229) Bool)

(assert (=> b!273862 (= res!137885 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4226))))

(declare-fun b!273863 () Bool)

(assert (=> b!273863 (= e!175442 (not true))))

(assert (=> b!273863 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8604 0))(
  ( (Unit!8605) )
))
(declare-fun lt!136664 () Unit!8604)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13502 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8604)

(assert (=> b!273863 (= lt!136664 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!273863 (= (seekEntryOrOpen!0 (select (arr!6400 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6400 a!3325) i!1267 k!2581) startIndex!26) lt!136662 mask!3868))))

(declare-fun lt!136660 () Unit!8604)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13502 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8604)

(assert (=> b!273863 (= lt!136660 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!273863 (arrayNoDuplicates!0 lt!136662 #b00000000000000000000000000000000 Nil!4226)))

(declare-fun lt!136661 () Unit!8604)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13502 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4229) Unit!8604)

(assert (=> b!273863 (= lt!136661 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4226))))

(declare-fun b!273864 () Bool)

(declare-fun res!137892 () Bool)

(assert (=> b!273864 (=> (not res!137892) (not e!175444))))

(assert (=> b!273864 (= res!137892 (and (= (size!6752 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6752 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6752 a!3325))))))

(assert (= (and start!26416 res!137890) b!273864))

(assert (= (and b!273864 res!137892) b!273860))

(assert (= (and b!273860 res!137887) b!273862))

(assert (= (and b!273862 res!137885) b!273856))

(assert (= (and b!273856 res!137888) b!273861))

(assert (= (and b!273861 res!137886) b!273859))

(assert (= (and b!273859 res!137884) b!273858))

(assert (= (and b!273858 res!137891) b!273857))

(assert (= (and b!273857 res!137889) b!273863))

(declare-fun m!289243 () Bool)

(assert (=> b!273860 m!289243))

(declare-fun m!289245 () Bool)

(assert (=> b!273858 m!289245))

(declare-fun m!289247 () Bool)

(assert (=> b!273862 m!289247))

(declare-fun m!289249 () Bool)

(assert (=> b!273861 m!289249))

(declare-fun m!289251 () Bool)

(assert (=> b!273863 m!289251))

(declare-fun m!289253 () Bool)

(assert (=> b!273863 m!289253))

(assert (=> b!273863 m!289245))

(declare-fun m!289255 () Bool)

(assert (=> b!273863 m!289255))

(declare-fun m!289257 () Bool)

(assert (=> b!273863 m!289257))

(declare-fun m!289259 () Bool)

(assert (=> b!273863 m!289259))

(assert (=> b!273863 m!289255))

(declare-fun m!289261 () Bool)

(assert (=> b!273863 m!289261))

(declare-fun m!289263 () Bool)

(assert (=> b!273863 m!289263))

(assert (=> b!273863 m!289253))

(declare-fun m!289265 () Bool)

(assert (=> b!273863 m!289265))

(declare-fun m!289267 () Bool)

(assert (=> b!273863 m!289267))

(declare-fun m!289269 () Bool)

(assert (=> start!26416 m!289269))

(declare-fun m!289271 () Bool)

(assert (=> start!26416 m!289271))

(declare-fun m!289273 () Bool)

(assert (=> b!273859 m!289273))

(declare-fun m!289275 () Bool)

(assert (=> b!273856 m!289275))

(assert (=> b!273857 m!289255))

(assert (=> b!273857 m!289255))

(declare-fun m!289277 () Bool)

(assert (=> b!273857 m!289277))

(push 1)

