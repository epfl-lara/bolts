; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26642 () Bool)

(assert start!26642)

(declare-fun b!276424 () Bool)

(declare-fun e!176600 () Bool)

(declare-fun e!176601 () Bool)

(assert (=> b!276424 (= e!176600 e!176601)))

(declare-fun res!140455 () Bool)

(assert (=> b!276424 (=> (not res!140455) (not e!176601))))

(declare-datatypes ((SeekEntryResult!1682 0))(
  ( (MissingZero!1682 (index!8898 (_ BitVec 32))) (Found!1682 (index!8899 (_ BitVec 32))) (Intermediate!1682 (undefined!2494 Bool) (index!8900 (_ BitVec 32)) (x!27127 (_ BitVec 32))) (Undefined!1682) (MissingVacant!1682 (index!8901 (_ BitVec 32))) )
))
(declare-fun lt!137674 () SeekEntryResult!1682)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276424 (= res!140455 (or (= lt!137674 (MissingZero!1682 i!1267)) (= lt!137674 (MissingVacant!1682 i!1267))))))

(declare-datatypes ((array!13728 0))(
  ( (array!13729 (arr!6513 (Array (_ BitVec 32) (_ BitVec 64))) (size!6865 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13728)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13728 (_ BitVec 32)) SeekEntryResult!1682)

(assert (=> b!276424 (= lt!137674 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276425 () Bool)

(declare-fun res!140457 () Bool)

(assert (=> b!276425 (=> (not res!140457) (not e!176600))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276425 (= res!140457 (and (= (size!6865 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6865 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6865 a!3325))))))

(declare-fun b!276426 () Bool)

(declare-fun res!140454 () Bool)

(assert (=> b!276426 (=> (not res!140454) (not e!176600))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276426 (= res!140454 (validKeyInArray!0 k!2581))))

(declare-fun res!140456 () Bool)

(assert (=> start!26642 (=> (not res!140456) (not e!176600))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26642 (= res!140456 (validMask!0 mask!3868))))

(assert (=> start!26642 e!176600))

(declare-fun array_inv!4467 (array!13728) Bool)

(assert (=> start!26642 (array_inv!4467 a!3325)))

(assert (=> start!26642 true))

(declare-fun b!276427 () Bool)

(declare-fun res!140452 () Bool)

(assert (=> b!276427 (=> (not res!140452) (not e!176600))))

(declare-datatypes ((List!4342 0))(
  ( (Nil!4339) (Cons!4338 (h!5005 (_ BitVec 64)) (t!9432 List!4342)) )
))
(declare-fun arrayNoDuplicates!0 (array!13728 (_ BitVec 32) List!4342) Bool)

(assert (=> b!276427 (= res!140452 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4339))))

(declare-fun b!276428 () Bool)

(assert (=> b!276428 (= e!176601 false)))

(declare-fun lt!137675 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13728 (_ BitVec 32)) Bool)

(assert (=> b!276428 (= lt!137675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276429 () Bool)

(declare-fun res!140453 () Bool)

(assert (=> b!276429 (=> (not res!140453) (not e!176600))))

(declare-fun arrayContainsKey!0 (array!13728 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276429 (= res!140453 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26642 res!140456) b!276425))

(assert (= (and b!276425 res!140457) b!276426))

(assert (= (and b!276426 res!140454) b!276427))

(assert (= (and b!276427 res!140452) b!276429))

(assert (= (and b!276429 res!140453) b!276424))

(assert (= (and b!276424 res!140455) b!276428))

(declare-fun m!291797 () Bool)

(assert (=> b!276428 m!291797))

(declare-fun m!291799 () Bool)

(assert (=> b!276426 m!291799))

(declare-fun m!291801 () Bool)

(assert (=> b!276424 m!291801))

(declare-fun m!291803 () Bool)

(assert (=> b!276429 m!291803))

(declare-fun m!291805 () Bool)

(assert (=> start!26642 m!291805))

(declare-fun m!291807 () Bool)

(assert (=> start!26642 m!291807))

(declare-fun m!291809 () Bool)

(assert (=> b!276427 m!291809))

(push 1)

(assert (not b!276424))

(assert (not b!276428))

(assert (not b!276426))

(assert (not b!276427))

(assert (not b!276429))

(assert (not start!26642))

(check-sat)

