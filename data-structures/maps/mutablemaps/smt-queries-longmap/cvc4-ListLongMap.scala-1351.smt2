; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26678 () Bool)

(assert start!26678)

(declare-fun b!276757 () Bool)

(declare-fun e!176763 () Bool)

(declare-fun e!176762 () Bool)

(assert (=> b!276757 (= e!176763 e!176762)))

(declare-fun res!140788 () Bool)

(assert (=> b!276757 (=> (not res!140788) (not e!176762))))

(declare-datatypes ((SeekEntryResult!1700 0))(
  ( (MissingZero!1700 (index!8970 (_ BitVec 32))) (Found!1700 (index!8971 (_ BitVec 32))) (Intermediate!1700 (undefined!2512 Bool) (index!8972 (_ BitVec 32)) (x!27193 (_ BitVec 32))) (Undefined!1700) (MissingVacant!1700 (index!8973 (_ BitVec 32))) )
))
(declare-fun lt!137774 () SeekEntryResult!1700)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276757 (= res!140788 (or (= lt!137774 (MissingZero!1700 i!1267)) (= lt!137774 (MissingVacant!1700 i!1267))))))

(declare-datatypes ((array!13764 0))(
  ( (array!13765 (arr!6531 (Array (_ BitVec 32) (_ BitVec 64))) (size!6883 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13764)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13764 (_ BitVec 32)) SeekEntryResult!1700)

(assert (=> b!276757 (= lt!137774 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276759 () Bool)

(declare-fun res!140790 () Bool)

(assert (=> b!276759 (=> (not res!140790) (not e!176763))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276759 (= res!140790 (and (= (size!6883 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6883 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6883 a!3325))))))

(declare-fun b!276760 () Bool)

(declare-fun res!140786 () Bool)

(assert (=> b!276760 (=> (not res!140786) (not e!176763))))

(declare-datatypes ((List!4360 0))(
  ( (Nil!4357) (Cons!4356 (h!5023 (_ BitVec 64)) (t!9450 List!4360)) )
))
(declare-fun arrayNoDuplicates!0 (array!13764 (_ BitVec 32) List!4360) Bool)

(assert (=> b!276760 (= res!140786 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4357))))

(declare-fun b!276758 () Bool)

(declare-fun res!140787 () Bool)

(assert (=> b!276758 (=> (not res!140787) (not e!176763))))

(declare-fun arrayContainsKey!0 (array!13764 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276758 (= res!140787 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!140789 () Bool)

(assert (=> start!26678 (=> (not res!140789) (not e!176763))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26678 (= res!140789 (validMask!0 mask!3868))))

(assert (=> start!26678 e!176763))

(declare-fun array_inv!4485 (array!13764) Bool)

(assert (=> start!26678 (array_inv!4485 a!3325)))

(assert (=> start!26678 true))

(declare-fun b!276761 () Bool)

(assert (=> b!276761 (= e!176762 false)))

(declare-fun lt!137773 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13764 (_ BitVec 32)) Bool)

(assert (=> b!276761 (= lt!137773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276762 () Bool)

(declare-fun res!140785 () Bool)

(assert (=> b!276762 (=> (not res!140785) (not e!176763))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276762 (= res!140785 (validKeyInArray!0 k!2581))))

(assert (= (and start!26678 res!140789) b!276759))

(assert (= (and b!276759 res!140790) b!276762))

(assert (= (and b!276762 res!140785) b!276760))

(assert (= (and b!276760 res!140786) b!276758))

(assert (= (and b!276758 res!140787) b!276757))

(assert (= (and b!276757 res!140788) b!276761))

(declare-fun m!292049 () Bool)

(assert (=> start!26678 m!292049))

(declare-fun m!292051 () Bool)

(assert (=> start!26678 m!292051))

(declare-fun m!292053 () Bool)

(assert (=> b!276761 m!292053))

(declare-fun m!292055 () Bool)

(assert (=> b!276762 m!292055))

(declare-fun m!292057 () Bool)

(assert (=> b!276760 m!292057))

(declare-fun m!292059 () Bool)

(assert (=> b!276758 m!292059))

(declare-fun m!292061 () Bool)

(assert (=> b!276757 m!292061))

(push 1)

