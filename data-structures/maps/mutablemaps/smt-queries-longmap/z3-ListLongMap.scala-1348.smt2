; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26658 () Bool)

(assert start!26658)

(declare-fun b!276577 () Bool)

(declare-fun res!140608 () Bool)

(declare-fun e!176674 () Bool)

(assert (=> b!276577 (=> (not res!140608) (not e!176674))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276577 (= res!140608 (validKeyInArray!0 k0!2581))))

(declare-fun res!140605 () Bool)

(assert (=> start!26658 (=> (not res!140605) (not e!176674))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26658 (= res!140605 (validMask!0 mask!3868))))

(assert (=> start!26658 e!176674))

(declare-datatypes ((array!13744 0))(
  ( (array!13745 (arr!6521 (Array (_ BitVec 32) (_ BitVec 64))) (size!6873 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13744)

(declare-fun array_inv!4475 (array!13744) Bool)

(assert (=> start!26658 (array_inv!4475 a!3325)))

(assert (=> start!26658 true))

(declare-fun b!276578 () Bool)

(declare-fun res!140609 () Bool)

(assert (=> b!276578 (=> (not res!140609) (not e!176674))))

(declare-datatypes ((List!4350 0))(
  ( (Nil!4347) (Cons!4346 (h!5013 (_ BitVec 64)) (t!9440 List!4350)) )
))
(declare-fun arrayNoDuplicates!0 (array!13744 (_ BitVec 32) List!4350) Bool)

(assert (=> b!276578 (= res!140609 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4347))))

(declare-fun b!276579 () Bool)

(declare-fun res!140607 () Bool)

(assert (=> b!276579 (=> (not res!140607) (not e!176674))))

(declare-fun arrayContainsKey!0 (array!13744 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276579 (= res!140607 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276580 () Bool)

(declare-fun res!140606 () Bool)

(assert (=> b!276580 (=> (not res!140606) (not e!176674))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276580 (= res!140606 (and (= (size!6873 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6873 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6873 a!3325))))))

(declare-fun b!276581 () Bool)

(declare-fun e!176673 () Bool)

(assert (=> b!276581 (= e!176674 e!176673)))

(declare-fun res!140610 () Bool)

(assert (=> b!276581 (=> (not res!140610) (not e!176673))))

(declare-datatypes ((SeekEntryResult!1690 0))(
  ( (MissingZero!1690 (index!8930 (_ BitVec 32))) (Found!1690 (index!8931 (_ BitVec 32))) (Intermediate!1690 (undefined!2502 Bool) (index!8932 (_ BitVec 32)) (x!27159 (_ BitVec 32))) (Undefined!1690) (MissingVacant!1690 (index!8933 (_ BitVec 32))) )
))
(declare-fun lt!137713 () SeekEntryResult!1690)

(assert (=> b!276581 (= res!140610 (or (= lt!137713 (MissingZero!1690 i!1267)) (= lt!137713 (MissingVacant!1690 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13744 (_ BitVec 32)) SeekEntryResult!1690)

(assert (=> b!276581 (= lt!137713 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!276582 () Bool)

(assert (=> b!276582 (= e!176673 false)))

(declare-fun lt!137714 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13744 (_ BitVec 32)) Bool)

(assert (=> b!276582 (= lt!137714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26658 res!140605) b!276580))

(assert (= (and b!276580 res!140606) b!276577))

(assert (= (and b!276577 res!140608) b!276578))

(assert (= (and b!276578 res!140609) b!276579))

(assert (= (and b!276579 res!140607) b!276581))

(assert (= (and b!276581 res!140610) b!276582))

(declare-fun m!291909 () Bool)

(assert (=> b!276578 m!291909))

(declare-fun m!291911 () Bool)

(assert (=> b!276577 m!291911))

(declare-fun m!291913 () Bool)

(assert (=> b!276581 m!291913))

(declare-fun m!291915 () Bool)

(assert (=> b!276582 m!291915))

(declare-fun m!291917 () Bool)

(assert (=> b!276579 m!291917))

(declare-fun m!291919 () Bool)

(assert (=> start!26658 m!291919))

(declare-fun m!291921 () Bool)

(assert (=> start!26658 m!291921))

(check-sat (not start!26658) (not b!276577) (not b!276578) (not b!276582) (not b!276579) (not b!276581))
(check-sat)
