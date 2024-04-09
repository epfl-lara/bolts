; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120498 () Bool)

(assert start!120498)

(declare-fun b!1402447 () Bool)

(declare-fun res!941075 () Bool)

(declare-fun e!794171 () Bool)

(assert (=> b!1402447 (=> res!941075 e!794171)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95825 0))(
  ( (array!95826 (arr!46259 (Array (_ BitVec 32) (_ BitVec 64))) (size!46810 (_ BitVec 32))) )
))
(declare-fun lt!617755 () array!95825)

(declare-fun lt!617752 () (_ BitVec 64))

(declare-fun lt!617759 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10598 0))(
  ( (MissingZero!10598 (index!44768 (_ BitVec 32))) (Found!10598 (index!44769 (_ BitVec 32))) (Intermediate!10598 (undefined!11410 Bool) (index!44770 (_ BitVec 32)) (x!126396 (_ BitVec 32))) (Undefined!10598) (MissingVacant!10598 (index!44771 (_ BitVec 32))) )
))
(declare-fun lt!617756 () SeekEntryResult!10598)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95825 (_ BitVec 32)) SeekEntryResult!10598)

(assert (=> b!1402447 (= res!941075 (not (= lt!617756 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617759 lt!617752 lt!617755 mask!2840))))))

(declare-fun res!941069 () Bool)

(declare-fun e!794168 () Bool)

(assert (=> start!120498 (=> (not res!941069) (not e!794168))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120498 (= res!941069 (validMask!0 mask!2840))))

(assert (=> start!120498 e!794168))

(assert (=> start!120498 true))

(declare-fun a!2901 () array!95825)

(declare-fun array_inv!35204 (array!95825) Bool)

(assert (=> start!120498 (array_inv!35204 a!2901)))

(declare-fun b!1402448 () Bool)

(declare-fun e!794169 () Bool)

(assert (=> b!1402448 (= e!794169 e!794171)))

(declare-fun res!941068 () Bool)

(assert (=> b!1402448 (=> res!941068 e!794171)))

(declare-fun lt!617754 () SeekEntryResult!10598)

