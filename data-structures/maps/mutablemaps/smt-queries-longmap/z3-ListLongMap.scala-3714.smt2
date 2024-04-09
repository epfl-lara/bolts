; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51100 () Bool)

(assert start!51100)

(declare-fun b!558024 () Bool)

(declare-fun res!350042 () Bool)

(declare-fun e!321470 () Bool)

(assert (=> b!558024 (=> (not res!350042) (not e!321470))))

(declare-datatypes ((array!35108 0))(
  ( (array!35109 (arr!16855 (Array (_ BitVec 32) (_ BitVec 64))) (size!17219 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35108)

(declare-datatypes ((List!10988 0))(
  ( (Nil!10985) (Cons!10984 (h!11978 (_ BitVec 64)) (t!17224 List!10988)) )
))
(declare-fun arrayNoDuplicates!0 (array!35108 (_ BitVec 32) List!10988) Bool)

(assert (=> b!558024 (= res!350042 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10985))))

(declare-fun b!558025 () Bool)

(declare-fun res!350045 () Bool)

(declare-fun e!321473 () Bool)

(assert (=> b!558025 (=> (not res!350045) (not e!321473))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!558025 (= res!350045 (validKeyInArray!0 (select (arr!16855 a!3118) j!142)))))

(declare-fun b!558026 () Bool)

(declare-fun e!321474 () Bool)

(assert (=> b!558026 (= e!321470 e!321474)))

(declare-fun res!350037 () Bool)

(assert (=> b!558026 (=> (not res!350037) (not e!321474))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun lt!253620 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5311 0))(
  ( (MissingZero!5311 (index!23471 (_ BitVec 32))) (Found!5311 (index!23472 (_ BitVec 32))) (Intermediate!5311 (undefined!6123 Bool) (index!23473 (_ BitVec 32)) (x!52398 (_ BitVec 32))) (Undefined!5311) (MissingVacant!5311 (index!23474 (_ BitVec 32))) )
))
(declare-fun lt!253622 () SeekEntryResult!5311)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35108 (_ BitVec 32)) SeekEntryResult!5311)

(assert (=> b!558026 (= res!350037 (= lt!253622 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253620 (select (store (arr!16855 a!3118) i!1132 k0!1914) j!142) (array!35109 (store (arr!16855 a!3118) i!1132 k0!1914) (size!17219 a!3118)) mask!3119)))))

(declare-fun lt!253623 () (_ BitVec 32))

