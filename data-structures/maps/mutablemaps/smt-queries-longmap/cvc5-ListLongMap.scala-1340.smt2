; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26608 () Bool)

(assert start!26608)

(declare-fun b!276111 () Bool)

(declare-fun res!140139 () Bool)

(declare-fun e!176449 () Bool)

(assert (=> b!276111 (=> (not res!140139) (not e!176449))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276111 (= res!140139 (validKeyInArray!0 k!2581))))

(declare-fun b!276112 () Bool)

(declare-fun res!140141 () Bool)

(assert (=> b!276112 (=> (not res!140141) (not e!176449))))

(declare-datatypes ((array!13694 0))(
  ( (array!13695 (arr!6496 (Array (_ BitVec 32) (_ BitVec 64))) (size!6848 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13694)

(declare-fun arrayContainsKey!0 (array!13694 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276112 (= res!140141 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276113 () Bool)

(declare-fun e!176447 () Bool)

(assert (=> b!276113 (= e!176449 e!176447)))

(declare-fun res!140140 () Bool)

(assert (=> b!276113 (=> (not res!140140) (not e!176447))))

(declare-datatypes ((SeekEntryResult!1665 0))(
  ( (MissingZero!1665 (index!8830 (_ BitVec 32))) (Found!1665 (index!8831 (_ BitVec 32))) (Intermediate!1665 (undefined!2477 Bool) (index!8832 (_ BitVec 32)) (x!27070 (_ BitVec 32))) (Undefined!1665) (MissingVacant!1665 (index!8833 (_ BitVec 32))) )
))
(declare-fun lt!137579 () SeekEntryResult!1665)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276113 (= res!140140 (or (= lt!137579 (MissingZero!1665 i!1267)) (= lt!137579 (MissingVacant!1665 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13694 (_ BitVec 32)) SeekEntryResult!1665)

(assert (=> b!276113 (= lt!137579 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!140143 () Bool)

(assert (=> start!26608 (=> (not res!140143) (not e!176449))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26608 (= res!140143 (validMask!0 mask!3868))))

(assert (=> start!26608 e!176449))

(declare-fun array_inv!4450 (array!13694) Bool)

(assert (=> start!26608 (array_inv!4450 a!3325)))

(assert (=> start!26608 true))

(declare-fun b!276114 () Bool)

(declare-fun res!140144 () Bool)

(assert (=> b!276114 (=> (not res!140144) (not e!176447))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13694 (_ BitVec 32)) Bool)

(assert (=> b!276114 (= res!140144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276115 () Bool)

(declare-fun res!140145 () Bool)

(assert (=> b!276115 (=> (not res!140145) (not e!176449))))

(declare-datatypes ((List!4325 0))(
  ( (Nil!4322) (Cons!4321 (h!4988 (_ BitVec 64)) (t!9415 List!4325)) )
))
(declare-fun arrayNoDuplicates!0 (array!13694 (_ BitVec 32) List!4325) Bool)

(assert (=> b!276115 (= res!140145 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4322))))

(declare-fun b!276116 () Bool)

(declare-fun res!140142 () Bool)

(assert (=> b!276116 (=> (not res!140142) (not e!176449))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276116 (= res!140142 (and (= (size!6848 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6848 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6848 a!3325))))))

(declare-fun b!276117 () Bool)

(assert (=> b!276117 (= e!176447 (bvslt (bvsub (size!6848 a!3325) startIndex!26) #b00000000000000000000000000000000))))

(assert (= (and start!26608 res!140143) b!276116))

(assert (= (and b!276116 res!140142) b!276111))

(assert (= (and b!276111 res!140139) b!276115))

(assert (= (and b!276115 res!140145) b!276112))

(assert (= (and b!276112 res!140141) b!276113))

(assert (= (and b!276113 res!140140) b!276114))

(assert (= (and b!276114 res!140144) b!276117))

(declare-fun m!291559 () Bool)

(assert (=> b!276115 m!291559))

(declare-fun m!291561 () Bool)

(assert (=> b!276113 m!291561))

(declare-fun m!291563 () Bool)

(assert (=> start!26608 m!291563))

(declare-fun m!291565 () Bool)

(assert (=> start!26608 m!291565))

(declare-fun m!291567 () Bool)

(assert (=> b!276112 m!291567))

(declare-fun m!291569 () Bool)

(assert (=> b!276114 m!291569))

(declare-fun m!291571 () Bool)

(assert (=> b!276111 m!291571))

(push 1)

(assert (not b!276111))

(assert (not b!276115))

(assert (not b!276113))

(assert (not b!276114))

(assert (not start!26608))

(assert (not b!276112))

(check-sat)

(pop 1)

(push 1)

(check-sat)

