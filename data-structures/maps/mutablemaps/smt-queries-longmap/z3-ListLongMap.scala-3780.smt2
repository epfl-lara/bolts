; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51754 () Bool)

(assert start!51754)

(declare-fun b!565838 () Bool)

(declare-fun res!356958 () Bool)

(declare-fun e!325692 () Bool)

(assert (=> b!565838 (=> (not res!356958) (not e!325692))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35516 0))(
  ( (array!35517 (arr!17053 (Array (_ BitVec 32) (_ BitVec 64))) (size!17417 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35516)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!565838 (= res!356958 (and (= (size!17417 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17417 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17417 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!356964 () Bool)

(assert (=> start!51754 (=> (not res!356964) (not e!325692))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51754 (= res!356964 (validMask!0 mask!3119))))

(assert (=> start!51754 e!325692))

(assert (=> start!51754 true))

(declare-fun array_inv!12827 (array!35516) Bool)

(assert (=> start!51754 (array_inv!12827 a!3118)))

(declare-fun b!565839 () Bool)

(declare-fun res!356960 () Bool)

(assert (=> b!565839 (=> (not res!356960) (not e!325692))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565839 (= res!356960 (validKeyInArray!0 k0!1914))))

(declare-fun b!565840 () Bool)

(declare-fun e!325693 () Bool)

(assert (=> b!565840 (= e!325692 e!325693)))

(declare-fun res!356965 () Bool)

(assert (=> b!565840 (=> (not res!356965) (not e!325693))))

(declare-datatypes ((SeekEntryResult!5509 0))(
  ( (MissingZero!5509 (index!24263 (_ BitVec 32))) (Found!5509 (index!24264 (_ BitVec 32))) (Intermediate!5509 (undefined!6321 Bool) (index!24265 (_ BitVec 32)) (x!53157 (_ BitVec 32))) (Undefined!5509) (MissingVacant!5509 (index!24266 (_ BitVec 32))) )
))
(declare-fun lt!257969 () SeekEntryResult!5509)

(assert (=> b!565840 (= res!356965 (or (= lt!257969 (MissingZero!5509 i!1132)) (= lt!257969 (MissingVacant!5509 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35516 (_ BitVec 32)) SeekEntryResult!5509)

(assert (=> b!565840 (= lt!257969 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!565841 () Bool)

(declare-fun res!356966 () Bool)

(assert (=> b!565841 (=> (not res!356966) (not e!325692))))

(assert (=> b!565841 (= res!356966 (validKeyInArray!0 (select (arr!17053 a!3118) j!142)))))

(declare-fun b!565842 () Bool)

(assert (=> b!565842 (= e!325693 (not true))))

(declare-fun e!325691 () Bool)

(assert (=> b!565842 e!325691))

(declare-fun res!356961 () Bool)

(assert (=> b!565842 (=> (not res!356961) (not e!325691))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35516 (_ BitVec 32)) Bool)

(assert (=> b!565842 (= res!356961 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17720 0))(
  ( (Unit!17721) )
))
(declare-fun lt!257968 () Unit!17720)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35516 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17720)

(assert (=> b!565842 (= lt!257968 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!565843 () Bool)

(assert (=> b!565843 (= e!325691 (= (seekEntryOrOpen!0 (select (arr!17053 a!3118) j!142) a!3118 mask!3119) (Found!5509 j!142)))))

(declare-fun b!565844 () Bool)

(declare-fun res!356959 () Bool)

(assert (=> b!565844 (=> (not res!356959) (not e!325693))))

(declare-datatypes ((List!11186 0))(
  ( (Nil!11183) (Cons!11182 (h!12188 (_ BitVec 64)) (t!17422 List!11186)) )
))
(declare-fun arrayNoDuplicates!0 (array!35516 (_ BitVec 32) List!11186) Bool)

(assert (=> b!565844 (= res!356959 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11183))))

(declare-fun b!565845 () Bool)

(declare-fun res!356962 () Bool)

(assert (=> b!565845 (=> (not res!356962) (not e!325692))))

(declare-fun arrayContainsKey!0 (array!35516 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565845 (= res!356962 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!565846 () Bool)

(declare-fun res!356957 () Bool)

(assert (=> b!565846 (=> (not res!356957) (not e!325693))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35516 (_ BitVec 32)) SeekEntryResult!5509)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565846 (= res!356957 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17053 a!3118) j!142) mask!3119) (select (arr!17053 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17053 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17053 a!3118) i!1132 k0!1914) j!142) (array!35517 (store (arr!17053 a!3118) i!1132 k0!1914) (size!17417 a!3118)) mask!3119)))))

(declare-fun b!565847 () Bool)

(declare-fun res!356963 () Bool)

(assert (=> b!565847 (=> (not res!356963) (not e!325693))))

(assert (=> b!565847 (= res!356963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!51754 res!356964) b!565838))

(assert (= (and b!565838 res!356958) b!565841))

(assert (= (and b!565841 res!356966) b!565839))

(assert (= (and b!565839 res!356960) b!565845))

(assert (= (and b!565845 res!356962) b!565840))

(assert (= (and b!565840 res!356965) b!565847))

(assert (= (and b!565847 res!356963) b!565844))

(assert (= (and b!565844 res!356959) b!565846))

(assert (= (and b!565846 res!356957) b!565842))

(assert (= (and b!565842 res!356961) b!565843))

(declare-fun m!544453 () Bool)

(assert (=> b!565840 m!544453))

(declare-fun m!544455 () Bool)

(assert (=> b!565842 m!544455))

(declare-fun m!544457 () Bool)

(assert (=> b!565842 m!544457))

(declare-fun m!544459 () Bool)

(assert (=> b!565846 m!544459))

(declare-fun m!544461 () Bool)

(assert (=> b!565846 m!544461))

(assert (=> b!565846 m!544459))

(declare-fun m!544463 () Bool)

(assert (=> b!565846 m!544463))

(declare-fun m!544465 () Bool)

(assert (=> b!565846 m!544465))

(assert (=> b!565846 m!544463))

(declare-fun m!544467 () Bool)

(assert (=> b!565846 m!544467))

(assert (=> b!565846 m!544461))

(assert (=> b!565846 m!544459))

(declare-fun m!544469 () Bool)

(assert (=> b!565846 m!544469))

(declare-fun m!544471 () Bool)

(assert (=> b!565846 m!544471))

(assert (=> b!565846 m!544463))

(assert (=> b!565846 m!544465))

(declare-fun m!544473 () Bool)

(assert (=> b!565845 m!544473))

(declare-fun m!544475 () Bool)

(assert (=> b!565847 m!544475))

(assert (=> b!565843 m!544459))

(assert (=> b!565843 m!544459))

(declare-fun m!544477 () Bool)

(assert (=> b!565843 m!544477))

(declare-fun m!544479 () Bool)

(assert (=> b!565839 m!544479))

(declare-fun m!544481 () Bool)

(assert (=> start!51754 m!544481))

(declare-fun m!544483 () Bool)

(assert (=> start!51754 m!544483))

(assert (=> b!565841 m!544459))

(assert (=> b!565841 m!544459))

(declare-fun m!544485 () Bool)

(assert (=> b!565841 m!544485))

(declare-fun m!544487 () Bool)

(assert (=> b!565844 m!544487))

(check-sat (not b!565843) (not b!565842) (not start!51754) (not b!565841) (not b!565840) (not b!565847) (not b!565846) (not b!565845) (not b!565839) (not b!565844))
(check-sat)
