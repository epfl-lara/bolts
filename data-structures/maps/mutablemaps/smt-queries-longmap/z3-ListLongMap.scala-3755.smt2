; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51544 () Bool)

(assert start!51544)

(declare-fun b!563540 () Bool)

(declare-fun e!324710 () Bool)

(declare-fun e!324711 () Bool)

(assert (=> b!563540 (= e!324710 e!324711)))

(declare-fun res!354849 () Bool)

(assert (=> b!563540 (=> (not res!354849) (not e!324711))))

(declare-fun lt!257278 () (_ BitVec 32))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!35363 0))(
  ( (array!35364 (arr!16978 (Array (_ BitVec 32) (_ BitVec 64))) (size!17342 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35363)

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5434 0))(
  ( (MissingZero!5434 (index!23963 (_ BitVec 32))) (Found!5434 (index!23964 (_ BitVec 32))) (Intermediate!5434 (undefined!6246 Bool) (index!23965 (_ BitVec 32)) (x!52876 (_ BitVec 32))) (Undefined!5434) (MissingVacant!5434 (index!23966 (_ BitVec 32))) )
))
(declare-fun lt!257277 () SeekEntryResult!5434)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35363 (_ BitVec 32)) SeekEntryResult!5434)

(assert (=> b!563540 (= res!354849 (= lt!257277 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257278 (select (store (arr!16978 a!3118) i!1132 k0!1914) j!142) (array!35364 (store (arr!16978 a!3118) i!1132 k0!1914) (size!17342 a!3118)) mask!3119)))))

(declare-fun lt!257275 () (_ BitVec 32))