(assert (=> b!558026 (= lt!253622 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253623 (select (arr!16855 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!558026 (= lt!253620 (toIndex!0 (select (store (arr!16855 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!558026 (= lt!253623 (toIndex!0 (select (arr!16855 a!3118) j!142) mask!3119))))

(declare-fun b!558027 () Bool)

(declare-fun res!350041 () Bool)

(assert (=> b!558027 (=> (not res!350041) (not e!321473))))

(assert (=> b!558027 (= res!350041 (and (= (size!17219 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17219 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17219 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!558028 () Bool)

(declare-fun res!350046 () Bool)

(assert (=> b!558028 (=> (not res!350046) (not e!321473))))

(declare-fun arrayContainsKey!0 (array!35108 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!558028 (= res!350046 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!558029 () Bool)

(assert (=> b!558029 (= e!321473 e!321470)))

(declare-fun res!350038 () Bool)

(assert (=> b!558029 (=> (not res!350038) (not e!321470))))

(declare-fun lt!253625 () SeekEntryResult!5311)

(assert (=> b!558029 (= res!350038 (or (= lt!253625 (MissingZero!5311 i!1132)) (= lt!253625 (MissingVacant!5311 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35108 (_ BitVec 32)) SeekEntryResult!5311)

(assert (=> b!558029 (= lt!253625 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!558030 () Bool)

(declare-fun e!321472 () Bool)

(declare-fun e!321469 () Bool)

(assert (=> b!558030 (= e!321472 e!321469)))

(declare-fun res!350040 () Bool)

(assert (=> b!558030 (=> res!350040 e!321469)))

(get-info :version)

(assert (=> b!558030 (= res!350040 (or (undefined!6123 lt!253622) (not ((_ is Intermediate!5311) lt!253622)) (= (select (arr!16855 a!3118) (index!23473 lt!253622)) (select (arr!16855 a!3118) j!142)) (= (select (arr!16855 a!3118) (index!23473 lt!253622)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!558031 () Bool)

(declare-fun lt!253624 () SeekEntryResult!5311)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35108 (_ BitVec 32)) SeekEntryResult!5311)

(assert (=> b!558031 (= e!321469 (= lt!253624 (seekKeyOrZeroReturnVacant!0 (x!52398 lt!253622) (index!23473 lt!253622) (index!23473 lt!253622) (select (arr!16855 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun res!350043 () Bool)

(assert (=> start!51100 (=> (not res!350043) (not e!321473))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51100 (= res!350043 (validMask!0 mask!3119))))

(assert (=> start!51100 e!321473))

(assert (=> start!51100 true))

(declare-fun array_inv!12629 (array!35108) Bool)

(assert (=> start!51100 (array_inv!12629 a!3118)))

(declare-fun b!558032 () Bool)

(declare-fun res!350039 () Bool)

(assert (=> b!558032 (=> (not res!350039) (not e!321473))))

(assert (=> b!558032 (= res!350039 (validKeyInArray!0 k0!1914))))

(declare-fun b!558033 () Bool)

(declare-fun e!321475 () Bool)

(assert (=> b!558033 (= e!321474 (not e!321475))))

(declare-fun res!350044 () Bool)

(assert (=> b!558033 (=> res!350044 e!321475)))

(assert (=> b!558033 (= res!350044 (or (undefined!6123 lt!253622) (not ((_ is Intermediate!5311) lt!253622)) (= (select (arr!16855 a!3118) (index!23473 lt!253622)) (select (arr!16855 a!3118) j!142)) (= (select (arr!16855 a!3118) (index!23473 lt!253622)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000)))))

(assert (=> b!558033 e!321472))

(declare-fun res!350048 () Bool)

(assert (=> b!558033 (=> (not res!350048) (not e!321472))))

(assert (=> b!558033 (= res!350048 (= lt!253624 (Found!5311 j!142)))))

(assert (=> b!558033 (= lt!253624 (seekEntryOrOpen!0 (select (arr!16855 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35108 (_ BitVec 32)) Bool)

(assert (=> b!558033 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17396 0))(
  ( (Unit!17397) )
))
(declare-fun lt!253621 () Unit!17396)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35108 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17396)

(assert (=> b!558033 (= lt!253621 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!558034 () Bool)

(assert (=> b!558034 (= e!321475 (validKeyInArray!0 (select (store (arr!16855 a!3118) i!1132 k0!1914) j!142)))))

(declare-fun b!558035 () Bool)

(declare-fun res!350047 () Bool)

(assert (=> b!558035 (=> (not res!350047) (not e!321470))))

(assert (=> b!558035 (= res!350047 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!51100 res!350043) b!558027))

(assert (= (and b!558027 res!350041) b!558025))

(assert (= (and b!558025 res!350045) b!558032))

(assert (= (and b!558032 res!350039) b!558028))

(assert (= (and b!558028 res!350046) b!558029))

(assert (= (and b!558029 res!350038) b!558035))

(assert (= (and b!558035 res!350047) b!558024))

(assert (= (and b!558024 res!350042) b!558026))

(assert (= (and b!558026 res!350037) b!558033))

(assert (= (and b!558033 res!350048) b!558030))

(assert (= (and b!558030 (not res!350040)) b!558031))

(assert (= (and b!558033 (not res!350044)) b!558034))

(declare-fun m!535993 () Bool)

(assert (=> b!558028 m!535993))

(declare-fun m!535995 () Bool)

(assert (=> b!558032 m!535995))

(declare-fun m!535997 () Bool)

(assert (=> b!558029 m!535997))

(declare-fun m!535999 () Bool)

(assert (=> b!558026 m!535999))

(declare-fun m!536001 () Bool)

(assert (=> b!558026 m!536001))

(assert (=> b!558026 m!535999))

(declare-fun m!536003 () Bool)

(assert (=> b!558026 m!536003))

(assert (=> b!558026 m!535999))

(declare-fun m!536005 () Bool)

(assert (=> b!558026 m!536005))

(assert (=> b!558026 m!536003))

(declare-fun m!536007 () Bool)

(assert (=> b!558026 m!536007))

(declare-fun m!536009 () Bool)

(assert (=> b!558026 m!536009))

(assert (=> b!558026 m!536003))

(declare-fun m!536011 () Bool)

(assert (=> b!558026 m!536011))

(declare-fun m!536013 () Bool)

(assert (=> start!51100 m!536013))

(declare-fun m!536015 () Bool)

(assert (=> start!51100 m!536015))

(declare-fun m!536017 () Bool)

(assert (=> b!558035 m!536017))

(declare-fun m!536019 () Bool)

(assert (=> b!558033 m!536019))

(assert (=> b!558033 m!535999))

(declare-fun m!536021 () Bool)

(assert (=> b!558033 m!536021))

(declare-fun m!536023 () Bool)

(assert (=> b!558033 m!536023))

(assert (=> b!558033 m!535999))

(declare-fun m!536025 () Bool)

(assert (=> b!558033 m!536025))

(assert (=> b!558025 m!535999))

(assert (=> b!558025 m!535999))

(declare-fun m!536027 () Bool)

(assert (=> b!558025 m!536027))

(declare-fun m!536029 () Bool)

(assert (=> b!558024 m!536029))

(assert (=> b!558031 m!535999))

(assert (=> b!558031 m!535999))

(declare-fun m!536031 () Bool)

(assert (=> b!558031 m!536031))

(assert (=> b!558034 m!536009))

(assert (=> b!558034 m!536003))

(assert (=> b!558034 m!536003))

(declare-fun m!536033 () Bool)

(assert (=> b!558034 m!536033))

(assert (=> b!558030 m!536019))

(assert (=> b!558030 m!535999))

(check-sat (not b!558035) (not b!558033) (not b!558029) (not b!558028) (not b!558026) (not b!558025) (not start!51100) (not b!558031) (not b!558034) (not b!558032) (not b!558024))
(check-sat)
