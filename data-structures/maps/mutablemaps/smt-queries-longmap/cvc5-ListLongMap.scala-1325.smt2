; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26518 () Bool)

(assert start!26518)

(declare-fun b!275128 () Bool)

(declare-fun e!176044 () Bool)

(declare-fun e!176043 () Bool)

(assert (=> b!275128 (= e!176044 e!176043)))

(declare-fun res!139157 () Bool)

(assert (=> b!275128 (=> (not res!139157) (not e!176043))))

(declare-datatypes ((SeekEntryResult!1620 0))(
  ( (MissingZero!1620 (index!8650 (_ BitVec 32))) (Found!1620 (index!8651 (_ BitVec 32))) (Intermediate!1620 (undefined!2432 Bool) (index!8652 (_ BitVec 32)) (x!26905 (_ BitVec 32))) (Undefined!1620) (MissingVacant!1620 (index!8653 (_ BitVec 32))) )
))
(declare-fun lt!137321 () SeekEntryResult!1620)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!275128 (= res!139157 (or (= lt!137321 (MissingZero!1620 i!1267)) (= lt!137321 (MissingVacant!1620 i!1267))))))

(declare-datatypes ((array!13604 0))(
  ( (array!13605 (arr!6451 (Array (_ BitVec 32) (_ BitVec 64))) (size!6803 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13604)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13604 (_ BitVec 32)) SeekEntryResult!1620)

(assert (=> b!275128 (= lt!137321 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!139160 () Bool)

(assert (=> start!26518 (=> (not res!139160) (not e!176044))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26518 (= res!139160 (validMask!0 mask!3868))))

(assert (=> start!26518 e!176044))

(declare-fun array_inv!4405 (array!13604) Bool)

(assert (=> start!26518 (array_inv!4405 a!3325)))

(assert (=> start!26518 true))

(declare-fun b!275129 () Bool)

(declare-fun res!139159 () Bool)

(assert (=> b!275129 (=> (not res!139159) (not e!176044))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275129 (= res!139159 (validKeyInArray!0 k!2581))))

(declare-fun b!275130 () Bool)

(declare-fun res!139158 () Bool)

(assert (=> b!275130 (=> (not res!139158) (not e!176044))))

(declare-datatypes ((List!4280 0))(
  ( (Nil!4277) (Cons!4276 (h!4943 (_ BitVec 64)) (t!9370 List!4280)) )
))
(declare-fun arrayNoDuplicates!0 (array!13604 (_ BitVec 32) List!4280) Bool)

(assert (=> b!275130 (= res!139158 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4277))))

(declare-fun b!275131 () Bool)

(declare-fun res!139156 () Bool)

(assert (=> b!275131 (=> (not res!139156) (not e!176044))))

(declare-fun arrayContainsKey!0 (array!13604 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275131 (= res!139156 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275132 () Bool)

(assert (=> b!275132 (= e!176043 false)))

(declare-fun lt!137320 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13604 (_ BitVec 32)) Bool)

(assert (=> b!275132 (= lt!137320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275133 () Bool)

(declare-fun res!139161 () Bool)

(assert (=> b!275133 (=> (not res!139161) (not e!176044))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275133 (= res!139161 (and (= (size!6803 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6803 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6803 a!3325))))))

(assert (= (and start!26518 res!139160) b!275133))

(assert (= (and b!275133 res!139161) b!275129))

(assert (= (and b!275129 res!139159) b!275130))

(assert (= (and b!275130 res!139158) b!275131))

(assert (= (and b!275131 res!139156) b!275128))

(assert (= (and b!275128 res!139157) b!275132))

(declare-fun m!290797 () Bool)

(assert (=> b!275128 m!290797))

(declare-fun m!290799 () Bool)

(assert (=> start!26518 m!290799))

(declare-fun m!290801 () Bool)

(assert (=> start!26518 m!290801))

(declare-fun m!290803 () Bool)

(assert (=> b!275131 m!290803))

(declare-fun m!290805 () Bool)

(assert (=> b!275132 m!290805))

(declare-fun m!290807 () Bool)

(assert (=> b!275130 m!290807))

(declare-fun m!290809 () Bool)

(assert (=> b!275129 m!290809))

(push 1)

(assert (not b!275130))

(assert (not b!275129))

