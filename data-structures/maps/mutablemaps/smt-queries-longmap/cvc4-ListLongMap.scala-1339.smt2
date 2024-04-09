; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26606 () Bool)

(assert start!26606)

(declare-fun b!276088 () Bool)

(declare-fun res!140122 () Bool)

(declare-fun e!176438 () Bool)

(assert (=> b!276088 (=> (not res!140122) (not e!176438))))

(declare-datatypes ((array!13692 0))(
  ( (array!13693 (arr!6495 (Array (_ BitVec 32) (_ BitVec 64))) (size!6847 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13692)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13692 (_ BitVec 32)) Bool)

(assert (=> b!276088 (= res!140122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276089 () Bool)

(declare-fun res!140121 () Bool)

(declare-fun e!176440 () Bool)

(assert (=> b!276089 (=> (not res!140121) (not e!176440))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276089 (= res!140121 (and (= (size!6847 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6847 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6847 a!3325))))))

(declare-fun b!276090 () Bool)

(declare-fun res!140120 () Bool)

(assert (=> b!276090 (=> (not res!140120) (not e!176438))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276090 (= res!140120 (not (validKeyInArray!0 (select (arr!6495 a!3325) startIndex!26))))))

(declare-fun b!276091 () Bool)

(declare-fun res!140117 () Bool)

(assert (=> b!276091 (=> (not res!140117) (not e!176440))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13692 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276091 (= res!140117 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276092 () Bool)

(declare-fun res!140118 () Bool)

(assert (=> b!276092 (=> (not res!140118) (not e!176440))))

(assert (=> b!276092 (= res!140118 (validKeyInArray!0 k!2581))))

(declare-fun res!140119 () Bool)

(assert (=> start!26606 (=> (not res!140119) (not e!176440))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26606 (= res!140119 (validMask!0 mask!3868))))

(assert (=> start!26606 e!176440))

(declare-fun array_inv!4449 (array!13692) Bool)

(assert (=> start!26606 (array_inv!4449 a!3325)))

(assert (=> start!26606 true))

(declare-fun b!276093 () Bool)

(assert (=> b!276093 (= e!176440 e!176438)))

(declare-fun res!140124 () Bool)

(assert (=> b!276093 (=> (not res!140124) (not e!176438))))

(declare-datatypes ((SeekEntryResult!1664 0))(
  ( (MissingZero!1664 (index!8826 (_ BitVec 32))) (Found!1664 (index!8827 (_ BitVec 32))) (Intermediate!1664 (undefined!2476 Bool) (index!8828 (_ BitVec 32)) (x!27061 (_ BitVec 32))) (Undefined!1664) (MissingVacant!1664 (index!8829 (_ BitVec 32))) )
))
(declare-fun lt!137576 () SeekEntryResult!1664)

(assert (=> b!276093 (= res!140124 (or (= lt!137576 (MissingZero!1664 i!1267)) (= lt!137576 (MissingVacant!1664 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13692 (_ BitVec 32)) SeekEntryResult!1664)

(assert (=> b!276093 (= lt!137576 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276094 () Bool)

(declare-fun res!140116 () Bool)

(assert (=> b!276094 (=> (not res!140116) (not e!176438))))

(assert (=> b!276094 (= res!140116 (not (= startIndex!26 i!1267)))))

(declare-fun b!276095 () Bool)

(declare-fun res!140123 () Bool)

(assert (=> b!276095 (=> (not res!140123) (not e!176440))))

(declare-datatypes ((List!4324 0))(
  ( (Nil!4321) (Cons!4320 (h!4987 (_ BitVec 64)) (t!9414 List!4324)) )
))
(declare-fun arrayNoDuplicates!0 (array!13692 (_ BitVec 32) List!4324) Bool)

(assert (=> b!276095 (= res!140123 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4321))))

(declare-fun b!276096 () Bool)

(assert (=> b!276096 (= e!176438 (and (bvsge startIndex!26 (bvsub (size!6847 a!3325) #b00000000000000000000000000000001)) (bvsgt startIndex!26 (size!6847 a!3325))))))

(assert (= (and start!26606 res!140119) b!276089))

(assert (= (and b!276089 res!140121) b!276092))

(assert (= (and b!276092 res!140118) b!276095))

(assert (= (and b!276095 res!140123) b!276091))

(assert (= (and b!276091 res!140117) b!276093))

(assert (= (and b!276093 res!140124) b!276088))

(assert (= (and b!276088 res!140122) b!276094))

(assert (= (and b!276094 res!140116) b!276090))

(assert (= (and b!276090 res!140120) b!276096))

(declare-fun m!291541 () Bool)

(assert (=> b!276088 m!291541))

(declare-fun m!291543 () Bool)

(assert (=> b!276090 m!291543))

(assert (=> b!276090 m!291543))

(declare-fun m!291545 () Bool)

(assert (=> b!276090 m!291545))

(declare-fun m!291547 () Bool)

(assert (=> start!26606 m!291547))

(declare-fun m!291549 () Bool)

(assert (=> start!26606 m!291549))

(declare-fun m!291551 () Bool)

(assert (=> b!276095 m!291551))

(declare-fun m!291553 () Bool)

(assert (=> b!276091 m!291553))

(declare-fun m!291555 () Bool)

(assert (=> b!276092 m!291555))

(declare-fun m!291557 () Bool)

(assert (=> b!276093 m!291557))

(push 1)

(assert (not b!276091))

(assert (not b!276092))

(assert (not b!276093))

(assert (not b!276088))

(assert (not b!276090))

(assert (not b!276095))

(assert (not start!26606))

(check-sat)

(pop 1)

(push 1)

(check-sat)

