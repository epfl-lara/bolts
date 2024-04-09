; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26650 () Bool)

(assert start!26650)

(declare-fun b!276505 () Bool)

(declare-fun e!176636 () Bool)

(declare-fun e!176638 () Bool)

(assert (=> b!276505 (= e!176636 e!176638)))

(declare-fun res!140534 () Bool)

(assert (=> b!276505 (=> (not res!140534) (not e!176638))))

(declare-datatypes ((SeekEntryResult!1686 0))(
  ( (MissingZero!1686 (index!8914 (_ BitVec 32))) (Found!1686 (index!8915 (_ BitVec 32))) (Intermediate!1686 (undefined!2498 Bool) (index!8916 (_ BitVec 32)) (x!27147 (_ BitVec 32))) (Undefined!1686) (MissingVacant!1686 (index!8917 (_ BitVec 32))) )
))
(declare-fun lt!137689 () SeekEntryResult!1686)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276505 (= res!140534 (or (= lt!137689 (MissingZero!1686 i!1267)) (= lt!137689 (MissingVacant!1686 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-datatypes ((array!13736 0))(
  ( (array!13737 (arr!6517 (Array (_ BitVec 32) (_ BitVec 64))) (size!6869 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13736)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13736 (_ BitVec 32)) SeekEntryResult!1686)

(assert (=> b!276505 (= lt!137689 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276506 () Bool)

(declare-fun res!140533 () Bool)

(assert (=> b!276506 (=> (not res!140533) (not e!176636))))

(declare-datatypes ((List!4346 0))(
  ( (Nil!4343) (Cons!4342 (h!5009 (_ BitVec 64)) (t!9436 List!4346)) )
))
(declare-fun arrayNoDuplicates!0 (array!13736 (_ BitVec 32) List!4346) Bool)

(assert (=> b!276506 (= res!140533 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4343))))

(declare-fun b!276507 () Bool)

(declare-fun res!140536 () Bool)

(assert (=> b!276507 (=> (not res!140536) (not e!176636))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276507 (= res!140536 (validKeyInArray!0 k!2581))))

(declare-fun b!276508 () Bool)

(declare-fun res!140535 () Bool)

(assert (=> b!276508 (=> (not res!140535) (not e!176636))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276508 (= res!140535 (and (= (size!6869 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6869 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6869 a!3325))))))

(declare-fun b!276509 () Bool)

(declare-fun res!140538 () Bool)

(assert (=> b!276509 (=> (not res!140538) (not e!176636))))

(declare-fun arrayContainsKey!0 (array!13736 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276509 (= res!140538 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276510 () Bool)

(assert (=> b!276510 (= e!176638 false)))

(declare-fun lt!137690 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13736 (_ BitVec 32)) Bool)

(assert (=> b!276510 (= lt!137690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!140537 () Bool)

(assert (=> start!26650 (=> (not res!140537) (not e!176636))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26650 (= res!140537 (validMask!0 mask!3868))))

(assert (=> start!26650 e!176636))

(declare-fun array_inv!4471 (array!13736) Bool)

(assert (=> start!26650 (array_inv!4471 a!3325)))

(assert (=> start!26650 true))

(assert (= (and start!26650 res!140537) b!276508))

(assert (= (and b!276508 res!140535) b!276507))

(assert (= (and b!276507 res!140536) b!276506))

(assert (= (and b!276506 res!140533) b!276509))

(assert (= (and b!276509 res!140538) b!276505))

(assert (= (and b!276505 res!140534) b!276510))

(declare-fun m!291853 () Bool)

(assert (=> b!276505 m!291853))

(declare-fun m!291855 () Bool)

(assert (=> start!26650 m!291855))

(declare-fun m!291857 () Bool)

(assert (=> start!26650 m!291857))

(declare-fun m!291859 () Bool)

(assert (=> b!276507 m!291859))

(declare-fun m!291861 () Bool)

(assert (=> b!276509 m!291861))

(declare-fun m!291863 () Bool)

(assert (=> b!276506 m!291863))

(declare-fun m!291865 () Bool)

(assert (=> b!276510 m!291865))

(push 1)

(assert (not b!276507))

(assert (not b!276510))

(assert (not b!276506))

(assert (not start!26650))

