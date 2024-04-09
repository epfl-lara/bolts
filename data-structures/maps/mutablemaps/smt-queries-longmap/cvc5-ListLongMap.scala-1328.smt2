; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26536 () Bool)

(assert start!26536)

(declare-fun b!275290 () Bool)

(declare-fun e!176125 () Bool)

(assert (=> b!275290 (= e!176125 false)))

(declare-fun lt!137374 () Bool)

(declare-datatypes ((array!13622 0))(
  ( (array!13623 (arr!6460 (Array (_ BitVec 32) (_ BitVec 64))) (size!6812 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13622)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13622 (_ BitVec 32)) Bool)

(assert (=> b!275290 (= lt!137374 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275291 () Bool)

(declare-fun res!139318 () Bool)

(declare-fun e!176124 () Bool)

(assert (=> b!275291 (=> (not res!139318) (not e!176124))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275291 (= res!139318 (and (= (size!6812 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6812 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6812 a!3325))))))

(declare-fun b!275292 () Bool)

(declare-fun res!139320 () Bool)

(assert (=> b!275292 (=> (not res!139320) (not e!176124))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13622 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275292 (= res!139320 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275293 () Bool)

(declare-fun res!139322 () Bool)

(assert (=> b!275293 (=> (not res!139322) (not e!176124))))

(declare-datatypes ((List!4289 0))(
  ( (Nil!4286) (Cons!4285 (h!4952 (_ BitVec 64)) (t!9379 List!4289)) )
))
(declare-fun arrayNoDuplicates!0 (array!13622 (_ BitVec 32) List!4289) Bool)

(assert (=> b!275293 (= res!139322 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4286))))

(declare-fun b!275294 () Bool)

(declare-fun res!139321 () Bool)

(assert (=> b!275294 (=> (not res!139321) (not e!176124))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275294 (= res!139321 (validKeyInArray!0 k!2581))))

(declare-fun b!275295 () Bool)

(assert (=> b!275295 (= e!176124 e!176125)))

(declare-fun res!139319 () Bool)

(assert (=> b!275295 (=> (not res!139319) (not e!176125))))

(declare-datatypes ((SeekEntryResult!1629 0))(
  ( (MissingZero!1629 (index!8686 (_ BitVec 32))) (Found!1629 (index!8687 (_ BitVec 32))) (Intermediate!1629 (undefined!2441 Bool) (index!8688 (_ BitVec 32)) (x!26938 (_ BitVec 32))) (Undefined!1629) (MissingVacant!1629 (index!8689 (_ BitVec 32))) )
))
(declare-fun lt!137375 () SeekEntryResult!1629)

(assert (=> b!275295 (= res!139319 (or (= lt!137375 (MissingZero!1629 i!1267)) (= lt!137375 (MissingVacant!1629 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13622 (_ BitVec 32)) SeekEntryResult!1629)

(assert (=> b!275295 (= lt!137375 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!139323 () Bool)

(assert (=> start!26536 (=> (not res!139323) (not e!176124))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26536 (= res!139323 (validMask!0 mask!3868))))

(assert (=> start!26536 e!176124))

(declare-fun array_inv!4414 (array!13622) Bool)

(assert (=> start!26536 (array_inv!4414 a!3325)))

(assert (=> start!26536 true))

(assert (= (and start!26536 res!139323) b!275291))

(assert (= (and b!275291 res!139318) b!275294))

(assert (= (and b!275294 res!139321) b!275293))

(assert (= (and b!275293 res!139322) b!275292))

(assert (= (and b!275292 res!139320) b!275295))

(assert (= (and b!275295 res!139319) b!275290))

(declare-fun m!290923 () Bool)

(assert (=> b!275290 m!290923))

(declare-fun m!290925 () Bool)

(assert (=> b!275295 m!290925))

(declare-fun m!290927 () Bool)

(assert (=> b!275294 m!290927))

(declare-fun m!290929 () Bool)

(assert (=> b!275293 m!290929))

(declare-fun m!290931 () Bool)

(assert (=> start!26536 m!290931))

(declare-fun m!290933 () Bool)

(assert (=> start!26536 m!290933))

(declare-fun m!290935 () Bool)

(assert (=> b!275292 m!290935))

(push 1)

(assert (not b!275292))

