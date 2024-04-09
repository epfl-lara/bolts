; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51732 () Bool)

(assert start!51732)

(declare-fun b!565508 () Bool)

(declare-fun res!356628 () Bool)

(declare-fun e!325561 () Bool)

(assert (=> b!565508 (=> (not res!356628) (not e!325561))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565508 (= res!356628 (validKeyInArray!0 k!1914))))

(declare-fun b!565509 () Bool)

(declare-fun res!356630 () Bool)

(assert (=> b!565509 (=> (not res!356630) (not e!325561))))

(declare-datatypes ((array!35494 0))(
  ( (array!35495 (arr!17042 (Array (_ BitVec 32) (_ BitVec 64))) (size!17406 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35494)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!565509 (= res!356630 (validKeyInArray!0 (select (arr!17042 a!3118) j!142)))))

(declare-fun b!565510 () Bool)

(declare-fun e!325560 () Bool)

(assert (=> b!565510 (= e!325561 e!325560)))

(declare-fun res!356636 () Bool)

(assert (=> b!565510 (=> (not res!356636) (not e!325560))))

(declare-datatypes ((SeekEntryResult!5498 0))(
  ( (MissingZero!5498 (index!24219 (_ BitVec 32))) (Found!5498 (index!24220 (_ BitVec 32))) (Intermediate!5498 (undefined!6310 Bool) (index!24221 (_ BitVec 32)) (x!53114 (_ BitVec 32))) (Undefined!5498) (MissingVacant!5498 (index!24222 (_ BitVec 32))) )
))
(declare-fun lt!257902 () SeekEntryResult!5498)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!565510 (= res!356636 (or (= lt!257902 (MissingZero!5498 i!1132)) (= lt!257902 (MissingVacant!5498 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35494 (_ BitVec 32)) SeekEntryResult!5498)

(assert (=> b!565510 (= lt!257902 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!565511 () Bool)

(declare-fun res!356632 () Bool)

(assert (=> b!565511 (=> (not res!356632) (not e!325561))))

(assert (=> b!565511 (= res!356632 (and (= (size!17406 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17406 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17406 a!3118)) (not (= i!1132 j!142))))))

(declare-fun e!325558 () Bool)

(declare-fun b!565512 () Bool)

(assert (=> b!565512 (= e!325558 (= (seekEntryOrOpen!0 (select (arr!17042 a!3118) j!142) a!3118 mask!3119) (Found!5498 j!142)))))

(declare-fun b!565513 () Bool)

(declare-fun res!356629 () Bool)

(assert (=> b!565513 (=> (not res!356629) (not e!325561))))

(declare-fun arrayContainsKey!0 (array!35494 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565513 (= res!356629 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!565514 () Bool)

(declare-fun res!356633 () Bool)

(assert (=> b!565514 (=> (not res!356633) (not e!325560))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35494 (_ BitVec 32)) SeekEntryResult!5498)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565514 (= res!356633 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17042 a!3118) j!142) mask!3119) (select (arr!17042 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17042 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17042 a!3118) i!1132 k!1914) j!142) (array!35495 (store (arr!17042 a!3118) i!1132 k!1914) (size!17406 a!3118)) mask!3119)))))

(declare-fun res!356634 () Bool)

(assert (=> start!51732 (=> (not res!356634) (not e!325561))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51732 (= res!356634 (validMask!0 mask!3119))))

(assert (=> start!51732 e!325561))

(assert (=> start!51732 true))

(declare-fun array_inv!12816 (array!35494) Bool)

(assert (=> start!51732 (array_inv!12816 a!3118)))

(declare-fun b!565515 () Bool)

(assert (=> b!565515 (= e!325560 (not true))))

(assert (=> b!565515 e!325558))

(declare-fun res!356635 () Bool)

(assert (=> b!565515 (=> (not res!356635) (not e!325558))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35494 (_ BitVec 32)) Bool)

(assert (=> b!565515 (= res!356635 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17698 0))(
  ( (Unit!17699) )
))
(declare-fun lt!257903 () Unit!17698)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35494 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17698)

(assert (=> b!565515 (= lt!257903 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!565516 () Bool)

(declare-fun res!356631 () Bool)

(assert (=> b!565516 (=> (not res!356631) (not e!325560))))

(assert (=> b!565516 (= res!356631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565517 () Bool)

(declare-fun res!356627 () Bool)

(assert (=> b!565517 (=> (not res!356627) (not e!325560))))

(declare-datatypes ((List!11175 0))(
  ( (Nil!11172) (Cons!11171 (h!12177 (_ BitVec 64)) (t!17411 List!11175)) )
))
(declare-fun arrayNoDuplicates!0 (array!35494 (_ BitVec 32) List!11175) Bool)

(assert (=> b!565517 (= res!356627 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11172))))

(assert (= (and start!51732 res!356634) b!565511))

(assert (= (and b!565511 res!356632) b!565509))

(assert (= (and b!565509 res!356630) b!565508))

(assert (= (and b!565508 res!356628) b!565513))

(assert (= (and b!565513 res!356629) b!565510))

(assert (= (and b!565510 res!356636) b!565516))

(assert (= (and b!565516 res!356631) b!565517))

(assert (= (and b!565517 res!356627) b!565514))

(assert (= (and b!565514 res!356633) b!565515))

(assert (= (and b!565515 res!356635) b!565512))

(declare-fun m!544057 () Bool)

(assert (=> b!565513 m!544057))

(declare-fun m!544059 () Bool)

(assert (=> b!565512 m!544059))

(assert (=> b!565512 m!544059))

(declare-fun m!544061 () Bool)

(assert (=> b!565512 m!544061))

(declare-fun m!544063 () Bool)

(assert (=> b!565516 m!544063))

(assert (=> b!565514 m!544059))

(declare-fun m!544065 () Bool)

(assert (=> b!565514 m!544065))

(assert (=> b!565514 m!544059))

(declare-fun m!544067 () Bool)

(assert (=> b!565514 m!544067))

(declare-fun m!544069 () Bool)

(assert (=> b!565514 m!544069))

(assert (=> b!565514 m!544067))

(declare-fun m!544071 () Bool)

(assert (=> b!565514 m!544071))

(assert (=> b!565514 m!544065))

(assert (=> b!565514 m!544059))

(declare-fun m!544073 () Bool)

(assert (=> b!565514 m!544073))

(declare-fun m!544075 () Bool)

(assert (=> b!565514 m!544075))

(assert (=> b!565514 m!544067))

(assert (=> b!565514 m!544069))

(declare-fun m!544077 () Bool)

(assert (=> start!51732 m!544077))

(declare-fun m!544079 () Bool)

(assert (=> start!51732 m!544079))

(declare-fun m!544081 () Bool)

(assert (=> b!565510 m!544081))

(declare-fun m!544083 () Bool)

(assert (=> b!565508 m!544083))

(declare-fun m!544085 () Bool)

(assert (=> b!565517 m!544085))

(declare-fun m!544087 () Bool)

(assert (=> b!565515 m!544087))

(declare-fun m!544089 () Bool)

(assert (=> b!565515 m!544089))

(assert (=> b!565509 m!544059))

(assert (=> b!565509 m!544059))

(declare-fun m!544091 () Bool)

(assert (=> b!565509 m!544091))

(push 1)

