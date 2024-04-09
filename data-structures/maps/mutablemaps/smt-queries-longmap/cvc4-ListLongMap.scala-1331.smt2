; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26558 () Bool)

(assert start!26558)

(declare-fun b!275488 () Bool)

(declare-fun res!139517 () Bool)

(declare-fun e!176222 () Bool)

(assert (=> b!275488 (=> (not res!139517) (not e!176222))))

(declare-datatypes ((array!13644 0))(
  ( (array!13645 (arr!6471 (Array (_ BitVec 32) (_ BitVec 64))) (size!6823 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13644)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!275488 (= res!139517 (and (= (size!6823 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6823 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6823 a!3325))))))

(declare-fun b!275489 () Bool)

(declare-fun res!139519 () Bool)

(assert (=> b!275489 (=> (not res!139519) (not e!176222))))

(declare-datatypes ((List!4300 0))(
  ( (Nil!4297) (Cons!4296 (h!4963 (_ BitVec 64)) (t!9390 List!4300)) )
))
(declare-fun arrayNoDuplicates!0 (array!13644 (_ BitVec 32) List!4300) Bool)

(assert (=> b!275489 (= res!139519 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4297))))

(declare-fun res!139516 () Bool)

(assert (=> start!26558 (=> (not res!139516) (not e!176222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26558 (= res!139516 (validMask!0 mask!3868))))

(assert (=> start!26558 e!176222))

(declare-fun array_inv!4425 (array!13644) Bool)

(assert (=> start!26558 (array_inv!4425 a!3325)))

(assert (=> start!26558 true))

(declare-fun b!275490 () Bool)

(declare-fun e!176224 () Bool)

(assert (=> b!275490 (= e!176224 false)))

(declare-fun lt!137440 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13644 (_ BitVec 32)) Bool)

(assert (=> b!275490 (= lt!137440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275491 () Bool)

(declare-fun res!139518 () Bool)

(assert (=> b!275491 (=> (not res!139518) (not e!176222))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275491 (= res!139518 (validKeyInArray!0 k!2581))))

(declare-fun b!275492 () Bool)

(declare-fun res!139520 () Bool)

(assert (=> b!275492 (=> (not res!139520) (not e!176222))))

(declare-fun arrayContainsKey!0 (array!13644 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275492 (= res!139520 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275493 () Bool)

(assert (=> b!275493 (= e!176222 e!176224)))

(declare-fun res!139521 () Bool)

(assert (=> b!275493 (=> (not res!139521) (not e!176224))))

(declare-datatypes ((SeekEntryResult!1640 0))(
  ( (MissingZero!1640 (index!8730 (_ BitVec 32))) (Found!1640 (index!8731 (_ BitVec 32))) (Intermediate!1640 (undefined!2452 Bool) (index!8732 (_ BitVec 32)) (x!26973 (_ BitVec 32))) (Undefined!1640) (MissingVacant!1640 (index!8733 (_ BitVec 32))) )
))
(declare-fun lt!137441 () SeekEntryResult!1640)

(assert (=> b!275493 (= res!139521 (or (= lt!137441 (MissingZero!1640 i!1267)) (= lt!137441 (MissingVacant!1640 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13644 (_ BitVec 32)) SeekEntryResult!1640)

(assert (=> b!275493 (= lt!137441 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26558 res!139516) b!275488))

(assert (= (and b!275488 res!139517) b!275491))

(assert (= (and b!275491 res!139518) b!275489))

(assert (= (and b!275489 res!139519) b!275492))

(assert (= (and b!275492 res!139520) b!275493))

(assert (= (and b!275493 res!139521) b!275490))

(declare-fun m!291077 () Bool)

(assert (=> b!275490 m!291077))

(declare-fun m!291079 () Bool)

(assert (=> start!26558 m!291079))

(declare-fun m!291081 () Bool)

(assert (=> start!26558 m!291081))

(declare-fun m!291083 () Bool)

(assert (=> b!275491 m!291083))

(declare-fun m!291085 () Bool)

(assert (=> b!275493 m!291085))

(declare-fun m!291087 () Bool)

(assert (=> b!275489 m!291087))

(declare-fun m!291089 () Bool)

(assert (=> b!275492 m!291089))

(push 1)

(assert (not b!275491))

(assert (not b!275489))

(assert (not b!275493))

(assert (not b!275492))

(assert (not b!275490))

(assert (not start!26558))

