; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26224 () Bool)

(assert start!26224)

(declare-fun b!271056 () Bool)

(declare-fun res!135090 () Bool)

(declare-fun e!174458 () Bool)

(assert (=> b!271056 (=> (not res!135090) (not e!174458))))

(declare-datatypes ((array!13310 0))(
  ( (array!13311 (arr!6304 (Array (_ BitVec 32) (_ BitVec 64))) (size!6656 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13310)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13310 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271056 (= res!135090 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271057 () Bool)

(declare-fun res!135088 () Bool)

(declare-fun e!174459 () Bool)

(assert (=> b!271057 (=> (not res!135088) (not e!174459))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271057 (= res!135088 (validKeyInArray!0 (select (arr!6304 a!3325) startIndex!26)))))

(declare-fun b!271058 () Bool)

(declare-fun res!135093 () Bool)

(assert (=> b!271058 (=> (not res!135093) (not e!174459))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271058 (= res!135093 (not (= startIndex!26 i!1267)))))

(declare-fun b!271059 () Bool)

(declare-fun res!135091 () Bool)

(assert (=> b!271059 (=> (not res!135091) (not e!174459))))

(declare-datatypes ((List!4133 0))(
  ( (Nil!4130) (Cons!4129 (h!4796 (_ BitVec 64)) (t!9223 List!4133)) )
))
(declare-fun contains!1942 (List!4133 (_ BitVec 64)) Bool)

(assert (=> b!271059 (= res!135091 (not (contains!1942 Nil!4130 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271060 () Bool)

(assert (=> b!271060 (= e!174458 e!174459)))

(declare-fun res!135085 () Bool)

(assert (=> b!271060 (=> (not res!135085) (not e!174459))))

(declare-datatypes ((SeekEntryResult!1473 0))(
  ( (MissingZero!1473 (index!8062 (_ BitVec 32))) (Found!1473 (index!8063 (_ BitVec 32))) (Intermediate!1473 (undefined!2285 Bool) (index!8064 (_ BitVec 32)) (x!26366 (_ BitVec 32))) (Undefined!1473) (MissingVacant!1473 (index!8065 (_ BitVec 32))) )
))
(declare-fun lt!135773 () SeekEntryResult!1473)

(assert (=> b!271060 (= res!135085 (or (= lt!135773 (MissingZero!1473 i!1267)) (= lt!135773 (MissingVacant!1473 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13310 (_ BitVec 32)) SeekEntryResult!1473)

(assert (=> b!271060 (= lt!135773 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!135095 () Bool)

(assert (=> start!26224 (=> (not res!135095) (not e!174458))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26224 (= res!135095 (validMask!0 mask!3868))))

(assert (=> start!26224 e!174458))

(declare-fun array_inv!4258 (array!13310) Bool)

(assert (=> start!26224 (array_inv!4258 a!3325)))

(assert (=> start!26224 true))

(declare-fun b!271061 () Bool)

(declare-fun res!135094 () Bool)

(assert (=> b!271061 (=> (not res!135094) (not e!174458))))

(assert (=> b!271061 (= res!135094 (and (= (size!6656 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6656 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6656 a!3325))))))

(declare-fun b!271062 () Bool)

(declare-fun res!135087 () Bool)

(assert (=> b!271062 (=> (not res!135087) (not e!174459))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13310 (_ BitVec 32)) Bool)

(assert (=> b!271062 (= res!135087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271063 () Bool)

(declare-fun res!135089 () Bool)

(assert (=> b!271063 (=> (not res!135089) (not e!174458))))

(assert (=> b!271063 (= res!135089 (validKeyInArray!0 k!2581))))

(declare-fun b!271064 () Bool)

(declare-fun res!135086 () Bool)

(assert (=> b!271064 (=> (not res!135086) (not e!174459))))

(assert (=> b!271064 (= res!135086 (not (contains!1942 Nil!4130 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271065 () Bool)

(declare-fun res!135084 () Bool)

(assert (=> b!271065 (=> (not res!135084) (not e!174459))))

(assert (=> b!271065 (= res!135084 (and (bvslt (size!6656 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6656 a!3325))))))

(declare-fun b!271066 () Bool)

(declare-fun res!135092 () Bool)

(assert (=> b!271066 (=> (not res!135092) (not e!174458))))

(declare-fun arrayNoDuplicates!0 (array!13310 (_ BitVec 32) List!4133) Bool)

(assert (=> b!271066 (= res!135092 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4130))))

(declare-fun b!271067 () Bool)

(assert (=> b!271067 (= e!174459 false)))

(declare-fun lt!135772 () Bool)

(assert (=> b!271067 (= lt!135772 (contains!1942 Nil!4130 k!2581))))

(declare-fun b!271068 () Bool)

(declare-fun res!135096 () Bool)

(assert (=> b!271068 (=> (not res!135096) (not e!174459))))

(declare-fun noDuplicate!131 (List!4133) Bool)

(assert (=> b!271068 (= res!135096 (noDuplicate!131 Nil!4130))))

(assert (= (and start!26224 res!135095) b!271061))

(assert (= (and b!271061 res!135094) b!271063))

(assert (= (and b!271063 res!135089) b!271066))

(assert (= (and b!271066 res!135092) b!271056))

(assert (= (and b!271056 res!135090) b!271060))

(assert (= (and b!271060 res!135085) b!271062))

(assert (= (and b!271062 res!135087) b!271058))

(assert (= (and b!271058 res!135093) b!271057))

(assert (= (and b!271057 res!135088) b!271065))

(assert (= (and b!271065 res!135084) b!271068))

(assert (= (and b!271068 res!135096) b!271059))

(assert (= (and b!271059 res!135091) b!271064))

(assert (= (and b!271064 res!135086) b!271067))

(declare-fun m!286495 () Bool)

(assert (=> b!271066 m!286495))

(declare-fun m!286497 () Bool)

(assert (=> b!271062 m!286497))

(declare-fun m!286499 () Bool)

(assert (=> b!271068 m!286499))

(declare-fun m!286501 () Bool)

(assert (=> b!271063 m!286501))

(declare-fun m!286503 () Bool)

(assert (=> b!271059 m!286503))

(declare-fun m!286505 () Bool)

(assert (=> start!26224 m!286505))

(declare-fun m!286507 () Bool)

(assert (=> start!26224 m!286507))

(declare-fun m!286509 () Bool)

(assert (=> b!271056 m!286509))

(declare-fun m!286511 () Bool)

(assert (=> b!271060 m!286511))

(declare-fun m!286513 () Bool)

(assert (=> b!271057 m!286513))

(assert (=> b!271057 m!286513))

(declare-fun m!286515 () Bool)

(assert (=> b!271057 m!286515))

(declare-fun m!286517 () Bool)

(assert (=> b!271064 m!286517))

(declare-fun m!286519 () Bool)

(assert (=> b!271067 m!286519))

(push 1)

