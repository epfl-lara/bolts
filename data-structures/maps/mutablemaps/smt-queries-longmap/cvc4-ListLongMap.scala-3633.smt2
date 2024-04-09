; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50148 () Bool)

(assert start!50148)

(declare-fun b!548836 () Bool)

(declare-fun res!342221 () Bool)

(declare-fun e!317025 () Bool)

(assert (=> b!548836 (=> (not res!342221) (not e!317025))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548836 (= res!342221 (validKeyInArray!0 k!1914))))

(declare-fun b!548837 () Bool)

(declare-fun res!342220 () Bool)

(assert (=> b!548837 (=> (not res!342220) (not e!317025))))

(declare-datatypes ((array!34600 0))(
  ( (array!34601 (arr!16613 (Array (_ BitVec 32) (_ BitVec 64))) (size!16977 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34600)

(declare-fun arrayContainsKey!0 (array!34600 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548837 (= res!342220 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!342224 () Bool)

(assert (=> start!50148 (=> (not res!342224) (not e!317025))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50148 (= res!342224 (validMask!0 mask!3119))))

(assert (=> start!50148 e!317025))

(assert (=> start!50148 true))

(declare-fun array_inv!12387 (array!34600) Bool)

(assert (=> start!50148 (array_inv!12387 a!3118)))

(declare-fun b!548838 () Bool)

(declare-fun e!317024 () Bool)

(assert (=> b!548838 (= e!317025 e!317024)))

(declare-fun res!342219 () Bool)

(assert (=> b!548838 (=> (not res!342219) (not e!317024))))

(declare-datatypes ((SeekEntryResult!5069 0))(
  ( (MissingZero!5069 (index!22503 (_ BitVec 32))) (Found!5069 (index!22504 (_ BitVec 32))) (Intermediate!5069 (undefined!5881 Bool) (index!22505 (_ BitVec 32)) (x!51463 (_ BitVec 32))) (Undefined!5069) (MissingVacant!5069 (index!22506 (_ BitVec 32))) )
))
(declare-fun lt!249950 () SeekEntryResult!5069)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!548838 (= res!342219 (or (= lt!249950 (MissingZero!5069 i!1132)) (= lt!249950 (MissingVacant!5069 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34600 (_ BitVec 32)) SeekEntryResult!5069)

(assert (=> b!548838 (= lt!249950 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!548839 () Bool)

(declare-fun res!342218 () Bool)

(assert (=> b!548839 (=> (not res!342218) (not e!317024))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34600 (_ BitVec 32)) Bool)

(assert (=> b!548839 (= res!342218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!548840 () Bool)

(declare-fun res!342217 () Bool)

(assert (=> b!548840 (=> (not res!342217) (not e!317025))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!548840 (= res!342217 (validKeyInArray!0 (select (arr!16613 a!3118) j!142)))))

(declare-fun b!548841 () Bool)

(declare-fun res!342223 () Bool)

(assert (=> b!548841 (=> (not res!342223) (not e!317024))))

(declare-datatypes ((List!10746 0))(
  ( (Nil!10743) (Cons!10742 (h!11712 (_ BitVec 64)) (t!16982 List!10746)) )
))
(declare-fun arrayNoDuplicates!0 (array!34600 (_ BitVec 32) List!10746) Bool)

(assert (=> b!548841 (= res!342223 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10743))))

(declare-fun b!548842 () Bool)

(assert (=> b!548842 (= e!317024 false)))

(declare-fun lt!249949 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!548842 (= lt!249949 (toIndex!0 (select (store (arr!16613 a!3118) i!1132 k!1914) j!142) mask!3119))))

(declare-fun b!548843 () Bool)

(declare-fun res!342222 () Bool)

(assert (=> b!548843 (=> (not res!342222) (not e!317025))))

(assert (=> b!548843 (= res!342222 (and (= (size!16977 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16977 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16977 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50148 res!342224) b!548843))

(assert (= (and b!548843 res!342222) b!548840))

(assert (= (and b!548840 res!342217) b!548836))

(assert (= (and b!548836 res!342221) b!548837))

(assert (= (and b!548837 res!342220) b!548838))

(assert (= (and b!548838 res!342219) b!548839))

(assert (= (and b!548839 res!342218) b!548841))

(assert (= (and b!548841 res!342223) b!548842))

(declare-fun m!525781 () Bool)

(assert (=> b!548840 m!525781))

(assert (=> b!548840 m!525781))

(declare-fun m!525783 () Bool)

(assert (=> b!548840 m!525783))

(declare-fun m!525785 () Bool)

(assert (=> b!548836 m!525785))

(declare-fun m!525787 () Bool)

(assert (=> b!548838 m!525787))

(declare-fun m!525789 () Bool)

(assert (=> start!50148 m!525789))

(declare-fun m!525791 () Bool)

(assert (=> start!50148 m!525791))

(declare-fun m!525793 () Bool)

(assert (=> b!548842 m!525793))

(declare-fun m!525795 () Bool)

(assert (=> b!548842 m!525795))

(assert (=> b!548842 m!525795))

(declare-fun m!525797 () Bool)

(assert (=> b!548842 m!525797))

(declare-fun m!525799 () Bool)

(assert (=> b!548837 m!525799))

(declare-fun m!525801 () Bool)

(assert (=> b!548839 m!525801))

(declare-fun m!525803 () Bool)

(assert (=> b!548841 m!525803))

(push 1)

(assert (not start!50148))

(assert (not b!548842))

