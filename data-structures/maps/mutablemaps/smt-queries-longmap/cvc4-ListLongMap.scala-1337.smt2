; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26594 () Bool)

(assert start!26594)

(declare-fun b!275956 () Bool)

(declare-fun res!139989 () Bool)

(declare-fun e!176384 () Bool)

(assert (=> b!275956 (=> (not res!139989) (not e!176384))))

(declare-datatypes ((array!13680 0))(
  ( (array!13681 (arr!6489 (Array (_ BitVec 32) (_ BitVec 64))) (size!6841 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13680)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!275956 (= res!139989 (and (= (size!6841 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6841 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6841 a!3325))))))

(declare-fun res!139985 () Bool)

(assert (=> start!26594 (=> (not res!139985) (not e!176384))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26594 (= res!139985 (validMask!0 mask!3868))))

(assert (=> start!26594 e!176384))

(declare-fun array_inv!4443 (array!13680) Bool)

(assert (=> start!26594 (array_inv!4443 a!3325)))

(assert (=> start!26594 true))

(declare-fun b!275957 () Bool)

(declare-fun res!139987 () Bool)

(assert (=> b!275957 (=> (not res!139987) (not e!176384))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13680 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275957 (= res!139987 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275958 () Bool)

(declare-fun e!176386 () Bool)

(assert (=> b!275958 (= e!176384 e!176386)))

(declare-fun res!139986 () Bool)

(assert (=> b!275958 (=> (not res!139986) (not e!176386))))

(declare-datatypes ((SeekEntryResult!1658 0))(
  ( (MissingZero!1658 (index!8802 (_ BitVec 32))) (Found!1658 (index!8803 (_ BitVec 32))) (Intermediate!1658 (undefined!2470 Bool) (index!8804 (_ BitVec 32)) (x!27039 (_ BitVec 32))) (Undefined!1658) (MissingVacant!1658 (index!8805 (_ BitVec 32))) )
))
(declare-fun lt!137549 () SeekEntryResult!1658)

(assert (=> b!275958 (= res!139986 (or (= lt!137549 (MissingZero!1658 i!1267)) (= lt!137549 (MissingVacant!1658 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13680 (_ BitVec 32)) SeekEntryResult!1658)

(assert (=> b!275958 (= lt!137549 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275959 () Bool)

(declare-fun res!139988 () Bool)

(assert (=> b!275959 (=> (not res!139988) (not e!176384))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275959 (= res!139988 (validKeyInArray!0 k!2581))))

(declare-fun b!275960 () Bool)

(declare-fun res!139984 () Bool)

(assert (=> b!275960 (=> (not res!139984) (not e!176384))))

(declare-datatypes ((List!4318 0))(
  ( (Nil!4315) (Cons!4314 (h!4981 (_ BitVec 64)) (t!9408 List!4318)) )
))
(declare-fun arrayNoDuplicates!0 (array!13680 (_ BitVec 32) List!4318) Bool)

(assert (=> b!275960 (= res!139984 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4315))))

(declare-fun b!275961 () Bool)

(assert (=> b!275961 (= e!176386 false)))

(declare-fun lt!137548 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13680 (_ BitVec 32)) Bool)

(assert (=> b!275961 (= lt!137548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26594 res!139985) b!275956))

(assert (= (and b!275956 res!139989) b!275959))

(assert (= (and b!275959 res!139988) b!275960))

(assert (= (and b!275960 res!139984) b!275957))

(assert (= (and b!275957 res!139987) b!275958))

(assert (= (and b!275958 res!139986) b!275961))

(declare-fun m!291449 () Bool)

(assert (=> start!26594 m!291449))

(declare-fun m!291451 () Bool)

(assert (=> start!26594 m!291451))

(declare-fun m!291453 () Bool)

(assert (=> b!275957 m!291453))

(declare-fun m!291455 () Bool)

(assert (=> b!275959 m!291455))

(declare-fun m!291457 () Bool)

(assert (=> b!275958 m!291457))

(declare-fun m!291459 () Bool)

(assert (=> b!275960 m!291459))

(declare-fun m!291461 () Bool)

(assert (=> b!275961 m!291461))

(push 1)

(assert (not b!275960))

(assert (not b!275958))

(assert (not b!275957))

(assert (not b!275959))

(assert (not start!26594))

(assert (not b!275961))

