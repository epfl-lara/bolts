; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50510 () Bool)

(assert start!50510)

(declare-fun b!551699 () Bool)

(declare-fun res!344445 () Bool)

(declare-fun e!318403 () Bool)

(assert (=> b!551699 (=> (not res!344445) (not e!318403))))

(declare-datatypes ((array!34746 0))(
  ( (array!34747 (arr!16680 (Array (_ BitVec 32) (_ BitVec 64))) (size!17044 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34746)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34746 (_ BitVec 32)) Bool)

(assert (=> b!551699 (= res!344445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!551700 () Bool)

(declare-fun res!344452 () Bool)

(assert (=> b!551700 (=> (not res!344452) (not e!318403))))

(declare-datatypes ((List!10813 0))(
  ( (Nil!10810) (Cons!10809 (h!11791 (_ BitVec 64)) (t!17049 List!10813)) )
))
(declare-fun arrayNoDuplicates!0 (array!34746 (_ BitVec 32) List!10813) Bool)

(assert (=> b!551700 (= res!344452 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10810))))

(declare-fun b!551701 () Bool)

(declare-fun res!344449 () Bool)

(declare-fun e!318405 () Bool)

(assert (=> b!551701 (=> (not res!344449) (not e!318405))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551701 (= res!344449 (validKeyInArray!0 (select (arr!16680 a!3118) j!142)))))

(declare-fun b!551702 () Bool)

(assert (=> b!551702 (= e!318403 (not true))))

(declare-fun e!318406 () Bool)

(assert (=> b!551702 e!318406))

(declare-fun res!344450 () Bool)

(assert (=> b!551702 (=> (not res!344450) (not e!318406))))

(assert (=> b!551702 (= res!344450 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17046 0))(
  ( (Unit!17047) )
))
(declare-fun lt!250955 () Unit!17046)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34746 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17046)

(assert (=> b!551702 (= lt!250955 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!551703 () Bool)

(declare-fun res!344444 () Bool)

(assert (=> b!551703 (=> (not res!344444) (not e!318403))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5136 0))(
  ( (MissingZero!5136 (index!22771 (_ BitVec 32))) (Found!5136 (index!22772 (_ BitVec 32))) (Intermediate!5136 (undefined!5948 Bool) (index!22773 (_ BitVec 32)) (x!51735 (_ BitVec 32))) (Undefined!5136) (MissingVacant!5136 (index!22774 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34746 (_ BitVec 32)) SeekEntryResult!5136)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551703 (= res!344444 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16680 a!3118) j!142) mask!3119) (select (arr!16680 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16680 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16680 a!3118) i!1132 k!1914) j!142) (array!34747 (store (arr!16680 a!3118) i!1132 k!1914) (size!17044 a!3118)) mask!3119)))))

(declare-fun b!551704 () Bool)

(declare-fun res!344446 () Bool)

(assert (=> b!551704 (=> (not res!344446) (not e!318405))))

(assert (=> b!551704 (= res!344446 (and (= (size!17044 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17044 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17044 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!551705 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34746 (_ BitVec 32)) SeekEntryResult!5136)

(assert (=> b!551705 (= e!318406 (= (seekEntryOrOpen!0 (select (arr!16680 a!3118) j!142) a!3118 mask!3119) (Found!5136 j!142)))))

(declare-fun res!344453 () Bool)

(assert (=> start!50510 (=> (not res!344453) (not e!318405))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50510 (= res!344453 (validMask!0 mask!3119))))

(assert (=> start!50510 e!318405))

(assert (=> start!50510 true))

(declare-fun array_inv!12454 (array!34746) Bool)

(assert (=> start!50510 (array_inv!12454 a!3118)))

(declare-fun b!551706 () Bool)

(declare-fun res!344448 () Bool)

(assert (=> b!551706 (=> (not res!344448) (not e!318405))))

(declare-fun arrayContainsKey!0 (array!34746 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551706 (= res!344448 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!551707 () Bool)

(assert (=> b!551707 (= e!318405 e!318403)))

(declare-fun res!344451 () Bool)

(assert (=> b!551707 (=> (not res!344451) (not e!318403))))

(declare-fun lt!250954 () SeekEntryResult!5136)

(assert (=> b!551707 (= res!344451 (or (= lt!250954 (MissingZero!5136 i!1132)) (= lt!250954 (MissingVacant!5136 i!1132))))))

(assert (=> b!551707 (= lt!250954 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!551708 () Bool)

(declare-fun res!344447 () Bool)

(assert (=> b!551708 (=> (not res!344447) (not e!318405))))

(assert (=> b!551708 (= res!344447 (validKeyInArray!0 k!1914))))

(assert (= (and start!50510 res!344453) b!551704))

(assert (= (and b!551704 res!344446) b!551701))

(assert (= (and b!551701 res!344449) b!551708))

(assert (= (and b!551708 res!344447) b!551706))

(assert (= (and b!551706 res!344448) b!551707))

(assert (= (and b!551707 res!344451) b!551699))

(assert (= (and b!551699 res!344445) b!551700))

(assert (= (and b!551700 res!344452) b!551703))

(assert (= (and b!551703 res!344444) b!551702))

(assert (= (and b!551702 res!344450) b!551705))

(declare-fun m!528661 () Bool)

(assert (=> start!50510 m!528661))

(declare-fun m!528663 () Bool)

(assert (=> start!50510 m!528663))

(declare-fun m!528665 () Bool)

(assert (=> b!551707 m!528665))

(declare-fun m!528667 () Bool)

(assert (=> b!551706 m!528667))

(declare-fun m!528669 () Bool)

(assert (=> b!551700 m!528669))

(declare-fun m!528671 () Bool)

(assert (=> b!551699 m!528671))

(declare-fun m!528673 () Bool)

(assert (=> b!551703 m!528673))

(declare-fun m!528675 () Bool)

(assert (=> b!551703 m!528675))

(assert (=> b!551703 m!528673))

(declare-fun m!528677 () Bool)

(assert (=> b!551703 m!528677))

(declare-fun m!528679 () Bool)

(assert (=> b!551703 m!528679))

(assert (=> b!551703 m!528677))

(declare-fun m!528681 () Bool)

(assert (=> b!551703 m!528681))

(assert (=> b!551703 m!528675))

(assert (=> b!551703 m!528673))

(declare-fun m!528683 () Bool)

(assert (=> b!551703 m!528683))

(declare-fun m!528685 () Bool)

(assert (=> b!551703 m!528685))

(assert (=> b!551703 m!528677))

(assert (=> b!551703 m!528679))

(declare-fun m!528687 () Bool)

(assert (=> b!551708 m!528687))

(assert (=> b!551701 m!528673))

(assert (=> b!551701 m!528673))

(declare-fun m!528689 () Bool)

(assert (=> b!551701 m!528689))

(assert (=> b!551705 m!528673))

(assert (=> b!551705 m!528673))

(declare-fun m!528691 () Bool)

(assert (=> b!551705 m!528691))

(declare-fun m!528693 () Bool)

(assert (=> b!551702 m!528693))

(declare-fun m!528695 () Bool)

(assert (=> b!551702 m!528695))

(push 1)

