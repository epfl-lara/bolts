; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27206 () Bool)

(assert start!27206)

(declare-fun b!281428 () Bool)

(declare-fun res!144540 () Bool)

(declare-fun e!178867 () Bool)

(assert (=> b!281428 (=> (not res!144540) (not e!178867))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!281428 (= res!144540 (not (= startIndex!26 i!1267)))))

(declare-fun b!281429 () Bool)

(declare-fun res!144536 () Bool)

(assert (=> b!281429 (=> (not res!144536) (not e!178867))))

(declare-datatypes ((array!14013 0))(
  ( (array!14014 (arr!6648 (Array (_ BitVec 32) (_ BitVec 64))) (size!7000 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14013)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14013 (_ BitVec 32)) Bool)

(assert (=> b!281429 (= res!144536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281430 () Bool)

(assert (=> b!281430 (= e!178867 (not true))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((List!4477 0))(
  ( (Nil!4474) (Cons!4473 (h!5143 (_ BitVec 64)) (t!9567 List!4477)) )
))
(declare-fun arrayNoDuplicates!0 (array!14013 (_ BitVec 32) List!4477) Bool)

(assert (=> b!281430 (arrayNoDuplicates!0 (array!14014 (store (arr!6648 a!3325) i!1267 k!2581) (size!7000 a!3325)) #b00000000000000000000000000000000 Nil!4474)))

(declare-datatypes ((Unit!8897 0))(
  ( (Unit!8898) )
))
(declare-fun lt!139079 () Unit!8897)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14013 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4477) Unit!8897)

(assert (=> b!281430 (= lt!139079 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4474))))

(declare-fun b!281431 () Bool)

(declare-fun e!178865 () Bool)

(assert (=> b!281431 (= e!178865 e!178867)))

(declare-fun res!144541 () Bool)

(assert (=> b!281431 (=> (not res!144541) (not e!178867))))

(declare-datatypes ((SeekEntryResult!1817 0))(
  ( (MissingZero!1817 (index!9438 (_ BitVec 32))) (Found!1817 (index!9439 (_ BitVec 32))) (Intermediate!1817 (undefined!2629 Bool) (index!9440 (_ BitVec 32)) (x!27631 (_ BitVec 32))) (Undefined!1817) (MissingVacant!1817 (index!9441 (_ BitVec 32))) )
))
(declare-fun lt!139078 () SeekEntryResult!1817)

(assert (=> b!281431 (= res!144541 (or (= lt!139078 (MissingZero!1817 i!1267)) (= lt!139078 (MissingVacant!1817 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14013 (_ BitVec 32)) SeekEntryResult!1817)

(assert (=> b!281431 (= lt!139078 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!281432 () Bool)

(declare-fun res!144542 () Bool)

(assert (=> b!281432 (=> (not res!144542) (not e!178865))))

(declare-fun arrayContainsKey!0 (array!14013 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281432 (= res!144542 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281433 () Bool)

(declare-fun res!144537 () Bool)

(assert (=> b!281433 (=> (not res!144537) (not e!178865))))

(assert (=> b!281433 (= res!144537 (and (= (size!7000 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7000 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7000 a!3325))))))

(declare-fun b!281434 () Bool)

(declare-fun res!144538 () Bool)

(assert (=> b!281434 (=> (not res!144538) (not e!178865))))

(assert (=> b!281434 (= res!144538 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4474))))

(declare-fun b!281435 () Bool)

(declare-fun res!144535 () Bool)

(assert (=> b!281435 (=> (not res!144535) (not e!178867))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281435 (= res!144535 (validKeyInArray!0 (select (arr!6648 a!3325) startIndex!26)))))

(declare-fun res!144543 () Bool)

(assert (=> start!27206 (=> (not res!144543) (not e!178865))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27206 (= res!144543 (validMask!0 mask!3868))))

(assert (=> start!27206 e!178865))

(declare-fun array_inv!4602 (array!14013) Bool)

(assert (=> start!27206 (array_inv!4602 a!3325)))

(assert (=> start!27206 true))

(declare-fun b!281436 () Bool)

(declare-fun res!144539 () Bool)

(assert (=> b!281436 (=> (not res!144539) (not e!178865))))

(assert (=> b!281436 (= res!144539 (validKeyInArray!0 k!2581))))

(assert (= (and start!27206 res!144543) b!281433))

(assert (= (and b!281433 res!144537) b!281436))

(assert (= (and b!281436 res!144539) b!281434))

(assert (= (and b!281434 res!144538) b!281432))

(assert (= (and b!281432 res!144542) b!281431))

(assert (= (and b!281431 res!144541) b!281429))

(assert (= (and b!281429 res!144536) b!281428))

(assert (= (and b!281428 res!144540) b!281435))

(assert (= (and b!281435 res!144535) b!281430))

(declare-fun m!295789 () Bool)

(assert (=> b!281430 m!295789))

(declare-fun m!295791 () Bool)

(assert (=> b!281430 m!295791))

(declare-fun m!295793 () Bool)

(assert (=> b!281430 m!295793))

(declare-fun m!295795 () Bool)

(assert (=> b!281436 m!295795))

(declare-fun m!295797 () Bool)

(assert (=> b!281435 m!295797))

(assert (=> b!281435 m!295797))

(declare-fun m!295799 () Bool)

(assert (=> b!281435 m!295799))

(declare-fun m!295801 () Bool)

(assert (=> b!281434 m!295801))

(declare-fun m!295803 () Bool)

(assert (=> start!27206 m!295803))

(declare-fun m!295805 () Bool)

(assert (=> start!27206 m!295805))

(declare-fun m!295807 () Bool)

(assert (=> b!281431 m!295807))

(declare-fun m!295809 () Bool)

(assert (=> b!281432 m!295809))

(declare-fun m!295811 () Bool)

(assert (=> b!281429 m!295811))

(push 1)

(assert (not b!281434))

