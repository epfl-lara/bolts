; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25958 () Bool)

(assert start!25958)

(declare-fun b!267803 () Bool)

(declare-fun e!173110 () Bool)

(assert (=> b!267803 (= e!173110 false)))

(declare-datatypes ((array!13044 0))(
  ( (array!13045 (arr!6171 (Array (_ BitVec 32) (_ BitVec 64))) (size!6523 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13044)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1340 0))(
  ( (MissingZero!1340 (index!7530 (_ BitVec 32))) (Found!1340 (index!7531 (_ BitVec 32))) (Intermediate!1340 (undefined!2152 Bool) (index!7532 (_ BitVec 32)) (x!25873 (_ BitVec 32))) (Undefined!1340) (MissingVacant!1340 (index!7533 (_ BitVec 32))) )
))
(declare-fun lt!134768 () SeekEntryResult!1340)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13044 (_ BitVec 32)) SeekEntryResult!1340)

(assert (=> b!267803 (= lt!134768 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!267804 () Bool)

(declare-fun res!132122 () Bool)

(assert (=> b!267804 (=> (not res!132122) (not e!173110))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267804 (= res!132122 (validKeyInArray!0 k!2581))))

(declare-fun b!267805 () Bool)

(declare-fun res!132119 () Bool)

(assert (=> b!267805 (=> (not res!132119) (not e!173110))))

(declare-datatypes ((List!4000 0))(
  ( (Nil!3997) (Cons!3996 (h!4663 (_ BitVec 64)) (t!9090 List!4000)) )
))
(declare-fun arrayNoDuplicates!0 (array!13044 (_ BitVec 32) List!4000) Bool)

(assert (=> b!267805 (= res!132119 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3997))))

(declare-fun b!267806 () Bool)

(declare-fun res!132120 () Bool)

(assert (=> b!267806 (=> (not res!132120) (not e!173110))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267806 (= res!132120 (and (= (size!6523 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6523 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6523 a!3325))))))

(declare-fun res!132123 () Bool)

(assert (=> start!25958 (=> (not res!132123) (not e!173110))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25958 (= res!132123 (validMask!0 mask!3868))))

(assert (=> start!25958 e!173110))

(declare-fun array_inv!4125 (array!13044) Bool)

(assert (=> start!25958 (array_inv!4125 a!3325)))

(assert (=> start!25958 true))

(declare-fun b!267807 () Bool)

(declare-fun res!132121 () Bool)

(assert (=> b!267807 (=> (not res!132121) (not e!173110))))

(declare-fun arrayContainsKey!0 (array!13044 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267807 (= res!132121 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!25958 res!132123) b!267806))

(assert (= (and b!267806 res!132120) b!267804))

(assert (= (and b!267804 res!132122) b!267805))

(assert (= (and b!267805 res!132119) b!267807))

(assert (= (and b!267807 res!132121) b!267803))

(declare-fun m!284113 () Bool)

(assert (=> b!267803 m!284113))

(declare-fun m!284115 () Bool)

(assert (=> start!25958 m!284115))

(declare-fun m!284117 () Bool)

(assert (=> start!25958 m!284117))

(declare-fun m!284119 () Bool)

(assert (=> b!267804 m!284119))

(declare-fun m!284121 () Bool)

(assert (=> b!267805 m!284121))

(declare-fun m!284123 () Bool)

(assert (=> b!267807 m!284123))

(push 1)

(assert (not b!267803))

(assert (not b!267807))

(assert (not start!25958))

(assert (not b!267805))

(assert (not b!267804))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

