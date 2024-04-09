; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26534 () Bool)

(assert start!26534)

(declare-fun b!275272 () Bool)

(declare-fun res!139305 () Bool)

(declare-fun e!176115 () Bool)

(assert (=> b!275272 (=> (not res!139305) (not e!176115))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275272 (= res!139305 (validKeyInArray!0 k!2581))))

(declare-fun b!275273 () Bool)

(declare-fun res!139301 () Bool)

(assert (=> b!275273 (=> (not res!139301) (not e!176115))))

(declare-datatypes ((array!13620 0))(
  ( (array!13621 (arr!6459 (Array (_ BitVec 32) (_ BitVec 64))) (size!6811 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13620)

(declare-fun arrayContainsKey!0 (array!13620 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275273 (= res!139301 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275274 () Bool)

(declare-fun res!139300 () Bool)

(assert (=> b!275274 (=> (not res!139300) (not e!176115))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!275274 (= res!139300 (and (= (size!6811 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6811 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6811 a!3325))))))

(declare-fun res!139304 () Bool)

(assert (=> start!26534 (=> (not res!139304) (not e!176115))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26534 (= res!139304 (validMask!0 mask!3868))))

(assert (=> start!26534 e!176115))

(declare-fun array_inv!4413 (array!13620) Bool)

(assert (=> start!26534 (array_inv!4413 a!3325)))

(assert (=> start!26534 true))

(declare-fun b!275275 () Bool)

(declare-fun e!176116 () Bool)

(assert (=> b!275275 (= e!176115 e!176116)))

(declare-fun res!139303 () Bool)

(assert (=> b!275275 (=> (not res!139303) (not e!176116))))

(declare-datatypes ((SeekEntryResult!1628 0))(
  ( (MissingZero!1628 (index!8682 (_ BitVec 32))) (Found!1628 (index!8683 (_ BitVec 32))) (Intermediate!1628 (undefined!2440 Bool) (index!8684 (_ BitVec 32)) (x!26929 (_ BitVec 32))) (Undefined!1628) (MissingVacant!1628 (index!8685 (_ BitVec 32))) )
))
(declare-fun lt!137369 () SeekEntryResult!1628)

(assert (=> b!275275 (= res!139303 (or (= lt!137369 (MissingZero!1628 i!1267)) (= lt!137369 (MissingVacant!1628 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13620 (_ BitVec 32)) SeekEntryResult!1628)

(assert (=> b!275275 (= lt!137369 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275276 () Bool)

(declare-fun res!139302 () Bool)

(assert (=> b!275276 (=> (not res!139302) (not e!176115))))

(declare-datatypes ((List!4288 0))(
  ( (Nil!4285) (Cons!4284 (h!4951 (_ BitVec 64)) (t!9378 List!4288)) )
))
(declare-fun arrayNoDuplicates!0 (array!13620 (_ BitVec 32) List!4288) Bool)

(assert (=> b!275276 (= res!139302 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4285))))

(declare-fun b!275277 () Bool)

(assert (=> b!275277 (= e!176116 false)))

(declare-fun lt!137368 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13620 (_ BitVec 32)) Bool)

(assert (=> b!275277 (= lt!137368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26534 res!139304) b!275274))

(assert (= (and b!275274 res!139300) b!275272))

(assert (= (and b!275272 res!139305) b!275276))

(assert (= (and b!275276 res!139302) b!275273))

(assert (= (and b!275273 res!139301) b!275275))

(assert (= (and b!275275 res!139303) b!275277))

(declare-fun m!290909 () Bool)

(assert (=> b!275273 m!290909))

(declare-fun m!290911 () Bool)

(assert (=> b!275277 m!290911))

(declare-fun m!290913 () Bool)

(assert (=> b!275275 m!290913))

(declare-fun m!290915 () Bool)

(assert (=> start!26534 m!290915))

(declare-fun m!290917 () Bool)

(assert (=> start!26534 m!290917))

(declare-fun m!290919 () Bool)

(assert (=> b!275276 m!290919))

(declare-fun m!290921 () Bool)

(assert (=> b!275272 m!290921))

(push 1)

(assert (not b!275277))

(assert (not b!275273))

(assert (not b!275275))

(assert (not b!275272))

