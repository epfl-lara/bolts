; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50258 () Bool)

(assert start!50258)

(declare-fun b!549762 () Bool)

(declare-fun e!317420 () Bool)

(declare-fun e!317422 () Bool)

(assert (=> b!549762 (= e!317420 e!317422)))

(declare-fun res!343061 () Bool)

(assert (=> b!549762 (=> (not res!343061) (not e!317422))))

(declare-datatypes ((SeekEntryResult!5100 0))(
  ( (MissingZero!5100 (index!22627 (_ BitVec 32))) (Found!5100 (index!22628 (_ BitVec 32))) (Intermediate!5100 (undefined!5912 Bool) (index!22629 (_ BitVec 32)) (x!51585 (_ BitVec 32))) (Undefined!5100) (MissingVacant!5100 (index!22630 (_ BitVec 32))) )
))
(declare-fun lt!250342 () SeekEntryResult!5100)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!549762 (= res!343061 (or (= lt!250342 (MissingZero!5100 i!1132)) (= lt!250342 (MissingVacant!5100 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!34665 0))(
  ( (array!34666 (arr!16644 (Array (_ BitVec 32) (_ BitVec 64))) (size!17008 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34665)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34665 (_ BitVec 32)) SeekEntryResult!5100)

(assert (=> b!549762 (= lt!250342 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!549763 () Bool)

(assert (=> b!549763 (= e!317422 (not true))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34665 (_ BitVec 32)) Bool)

(assert (=> b!549763 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!16974 0))(
  ( (Unit!16975) )
))
(declare-fun lt!250343 () Unit!16974)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34665 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16974)

(assert (=> b!549763 (= lt!250343 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!343059 () Bool)

(assert (=> start!50258 (=> (not res!343059) (not e!317420))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50258 (= res!343059 (validMask!0 mask!3119))))

(assert (=> start!50258 e!317420))

(assert (=> start!50258 true))

(declare-fun array_inv!12418 (array!34665) Bool)

(assert (=> start!50258 (array_inv!12418 a!3118)))

(declare-fun b!549764 () Bool)

(declare-fun res!343060 () Bool)

(assert (=> b!549764 (=> (not res!343060) (not e!317422))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34665 (_ BitVec 32)) SeekEntryResult!5100)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549764 (= res!343060 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16644 a!3118) j!142) mask!3119) (select (arr!16644 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16644 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16644 a!3118) i!1132 k!1914) j!142) (array!34666 (store (arr!16644 a!3118) i!1132 k!1914) (size!17008 a!3118)) mask!3119)))))

(declare-fun b!549765 () Bool)

(declare-fun res!343064 () Bool)

(assert (=> b!549765 (=> (not res!343064) (not e!317422))))

(assert (=> b!549765 (= res!343064 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549766 () Bool)

(declare-fun res!343056 () Bool)

(assert (=> b!549766 (=> (not res!343056) (not e!317420))))

(declare-fun arrayContainsKey!0 (array!34665 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549766 (= res!343056 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549767 () Bool)

(declare-fun res!343062 () Bool)

(assert (=> b!549767 (=> (not res!343062) (not e!317420))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549767 (= res!343062 (validKeyInArray!0 k!1914))))

(declare-fun b!549768 () Bool)

(declare-fun res!343057 () Bool)

(assert (=> b!549768 (=> (not res!343057) (not e!317422))))

(declare-datatypes ((List!10777 0))(
  ( (Nil!10774) (Cons!10773 (h!11746 (_ BitVec 64)) (t!17013 List!10777)) )
))
(declare-fun arrayNoDuplicates!0 (array!34665 (_ BitVec 32) List!10777) Bool)

(assert (=> b!549768 (= res!343057 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10774))))

(declare-fun b!549769 () Bool)

(declare-fun res!343058 () Bool)

(assert (=> b!549769 (=> (not res!343058) (not e!317420))))

(assert (=> b!549769 (= res!343058 (validKeyInArray!0 (select (arr!16644 a!3118) j!142)))))

(declare-fun b!549770 () Bool)

(declare-fun res!343063 () Bool)

(assert (=> b!549770 (=> (not res!343063) (not e!317420))))

(assert (=> b!549770 (= res!343063 (and (= (size!17008 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17008 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17008 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50258 res!343059) b!549770))

(assert (= (and b!549770 res!343063) b!549769))

(assert (= (and b!549769 res!343058) b!549767))

(assert (= (and b!549767 res!343062) b!549766))

(assert (= (and b!549766 res!343056) b!549762))

(assert (= (and b!549762 res!343061) b!549765))

(assert (= (and b!549765 res!343064) b!549768))

(assert (= (and b!549768 res!343057) b!549764))

(assert (= (and b!549764 res!343060) b!549763))

(declare-fun m!526777 () Bool)

(assert (=> start!50258 m!526777))

(declare-fun m!526779 () Bool)

(assert (=> start!50258 m!526779))

(declare-fun m!526781 () Bool)

(assert (=> b!549762 m!526781))

(declare-fun m!526783 () Bool)

(assert (=> b!549767 m!526783))

(declare-fun m!526785 () Bool)

(assert (=> b!549766 m!526785))

(declare-fun m!526787 () Bool)

(assert (=> b!549765 m!526787))

(declare-fun m!526789 () Bool)

(assert (=> b!549764 m!526789))

(declare-fun m!526791 () Bool)

(assert (=> b!549764 m!526791))

(assert (=> b!549764 m!526789))

(declare-fun m!526793 () Bool)

(assert (=> b!549764 m!526793))

(declare-fun m!526795 () Bool)

(assert (=> b!549764 m!526795))

(assert (=> b!549764 m!526793))

(declare-fun m!526797 () Bool)

(assert (=> b!549764 m!526797))

(assert (=> b!549764 m!526791))

(assert (=> b!549764 m!526789))

(declare-fun m!526799 () Bool)

(assert (=> b!549764 m!526799))

(declare-fun m!526801 () Bool)

(assert (=> b!549764 m!526801))

(assert (=> b!549764 m!526793))

(assert (=> b!549764 m!526795))

(assert (=> b!549769 m!526789))

(assert (=> b!549769 m!526789))

(declare-fun m!526803 () Bool)

(assert (=> b!549769 m!526803))

(declare-fun m!526805 () Bool)

(assert (=> b!549768 m!526805))

(declare-fun m!526807 () Bool)

(assert (=> b!549763 m!526807))

(declare-fun m!526809 () Bool)

(assert (=> b!549763 m!526809))

(push 1)

