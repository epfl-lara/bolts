; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26654 () Bool)

(assert start!26654)

(declare-fun res!140574 () Bool)

(declare-fun e!176655 () Bool)

(assert (=> start!26654 (=> (not res!140574) (not e!176655))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26654 (= res!140574 (validMask!0 mask!3868))))

(assert (=> start!26654 e!176655))

(declare-datatypes ((array!13740 0))(
  ( (array!13741 (arr!6519 (Array (_ BitVec 32) (_ BitVec 64))) (size!6871 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13740)

(declare-fun array_inv!4473 (array!13740) Bool)

(assert (=> start!26654 (array_inv!4473 a!3325)))

(assert (=> start!26654 true))

(declare-fun b!276541 () Bool)

(declare-fun res!140572 () Bool)

(assert (=> b!276541 (=> (not res!140572) (not e!176655))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276541 (= res!140572 (and (= (size!6871 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6871 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6871 a!3325))))))

(declare-fun b!276542 () Bool)

(declare-fun e!176654 () Bool)

(assert (=> b!276542 (= e!176654 false)))

(declare-fun lt!137701 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13740 (_ BitVec 32)) Bool)

(assert (=> b!276542 (= lt!137701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276543 () Bool)

(declare-fun res!140570 () Bool)

(assert (=> b!276543 (=> (not res!140570) (not e!176655))))

(declare-datatypes ((List!4348 0))(
  ( (Nil!4345) (Cons!4344 (h!5011 (_ BitVec 64)) (t!9438 List!4348)) )
))
(declare-fun arrayNoDuplicates!0 (array!13740 (_ BitVec 32) List!4348) Bool)

(assert (=> b!276543 (= res!140570 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4345))))

(declare-fun b!276544 () Bool)

(declare-fun res!140569 () Bool)

(assert (=> b!276544 (=> (not res!140569) (not e!176655))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276544 (= res!140569 (validKeyInArray!0 k!2581))))

(declare-fun b!276545 () Bool)

(declare-fun res!140573 () Bool)

(assert (=> b!276545 (=> (not res!140573) (not e!176655))))

(declare-fun arrayContainsKey!0 (array!13740 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276545 (= res!140573 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276546 () Bool)

(assert (=> b!276546 (= e!176655 e!176654)))

(declare-fun res!140571 () Bool)

(assert (=> b!276546 (=> (not res!140571) (not e!176654))))

(declare-datatypes ((SeekEntryResult!1688 0))(
  ( (MissingZero!1688 (index!8922 (_ BitVec 32))) (Found!1688 (index!8923 (_ BitVec 32))) (Intermediate!1688 (undefined!2500 Bool) (index!8924 (_ BitVec 32)) (x!27149 (_ BitVec 32))) (Undefined!1688) (MissingVacant!1688 (index!8925 (_ BitVec 32))) )
))
(declare-fun lt!137702 () SeekEntryResult!1688)

(assert (=> b!276546 (= res!140571 (or (= lt!137702 (MissingZero!1688 i!1267)) (= lt!137702 (MissingVacant!1688 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13740 (_ BitVec 32)) SeekEntryResult!1688)

(assert (=> b!276546 (= lt!137702 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26654 res!140574) b!276541))

(assert (= (and b!276541 res!140572) b!276544))

(assert (= (and b!276544 res!140569) b!276543))

(assert (= (and b!276543 res!140570) b!276545))

(assert (= (and b!276545 res!140573) b!276546))

(assert (= (and b!276546 res!140571) b!276542))

(declare-fun m!291881 () Bool)

(assert (=> b!276546 m!291881))

(declare-fun m!291883 () Bool)

(assert (=> b!276544 m!291883))

(declare-fun m!291885 () Bool)

(assert (=> start!26654 m!291885))

(declare-fun m!291887 () Bool)

(assert (=> start!26654 m!291887))

(declare-fun m!291889 () Bool)

(assert (=> b!276543 m!291889))

(declare-fun m!291891 () Bool)

(assert (=> b!276542 m!291891))

(declare-fun m!291893 () Bool)

(assert (=> b!276545 m!291893))

(push 1)

(assert (not b!276543))

(assert (not b!276542))

(assert (not b!276546))

(assert (not b!276544))

(assert (not start!26654))

(assert (not b!276545))

(check-sat)

(pop 1)

