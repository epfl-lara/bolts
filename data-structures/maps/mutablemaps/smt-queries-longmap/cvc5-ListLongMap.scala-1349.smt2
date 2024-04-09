; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26662 () Bool)

(assert start!26662)

(declare-fun res!140644 () Bool)

(declare-fun e!176690 () Bool)

(assert (=> start!26662 (=> (not res!140644) (not e!176690))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26662 (= res!140644 (validMask!0 mask!3868))))

(assert (=> start!26662 e!176690))

(declare-datatypes ((array!13748 0))(
  ( (array!13749 (arr!6523 (Array (_ BitVec 32) (_ BitVec 64))) (size!6875 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13748)

(declare-fun array_inv!4477 (array!13748) Bool)

(assert (=> start!26662 (array_inv!4477 a!3325)))

(assert (=> start!26662 true))

(declare-fun b!276613 () Bool)

(declare-fun e!176692 () Bool)

(assert (=> b!276613 (= e!176690 e!176692)))

(declare-fun res!140646 () Bool)

(assert (=> b!276613 (=> (not res!140646) (not e!176692))))

(declare-datatypes ((SeekEntryResult!1692 0))(
  ( (MissingZero!1692 (index!8938 (_ BitVec 32))) (Found!1692 (index!8939 (_ BitVec 32))) (Intermediate!1692 (undefined!2504 Bool) (index!8940 (_ BitVec 32)) (x!27169 (_ BitVec 32))) (Undefined!1692) (MissingVacant!1692 (index!8941 (_ BitVec 32))) )
))
(declare-fun lt!137726 () SeekEntryResult!1692)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276613 (= res!140646 (or (= lt!137726 (MissingZero!1692 i!1267)) (= lt!137726 (MissingVacant!1692 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13748 (_ BitVec 32)) SeekEntryResult!1692)

(assert (=> b!276613 (= lt!137726 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276614 () Bool)

(declare-fun res!140642 () Bool)

(assert (=> b!276614 (=> (not res!140642) (not e!176690))))

(declare-fun arrayContainsKey!0 (array!13748 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276614 (= res!140642 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276615 () Bool)

(declare-fun res!140643 () Bool)

(assert (=> b!276615 (=> (not res!140643) (not e!176690))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276615 (= res!140643 (and (= (size!6875 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6875 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6875 a!3325))))))

(declare-fun b!276616 () Bool)

(assert (=> b!276616 (= e!176692 false)))

(declare-fun lt!137725 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13748 (_ BitVec 32)) Bool)

(assert (=> b!276616 (= lt!137725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276617 () Bool)

(declare-fun res!140645 () Bool)

(assert (=> b!276617 (=> (not res!140645) (not e!176690))))

(declare-datatypes ((List!4352 0))(
  ( (Nil!4349) (Cons!4348 (h!5015 (_ BitVec 64)) (t!9442 List!4352)) )
))
(declare-fun arrayNoDuplicates!0 (array!13748 (_ BitVec 32) List!4352) Bool)

(assert (=> b!276617 (= res!140645 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4349))))

(declare-fun b!276618 () Bool)

(declare-fun res!140641 () Bool)

(assert (=> b!276618 (=> (not res!140641) (not e!176690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276618 (= res!140641 (validKeyInArray!0 k!2581))))

(assert (= (and start!26662 res!140644) b!276615))

(assert (= (and b!276615 res!140643) b!276618))

(assert (= (and b!276618 res!140641) b!276617))

(assert (= (and b!276617 res!140645) b!276614))

(assert (= (and b!276614 res!140642) b!276613))

(assert (= (and b!276613 res!140646) b!276616))

(declare-fun m!291937 () Bool)

(assert (=> start!26662 m!291937))

(declare-fun m!291939 () Bool)

(assert (=> start!26662 m!291939))

(declare-fun m!291941 () Bool)

(assert (=> b!276618 m!291941))

(declare-fun m!291943 () Bool)

(assert (=> b!276614 m!291943))

(declare-fun m!291945 () Bool)

(assert (=> b!276613 m!291945))

(declare-fun m!291947 () Bool)

(assert (=> b!276617 m!291947))

(declare-fun m!291949 () Bool)

(assert (=> b!276616 m!291949))

(push 1)

