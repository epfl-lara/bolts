; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26258 () Bool)

(assert start!26258)

(declare-fun b!271719 () Bool)

(declare-fun e!174612 () Bool)

(declare-fun e!174611 () Bool)

(assert (=> b!271719 (= e!174612 e!174611)))

(declare-fun res!135747 () Bool)

(assert (=> b!271719 (=> (not res!135747) (not e!174611))))

(declare-datatypes ((SeekEntryResult!1490 0))(
  ( (MissingZero!1490 (index!8130 (_ BitVec 32))) (Found!1490 (index!8131 (_ BitVec 32))) (Intermediate!1490 (undefined!2302 Bool) (index!8132 (_ BitVec 32)) (x!26423 (_ BitVec 32))) (Undefined!1490) (MissingVacant!1490 (index!8133 (_ BitVec 32))) )
))
(declare-fun lt!135875 () SeekEntryResult!1490)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271719 (= res!135747 (or (= lt!135875 (MissingZero!1490 i!1267)) (= lt!135875 (MissingVacant!1490 i!1267))))))

(declare-datatypes ((array!13344 0))(
  ( (array!13345 (arr!6321 (Array (_ BitVec 32) (_ BitVec 64))) (size!6673 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13344)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13344 (_ BitVec 32)) SeekEntryResult!1490)

(assert (=> b!271719 (= lt!135875 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!271720 () Bool)

(declare-fun res!135752 () Bool)

(assert (=> b!271720 (=> (not res!135752) (not e!174612))))

(declare-fun arrayContainsKey!0 (array!13344 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271720 (= res!135752 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271721 () Bool)

(declare-fun res!135755 () Bool)

(assert (=> b!271721 (=> (not res!135755) (not e!174611))))

(declare-datatypes ((List!4150 0))(
  ( (Nil!4147) (Cons!4146 (h!4813 (_ BitVec 64)) (t!9240 List!4150)) )
))
(declare-fun contains!1959 (List!4150 (_ BitVec 64)) Bool)

(assert (=> b!271721 (= res!135755 (not (contains!1959 Nil!4147 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271722 () Bool)

(assert (=> b!271722 (= e!174611 false)))

(declare-fun lt!135874 () Bool)

(assert (=> b!271722 (= lt!135874 (contains!1959 Nil!4147 k!2581))))

(declare-fun b!271723 () Bool)

(declare-fun res!135751 () Bool)

(assert (=> b!271723 (=> (not res!135751) (not e!174611))))

(assert (=> b!271723 (= res!135751 (and (bvslt (size!6673 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6673 a!3325))))))

(declare-fun b!271724 () Bool)

(declare-fun res!135750 () Bool)

(assert (=> b!271724 (=> (not res!135750) (not e!174611))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!271724 (= res!135750 (not (= startIndex!26 i!1267)))))

(declare-fun b!271725 () Bool)

(declare-fun res!135757 () Bool)

(assert (=> b!271725 (=> (not res!135757) (not e!174612))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271725 (= res!135757 (validKeyInArray!0 k!2581))))

(declare-fun b!271726 () Bool)

(declare-fun res!135749 () Bool)

(assert (=> b!271726 (=> (not res!135749) (not e!174612))))

(declare-fun arrayNoDuplicates!0 (array!13344 (_ BitVec 32) List!4150) Bool)

(assert (=> b!271726 (= res!135749 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4147))))

(declare-fun res!135759 () Bool)

(assert (=> start!26258 (=> (not res!135759) (not e!174612))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26258 (= res!135759 (validMask!0 mask!3868))))

(assert (=> start!26258 e!174612))

(declare-fun array_inv!4275 (array!13344) Bool)

(assert (=> start!26258 (array_inv!4275 a!3325)))

(assert (=> start!26258 true))

(declare-fun b!271727 () Bool)

(declare-fun res!135748 () Bool)

(assert (=> b!271727 (=> (not res!135748) (not e!174611))))

(declare-fun noDuplicate!148 (List!4150) Bool)

(assert (=> b!271727 (= res!135748 (noDuplicate!148 Nil!4147))))

(declare-fun b!271728 () Bool)

(declare-fun res!135754 () Bool)

(assert (=> b!271728 (=> (not res!135754) (not e!174611))))

(assert (=> b!271728 (= res!135754 (not (contains!1959 Nil!4147 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271729 () Bool)

(declare-fun res!135758 () Bool)

(assert (=> b!271729 (=> (not res!135758) (not e!174612))))

(assert (=> b!271729 (= res!135758 (and (= (size!6673 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6673 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6673 a!3325))))))

(declare-fun b!271730 () Bool)

(declare-fun res!135753 () Bool)

(assert (=> b!271730 (=> (not res!135753) (not e!174611))))

(assert (=> b!271730 (= res!135753 (validKeyInArray!0 (select (arr!6321 a!3325) startIndex!26)))))

(declare-fun b!271731 () Bool)

(declare-fun res!135756 () Bool)

(assert (=> b!271731 (=> (not res!135756) (not e!174611))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13344 (_ BitVec 32)) Bool)

(assert (=> b!271731 (= res!135756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26258 res!135759) b!271729))

(assert (= (and b!271729 res!135758) b!271725))

(assert (= (and b!271725 res!135757) b!271726))

(assert (= (and b!271726 res!135749) b!271720))

(assert (= (and b!271720 res!135752) b!271719))

(assert (= (and b!271719 res!135747) b!271731))

(assert (= (and b!271731 res!135756) b!271724))

(assert (= (and b!271724 res!135750) b!271730))

(assert (= (and b!271730 res!135753) b!271723))

(assert (= (and b!271723 res!135751) b!271727))

(assert (= (and b!271727 res!135748) b!271721))

(assert (= (and b!271721 res!135755) b!271728))

(assert (= (and b!271728 res!135754) b!271722))

(declare-fun m!286937 () Bool)

(assert (=> b!271731 m!286937))

(declare-fun m!286939 () Bool)

(assert (=> b!271725 m!286939))

(declare-fun m!286941 () Bool)

(assert (=> b!271727 m!286941))

(declare-fun m!286943 () Bool)

(assert (=> b!271726 m!286943))

(declare-fun m!286945 () Bool)

(assert (=> b!271722 m!286945))

(declare-fun m!286947 () Bool)

(assert (=> b!271720 m!286947))

(declare-fun m!286949 () Bool)

(assert (=> b!271719 m!286949))

(declare-fun m!286951 () Bool)

(assert (=> b!271730 m!286951))

(assert (=> b!271730 m!286951))

(declare-fun m!286953 () Bool)

(assert (=> b!271730 m!286953))

(declare-fun m!286955 () Bool)

(assert (=> b!271721 m!286955))

(declare-fun m!286957 () Bool)

(assert (=> b!271728 m!286957))

(declare-fun m!286959 () Bool)

(assert (=> start!26258 m!286959))

(declare-fun m!286961 () Bool)

(assert (=> start!26258 m!286961))

(push 1)

(assert (not b!271730))

(assert (not b!271725))

(assert (not b!271727))