(assert (=> b!1402448 (= res!941068 (or (bvslt (x!126396 lt!617754) #b00000000000000000000000000000000) (bvsgt (x!126396 lt!617754) #b01111111111111111111111111111110) (bvslt (x!126396 lt!617756) #b00000000000000000000000000000000) (bvsgt (x!126396 lt!617756) #b01111111111111111111111111111110) (bvslt lt!617759 #b00000000000000000000000000000000) (bvsge lt!617759 (size!46810 a!2901)) (bvslt (index!44770 lt!617754) #b00000000000000000000000000000000) (bvsge (index!44770 lt!617754) (size!46810 a!2901)) (bvslt (index!44770 lt!617756) #b00000000000000000000000000000000) (bvsge (index!44770 lt!617756) (size!46810 a!2901)) (not (= lt!617754 (Intermediate!10598 false (index!44770 lt!617754) (x!126396 lt!617754)))) (not (= lt!617756 (Intermediate!10598 false (index!44770 lt!617756) (x!126396 lt!617756))))))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lt!617757 () SeekEntryResult!10598)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95825 (_ BitVec 32)) SeekEntryResult!10598)

(assert (=> b!1402448 (= lt!617757 (seekKeyOrZeroReturnVacant!0 (x!126396 lt!617756) (index!44770 lt!617756) (index!44770 lt!617756) (select (arr!46259 a!2901) j!112) lt!617755 mask!2840))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95825 (_ BitVec 32)) SeekEntryResult!10598)

(assert (=> b!1402448 (= lt!617757 (seekEntryOrOpen!0 lt!617752 lt!617755 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1402448 (and (not (undefined!11410 lt!617756)) (= (index!44770 lt!617756) i!1037) (bvslt (x!126396 lt!617756) (x!126396 lt!617754)) (= (select (store (arr!46259 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44770 lt!617756)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!47150 0))(
  ( (Unit!47151) )
))
(declare-fun lt!617753 () Unit!47150)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95825 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47150)

(assert (=> b!1402448 (= lt!617753 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617759 (x!126396 lt!617754) (index!44770 lt!617754) (x!126396 lt!617756) (index!44770 lt!617756) (undefined!11410 lt!617756) mask!2840))))

(declare-fun b!1402449 () Bool)

(declare-fun res!941067 () Bool)

(assert (=> b!1402449 (=> (not res!941067) (not e!794168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95825 (_ BitVec 32)) Bool)

(assert (=> b!1402449 (= res!941067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402450 () Bool)

(declare-fun res!941070 () Bool)

(assert (=> b!1402450 (=> (not res!941070) (not e!794168))))

(declare-datatypes ((List!32958 0))(
  ( (Nil!32955) (Cons!32954 (h!34202 (_ BitVec 64)) (t!47659 List!32958)) )
))
(declare-fun arrayNoDuplicates!0 (array!95825 (_ BitVec 32) List!32958) Bool)

(assert (=> b!1402450 (= res!941070 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32955))))

(declare-fun b!1402451 () Bool)

(declare-fun res!941073 () Bool)

(assert (=> b!1402451 (=> (not res!941073) (not e!794168))))

(assert (=> b!1402451 (= res!941073 (and (= (size!46810 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46810 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46810 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402452 () Bool)

(declare-fun e!794167 () Bool)

(assert (=> b!1402452 (= e!794168 (not e!794167))))

(declare-fun res!941076 () Bool)

(assert (=> b!1402452 (=> res!941076 e!794167)))

(get-info :version)

(assert (=> b!1402452 (= res!941076 (or (not ((_ is Intermediate!10598) lt!617754)) (undefined!11410 lt!617754)))))

(declare-fun lt!617761 () SeekEntryResult!10598)

(assert (=> b!1402452 (= lt!617761 (Found!10598 j!112))))

(assert (=> b!1402452 (= lt!617761 (seekEntryOrOpen!0 (select (arr!46259 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402452 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!617760 () Unit!47150)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95825 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47150)

(assert (=> b!1402452 (= lt!617760 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1402452 (= lt!617754 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617759 (select (arr!46259 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402452 (= lt!617759 (toIndex!0 (select (arr!46259 a!2901) j!112) mask!2840))))

(declare-fun b!1402453 () Bool)

(declare-fun res!941072 () Bool)

(assert (=> b!1402453 (=> (not res!941072) (not e!794168))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402453 (= res!941072 (validKeyInArray!0 (select (arr!46259 a!2901) i!1037)))))

(declare-fun b!1402454 () Bool)

(assert (=> b!1402454 (= e!794171 true)))

(assert (=> b!1402454 (= lt!617761 lt!617757)))

(declare-fun lt!617758 () Unit!47150)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95825 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47150)

(assert (=> b!1402454 (= lt!617758 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617759 (x!126396 lt!617754) (index!44770 lt!617754) (x!126396 lt!617756) (index!44770 lt!617756) mask!2840))))

(declare-fun b!1402455 () Bool)

(declare-fun res!941074 () Bool)

(assert (=> b!1402455 (=> (not res!941074) (not e!794168))))

(assert (=> b!1402455 (= res!941074 (validKeyInArray!0 (select (arr!46259 a!2901) j!112)))))

(declare-fun b!1402456 () Bool)

(assert (=> b!1402456 (= e!794167 e!794169)))

(declare-fun res!941071 () Bool)

(assert (=> b!1402456 (=> res!941071 e!794169)))

(assert (=> b!1402456 (= res!941071 (or (= lt!617754 lt!617756) (not ((_ is Intermediate!10598) lt!617756))))))

(assert (=> b!1402456 (= lt!617756 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617752 mask!2840) lt!617752 lt!617755 mask!2840))))

(assert (=> b!1402456 (= lt!617752 (select (store (arr!46259 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402456 (= lt!617755 (array!95826 (store (arr!46259 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46810 a!2901)))))

(assert (= (and start!120498 res!941069) b!1402451))

(assert (= (and b!1402451 res!941073) b!1402453))

(assert (= (and b!1402453 res!941072) b!1402455))

(assert (= (and b!1402455 res!941074) b!1402449))

(assert (= (and b!1402449 res!941067) b!1402450))

(assert (= (and b!1402450 res!941070) b!1402452))

(assert (= (and b!1402452 (not res!941076)) b!1402456))

(assert (= (and b!1402456 (not res!941071)) b!1402448))

(assert (= (and b!1402448 (not res!941068)) b!1402447))

(assert (= (and b!1402447 (not res!941075)) b!1402454))

(declare-fun m!1290717 () Bool)

(assert (=> b!1402450 m!1290717))

(declare-fun m!1290719 () Bool)

(assert (=> b!1402449 m!1290719))

(declare-fun m!1290721 () Bool)

(assert (=> b!1402456 m!1290721))

(assert (=> b!1402456 m!1290721))

(declare-fun m!1290723 () Bool)

(assert (=> b!1402456 m!1290723))

(declare-fun m!1290725 () Bool)

(assert (=> b!1402456 m!1290725))

(declare-fun m!1290727 () Bool)

(assert (=> b!1402456 m!1290727))

(declare-fun m!1290729 () Bool)

(assert (=> b!1402454 m!1290729))

(declare-fun m!1290731 () Bool)

(assert (=> b!1402448 m!1290731))

(declare-fun m!1290733 () Bool)

(assert (=> b!1402448 m!1290733))

(declare-fun m!1290735 () Bool)

(assert (=> b!1402448 m!1290735))

(declare-fun m!1290737 () Bool)

(assert (=> b!1402448 m!1290737))

(assert (=> b!1402448 m!1290733))

(declare-fun m!1290739 () Bool)

(assert (=> b!1402448 m!1290739))

(assert (=> b!1402448 m!1290725))

(declare-fun m!1290741 () Bool)

(assert (=> b!1402453 m!1290741))

(assert (=> b!1402453 m!1290741))

(declare-fun m!1290743 () Bool)

(assert (=> b!1402453 m!1290743))

(assert (=> b!1402452 m!1290733))

(declare-fun m!1290745 () Bool)

(assert (=> b!1402452 m!1290745))

(assert (=> b!1402452 m!1290733))

(assert (=> b!1402452 m!1290733))

(declare-fun m!1290747 () Bool)

(assert (=> b!1402452 m!1290747))

(declare-fun m!1290749 () Bool)

(assert (=> b!1402452 m!1290749))

(assert (=> b!1402452 m!1290733))

(declare-fun m!1290751 () Bool)

(assert (=> b!1402452 m!1290751))

(declare-fun m!1290753 () Bool)

(assert (=> b!1402452 m!1290753))

(declare-fun m!1290755 () Bool)

(assert (=> b!1402447 m!1290755))

(declare-fun m!1290757 () Bool)

(assert (=> start!120498 m!1290757))

(declare-fun m!1290759 () Bool)

(assert (=> start!120498 m!1290759))

(assert (=> b!1402455 m!1290733))

(assert (=> b!1402455 m!1290733))

(declare-fun m!1290761 () Bool)

(assert (=> b!1402455 m!1290761))

(check-sat (not b!1402448) (not b!1402456) (not b!1402452) (not b!1402455) (not b!1402447) (not b!1402454) (not b!1402449) (not b!1402453) (not start!120498) (not b!1402450))
(check-sat)
