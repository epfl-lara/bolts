; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121652 () Bool)

(assert start!121652)

(declare-datatypes ((array!96508 0))(
  ( (array!96509 (arr!46587 (Array (_ BitVec 32) (_ BitVec 64))) (size!47138 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96508)

(declare-fun lt!622525 () (_ BitVec 64))

(declare-fun b!1412710 () Bool)

(declare-fun e!799500 () Bool)

(declare-datatypes ((SeekEntryResult!10920 0))(
  ( (MissingZero!10920 (index!46059 (_ BitVec 32))) (Found!10920 (index!46060 (_ BitVec 32))) (Intermediate!10920 (undefined!11732 Bool) (index!46061 (_ BitVec 32)) (x!127650 (_ BitVec 32))) (Undefined!10920) (MissingVacant!10920 (index!46062 (_ BitVec 32))) )
))
(declare-fun lt!622522 () SeekEntryResult!10920)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!622528 () array!96508)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96508 (_ BitVec 32)) SeekEntryResult!10920)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96508 (_ BitVec 32)) SeekEntryResult!10920)

(assert (=> b!1412710 (= e!799500 (= (seekEntryOrOpen!0 lt!622525 lt!622528 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127650 lt!622522) (index!46061 lt!622522) (index!46061 lt!622522) (select (arr!46587 a!2901) j!112) lt!622528 mask!2840)))))

(declare-fun b!1412711 () Bool)

(declare-fun res!949817 () Bool)

(declare-fun e!799502 () Bool)

(assert (=> b!1412711 (=> (not res!949817) (not e!799502))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96508 (_ BitVec 32)) Bool)

