; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26248 () Bool)

(assert start!26248)

(declare-fun b!271524 () Bool)

(declare-fun res!135560 () Bool)

(declare-fun e!174567 () Bool)

(assert (=> b!271524 (=> (not res!135560) (not e!174567))))

(declare-datatypes ((List!4145 0))(
  ( (Nil!4142) (Cons!4141 (h!4808 (_ BitVec 64)) (t!9235 List!4145)) )
))
(declare-fun noDuplicate!143 (List!4145) Bool)

(assert (=> b!271524 (= res!135560 (noDuplicate!143 Nil!4142))))

(declare-fun b!271525 () Bool)

(declare-fun res!135562 () Bool)

(assert (=> b!271525 (=> (not res!135562) (not e!174567))))

(declare-datatypes ((array!13334 0))(
  ( (array!13335 (arr!6316 (Array (_ BitVec 32) (_ BitVec 64))) (size!6668 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13334)

(assert (=> b!271525 (= res!135562 (and (bvslt (size!6668 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6668 a!3325))))))

(declare-fun b!271526 () Bool)

(declare-fun res!135553 () Bool)

(declare-fun e!174568 () Bool)

(assert (=> b!271526 (=> (not res!135553) (not e!174568))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271526 (= res!135553 (validKeyInArray!0 k!2581))))

(declare-fun b!271527 () Bool)

(declare-fun res!135564 () Bool)

(assert (=> b!271527 (=> (not res!135564) (not e!174568))))

(declare-fun arrayContainsKey!0 (array!13334 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271527 (= res!135564 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!135558 () Bool)

(assert (=> start!26248 (=> (not res!135558) (not e!174568))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26248 (= res!135558 (validMask!0 mask!3868))))

(assert (=> start!26248 e!174568))

(declare-fun array_inv!4270 (array!13334) Bool)

(assert (=> start!26248 (array_inv!4270 a!3325)))

(assert (=> start!26248 true))

(declare-fun b!271528 () Bool)

(assert (=> b!271528 (= e!174567 false)))

(declare-fun lt!135844 () Bool)

(declare-fun contains!1954 (List!4145 (_ BitVec 64)) Bool)

(assert (=> b!271528 (= lt!135844 (contains!1954 Nil!4142 k!2581))))

(declare-fun b!271529 () Bool)

(declare-fun res!135557 () Bool)

(assert (=> b!271529 (=> (not res!135557) (not e!174567))))

(assert (=> b!271529 (= res!135557 (not (contains!1954 Nil!4142 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271530 () Bool)

(declare-fun res!135552 () Bool)

(assert (=> b!271530 (=> (not res!135552) (not e!174567))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!271530 (= res!135552 (validKeyInArray!0 (select (arr!6316 a!3325) startIndex!26)))))

(declare-fun b!271531 () Bool)

(declare-fun res!135559 () Bool)

(assert (=> b!271531 (=> (not res!135559) (not e!174567))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13334 (_ BitVec 32)) Bool)

(assert (=> b!271531 (= res!135559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271532 () Bool)

(assert (=> b!271532 (= e!174568 e!174567)))

(declare-fun res!135555 () Bool)

(assert (=> b!271532 (=> (not res!135555) (not e!174567))))

(declare-datatypes ((SeekEntryResult!1485 0))(
  ( (MissingZero!1485 (index!8110 (_ BitVec 32))) (Found!1485 (index!8111 (_ BitVec 32))) (Intermediate!1485 (undefined!2297 Bool) (index!8112 (_ BitVec 32)) (x!26410 (_ BitVec 32))) (Undefined!1485) (MissingVacant!1485 (index!8113 (_ BitVec 32))) )
))
(declare-fun lt!135845 () SeekEntryResult!1485)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271532 (= res!135555 (or (= lt!135845 (MissingZero!1485 i!1267)) (= lt!135845 (MissingVacant!1485 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13334 (_ BitVec 32)) SeekEntryResult!1485)

(assert (=> b!271532 (= lt!135845 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!271533 () Bool)

(declare-fun res!135563 () Bool)

(assert (=> b!271533 (=> (not res!135563) (not e!174567))))

(assert (=> b!271533 (= res!135563 (not (= startIndex!26 i!1267)))))

(declare-fun b!271534 () Bool)

(declare-fun res!135561 () Bool)

(assert (=> b!271534 (=> (not res!135561) (not e!174568))))

(declare-fun arrayNoDuplicates!0 (array!13334 (_ BitVec 32) List!4145) Bool)

(assert (=> b!271534 (= res!135561 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4142))))

(declare-fun b!271535 () Bool)

(declare-fun res!135554 () Bool)

(assert (=> b!271535 (=> (not res!135554) (not e!174567))))

(assert (=> b!271535 (= res!135554 (not (contains!1954 Nil!4142 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271536 () Bool)

(declare-fun res!135556 () Bool)

(assert (=> b!271536 (=> (not res!135556) (not e!174568))))

(assert (=> b!271536 (= res!135556 (and (= (size!6668 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6668 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6668 a!3325))))))

(assert (= (and start!26248 res!135558) b!271536))

(assert (= (and b!271536 res!135556) b!271526))

(assert (= (and b!271526 res!135553) b!271534))

(assert (= (and b!271534 res!135561) b!271527))

(assert (= (and b!271527 res!135564) b!271532))

(assert (= (and b!271532 res!135555) b!271531))

(assert (= (and b!271531 res!135559) b!271533))

(assert (= (and b!271533 res!135563) b!271530))

(assert (= (and b!271530 res!135552) b!271525))

(assert (= (and b!271525 res!135562) b!271524))

(assert (= (and b!271524 res!135560) b!271529))

(assert (= (and b!271529 res!135557) b!271535))

(assert (= (and b!271535 res!135554) b!271528))

(declare-fun m!286807 () Bool)

(assert (=> b!271530 m!286807))

(assert (=> b!271530 m!286807))

(declare-fun m!286809 () Bool)

(assert (=> b!271530 m!286809))

(declare-fun m!286811 () Bool)

(assert (=> b!271535 m!286811))

(declare-fun m!286813 () Bool)

(assert (=> b!271532 m!286813))

(declare-fun m!286815 () Bool)

(assert (=> b!271526 m!286815))

(declare-fun m!286817 () Bool)

(assert (=> b!271527 m!286817))

(declare-fun m!286819 () Bool)

(assert (=> b!271531 m!286819))

(declare-fun m!286821 () Bool)

(assert (=> start!26248 m!286821))

(declare-fun m!286823 () Bool)

(assert (=> start!26248 m!286823))

(declare-fun m!286825 () Bool)

(assert (=> b!271524 m!286825))

(declare-fun m!286827 () Bool)

(assert (=> b!271528 m!286827))

(declare-fun m!286829 () Bool)

(assert (=> b!271534 m!286829))

(declare-fun m!286831 () Bool)

(assert (=> b!271529 m!286831))

(push 1)

