; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26554 () Bool)

(assert start!26554)

(declare-fun b!275452 () Bool)

(declare-fun res!139482 () Bool)

(declare-fun e!176205 () Bool)

(assert (=> b!275452 (=> (not res!139482) (not e!176205))))

(declare-datatypes ((array!13640 0))(
  ( (array!13641 (arr!6469 (Array (_ BitVec 32) (_ BitVec 64))) (size!6821 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13640)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13640 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275452 (= res!139482 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275453 () Bool)

(declare-fun res!139483 () Bool)

(assert (=> b!275453 (=> (not res!139483) (not e!176205))))

(declare-datatypes ((List!4298 0))(
  ( (Nil!4295) (Cons!4294 (h!4961 (_ BitVec 64)) (t!9388 List!4298)) )
))
(declare-fun arrayNoDuplicates!0 (array!13640 (_ BitVec 32) List!4298) Bool)

(assert (=> b!275453 (= res!139483 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4295))))

(declare-fun b!275454 () Bool)

(declare-fun res!139485 () Bool)

(assert (=> b!275454 (=> (not res!139485) (not e!176205))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!275454 (= res!139485 (and (= (size!6821 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6821 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6821 a!3325))))))

(declare-fun res!139480 () Bool)

(assert (=> start!26554 (=> (not res!139480) (not e!176205))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26554 (= res!139480 (validMask!0 mask!3868))))

(assert (=> start!26554 e!176205))

(declare-fun array_inv!4423 (array!13640) Bool)

(assert (=> start!26554 (array_inv!4423 a!3325)))

(assert (=> start!26554 true))

(declare-fun b!275455 () Bool)

(declare-fun res!139481 () Bool)

(assert (=> b!275455 (=> (not res!139481) (not e!176205))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275455 (= res!139481 (validKeyInArray!0 k!2581))))

(declare-fun b!275456 () Bool)

(declare-fun e!176206 () Bool)

(assert (=> b!275456 (= e!176206 false)))

(declare-fun lt!137428 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13640 (_ BitVec 32)) Bool)

(assert (=> b!275456 (= lt!137428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275457 () Bool)

(assert (=> b!275457 (= e!176205 e!176206)))

(declare-fun res!139484 () Bool)

(assert (=> b!275457 (=> (not res!139484) (not e!176206))))

(declare-datatypes ((SeekEntryResult!1638 0))(
  ( (MissingZero!1638 (index!8722 (_ BitVec 32))) (Found!1638 (index!8723 (_ BitVec 32))) (Intermediate!1638 (undefined!2450 Bool) (index!8724 (_ BitVec 32)) (x!26971 (_ BitVec 32))) (Undefined!1638) (MissingVacant!1638 (index!8725 (_ BitVec 32))) )
))
(declare-fun lt!137429 () SeekEntryResult!1638)

(assert (=> b!275457 (= res!139484 (or (= lt!137429 (MissingZero!1638 i!1267)) (= lt!137429 (MissingVacant!1638 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13640 (_ BitVec 32)) SeekEntryResult!1638)

(assert (=> b!275457 (= lt!137429 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26554 res!139480) b!275454))

(assert (= (and b!275454 res!139485) b!275455))

(assert (= (and b!275455 res!139481) b!275453))

(assert (= (and b!275453 res!139483) b!275452))

(assert (= (and b!275452 res!139482) b!275457))

(assert (= (and b!275457 res!139484) b!275456))

(declare-fun m!291049 () Bool)

(assert (=> b!275453 m!291049))

(declare-fun m!291051 () Bool)

(assert (=> b!275452 m!291051))

(declare-fun m!291053 () Bool)

(assert (=> b!275457 m!291053))

(declare-fun m!291055 () Bool)

(assert (=> start!26554 m!291055))

(declare-fun m!291057 () Bool)

(assert (=> start!26554 m!291057))

(declare-fun m!291059 () Bool)

(assert (=> b!275455 m!291059))

(declare-fun m!291061 () Bool)

(assert (=> b!275456 m!291061))

(push 1)

