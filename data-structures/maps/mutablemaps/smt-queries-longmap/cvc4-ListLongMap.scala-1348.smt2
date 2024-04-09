; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26660 () Bool)

(assert start!26660)

(declare-fun b!276595 () Bool)

(declare-fun res!140627 () Bool)

(declare-fun e!176682 () Bool)

(assert (=> b!276595 (=> (not res!140627) (not e!176682))))

(declare-datatypes ((array!13746 0))(
  ( (array!13747 (arr!6522 (Array (_ BitVec 32) (_ BitVec 64))) (size!6874 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13746)

(declare-datatypes ((List!4351 0))(
  ( (Nil!4348) (Cons!4347 (h!5014 (_ BitVec 64)) (t!9441 List!4351)) )
))
(declare-fun arrayNoDuplicates!0 (array!13746 (_ BitVec 32) List!4351) Bool)

(assert (=> b!276595 (= res!140627 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4348))))

(declare-fun b!276596 () Bool)

(declare-fun res!140625 () Bool)

(assert (=> b!276596 (=> (not res!140625) (not e!176682))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13746 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276596 (= res!140625 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276597 () Bool)

(declare-fun res!140624 () Bool)

(assert (=> b!276597 (=> (not res!140624) (not e!176682))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!276597 (= res!140624 (and (= (size!6874 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6874 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6874 a!3325))))))

(declare-fun b!276598 () Bool)

(declare-fun e!176683 () Bool)

(assert (=> b!276598 (= e!176682 e!176683)))

(declare-fun res!140628 () Bool)

(assert (=> b!276598 (=> (not res!140628) (not e!176683))))

(declare-datatypes ((SeekEntryResult!1691 0))(
  ( (MissingZero!1691 (index!8934 (_ BitVec 32))) (Found!1691 (index!8935 (_ BitVec 32))) (Intermediate!1691 (undefined!2503 Bool) (index!8936 (_ BitVec 32)) (x!27160 (_ BitVec 32))) (Undefined!1691) (MissingVacant!1691 (index!8937 (_ BitVec 32))) )
))
(declare-fun lt!137720 () SeekEntryResult!1691)

(assert (=> b!276598 (= res!140628 (or (= lt!137720 (MissingZero!1691 i!1267)) (= lt!137720 (MissingVacant!1691 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13746 (_ BitVec 32)) SeekEntryResult!1691)

(assert (=> b!276598 (= lt!137720 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276599 () Bool)

(assert (=> b!276599 (= e!176683 false)))

(declare-fun lt!137719 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13746 (_ BitVec 32)) Bool)

(assert (=> b!276599 (= lt!137719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276600 () Bool)

(declare-fun res!140623 () Bool)

(assert (=> b!276600 (=> (not res!140623) (not e!176682))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276600 (= res!140623 (validKeyInArray!0 k!2581))))

(declare-fun res!140626 () Bool)

(assert (=> start!26660 (=> (not res!140626) (not e!176682))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26660 (= res!140626 (validMask!0 mask!3868))))

(assert (=> start!26660 e!176682))

(declare-fun array_inv!4476 (array!13746) Bool)

(assert (=> start!26660 (array_inv!4476 a!3325)))

(assert (=> start!26660 true))

(assert (= (and start!26660 res!140626) b!276597))

(assert (= (and b!276597 res!140624) b!276600))

(assert (= (and b!276600 res!140623) b!276595))

(assert (= (and b!276595 res!140627) b!276596))

(assert (= (and b!276596 res!140625) b!276598))

(assert (= (and b!276598 res!140628) b!276599))

(declare-fun m!291923 () Bool)

(assert (=> start!26660 m!291923))

(declare-fun m!291925 () Bool)

(assert (=> start!26660 m!291925))

(declare-fun m!291927 () Bool)

(assert (=> b!276598 m!291927))

(declare-fun m!291929 () Bool)

(assert (=> b!276596 m!291929))

(declare-fun m!291931 () Bool)

(assert (=> b!276600 m!291931))

(declare-fun m!291933 () Bool)

(assert (=> b!276599 m!291933))

(declare-fun m!291935 () Bool)

(assert (=> b!276595 m!291935))

(push 1)

(assert (not b!276599))

(assert (not b!276596))

(assert (not start!26660))

