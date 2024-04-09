; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51484 () Bool)

(assert start!51484)

(declare-fun b!562551 () Bool)

(declare-fun res!353861 () Bool)

(declare-fun e!324207 () Bool)

(assert (=> b!562551 (=> (not res!353861) (not e!324207))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562551 (= res!353861 (validKeyInArray!0 k0!1914))))

(declare-fun b!562552 () Bool)

(declare-fun e!324206 () Bool)

(assert (=> b!562552 (= e!324206 true)))

(declare-datatypes ((SeekEntryResult!5404 0))(
  ( (MissingZero!5404 (index!23843 (_ BitVec 32))) (Found!5404 (index!23844 (_ BitVec 32))) (Intermediate!5404 (undefined!6216 Bool) (index!23845 (_ BitVec 32)) (x!52766 (_ BitVec 32))) (Undefined!5404) (MissingVacant!5404 (index!23846 (_ BitVec 32))) )
))
(declare-fun lt!256566 () SeekEntryResult!5404)

(declare-fun lt!256559 () SeekEntryResult!5404)

(assert (=> b!562552 (= lt!256566 lt!256559)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35303 0))(
  ( (array!35304 (arr!16948 (Array (_ BitVec 32) (_ BitVec 64))) (size!17312 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35303)

(declare-datatypes ((Unit!17582 0))(
  ( (Unit!17583) )
))
(declare-fun lt!256570 () Unit!17582)

(declare-fun lt!256562 () SeekEntryResult!5404)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35303 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17582)

(assert (=> b!562552 (= lt!256570 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k0!1914 j!142 (x!52766 lt!256562) (index!23845 lt!256562) (index!23845 lt!256562) mask!3119))))

(declare-fun b!562553 () Bool)

(declare-fun e!324208 () Bool)

(assert (=> b!562553 (= e!324207 e!324208)))

(declare-fun res!353859 () Bool)

(assert (=> b!562553 (=> (not res!353859) (not e!324208))))

(declare-fun lt!256564 () SeekEntryResult!5404)

(assert (=> b!562553 (= res!353859 (or (= lt!256564 (MissingZero!5404 i!1132)) (= lt!256564 (MissingVacant!5404 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35303 (_ BitVec 32)) SeekEntryResult!5404)

(assert (=> b!562553 (= lt!256564 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!562554 () Bool)

(declare-fun e!324211 () Bool)

(assert (=> b!562554 (= e!324211 e!324206)))

(declare-fun res!353857 () Bool)

(assert (=> b!562554 (=> res!353857 e!324206)))

(declare-fun lt!256560 () (_ BitVec 64))

(declare-fun lt!256568 () SeekEntryResult!5404)

(assert (=> b!562554 (= res!353857 (or (bvslt (index!23845 lt!256562) #b00000000000000000000000000000000) (bvsge (index!23845 lt!256562) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52766 lt!256562) #b01111111111111111111111111111110) (bvslt (x!52766 lt!256562) #b00000000000000000000000000000000) (not (= lt!256560 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16948 a!3118) i!1132 k0!1914) (index!23845 lt!256562)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!256566 lt!256568))))))

(declare-fun lt!256567 () SeekEntryResult!5404)

(assert (=> b!562554 (= lt!256567 lt!256559)))

(declare-fun lt!256569 () (_ BitVec 64))

(declare-fun lt!256565 () array!35303)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35303 (_ BitVec 32)) SeekEntryResult!5404)

(assert (=> b!562554 (= lt!256559 (seekKeyOrZeroReturnVacant!0 (x!52766 lt!256562) (index!23845 lt!256562) (index!23845 lt!256562) lt!256569 lt!256565 mask!3119))))

(assert (=> b!562554 (= lt!256567 (seekEntryOrOpen!0 lt!256569 lt!256565 mask!3119))))

(declare-fun lt!256558 () SeekEntryResult!5404)

(assert (=> b!562554 (= lt!256558 lt!256566)))

(assert (=> b!562554 (= lt!256566 (seekKeyOrZeroReturnVacant!0 (x!52766 lt!256562) (index!23845 lt!256562) (index!23845 lt!256562) (select (arr!16948 a!3118) j!142) a!3118 mask!3119))))

(declare-fun res!353863 () Bool)

(assert (=> start!51484 (=> (not res!353863) (not e!324207))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51484 (= res!353863 (validMask!0 mask!3119))))

(assert (=> start!51484 e!324207))

(assert (=> start!51484 true))

(declare-fun array_inv!12722 (array!35303) Bool)

(assert (=> start!51484 (array_inv!12722 a!3118)))

(declare-fun b!562555 () Bool)

(declare-fun res!353864 () Bool)

(assert (=> b!562555 (=> (not res!353864) (not e!324207))))

(assert (=> b!562555 (= res!353864 (validKeyInArray!0 (select (arr!16948 a!3118) j!142)))))

(declare-fun b!562556 () Bool)

(declare-fun res!353853 () Bool)

(assert (=> b!562556 (=> (not res!353853) (not e!324207))))

(declare-fun arrayContainsKey!0 (array!35303 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562556 (= res!353853 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!562557 () Bool)

(declare-fun res!353856 () Bool)

(assert (=> b!562557 (=> (not res!353856) (not e!324207))))

(assert (=> b!562557 (= res!353856 (and (= (size!17312 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17312 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17312 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562558 () Bool)

(declare-fun e!324210 () Bool)

(assert (=> b!562558 (= e!324210 e!324211)))

(declare-fun res!353858 () Bool)

(assert (=> b!562558 (=> res!353858 e!324211)))

(assert (=> b!562558 (= res!353858 (or (= lt!256560 (select (arr!16948 a!3118) j!142)) (= lt!256560 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562558 (= lt!256560 (select (arr!16948 a!3118) (index!23845 lt!256562)))))

(declare-fun b!562559 () Bool)

(declare-fun e!324205 () Bool)

(assert (=> b!562559 (= e!324205 (not e!324210))))

(declare-fun res!353854 () Bool)

(assert (=> b!562559 (=> res!353854 e!324210)))

(get-info :version)

(assert (=> b!562559 (= res!353854 (or (undefined!6216 lt!256562) (not ((_ is Intermediate!5404) lt!256562))))))

(assert (=> b!562559 (= lt!256558 lt!256568)))

(assert (=> b!562559 (= lt!256568 (Found!5404 j!142))))

(assert (=> b!562559 (= lt!256558 (seekEntryOrOpen!0 (select (arr!16948 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35303 (_ BitVec 32)) Bool)

(assert (=> b!562559 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!256571 () Unit!17582)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35303 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17582)

(assert (=> b!562559 (= lt!256571 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562560 () Bool)

(assert (=> b!562560 (= e!324208 e!324205)))

(declare-fun res!353860 () Bool)

(assert (=> b!562560 (=> (not res!353860) (not e!324205))))

(declare-fun lt!256561 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35303 (_ BitVec 32)) SeekEntryResult!5404)

(assert (=> b!562560 (= res!353860 (= lt!256562 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256561 lt!256569 lt!256565 mask!3119)))))

(declare-fun lt!256563 () (_ BitVec 32))

(assert (=> b!562560 (= lt!256562 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256563 (select (arr!16948 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562560 (= lt!256561 (toIndex!0 lt!256569 mask!3119))))

(assert (=> b!562560 (= lt!256569 (select (store (arr!16948 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!562560 (= lt!256563 (toIndex!0 (select (arr!16948 a!3118) j!142) mask!3119))))

(assert (=> b!562560 (= lt!256565 (array!35304 (store (arr!16948 a!3118) i!1132 k0!1914) (size!17312 a!3118)))))

(declare-fun b!562561 () Bool)

(declare-fun res!353862 () Bool)

(assert (=> b!562561 (=> (not res!353862) (not e!324208))))

(declare-datatypes ((List!11081 0))(
  ( (Nil!11078) (Cons!11077 (h!12080 (_ BitVec 64)) (t!17317 List!11081)) )
))
(declare-fun arrayNoDuplicates!0 (array!35303 (_ BitVec 32) List!11081) Bool)

(assert (=> b!562561 (= res!353862 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11078))))

(declare-fun b!562562 () Bool)

(declare-fun res!353855 () Bool)

(assert (=> b!562562 (=> (not res!353855) (not e!324208))))

(assert (=> b!562562 (= res!353855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!51484 res!353863) b!562557))

(assert (= (and b!562557 res!353856) b!562555))

(assert (= (and b!562555 res!353864) b!562551))

(assert (= (and b!562551 res!353861) b!562556))

(assert (= (and b!562556 res!353853) b!562553))

(assert (= (and b!562553 res!353859) b!562562))

(assert (= (and b!562562 res!353855) b!562561))

(assert (= (and b!562561 res!353862) b!562560))

(assert (= (and b!562560 res!353860) b!562559))

(assert (= (and b!562559 (not res!353854)) b!562558))

(assert (= (and b!562558 (not res!353858)) b!562554))

(assert (= (and b!562554 (not res!353857)) b!562552))

(declare-fun m!540727 () Bool)

(assert (=> b!562561 m!540727))

(declare-fun m!540729 () Bool)

(assert (=> b!562562 m!540729))

(declare-fun m!540731 () Bool)

(assert (=> b!562553 m!540731))

(declare-fun m!540733 () Bool)

(assert (=> b!562555 m!540733))

(assert (=> b!562555 m!540733))

(declare-fun m!540735 () Bool)

(assert (=> b!562555 m!540735))

(declare-fun m!540737 () Bool)

(assert (=> b!562556 m!540737))

(declare-fun m!540739 () Bool)

(assert (=> b!562551 m!540739))

(assert (=> b!562554 m!540733))

(declare-fun m!540741 () Bool)

(assert (=> b!562554 m!540741))

(declare-fun m!540743 () Bool)

(assert (=> b!562554 m!540743))

(assert (=> b!562554 m!540733))

(declare-fun m!540745 () Bool)

(assert (=> b!562554 m!540745))

(declare-fun m!540747 () Bool)

(assert (=> b!562554 m!540747))

(declare-fun m!540749 () Bool)

(assert (=> b!562554 m!540749))

(assert (=> b!562560 m!540733))

(declare-fun m!540751 () Bool)

(assert (=> b!562560 m!540751))

(assert (=> b!562560 m!540733))

(declare-fun m!540753 () Bool)

(assert (=> b!562560 m!540753))

(assert (=> b!562560 m!540733))

(declare-fun m!540755 () Bool)

(assert (=> b!562560 m!540755))

(declare-fun m!540757 () Bool)

(assert (=> b!562560 m!540757))

(declare-fun m!540759 () Bool)

(assert (=> b!562560 m!540759))

(assert (=> b!562560 m!540749))

(assert (=> b!562558 m!540733))

(declare-fun m!540761 () Bool)

(assert (=> b!562558 m!540761))

(declare-fun m!540763 () Bool)

(assert (=> start!51484 m!540763))

(declare-fun m!540765 () Bool)

(assert (=> start!51484 m!540765))

(declare-fun m!540767 () Bool)

(assert (=> b!562552 m!540767))

(assert (=> b!562559 m!540733))

(assert (=> b!562559 m!540733))

(declare-fun m!540769 () Bool)

(assert (=> b!562559 m!540769))

(declare-fun m!540771 () Bool)

(assert (=> b!562559 m!540771))

(declare-fun m!540773 () Bool)

(assert (=> b!562559 m!540773))

(check-sat (not b!562552) (not start!51484) (not b!562551) (not b!562554) (not b!562562) (not b!562555) (not b!562553) (not b!562561) (not b!562559) (not b!562556) (not b!562560))
(check-sat)
