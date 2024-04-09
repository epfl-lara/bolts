; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26398 () Bool)

(assert start!26398)

(declare-fun b!273613 () Bool)

(declare-fun e!175336 () Bool)

(assert (=> b!273613 (= e!175336 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!13484 0))(
  ( (array!13485 (arr!6391 (Array (_ BitVec 32) (_ BitVec 64))) (size!6743 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13484)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13484 (_ BitVec 32)) Bool)

(assert (=> b!273613 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8586 0))(
  ( (Unit!8587) )
))
(declare-fun lt!136528 () Unit!8586)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13484 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8586)

(assert (=> b!273613 (= lt!136528 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!136527 () array!13484)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1560 0))(
  ( (MissingZero!1560 (index!8410 (_ BitVec 32))) (Found!1560 (index!8411 (_ BitVec 32))) (Intermediate!1560 (undefined!2372 Bool) (index!8412 (_ BitVec 32)) (x!26685 (_ BitVec 32))) (Undefined!1560) (MissingVacant!1560 (index!8413 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13484 (_ BitVec 32)) SeekEntryResult!1560)

(assert (=> b!273613 (= (seekEntryOrOpen!0 (select (arr!6391 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6391 a!3325) i!1267 k!2581) startIndex!26) lt!136527 mask!3868))))

(declare-fun lt!136525 () Unit!8586)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13484 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8586)

(assert (=> b!273613 (= lt!136525 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4220 0))(
  ( (Nil!4217) (Cons!4216 (h!4883 (_ BitVec 64)) (t!9310 List!4220)) )
))
(declare-fun arrayNoDuplicates!0 (array!13484 (_ BitVec 32) List!4220) Bool)

(assert (=> b!273613 (arrayNoDuplicates!0 lt!136527 #b00000000000000000000000000000000 Nil!4217)))

(declare-fun lt!136526 () Unit!8586)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13484 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4220) Unit!8586)

(assert (=> b!273613 (= lt!136526 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4217))))

(declare-fun b!273614 () Bool)

(declare-fun res!137642 () Bool)

(assert (=> b!273614 (=> (not res!137642) (not e!175336))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273614 (= res!137642 (validKeyInArray!0 (select (arr!6391 a!3325) startIndex!26)))))

(declare-fun b!273615 () Bool)

(declare-fun e!175334 () Bool)

(declare-fun e!175335 () Bool)

(assert (=> b!273615 (= e!175334 e!175335)))

(declare-fun res!137649 () Bool)

(assert (=> b!273615 (=> (not res!137649) (not e!175335))))

(declare-fun lt!136529 () SeekEntryResult!1560)

(assert (=> b!273615 (= res!137649 (or (= lt!136529 (MissingZero!1560 i!1267)) (= lt!136529 (MissingVacant!1560 i!1267))))))

(assert (=> b!273615 (= lt!136529 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273616 () Bool)

(declare-fun res!137641 () Bool)

(assert (=> b!273616 (=> (not res!137641) (not e!175334))))

(assert (=> b!273616 (= res!137641 (validKeyInArray!0 k!2581))))

(declare-fun b!273617 () Bool)

(declare-fun res!137646 () Bool)

(assert (=> b!273617 (=> (not res!137646) (not e!175335))))

(assert (=> b!273617 (= res!137646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273618 () Bool)

(declare-fun res!137645 () Bool)

(assert (=> b!273618 (=> (not res!137645) (not e!175334))))

(declare-fun arrayContainsKey!0 (array!13484 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273618 (= res!137645 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273619 () Bool)

(assert (=> b!273619 (= e!175335 e!175336)))

(declare-fun res!137644 () Bool)

(assert (=> b!273619 (=> (not res!137644) (not e!175336))))

(assert (=> b!273619 (= res!137644 (not (= startIndex!26 i!1267)))))

(assert (=> b!273619 (= lt!136527 (array!13485 (store (arr!6391 a!3325) i!1267 k!2581) (size!6743 a!3325)))))

(declare-fun res!137647 () Bool)

(assert (=> start!26398 (=> (not res!137647) (not e!175334))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26398 (= res!137647 (validMask!0 mask!3868))))

(assert (=> start!26398 e!175334))

(declare-fun array_inv!4345 (array!13484) Bool)

(assert (=> start!26398 (array_inv!4345 a!3325)))

(assert (=> start!26398 true))

(declare-fun b!273620 () Bool)

(declare-fun res!137643 () Bool)

(assert (=> b!273620 (=> (not res!137643) (not e!175334))))

(assert (=> b!273620 (= res!137643 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4217))))

(declare-fun b!273621 () Bool)

(declare-fun res!137648 () Bool)

(assert (=> b!273621 (=> (not res!137648) (not e!175334))))

(assert (=> b!273621 (= res!137648 (and (= (size!6743 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6743 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6743 a!3325))))))

(assert (= (and start!26398 res!137647) b!273621))

(assert (= (and b!273621 res!137648) b!273616))

(assert (= (and b!273616 res!137641) b!273620))

(assert (= (and b!273620 res!137643) b!273618))

(assert (= (and b!273618 res!137645) b!273615))

(assert (= (and b!273615 res!137649) b!273617))

(assert (= (and b!273617 res!137646) b!273619))

(assert (= (and b!273619 res!137644) b!273614))

(assert (= (and b!273614 res!137642) b!273613))

(declare-fun m!288919 () Bool)

(assert (=> b!273617 m!288919))

(declare-fun m!288921 () Bool)

(assert (=> b!273618 m!288921))

(declare-fun m!288923 () Bool)

(assert (=> b!273620 m!288923))

(declare-fun m!288925 () Bool)

(assert (=> b!273616 m!288925))

(declare-fun m!288927 () Bool)

(assert (=> b!273615 m!288927))

(declare-fun m!288929 () Bool)

(assert (=> start!26398 m!288929))

(declare-fun m!288931 () Bool)

(assert (=> start!26398 m!288931))

(declare-fun m!288933 () Bool)

(assert (=> b!273613 m!288933))

(declare-fun m!288935 () Bool)

(assert (=> b!273613 m!288935))

(declare-fun m!288937 () Bool)

(assert (=> b!273613 m!288937))

(declare-fun m!288939 () Bool)

(assert (=> b!273613 m!288939))

(declare-fun m!288941 () Bool)

(assert (=> b!273613 m!288941))

(declare-fun m!288943 () Bool)

(assert (=> b!273613 m!288943))

(declare-fun m!288945 () Bool)

(assert (=> b!273613 m!288945))

(declare-fun m!288947 () Bool)

(assert (=> b!273613 m!288947))

(declare-fun m!288949 () Bool)

(assert (=> b!273613 m!288949))

(assert (=> b!273613 m!288933))

(declare-fun m!288951 () Bool)

(assert (=> b!273613 m!288951))

(assert (=> b!273613 m!288943))

(assert (=> b!273619 m!288935))

(assert (=> b!273614 m!288943))

(assert (=> b!273614 m!288943))

(declare-fun m!288953 () Bool)

(assert (=> b!273614 m!288953))

(push 1)

