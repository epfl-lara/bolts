; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50358 () Bool)

(assert start!50358)

(declare-fun b!550637 () Bool)

(declare-fun res!343754 () Bool)

(declare-fun e!317831 () Bool)

(assert (=> b!550637 (=> (not res!343754) (not e!317831))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34708 0))(
  ( (array!34709 (arr!16664 (Array (_ BitVec 32) (_ BitVec 64))) (size!17028 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34708)

(assert (=> b!550637 (= res!343754 (and (= (size!17028 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17028 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17028 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!550638 () Bool)

(declare-fun res!343749 () Bool)

(declare-fun e!317830 () Bool)

(assert (=> b!550638 (=> (not res!343749) (not e!317830))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5120 0))(
  ( (MissingZero!5120 (index!22707 (_ BitVec 32))) (Found!5120 (index!22708 (_ BitVec 32))) (Intermediate!5120 (undefined!5932 Bool) (index!22709 (_ BitVec 32)) (x!51659 (_ BitVec 32))) (Undefined!5120) (MissingVacant!5120 (index!22710 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34708 (_ BitVec 32)) SeekEntryResult!5120)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!550638 (= res!343749 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16664 a!3118) j!142) mask!3119) (select (arr!16664 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16664 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16664 a!3118) i!1132 k!1914) j!142) (array!34709 (store (arr!16664 a!3118) i!1132 k!1914) (size!17028 a!3118)) mask!3119)))))

(declare-fun e!317833 () Bool)

(declare-fun b!550639 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34708 (_ BitVec 32)) SeekEntryResult!5120)

(assert (=> b!550639 (= e!317833 (= (seekEntryOrOpen!0 (select (arr!16664 a!3118) j!142) a!3118 mask!3119) (Found!5120 j!142)))))

(declare-fun b!550640 () Bool)

(assert (=> b!550640 (= e!317831 e!317830)))

(declare-fun res!343753 () Bool)

(assert (=> b!550640 (=> (not res!343753) (not e!317830))))

(declare-fun lt!250591 () SeekEntryResult!5120)

(assert (=> b!550640 (= res!343753 (or (= lt!250591 (MissingZero!5120 i!1132)) (= lt!250591 (MissingVacant!5120 i!1132))))))

(assert (=> b!550640 (= lt!250591 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!550641 () Bool)

(declare-fun res!343755 () Bool)

(assert (=> b!550641 (=> (not res!343755) (not e!317831))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!550641 (= res!343755 (validKeyInArray!0 k!1914))))

(declare-fun res!343748 () Bool)

(assert (=> start!50358 (=> (not res!343748) (not e!317831))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50358 (= res!343748 (validMask!0 mask!3119))))

(assert (=> start!50358 e!317831))

(assert (=> start!50358 true))

(declare-fun array_inv!12438 (array!34708) Bool)

(assert (=> start!50358 (array_inv!12438 a!3118)))

(declare-fun b!550642 () Bool)

(declare-fun res!343750 () Bool)

(assert (=> b!550642 (=> (not res!343750) (not e!317830))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34708 (_ BitVec 32)) Bool)

(assert (=> b!550642 (= res!343750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!550643 () Bool)

(assert (=> b!550643 (= e!317830 (not true))))

(assert (=> b!550643 e!317833))

(declare-fun res!343756 () Bool)

(assert (=> b!550643 (=> (not res!343756) (not e!317833))))

(assert (=> b!550643 (= res!343756 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17014 0))(
  ( (Unit!17015) )
))
(declare-fun lt!250592 () Unit!17014)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34708 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17014)

(assert (=> b!550643 (= lt!250592 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!550644 () Bool)

(declare-fun res!343752 () Bool)

(assert (=> b!550644 (=> (not res!343752) (not e!317831))))

(declare-fun arrayContainsKey!0 (array!34708 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!550644 (= res!343752 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!550645 () Bool)

(declare-fun res!343757 () Bool)

(assert (=> b!550645 (=> (not res!343757) (not e!317831))))

(assert (=> b!550645 (= res!343757 (validKeyInArray!0 (select (arr!16664 a!3118) j!142)))))

(declare-fun b!550646 () Bool)

(declare-fun res!343751 () Bool)

(assert (=> b!550646 (=> (not res!343751) (not e!317830))))

(declare-datatypes ((List!10797 0))(
  ( (Nil!10794) (Cons!10793 (h!11769 (_ BitVec 64)) (t!17033 List!10797)) )
))
(declare-fun arrayNoDuplicates!0 (array!34708 (_ BitVec 32) List!10797) Bool)

(assert (=> b!550646 (= res!343751 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10794))))

(assert (= (and start!50358 res!343748) b!550637))

(assert (= (and b!550637 res!343754) b!550645))

(assert (= (and b!550645 res!343757) b!550641))

(assert (= (and b!550641 res!343755) b!550644))

(assert (= (and b!550644 res!343752) b!550640))

(assert (= (and b!550640 res!343753) b!550642))

(assert (= (and b!550642 res!343750) b!550646))

(assert (= (and b!550646 res!343751) b!550638))

(assert (= (and b!550638 res!343749) b!550643))

(assert (= (and b!550643 res!343756) b!550639))

(declare-fun m!527683 () Bool)

(assert (=> b!550642 m!527683))

(declare-fun m!527685 () Bool)

(assert (=> b!550646 m!527685))

(declare-fun m!527687 () Bool)

(assert (=> b!550644 m!527687))

(declare-fun m!527689 () Bool)

(assert (=> b!550639 m!527689))

(assert (=> b!550639 m!527689))

(declare-fun m!527691 () Bool)

(assert (=> b!550639 m!527691))

(declare-fun m!527693 () Bool)

(assert (=> b!550641 m!527693))

(declare-fun m!527695 () Bool)

(assert (=> start!50358 m!527695))

(declare-fun m!527697 () Bool)

(assert (=> start!50358 m!527697))

(declare-fun m!527699 () Bool)

(assert (=> b!550643 m!527699))

(declare-fun m!527701 () Bool)

(assert (=> b!550643 m!527701))

(assert (=> b!550645 m!527689))

(assert (=> b!550645 m!527689))

(declare-fun m!527703 () Bool)

(assert (=> b!550645 m!527703))

(assert (=> b!550638 m!527689))

(declare-fun m!527705 () Bool)

(assert (=> b!550638 m!527705))

(assert (=> b!550638 m!527689))

(declare-fun m!527707 () Bool)

(assert (=> b!550638 m!527707))

(declare-fun m!527709 () Bool)

(assert (=> b!550638 m!527709))

(assert (=> b!550638 m!527707))

(declare-fun m!527711 () Bool)

(assert (=> b!550638 m!527711))

(assert (=> b!550638 m!527705))

(assert (=> b!550638 m!527689))

(declare-fun m!527713 () Bool)

(assert (=> b!550638 m!527713))

(declare-fun m!527715 () Bool)

(assert (=> b!550638 m!527715))

(assert (=> b!550638 m!527707))

(assert (=> b!550638 m!527709))

(declare-fun m!527717 () Bool)

(assert (=> b!550640 m!527717))

(push 1)

