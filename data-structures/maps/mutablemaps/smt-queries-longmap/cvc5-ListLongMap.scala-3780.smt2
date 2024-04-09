; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51752 () Bool)

(assert start!51752)

(declare-fun b!565809 () Bool)

(declare-fun res!356936 () Bool)

(declare-fun e!325681 () Bool)

(assert (=> b!565809 (=> (not res!356936) (not e!325681))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35514 0))(
  ( (array!35515 (arr!17052 (Array (_ BitVec 32) (_ BitVec 64))) (size!17416 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35514)

(declare-datatypes ((SeekEntryResult!5508 0))(
  ( (MissingZero!5508 (index!24259 (_ BitVec 32))) (Found!5508 (index!24260 (_ BitVec 32))) (Intermediate!5508 (undefined!6320 Bool) (index!24261 (_ BitVec 32)) (x!53156 (_ BitVec 32))) (Undefined!5508) (MissingVacant!5508 (index!24262 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35514 (_ BitVec 32)) SeekEntryResult!5508)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565809 (= res!356936 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17052 a!3118) j!142) mask!3119) (select (arr!17052 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17052 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17052 a!3118) i!1132 k!1914) j!142) (array!35515 (store (arr!17052 a!3118) i!1132 k!1914) (size!17416 a!3118)) mask!3119)))))

(declare-fun b!565810 () Bool)

(declare-fun res!356933 () Bool)

(declare-fun e!325679 () Bool)

(assert (=> b!565810 (=> (not res!356933) (not e!325679))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565810 (= res!356933 (validKeyInArray!0 k!1914))))

(declare-fun b!565811 () Bool)

(declare-fun res!356929 () Bool)

(assert (=> b!565811 (=> (not res!356929) (not e!325681))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35514 (_ BitVec 32)) Bool)

(assert (=> b!565811 (= res!356929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565812 () Bool)

(assert (=> b!565812 (= e!325681 (not true))))

(declare-fun e!325680 () Bool)

(assert (=> b!565812 e!325680))

(declare-fun res!356928 () Bool)

(assert (=> b!565812 (=> (not res!356928) (not e!325680))))

(assert (=> b!565812 (= res!356928 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17718 0))(
  ( (Unit!17719) )
))
(declare-fun lt!257962 () Unit!17718)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35514 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17718)

(assert (=> b!565812 (= lt!257962 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!565813 () Bool)

(declare-fun res!356935 () Bool)

(assert (=> b!565813 (=> (not res!356935) (not e!325679))))

(declare-fun arrayContainsKey!0 (array!35514 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565813 (= res!356935 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!565814 () Bool)

(declare-fun res!356930 () Bool)

(assert (=> b!565814 (=> (not res!356930) (not e!325679))))

(assert (=> b!565814 (= res!356930 (and (= (size!17416 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17416 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17416 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!565815 () Bool)

(declare-fun res!356927 () Bool)

(assert (=> b!565815 (=> (not res!356927) (not e!325681))))

(declare-datatypes ((List!11185 0))(
  ( (Nil!11182) (Cons!11181 (h!12187 (_ BitVec 64)) (t!17421 List!11185)) )
))
(declare-fun arrayNoDuplicates!0 (array!35514 (_ BitVec 32) List!11185) Bool)

(assert (=> b!565815 (= res!356927 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11182))))

(declare-fun b!565808 () Bool)

(declare-fun res!356934 () Bool)

(assert (=> b!565808 (=> (not res!356934) (not e!325679))))

(assert (=> b!565808 (= res!356934 (validKeyInArray!0 (select (arr!17052 a!3118) j!142)))))

(declare-fun res!356931 () Bool)

(assert (=> start!51752 (=> (not res!356931) (not e!325679))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51752 (= res!356931 (validMask!0 mask!3119))))

(assert (=> start!51752 e!325679))

(assert (=> start!51752 true))

(declare-fun array_inv!12826 (array!35514) Bool)

(assert (=> start!51752 (array_inv!12826 a!3118)))

(declare-fun b!565816 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35514 (_ BitVec 32)) SeekEntryResult!5508)

(assert (=> b!565816 (= e!325680 (= (seekEntryOrOpen!0 (select (arr!17052 a!3118) j!142) a!3118 mask!3119) (Found!5508 j!142)))))

(declare-fun b!565817 () Bool)

(assert (=> b!565817 (= e!325679 e!325681)))

(declare-fun res!356932 () Bool)

(assert (=> b!565817 (=> (not res!356932) (not e!325681))))

(declare-fun lt!257963 () SeekEntryResult!5508)

(assert (=> b!565817 (= res!356932 (or (= lt!257963 (MissingZero!5508 i!1132)) (= lt!257963 (MissingVacant!5508 i!1132))))))

(assert (=> b!565817 (= lt!257963 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!51752 res!356931) b!565814))

(assert (= (and b!565814 res!356930) b!565808))

(assert (= (and b!565808 res!356934) b!565810))

(assert (= (and b!565810 res!356933) b!565813))

(assert (= (and b!565813 res!356935) b!565817))

(assert (= (and b!565817 res!356932) b!565811))

(assert (= (and b!565811 res!356929) b!565815))

(assert (= (and b!565815 res!356927) b!565809))

(assert (= (and b!565809 res!356936) b!565812))

(assert (= (and b!565812 res!356928) b!565816))

(declare-fun m!544417 () Bool)

(assert (=> b!565811 m!544417))

(declare-fun m!544419 () Bool)

(assert (=> b!565817 m!544419))

(declare-fun m!544421 () Bool)

(assert (=> b!565813 m!544421))

(declare-fun m!544423 () Bool)

(assert (=> b!565812 m!544423))

(declare-fun m!544425 () Bool)

(assert (=> b!565812 m!544425))

(declare-fun m!544427 () Bool)

(assert (=> b!565815 m!544427))

(declare-fun m!544429 () Bool)

(assert (=> b!565810 m!544429))

(declare-fun m!544431 () Bool)

(assert (=> start!51752 m!544431))

(declare-fun m!544433 () Bool)

(assert (=> start!51752 m!544433))

(declare-fun m!544435 () Bool)

(assert (=> b!565816 m!544435))

(assert (=> b!565816 m!544435))

(declare-fun m!544437 () Bool)

(assert (=> b!565816 m!544437))

(assert (=> b!565809 m!544435))

(declare-fun m!544439 () Bool)

(assert (=> b!565809 m!544439))

(assert (=> b!565809 m!544435))

(declare-fun m!544441 () Bool)

(assert (=> b!565809 m!544441))

(declare-fun m!544443 () Bool)

(assert (=> b!565809 m!544443))

(assert (=> b!565809 m!544441))

(declare-fun m!544445 () Bool)

(assert (=> b!565809 m!544445))

(assert (=> b!565809 m!544439))

(assert (=> b!565809 m!544435))

(declare-fun m!544447 () Bool)

(assert (=> b!565809 m!544447))

(declare-fun m!544449 () Bool)

(assert (=> b!565809 m!544449))

(assert (=> b!565809 m!544441))

(assert (=> b!565809 m!544443))

(assert (=> b!565808 m!544435))

(assert (=> b!565808 m!544435))

(declare-fun m!544451 () Bool)

(assert (=> b!565808 m!544451))

(push 1)