(assert (=> b!563540 (= lt!257277 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257275 (select (arr!16978 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563540 (= lt!257278 (toIndex!0 (select (store (arr!16978 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!563540 (= lt!257275 (toIndex!0 (select (arr!16978 a!3118) j!142) mask!3119))))

(declare-fun b!563541 () Bool)

(declare-fun res!354846 () Bool)

(declare-fun e!324708 () Bool)

(assert (=> b!563541 (=> (not res!354846) (not e!324708))))

(assert (=> b!563541 (= res!354846 (and (= (size!17342 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17342 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17342 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563542 () Bool)

(assert (=> b!563542 (= e!324708 e!324710)))

(declare-fun res!354842 () Bool)

(assert (=> b!563542 (=> (not res!354842) (not e!324710))))

(declare-fun lt!257279 () SeekEntryResult!5434)

(assert (=> b!563542 (= res!354842 (or (= lt!257279 (MissingZero!5434 i!1132)) (= lt!257279 (MissingVacant!5434 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35363 (_ BitVec 32)) SeekEntryResult!5434)

(assert (=> b!563542 (= lt!257279 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!563543 () Bool)

(declare-fun res!354845 () Bool)

(assert (=> b!563543 (=> (not res!354845) (not e!324710))))

(declare-datatypes ((List!11111 0))(
  ( (Nil!11108) (Cons!11107 (h!12110 (_ BitVec 64)) (t!17347 List!11111)) )
))
(declare-fun arrayNoDuplicates!0 (array!35363 (_ BitVec 32) List!11111) Bool)

(assert (=> b!563543 (= res!354845 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11108))))

(declare-fun b!563544 () Bool)

(declare-fun res!354850 () Bool)

(assert (=> b!563544 (=> (not res!354850) (not e!324710))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35363 (_ BitVec 32)) Bool)

(assert (=> b!563544 (= res!354850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563545 () Bool)

(declare-fun res!354843 () Bool)

(assert (=> b!563545 (=> (not res!354843) (not e!324708))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563545 (= res!354843 (validKeyInArray!0 k0!1914))))

(declare-fun b!563546 () Bool)

(declare-fun res!354847 () Bool)

(assert (=> b!563546 (=> (not res!354847) (not e!324708))))

(assert (=> b!563546 (= res!354847 (validKeyInArray!0 (select (arr!16978 a!3118) j!142)))))

(declare-fun res!354851 () Bool)

(assert (=> start!51544 (=> (not res!354851) (not e!324708))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51544 (= res!354851 (validMask!0 mask!3119))))

(assert (=> start!51544 e!324708))

(assert (=> start!51544 true))

(declare-fun array_inv!12752 (array!35363) Bool)

(assert (=> start!51544 (array_inv!12752 a!3118)))

(declare-fun b!563547 () Bool)

(declare-fun res!354848 () Bool)

(assert (=> b!563547 (=> (not res!354848) (not e!324708))))

(declare-fun arrayContainsKey!0 (array!35363 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563547 (= res!354848 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563548 () Bool)

(declare-fun lt!257276 () Bool)

(assert (=> b!563548 (= e!324711 (not (or (and (not lt!257276) (undefined!6246 lt!257277)) (and (not lt!257276) (not (undefined!6246 lt!257277))) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(get-info :version)

(assert (=> b!563548 (= lt!257276 (not ((_ is Intermediate!5434) lt!257277)))))

(declare-fun e!324709 () Bool)

(assert (=> b!563548 e!324709))

(declare-fun res!354844 () Bool)

(assert (=> b!563548 (=> (not res!354844) (not e!324709))))

(assert (=> b!563548 (= res!354844 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17642 0))(
  ( (Unit!17643) )
))
(declare-fun lt!257274 () Unit!17642)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35363 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17642)

(assert (=> b!563548 (= lt!257274 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563549 () Bool)

(assert (=> b!563549 (= e!324709 (= (seekEntryOrOpen!0 (select (arr!16978 a!3118) j!142) a!3118 mask!3119) (Found!5434 j!142)))))

(assert (= (and start!51544 res!354851) b!563541))

(assert (= (and b!563541 res!354846) b!563546))

(assert (= (and b!563546 res!354847) b!563545))

(assert (= (and b!563545 res!354843) b!563547))

(assert (= (and b!563547 res!354848) b!563542))

(assert (= (and b!563542 res!354842) b!563544))

(assert (= (and b!563544 res!354850) b!563543))

(assert (= (and b!563543 res!354845) b!563540))

(assert (= (and b!563540 res!354849) b!563548))

(assert (= (and b!563548 res!354844) b!563549))

(declare-fun m!541981 () Bool)

(assert (=> start!51544 m!541981))

(declare-fun m!541983 () Bool)

(assert (=> start!51544 m!541983))

(declare-fun m!541985 () Bool)

(assert (=> b!563546 m!541985))

(assert (=> b!563546 m!541985))

(declare-fun m!541987 () Bool)

(assert (=> b!563546 m!541987))

(assert (=> b!563549 m!541985))

(assert (=> b!563549 m!541985))

(declare-fun m!541989 () Bool)

(assert (=> b!563549 m!541989))

(declare-fun m!541991 () Bool)

(assert (=> b!563543 m!541991))

(declare-fun m!541993 () Bool)

(assert (=> b!563547 m!541993))

(assert (=> b!563540 m!541985))

(declare-fun m!541995 () Bool)

(assert (=> b!563540 m!541995))

(declare-fun m!541997 () Bool)

(assert (=> b!563540 m!541997))

(declare-fun m!541999 () Bool)

(assert (=> b!563540 m!541999))

(assert (=> b!563540 m!541985))

(declare-fun m!542001 () Bool)

(assert (=> b!563540 m!542001))

(assert (=> b!563540 m!541997))

(declare-fun m!542003 () Bool)

(assert (=> b!563540 m!542003))

(assert (=> b!563540 m!541985))

(assert (=> b!563540 m!541997))

(declare-fun m!542005 () Bool)

(assert (=> b!563540 m!542005))

(declare-fun m!542007 () Bool)

(assert (=> b!563548 m!542007))

(declare-fun m!542009 () Bool)

(assert (=> b!563548 m!542009))

(declare-fun m!542011 () Bool)

(assert (=> b!563544 m!542011))

(declare-fun m!542013 () Bool)

(assert (=> b!563542 m!542013))

(declare-fun m!542015 () Bool)

(assert (=> b!563545 m!542015))

(check-sat (not b!563547) (not b!563540) (not b!563548) (not b!563546) (not b!563543) (not b!563545) (not b!563544) (not b!563542) (not start!51544) (not b!563549))
(check-sat)
