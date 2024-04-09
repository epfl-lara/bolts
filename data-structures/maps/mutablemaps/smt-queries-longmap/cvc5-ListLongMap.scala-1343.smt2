; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26626 () Bool)

(assert start!26626)

(declare-fun b!276280 () Bool)

(declare-fun res!140308 () Bool)

(declare-fun e!176528 () Bool)

(assert (=> b!276280 (=> (not res!140308) (not e!176528))))

(declare-datatypes ((array!13712 0))(
  ( (array!13713 (arr!6505 (Array (_ BitVec 32) (_ BitVec 64))) (size!6857 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13712)

(declare-datatypes ((List!4334 0))(
  ( (Nil!4331) (Cons!4330 (h!4997 (_ BitVec 64)) (t!9424 List!4334)) )
))
(declare-fun arrayNoDuplicates!0 (array!13712 (_ BitVec 32) List!4334) Bool)

(assert (=> b!276280 (= res!140308 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4331))))

(declare-fun b!276281 () Bool)

(declare-fun res!140311 () Bool)

(assert (=> b!276281 (=> (not res!140311) (not e!176528))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!276281 (= res!140311 (and (= (size!6857 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6857 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6857 a!3325))))))

(declare-fun res!140312 () Bool)

(assert (=> start!26626 (=> (not res!140312) (not e!176528))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26626 (= res!140312 (validMask!0 mask!3868))))

(assert (=> start!26626 e!176528))

(declare-fun array_inv!4459 (array!13712) Bool)

(assert (=> start!26626 (array_inv!4459 a!3325)))

(assert (=> start!26626 true))

(declare-fun b!276282 () Bool)

(declare-fun res!140309 () Bool)

(assert (=> b!276282 (=> (not res!140309) (not e!176528))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13712 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276282 (= res!140309 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276283 () Bool)

(declare-fun e!176529 () Bool)

(assert (=> b!276283 (= e!176528 e!176529)))

(declare-fun res!140310 () Bool)

(assert (=> b!276283 (=> (not res!140310) (not e!176529))))

(declare-datatypes ((SeekEntryResult!1674 0))(
  ( (MissingZero!1674 (index!8866 (_ BitVec 32))) (Found!1674 (index!8867 (_ BitVec 32))) (Intermediate!1674 (undefined!2486 Bool) (index!8868 (_ BitVec 32)) (x!27103 (_ BitVec 32))) (Undefined!1674) (MissingVacant!1674 (index!8869 (_ BitVec 32))) )
))
(declare-fun lt!137626 () SeekEntryResult!1674)

(assert (=> b!276283 (= res!140310 (or (= lt!137626 (MissingZero!1674 i!1267)) (= lt!137626 (MissingVacant!1674 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13712 (_ BitVec 32)) SeekEntryResult!1674)

(assert (=> b!276283 (= lt!137626 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276284 () Bool)

(assert (=> b!276284 (= e!176529 false)))

(declare-fun lt!137627 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13712 (_ BitVec 32)) Bool)

(assert (=> b!276284 (= lt!137627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276285 () Bool)

(declare-fun res!140313 () Bool)

(assert (=> b!276285 (=> (not res!140313) (not e!176528))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276285 (= res!140313 (validKeyInArray!0 k!2581))))

(assert (= (and start!26626 res!140312) b!276281))

(assert (= (and b!276281 res!140311) b!276285))

(assert (= (and b!276285 res!140313) b!276280))

(assert (= (and b!276280 res!140308) b!276282))

(assert (= (and b!276282 res!140309) b!276283))

(assert (= (and b!276283 res!140310) b!276284))

(declare-fun m!291685 () Bool)

(assert (=> start!26626 m!291685))

(declare-fun m!291687 () Bool)

(assert (=> start!26626 m!291687))

(declare-fun m!291689 () Bool)

(assert (=> b!276284 m!291689))

(declare-fun m!291691 () Bool)

(assert (=> b!276280 m!291691))

(declare-fun m!291693 () Bool)

(assert (=> b!276285 m!291693))

(declare-fun m!291695 () Bool)

(assert (=> b!276283 m!291695))

(declare-fun m!291697 () Bool)

(assert (=> b!276282 m!291697))

(push 1)

(assert (not b!276282))

(assert (not b!276285))

(assert (not b!276283))

(assert (not b!276280))

(assert (not start!26626))

