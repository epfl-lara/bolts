; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27308 () Bool)

(assert start!27308)

(declare-fun b!282805 () Bool)

(declare-fun e!179477 () Bool)

(assert (=> b!282805 (= e!179477 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!14115 0))(
  ( (array!14116 (arr!6699 (Array (_ BitVec 32) (_ BitVec 64))) (size!7051 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14115)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14115 (_ BitVec 32)) Bool)

(assert (=> b!282805 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8999 0))(
  ( (Unit!9000) )
))
(declare-fun lt!139798 () Unit!8999)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14115 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8999)

(assert (=> b!282805 (= lt!139798 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!139797 () array!14115)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1868 0))(
  ( (MissingZero!1868 (index!9642 (_ BitVec 32))) (Found!1868 (index!9643 (_ BitVec 32))) (Intermediate!1868 (undefined!2680 Bool) (index!9644 (_ BitVec 32)) (x!27818 (_ BitVec 32))) (Undefined!1868) (MissingVacant!1868 (index!9645 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14115 (_ BitVec 32)) SeekEntryResult!1868)

(assert (=> b!282805 (= (seekEntryOrOpen!0 (select (arr!6699 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6699 a!3325) i!1267 k!2581) startIndex!26) lt!139797 mask!3868))))

(declare-fun lt!139799 () Unit!8999)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14115 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8999)

(assert (=> b!282805 (= lt!139799 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4528 0))(
  ( (Nil!4525) (Cons!4524 (h!5194 (_ BitVec 64)) (t!9618 List!4528)) )
))
(declare-fun arrayNoDuplicates!0 (array!14115 (_ BitVec 32) List!4528) Bool)

(assert (=> b!282805 (arrayNoDuplicates!0 lt!139797 #b00000000000000000000000000000000 Nil!4525)))

(declare-fun lt!139796 () Unit!8999)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14115 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4528) Unit!8999)

(assert (=> b!282805 (= lt!139796 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4525))))

(declare-fun b!282806 () Bool)

(declare-fun res!145917 () Bool)

(declare-fun e!179476 () Bool)

(assert (=> b!282806 (=> (not res!145917) (not e!179476))))

(assert (=> b!282806 (= res!145917 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4525))))

(declare-fun b!282807 () Bool)

(declare-fun e!179478 () Bool)

(assert (=> b!282807 (= e!179476 e!179478)))

(declare-fun res!145918 () Bool)

(assert (=> b!282807 (=> (not res!145918) (not e!179478))))

(declare-fun lt!139795 () SeekEntryResult!1868)

(assert (=> b!282807 (= res!145918 (or (= lt!139795 (MissingZero!1868 i!1267)) (= lt!139795 (MissingVacant!1868 i!1267))))))

(assert (=> b!282807 (= lt!139795 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!282808 () Bool)

(declare-fun res!145914 () Bool)

(assert (=> b!282808 (=> (not res!145914) (not e!179476))))

(declare-fun arrayContainsKey!0 (array!14115 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282808 (= res!145914 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282809 () Bool)

(declare-fun res!145916 () Bool)

(assert (=> b!282809 (=> (not res!145916) (not e!179476))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282809 (= res!145916 (validKeyInArray!0 k!2581))))

(declare-fun res!145915 () Bool)

(assert (=> start!27308 (=> (not res!145915) (not e!179476))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27308 (= res!145915 (validMask!0 mask!3868))))

(assert (=> start!27308 e!179476))

(declare-fun array_inv!4653 (array!14115) Bool)

(assert (=> start!27308 (array_inv!4653 a!3325)))

(assert (=> start!27308 true))

(declare-fun b!282810 () Bool)

(declare-fun res!145920 () Bool)

(assert (=> b!282810 (=> (not res!145920) (not e!179476))))

(assert (=> b!282810 (= res!145920 (and (= (size!7051 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7051 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7051 a!3325))))))

(declare-fun b!282811 () Bool)

(declare-fun res!145913 () Bool)

(assert (=> b!282811 (=> (not res!145913) (not e!179477))))

(assert (=> b!282811 (= res!145913 (validKeyInArray!0 (select (arr!6699 a!3325) startIndex!26)))))

(declare-fun b!282812 () Bool)

(declare-fun res!145919 () Bool)

(assert (=> b!282812 (=> (not res!145919) (not e!179478))))

(assert (=> b!282812 (= res!145919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282813 () Bool)

(assert (=> b!282813 (= e!179478 e!179477)))

(declare-fun res!145912 () Bool)

(assert (=> b!282813 (=> (not res!145912) (not e!179477))))

(assert (=> b!282813 (= res!145912 (not (= startIndex!26 i!1267)))))

(assert (=> b!282813 (= lt!139797 (array!14116 (store (arr!6699 a!3325) i!1267 k!2581) (size!7051 a!3325)))))

(assert (= (and start!27308 res!145915) b!282810))

(assert (= (and b!282810 res!145920) b!282809))

(assert (= (and b!282809 res!145916) b!282806))

(assert (= (and b!282806 res!145917) b!282808))

(assert (= (and b!282808 res!145914) b!282807))

(assert (= (and b!282807 res!145918) b!282812))

(assert (= (and b!282812 res!145919) b!282813))

(assert (= (and b!282813 res!145912) b!282811))

(assert (= (and b!282811 res!145913) b!282805))

(declare-fun m!297553 () Bool)

(assert (=> b!282807 m!297553))

(declare-fun m!297555 () Bool)

(assert (=> b!282808 m!297555))

(declare-fun m!297557 () Bool)

(assert (=> b!282811 m!297557))

(assert (=> b!282811 m!297557))

(declare-fun m!297559 () Bool)

(assert (=> b!282811 m!297559))

(declare-fun m!297561 () Bool)

(assert (=> b!282805 m!297561))

(declare-fun m!297563 () Bool)

(assert (=> b!282805 m!297563))

(declare-fun m!297565 () Bool)

(assert (=> b!282805 m!297565))

(declare-fun m!297567 () Bool)

(assert (=> b!282805 m!297567))

(declare-fun m!297569 () Bool)

(assert (=> b!282805 m!297569))

(assert (=> b!282805 m!297557))

(declare-fun m!297571 () Bool)

(assert (=> b!282805 m!297571))

(declare-fun m!297573 () Bool)

(assert (=> b!282805 m!297573))

(assert (=> b!282805 m!297557))

(declare-fun m!297575 () Bool)

(assert (=> b!282805 m!297575))

(assert (=> b!282805 m!297565))

(declare-fun m!297577 () Bool)

(assert (=> b!282805 m!297577))

(declare-fun m!297579 () Bool)

(assert (=> b!282809 m!297579))

(declare-fun m!297581 () Bool)

(assert (=> start!27308 m!297581))

(declare-fun m!297583 () Bool)

(assert (=> start!27308 m!297583))

(declare-fun m!297585 () Bool)

(assert (=> b!282806 m!297585))

(assert (=> b!282813 m!297567))

(declare-fun m!297587 () Bool)

(assert (=> b!282812 m!297587))

(push 1)

