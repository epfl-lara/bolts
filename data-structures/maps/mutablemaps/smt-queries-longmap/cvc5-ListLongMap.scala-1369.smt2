; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26920 () Bool)

(assert start!26920)

(declare-fun b!278854 () Bool)

(declare-fun res!142236 () Bool)

(declare-fun e!177839 () Bool)

(assert (=> b!278854 (=> (not res!142236) (not e!177839))))

(declare-datatypes ((array!13874 0))(
  ( (array!13875 (arr!6583 (Array (_ BitVec 32) (_ BitVec 64))) (size!6935 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13874)

(declare-datatypes ((List!4412 0))(
  ( (Nil!4409) (Cons!4408 (h!5078 (_ BitVec 64)) (t!9502 List!4412)) )
))
(declare-fun arrayNoDuplicates!0 (array!13874 (_ BitVec 32) List!4412) Bool)

(assert (=> b!278854 (= res!142236 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4409))))

(declare-fun b!278855 () Bool)

(declare-fun res!142234 () Bool)

(assert (=> b!278855 (=> (not res!142234) (not e!177839))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13874 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!278855 (= res!142234 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!278856 () Bool)

(declare-fun res!142235 () Bool)

(declare-fun e!177841 () Bool)

(assert (=> b!278856 (=> (not res!142235) (not e!177841))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13874 (_ BitVec 32)) Bool)

(assert (=> b!278856 (= res!142235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!278857 () Bool)

(declare-fun res!142232 () Bool)

(assert (=> b!278857 (=> (not res!142232) (not e!177839))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!278857 (= res!142232 (and (= (size!6935 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6935 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6935 a!3325))))))

(declare-fun b!278858 () Bool)

(declare-fun res!142239 () Bool)

(assert (=> b!278858 (=> (not res!142239) (not e!177841))))

(assert (=> b!278858 (= res!142239 (not (= startIndex!26 i!1267)))))

(declare-fun b!278859 () Bool)

(assert (=> b!278859 (= e!177841 (and (bvslt (size!6935 a!3325) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!6935 a!3325))))))

(declare-fun res!142238 () Bool)

(assert (=> start!26920 (=> (not res!142238) (not e!177839))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26920 (= res!142238 (validMask!0 mask!3868))))

(assert (=> start!26920 e!177839))

(declare-fun array_inv!4537 (array!13874) Bool)

(assert (=> start!26920 (array_inv!4537 a!3325)))

(assert (=> start!26920 true))

(declare-fun b!278860 () Bool)

(declare-fun res!142237 () Bool)

(assert (=> b!278860 (=> (not res!142237) (not e!177839))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!278860 (= res!142237 (validKeyInArray!0 k!2581))))

(declare-fun b!278861 () Bool)

(declare-fun res!142231 () Bool)

(assert (=> b!278861 (=> (not res!142231) (not e!177841))))

(assert (=> b!278861 (= res!142231 (validKeyInArray!0 (select (arr!6583 a!3325) startIndex!26)))))

(declare-fun b!278862 () Bool)

(assert (=> b!278862 (= e!177839 e!177841)))

(declare-fun res!142233 () Bool)

(assert (=> b!278862 (=> (not res!142233) (not e!177841))))

(declare-datatypes ((SeekEntryResult!1752 0))(
  ( (MissingZero!1752 (index!9178 (_ BitVec 32))) (Found!1752 (index!9179 (_ BitVec 32))) (Intermediate!1752 (undefined!2564 Bool) (index!9180 (_ BitVec 32)) (x!27398 (_ BitVec 32))) (Undefined!1752) (MissingVacant!1752 (index!9181 (_ BitVec 32))) )
))
(declare-fun lt!138533 () SeekEntryResult!1752)

(assert (=> b!278862 (= res!142233 (or (= lt!138533 (MissingZero!1752 i!1267)) (= lt!138533 (MissingVacant!1752 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13874 (_ BitVec 32)) SeekEntryResult!1752)

(assert (=> b!278862 (= lt!138533 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26920 res!142238) b!278857))

(assert (= (and b!278857 res!142232) b!278860))

(assert (= (and b!278860 res!142237) b!278854))

(assert (= (and b!278854 res!142236) b!278855))

(assert (= (and b!278855 res!142234) b!278862))

(assert (= (and b!278862 res!142233) b!278856))

(assert (= (and b!278856 res!142235) b!278858))

(assert (= (and b!278858 res!142239) b!278861))

(assert (= (and b!278861 res!142231) b!278859))

(declare-fun m!293827 () Bool)

(assert (=> b!278862 m!293827))

(declare-fun m!293829 () Bool)

(assert (=> b!278854 m!293829))

(declare-fun m!293831 () Bool)

(assert (=> b!278855 m!293831))

(declare-fun m!293833 () Bool)

(assert (=> b!278856 m!293833))

(declare-fun m!293835 () Bool)

(assert (=> b!278861 m!293835))

(assert (=> b!278861 m!293835))

(declare-fun m!293837 () Bool)

(assert (=> b!278861 m!293837))

(declare-fun m!293839 () Bool)

(assert (=> start!26920 m!293839))

(declare-fun m!293841 () Bool)

(assert (=> start!26920 m!293841))

(declare-fun m!293843 () Bool)

(assert (=> b!278860 m!293843))

(push 1)

