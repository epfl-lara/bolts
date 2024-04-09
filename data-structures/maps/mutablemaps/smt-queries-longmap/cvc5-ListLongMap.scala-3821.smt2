; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52430 () Bool)

(assert start!52430)

(declare-fun b!571802 () Bool)

(declare-fun res!361460 () Bool)

(declare-fun e!328902 () Bool)

(assert (=> b!571802 (=> (not res!361460) (not e!328902))))

(declare-datatypes ((array!35781 0))(
  ( (array!35782 (arr!17175 (Array (_ BitVec 32) (_ BitVec 64))) (size!17539 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35781)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35781 (_ BitVec 32)) Bool)

(assert (=> b!571802 (= res!361460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!571803 () Bool)

(declare-fun res!361465 () Bool)

(declare-fun e!328899 () Bool)

(assert (=> b!571803 (=> (not res!361465) (not e!328899))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!571803 (= res!361465 (validKeyInArray!0 (select (arr!17175 a!3118) j!142)))))

(declare-fun b!571804 () Bool)

(declare-fun e!328900 () Bool)

(declare-fun e!328896 () Bool)

(assert (=> b!571804 (= e!328900 e!328896)))

(declare-fun res!361463 () Bool)

(assert (=> b!571804 (=> res!361463 e!328896)))

(declare-datatypes ((SeekEntryResult!5631 0))(
  ( (MissingZero!5631 (index!24751 (_ BitVec 32))) (Found!5631 (index!24752 (_ BitVec 32))) (Intermediate!5631 (undefined!6443 Bool) (index!24753 (_ BitVec 32)) (x!53655 (_ BitVec 32))) (Undefined!5631) (MissingVacant!5631 (index!24754 (_ BitVec 32))) )
))
(declare-fun lt!260894 () SeekEntryResult!5631)

(assert (=> b!571804 (= res!361463 (or (undefined!6443 lt!260894) (not (is-Intermediate!5631 lt!260894))))))

(declare-fun b!571805 () Bool)

(declare-fun res!361462 () Bool)

(assert (=> b!571805 (=> (not res!361462) (not e!328899))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!571805 (= res!361462 (validKeyInArray!0 k!1914))))

(declare-fun res!361467 () Bool)

(assert (=> start!52430 (=> (not res!361467) (not e!328899))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52430 (= res!361467 (validMask!0 mask!3119))))

(assert (=> start!52430 e!328899))

(assert (=> start!52430 true))

(declare-fun array_inv!12949 (array!35781) Bool)

(assert (=> start!52430 (array_inv!12949 a!3118)))

(declare-fun b!571806 () Bool)

(declare-fun res!361471 () Bool)

(assert (=> b!571806 (=> (not res!361471) (not e!328902))))

(declare-datatypes ((List!11308 0))(
  ( (Nil!11305) (Cons!11304 (h!12331 (_ BitVec 64)) (t!17544 List!11308)) )
))
(declare-fun arrayNoDuplicates!0 (array!35781 (_ BitVec 32) List!11308) Bool)

(assert (=> b!571806 (= res!361471 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11305))))

(declare-fun b!571807 () Bool)

(declare-fun e!328898 () Bool)

(declare-fun e!328903 () Bool)

(assert (=> b!571807 (= e!328898 e!328903)))

(declare-fun res!361461 () Bool)

(assert (=> b!571807 (=> (not res!361461) (not e!328903))))

(declare-fun lt!260897 () SeekEntryResult!5631)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35781 (_ BitVec 32)) SeekEntryResult!5631)

(assert (=> b!571807 (= res!361461 (= lt!260897 (seekKeyOrZeroReturnVacant!0 (x!53655 lt!260894) (index!24753 lt!260894) (index!24753 lt!260894) (select (arr!17175 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!571808 () Bool)

(declare-fun e!328901 () Bool)

(assert (=> b!571808 (= e!328901 (not true))))

(assert (=> b!571808 e!328900))

(declare-fun res!361472 () Bool)

(assert (=> b!571808 (=> (not res!361472) (not e!328900))))

(assert (=> b!571808 (= res!361472 (= lt!260897 (Found!5631 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35781 (_ BitVec 32)) SeekEntryResult!5631)

(assert (=> b!571808 (= lt!260897 (seekEntryOrOpen!0 (select (arr!17175 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!571808 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17964 0))(
  ( (Unit!17965) )
))
(declare-fun lt!260899 () Unit!17964)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35781 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17964)

(assert (=> b!571808 (= lt!260899 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!571809 () Bool)

(assert (=> b!571809 (= e!328896 e!328898)))

(declare-fun res!361468 () Bool)

(assert (=> b!571809 (=> res!361468 e!328898)))

(declare-fun lt!260896 () (_ BitVec 64))

(assert (=> b!571809 (= res!361468 (or (= lt!260896 (select (arr!17175 a!3118) j!142)) (= lt!260896 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!571809 (= lt!260896 (select (arr!17175 a!3118) (index!24753 lt!260894)))))

(declare-fun b!571810 () Bool)

(declare-fun res!361470 () Bool)

(assert (=> b!571810 (=> (not res!361470) (not e!328899))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!571810 (= res!361470 (and (= (size!17539 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17539 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17539 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!571811 () Bool)

(declare-fun lt!260895 () array!35781)

(declare-fun lt!260892 () (_ BitVec 64))

(assert (=> b!571811 (= e!328903 (= (seekEntryOrOpen!0 lt!260892 lt!260895 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53655 lt!260894) (index!24753 lt!260894) (index!24753 lt!260894) lt!260892 lt!260895 mask!3119)))))

(declare-fun b!571812 () Bool)

(assert (=> b!571812 (= e!328902 e!328901)))

(declare-fun res!361464 () Bool)

(assert (=> b!571812 (=> (not res!361464) (not e!328901))))

(declare-fun lt!260900 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35781 (_ BitVec 32)) SeekEntryResult!5631)

(assert (=> b!571812 (= res!361464 (= lt!260894 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260900 lt!260892 lt!260895 mask!3119)))))

(declare-fun lt!260893 () (_ BitVec 32))

(assert (=> b!571812 (= lt!260894 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260893 (select (arr!17175 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!571812 (= lt!260900 (toIndex!0 lt!260892 mask!3119))))

(assert (=> b!571812 (= lt!260892 (select (store (arr!17175 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!571812 (= lt!260893 (toIndex!0 (select (arr!17175 a!3118) j!142) mask!3119))))

(assert (=> b!571812 (= lt!260895 (array!35782 (store (arr!17175 a!3118) i!1132 k!1914) (size!17539 a!3118)))))

(declare-fun b!571813 () Bool)

(assert (=> b!571813 (= e!328899 e!328902)))

(declare-fun res!361466 () Bool)

(assert (=> b!571813 (=> (not res!361466) (not e!328902))))

(declare-fun lt!260898 () SeekEntryResult!5631)

(assert (=> b!571813 (= res!361466 (or (= lt!260898 (MissingZero!5631 i!1132)) (= lt!260898 (MissingVacant!5631 i!1132))))))

(assert (=> b!571813 (= lt!260898 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!571814 () Bool)

(declare-fun res!361469 () Bool)

(assert (=> b!571814 (=> (not res!361469) (not e!328899))))

(declare-fun arrayContainsKey!0 (array!35781 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!571814 (= res!361469 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52430 res!361467) b!571810))

(assert (= (and b!571810 res!361470) b!571803))

(assert (= (and b!571803 res!361465) b!571805))

(assert (= (and b!571805 res!361462) b!571814))

(assert (= (and b!571814 res!361469) b!571813))

(assert (= (and b!571813 res!361466) b!571802))

(assert (= (and b!571802 res!361460) b!571806))

(assert (= (and b!571806 res!361471) b!571812))

(assert (= (and b!571812 res!361464) b!571808))

(assert (= (and b!571808 res!361472) b!571804))

(assert (= (and b!571804 (not res!361463)) b!571809))

(assert (= (and b!571809 (not res!361468)) b!571807))

(assert (= (and b!571807 res!361461) b!571811))

(declare-fun m!550759 () Bool)

(assert (=> start!52430 m!550759))

(declare-fun m!550761 () Bool)

(assert (=> start!52430 m!550761))

(declare-fun m!550763 () Bool)

(assert (=> b!571802 m!550763))

(declare-fun m!550765 () Bool)

(assert (=> b!571805 m!550765))

(declare-fun m!550767 () Bool)

(assert (=> b!571812 m!550767))

(declare-fun m!550769 () Bool)

(assert (=> b!571812 m!550769))

(declare-fun m!550771 () Bool)

(assert (=> b!571812 m!550771))

(assert (=> b!571812 m!550767))

(declare-fun m!550773 () Bool)

(assert (=> b!571812 m!550773))

(assert (=> b!571812 m!550767))

(declare-fun m!550775 () Bool)

(assert (=> b!571812 m!550775))

(declare-fun m!550777 () Bool)

(assert (=> b!571812 m!550777))

(declare-fun m!550779 () Bool)

(assert (=> b!571812 m!550779))

(declare-fun m!550781 () Bool)

(assert (=> b!571806 m!550781))

(assert (=> b!571809 m!550767))

(declare-fun m!550783 () Bool)

(assert (=> b!571809 m!550783))

(assert (=> b!571808 m!550767))

(assert (=> b!571808 m!550767))

(declare-fun m!550785 () Bool)

(assert (=> b!571808 m!550785))

(declare-fun m!550787 () Bool)

(assert (=> b!571808 m!550787))

(declare-fun m!550789 () Bool)

(assert (=> b!571808 m!550789))

(declare-fun m!550791 () Bool)

(assert (=> b!571813 m!550791))

(declare-fun m!550793 () Bool)

(assert (=> b!571814 m!550793))

(assert (=> b!571807 m!550767))

(assert (=> b!571807 m!550767))

(declare-fun m!550795 () Bool)

(assert (=> b!571807 m!550795))

(declare-fun m!550797 () Bool)

(assert (=> b!571811 m!550797))

(declare-fun m!550799 () Bool)

(assert (=> b!571811 m!550799))

(assert (=> b!571803 m!550767))

(assert (=> b!571803 m!550767))

(declare-fun m!550801 () Bool)

(assert (=> b!571803 m!550801))

(push 1)

