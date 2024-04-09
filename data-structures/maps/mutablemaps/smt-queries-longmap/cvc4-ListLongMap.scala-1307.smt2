; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26414 () Bool)

(assert start!26414)

(declare-fun b!273829 () Bool)

(declare-fun res!137859 () Bool)

(declare-fun e!175429 () Bool)

(assert (=> b!273829 (=> (not res!137859) (not e!175429))))

(declare-datatypes ((array!13500 0))(
  ( (array!13501 (arr!6399 (Array (_ BitVec 32) (_ BitVec 64))) (size!6751 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13500)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13500 (_ BitVec 32)) Bool)

(assert (=> b!273829 (= res!137859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273830 () Bool)

(declare-fun res!137857 () Bool)

(declare-fun e!175431 () Bool)

(assert (=> b!273830 (=> (not res!137857) (not e!175431))))

(declare-datatypes ((List!4228 0))(
  ( (Nil!4225) (Cons!4224 (h!4891 (_ BitVec 64)) (t!9318 List!4228)) )
))
(declare-fun arrayNoDuplicates!0 (array!13500 (_ BitVec 32) List!4228) Bool)

(assert (=> b!273830 (= res!137857 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4225))))

(declare-fun res!137861 () Bool)

(assert (=> start!26414 (=> (not res!137861) (not e!175431))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26414 (= res!137861 (validMask!0 mask!3868))))

(assert (=> start!26414 e!175431))

(declare-fun array_inv!4353 (array!13500) Bool)

(assert (=> start!26414 (array_inv!4353 a!3325)))

(assert (=> start!26414 true))

(declare-fun b!273831 () Bool)

(declare-fun res!137863 () Bool)

(assert (=> b!273831 (=> (not res!137863) (not e!175431))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13500 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273831 (= res!137863 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273832 () Bool)

(declare-fun e!175432 () Bool)

(assert (=> b!273832 (= e!175429 e!175432)))

(declare-fun res!137862 () Bool)

(assert (=> b!273832 (=> (not res!137862) (not e!175432))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!273832 (= res!137862 (not (= startIndex!26 i!1267)))))

(declare-fun lt!136649 () array!13500)

(assert (=> b!273832 (= lt!136649 (array!13501 (store (arr!6399 a!3325) i!1267 k!2581) (size!6751 a!3325)))))

(declare-fun b!273833 () Bool)

(declare-fun res!137858 () Bool)

(assert (=> b!273833 (=> (not res!137858) (not e!175431))))

(assert (=> b!273833 (= res!137858 (and (= (size!6751 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6751 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6751 a!3325))))))

(declare-fun b!273834 () Bool)

(assert (=> b!273834 (= e!175431 e!175429)))

(declare-fun res!137864 () Bool)

(assert (=> b!273834 (=> (not res!137864) (not e!175429))))

(declare-datatypes ((SeekEntryResult!1568 0))(
  ( (MissingZero!1568 (index!8442 (_ BitVec 32))) (Found!1568 (index!8443 (_ BitVec 32))) (Intermediate!1568 (undefined!2380 Bool) (index!8444 (_ BitVec 32)) (x!26709 (_ BitVec 32))) (Undefined!1568) (MissingVacant!1568 (index!8445 (_ BitVec 32))) )
))
(declare-fun lt!136645 () SeekEntryResult!1568)

(assert (=> b!273834 (= res!137864 (or (= lt!136645 (MissingZero!1568 i!1267)) (= lt!136645 (MissingVacant!1568 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13500 (_ BitVec 32)) SeekEntryResult!1568)

(assert (=> b!273834 (= lt!136645 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273835 () Bool)

(declare-fun res!137865 () Bool)

(assert (=> b!273835 (=> (not res!137865) (not e!175431))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273835 (= res!137865 (validKeyInArray!0 k!2581))))

(declare-fun b!273836 () Bool)

(assert (=> b!273836 (= e!175432 (not true))))

(assert (=> b!273836 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8602 0))(
  ( (Unit!8603) )
))
(declare-fun lt!136648 () Unit!8602)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13500 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8602)

(assert (=> b!273836 (= lt!136648 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!273836 (= (seekEntryOrOpen!0 (select (arr!6399 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6399 a!3325) i!1267 k!2581) startIndex!26) lt!136649 mask!3868))))

(declare-fun lt!136647 () Unit!8602)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13500 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8602)

(assert (=> b!273836 (= lt!136647 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!273836 (arrayNoDuplicates!0 lt!136649 #b00000000000000000000000000000000 Nil!4225)))

(declare-fun lt!136646 () Unit!8602)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13500 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4228) Unit!8602)

(assert (=> b!273836 (= lt!136646 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4225))))

(declare-fun b!273837 () Bool)

(declare-fun res!137860 () Bool)

(assert (=> b!273837 (=> (not res!137860) (not e!175432))))

(assert (=> b!273837 (= res!137860 (validKeyInArray!0 (select (arr!6399 a!3325) startIndex!26)))))

(assert (= (and start!26414 res!137861) b!273833))

(assert (= (and b!273833 res!137858) b!273835))

(assert (= (and b!273835 res!137865) b!273830))

(assert (= (and b!273830 res!137857) b!273831))

(assert (= (and b!273831 res!137863) b!273834))

(assert (= (and b!273834 res!137864) b!273829))

(assert (= (and b!273829 res!137859) b!273832))

(assert (= (and b!273832 res!137862) b!273837))

(assert (= (and b!273837 res!137860) b!273836))

(declare-fun m!289207 () Bool)

(assert (=> b!273835 m!289207))

(declare-fun m!289209 () Bool)

(assert (=> b!273836 m!289209))

(declare-fun m!289211 () Bool)

(assert (=> b!273836 m!289211))

(declare-fun m!289213 () Bool)

(assert (=> b!273836 m!289213))

(declare-fun m!289215 () Bool)

(assert (=> b!273836 m!289215))

(declare-fun m!289217 () Bool)

(assert (=> b!273836 m!289217))

(declare-fun m!289219 () Bool)

(assert (=> b!273836 m!289219))

(declare-fun m!289221 () Bool)

(assert (=> b!273836 m!289221))

(assert (=> b!273836 m!289217))

(declare-fun m!289223 () Bool)

(assert (=> b!273836 m!289223))

(declare-fun m!289225 () Bool)

(assert (=> b!273836 m!289225))

(declare-fun m!289227 () Bool)

(assert (=> b!273836 m!289227))

(assert (=> b!273836 m!289225))

(declare-fun m!289229 () Bool)

(assert (=> b!273834 m!289229))

(declare-fun m!289231 () Bool)

(assert (=> start!26414 m!289231))

(declare-fun m!289233 () Bool)

(assert (=> start!26414 m!289233))

(declare-fun m!289235 () Bool)

(assert (=> b!273831 m!289235))

(declare-fun m!289237 () Bool)

(assert (=> b!273830 m!289237))

(declare-fun m!289239 () Bool)

(assert (=> b!273829 m!289239))

(assert (=> b!273832 m!289213))

(assert (=> b!273837 m!289217))

(assert (=> b!273837 m!289217))

(declare-fun m!289241 () Bool)

(assert (=> b!273837 m!289241))

(push 1)

(assert (not start!26414))

(assert (not b!273836))

(assert (not b!273835))

(assert (not b!273830))

(assert (not b!273829))

(assert (not b!273831))

(assert (not b!273837))

(assert (not b!273834))

