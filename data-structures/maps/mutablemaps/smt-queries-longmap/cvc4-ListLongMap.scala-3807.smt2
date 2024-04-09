; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52218 () Bool)

(assert start!52218)

(declare-fun b!569672 () Bool)

(declare-fun res!359844 () Bool)

(declare-fun e!327658 () Bool)

(assert (=> b!569672 (=> (not res!359844) (not e!327658))))

(declare-datatypes ((array!35695 0))(
  ( (array!35696 (arr!17135 (Array (_ BitVec 32) (_ BitVec 64))) (size!17499 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35695)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569672 (= res!359844 (validKeyInArray!0 (select (arr!17135 a!3118) j!142)))))

(declare-fun b!569673 () Bool)

(declare-fun res!359845 () Bool)

(declare-fun e!327661 () Bool)

(assert (=> b!569673 (=> (not res!359845) (not e!327661))))

(declare-datatypes ((List!11268 0))(
  ( (Nil!11265) (Cons!11264 (h!12285 (_ BitVec 64)) (t!17504 List!11268)) )
))
(declare-fun arrayNoDuplicates!0 (array!35695 (_ BitVec 32) List!11268) Bool)

(assert (=> b!569673 (= res!359845 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11265))))

(declare-fun b!569674 () Bool)

(declare-fun res!359843 () Bool)

(assert (=> b!569674 (=> (not res!359843) (not e!327658))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!569674 (= res!359843 (validKeyInArray!0 k!1914))))

(declare-fun b!569675 () Bool)

(declare-fun res!359849 () Bool)

(assert (=> b!569675 (=> (not res!359849) (not e!327661))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5591 0))(
  ( (MissingZero!5591 (index!24591 (_ BitVec 32))) (Found!5591 (index!24592 (_ BitVec 32))) (Intermediate!5591 (undefined!6403 Bool) (index!24593 (_ BitVec 32)) (x!53485 (_ BitVec 32))) (Undefined!5591) (MissingVacant!5591 (index!24594 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35695 (_ BitVec 32)) SeekEntryResult!5591)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569675 (= res!359849 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17135 a!3118) j!142) mask!3119) (select (arr!17135 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17135 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17135 a!3118) i!1132 k!1914) j!142) (array!35696 (store (arr!17135 a!3118) i!1132 k!1914) (size!17499 a!3118)) mask!3119)))))

(declare-fun b!569676 () Bool)

(declare-fun res!359841 () Bool)

(assert (=> b!569676 (=> (not res!359841) (not e!327661))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35695 (_ BitVec 32)) Bool)

(assert (=> b!569676 (= res!359841 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!359842 () Bool)

(assert (=> start!52218 (=> (not res!359842) (not e!327658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52218 (= res!359842 (validMask!0 mask!3119))))

(assert (=> start!52218 e!327658))

(assert (=> start!52218 true))

(declare-fun array_inv!12909 (array!35695) Bool)

(assert (=> start!52218 (array_inv!12909 a!3118)))

(declare-fun b!569677 () Bool)

(assert (=> b!569677 (= e!327658 e!327661)))

(declare-fun res!359847 () Bool)

(assert (=> b!569677 (=> (not res!359847) (not e!327661))))

(declare-fun lt!259754 () SeekEntryResult!5591)

(assert (=> b!569677 (= res!359847 (or (= lt!259754 (MissingZero!5591 i!1132)) (= lt!259754 (MissingVacant!5591 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35695 (_ BitVec 32)) SeekEntryResult!5591)

(assert (=> b!569677 (= lt!259754 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!569678 () Bool)

(declare-fun res!359846 () Bool)

(assert (=> b!569678 (=> (not res!359846) (not e!327658))))

(declare-fun arrayContainsKey!0 (array!35695 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569678 (= res!359846 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun e!327660 () Bool)

(declare-fun b!569679 () Bool)

(assert (=> b!569679 (= e!327660 (= (seekEntryOrOpen!0 (select (arr!17135 a!3118) j!142) a!3118 mask!3119) (Found!5591 j!142)))))

(declare-fun b!569680 () Bool)

(assert (=> b!569680 (= e!327661 (not true))))

(assert (=> b!569680 e!327660))

(declare-fun res!359840 () Bool)

(assert (=> b!569680 (=> (not res!359840) (not e!327660))))

(assert (=> b!569680 (= res!359840 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17884 0))(
  ( (Unit!17885) )
))
(declare-fun lt!259753 () Unit!17884)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35695 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17884)

(assert (=> b!569680 (= lt!259753 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569681 () Bool)

(declare-fun res!359848 () Bool)

(assert (=> b!569681 (=> (not res!359848) (not e!327658))))

(assert (=> b!569681 (= res!359848 (and (= (size!17499 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17499 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17499 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!52218 res!359842) b!569681))

(assert (= (and b!569681 res!359848) b!569672))

(assert (= (and b!569672 res!359844) b!569674))

(assert (= (and b!569674 res!359843) b!569678))

(assert (= (and b!569678 res!359846) b!569677))

(assert (= (and b!569677 res!359847) b!569676))

(assert (= (and b!569676 res!359841) b!569673))

(assert (= (and b!569673 res!359845) b!569675))

(assert (= (and b!569675 res!359849) b!569680))

(assert (= (and b!569680 res!359840) b!569679))

(declare-fun m!548599 () Bool)

(assert (=> b!569675 m!548599))

(declare-fun m!548601 () Bool)

(assert (=> b!569675 m!548601))

(assert (=> b!569675 m!548599))

(declare-fun m!548603 () Bool)

(assert (=> b!569675 m!548603))

(declare-fun m!548605 () Bool)

(assert (=> b!569675 m!548605))

(assert (=> b!569675 m!548603))

(declare-fun m!548607 () Bool)

(assert (=> b!569675 m!548607))

(assert (=> b!569675 m!548601))

(assert (=> b!569675 m!548599))

(declare-fun m!548609 () Bool)

(assert (=> b!569675 m!548609))

(declare-fun m!548611 () Bool)

(assert (=> b!569675 m!548611))

(assert (=> b!569675 m!548603))

(assert (=> b!569675 m!548605))

(declare-fun m!548613 () Bool)

(assert (=> b!569673 m!548613))

(declare-fun m!548615 () Bool)

(assert (=> b!569676 m!548615))

(declare-fun m!548617 () Bool)

(assert (=> b!569678 m!548617))

(declare-fun m!548619 () Bool)

(assert (=> b!569680 m!548619))

(declare-fun m!548621 () Bool)

(assert (=> b!569680 m!548621))

(declare-fun m!548623 () Bool)

(assert (=> start!52218 m!548623))

(declare-fun m!548625 () Bool)

(assert (=> start!52218 m!548625))

(declare-fun m!548627 () Bool)

(assert (=> b!569677 m!548627))

(declare-fun m!548629 () Bool)

(assert (=> b!569674 m!548629))

(assert (=> b!569679 m!548599))

(assert (=> b!569679 m!548599))

(declare-fun m!548631 () Bool)

(assert (=> b!569679 m!548631))

(assert (=> b!569672 m!548599))

(assert (=> b!569672 m!548599))

(declare-fun m!548633 () Bool)

(assert (=> b!569672 m!548633))

(push 1)

