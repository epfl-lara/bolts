; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120050 () Bool)

(assert start!120050)

(declare-fun res!936038 () Bool)

(declare-fun e!790925 () Bool)

(assert (=> start!120050 (=> (not res!936038) (not e!790925))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120050 (= res!936038 (validMask!0 mask!2840))))

(assert (=> start!120050 e!790925))

(assert (=> start!120050 true))

(declare-datatypes ((array!95497 0))(
  ( (array!95498 (arr!46098 (Array (_ BitVec 32) (_ BitVec 64))) (size!46649 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95497)

(declare-fun array_inv!35043 (array!95497) Bool)

(assert (=> start!120050 (array_inv!35043 a!2901)))

(declare-fun b!1397009 () Bool)

(declare-fun res!936039 () Bool)

(assert (=> b!1397009 (=> (not res!936039) (not e!790925))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1397009 (= res!936039 (and (= (size!46649 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46649 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46649 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397010 () Bool)

(declare-fun res!936035 () Bool)

(assert (=> b!1397010 (=> (not res!936035) (not e!790925))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95497 (_ BitVec 32)) Bool)

(assert (=> b!1397010 (= res!936035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397011 () Bool)

(declare-fun e!790923 () Bool)

(declare-fun e!790922 () Bool)

(assert (=> b!1397011 (= e!790923 e!790922)))

(declare-fun res!936032 () Bool)

(assert (=> b!1397011 (=> res!936032 e!790922)))

(declare-datatypes ((SeekEntryResult!10437 0))(
  ( (MissingZero!10437 (index!44118 (_ BitVec 32))) (Found!10437 (index!44119 (_ BitVec 32))) (Intermediate!10437 (undefined!11249 Bool) (index!44120 (_ BitVec 32)) (x!125782 (_ BitVec 32))) (Undefined!10437) (MissingVacant!10437 (index!44121 (_ BitVec 32))) )
))
(declare-fun lt!613877 () SeekEntryResult!10437)

(declare-fun lt!613876 () SeekEntryResult!10437)

(declare-fun lt!613879 () (_ BitVec 32))

(assert (=> b!1397011 (= res!936032 (or (= lt!613877 lt!613876) (not (is-Intermediate!10437 lt!613876)) (bvslt (x!125782 lt!613877) #b00000000000000000000000000000000) (bvsgt (x!125782 lt!613877) #b01111111111111111111111111111110) (bvslt lt!613879 #b00000000000000000000000000000000) (bvsge lt!613879 (size!46649 a!2901)) (bvslt (index!44120 lt!613877) #b00000000000000000000000000000000) (bvsge (index!44120 lt!613877) (size!46649 a!2901)) (not (= lt!613877 (Intermediate!10437 false (index!44120 lt!613877) (x!125782 lt!613877)))) (not (= lt!613876 (Intermediate!10437 (undefined!11249 lt!613876) (index!44120 lt!613876) (x!125782 lt!613876))))))))

(declare-fun lt!613878 () array!95497)

(declare-fun lt!613875 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95497 (_ BitVec 32)) SeekEntryResult!10437)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397011 (= lt!613876 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613875 mask!2840) lt!613875 lt!613878 mask!2840))))

(assert (=> b!1397011 (= lt!613875 (select (store (arr!46098 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397011 (= lt!613878 (array!95498 (store (arr!46098 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46649 a!2901)))))

(declare-fun b!1397012 () Bool)

(assert (=> b!1397012 (= e!790922 true)))

(declare-fun lt!613874 () SeekEntryResult!10437)

(assert (=> b!1397012 (= lt!613874 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613879 lt!613875 lt!613878 mask!2840))))

(declare-fun b!1397013 () Bool)

(assert (=> b!1397013 (= e!790925 (not e!790923))))

(declare-fun res!936031 () Bool)

(assert (=> b!1397013 (=> res!936031 e!790923)))

(assert (=> b!1397013 (= res!936031 (or (not (is-Intermediate!10437 lt!613877)) (undefined!11249 lt!613877)))))

(declare-fun e!790921 () Bool)

(assert (=> b!1397013 e!790921))

(declare-fun res!936037 () Bool)

(assert (=> b!1397013 (=> (not res!936037) (not e!790921))))

(assert (=> b!1397013 (= res!936037 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46828 0))(
  ( (Unit!46829) )
))
(declare-fun lt!613873 () Unit!46828)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95497 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46828)

(assert (=> b!1397013 (= lt!613873 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1397013 (= lt!613877 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613879 (select (arr!46098 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1397013 (= lt!613879 (toIndex!0 (select (arr!46098 a!2901) j!112) mask!2840))))

(declare-fun b!1397014 () Bool)

(declare-fun res!936033 () Bool)

(assert (=> b!1397014 (=> (not res!936033) (not e!790925))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397014 (= res!936033 (validKeyInArray!0 (select (arr!46098 a!2901) j!112)))))

(declare-fun b!1397015 () Bool)

(declare-fun res!936036 () Bool)

(assert (=> b!1397015 (=> (not res!936036) (not e!790925))))

(declare-datatypes ((List!32797 0))(
  ( (Nil!32794) (Cons!32793 (h!34035 (_ BitVec 64)) (t!47498 List!32797)) )
))
(declare-fun arrayNoDuplicates!0 (array!95497 (_ BitVec 32) List!32797) Bool)

(assert (=> b!1397015 (= res!936036 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32794))))

(declare-fun b!1397016 () Bool)

(declare-fun res!936034 () Bool)

(assert (=> b!1397016 (=> (not res!936034) (not e!790925))))

(assert (=> b!1397016 (= res!936034 (validKeyInArray!0 (select (arr!46098 a!2901) i!1037)))))

(declare-fun b!1397017 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95497 (_ BitVec 32)) SeekEntryResult!10437)

(assert (=> b!1397017 (= e!790921 (= (seekEntryOrOpen!0 (select (arr!46098 a!2901) j!112) a!2901 mask!2840) (Found!10437 j!112)))))

(assert (= (and start!120050 res!936038) b!1397009))

(assert (= (and b!1397009 res!936039) b!1397016))

(assert (= (and b!1397016 res!936034) b!1397014))

(assert (= (and b!1397014 res!936033) b!1397010))

(assert (= (and b!1397010 res!936035) b!1397015))

(assert (= (and b!1397015 res!936036) b!1397013))

(assert (= (and b!1397013 res!936037) b!1397017))

(assert (= (and b!1397013 (not res!936031)) b!1397011))

(assert (= (and b!1397011 (not res!936032)) b!1397012))

(declare-fun m!1283723 () Bool)

(assert (=> b!1397014 m!1283723))

(assert (=> b!1397014 m!1283723))

(declare-fun m!1283725 () Bool)

(assert (=> b!1397014 m!1283725))

(assert (=> b!1397013 m!1283723))

(declare-fun m!1283727 () Bool)

(assert (=> b!1397013 m!1283727))

(assert (=> b!1397013 m!1283723))

(assert (=> b!1397013 m!1283723))

(declare-fun m!1283729 () Bool)

(assert (=> b!1397013 m!1283729))

(declare-fun m!1283731 () Bool)

(assert (=> b!1397013 m!1283731))

(declare-fun m!1283733 () Bool)

(assert (=> b!1397013 m!1283733))

(assert (=> b!1397017 m!1283723))

(assert (=> b!1397017 m!1283723))

(declare-fun m!1283735 () Bool)

(assert (=> b!1397017 m!1283735))

(declare-fun m!1283737 () Bool)

(assert (=> b!1397016 m!1283737))

(assert (=> b!1397016 m!1283737))

(declare-fun m!1283739 () Bool)

(assert (=> b!1397016 m!1283739))

(declare-fun m!1283741 () Bool)

(assert (=> start!120050 m!1283741))

(declare-fun m!1283743 () Bool)

(assert (=> start!120050 m!1283743))

(declare-fun m!1283745 () Bool)

(assert (=> b!1397012 m!1283745))

(declare-fun m!1283747 () Bool)

(assert (=> b!1397010 m!1283747))

(declare-fun m!1283749 () Bool)

(assert (=> b!1397011 m!1283749))

(assert (=> b!1397011 m!1283749))

(declare-fun m!1283751 () Bool)

(assert (=> b!1397011 m!1283751))

(declare-fun m!1283753 () Bool)

(assert (=> b!1397011 m!1283753))

(declare-fun m!1283755 () Bool)

(assert (=> b!1397011 m!1283755))

(declare-fun m!1283757 () Bool)

(assert (=> b!1397015 m!1283757))

(push 1)

