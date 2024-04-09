; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26396 () Bool)

(assert start!26396)

(declare-fun b!273586 () Bool)

(declare-fun res!137620 () Bool)

(declare-fun e!175324 () Bool)

(assert (=> b!273586 (=> (not res!137620) (not e!175324))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273586 (= res!137620 (validKeyInArray!0 k!2581))))

(declare-fun b!273587 () Bool)

(declare-fun e!175323 () Bool)

(assert (=> b!273587 (= e!175324 e!175323)))

(declare-fun res!137618 () Bool)

(assert (=> b!273587 (=> (not res!137618) (not e!175323))))

(declare-datatypes ((SeekEntryResult!1559 0))(
  ( (MissingZero!1559 (index!8406 (_ BitVec 32))) (Found!1559 (index!8407 (_ BitVec 32))) (Intermediate!1559 (undefined!2371 Bool) (index!8408 (_ BitVec 32)) (x!26676 (_ BitVec 32))) (Undefined!1559) (MissingVacant!1559 (index!8409 (_ BitVec 32))) )
))
(declare-fun lt!136513 () SeekEntryResult!1559)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!273587 (= res!137618 (or (= lt!136513 (MissingZero!1559 i!1267)) (= lt!136513 (MissingVacant!1559 i!1267))))))

(declare-datatypes ((array!13482 0))(
  ( (array!13483 (arr!6390 (Array (_ BitVec 32) (_ BitVec 64))) (size!6742 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13482)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13482 (_ BitVec 32)) SeekEntryResult!1559)

(assert (=> b!273587 (= lt!136513 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273588 () Bool)

(declare-fun res!137619 () Bool)

(assert (=> b!273588 (=> (not res!137619) (not e!175324))))

(declare-datatypes ((List!4219 0))(
  ( (Nil!4216) (Cons!4215 (h!4882 (_ BitVec 64)) (t!9309 List!4219)) )
))
(declare-fun arrayNoDuplicates!0 (array!13482 (_ BitVec 32) List!4219) Bool)

(assert (=> b!273588 (= res!137619 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4216))))

(declare-fun b!273589 () Bool)

(declare-fun res!137614 () Bool)

(assert (=> b!273589 (=> (not res!137614) (not e!175324))))

(declare-fun arrayContainsKey!0 (array!13482 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273589 (= res!137614 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!137616 () Bool)

(assert (=> start!26396 (=> (not res!137616) (not e!175324))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26396 (= res!137616 (validMask!0 mask!3868))))

(assert (=> start!26396 e!175324))

(declare-fun array_inv!4344 (array!13482) Bool)

(assert (=> start!26396 (array_inv!4344 a!3325)))

(assert (=> start!26396 true))

(declare-fun b!273590 () Bool)

(declare-fun res!137615 () Bool)

(assert (=> b!273590 (=> (not res!137615) (not e!175324))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!273590 (= res!137615 (and (= (size!6742 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6742 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6742 a!3325))))))

(declare-fun b!273591 () Bool)

(declare-fun e!175321 () Bool)

(assert (=> b!273591 (= e!175323 e!175321)))

(declare-fun res!137621 () Bool)

(assert (=> b!273591 (=> (not res!137621) (not e!175321))))

(assert (=> b!273591 (= res!137621 (not (= startIndex!26 i!1267)))))

(declare-fun lt!136514 () array!13482)

(assert (=> b!273591 (= lt!136514 (array!13483 (store (arr!6390 a!3325) i!1267 k!2581) (size!6742 a!3325)))))

(declare-fun b!273592 () Bool)

(declare-fun res!137622 () Bool)

(assert (=> b!273592 (=> (not res!137622) (not e!175321))))

(assert (=> b!273592 (= res!137622 (validKeyInArray!0 (select (arr!6390 a!3325) startIndex!26)))))

(declare-fun b!273593 () Bool)

(declare-fun res!137617 () Bool)

(assert (=> b!273593 (=> (not res!137617) (not e!175323))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13482 (_ BitVec 32)) Bool)

(assert (=> b!273593 (= res!137617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273594 () Bool)

(assert (=> b!273594 (= e!175321 (not true))))

(assert (=> b!273594 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8584 0))(
  ( (Unit!8585) )
))
(declare-fun lt!136511 () Unit!8584)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13482 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8584)

(assert (=> b!273594 (= lt!136511 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!273594 (= (seekEntryOrOpen!0 (select (arr!6390 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6390 a!3325) i!1267 k!2581) startIndex!26) lt!136514 mask!3868))))

(declare-fun lt!136510 () Unit!8584)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13482 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8584)

(assert (=> b!273594 (= lt!136510 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!273594 (arrayNoDuplicates!0 lt!136514 #b00000000000000000000000000000000 Nil!4216)))

(declare-fun lt!136512 () Unit!8584)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13482 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4219) Unit!8584)

(assert (=> b!273594 (= lt!136512 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4216))))

(assert (= (and start!26396 res!137616) b!273590))

(assert (= (and b!273590 res!137615) b!273586))

(assert (= (and b!273586 res!137620) b!273588))

(assert (= (and b!273588 res!137619) b!273589))

(assert (= (and b!273589 res!137614) b!273587))

(assert (= (and b!273587 res!137618) b!273593))

(assert (= (and b!273593 res!137617) b!273591))

(assert (= (and b!273591 res!137621) b!273592))

(assert (= (and b!273592 res!137622) b!273594))

(declare-fun m!288883 () Bool)

(assert (=> b!273586 m!288883))

(declare-fun m!288885 () Bool)

(assert (=> b!273591 m!288885))

(declare-fun m!288887 () Bool)

(assert (=> start!26396 m!288887))

(declare-fun m!288889 () Bool)

(assert (=> start!26396 m!288889))

(declare-fun m!288891 () Bool)

(assert (=> b!273594 m!288891))

(declare-fun m!288893 () Bool)

(assert (=> b!273594 m!288893))

(assert (=> b!273594 m!288885))

(declare-fun m!288895 () Bool)

(assert (=> b!273594 m!288895))

(declare-fun m!288897 () Bool)

(assert (=> b!273594 m!288897))

(declare-fun m!288899 () Bool)

(assert (=> b!273594 m!288899))

(declare-fun m!288901 () Bool)

(assert (=> b!273594 m!288901))

(declare-fun m!288903 () Bool)

(assert (=> b!273594 m!288903))

(assert (=> b!273594 m!288899))

(declare-fun m!288905 () Bool)

(assert (=> b!273594 m!288905))

(assert (=> b!273594 m!288893))

(declare-fun m!288907 () Bool)

(assert (=> b!273594 m!288907))

(declare-fun m!288909 () Bool)

(assert (=> b!273588 m!288909))

(declare-fun m!288911 () Bool)

(assert (=> b!273589 m!288911))

(assert (=> b!273592 m!288899))

(assert (=> b!273592 m!288899))

(declare-fun m!288913 () Bool)

(assert (=> b!273592 m!288913))

(declare-fun m!288915 () Bool)

(assert (=> b!273587 m!288915))

(declare-fun m!288917 () Bool)

(assert (=> b!273593 m!288917))

(push 1)

