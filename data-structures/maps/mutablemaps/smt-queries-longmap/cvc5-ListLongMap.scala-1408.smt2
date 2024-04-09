; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27310 () Bool)

(assert start!27310)

(declare-fun b!282832 () Bool)

(declare-fun e!179488 () Bool)

(declare-fun e!179489 () Bool)

(assert (=> b!282832 (= e!179488 e!179489)))

(declare-fun res!145940 () Bool)

(assert (=> b!282832 (=> (not res!145940) (not e!179489))))

(declare-datatypes ((SeekEntryResult!1869 0))(
  ( (MissingZero!1869 (index!9646 (_ BitVec 32))) (Found!1869 (index!9647 (_ BitVec 32))) (Intermediate!1869 (undefined!2681 Bool) (index!9648 (_ BitVec 32)) (x!27827 (_ BitVec 32))) (Undefined!1869) (MissingVacant!1869 (index!9649 (_ BitVec 32))) )
))
(declare-fun lt!139811 () SeekEntryResult!1869)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!282832 (= res!145940 (or (= lt!139811 (MissingZero!1869 i!1267)) (= lt!139811 (MissingVacant!1869 i!1267))))))

(declare-datatypes ((array!14117 0))(
  ( (array!14118 (arr!6700 (Array (_ BitVec 32) (_ BitVec 64))) (size!7052 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14117)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14117 (_ BitVec 32)) SeekEntryResult!1869)

(assert (=> b!282832 (= lt!139811 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!145945 () Bool)

(assert (=> start!27310 (=> (not res!145945) (not e!179488))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27310 (= res!145945 (validMask!0 mask!3868))))

(assert (=> start!27310 e!179488))

(declare-fun array_inv!4654 (array!14117) Bool)

(assert (=> start!27310 (array_inv!4654 a!3325)))

(assert (=> start!27310 true))

(declare-fun b!282833 () Bool)

(declare-fun res!145939 () Bool)

(assert (=> b!282833 (=> (not res!145939) (not e!179488))))

(declare-datatypes ((List!4529 0))(
  ( (Nil!4526) (Cons!4525 (h!5195 (_ BitVec 64)) (t!9619 List!4529)) )
))
(declare-fun arrayNoDuplicates!0 (array!14117 (_ BitVec 32) List!4529) Bool)

(assert (=> b!282833 (= res!145939 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4526))))

(declare-fun b!282834 () Bool)

(declare-fun e!179490 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!282834 (= e!179490 (not (or (bvsge startIndex!26 (bvsub (size!7052 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000) (bvslt (bvsub (size!7052 a!3325) (bvadd #b00000000000000000000000000000001 startIndex!26)) (bvsub (size!7052 a!3325) startIndex!26)))))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14117 (_ BitVec 32)) Bool)

(assert (=> b!282834 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!9001 0))(
  ( (Unit!9002) )
))
(declare-fun lt!139812 () Unit!9001)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14117 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9001)

(assert (=> b!282834 (= lt!139812 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!139810 () array!14117)

(assert (=> b!282834 (= (seekEntryOrOpen!0 (select (arr!6700 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6700 a!3325) i!1267 k!2581) startIndex!26) lt!139810 mask!3868))))

(declare-fun lt!139813 () Unit!9001)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14117 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9001)

(assert (=> b!282834 (= lt!139813 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!282834 (arrayNoDuplicates!0 lt!139810 #b00000000000000000000000000000000 Nil!4526)))

(declare-fun lt!139814 () Unit!9001)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14117 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4529) Unit!9001)

(assert (=> b!282834 (= lt!139814 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4526))))

(declare-fun b!282835 () Bool)

(declare-fun res!145943 () Bool)

(assert (=> b!282835 (=> (not res!145943) (not e!179488))))

(declare-fun arrayContainsKey!0 (array!14117 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282835 (= res!145943 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282836 () Bool)

(declare-fun res!145942 () Bool)

(assert (=> b!282836 (=> (not res!145942) (not e!179489))))

(assert (=> b!282836 (= res!145942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282837 () Bool)

(declare-fun res!145944 () Bool)

(assert (=> b!282837 (=> (not res!145944) (not e!179488))))

(assert (=> b!282837 (= res!145944 (and (= (size!7052 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7052 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7052 a!3325))))))

(declare-fun b!282838 () Bool)

(declare-fun res!145947 () Bool)

(assert (=> b!282838 (=> (not res!145947) (not e!179488))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282838 (= res!145947 (validKeyInArray!0 k!2581))))

(declare-fun b!282839 () Bool)

(assert (=> b!282839 (= e!179489 e!179490)))

(declare-fun res!145941 () Bool)

(assert (=> b!282839 (=> (not res!145941) (not e!179490))))

(assert (=> b!282839 (= res!145941 (not (= startIndex!26 i!1267)))))

(assert (=> b!282839 (= lt!139810 (array!14118 (store (arr!6700 a!3325) i!1267 k!2581) (size!7052 a!3325)))))

(declare-fun b!282840 () Bool)

(declare-fun res!145946 () Bool)

(assert (=> b!282840 (=> (not res!145946) (not e!179490))))

(assert (=> b!282840 (= res!145946 (validKeyInArray!0 (select (arr!6700 a!3325) startIndex!26)))))

(assert (= (and start!27310 res!145945) b!282837))

(assert (= (and b!282837 res!145944) b!282838))

(assert (= (and b!282838 res!145947) b!282833))

(assert (= (and b!282833 res!145939) b!282835))

(assert (= (and b!282835 res!145943) b!282832))

(assert (= (and b!282832 res!145940) b!282836))

(assert (= (and b!282836 res!145942) b!282839))

(assert (= (and b!282839 res!145941) b!282840))

(assert (= (and b!282840 res!145946) b!282834))

(declare-fun m!297589 () Bool)

(assert (=> b!282839 m!297589))

(declare-fun m!297591 () Bool)

(assert (=> b!282832 m!297591))

(declare-fun m!297593 () Bool)

(assert (=> b!282840 m!297593))

(assert (=> b!282840 m!297593))

(declare-fun m!297595 () Bool)

(assert (=> b!282840 m!297595))

(declare-fun m!297597 () Bool)

(assert (=> start!27310 m!297597))

(declare-fun m!297599 () Bool)

(assert (=> start!27310 m!297599))

(declare-fun m!297601 () Bool)

(assert (=> b!282835 m!297601))

(declare-fun m!297603 () Bool)

(assert (=> b!282838 m!297603))

(declare-fun m!297605 () Bool)

(assert (=> b!282836 m!297605))

(declare-fun m!297607 () Bool)

(assert (=> b!282833 m!297607))

(declare-fun m!297609 () Bool)

(assert (=> b!282834 m!297609))

(declare-fun m!297611 () Bool)

(assert (=> b!282834 m!297611))

(declare-fun m!297613 () Bool)

(assert (=> b!282834 m!297613))

(assert (=> b!282834 m!297613))

(declare-fun m!297615 () Bool)

(assert (=> b!282834 m!297615))

(assert (=> b!282834 m!297589))

(declare-fun m!297617 () Bool)

(assert (=> b!282834 m!297617))

(assert (=> b!282834 m!297593))

(declare-fun m!297619 () Bool)

(assert (=> b!282834 m!297619))

(declare-fun m!297621 () Bool)

(assert (=> b!282834 m!297621))

(assert (=> b!282834 m!297593))

(declare-fun m!297623 () Bool)

(assert (=> b!282834 m!297623))

(push 1)

(assert (not b!282838))

(assert (not b!282835))

(assert (not b!282840))

(assert (not b!282834))

(assert (not b!282836))

(assert (not b!282833))

(assert (not b!282832))

(assert (not start!27310))

(check-sat)

(pop 1)

(push 1)

(check-sat)

