; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51540 () Bool)

(assert start!51540)

(declare-fun b!563480 () Bool)

(declare-fun e!324681 () Bool)

(assert (=> b!563480 (= e!324681 (not true))))

(declare-fun e!324680 () Bool)

(assert (=> b!563480 e!324680))

(declare-fun res!354786 () Bool)

(assert (=> b!563480 (=> (not res!354786) (not e!324680))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35359 0))(
  ( (array!35360 (arr!16976 (Array (_ BitVec 32) (_ BitVec 64))) (size!17340 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35359)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35359 (_ BitVec 32)) Bool)

(assert (=> b!563480 (= res!354786 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17638 0))(
  ( (Unit!17639) )
))
(declare-fun lt!257242 () Unit!17638)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35359 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17638)

(assert (=> b!563480 (= lt!257242 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563481 () Bool)

(declare-fun res!354790 () Bool)

(declare-fun e!324679 () Bool)

(assert (=> b!563481 (=> (not res!354790) (not e!324679))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!563481 (= res!354790 (and (= (size!17340 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17340 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17340 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!354785 () Bool)

(assert (=> start!51540 (=> (not res!354785) (not e!324679))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51540 (= res!354785 (validMask!0 mask!3119))))

(assert (=> start!51540 e!324679))

(assert (=> start!51540 true))

(declare-fun array_inv!12750 (array!35359) Bool)

(assert (=> start!51540 (array_inv!12750 a!3118)))

(declare-fun b!563482 () Bool)

(declare-fun res!354782 () Bool)

(assert (=> b!563482 (=> (not res!354782) (not e!324681))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5432 0))(
  ( (MissingZero!5432 (index!23955 (_ BitVec 32))) (Found!5432 (index!23956 (_ BitVec 32))) (Intermediate!5432 (undefined!6244 Bool) (index!23957 (_ BitVec 32)) (x!52866 (_ BitVec 32))) (Undefined!5432) (MissingVacant!5432 (index!23958 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35359 (_ BitVec 32)) SeekEntryResult!5432)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563482 (= res!354782 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16976 a!3118) j!142) mask!3119) (select (arr!16976 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16976 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16976 a!3118) i!1132 k!1914) j!142) (array!35360 (store (arr!16976 a!3118) i!1132 k!1914) (size!17340 a!3118)) mask!3119)))))

(declare-fun b!563483 () Bool)

(declare-fun res!354787 () Bool)

(assert (=> b!563483 (=> (not res!354787) (not e!324679))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563483 (= res!354787 (validKeyInArray!0 (select (arr!16976 a!3118) j!142)))))

(declare-fun b!563484 () Bool)

(assert (=> b!563484 (= e!324679 e!324681)))

(declare-fun res!354789 () Bool)

(assert (=> b!563484 (=> (not res!354789) (not e!324681))))

(declare-fun lt!257243 () SeekEntryResult!5432)

(assert (=> b!563484 (= res!354789 (or (= lt!257243 (MissingZero!5432 i!1132)) (= lt!257243 (MissingVacant!5432 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35359 (_ BitVec 32)) SeekEntryResult!5432)

(assert (=> b!563484 (= lt!257243 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!563485 () Bool)

(assert (=> b!563485 (= e!324680 (= (seekEntryOrOpen!0 (select (arr!16976 a!3118) j!142) a!3118 mask!3119) (Found!5432 j!142)))))

(declare-fun b!563486 () Bool)

(declare-fun res!354791 () Bool)

(assert (=> b!563486 (=> (not res!354791) (not e!324681))))

(assert (=> b!563486 (= res!354791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563487 () Bool)

(declare-fun res!354783 () Bool)

(assert (=> b!563487 (=> (not res!354783) (not e!324681))))

(declare-datatypes ((List!11109 0))(
  ( (Nil!11106) (Cons!11105 (h!12108 (_ BitVec 64)) (t!17345 List!11109)) )
))
(declare-fun arrayNoDuplicates!0 (array!35359 (_ BitVec 32) List!11109) Bool)

(assert (=> b!563487 (= res!354783 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11106))))

(declare-fun b!563488 () Bool)

(declare-fun res!354788 () Bool)

(assert (=> b!563488 (=> (not res!354788) (not e!324679))))

(assert (=> b!563488 (= res!354788 (validKeyInArray!0 k!1914))))

(declare-fun b!563489 () Bool)

(declare-fun res!354784 () Bool)

(assert (=> b!563489 (=> (not res!354784) (not e!324679))))

(declare-fun arrayContainsKey!0 (array!35359 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563489 (= res!354784 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51540 res!354785) b!563481))

(assert (= (and b!563481 res!354790) b!563483))

(assert (= (and b!563483 res!354787) b!563488))

(assert (= (and b!563488 res!354788) b!563489))

(assert (= (and b!563489 res!354784) b!563484))

(assert (= (and b!563484 res!354789) b!563486))

(assert (= (and b!563486 res!354791) b!563487))

(assert (= (and b!563487 res!354783) b!563482))

(assert (= (and b!563482 res!354782) b!563480))

(assert (= (and b!563480 res!354786) b!563485))

(declare-fun m!541909 () Bool)

(assert (=> b!563486 m!541909))

(declare-fun m!541911 () Bool)

(assert (=> b!563488 m!541911))

(declare-fun m!541913 () Bool)

(assert (=> b!563483 m!541913))

(assert (=> b!563483 m!541913))

(declare-fun m!541915 () Bool)

(assert (=> b!563483 m!541915))

(declare-fun m!541917 () Bool)

(assert (=> b!563487 m!541917))

(assert (=> b!563482 m!541913))

(declare-fun m!541919 () Bool)

(assert (=> b!563482 m!541919))

(assert (=> b!563482 m!541913))

(declare-fun m!541921 () Bool)

(assert (=> b!563482 m!541921))

(declare-fun m!541923 () Bool)

(assert (=> b!563482 m!541923))

(assert (=> b!563482 m!541921))

(declare-fun m!541925 () Bool)

(assert (=> b!563482 m!541925))

(assert (=> b!563482 m!541919))

(assert (=> b!563482 m!541913))

(declare-fun m!541927 () Bool)

(assert (=> b!563482 m!541927))

(declare-fun m!541929 () Bool)

(assert (=> b!563482 m!541929))

(assert (=> b!563482 m!541921))

(assert (=> b!563482 m!541923))

(assert (=> b!563485 m!541913))

(assert (=> b!563485 m!541913))

(declare-fun m!541931 () Bool)

(assert (=> b!563485 m!541931))

(declare-fun m!541933 () Bool)

(assert (=> start!51540 m!541933))

(declare-fun m!541935 () Bool)

(assert (=> start!51540 m!541935))

(declare-fun m!541937 () Bool)

(assert (=> b!563489 m!541937))

(declare-fun m!541939 () Bool)

(assert (=> b!563480 m!541939))

(declare-fun m!541941 () Bool)

(assert (=> b!563480 m!541941))

(declare-fun m!541943 () Bool)

(assert (=> b!563484 m!541943))

(push 1)

