; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121492 () Bool)

(assert start!121492)

(declare-fun b!1411061 () Bool)

(declare-fun res!948403 () Bool)

(declare-fun e!798545 () Bool)

(assert (=> b!1411061 (=> (not res!948403) (not e!798545))))

(declare-datatypes ((array!96411 0))(
  ( (array!96412 (arr!46540 (Array (_ BitVec 32) (_ BitVec 64))) (size!47091 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96411)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411061 (= res!948403 (validKeyInArray!0 (select (arr!46540 a!2901) i!1037)))))

(declare-fun b!1411062 () Bool)

(declare-fun res!948400 () Bool)

(assert (=> b!1411062 (=> (not res!948400) (not e!798545))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96411 (_ BitVec 32)) Bool)

(assert (=> b!1411062 (= res!948400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411063 () Bool)

(declare-fun res!948402 () Bool)

(assert (=> b!1411063 (=> (not res!948402) (not e!798545))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1411063 (= res!948402 (and (= (size!47091 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47091 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47091 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411064 () Bool)

(declare-fun e!798546 () Bool)

(assert (=> b!1411064 (= e!798545 (not e!798546))))

(declare-fun res!948398 () Bool)

(assert (=> b!1411064 (=> res!948398 e!798546)))

(declare-datatypes ((SeekEntryResult!10873 0))(
  ( (MissingZero!10873 (index!45868 (_ BitVec 32))) (Found!10873 (index!45869 (_ BitVec 32))) (Intermediate!10873 (undefined!11685 Bool) (index!45870 (_ BitVec 32)) (x!127471 (_ BitVec 32))) (Undefined!10873) (MissingVacant!10873 (index!45871 (_ BitVec 32))) )
))
(declare-fun lt!621487 () SeekEntryResult!10873)

(assert (=> b!1411064 (= res!948398 (or (not (is-Intermediate!10873 lt!621487)) (undefined!11685 lt!621487)))))

(declare-fun e!798547 () Bool)

(assert (=> b!1411064 e!798547))

(declare-fun res!948405 () Bool)

(assert (=> b!1411064 (=> (not res!948405) (not e!798547))))

(assert (=> b!1411064 (= res!948405 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47670 0))(
  ( (Unit!47671) )
))
(declare-fun lt!621484 () Unit!47670)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96411 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47670)

(assert (=> b!1411064 (= lt!621484 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621485 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96411 (_ BitVec 32)) SeekEntryResult!10873)

(assert (=> b!1411064 (= lt!621487 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621485 (select (arr!46540 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411064 (= lt!621485 (toIndex!0 (select (arr!46540 a!2901) j!112) mask!2840))))

(declare-fun b!1411065 () Bool)

(declare-fun res!948397 () Bool)

(assert (=> b!1411065 (=> (not res!948397) (not e!798545))))

(declare-datatypes ((List!33239 0))(
  ( (Nil!33236) (Cons!33235 (h!34507 (_ BitVec 64)) (t!47940 List!33239)) )
))
(declare-fun arrayNoDuplicates!0 (array!96411 (_ BitVec 32) List!33239) Bool)

(assert (=> b!1411065 (= res!948397 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33236))))

(declare-fun res!948399 () Bool)

(assert (=> start!121492 (=> (not res!948399) (not e!798545))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121492 (= res!948399 (validMask!0 mask!2840))))

(assert (=> start!121492 e!798545))

(assert (=> start!121492 true))

(declare-fun array_inv!35485 (array!96411) Bool)

(assert (=> start!121492 (array_inv!35485 a!2901)))

(declare-fun b!1411066 () Bool)

(declare-fun e!798548 () Bool)

(assert (=> b!1411066 (= e!798548 true)))

(declare-fun lt!621486 () SeekEntryResult!10873)

(assert (=> b!1411066 (and (not (undefined!11685 lt!621486)) (= (index!45870 lt!621486) i!1037) (bvslt (x!127471 lt!621486) (x!127471 lt!621487)))))

(declare-fun lt!621483 () Unit!47670)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96411 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47670)

(assert (=> b!1411066 (= lt!621483 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621485 (x!127471 lt!621487) (index!45870 lt!621487) (x!127471 lt!621486) (index!45870 lt!621486) (undefined!11685 lt!621486) mask!2840))))

(declare-fun b!1411067 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96411 (_ BitVec 32)) SeekEntryResult!10873)

(assert (=> b!1411067 (= e!798547 (= (seekEntryOrOpen!0 (select (arr!46540 a!2901) j!112) a!2901 mask!2840) (Found!10873 j!112)))))

(declare-fun b!1411068 () Bool)

(assert (=> b!1411068 (= e!798546 e!798548)))

(declare-fun res!948401 () Bool)

(assert (=> b!1411068 (=> res!948401 e!798548)))

(assert (=> b!1411068 (= res!948401 (or (= lt!621487 lt!621486) (not (is-Intermediate!10873 lt!621486))))))

(assert (=> b!1411068 (= lt!621486 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46540 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46540 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96412 (store (arr!46540 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47091 a!2901)) mask!2840))))

(declare-fun b!1411069 () Bool)

(declare-fun res!948404 () Bool)

(assert (=> b!1411069 (=> (not res!948404) (not e!798545))))

(assert (=> b!1411069 (= res!948404 (validKeyInArray!0 (select (arr!46540 a!2901) j!112)))))

(assert (= (and start!121492 res!948399) b!1411063))

(assert (= (and b!1411063 res!948402) b!1411061))

(assert (= (and b!1411061 res!948403) b!1411069))

(assert (= (and b!1411069 res!948404) b!1411062))

(assert (= (and b!1411062 res!948400) b!1411065))

(assert (= (and b!1411065 res!948397) b!1411064))

(assert (= (and b!1411064 res!948405) b!1411067))

(assert (= (and b!1411064 (not res!948398)) b!1411068))

(assert (= (and b!1411068 (not res!948401)) b!1411066))

(declare-fun m!1300865 () Bool)

(assert (=> b!1411065 m!1300865))

(declare-fun m!1300867 () Bool)

(assert (=> b!1411066 m!1300867))

(declare-fun m!1300869 () Bool)

(assert (=> b!1411064 m!1300869))

(declare-fun m!1300871 () Bool)

(assert (=> b!1411064 m!1300871))

(assert (=> b!1411064 m!1300869))

(declare-fun m!1300873 () Bool)

(assert (=> b!1411064 m!1300873))

(assert (=> b!1411064 m!1300869))

(declare-fun m!1300875 () Bool)

(assert (=> b!1411064 m!1300875))

(declare-fun m!1300877 () Bool)

(assert (=> b!1411064 m!1300877))

(declare-fun m!1300879 () Bool)

(assert (=> b!1411068 m!1300879))

(declare-fun m!1300881 () Bool)

(assert (=> b!1411068 m!1300881))

(assert (=> b!1411068 m!1300881))

(declare-fun m!1300883 () Bool)

(assert (=> b!1411068 m!1300883))

(assert (=> b!1411068 m!1300883))

(assert (=> b!1411068 m!1300881))

(declare-fun m!1300885 () Bool)

(assert (=> b!1411068 m!1300885))

(assert (=> b!1411069 m!1300869))

(assert (=> b!1411069 m!1300869))

(declare-fun m!1300887 () Bool)

(assert (=> b!1411069 m!1300887))

(declare-fun m!1300889 () Bool)

(assert (=> start!121492 m!1300889))

(declare-fun m!1300891 () Bool)

(assert (=> start!121492 m!1300891))

(declare-fun m!1300893 () Bool)

(assert (=> b!1411062 m!1300893))

(declare-fun m!1300895 () Bool)

(assert (=> b!1411061 m!1300895))

(assert (=> b!1411061 m!1300895))

(declare-fun m!1300897 () Bool)

(assert (=> b!1411061 m!1300897))

(assert (=> b!1411067 m!1300869))

(assert (=> b!1411067 m!1300869))

(declare-fun m!1300899 () Bool)

(assert (=> b!1411067 m!1300899))

(push 1)

