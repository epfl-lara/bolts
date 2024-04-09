; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26516 () Bool)

(assert start!26516)

(declare-fun b!275110 () Bool)

(declare-fun res!139139 () Bool)

(declare-fun e!176033 () Bool)

(assert (=> b!275110 (=> (not res!139139) (not e!176033))))

(declare-datatypes ((array!13602 0))(
  ( (array!13603 (arr!6450 (Array (_ BitVec 32) (_ BitVec 64))) (size!6802 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13602)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!275110 (= res!139139 (and (= (size!6802 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6802 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6802 a!3325))))))

(declare-fun b!275111 () Bool)

(declare-fun res!139143 () Bool)

(assert (=> b!275111 (=> (not res!139143) (not e!176033))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13602 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275111 (= res!139143 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!139140 () Bool)

(assert (=> start!26516 (=> (not res!139140) (not e!176033))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26516 (= res!139140 (validMask!0 mask!3868))))

(assert (=> start!26516 e!176033))

(declare-fun array_inv!4404 (array!13602) Bool)

(assert (=> start!26516 (array_inv!4404 a!3325)))

(assert (=> start!26516 true))

(declare-fun b!275112 () Bool)

(declare-fun res!139142 () Bool)

(assert (=> b!275112 (=> (not res!139142) (not e!176033))))

(declare-datatypes ((List!4279 0))(
  ( (Nil!4276) (Cons!4275 (h!4942 (_ BitVec 64)) (t!9369 List!4279)) )
))
(declare-fun arrayNoDuplicates!0 (array!13602 (_ BitVec 32) List!4279) Bool)

(assert (=> b!275112 (= res!139142 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4276))))

(declare-fun b!275113 () Bool)

(declare-fun e!176035 () Bool)

(assert (=> b!275113 (= e!176033 e!176035)))

(declare-fun res!139138 () Bool)

(assert (=> b!275113 (=> (not res!139138) (not e!176035))))

(declare-datatypes ((SeekEntryResult!1619 0))(
  ( (MissingZero!1619 (index!8646 (_ BitVec 32))) (Found!1619 (index!8647 (_ BitVec 32))) (Intermediate!1619 (undefined!2431 Bool) (index!8648 (_ BitVec 32)) (x!26896 (_ BitVec 32))) (Undefined!1619) (MissingVacant!1619 (index!8649 (_ BitVec 32))) )
))
(declare-fun lt!137315 () SeekEntryResult!1619)

(assert (=> b!275113 (= res!139138 (or (= lt!137315 (MissingZero!1619 i!1267)) (= lt!137315 (MissingVacant!1619 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13602 (_ BitVec 32)) SeekEntryResult!1619)

(assert (=> b!275113 (= lt!137315 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275114 () Bool)

(assert (=> b!275114 (= e!176035 false)))

(declare-fun lt!137314 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13602 (_ BitVec 32)) Bool)

(assert (=> b!275114 (= lt!137314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275115 () Bool)

(declare-fun res!139141 () Bool)

(assert (=> b!275115 (=> (not res!139141) (not e!176033))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275115 (= res!139141 (validKeyInArray!0 k!2581))))

(assert (= (and start!26516 res!139140) b!275110))

(assert (= (and b!275110 res!139139) b!275115))

(assert (= (and b!275115 res!139141) b!275112))

(assert (= (and b!275112 res!139142) b!275111))

(assert (= (and b!275111 res!139143) b!275113))

(assert (= (and b!275113 res!139138) b!275114))

(declare-fun m!290783 () Bool)

(assert (=> b!275115 m!290783))

(declare-fun m!290785 () Bool)

(assert (=> b!275114 m!290785))

(declare-fun m!290787 () Bool)

(assert (=> b!275112 m!290787))

(declare-fun m!290789 () Bool)

(assert (=> start!26516 m!290789))

(declare-fun m!290791 () Bool)

(assert (=> start!26516 m!290791))

(declare-fun m!290793 () Bool)

(assert (=> b!275111 m!290793))

(declare-fun m!290795 () Bool)

(assert (=> b!275113 m!290795))

(push 1)

(assert (not b!275111))

(assert (not b!275113))

