; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51730 () Bool)

(assert start!51730)

(declare-fun b!565478 () Bool)

(declare-fun res!356600 () Bool)

(declare-fun e!325549 () Bool)

(assert (=> b!565478 (=> (not res!356600) (not e!325549))))

(declare-datatypes ((array!35492 0))(
  ( (array!35493 (arr!17041 (Array (_ BitVec 32) (_ BitVec 64))) (size!17405 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35492)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565478 (= res!356600 (validKeyInArray!0 (select (arr!17041 a!3118) j!142)))))

(declare-fun b!565479 () Bool)

(declare-fun res!356602 () Bool)

(assert (=> b!565479 (=> (not res!356602) (not e!325549))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!565479 (= res!356602 (and (= (size!17405 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17405 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17405 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!565480 () Bool)

(declare-fun res!356605 () Bool)

(assert (=> b!565480 (=> (not res!356605) (not e!325549))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35492 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565480 (= res!356605 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!565481 () Bool)

(declare-fun res!356599 () Bool)

(declare-fun e!325547 () Bool)

(assert (=> b!565481 (=> (not res!356599) (not e!325547))))

(declare-datatypes ((SeekEntryResult!5497 0))(
  ( (MissingZero!5497 (index!24215 (_ BitVec 32))) (Found!5497 (index!24216 (_ BitVec 32))) (Intermediate!5497 (undefined!6309 Bool) (index!24217 (_ BitVec 32)) (x!53113 (_ BitVec 32))) (Undefined!5497) (MissingVacant!5497 (index!24218 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35492 (_ BitVec 32)) SeekEntryResult!5497)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565481 (= res!356599 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17041 a!3118) j!142) mask!3119) (select (arr!17041 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17041 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17041 a!3118) i!1132 k0!1914) j!142) (array!35493 (store (arr!17041 a!3118) i!1132 k0!1914) (size!17405 a!3118)) mask!3119)))))

(declare-fun b!565482 () Bool)

(assert (=> b!565482 (= e!325549 e!325547)))

(declare-fun res!356601 () Bool)

(assert (=> b!565482 (=> (not res!356601) (not e!325547))))

(declare-fun lt!257896 () SeekEntryResult!5497)

(assert (=> b!565482 (= res!356601 (or (= lt!257896 (MissingZero!5497 i!1132)) (= lt!257896 (MissingVacant!5497 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35492 (_ BitVec 32)) SeekEntryResult!5497)

(assert (=> b!565482 (= lt!257896 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!565483 () Bool)

(declare-fun e!325546 () Bool)

(assert (=> b!565483 (= e!325546 (= (seekEntryOrOpen!0 (select (arr!17041 a!3118) j!142) a!3118 mask!3119) (Found!5497 j!142)))))

(declare-fun b!565484 () Bool)

(declare-fun res!356604 () Bool)

(assert (=> b!565484 (=> (not res!356604) (not e!325549))))

(assert (=> b!565484 (= res!356604 (validKeyInArray!0 k0!1914))))

(declare-fun b!565485 () Bool)

(assert (=> b!565485 (= e!325547 (not true))))

(assert (=> b!565485 e!325546))

(declare-fun res!356597 () Bool)

(assert (=> b!565485 (=> (not res!356597) (not e!325546))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35492 (_ BitVec 32)) Bool)

(assert (=> b!565485 (= res!356597 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17696 0))(
  ( (Unit!17697) )
))
(declare-fun lt!257897 () Unit!17696)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35492 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17696)

(assert (=> b!565485 (= lt!257897 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!565486 () Bool)

(declare-fun res!356606 () Bool)

(assert (=> b!565486 (=> (not res!356606) (not e!325547))))

(declare-datatypes ((List!11174 0))(
  ( (Nil!11171) (Cons!11170 (h!12176 (_ BitVec 64)) (t!17410 List!11174)) )
))
(declare-fun arrayNoDuplicates!0 (array!35492 (_ BitVec 32) List!11174) Bool)

(assert (=> b!565486 (= res!356606 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11171))))

(declare-fun b!565487 () Bool)

(declare-fun res!356603 () Bool)

(assert (=> b!565487 (=> (not res!356603) (not e!325547))))

(assert (=> b!565487 (= res!356603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!356598 () Bool)

(assert (=> start!51730 (=> (not res!356598) (not e!325549))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51730 (= res!356598 (validMask!0 mask!3119))))

(assert (=> start!51730 e!325549))

(assert (=> start!51730 true))

(declare-fun array_inv!12815 (array!35492) Bool)

(assert (=> start!51730 (array_inv!12815 a!3118)))

(assert (= (and start!51730 res!356598) b!565479))

(assert (= (and b!565479 res!356602) b!565478))

(assert (= (and b!565478 res!356600) b!565484))

(assert (= (and b!565484 res!356604) b!565480))

(assert (= (and b!565480 res!356605) b!565482))

(assert (= (and b!565482 res!356601) b!565487))

(assert (= (and b!565487 res!356603) b!565486))

(assert (= (and b!565486 res!356606) b!565481))

(assert (= (and b!565481 res!356599) b!565485))

(assert (= (and b!565485 res!356597) b!565483))

(declare-fun m!544021 () Bool)

(assert (=> b!565482 m!544021))

(declare-fun m!544023 () Bool)

(assert (=> b!565485 m!544023))

(declare-fun m!544025 () Bool)

(assert (=> b!565485 m!544025))

(declare-fun m!544027 () Bool)

(assert (=> b!565484 m!544027))

(declare-fun m!544029 () Bool)

(assert (=> b!565483 m!544029))

(assert (=> b!565483 m!544029))

(declare-fun m!544031 () Bool)

(assert (=> b!565483 m!544031))

(declare-fun m!544033 () Bool)

(assert (=> b!565487 m!544033))

(declare-fun m!544035 () Bool)

(assert (=> b!565480 m!544035))

(assert (=> b!565478 m!544029))

(assert (=> b!565478 m!544029))

(declare-fun m!544037 () Bool)

(assert (=> b!565478 m!544037))

(assert (=> b!565481 m!544029))

(declare-fun m!544039 () Bool)

(assert (=> b!565481 m!544039))

(assert (=> b!565481 m!544029))

(declare-fun m!544041 () Bool)

(assert (=> b!565481 m!544041))

(declare-fun m!544043 () Bool)

(assert (=> b!565481 m!544043))

(assert (=> b!565481 m!544041))

(declare-fun m!544045 () Bool)

(assert (=> b!565481 m!544045))

(assert (=> b!565481 m!544039))

(assert (=> b!565481 m!544029))

(declare-fun m!544047 () Bool)

(assert (=> b!565481 m!544047))

(declare-fun m!544049 () Bool)

(assert (=> b!565481 m!544049))

(assert (=> b!565481 m!544041))

(assert (=> b!565481 m!544043))

(declare-fun m!544051 () Bool)

(assert (=> start!51730 m!544051))

(declare-fun m!544053 () Bool)

(assert (=> start!51730 m!544053))

(declare-fun m!544055 () Bool)

(assert (=> b!565486 m!544055))

(check-sat (not start!51730) (not b!565484) (not b!565482) (not b!565483) (not b!565487) (not b!565485) (not b!565480) (not b!565478) (not b!565481) (not b!565486))
(check-sat)
