; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50000 () Bool)

(assert start!50000)

(declare-fun b!547834 () Bool)

(declare-fun res!341396 () Bool)

(declare-fun e!316549 () Bool)

(assert (=> b!547834 (=> (not res!341396) (not e!316549))))

(declare-datatypes ((array!34536 0))(
  ( (array!34537 (arr!16584 (Array (_ BitVec 32) (_ BitVec 64))) (size!16948 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34536)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547834 (= res!341396 (validKeyInArray!0 (select (arr!16584 a!3118) j!142)))))

(declare-fun b!547835 () Bool)

(declare-fun e!316547 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(assert (=> b!547835 (= e!316547 (bvslt mask!3119 #b00000000000000000000000000000000))))

(declare-fun lt!249667 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!547835 (= lt!249667 (toIndex!0 (select (arr!16584 a!3118) j!142) mask!3119))))

(declare-fun b!547836 () Bool)

(declare-fun res!341397 () Bool)

(assert (=> b!547836 (=> (not res!341397) (not e!316547))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34536 (_ BitVec 32)) Bool)

(assert (=> b!547836 (= res!341397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!547837 () Bool)

(declare-fun res!341394 () Bool)

(assert (=> b!547837 (=> (not res!341394) (not e!316549))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!547837 (= res!341394 (and (= (size!16948 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16948 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16948 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!341392 () Bool)

(assert (=> start!50000 (=> (not res!341392) (not e!316549))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50000 (= res!341392 (validMask!0 mask!3119))))

(assert (=> start!50000 e!316549))

(assert (=> start!50000 true))

(declare-fun array_inv!12358 (array!34536) Bool)

(assert (=> start!50000 (array_inv!12358 a!3118)))

(declare-fun b!547838 () Bool)

(assert (=> b!547838 (= e!316549 e!316547)))

(declare-fun res!341395 () Bool)

(assert (=> b!547838 (=> (not res!341395) (not e!316547))))

(declare-datatypes ((SeekEntryResult!5040 0))(
  ( (MissingZero!5040 (index!22387 (_ BitVec 32))) (Found!5040 (index!22388 (_ BitVec 32))) (Intermediate!5040 (undefined!5852 Bool) (index!22389 (_ BitVec 32)) (x!51359 (_ BitVec 32))) (Undefined!5040) (MissingVacant!5040 (index!22390 (_ BitVec 32))) )
))
(declare-fun lt!249668 () SeekEntryResult!5040)

(assert (=> b!547838 (= res!341395 (or (= lt!249668 (MissingZero!5040 i!1132)) (= lt!249668 (MissingVacant!5040 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34536 (_ BitVec 32)) SeekEntryResult!5040)

(assert (=> b!547838 (= lt!249668 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!547839 () Bool)

(declare-fun res!341398 () Bool)

(assert (=> b!547839 (=> (not res!341398) (not e!316547))))

(declare-datatypes ((List!10717 0))(
  ( (Nil!10714) (Cons!10713 (h!11680 (_ BitVec 64)) (t!16953 List!10717)) )
))
(declare-fun arrayNoDuplicates!0 (array!34536 (_ BitVec 32) List!10717) Bool)

(assert (=> b!547839 (= res!341398 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10714))))

(declare-fun b!547840 () Bool)

(declare-fun res!341399 () Bool)

(assert (=> b!547840 (=> (not res!341399) (not e!316549))))

(declare-fun arrayContainsKey!0 (array!34536 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547840 (= res!341399 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!547841 () Bool)

(declare-fun res!341393 () Bool)

(assert (=> b!547841 (=> (not res!341393) (not e!316549))))

(assert (=> b!547841 (= res!341393 (validKeyInArray!0 k!1914))))

(assert (= (and start!50000 res!341392) b!547837))

(assert (= (and b!547837 res!341394) b!547834))

(assert (= (and b!547834 res!341396) b!547841))

(assert (= (and b!547841 res!341393) b!547840))

(assert (= (and b!547840 res!341399) b!547838))

(assert (= (and b!547838 res!341395) b!547836))

(assert (= (and b!547836 res!341397) b!547839))

(assert (= (and b!547839 res!341398) b!547835))

(declare-fun m!524989 () Bool)

(assert (=> start!50000 m!524989))

(declare-fun m!524991 () Bool)

(assert (=> start!50000 m!524991))

(declare-fun m!524993 () Bool)

(assert (=> b!547835 m!524993))

(assert (=> b!547835 m!524993))

(declare-fun m!524995 () Bool)

(assert (=> b!547835 m!524995))

(declare-fun m!524997 () Bool)

(assert (=> b!547836 m!524997))

(declare-fun m!524999 () Bool)

(assert (=> b!547839 m!524999))

(declare-fun m!525001 () Bool)

(assert (=> b!547838 m!525001))

(declare-fun m!525003 () Bool)

(assert (=> b!547841 m!525003))

(assert (=> b!547834 m!524993))

(assert (=> b!547834 m!524993))

(declare-fun m!525005 () Bool)

(assert (=> b!547834 m!525005))

(declare-fun m!525007 () Bool)

(assert (=> b!547840 m!525007))

(push 1)

