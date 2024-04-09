; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51640 () Bool)

(assert start!51640)

(declare-fun b!564750 () Bool)

(declare-fun res!356059 () Bool)

(declare-fun e!325193 () Bool)

(assert (=> b!564750 (=> (not res!356059) (not e!325193))))

(declare-datatypes ((array!35459 0))(
  ( (array!35460 (arr!17026 (Array (_ BitVec 32) (_ BitVec 64))) (size!17390 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35459)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564750 (= res!356059 (validKeyInArray!0 (select (arr!17026 a!3118) j!142)))))

(declare-fun b!564751 () Bool)

(declare-fun res!356053 () Bool)

(assert (=> b!564751 (=> (not res!356053) (not e!325193))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!564751 (= res!356053 (validKeyInArray!0 k0!1914))))

(declare-fun b!564752 () Bool)

(declare-fun res!356058 () Bool)

(declare-fun e!325195 () Bool)

(assert (=> b!564752 (=> (not res!356058) (not e!325195))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5482 0))(
  ( (MissingZero!5482 (index!24155 (_ BitVec 32))) (Found!5482 (index!24156 (_ BitVec 32))) (Intermediate!5482 (undefined!6294 Bool) (index!24157 (_ BitVec 32)) (x!53052 (_ BitVec 32))) (Undefined!5482) (MissingVacant!5482 (index!24158 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35459 (_ BitVec 32)) SeekEntryResult!5482)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564752 (= res!356058 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17026 a!3118) j!142) mask!3119) (select (arr!17026 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17026 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17026 a!3118) i!1132 k0!1914) j!142) (array!35460 (store (arr!17026 a!3118) i!1132 k0!1914) (size!17390 a!3118)) mask!3119)))))

(declare-fun b!564753 () Bool)

(declare-fun res!356056 () Bool)

(assert (=> b!564753 (=> (not res!356056) (not e!325195))))

(declare-datatypes ((List!11159 0))(
  ( (Nil!11156) (Cons!11155 (h!12158 (_ BitVec 64)) (t!17395 List!11159)) )
))
(declare-fun arrayNoDuplicates!0 (array!35459 (_ BitVec 32) List!11159) Bool)

(assert (=> b!564753 (= res!356056 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11156))))

(declare-fun b!564754 () Bool)

(assert (=> b!564754 (= e!325193 e!325195)))

(declare-fun res!356057 () Bool)

(assert (=> b!564754 (=> (not res!356057) (not e!325195))))

(declare-fun lt!257678 () SeekEntryResult!5482)

(assert (=> b!564754 (= res!356057 (or (= lt!257678 (MissingZero!5482 i!1132)) (= lt!257678 (MissingVacant!5482 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35459 (_ BitVec 32)) SeekEntryResult!5482)

(assert (=> b!564754 (= lt!257678 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!564755 () Bool)

(declare-fun res!356060 () Bool)

(assert (=> b!564755 (=> (not res!356060) (not e!325193))))

(assert (=> b!564755 (= res!356060 (and (= (size!17390 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17390 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17390 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!356055 () Bool)

(assert (=> start!51640 (=> (not res!356055) (not e!325193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51640 (= res!356055 (validMask!0 mask!3119))))

(assert (=> start!51640 e!325193))

(assert (=> start!51640 true))

(declare-fun array_inv!12800 (array!35459) Bool)

(assert (=> start!51640 (array_inv!12800 a!3118)))

(declare-fun b!564756 () Bool)

(declare-fun res!356054 () Bool)

(assert (=> b!564756 (=> (not res!356054) (not e!325193))))

(declare-fun arrayContainsKey!0 (array!35459 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564756 (= res!356054 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564757 () Bool)

(declare-fun res!356052 () Bool)

(assert (=> b!564757 (=> (not res!356052) (not e!325195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35459 (_ BitVec 32)) Bool)

(assert (=> b!564757 (= res!356052 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564758 () Bool)

(assert (=> b!564758 (= e!325195 (not true))))

(assert (=> b!564758 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17666 0))(
  ( (Unit!17667) )
))
(declare-fun lt!257677 () Unit!17666)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35459 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17666)

(assert (=> b!564758 (= lt!257677 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!51640 res!356055) b!564755))

(assert (= (and b!564755 res!356060) b!564750))

(assert (= (and b!564750 res!356059) b!564751))

(assert (= (and b!564751 res!356053) b!564756))

(assert (= (and b!564756 res!356054) b!564754))

(assert (= (and b!564754 res!356057) b!564757))

(assert (= (and b!564757 res!356052) b!564753))

(assert (= (and b!564753 res!356056) b!564752))

(assert (= (and b!564752 res!356058) b!564758))

(declare-fun m!543287 () Bool)

(assert (=> start!51640 m!543287))

(declare-fun m!543289 () Bool)

(assert (=> start!51640 m!543289))

(declare-fun m!543291 () Bool)

(assert (=> b!564750 m!543291))

(assert (=> b!564750 m!543291))

(declare-fun m!543293 () Bool)

(assert (=> b!564750 m!543293))

(declare-fun m!543295 () Bool)

(assert (=> b!564751 m!543295))

(declare-fun m!543297 () Bool)

(assert (=> b!564757 m!543297))

(declare-fun m!543299 () Bool)

(assert (=> b!564753 m!543299))

(declare-fun m!543301 () Bool)

(assert (=> b!564756 m!543301))

(assert (=> b!564752 m!543291))

(declare-fun m!543303 () Bool)

(assert (=> b!564752 m!543303))

(assert (=> b!564752 m!543291))

(declare-fun m!543305 () Bool)

(assert (=> b!564752 m!543305))

(declare-fun m!543307 () Bool)

(assert (=> b!564752 m!543307))

(assert (=> b!564752 m!543305))

(declare-fun m!543309 () Bool)

(assert (=> b!564752 m!543309))

(assert (=> b!564752 m!543303))

(assert (=> b!564752 m!543291))

(declare-fun m!543311 () Bool)

(assert (=> b!564752 m!543311))

(declare-fun m!543313 () Bool)

(assert (=> b!564752 m!543313))

(assert (=> b!564752 m!543305))

(assert (=> b!564752 m!543307))

(declare-fun m!543315 () Bool)

(assert (=> b!564754 m!543315))

(declare-fun m!543317 () Bool)

(assert (=> b!564758 m!543317))

(declare-fun m!543319 () Bool)

(assert (=> b!564758 m!543319))

(check-sat (not b!564750) (not b!564756) (not b!564751) (not b!564753) (not b!564754) (not start!51640) (not b!564752) (not b!564757) (not b!564758))
(check-sat)
