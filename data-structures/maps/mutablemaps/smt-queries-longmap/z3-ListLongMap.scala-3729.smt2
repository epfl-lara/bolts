; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51388 () Bool)

(assert start!51388)

(declare-datatypes ((SeekEntryResult!5356 0))(
  ( (MissingZero!5356 (index!23651 (_ BitVec 32))) (Found!5356 (index!23652 (_ BitVec 32))) (Intermediate!5356 (undefined!6168 Bool) (index!23653 (_ BitVec 32)) (x!52590 (_ BitVec 32))) (Undefined!5356) (MissingVacant!5356 (index!23654 (_ BitVec 32))) )
))
(declare-fun lt!255110 () SeekEntryResult!5356)

(declare-fun b!560711 () Bool)

(declare-fun lt!255103 () (_ BitVec 64))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35207 0))(
  ( (array!35208 (arr!16900 (Array (_ BitVec 32) (_ BitVec 64))) (size!17264 (_ BitVec 32))) )
))
(declare-fun lt!255102 () array!35207)

(declare-fun e!323090 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35207 (_ BitVec 32)) SeekEntryResult!5356)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35207 (_ BitVec 32)) SeekEntryResult!5356)

(assert (=> b!560711 (= e!323090 (= (seekEntryOrOpen!0 lt!255103 lt!255102 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52590 lt!255110) (index!23653 lt!255110) (index!23653 lt!255110) lt!255103 lt!255102 mask!3119)))))

(declare-fun b!560712 () Bool)

(declare-fun res!352013 () Bool)

(declare-fun e!323088 () Bool)

(assert (=> b!560712 (=> (not res!352013) (not e!323088))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560712 (= res!352013 (validKeyInArray!0 k0!1914))))

(declare-fun b!560713 () Bool)

(declare-fun res!352019 () Bool)

(declare-fun e!323086 () Bool)

(assert (=> b!560713 (=> (not res!352019) (not e!323086))))

(declare-fun a!3118 () array!35207)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35207 (_ BitVec 32)) Bool)

