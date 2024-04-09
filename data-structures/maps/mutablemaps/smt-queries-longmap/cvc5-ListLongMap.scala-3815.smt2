; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52328 () Bool)

(assert start!52328)

(declare-fun b!570724 () Bool)

(declare-fun res!360655 () Bool)

(declare-fun e!328242 () Bool)

(assert (=> b!570724 (=> (not res!360655) (not e!328242))))

(declare-datatypes ((array!35742 0))(
  ( (array!35743 (arr!17157 (Array (_ BitVec 32) (_ BitVec 64))) (size!17521 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35742)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35742 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!570724 (= res!360655 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!570725 () Bool)

(declare-fun res!360658 () Bool)

(declare-fun e!328239 () Bool)

(assert (=> b!570725 (=> (not res!360658) (not e!328239))))

(declare-datatypes ((List!11290 0))(
  ( (Nil!11287) (Cons!11286 (h!12310 (_ BitVec 64)) (t!17526 List!11290)) )
))
(declare-fun arrayNoDuplicates!0 (array!35742 (_ BitVec 32) List!11290) Bool)

(assert (=> b!570725 (= res!360658 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11287))))

(declare-fun b!570726 () Bool)

(declare-fun e!328241 () Bool)

(assert (=> b!570726 (= e!328241 (not true))))

(declare-fun e!328238 () Bool)

(assert (=> b!570726 e!328238))

(declare-fun res!360657 () Bool)

(assert (=> b!570726 (=> (not res!360657) (not e!328238))))

(declare-datatypes ((SeekEntryResult!5613 0))(
  ( (MissingZero!5613 (index!24679 (_ BitVec 32))) (Found!5613 (index!24680 (_ BitVec 32))) (Intermediate!5613 (undefined!6425 Bool) (index!24681 (_ BitVec 32)) (x!53580 (_ BitVec 32))) (Undefined!5613) (MissingVacant!5613 (index!24682 (_ BitVec 32))) )
))
(declare-fun lt!260258 () SeekEntryResult!5613)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!570726 (= res!360657 (= lt!260258 (Found!5613 j!142)))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35742 (_ BitVec 32)) SeekEntryResult!5613)

(assert (=> b!570726 (= lt!260258 (seekEntryOrOpen!0 (select (arr!17157 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35742 (_ BitVec 32)) Bool)

(assert (=> b!570726 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17928 0))(
  ( (Unit!17929) )
))
(declare-fun lt!260261 () Unit!17928)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35742 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17928)

(assert (=> b!570726 (= lt!260261 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!570727 () Bool)

(assert (=> b!570727 (= e!328239 e!328241)))

(declare-fun res!360656 () Bool)

(assert (=> b!570727 (=> (not res!360656) (not e!328241))))

(declare-fun lt!260257 () (_ BitVec 32))

(declare-fun lt!260260 () SeekEntryResult!5613)

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35742 (_ BitVec 32)) SeekEntryResult!5613)

(assert (=> b!570727 (= res!360656 (= lt!260260 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260257 (select (store (arr!17157 a!3118) i!1132 k!1914) j!142) (array!35743 (store (arr!17157 a!3118) i!1132 k!1914) (size!17521 a!3118)) mask!3119)))))

(declare-fun lt!260256 () (_ BitVec 32))

(assert (=> b!570727 (= lt!260260 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260256 (select (arr!17157 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570727 (= lt!260257 (toIndex!0 (select (store (arr!17157 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!570727 (= lt!260256 (toIndex!0 (select (arr!17157 a!3118) j!142) mask!3119))))

(declare-fun b!570728 () Bool)

(declare-fun e!328240 () Bool)

(assert (=> b!570728 (= e!328238 e!328240)))

(declare-fun res!360660 () Bool)

(assert (=> b!570728 (=> res!360660 e!328240)))

(assert (=> b!570728 (= res!360660 (or (undefined!6425 lt!260260) (not (is-Intermediate!5613 lt!260260)) (= (select (arr!17157 a!3118) (index!24681 lt!260260)) (select (arr!17157 a!3118) j!142)) (= (select (arr!17157 a!3118) (index!24681 lt!260260)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!570729 () Bool)

(declare-fun res!360662 () Bool)

(assert (=> b!570729 (=> (not res!360662) (not e!328242))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!570729 (= res!360662 (validKeyInArray!0 k!1914))))

(declare-fun b!570730 () Bool)

(declare-fun res!360664 () Bool)

(assert (=> b!570730 (=> (not res!360664) (not e!328242))))

(assert (=> b!570730 (= res!360664 (and (= (size!17521 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17521 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17521 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!570731 () Bool)

(assert (=> b!570731 (= e!328242 e!328239)))

(declare-fun res!360659 () Bool)

(assert (=> b!570731 (=> (not res!360659) (not e!328239))))

(declare-fun lt!260259 () SeekEntryResult!5613)

(assert (=> b!570731 (= res!360659 (or (= lt!260259 (MissingZero!5613 i!1132)) (= lt!260259 (MissingVacant!5613 i!1132))))))

(assert (=> b!570731 (= lt!260259 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!360661 () Bool)

(assert (=> start!52328 (=> (not res!360661) (not e!328242))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52328 (= res!360661 (validMask!0 mask!3119))))

(assert (=> start!52328 e!328242))

(assert (=> start!52328 true))

(declare-fun array_inv!12931 (array!35742) Bool)

(assert (=> start!52328 (array_inv!12931 a!3118)))

(declare-fun b!570732 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35742 (_ BitVec 32)) SeekEntryResult!5613)

(assert (=> b!570732 (= e!328240 (= lt!260258 (seekKeyOrZeroReturnVacant!0 (x!53580 lt!260260) (index!24681 lt!260260) (index!24681 lt!260260) (select (arr!17157 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!570733 () Bool)

(declare-fun res!360663 () Bool)

(assert (=> b!570733 (=> (not res!360663) (not e!328242))))

(assert (=> b!570733 (= res!360663 (validKeyInArray!0 (select (arr!17157 a!3118) j!142)))))

(declare-fun b!570734 () Bool)

(declare-fun res!360665 () Bool)

(assert (=> b!570734 (=> (not res!360665) (not e!328239))))

(assert (=> b!570734 (= res!360665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!52328 res!360661) b!570730))

(assert (= (and b!570730 res!360664) b!570733))

(assert (= (and b!570733 res!360663) b!570729))

(assert (= (and b!570729 res!360662) b!570724))

(assert (= (and b!570724 res!360655) b!570731))

(assert (= (and b!570731 res!360659) b!570734))

(assert (= (and b!570734 res!360665) b!570725))

(assert (= (and b!570725 res!360658) b!570727))

(assert (= (and b!570727 res!360656) b!570726))

(assert (= (and b!570726 res!360657) b!570728))

(assert (= (and b!570728 (not res!360660)) b!570732))

(declare-fun m!549691 () Bool)

(assert (=> b!570727 m!549691))

(declare-fun m!549693 () Bool)

(assert (=> b!570727 m!549693))

(assert (=> b!570727 m!549691))

(assert (=> b!570727 m!549691))

(declare-fun m!549695 () Bool)

(assert (=> b!570727 m!549695))

(declare-fun m!549697 () Bool)

(assert (=> b!570727 m!549697))

(declare-fun m!549699 () Bool)

(assert (=> b!570727 m!549699))

(declare-fun m!549701 () Bool)

(assert (=> b!570727 m!549701))

(assert (=> b!570727 m!549699))

(declare-fun m!549703 () Bool)

(assert (=> b!570727 m!549703))

(assert (=> b!570727 m!549699))

(assert (=> b!570726 m!549691))

(assert (=> b!570726 m!549691))

(declare-fun m!549705 () Bool)

(assert (=> b!570726 m!549705))

(declare-fun m!549707 () Bool)

(assert (=> b!570726 m!549707))

(declare-fun m!549709 () Bool)

(assert (=> b!570726 m!549709))

(declare-fun m!549711 () Bool)

(assert (=> b!570724 m!549711))

(assert (=> b!570733 m!549691))

(assert (=> b!570733 m!549691))

(declare-fun m!549713 () Bool)

(assert (=> b!570733 m!549713))

(assert (=> b!570732 m!549691))

(assert (=> b!570732 m!549691))

(declare-fun m!549715 () Bool)

(assert (=> b!570732 m!549715))

(declare-fun m!549717 () Bool)

(assert (=> b!570729 m!549717))

(declare-fun m!549719 () Bool)

(assert (=> b!570731 m!549719))

(declare-fun m!549721 () Bool)

(assert (=> b!570728 m!549721))

(assert (=> b!570728 m!549691))

(declare-fun m!549723 () Bool)

(assert (=> start!52328 m!549723))

(declare-fun m!549725 () Bool)

(assert (=> start!52328 m!549725))

(declare-fun m!549727 () Bool)

(assert (=> b!570734 m!549727))

(declare-fun m!549729 () Bool)

(assert (=> b!570725 m!549729))

(push 1)

