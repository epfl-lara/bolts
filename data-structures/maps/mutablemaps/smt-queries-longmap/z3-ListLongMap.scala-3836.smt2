; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52786 () Bool)

(assert start!52786)

(declare-fun b!575106 () Bool)

(declare-fun res!363681 () Bool)

(declare-fun e!330913 () Bool)

(assert (=> b!575106 (=> (not res!363681) (not e!330913))))

(declare-datatypes ((array!35885 0))(
  ( (array!35886 (arr!17221 (Array (_ BitVec 32) (_ BitVec 64))) (size!17585 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35885)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35885 (_ BitVec 32)) Bool)

(assert (=> b!575106 (= res!363681 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!575107 () Bool)

(declare-fun e!330915 () Bool)

(assert (=> b!575107 (= e!330915 e!330913)))

(declare-fun res!363675 () Bool)

(assert (=> b!575107 (=> (not res!363675) (not e!330913))))

(declare-datatypes ((SeekEntryResult!5677 0))(
  ( (MissingZero!5677 (index!24935 (_ BitVec 32))) (Found!5677 (index!24936 (_ BitVec 32))) (Intermediate!5677 (undefined!6489 Bool) (index!24937 (_ BitVec 32)) (x!53857 (_ BitVec 32))) (Undefined!5677) (MissingVacant!5677 (index!24938 (_ BitVec 32))) )
))
(declare-fun lt!262835 () SeekEntryResult!5677)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!575107 (= res!363675 (or (= lt!262835 (MissingZero!5677 i!1132)) (= lt!262835 (MissingVacant!5677 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35885 (_ BitVec 32)) SeekEntryResult!5677)

(assert (=> b!575107 (= lt!262835 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!575108 () Bool)

(declare-fun res!363676 () Bool)

(assert (=> b!575108 (=> (not res!363676) (not e!330915))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!575108 (= res!363676 (validKeyInArray!0 k0!1914))))

(declare-fun b!575109 () Bool)

(declare-fun e!330914 () Bool)

(assert (=> b!575109 (= e!330914 true)))

(declare-fun lt!262826 () SeekEntryResult!5677)

(declare-fun lt!262828 () SeekEntryResult!5677)

(assert (=> b!575109 (= lt!262826 lt!262828)))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((Unit!18056 0))(
  ( (Unit!18057) )
))
(declare-fun lt!262834 () Unit!18056)

(declare-fun lt!262837 () SeekEntryResult!5677)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35885 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18056)

(assert (=> b!575109 (= lt!262834 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k0!1914 j!142 (x!53857 lt!262837) (index!24937 lt!262837) (index!24937 lt!262837) mask!3119))))

(declare-fun b!575110 () Bool)

(declare-fun e!330916 () Bool)

(declare-fun e!330912 () Bool)

(assert (=> b!575110 (= e!330916 (not e!330912))))

(declare-fun res!363677 () Bool)

(assert (=> b!575110 (=> res!363677 e!330912)))

(get-info :version)

(assert (=> b!575110 (= res!363677 (or (undefined!6489 lt!262837) (not ((_ is Intermediate!5677) lt!262837))))))

(declare-fun lt!262836 () SeekEntryResult!5677)

(declare-fun lt!262827 () SeekEntryResult!5677)

(assert (=> b!575110 (= lt!262836 lt!262827)))

(assert (=> b!575110 (= lt!262827 (Found!5677 j!142))))

(assert (=> b!575110 (= lt!262836 (seekEntryOrOpen!0 (select (arr!17221 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!575110 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!262831 () Unit!18056)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35885 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18056)

(assert (=> b!575110 (= lt!262831 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!575111 () Bool)

(assert (=> b!575111 (= e!330913 e!330916)))

(declare-fun res!363672 () Bool)

(assert (=> b!575111 (=> (not res!363672) (not e!330916))))

(declare-fun lt!262825 () (_ BitVec 32))

(declare-fun lt!262829 () (_ BitVec 64))

(declare-fun lt!262830 () array!35885)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35885 (_ BitVec 32)) SeekEntryResult!5677)

(assert (=> b!575111 (= res!363672 (= lt!262837 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262825 lt!262829 lt!262830 mask!3119)))))

(declare-fun lt!262838 () (_ BitVec 32))

(assert (=> b!575111 (= lt!262837 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262838 (select (arr!17221 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575111 (= lt!262825 (toIndex!0 lt!262829 mask!3119))))

(assert (=> b!575111 (= lt!262829 (select (store (arr!17221 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!575111 (= lt!262838 (toIndex!0 (select (arr!17221 a!3118) j!142) mask!3119))))

(assert (=> b!575111 (= lt!262830 (array!35886 (store (arr!17221 a!3118) i!1132 k0!1914) (size!17585 a!3118)))))

(declare-fun res!363674 () Bool)

(assert (=> start!52786 (=> (not res!363674) (not e!330915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52786 (= res!363674 (validMask!0 mask!3119))))

(assert (=> start!52786 e!330915))

(assert (=> start!52786 true))

(declare-fun array_inv!12995 (array!35885) Bool)

(assert (=> start!52786 (array_inv!12995 a!3118)))

(declare-fun b!575112 () Bool)

(declare-fun res!363673 () Bool)

(assert (=> b!575112 (=> (not res!363673) (not e!330913))))

(declare-datatypes ((List!11354 0))(
  ( (Nil!11351) (Cons!11350 (h!12389 (_ BitVec 64)) (t!17590 List!11354)) )
))
(declare-fun arrayNoDuplicates!0 (array!35885 (_ BitVec 32) List!11354) Bool)

(assert (=> b!575112 (= res!363673 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11351))))

(declare-fun b!575113 () Bool)

(declare-fun res!363680 () Bool)

(assert (=> b!575113 (=> (not res!363680) (not e!330915))))

(assert (=> b!575113 (= res!363680 (validKeyInArray!0 (select (arr!17221 a!3118) j!142)))))

(declare-fun b!575114 () Bool)

(declare-fun res!363679 () Bool)

(assert (=> b!575114 (=> (not res!363679) (not e!330915))))

(assert (=> b!575114 (= res!363679 (and (= (size!17585 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17585 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17585 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!575115 () Bool)

(declare-fun e!330910 () Bool)

(assert (=> b!575115 (= e!330912 e!330910)))

(declare-fun res!363682 () Bool)

(assert (=> b!575115 (=> res!363682 e!330910)))

(declare-fun lt!262833 () (_ BitVec 64))

(assert (=> b!575115 (= res!363682 (or (= lt!262833 (select (arr!17221 a!3118) j!142)) (= lt!262833 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!575115 (= lt!262833 (select (arr!17221 a!3118) (index!24937 lt!262837)))))

(declare-fun b!575116 () Bool)

(assert (=> b!575116 (= e!330910 e!330914)))

(declare-fun res!363678 () Bool)

(assert (=> b!575116 (=> res!363678 e!330914)))

(assert (=> b!575116 (= res!363678 (or (bvslt (index!24937 lt!262837) #b00000000000000000000000000000000) (bvsge (index!24937 lt!262837) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53857 lt!262837) #b01111111111111111111111111111110) (bvslt (x!53857 lt!262837) #b00000000000000000000000000000000) (not (= lt!262833 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!17221 a!3118) i!1132 k0!1914) (index!24937 lt!262837)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!262826 lt!262827))))))

(declare-fun lt!262832 () SeekEntryResult!5677)

(assert (=> b!575116 (= lt!262832 lt!262828)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35885 (_ BitVec 32)) SeekEntryResult!5677)

(assert (=> b!575116 (= lt!262828 (seekKeyOrZeroReturnVacant!0 (x!53857 lt!262837) (index!24937 lt!262837) (index!24937 lt!262837) lt!262829 lt!262830 mask!3119))))

(assert (=> b!575116 (= lt!262832 (seekEntryOrOpen!0 lt!262829 lt!262830 mask!3119))))

(assert (=> b!575116 (= lt!262836 lt!262826)))

(assert (=> b!575116 (= lt!262826 (seekKeyOrZeroReturnVacant!0 (x!53857 lt!262837) (index!24937 lt!262837) (index!24937 lt!262837) (select (arr!17221 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!575117 () Bool)

(declare-fun res!363683 () Bool)

(assert (=> b!575117 (=> (not res!363683) (not e!330915))))

(declare-fun arrayContainsKey!0 (array!35885 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!575117 (= res!363683 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52786 res!363674) b!575114))

(assert (= (and b!575114 res!363679) b!575113))

(assert (= (and b!575113 res!363680) b!575108))

(assert (= (and b!575108 res!363676) b!575117))

(assert (= (and b!575117 res!363683) b!575107))

(assert (= (and b!575107 res!363675) b!575106))

(assert (= (and b!575106 res!363681) b!575112))

(assert (= (and b!575112 res!363673) b!575111))

(assert (= (and b!575111 res!363672) b!575110))

(assert (= (and b!575110 (not res!363677)) b!575115))

(assert (= (and b!575115 (not res!363682)) b!575116))

(assert (= (and b!575116 (not res!363678)) b!575109))

(declare-fun m!553951 () Bool)

(assert (=> b!575112 m!553951))

(declare-fun m!553953 () Bool)

(assert (=> b!575109 m!553953))

(declare-fun m!553955 () Bool)

(assert (=> b!575108 m!553955))

(declare-fun m!553957 () Bool)

(assert (=> b!575116 m!553957))

(declare-fun m!553959 () Bool)

(assert (=> b!575116 m!553959))

(declare-fun m!553961 () Bool)

(assert (=> b!575116 m!553961))

(declare-fun m!553963 () Bool)

(assert (=> b!575116 m!553963))

(declare-fun m!553965 () Bool)

(assert (=> b!575116 m!553965))

(assert (=> b!575116 m!553961))

(declare-fun m!553967 () Bool)

(assert (=> b!575116 m!553967))

(declare-fun m!553969 () Bool)

(assert (=> start!52786 m!553969))

(declare-fun m!553971 () Bool)

(assert (=> start!52786 m!553971))

(assert (=> b!575115 m!553961))

(declare-fun m!553973 () Bool)

(assert (=> b!575115 m!553973))

(declare-fun m!553975 () Bool)

(assert (=> b!575117 m!553975))

(assert (=> b!575113 m!553961))

(assert (=> b!575113 m!553961))

(declare-fun m!553977 () Bool)

(assert (=> b!575113 m!553977))

(assert (=> b!575110 m!553961))

(assert (=> b!575110 m!553961))

(declare-fun m!553979 () Bool)

(assert (=> b!575110 m!553979))

(declare-fun m!553981 () Bool)

(assert (=> b!575110 m!553981))

(declare-fun m!553983 () Bool)

(assert (=> b!575110 m!553983))

(assert (=> b!575111 m!553961))

(declare-fun m!553985 () Bool)

(assert (=> b!575111 m!553985))

(declare-fun m!553987 () Bool)

(assert (=> b!575111 m!553987))

(assert (=> b!575111 m!553961))

(declare-fun m!553989 () Bool)

(assert (=> b!575111 m!553989))

(assert (=> b!575111 m!553961))

(declare-fun m!553991 () Bool)

(assert (=> b!575111 m!553991))

(declare-fun m!553993 () Bool)

(assert (=> b!575111 m!553993))

(assert (=> b!575111 m!553965))

(declare-fun m!553995 () Bool)

(assert (=> b!575106 m!553995))

(declare-fun m!553997 () Bool)

(assert (=> b!575107 m!553997))

(check-sat (not b!575109) (not b!575110) (not b!575111) (not b!575113) (not b!575112) (not b!575107) (not start!52786) (not b!575108) (not b!575117) (not b!575116) (not b!575106))
(check-sat)
