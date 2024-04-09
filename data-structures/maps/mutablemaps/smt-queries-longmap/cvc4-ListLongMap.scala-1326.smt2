; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26528 () Bool)

(assert start!26528)

(declare-fun res!139248 () Bool)

(declare-fun e!176088 () Bool)

(assert (=> start!26528 (=> (not res!139248) (not e!176088))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26528 (= res!139248 (validMask!0 mask!3868))))

(assert (=> start!26528 e!176088))

(declare-datatypes ((array!13614 0))(
  ( (array!13615 (arr!6456 (Array (_ BitVec 32) (_ BitVec 64))) (size!6808 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13614)

(declare-fun array_inv!4410 (array!13614) Bool)

(assert (=> start!26528 (array_inv!4410 a!3325)))

(assert (=> start!26528 true))

(declare-fun b!275218 () Bool)

(declare-fun res!139250 () Bool)

(assert (=> b!275218 (=> (not res!139250) (not e!176088))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275218 (= res!139250 (validKeyInArray!0 k!2581))))

(declare-fun b!275219 () Bool)

(declare-fun e!176087 () Bool)

(assert (=> b!275219 (= e!176087 false)))

(declare-fun lt!137351 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13614 (_ BitVec 32)) Bool)

(assert (=> b!275219 (= lt!137351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275220 () Bool)

(assert (=> b!275220 (= e!176088 e!176087)))

(declare-fun res!139247 () Bool)

(assert (=> b!275220 (=> (not res!139247) (not e!176087))))

(declare-datatypes ((SeekEntryResult!1625 0))(
  ( (MissingZero!1625 (index!8670 (_ BitVec 32))) (Found!1625 (index!8671 (_ BitVec 32))) (Intermediate!1625 (undefined!2437 Bool) (index!8672 (_ BitVec 32)) (x!26918 (_ BitVec 32))) (Undefined!1625) (MissingVacant!1625 (index!8673 (_ BitVec 32))) )
))
(declare-fun lt!137350 () SeekEntryResult!1625)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!275220 (= res!139247 (or (= lt!137350 (MissingZero!1625 i!1267)) (= lt!137350 (MissingVacant!1625 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13614 (_ BitVec 32)) SeekEntryResult!1625)

(assert (=> b!275220 (= lt!137350 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275221 () Bool)

(declare-fun res!139251 () Bool)

(assert (=> b!275221 (=> (not res!139251) (not e!176088))))

(declare-datatypes ((List!4285 0))(
  ( (Nil!4282) (Cons!4281 (h!4948 (_ BitVec 64)) (t!9375 List!4285)) )
))
(declare-fun arrayNoDuplicates!0 (array!13614 (_ BitVec 32) List!4285) Bool)

(assert (=> b!275221 (= res!139251 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4282))))

(declare-fun b!275222 () Bool)

(declare-fun res!139246 () Bool)

(assert (=> b!275222 (=> (not res!139246) (not e!176088))))

(declare-fun arrayContainsKey!0 (array!13614 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275222 (= res!139246 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275223 () Bool)

(declare-fun res!139249 () Bool)

(assert (=> b!275223 (=> (not res!139249) (not e!176088))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275223 (= res!139249 (and (= (size!6808 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6808 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6808 a!3325))))))

(assert (= (and start!26528 res!139248) b!275223))

(assert (= (and b!275223 res!139249) b!275218))

(assert (= (and b!275218 res!139250) b!275221))

(assert (= (and b!275221 res!139251) b!275222))

(assert (= (and b!275222 res!139246) b!275220))

(assert (= (and b!275220 res!139247) b!275219))

(declare-fun m!290867 () Bool)

(assert (=> start!26528 m!290867))

(declare-fun m!290869 () Bool)

(assert (=> start!26528 m!290869))

(declare-fun m!290871 () Bool)

(assert (=> b!275221 m!290871))

(declare-fun m!290873 () Bool)

(assert (=> b!275220 m!290873))

(declare-fun m!290875 () Bool)

(assert (=> b!275219 m!290875))

(declare-fun m!290877 () Bool)

(assert (=> b!275218 m!290877))

(declare-fun m!290879 () Bool)

(assert (=> b!275222 m!290879))

(push 1)

(assert (not b!275218))

(assert (not b!275221))

(assert (not b!275219))

