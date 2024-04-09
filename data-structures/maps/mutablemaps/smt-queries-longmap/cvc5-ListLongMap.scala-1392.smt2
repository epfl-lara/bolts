; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27214 () Bool)

(assert start!27214)

(declare-fun res!144643 () Bool)

(declare-fun e!178913 () Bool)

(assert (=> start!27214 (=> (not res!144643) (not e!178913))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27214 (= res!144643 (validMask!0 mask!3868))))

(assert (=> start!27214 e!178913))

(declare-datatypes ((array!14021 0))(
  ( (array!14022 (arr!6652 (Array (_ BitVec 32) (_ BitVec 64))) (size!7004 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14021)

(declare-fun array_inv!4606 (array!14021) Bool)

(assert (=> start!27214 (array_inv!4606 a!3325)))

(assert (=> start!27214 true))

(declare-fun b!281536 () Bool)

(declare-fun res!144650 () Bool)

(assert (=> b!281536 (=> (not res!144650) (not e!178913))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281536 (= res!144650 (validKeyInArray!0 k!2581))))

(declare-fun b!281537 () Bool)

(declare-fun res!144649 () Bool)

(declare-fun e!178912 () Bool)

(assert (=> b!281537 (=> (not res!144649) (not e!178912))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14021 (_ BitVec 32)) Bool)

(assert (=> b!281537 (= res!144649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281538 () Bool)

(declare-fun res!144651 () Bool)

(declare-fun e!178914 () Bool)

(assert (=> b!281538 (=> (not res!144651) (not e!178914))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!281538 (= res!144651 (validKeyInArray!0 (select (arr!6652 a!3325) startIndex!26)))))

(declare-fun b!281539 () Bool)

(assert (=> b!281539 (= e!178912 e!178914)))

(declare-fun res!144648 () Bool)

(assert (=> b!281539 (=> (not res!144648) (not e!178914))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!281539 (= res!144648 (not (= startIndex!26 i!1267)))))

(declare-fun lt!139127 () array!14021)

(assert (=> b!281539 (= lt!139127 (array!14022 (store (arr!6652 a!3325) i!1267 k!2581) (size!7004 a!3325)))))

(declare-fun b!281540 () Bool)

(declare-fun res!144645 () Bool)

(assert (=> b!281540 (=> (not res!144645) (not e!178913))))

(declare-fun arrayContainsKey!0 (array!14021 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281540 (= res!144645 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281541 () Bool)

(declare-fun res!144646 () Bool)

(assert (=> b!281541 (=> (not res!144646) (not e!178913))))

(declare-datatypes ((List!4481 0))(
  ( (Nil!4478) (Cons!4477 (h!5147 (_ BitVec 64)) (t!9571 List!4481)) )
))
(declare-fun arrayNoDuplicates!0 (array!14021 (_ BitVec 32) List!4481) Bool)

(assert (=> b!281541 (= res!144646 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4478))))

(declare-fun b!281542 () Bool)

(declare-fun res!144647 () Bool)

(assert (=> b!281542 (=> (not res!144647) (not e!178913))))

(assert (=> b!281542 (= res!144647 (and (= (size!7004 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7004 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7004 a!3325))))))

(declare-fun b!281543 () Bool)

(assert (=> b!281543 (= e!178914 (not true))))

(declare-datatypes ((SeekEntryResult!1821 0))(
  ( (MissingZero!1821 (index!9454 (_ BitVec 32))) (Found!1821 (index!9455 (_ BitVec 32))) (Intermediate!1821 (undefined!2633 Bool) (index!9456 (_ BitVec 32)) (x!27651 (_ BitVec 32))) (Undefined!1821) (MissingVacant!1821 (index!9457 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14021 (_ BitVec 32)) SeekEntryResult!1821)

(assert (=> b!281543 (= (seekEntryOrOpen!0 (select (arr!6652 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6652 a!3325) i!1267 k!2581) startIndex!26) lt!139127 mask!3868))))

(declare-datatypes ((Unit!8905 0))(
  ( (Unit!8906) )
))
(declare-fun lt!139125 () Unit!8905)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14021 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8905)

(assert (=> b!281543 (= lt!139125 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!281543 (arrayNoDuplicates!0 lt!139127 #b00000000000000000000000000000000 Nil!4478)))

(declare-fun lt!139126 () Unit!8905)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14021 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4481) Unit!8905)

(assert (=> b!281543 (= lt!139126 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4478))))

(declare-fun b!281544 () Bool)

(assert (=> b!281544 (= e!178913 e!178912)))

(declare-fun res!144644 () Bool)

(assert (=> b!281544 (=> (not res!144644) (not e!178912))))

(declare-fun lt!139124 () SeekEntryResult!1821)

(assert (=> b!281544 (= res!144644 (or (= lt!139124 (MissingZero!1821 i!1267)) (= lt!139124 (MissingVacant!1821 i!1267))))))

(assert (=> b!281544 (= lt!139124 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!27214 res!144643) b!281542))

(assert (= (and b!281542 res!144647) b!281536))

(assert (= (and b!281536 res!144650) b!281541))

(assert (= (and b!281541 res!144646) b!281540))

(assert (= (and b!281540 res!144645) b!281544))

(assert (= (and b!281544 res!144644) b!281537))

(assert (= (and b!281537 res!144649) b!281539))

(assert (= (and b!281539 res!144648) b!281538))

(assert (= (and b!281538 res!144651) b!281543))

(declare-fun m!295909 () Bool)

(assert (=> b!281540 m!295909))

(declare-fun m!295911 () Bool)

(assert (=> b!281543 m!295911))

(assert (=> b!281543 m!295911))

(declare-fun m!295913 () Bool)

(assert (=> b!281543 m!295913))

(declare-fun m!295915 () Bool)

(assert (=> b!281543 m!295915))

(declare-fun m!295917 () Bool)

(assert (=> b!281543 m!295917))

(declare-fun m!295919 () Bool)

(assert (=> b!281543 m!295919))

(assert (=> b!281543 m!295915))

(declare-fun m!295921 () Bool)

(assert (=> b!281543 m!295921))

(declare-fun m!295923 () Bool)

(assert (=> b!281543 m!295923))

(declare-fun m!295925 () Bool)

(assert (=> b!281543 m!295925))

(declare-fun m!295927 () Bool)

(assert (=> b!281544 m!295927))

(assert (=> b!281539 m!295923))

(declare-fun m!295929 () Bool)

(assert (=> start!27214 m!295929))

(declare-fun m!295931 () Bool)

(assert (=> start!27214 m!295931))

(declare-fun m!295933 () Bool)

(assert (=> b!281536 m!295933))

(assert (=> b!281538 m!295915))

(assert (=> b!281538 m!295915))

(declare-fun m!295935 () Bool)

(assert (=> b!281538 m!295935))

(declare-fun m!295937 () Bool)

(assert (=> b!281537 m!295937))

(declare-fun m!295939 () Bool)

(assert (=> b!281541 m!295939))

(push 1)

