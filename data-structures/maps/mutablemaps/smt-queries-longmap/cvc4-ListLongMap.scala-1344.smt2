; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26636 () Bool)

(assert start!26636)

(declare-fun b!276370 () Bool)

(declare-fun res!140400 () Bool)

(declare-fun e!176575 () Bool)

(assert (=> b!276370 (=> (not res!140400) (not e!176575))))

(declare-datatypes ((array!13722 0))(
  ( (array!13723 (arr!6510 (Array (_ BitVec 32) (_ BitVec 64))) (size!6862 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13722)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!276370 (= res!140400 (and (= (size!6862 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6862 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6862 a!3325))))))

(declare-fun b!276371 () Bool)

(declare-fun e!176574 () Bool)

(assert (=> b!276371 (= e!176574 false)))

(declare-fun lt!137657 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13722 (_ BitVec 32)) Bool)

(assert (=> b!276371 (= lt!137657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!140401 () Bool)

(assert (=> start!26636 (=> (not res!140401) (not e!176575))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26636 (= res!140401 (validMask!0 mask!3868))))

(assert (=> start!26636 e!176575))

(declare-fun array_inv!4464 (array!13722) Bool)

(assert (=> start!26636 (array_inv!4464 a!3325)))

(assert (=> start!26636 true))

(declare-fun b!276372 () Bool)

(declare-fun res!140403 () Bool)

(assert (=> b!276372 (=> (not res!140403) (not e!176575))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13722 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276372 (= res!140403 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276373 () Bool)

(declare-fun res!140398 () Bool)

(assert (=> b!276373 (=> (not res!140398) (not e!176575))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276373 (= res!140398 (validKeyInArray!0 k!2581))))

(declare-fun b!276374 () Bool)

(assert (=> b!276374 (= e!176575 e!176574)))

(declare-fun res!140399 () Bool)

(assert (=> b!276374 (=> (not res!140399) (not e!176574))))

(declare-datatypes ((SeekEntryResult!1679 0))(
  ( (MissingZero!1679 (index!8886 (_ BitVec 32))) (Found!1679 (index!8887 (_ BitVec 32))) (Intermediate!1679 (undefined!2491 Bool) (index!8888 (_ BitVec 32)) (x!27116 (_ BitVec 32))) (Undefined!1679) (MissingVacant!1679 (index!8889 (_ BitVec 32))) )
))
(declare-fun lt!137656 () SeekEntryResult!1679)

(assert (=> b!276374 (= res!140399 (or (= lt!137656 (MissingZero!1679 i!1267)) (= lt!137656 (MissingVacant!1679 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13722 (_ BitVec 32)) SeekEntryResult!1679)

(assert (=> b!276374 (= lt!137656 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276375 () Bool)

(declare-fun res!140402 () Bool)

(assert (=> b!276375 (=> (not res!140402) (not e!176575))))

(declare-datatypes ((List!4339 0))(
  ( (Nil!4336) (Cons!4335 (h!5002 (_ BitVec 64)) (t!9429 List!4339)) )
))
(declare-fun arrayNoDuplicates!0 (array!13722 (_ BitVec 32) List!4339) Bool)

(assert (=> b!276375 (= res!140402 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4336))))

(assert (= (and start!26636 res!140401) b!276370))

(assert (= (and b!276370 res!140400) b!276373))

(assert (= (and b!276373 res!140398) b!276375))

(assert (= (and b!276375 res!140402) b!276372))

(assert (= (and b!276372 res!140403) b!276374))

(assert (= (and b!276374 res!140399) b!276371))

(declare-fun m!291755 () Bool)

(assert (=> b!276373 m!291755))

(declare-fun m!291757 () Bool)

(assert (=> b!276374 m!291757))

(declare-fun m!291759 () Bool)

(assert (=> b!276375 m!291759))

(declare-fun m!291761 () Bool)

(assert (=> start!26636 m!291761))

(declare-fun m!291763 () Bool)

(assert (=> start!26636 m!291763))

(declare-fun m!291765 () Bool)

(assert (=> b!276372 m!291765))

(declare-fun m!291767 () Bool)

(assert (=> b!276371 m!291767))

(push 1)

(assert (not b!276374))

(assert (not b!276375))

(assert (not b!276371))

(assert (not b!276373))

(assert (not b!276372))

(assert (not start!26636))

(check-sat)

(pop 1)

(push 1)

(check-sat)

