; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26648 () Bool)

(assert start!26648)

(declare-fun res!140517 () Bool)

(declare-fun e!176627 () Bool)

(assert (=> start!26648 (=> (not res!140517) (not e!176627))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26648 (= res!140517 (validMask!0 mask!3868))))

(assert (=> start!26648 e!176627))

(declare-datatypes ((array!13734 0))(
  ( (array!13735 (arr!6516 (Array (_ BitVec 32) (_ BitVec 64))) (size!6868 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13734)

(declare-fun array_inv!4470 (array!13734) Bool)

(assert (=> start!26648 (array_inv!4470 a!3325)))

(assert (=> start!26648 true))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun e!176629 () Bool)

(declare-fun b!276486 () Bool)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276486 (= e!176629 (and (= startIndex!26 i!1267) (bvslt startIndex!26 (bvsub (size!6868 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun b!276487 () Bool)

(declare-fun res!140514 () Bool)

(assert (=> b!276487 (=> (not res!140514) (not e!176627))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13734 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276487 (= res!140514 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276488 () Bool)

(assert (=> b!276488 (= e!176627 e!176629)))

(declare-fun res!140519 () Bool)

(assert (=> b!276488 (=> (not res!140519) (not e!176629))))

(declare-datatypes ((SeekEntryResult!1685 0))(
  ( (MissingZero!1685 (index!8910 (_ BitVec 32))) (Found!1685 (index!8911 (_ BitVec 32))) (Intermediate!1685 (undefined!2497 Bool) (index!8912 (_ BitVec 32)) (x!27138 (_ BitVec 32))) (Undefined!1685) (MissingVacant!1685 (index!8913 (_ BitVec 32))) )
))
(declare-fun lt!137684 () SeekEntryResult!1685)

(assert (=> b!276488 (= res!140519 (or (= lt!137684 (MissingZero!1685 i!1267)) (= lt!137684 (MissingVacant!1685 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13734 (_ BitVec 32)) SeekEntryResult!1685)

(assert (=> b!276488 (= lt!137684 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276489 () Bool)

(declare-fun res!140515 () Bool)

(assert (=> b!276489 (=> (not res!140515) (not e!176627))))

(assert (=> b!276489 (= res!140515 (and (= (size!6868 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6868 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6868 a!3325))))))

(declare-fun b!276490 () Bool)

(declare-fun res!140516 () Bool)

(assert (=> b!276490 (=> (not res!140516) (not e!176627))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276490 (= res!140516 (validKeyInArray!0 k!2581))))

(declare-fun b!276491 () Bool)

(declare-fun res!140520 () Bool)

(assert (=> b!276491 (=> (not res!140520) (not e!176627))))

(declare-datatypes ((List!4345 0))(
  ( (Nil!4342) (Cons!4341 (h!5008 (_ BitVec 64)) (t!9435 List!4345)) )
))
(declare-fun arrayNoDuplicates!0 (array!13734 (_ BitVec 32) List!4345) Bool)

(assert (=> b!276491 (= res!140520 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4342))))

(declare-fun b!276492 () Bool)

(declare-fun res!140518 () Bool)

(assert (=> b!276492 (=> (not res!140518) (not e!176629))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13734 (_ BitVec 32)) Bool)

(assert (=> b!276492 (= res!140518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26648 res!140517) b!276489))

(assert (= (and b!276489 res!140515) b!276490))

(assert (= (and b!276490 res!140516) b!276491))

(assert (= (and b!276491 res!140520) b!276487))

(assert (= (and b!276487 res!140514) b!276488))

(assert (= (and b!276488 res!140519) b!276492))

(assert (= (and b!276492 res!140518) b!276486))

(declare-fun m!291839 () Bool)

(assert (=> start!26648 m!291839))

(declare-fun m!291841 () Bool)

(assert (=> start!26648 m!291841))

(declare-fun m!291843 () Bool)

(assert (=> b!276488 m!291843))

(declare-fun m!291845 () Bool)

(assert (=> b!276491 m!291845))

(declare-fun m!291847 () Bool)

(assert (=> b!276490 m!291847))

(declare-fun m!291849 () Bool)

(assert (=> b!276487 m!291849))

(declare-fun m!291851 () Bool)

(assert (=> b!276492 m!291851))

(push 1)

(assert (not b!276488))

(assert (not b!276490))

(assert (not b!276491))

(assert (not b!276487))

(assert (not b!276492))

(assert (not start!26648))

(check-sat)

(pop 1)

(push 1)

(check-sat)

