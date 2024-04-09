; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26522 () Bool)

(assert start!26522)

(declare-fun res!139194 () Bool)

(declare-fun e!176061 () Bool)

(assert (=> start!26522 (=> (not res!139194) (not e!176061))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26522 (= res!139194 (validMask!0 mask!3868))))

(assert (=> start!26522 e!176061))

(declare-datatypes ((array!13608 0))(
  ( (array!13609 (arr!6453 (Array (_ BitVec 32) (_ BitVec 64))) (size!6805 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13608)

(declare-fun array_inv!4407 (array!13608) Bool)

(assert (=> start!26522 (array_inv!4407 a!3325)))

(assert (=> start!26522 true))

(declare-fun b!275164 () Bool)

(declare-fun res!139197 () Bool)

(assert (=> b!275164 (=> (not res!139197) (not e!176061))))

(declare-datatypes ((List!4282 0))(
  ( (Nil!4279) (Cons!4278 (h!4945 (_ BitVec 64)) (t!9372 List!4282)) )
))
(declare-fun arrayNoDuplicates!0 (array!13608 (_ BitVec 32) List!4282) Bool)

(assert (=> b!275164 (= res!139197 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4279))))

(declare-fun b!275165 () Bool)

(declare-fun res!139196 () Bool)

(assert (=> b!275165 (=> (not res!139196) (not e!176061))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13608 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275165 (= res!139196 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275166 () Bool)

(declare-fun res!139192 () Bool)

(assert (=> b!275166 (=> (not res!139192) (not e!176061))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275166 (= res!139192 (and (= (size!6805 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6805 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6805 a!3325))))))

(declare-fun b!275167 () Bool)

(declare-fun e!176060 () Bool)

(assert (=> b!275167 (= e!176060 false)))

(declare-fun lt!137333 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13608 (_ BitVec 32)) Bool)

(assert (=> b!275167 (= lt!137333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275168 () Bool)

(declare-fun res!139195 () Bool)

(assert (=> b!275168 (=> (not res!139195) (not e!176061))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275168 (= res!139195 (validKeyInArray!0 k!2581))))

(declare-fun b!275169 () Bool)

(assert (=> b!275169 (= e!176061 e!176060)))

(declare-fun res!139193 () Bool)

(assert (=> b!275169 (=> (not res!139193) (not e!176060))))

(declare-datatypes ((SeekEntryResult!1622 0))(
  ( (MissingZero!1622 (index!8658 (_ BitVec 32))) (Found!1622 (index!8659 (_ BitVec 32))) (Intermediate!1622 (undefined!2434 Bool) (index!8660 (_ BitVec 32)) (x!26907 (_ BitVec 32))) (Undefined!1622) (MissingVacant!1622 (index!8661 (_ BitVec 32))) )
))
(declare-fun lt!137332 () SeekEntryResult!1622)

(assert (=> b!275169 (= res!139193 (or (= lt!137332 (MissingZero!1622 i!1267)) (= lt!137332 (MissingVacant!1622 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13608 (_ BitVec 32)) SeekEntryResult!1622)

(assert (=> b!275169 (= lt!137332 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26522 res!139194) b!275166))

(assert (= (and b!275166 res!139192) b!275168))

(assert (= (and b!275168 res!139195) b!275164))

(assert (= (and b!275164 res!139197) b!275165))

(assert (= (and b!275165 res!139196) b!275169))

(assert (= (and b!275169 res!139193) b!275167))

(declare-fun m!290825 () Bool)

(assert (=> b!275168 m!290825))

(declare-fun m!290827 () Bool)

(assert (=> b!275167 m!290827))

(declare-fun m!290829 () Bool)

(assert (=> b!275165 m!290829))

(declare-fun m!290831 () Bool)

(assert (=> b!275169 m!290831))

(declare-fun m!290833 () Bool)

(assert (=> start!26522 m!290833))

(declare-fun m!290835 () Bool)

(assert (=> start!26522 m!290835))

(declare-fun m!290837 () Bool)

(assert (=> b!275164 m!290837))

(push 1)

(assert (not b!275164))

(assert (not b!275167))

(assert (not start!26522))

(assert (not b!275165))

(assert (not b!275169))

(assert (not b!275168))

(check-sat)

