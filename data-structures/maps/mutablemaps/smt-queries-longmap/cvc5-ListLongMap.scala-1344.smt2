; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26632 () Bool)

(assert start!26632)

(declare-fun b!276334 () Bool)

(declare-fun e!176557 () Bool)

(declare-fun e!176556 () Bool)

(assert (=> b!276334 (= e!176557 e!176556)))

(declare-fun res!140363 () Bool)

(assert (=> b!276334 (=> (not res!140363) (not e!176556))))

(declare-datatypes ((SeekEntryResult!1677 0))(
  ( (MissingZero!1677 (index!8878 (_ BitVec 32))) (Found!1677 (index!8879 (_ BitVec 32))) (Intermediate!1677 (undefined!2489 Bool) (index!8880 (_ BitVec 32)) (x!27114 (_ BitVec 32))) (Undefined!1677) (MissingVacant!1677 (index!8881 (_ BitVec 32))) )
))
(declare-fun lt!137644 () SeekEntryResult!1677)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276334 (= res!140363 (or (= lt!137644 (MissingZero!1677 i!1267)) (= lt!137644 (MissingVacant!1677 i!1267))))))

(declare-datatypes ((array!13718 0))(
  ( (array!13719 (arr!6508 (Array (_ BitVec 32) (_ BitVec 64))) (size!6860 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13718)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13718 (_ BitVec 32)) SeekEntryResult!1677)

(assert (=> b!276334 (= lt!137644 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!140367 () Bool)

(assert (=> start!26632 (=> (not res!140367) (not e!176557))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26632 (= res!140367 (validMask!0 mask!3868))))

(assert (=> start!26632 e!176557))

(declare-fun array_inv!4462 (array!13718) Bool)

(assert (=> start!26632 (array_inv!4462 a!3325)))

(assert (=> start!26632 true))

(declare-fun b!276335 () Bool)

(declare-fun res!140364 () Bool)

(assert (=> b!276335 (=> (not res!140364) (not e!176557))))

(declare-datatypes ((List!4337 0))(
  ( (Nil!4334) (Cons!4333 (h!5000 (_ BitVec 64)) (t!9427 List!4337)) )
))
(declare-fun arrayNoDuplicates!0 (array!13718 (_ BitVec 32) List!4337) Bool)

(assert (=> b!276335 (= res!140364 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4334))))

(declare-fun b!276336 () Bool)

(declare-fun res!140366 () Bool)

(assert (=> b!276336 (=> (not res!140366) (not e!176557))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276336 (= res!140366 (validKeyInArray!0 k!2581))))

(declare-fun b!276337 () Bool)

(declare-fun res!140365 () Bool)

(assert (=> b!276337 (=> (not res!140365) (not e!176557))))

(declare-fun arrayContainsKey!0 (array!13718 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276337 (= res!140365 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276338 () Bool)

(assert (=> b!276338 (= e!176556 false)))

(declare-fun lt!137645 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13718 (_ BitVec 32)) Bool)

(assert (=> b!276338 (= lt!137645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276339 () Bool)

(declare-fun res!140362 () Bool)

(assert (=> b!276339 (=> (not res!140362) (not e!176557))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276339 (= res!140362 (and (= (size!6860 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6860 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6860 a!3325))))))

(assert (= (and start!26632 res!140367) b!276339))

(assert (= (and b!276339 res!140362) b!276336))

(assert (= (and b!276336 res!140366) b!276335))

(assert (= (and b!276335 res!140364) b!276337))

(assert (= (and b!276337 res!140365) b!276334))

(assert (= (and b!276334 res!140363) b!276338))

(declare-fun m!291727 () Bool)

(assert (=> b!276337 m!291727))

(declare-fun m!291729 () Bool)

(assert (=> b!276336 m!291729))

(declare-fun m!291731 () Bool)

(assert (=> b!276335 m!291731))

(declare-fun m!291733 () Bool)

(assert (=> b!276334 m!291733))

(declare-fun m!291735 () Bool)

(assert (=> start!26632 m!291735))

(declare-fun m!291737 () Bool)

(assert (=> start!26632 m!291737))

(declare-fun m!291739 () Bool)

(assert (=> b!276338 m!291739))

(push 1)

(assert (not b!276338))

(assert (not b!276334))

(assert (not b!276336))

(assert (not b!276335))

(assert (not b!276337))

(assert (not start!26632))

(check-sat)

(pop 1)

