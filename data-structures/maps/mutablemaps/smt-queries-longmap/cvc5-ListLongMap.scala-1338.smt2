; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26596 () Bool)

(assert start!26596)

(declare-fun res!140007 () Bool)

(declare-fun e!176394 () Bool)

(assert (=> start!26596 (=> (not res!140007) (not e!176394))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26596 (= res!140007 (validMask!0 mask!3868))))

(assert (=> start!26596 e!176394))

(declare-datatypes ((array!13682 0))(
  ( (array!13683 (arr!6490 (Array (_ BitVec 32) (_ BitVec 64))) (size!6842 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13682)

(declare-fun array_inv!4444 (array!13682) Bool)

(assert (=> start!26596 (array_inv!4444 a!3325)))

(assert (=> start!26596 true))

(declare-fun b!275974 () Bool)

(declare-fun e!176393 () Bool)

(assert (=> b!275974 (= e!176393 false)))

(declare-fun lt!137554 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13682 (_ BitVec 32)) Bool)

(assert (=> b!275974 (= lt!137554 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275975 () Bool)

(declare-fun res!140004 () Bool)

(assert (=> b!275975 (=> (not res!140004) (not e!176394))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275975 (= res!140004 (validKeyInArray!0 k!2581))))

(declare-fun b!275976 () Bool)

(assert (=> b!275976 (= e!176394 e!176393)))

(declare-fun res!140006 () Bool)

(assert (=> b!275976 (=> (not res!140006) (not e!176393))))

(declare-datatypes ((SeekEntryResult!1659 0))(
  ( (MissingZero!1659 (index!8806 (_ BitVec 32))) (Found!1659 (index!8807 (_ BitVec 32))) (Intermediate!1659 (undefined!2471 Bool) (index!8808 (_ BitVec 32)) (x!27048 (_ BitVec 32))) (Undefined!1659) (MissingVacant!1659 (index!8809 (_ BitVec 32))) )
))
(declare-fun lt!137555 () SeekEntryResult!1659)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!275976 (= res!140006 (or (= lt!137555 (MissingZero!1659 i!1267)) (= lt!137555 (MissingVacant!1659 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13682 (_ BitVec 32)) SeekEntryResult!1659)

(assert (=> b!275976 (= lt!137555 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275977 () Bool)

(declare-fun res!140002 () Bool)

(assert (=> b!275977 (=> (not res!140002) (not e!176394))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275977 (= res!140002 (and (= (size!6842 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6842 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6842 a!3325))))))

(declare-fun b!275978 () Bool)

(declare-fun res!140005 () Bool)

(assert (=> b!275978 (=> (not res!140005) (not e!176394))))

(declare-datatypes ((List!4319 0))(
  ( (Nil!4316) (Cons!4315 (h!4982 (_ BitVec 64)) (t!9409 List!4319)) )
))
(declare-fun arrayNoDuplicates!0 (array!13682 (_ BitVec 32) List!4319) Bool)

(assert (=> b!275978 (= res!140005 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4316))))

(declare-fun b!275979 () Bool)

(declare-fun res!140003 () Bool)

(assert (=> b!275979 (=> (not res!140003) (not e!176394))))

(declare-fun arrayContainsKey!0 (array!13682 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275979 (= res!140003 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26596 res!140007) b!275977))

(assert (= (and b!275977 res!140002) b!275975))

(assert (= (and b!275975 res!140004) b!275978))

(assert (= (and b!275978 res!140005) b!275979))

(assert (= (and b!275979 res!140003) b!275976))

(assert (= (and b!275976 res!140006) b!275974))

(declare-fun m!291463 () Bool)

(assert (=> b!275974 m!291463))

(declare-fun m!291465 () Bool)

(assert (=> b!275976 m!291465))

(declare-fun m!291467 () Bool)

(assert (=> b!275975 m!291467))

(declare-fun m!291469 () Bool)

(assert (=> start!26596 m!291469))

(declare-fun m!291471 () Bool)

(assert (=> start!26596 m!291471))

(declare-fun m!291473 () Bool)

(assert (=> b!275978 m!291473))

(declare-fun m!291475 () Bool)

(assert (=> b!275979 m!291475))

(push 1)

(assert (not start!26596))

