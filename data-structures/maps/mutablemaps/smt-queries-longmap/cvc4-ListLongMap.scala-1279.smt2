; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26246 () Bool)

(assert start!26246)

(declare-fun b!271485 () Bool)

(declare-fun res!135516 () Bool)

(declare-fun e!174558 () Bool)

(assert (=> b!271485 (=> (not res!135516) (not e!174558))))

(declare-datatypes ((List!4144 0))(
  ( (Nil!4141) (Cons!4140 (h!4807 (_ BitVec 64)) (t!9234 List!4144)) )
))
(declare-fun noDuplicate!142 (List!4144) Bool)

(assert (=> b!271485 (= res!135516 (noDuplicate!142 Nil!4141))))

(declare-fun b!271486 () Bool)

(assert (=> b!271486 (= e!174558 false)))

(declare-fun lt!135838 () Bool)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun contains!1953 (List!4144 (_ BitVec 64)) Bool)

(assert (=> b!271486 (= lt!135838 (contains!1953 Nil!4141 k!2581))))

(declare-fun b!271487 () Bool)

(declare-fun res!135518 () Bool)

(assert (=> b!271487 (=> (not res!135518) (not e!174558))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271487 (= res!135518 (not (= startIndex!26 i!1267)))))

(declare-fun b!271488 () Bool)

(declare-fun res!135520 () Bool)

(declare-fun e!174557 () Bool)

(assert (=> b!271488 (=> (not res!135520) (not e!174557))))

(declare-datatypes ((array!13332 0))(
  ( (array!13333 (arr!6315 (Array (_ BitVec 32) (_ BitVec 64))) (size!6667 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13332)

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!271488 (= res!135520 (and (= (size!6667 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6667 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6667 a!3325))))))

(declare-fun b!271489 () Bool)

(declare-fun res!135523 () Bool)

(assert (=> b!271489 (=> (not res!135523) (not e!174558))))

(assert (=> b!271489 (= res!135523 (and (bvslt (size!6667 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6667 a!3325))))))

(declare-fun b!271490 () Bool)

(declare-fun res!135514 () Bool)

(assert (=> b!271490 (=> (not res!135514) (not e!174557))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271490 (= res!135514 (validKeyInArray!0 k!2581))))

(declare-fun b!271491 () Bool)

(declare-fun res!135524 () Bool)

(assert (=> b!271491 (=> (not res!135524) (not e!174558))))

(assert (=> b!271491 (= res!135524 (not (contains!1953 Nil!4141 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271492 () Bool)

(declare-fun res!135522 () Bool)

(assert (=> b!271492 (=> (not res!135522) (not e!174558))))

(assert (=> b!271492 (= res!135522 (not (contains!1953 Nil!4141 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271493 () Bool)

(declare-fun res!135521 () Bool)

(assert (=> b!271493 (=> (not res!135521) (not e!174557))))

(declare-fun arrayNoDuplicates!0 (array!13332 (_ BitVec 32) List!4144) Bool)

(assert (=> b!271493 (= res!135521 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4141))))

(declare-fun res!135513 () Bool)

(assert (=> start!26246 (=> (not res!135513) (not e!174557))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26246 (= res!135513 (validMask!0 mask!3868))))

(assert (=> start!26246 e!174557))

(declare-fun array_inv!4269 (array!13332) Bool)

(assert (=> start!26246 (array_inv!4269 a!3325)))

(assert (=> start!26246 true))

(declare-fun b!271494 () Bool)

(declare-fun res!135515 () Bool)

(assert (=> b!271494 (=> (not res!135515) (not e!174558))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13332 (_ BitVec 32)) Bool)

(assert (=> b!271494 (= res!135515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271495 () Bool)

(assert (=> b!271495 (= e!174557 e!174558)))

(declare-fun res!135517 () Bool)

(assert (=> b!271495 (=> (not res!135517) (not e!174558))))

(declare-datatypes ((SeekEntryResult!1484 0))(
  ( (MissingZero!1484 (index!8106 (_ BitVec 32))) (Found!1484 (index!8107 (_ BitVec 32))) (Intermediate!1484 (undefined!2296 Bool) (index!8108 (_ BitVec 32)) (x!26401 (_ BitVec 32))) (Undefined!1484) (MissingVacant!1484 (index!8109 (_ BitVec 32))) )
))
(declare-fun lt!135839 () SeekEntryResult!1484)

(assert (=> b!271495 (= res!135517 (or (= lt!135839 (MissingZero!1484 i!1267)) (= lt!135839 (MissingVacant!1484 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13332 (_ BitVec 32)) SeekEntryResult!1484)

(assert (=> b!271495 (= lt!135839 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!271496 () Bool)

(declare-fun res!135525 () Bool)

(assert (=> b!271496 (=> (not res!135525) (not e!174557))))

(declare-fun arrayContainsKey!0 (array!13332 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271496 (= res!135525 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271497 () Bool)

(declare-fun res!135519 () Bool)

(assert (=> b!271497 (=> (not res!135519) (not e!174558))))

(assert (=> b!271497 (= res!135519 (validKeyInArray!0 (select (arr!6315 a!3325) startIndex!26)))))

(assert (= (and start!26246 res!135513) b!271488))

(assert (= (and b!271488 res!135520) b!271490))

(assert (= (and b!271490 res!135514) b!271493))

(assert (= (and b!271493 res!135521) b!271496))

(assert (= (and b!271496 res!135525) b!271495))

(assert (= (and b!271495 res!135517) b!271494))

(assert (= (and b!271494 res!135515) b!271487))

(assert (= (and b!271487 res!135518) b!271497))

(assert (= (and b!271497 res!135519) b!271489))

(assert (= (and b!271489 res!135523) b!271485))

(assert (= (and b!271485 res!135516) b!271492))

(assert (= (and b!271492 res!135522) b!271491))

(assert (= (and b!271491 res!135524) b!271486))

(declare-fun m!286781 () Bool)

(assert (=> b!271490 m!286781))

(declare-fun m!286783 () Bool)

(assert (=> b!271485 m!286783))

(declare-fun m!286785 () Bool)

(assert (=> start!26246 m!286785))

(declare-fun m!286787 () Bool)

(assert (=> start!26246 m!286787))

(declare-fun m!286789 () Bool)

(assert (=> b!271486 m!286789))

(declare-fun m!286791 () Bool)

(assert (=> b!271497 m!286791))

(assert (=> b!271497 m!286791))

(declare-fun m!286793 () Bool)

(assert (=> b!271497 m!286793))

(declare-fun m!286795 () Bool)

(assert (=> b!271493 m!286795))

(declare-fun m!286797 () Bool)

(assert (=> b!271492 m!286797))

(declare-fun m!286799 () Bool)

(assert (=> b!271495 m!286799))

(declare-fun m!286801 () Bool)

(assert (=> b!271491 m!286801))

(declare-fun m!286803 () Bool)

(assert (=> b!271494 m!286803))

(declare-fun m!286805 () Bool)

(assert (=> b!271496 m!286805))

(push 1)

