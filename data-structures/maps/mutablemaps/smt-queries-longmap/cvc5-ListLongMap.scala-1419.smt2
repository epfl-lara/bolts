; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27550 () Bool)

(assert start!27550)

(declare-fun b!284530 () Bool)

(declare-fun res!147076 () Bool)

(declare-fun e!180481 () Bool)

(assert (=> b!284530 (=> (not res!147076) (not e!180481))))

(declare-datatypes ((array!14189 0))(
  ( (array!14190 (arr!6733 (Array (_ BitVec 32) (_ BitVec 64))) (size!7085 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14189)

(declare-datatypes ((List!4562 0))(
  ( (Nil!4559) (Cons!4558 (h!5231 (_ BitVec 64)) (t!9652 List!4562)) )
))
(declare-fun arrayNoDuplicates!0 (array!14189 (_ BitVec 32) List!4562) Bool)

(assert (=> b!284530 (= res!147076 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4559))))

(declare-fun b!284531 () Bool)

(declare-fun e!180480 () Bool)

(assert (=> b!284531 (= e!180481 e!180480)))

(declare-fun res!147081 () Bool)

(assert (=> b!284531 (=> (not res!147081) (not e!180480))))

(declare-datatypes ((SeekEntryResult!1902 0))(
  ( (MissingZero!1902 (index!9778 (_ BitVec 32))) (Found!1902 (index!9779 (_ BitVec 32))) (Intermediate!1902 (undefined!2714 Bool) (index!9780 (_ BitVec 32)) (x!27957 (_ BitVec 32))) (Undefined!1902) (MissingVacant!1902 (index!9781 (_ BitVec 32))) )
))
(declare-fun lt!140570 () SeekEntryResult!1902)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!284531 (= res!147081 (or (= lt!140570 (MissingZero!1902 i!1267)) (= lt!140570 (MissingVacant!1902 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14189 (_ BitVec 32)) SeekEntryResult!1902)

(assert (=> b!284531 (= lt!140570 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!147080 () Bool)

(assert (=> start!27550 (=> (not res!147080) (not e!180481))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27550 (= res!147080 (validMask!0 mask!3868))))

(assert (=> start!27550 e!180481))

(declare-fun array_inv!4687 (array!14189) Bool)

(assert (=> start!27550 (array_inv!4687 a!3325)))

(assert (=> start!27550 true))

(declare-fun b!284532 () Bool)

(assert (=> b!284532 (= e!180480 false)))

(declare-fun lt!140569 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14189 (_ BitVec 32)) Bool)

(assert (=> b!284532 (= lt!140569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284533 () Bool)

(declare-fun res!147077 () Bool)

(assert (=> b!284533 (=> (not res!147077) (not e!180481))))

(declare-fun arrayContainsKey!0 (array!14189 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284533 (= res!147077 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284534 () Bool)

(declare-fun res!147078 () Bool)

(assert (=> b!284534 (=> (not res!147078) (not e!180481))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284534 (= res!147078 (validKeyInArray!0 k!2581))))

(declare-fun b!284535 () Bool)

(declare-fun res!147079 () Bool)

(assert (=> b!284535 (=> (not res!147079) (not e!180481))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!284535 (= res!147079 (and (= (size!7085 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7085 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7085 a!3325))))))

(assert (= (and start!27550 res!147080) b!284535))

(assert (= (and b!284535 res!147079) b!284534))

(assert (= (and b!284534 res!147078) b!284530))

(assert (= (and b!284530 res!147076) b!284533))

(assert (= (and b!284533 res!147077) b!284531))

(assert (= (and b!284531 res!147081) b!284532))

(declare-fun m!299557 () Bool)

(assert (=> b!284530 m!299557))

(declare-fun m!299559 () Bool)

(assert (=> start!27550 m!299559))

(declare-fun m!299561 () Bool)

(assert (=> start!27550 m!299561))

(declare-fun m!299563 () Bool)

(assert (=> b!284531 m!299563))

(declare-fun m!299565 () Bool)

(assert (=> b!284532 m!299565))

(declare-fun m!299567 () Bool)

(assert (=> b!284534 m!299567))

(declare-fun m!299569 () Bool)

(assert (=> b!284533 m!299569))

(push 1)

