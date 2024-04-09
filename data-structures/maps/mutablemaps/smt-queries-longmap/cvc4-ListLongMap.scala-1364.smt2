; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26756 () Bool)

(assert start!26756)

(declare-fun b!277824 () Bool)

(declare-datatypes ((Unit!8787 0))(
  ( (Unit!8788) )
))
(declare-fun e!177220 () Unit!8787)

(declare-fun Unit!8789 () Unit!8787)

(assert (=> b!277824 (= e!177220 Unit!8789)))

(declare-fun b!277825 () Bool)

(declare-fun res!141675 () Bool)

(declare-fun e!177219 () Bool)

(assert (=> b!277825 (=> (not res!141675) (not e!177219))))

(declare-datatypes ((array!13842 0))(
  ( (array!13843 (arr!6570 (Array (_ BitVec 32) (_ BitVec 64))) (size!6922 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13842)

(declare-datatypes ((List!4399 0))(
  ( (Nil!4396) (Cons!4395 (h!5062 (_ BitVec 64)) (t!9489 List!4399)) )
))
(declare-fun arrayNoDuplicates!0 (array!13842 (_ BitVec 32) List!4399) Bool)

(assert (=> b!277825 (= res!141675 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4396))))

(declare-fun b!277826 () Bool)

(declare-fun res!141677 () Bool)

(assert (=> b!277826 (=> (not res!141677) (not e!177219))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!277826 (= res!141677 (and (= (size!6922 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6922 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6922 a!3325))))))

(declare-fun b!277827 () Bool)

(declare-fun lt!138122 () Unit!8787)

(assert (=> b!277827 (= e!177220 lt!138122)))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13842 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8787)

(assert (=> b!277827 (= lt!138122 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun lt!138125 () array!13842)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13842 (_ BitVec 32)) Bool)

(assert (=> b!277827 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!138125 mask!3868)))

(declare-fun b!277828 () Bool)

(declare-fun res!141676 () Bool)

(declare-fun e!177222 () Bool)

(assert (=> b!277828 (=> (not res!141676) (not e!177222))))

(assert (=> b!277828 (= res!141676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277829 () Bool)

(declare-fun e!177223 () Bool)

(assert (=> b!277829 (= e!177222 e!177223)))

(declare-fun res!141679 () Bool)

(assert (=> b!277829 (=> (not res!141679) (not e!177223))))

(assert (=> b!277829 (= res!141679 (= startIndex!26 i!1267))))

(assert (=> b!277829 (= lt!138125 (array!13843 (store (arr!6570 a!3325) i!1267 k!2581) (size!6922 a!3325)))))

(declare-fun b!277830 () Bool)

(declare-fun res!141681 () Bool)

(assert (=> b!277830 (=> (not res!141681) (not e!177219))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277830 (= res!141681 (validKeyInArray!0 k!2581))))

(declare-fun b!277832 () Bool)

(assert (=> b!277832 (= e!177219 e!177222)))

(declare-fun res!141674 () Bool)

(assert (=> b!277832 (=> (not res!141674) (not e!177222))))

(declare-datatypes ((SeekEntryResult!1739 0))(
  ( (MissingZero!1739 (index!9126 (_ BitVec 32))) (Found!1739 (index!9127 (_ BitVec 32))) (Intermediate!1739 (undefined!2551 Bool) (index!9128 (_ BitVec 32)) (x!27336 (_ BitVec 32))) (Undefined!1739) (MissingVacant!1739 (index!9129 (_ BitVec 32))) )
))
(declare-fun lt!138123 () SeekEntryResult!1739)

(assert (=> b!277832 (= res!141674 (or (= lt!138123 (MissingZero!1739 i!1267)) (= lt!138123 (MissingVacant!1739 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13842 (_ BitVec 32)) SeekEntryResult!1739)

(assert (=> b!277832 (= lt!138123 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!277833 () Bool)

(declare-fun res!141678 () Bool)

(assert (=> b!277833 (=> (not res!141678) (not e!177219))))

(declare-fun arrayContainsKey!0 (array!13842 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277833 (= res!141678 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!141680 () Bool)

(assert (=> start!26756 (=> (not res!141680) (not e!177219))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26756 (= res!141680 (validMask!0 mask!3868))))

(assert (=> start!26756 e!177219))

(declare-fun array_inv!4524 (array!13842) Bool)

(assert (=> start!26756 (array_inv!4524 a!3325)))

(assert (=> start!26756 true))

(declare-fun b!277831 () Bool)

(assert (=> b!277831 (= e!177223 (not true))))

(assert (=> b!277831 (= (seekEntryOrOpen!0 k!2581 lt!138125 mask!3868) (Found!1739 i!1267))))

(declare-fun lt!138121 () Unit!8787)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13842 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8787)

(assert (=> b!277831 (= lt!138121 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!138124 () Unit!8787)

(assert (=> b!277831 (= lt!138124 e!177220)))

(declare-fun c!45626 () Bool)

(assert (=> b!277831 (= c!45626 (bvslt startIndex!26 (bvsub (size!6922 a!3325) #b00000000000000000000000000000001)))))

(assert (= (and start!26756 res!141680) b!277826))

(assert (= (and b!277826 res!141677) b!277830))

(assert (= (and b!277830 res!141681) b!277825))

(assert (= (and b!277825 res!141675) b!277833))

(assert (= (and b!277833 res!141678) b!277832))

(assert (= (and b!277832 res!141674) b!277828))

(assert (= (and b!277828 res!141676) b!277829))

(assert (= (and b!277829 res!141679) b!277831))

(assert (= (and b!277831 c!45626) b!277827))

(assert (= (and b!277831 (not c!45626)) b!277824))

(declare-fun m!292789 () Bool)

(assert (=> b!277832 m!292789))

(declare-fun m!292791 () Bool)

(assert (=> b!277828 m!292791))

(declare-fun m!292793 () Bool)

(assert (=> b!277830 m!292793))

(declare-fun m!292795 () Bool)

(assert (=> b!277833 m!292795))

(declare-fun m!292797 () Bool)

(assert (=> b!277831 m!292797))

(declare-fun m!292799 () Bool)

(assert (=> b!277831 m!292799))

(declare-fun m!292801 () Bool)

(assert (=> b!277827 m!292801))

(declare-fun m!292803 () Bool)

(assert (=> b!277827 m!292803))

(declare-fun m!292805 () Bool)

(assert (=> b!277825 m!292805))

(declare-fun m!292807 () Bool)

(assert (=> start!26756 m!292807))

(declare-fun m!292809 () Bool)

(assert (=> start!26756 m!292809))

(declare-fun m!292811 () Bool)

(assert (=> b!277829 m!292811))

(push 1)

(assert (not start!26756))

(assert (not b!277827))

