; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50246 () Bool)

(assert start!50246)

(declare-fun b!549600 () Bool)

(declare-fun res!342900 () Bool)

(declare-fun e!317367 () Bool)

(assert (=> b!549600 (=> (not res!342900) (not e!317367))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549600 (= res!342900 (validKeyInArray!0 k!1914))))

(declare-fun b!549601 () Bool)

(declare-fun res!342901 () Bool)

(declare-fun e!317368 () Bool)

(assert (=> b!549601 (=> (not res!342901) (not e!317368))))

(declare-datatypes ((array!34653 0))(
  ( (array!34654 (arr!16638 (Array (_ BitVec 32) (_ BitVec 64))) (size!17002 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34653)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34653 (_ BitVec 32)) Bool)

(assert (=> b!549601 (= res!342901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549602 () Bool)

(assert (=> b!549602 (= e!317368 (not true))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!549602 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!16962 0))(
  ( (Unit!16963) )
))
(declare-fun lt!250306 () Unit!16962)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34653 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16962)

(assert (=> b!549602 (= lt!250306 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!549604 () Bool)

(declare-fun res!342897 () Bool)

(assert (=> b!549604 (=> (not res!342897) (not e!317368))))

(declare-datatypes ((List!10771 0))(
  ( (Nil!10768) (Cons!10767 (h!11740 (_ BitVec 64)) (t!17007 List!10771)) )
))
(declare-fun arrayNoDuplicates!0 (array!34653 (_ BitVec 32) List!10771) Bool)

(assert (=> b!549604 (= res!342897 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10768))))

(declare-fun b!549605 () Bool)

(declare-fun res!342896 () Bool)

(assert (=> b!549605 (=> (not res!342896) (not e!317367))))

(assert (=> b!549605 (= res!342896 (validKeyInArray!0 (select (arr!16638 a!3118) j!142)))))

(declare-fun b!549606 () Bool)

(declare-fun res!342902 () Bool)

(assert (=> b!549606 (=> (not res!342902) (not e!317367))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!549606 (= res!342902 (and (= (size!17002 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17002 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17002 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549603 () Bool)

(assert (=> b!549603 (= e!317367 e!317368)))

(declare-fun res!342895 () Bool)

(assert (=> b!549603 (=> (not res!342895) (not e!317368))))

(declare-datatypes ((SeekEntryResult!5094 0))(
  ( (MissingZero!5094 (index!22603 (_ BitVec 32))) (Found!5094 (index!22604 (_ BitVec 32))) (Intermediate!5094 (undefined!5906 Bool) (index!22605 (_ BitVec 32)) (x!51563 (_ BitVec 32))) (Undefined!5094) (MissingVacant!5094 (index!22606 (_ BitVec 32))) )
))
(declare-fun lt!250307 () SeekEntryResult!5094)

(assert (=> b!549603 (= res!342895 (or (= lt!250307 (MissingZero!5094 i!1132)) (= lt!250307 (MissingVacant!5094 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34653 (_ BitVec 32)) SeekEntryResult!5094)

(assert (=> b!549603 (= lt!250307 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!342898 () Bool)

(assert (=> start!50246 (=> (not res!342898) (not e!317367))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50246 (= res!342898 (validMask!0 mask!3119))))

(assert (=> start!50246 e!317367))

(assert (=> start!50246 true))

(declare-fun array_inv!12412 (array!34653) Bool)

(assert (=> start!50246 (array_inv!12412 a!3118)))

(declare-fun b!549607 () Bool)

(declare-fun res!342894 () Bool)

(assert (=> b!549607 (=> (not res!342894) (not e!317367))))

(declare-fun arrayContainsKey!0 (array!34653 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549607 (= res!342894 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549608 () Bool)

(declare-fun res!342899 () Bool)

(assert (=> b!549608 (=> (not res!342899) (not e!317368))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34653 (_ BitVec 32)) SeekEntryResult!5094)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549608 (= res!342899 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16638 a!3118) j!142) mask!3119) (select (arr!16638 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16638 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16638 a!3118) i!1132 k!1914) j!142) (array!34654 (store (arr!16638 a!3118) i!1132 k!1914) (size!17002 a!3118)) mask!3119)))))

(assert (= (and start!50246 res!342898) b!549606))

(assert (= (and b!549606 res!342902) b!549605))

(assert (= (and b!549605 res!342896) b!549600))

(assert (= (and b!549600 res!342900) b!549607))

(assert (= (and b!549607 res!342894) b!549603))

(assert (= (and b!549603 res!342895) b!549601))

(assert (= (and b!549601 res!342901) b!549604))

(assert (= (and b!549604 res!342897) b!549608))

(assert (= (and b!549608 res!342899) b!549602))

(declare-fun m!526573 () Bool)

(assert (=> start!50246 m!526573))

(declare-fun m!526575 () Bool)

(assert (=> start!50246 m!526575))

(declare-fun m!526577 () Bool)

(assert (=> b!549601 m!526577))

(declare-fun m!526579 () Bool)

(assert (=> b!549605 m!526579))

(assert (=> b!549605 m!526579))

(declare-fun m!526581 () Bool)

(assert (=> b!549605 m!526581))

(declare-fun m!526583 () Bool)

(assert (=> b!549607 m!526583))

(declare-fun m!526585 () Bool)

(assert (=> b!549600 m!526585))

(assert (=> b!549608 m!526579))

(declare-fun m!526587 () Bool)

(assert (=> b!549608 m!526587))

(assert (=> b!549608 m!526579))

(declare-fun m!526589 () Bool)

(assert (=> b!549608 m!526589))

(declare-fun m!526591 () Bool)

(assert (=> b!549608 m!526591))

(assert (=> b!549608 m!526589))

(declare-fun m!526593 () Bool)

(assert (=> b!549608 m!526593))

(assert (=> b!549608 m!526587))

(assert (=> b!549608 m!526579))

(declare-fun m!526595 () Bool)

(assert (=> b!549608 m!526595))

(declare-fun m!526597 () Bool)

(assert (=> b!549608 m!526597))

(assert (=> b!549608 m!526589))

(assert (=> b!549608 m!526591))

(declare-fun m!526599 () Bool)

(assert (=> b!549604 m!526599))

(declare-fun m!526601 () Bool)

(assert (=> b!549602 m!526601))

(declare-fun m!526603 () Bool)

(assert (=> b!549602 m!526603))

(declare-fun m!526605 () Bool)

(assert (=> b!549603 m!526605))

(push 1)

