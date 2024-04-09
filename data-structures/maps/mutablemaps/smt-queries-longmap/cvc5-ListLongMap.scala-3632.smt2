; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50138 () Bool)

(assert start!50138)

(declare-fun b!548716 () Bool)

(declare-fun res!342097 () Bool)

(declare-fun e!316979 () Bool)

(assert (=> b!548716 (=> (not res!342097) (not e!316979))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34590 0))(
  ( (array!34591 (arr!16608 (Array (_ BitVec 32) (_ BitVec 64))) (size!16972 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34590)

(assert (=> b!548716 (= res!342097 (and (= (size!16972 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16972 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16972 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!548717 () Bool)

(declare-fun res!342102 () Bool)

(assert (=> b!548717 (=> (not res!342102) (not e!316979))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548717 (= res!342102 (validKeyInArray!0 k!1914))))

(declare-fun b!548718 () Bool)

(declare-fun res!342100 () Bool)

(assert (=> b!548718 (=> (not res!342100) (not e!316979))))

(declare-fun arrayContainsKey!0 (array!34590 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548718 (= res!342100 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!548719 () Bool)

(declare-fun res!342098 () Bool)

(assert (=> b!548719 (=> (not res!342098) (not e!316979))))

(assert (=> b!548719 (= res!342098 (validKeyInArray!0 (select (arr!16608 a!3118) j!142)))))

(declare-fun b!548720 () Bool)

(declare-fun e!316980 () Bool)

(assert (=> b!548720 (= e!316980 (bvslt mask!3119 #b00000000000000000000000000000000))))

(declare-fun lt!249919 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!548720 (= lt!249919 (toIndex!0 (select (store (arr!16608 a!3118) i!1132 k!1914) j!142) mask!3119))))

(declare-fun res!342104 () Bool)

(assert (=> start!50138 (=> (not res!342104) (not e!316979))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50138 (= res!342104 (validMask!0 mask!3119))))

(assert (=> start!50138 e!316979))

(assert (=> start!50138 true))

(declare-fun array_inv!12382 (array!34590) Bool)

(assert (=> start!50138 (array_inv!12382 a!3118)))

(declare-fun b!548721 () Bool)

(declare-fun res!342099 () Bool)

(assert (=> b!548721 (=> (not res!342099) (not e!316980))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34590 (_ BitVec 32)) Bool)

(assert (=> b!548721 (= res!342099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!548722 () Bool)

(declare-fun res!342101 () Bool)

(assert (=> b!548722 (=> (not res!342101) (not e!316980))))

(declare-datatypes ((List!10741 0))(
  ( (Nil!10738) (Cons!10737 (h!11707 (_ BitVec 64)) (t!16977 List!10741)) )
))
(declare-fun arrayNoDuplicates!0 (array!34590 (_ BitVec 32) List!10741) Bool)

(assert (=> b!548722 (= res!342101 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10738))))

(declare-fun b!548723 () Bool)

(assert (=> b!548723 (= e!316979 e!316980)))

(declare-fun res!342103 () Bool)

(assert (=> b!548723 (=> (not res!342103) (not e!316980))))

(declare-datatypes ((SeekEntryResult!5064 0))(
  ( (MissingZero!5064 (index!22483 (_ BitVec 32))) (Found!5064 (index!22484 (_ BitVec 32))) (Intermediate!5064 (undefined!5876 Bool) (index!22485 (_ BitVec 32)) (x!51450 (_ BitVec 32))) (Undefined!5064) (MissingVacant!5064 (index!22486 (_ BitVec 32))) )
))
(declare-fun lt!249920 () SeekEntryResult!5064)

(assert (=> b!548723 (= res!342103 (or (= lt!249920 (MissingZero!5064 i!1132)) (= lt!249920 (MissingVacant!5064 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34590 (_ BitVec 32)) SeekEntryResult!5064)

(assert (=> b!548723 (= lt!249920 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!50138 res!342104) b!548716))

(assert (= (and b!548716 res!342097) b!548719))

(assert (= (and b!548719 res!342098) b!548717))

(assert (= (and b!548717 res!342102) b!548718))

(assert (= (and b!548718 res!342100) b!548723))

(assert (= (and b!548723 res!342103) b!548721))

(assert (= (and b!548721 res!342099) b!548722))

(assert (= (and b!548722 res!342101) b!548720))

(declare-fun m!525661 () Bool)

(assert (=> start!50138 m!525661))

(declare-fun m!525663 () Bool)

(assert (=> start!50138 m!525663))

(declare-fun m!525665 () Bool)

(assert (=> b!548719 m!525665))

(assert (=> b!548719 m!525665))

(declare-fun m!525667 () Bool)

(assert (=> b!548719 m!525667))

(declare-fun m!525669 () Bool)

(assert (=> b!548721 m!525669))

(declare-fun m!525671 () Bool)

(assert (=> b!548720 m!525671))

(declare-fun m!525673 () Bool)

(assert (=> b!548720 m!525673))

(assert (=> b!548720 m!525673))

(declare-fun m!525675 () Bool)

(assert (=> b!548720 m!525675))

(declare-fun m!525677 () Bool)

(assert (=> b!548722 m!525677))

(declare-fun m!525679 () Bool)

(assert (=> b!548723 m!525679))

(declare-fun m!525681 () Bool)

(assert (=> b!548717 m!525681))

(declare-fun m!525683 () Bool)

(assert (=> b!548718 m!525683))

(push 1)