(assert (=> b!560713 (= res!352019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560714 () Bool)

(declare-fun e!323085 () Bool)

(declare-fun e!323091 () Bool)

(assert (=> b!560714 (= e!323085 e!323091)))

(declare-fun res!352023 () Bool)

(assert (=> b!560714 (=> res!352023 e!323091)))

(get-info :version)

(assert (=> b!560714 (= res!352023 (or (undefined!6168 lt!255110) (not ((_ is Intermediate!5356) lt!255110))))))

(declare-fun res!352020 () Bool)

(assert (=> start!51388 (=> (not res!352020) (not e!323088))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51388 (= res!352020 (validMask!0 mask!3119))))

(assert (=> start!51388 e!323088))

(assert (=> start!51388 true))

(declare-fun array_inv!12674 (array!35207) Bool)

(assert (=> start!51388 (array_inv!12674 a!3118)))

(declare-fun b!560715 () Bool)

(declare-fun res!352016 () Bool)

(assert (=> b!560715 (=> (not res!352016) (not e!323088))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!560715 (= res!352016 (validKeyInArray!0 (select (arr!16900 a!3118) j!142)))))

(declare-fun b!560716 () Bool)

(declare-fun res!352017 () Bool)

(assert (=> b!560716 (=> (not res!352017) (not e!323088))))

(declare-fun arrayContainsKey!0 (array!35207 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560716 (= res!352017 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!560717 () Bool)

(declare-fun res!352025 () Bool)

(assert (=> b!560717 (=> (not res!352025) (not e!323088))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!560717 (= res!352025 (and (= (size!17264 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17264 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17264 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560718 () Bool)

(declare-fun e!323087 () Bool)

(assert (=> b!560718 (= e!323086 e!323087)))

(declare-fun res!352014 () Bool)

(assert (=> b!560718 (=> (not res!352014) (not e!323087))))

(declare-fun lt!255104 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35207 (_ BitVec 32)) SeekEntryResult!5356)

(assert (=> b!560718 (= res!352014 (= lt!255110 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255104 lt!255103 lt!255102 mask!3119)))))

(declare-fun lt!255106 () (_ BitVec 32))

(assert (=> b!560718 (= lt!255110 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255106 (select (arr!16900 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560718 (= lt!255104 (toIndex!0 lt!255103 mask!3119))))

(assert (=> b!560718 (= lt!255103 (select (store (arr!16900 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!560718 (= lt!255106 (toIndex!0 (select (arr!16900 a!3118) j!142) mask!3119))))

(assert (=> b!560718 (= lt!255102 (array!35208 (store (arr!16900 a!3118) i!1132 k0!1914) (size!17264 a!3118)))))

(declare-fun b!560719 () Bool)

(declare-fun e!323092 () Bool)

(assert (=> b!560719 (= e!323091 e!323092)))

(declare-fun res!352022 () Bool)

(assert (=> b!560719 (=> res!352022 e!323092)))

(declare-fun lt!255109 () (_ BitVec 64))

(assert (=> b!560719 (= res!352022 (or (= lt!255109 (select (arr!16900 a!3118) j!142)) (= lt!255109 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!560719 (= lt!255109 (select (arr!16900 a!3118) (index!23653 lt!255110)))))

(declare-fun b!560720 () Bool)

(assert (=> b!560720 (= e!323087 (not true))))

(assert (=> b!560720 e!323085))

(declare-fun res!352021 () Bool)

(assert (=> b!560720 (=> (not res!352021) (not e!323085))))

(declare-fun lt!255107 () SeekEntryResult!5356)

(assert (=> b!560720 (= res!352021 (= lt!255107 (Found!5356 j!142)))))

(assert (=> b!560720 (= lt!255107 (seekEntryOrOpen!0 (select (arr!16900 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!560720 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17486 0))(
  ( (Unit!17487) )
))
(declare-fun lt!255108 () Unit!17486)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35207 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17486)

(assert (=> b!560720 (= lt!255108 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!560721 () Bool)

(assert (=> b!560721 (= e!323088 e!323086)))

(declare-fun res!352024 () Bool)

(assert (=> b!560721 (=> (not res!352024) (not e!323086))))

(declare-fun lt!255105 () SeekEntryResult!5356)

(assert (=> b!560721 (= res!352024 (or (= lt!255105 (MissingZero!5356 i!1132)) (= lt!255105 (MissingVacant!5356 i!1132))))))

(assert (=> b!560721 (= lt!255105 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!560722 () Bool)

(assert (=> b!560722 (= e!323092 e!323090)))

(declare-fun res!352015 () Bool)

(assert (=> b!560722 (=> (not res!352015) (not e!323090))))

(assert (=> b!560722 (= res!352015 (= lt!255107 (seekKeyOrZeroReturnVacant!0 (x!52590 lt!255110) (index!23653 lt!255110) (index!23653 lt!255110) (select (arr!16900 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!560723 () Bool)

(declare-fun res!352018 () Bool)

(assert (=> b!560723 (=> (not res!352018) (not e!323086))))

(declare-datatypes ((List!11033 0))(
  ( (Nil!11030) (Cons!11029 (h!12032 (_ BitVec 64)) (t!17269 List!11033)) )
))
(declare-fun arrayNoDuplicates!0 (array!35207 (_ BitVec 32) List!11033) Bool)

(assert (=> b!560723 (= res!352018 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11030))))

(assert (= (and start!51388 res!352020) b!560717))

(assert (= (and b!560717 res!352025) b!560715))

(assert (= (and b!560715 res!352016) b!560712))

(assert (= (and b!560712 res!352013) b!560716))

(assert (= (and b!560716 res!352017) b!560721))

(assert (= (and b!560721 res!352024) b!560713))

(assert (= (and b!560713 res!352019) b!560723))

(assert (= (and b!560723 res!352018) b!560718))

(assert (= (and b!560718 res!352014) b!560720))

(assert (= (and b!560720 res!352021) b!560714))

(assert (= (and b!560714 (not res!352023)) b!560719))

(assert (= (and b!560719 (not res!352022)) b!560722))

(assert (= (and b!560722 res!352015) b!560711))

(declare-fun m!538575 () Bool)

(assert (=> b!560715 m!538575))

(assert (=> b!560715 m!538575))

(declare-fun m!538577 () Bool)

(assert (=> b!560715 m!538577))

(declare-fun m!538579 () Bool)

(assert (=> b!560713 m!538579))

(declare-fun m!538581 () Bool)

(assert (=> b!560716 m!538581))

(declare-fun m!538583 () Bool)

(assert (=> b!560711 m!538583))

(declare-fun m!538585 () Bool)

(assert (=> b!560711 m!538585))

(declare-fun m!538587 () Bool)

(assert (=> b!560712 m!538587))

(declare-fun m!538589 () Bool)

(assert (=> start!51388 m!538589))

(declare-fun m!538591 () Bool)

(assert (=> start!51388 m!538591))

(assert (=> b!560722 m!538575))

(assert (=> b!560722 m!538575))

(declare-fun m!538593 () Bool)

(assert (=> b!560722 m!538593))

(assert (=> b!560718 m!538575))

(declare-fun m!538595 () Bool)

(assert (=> b!560718 m!538595))

(declare-fun m!538597 () Bool)

(assert (=> b!560718 m!538597))

(assert (=> b!560718 m!538575))

(declare-fun m!538599 () Bool)

(assert (=> b!560718 m!538599))

(assert (=> b!560718 m!538575))

(declare-fun m!538601 () Bool)

(assert (=> b!560718 m!538601))

(declare-fun m!538603 () Bool)

(assert (=> b!560718 m!538603))

(declare-fun m!538605 () Bool)

(assert (=> b!560718 m!538605))

(assert (=> b!560719 m!538575))

(declare-fun m!538607 () Bool)

(assert (=> b!560719 m!538607))

(declare-fun m!538609 () Bool)

(assert (=> b!560723 m!538609))

(declare-fun m!538611 () Bool)

(assert (=> b!560721 m!538611))

(assert (=> b!560720 m!538575))

(assert (=> b!560720 m!538575))

(declare-fun m!538613 () Bool)

(assert (=> b!560720 m!538613))

(declare-fun m!538615 () Bool)

(assert (=> b!560720 m!538615))

(declare-fun m!538617 () Bool)

(assert (=> b!560720 m!538617))

(check-sat (not b!560723) (not b!560720) (not b!560712) (not b!560715) (not b!560716) (not b!560722) (not b!560711) (not b!560718) (not b!560713) (not start!51388) (not b!560721))
(check-sat)
