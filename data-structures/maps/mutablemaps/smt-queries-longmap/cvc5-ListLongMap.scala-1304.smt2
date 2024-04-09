; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26392 () Bool)

(assert start!26392)

(declare-fun res!137563 () Bool)

(declare-fun e!175299 () Bool)

(assert (=> start!26392 (=> (not res!137563) (not e!175299))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26392 (= res!137563 (validMask!0 mask!3868))))

(assert (=> start!26392 e!175299))

(declare-datatypes ((array!13478 0))(
  ( (array!13479 (arr!6388 (Array (_ BitVec 32) (_ BitVec 64))) (size!6740 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13478)

(declare-fun array_inv!4342 (array!13478) Bool)

(assert (=> start!26392 (array_inv!4342 a!3325)))

(assert (=> start!26392 true))

(declare-fun b!273532 () Bool)

(declare-fun e!175298 () Bool)

(declare-fun e!175300 () Bool)

(assert (=> b!273532 (= e!175298 e!175300)))

(declare-fun res!137560 () Bool)

(assert (=> b!273532 (=> (not res!137560) (not e!175300))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!273532 (= res!137560 (not (= startIndex!26 i!1267)))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!136481 () array!13478)

(assert (=> b!273532 (= lt!136481 (array!13479 (store (arr!6388 a!3325) i!1267 k!2581) (size!6740 a!3325)))))

(declare-fun b!273533 () Bool)

(assert (=> b!273533 (= e!175300 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13478 (_ BitVec 32)) Bool)

(assert (=> b!273533 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8580 0))(
  ( (Unit!8581) )
))
(declare-fun lt!136484 () Unit!8580)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13478 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8580)

(assert (=> b!273533 (= lt!136484 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1557 0))(
  ( (MissingZero!1557 (index!8398 (_ BitVec 32))) (Found!1557 (index!8399 (_ BitVec 32))) (Intermediate!1557 (undefined!2369 Bool) (index!8400 (_ BitVec 32)) (x!26674 (_ BitVec 32))) (Undefined!1557) (MissingVacant!1557 (index!8401 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13478 (_ BitVec 32)) SeekEntryResult!1557)

(assert (=> b!273533 (= (seekEntryOrOpen!0 (select (arr!6388 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6388 a!3325) i!1267 k!2581) startIndex!26) lt!136481 mask!3868))))

(declare-fun lt!136480 () Unit!8580)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13478 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8580)

(assert (=> b!273533 (= lt!136480 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4217 0))(
  ( (Nil!4214) (Cons!4213 (h!4880 (_ BitVec 64)) (t!9307 List!4217)) )
))
(declare-fun arrayNoDuplicates!0 (array!13478 (_ BitVec 32) List!4217) Bool)

(assert (=> b!273533 (arrayNoDuplicates!0 lt!136481 #b00000000000000000000000000000000 Nil!4214)))

(declare-fun lt!136483 () Unit!8580)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13478 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4217) Unit!8580)

(assert (=> b!273533 (= lt!136483 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4214))))

(declare-fun b!273534 () Bool)

(declare-fun res!137565 () Bool)

(assert (=> b!273534 (=> (not res!137565) (not e!175299))))

(assert (=> b!273534 (= res!137565 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4214))))

(declare-fun b!273535 () Bool)

(assert (=> b!273535 (= e!175299 e!175298)))

(declare-fun res!137561 () Bool)

(assert (=> b!273535 (=> (not res!137561) (not e!175298))))

(declare-fun lt!136482 () SeekEntryResult!1557)

(assert (=> b!273535 (= res!137561 (or (= lt!136482 (MissingZero!1557 i!1267)) (= lt!136482 (MissingVacant!1557 i!1267))))))

(assert (=> b!273535 (= lt!136482 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273536 () Bool)

(declare-fun res!137566 () Bool)

(assert (=> b!273536 (=> (not res!137566) (not e!175299))))

(declare-fun arrayContainsKey!0 (array!13478 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273536 (= res!137566 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273537 () Bool)

(declare-fun res!137562 () Bool)

(assert (=> b!273537 (=> (not res!137562) (not e!175299))))

(assert (=> b!273537 (= res!137562 (and (= (size!6740 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6740 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6740 a!3325))))))

(declare-fun b!273538 () Bool)

(declare-fun res!137564 () Bool)

(assert (=> b!273538 (=> (not res!137564) (not e!175300))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273538 (= res!137564 (validKeyInArray!0 (select (arr!6388 a!3325) startIndex!26)))))

(declare-fun b!273539 () Bool)

(declare-fun res!137568 () Bool)

(assert (=> b!273539 (=> (not res!137568) (not e!175299))))

(assert (=> b!273539 (= res!137568 (validKeyInArray!0 k!2581))))

(declare-fun b!273540 () Bool)

(declare-fun res!137567 () Bool)

(assert (=> b!273540 (=> (not res!137567) (not e!175298))))

(assert (=> b!273540 (= res!137567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26392 res!137563) b!273537))

(assert (= (and b!273537 res!137562) b!273539))

(assert (= (and b!273539 res!137568) b!273534))

(assert (= (and b!273534 res!137565) b!273536))

(assert (= (and b!273536 res!137566) b!273535))

(assert (= (and b!273535 res!137561) b!273540))

(assert (= (and b!273540 res!137567) b!273532))

(assert (= (and b!273532 res!137560) b!273538))

(assert (= (and b!273538 res!137564) b!273533))

(declare-fun m!288811 () Bool)

(assert (=> b!273540 m!288811))

(declare-fun m!288813 () Bool)

(assert (=> b!273535 m!288813))

(declare-fun m!288815 () Bool)

(assert (=> b!273532 m!288815))

(declare-fun m!288817 () Bool)

(assert (=> b!273534 m!288817))

(declare-fun m!288819 () Bool)

(assert (=> start!26392 m!288819))

(declare-fun m!288821 () Bool)

(assert (=> start!26392 m!288821))

(declare-fun m!288823 () Bool)

(assert (=> b!273538 m!288823))

(assert (=> b!273538 m!288823))

(declare-fun m!288825 () Bool)

(assert (=> b!273538 m!288825))

(declare-fun m!288827 () Bool)

(assert (=> b!273533 m!288827))

(declare-fun m!288829 () Bool)

(assert (=> b!273533 m!288829))

(assert (=> b!273533 m!288829))

(declare-fun m!288831 () Bool)

(assert (=> b!273533 m!288831))

(assert (=> b!273533 m!288815))

(declare-fun m!288833 () Bool)

(assert (=> b!273533 m!288833))

(assert (=> b!273533 m!288823))

(declare-fun m!288835 () Bool)

(assert (=> b!273533 m!288835))

(declare-fun m!288837 () Bool)

(assert (=> b!273533 m!288837))

(declare-fun m!288839 () Bool)

(assert (=> b!273533 m!288839))

(assert (=> b!273533 m!288823))

(declare-fun m!288841 () Bool)

(assert (=> b!273533 m!288841))

(declare-fun m!288843 () Bool)

(assert (=> b!273539 m!288843))

(declare-fun m!288845 () Bool)

(assert (=> b!273536 m!288845))

(push 1)