(assert (=> b!1412711 (= res!949817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!949813 () Bool)

(assert (=> start!121652 (=> (not res!949813) (not e!799502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121652 (= res!949813 (validMask!0 mask!2840))))

(assert (=> start!121652 e!799502))

(assert (=> start!121652 true))

(declare-fun array_inv!35532 (array!96508) Bool)

(assert (=> start!121652 (array_inv!35532 a!2901)))

(declare-fun b!1412712 () Bool)

(declare-fun e!799501 () Bool)

(assert (=> b!1412712 (= e!799501 true)))

(assert (=> b!1412712 e!799500))

(declare-fun res!949810 () Bool)

(assert (=> b!1412712 (=> (not res!949810) (not e!799500))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!622527 () SeekEntryResult!10920)

(assert (=> b!1412712 (= res!949810 (and (not (undefined!11732 lt!622522)) (= (index!46061 lt!622522) i!1037) (bvslt (x!127650 lt!622522) (x!127650 lt!622527)) (= (select (store (arr!46587 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46061 lt!622522)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47764 0))(
  ( (Unit!47765) )
))
(declare-fun lt!622524 () Unit!47764)

(declare-fun lt!622526 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96508 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47764)

(assert (=> b!1412712 (= lt!622524 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622526 (x!127650 lt!622527) (index!46061 lt!622527) (x!127650 lt!622522) (index!46061 lt!622522) (undefined!11732 lt!622522) mask!2840))))

(declare-fun b!1412713 () Bool)

(declare-fun res!949815 () Bool)

(assert (=> b!1412713 (=> (not res!949815) (not e!799502))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412713 (= res!949815 (validKeyInArray!0 (select (arr!46587 a!2901) j!112)))))

(declare-fun b!1412714 () Bool)

(declare-fun res!949812 () Bool)

(assert (=> b!1412714 (=> (not res!949812) (not e!799502))))

(assert (=> b!1412714 (= res!949812 (and (= (size!47138 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47138 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47138 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412715 () Bool)

(declare-fun e!799498 () Bool)

(assert (=> b!1412715 (= e!799498 e!799501)))

(declare-fun res!949816 () Bool)

(assert (=> b!1412715 (=> res!949816 e!799501)))

(assert (=> b!1412715 (= res!949816 (or (= lt!622527 lt!622522) (not (is-Intermediate!10920 lt!622522))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96508 (_ BitVec 32)) SeekEntryResult!10920)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412715 (= lt!622522 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622525 mask!2840) lt!622525 lt!622528 mask!2840))))

(assert (=> b!1412715 (= lt!622525 (select (store (arr!46587 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412715 (= lt!622528 (array!96509 (store (arr!46587 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47138 a!2901)))))

(declare-fun b!1412716 () Bool)

(declare-fun res!949814 () Bool)

(assert (=> b!1412716 (=> (not res!949814) (not e!799502))))

(declare-datatypes ((List!33286 0))(
  ( (Nil!33283) (Cons!33282 (h!34557 (_ BitVec 64)) (t!47987 List!33286)) )
))
(declare-fun arrayNoDuplicates!0 (array!96508 (_ BitVec 32) List!33286) Bool)

(assert (=> b!1412716 (= res!949814 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33283))))

(declare-fun e!799499 () Bool)

(declare-fun b!1412717 () Bool)

(assert (=> b!1412717 (= e!799499 (= (seekEntryOrOpen!0 (select (arr!46587 a!2901) j!112) a!2901 mask!2840) (Found!10920 j!112)))))

(declare-fun b!1412718 () Bool)

(declare-fun res!949811 () Bool)

(assert (=> b!1412718 (=> (not res!949811) (not e!799502))))

(assert (=> b!1412718 (= res!949811 (validKeyInArray!0 (select (arr!46587 a!2901) i!1037)))))

(declare-fun b!1412719 () Bool)

(assert (=> b!1412719 (= e!799502 (not e!799498))))

(declare-fun res!949818 () Bool)

(assert (=> b!1412719 (=> res!949818 e!799498)))

(assert (=> b!1412719 (= res!949818 (or (not (is-Intermediate!10920 lt!622527)) (undefined!11732 lt!622527)))))

(assert (=> b!1412719 e!799499))

(declare-fun res!949809 () Bool)

(assert (=> b!1412719 (=> (not res!949809) (not e!799499))))

(assert (=> b!1412719 (= res!949809 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622523 () Unit!47764)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96508 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47764)

(assert (=> b!1412719 (= lt!622523 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1412719 (= lt!622527 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622526 (select (arr!46587 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1412719 (= lt!622526 (toIndex!0 (select (arr!46587 a!2901) j!112) mask!2840))))

(assert (= (and start!121652 res!949813) b!1412714))

(assert (= (and b!1412714 res!949812) b!1412718))

(assert (= (and b!1412718 res!949811) b!1412713))

(assert (= (and b!1412713 res!949815) b!1412711))

(assert (= (and b!1412711 res!949817) b!1412716))

(assert (= (and b!1412716 res!949814) b!1412719))

(assert (= (and b!1412719 res!949809) b!1412717))

(assert (= (and b!1412719 (not res!949818)) b!1412715))

(assert (= (and b!1412715 (not res!949816)) b!1412712))

(assert (= (and b!1412712 res!949810) b!1412710))

(declare-fun m!1302935 () Bool)

(assert (=> start!121652 m!1302935))

(declare-fun m!1302937 () Bool)

(assert (=> start!121652 m!1302937))

(declare-fun m!1302939 () Bool)

(assert (=> b!1412710 m!1302939))

(declare-fun m!1302941 () Bool)

(assert (=> b!1412710 m!1302941))

(assert (=> b!1412710 m!1302941))

(declare-fun m!1302943 () Bool)

(assert (=> b!1412710 m!1302943))

(declare-fun m!1302945 () Bool)

(assert (=> b!1412718 m!1302945))

(assert (=> b!1412718 m!1302945))

(declare-fun m!1302947 () Bool)

(assert (=> b!1412718 m!1302947))

(assert (=> b!1412717 m!1302941))

(assert (=> b!1412717 m!1302941))

(declare-fun m!1302949 () Bool)

(assert (=> b!1412717 m!1302949))

(declare-fun m!1302951 () Bool)

(assert (=> b!1412715 m!1302951))

(assert (=> b!1412715 m!1302951))

(declare-fun m!1302953 () Bool)

(assert (=> b!1412715 m!1302953))

(declare-fun m!1302955 () Bool)

(assert (=> b!1412715 m!1302955))

(declare-fun m!1302957 () Bool)

(assert (=> b!1412715 m!1302957))

(declare-fun m!1302959 () Bool)

(assert (=> b!1412711 m!1302959))

(declare-fun m!1302961 () Bool)

(assert (=> b!1412716 m!1302961))

(assert (=> b!1412719 m!1302941))

(declare-fun m!1302963 () Bool)

(assert (=> b!1412719 m!1302963))

(assert (=> b!1412719 m!1302941))

(declare-fun m!1302965 () Bool)

(assert (=> b!1412719 m!1302965))

(assert (=> b!1412719 m!1302941))

(declare-fun m!1302967 () Bool)

(assert (=> b!1412719 m!1302967))

(declare-fun m!1302969 () Bool)

(assert (=> b!1412719 m!1302969))

(assert (=> b!1412712 m!1302955))

(declare-fun m!1302971 () Bool)

(assert (=> b!1412712 m!1302971))

(declare-fun m!1302973 () Bool)

(assert (=> b!1412712 m!1302973))

(assert (=> b!1412713 m!1302941))

(assert (=> b!1412713 m!1302941))

(declare-fun m!1302975 () Bool)

(assert (=> b!1412713 m!1302975))

(push 1)

