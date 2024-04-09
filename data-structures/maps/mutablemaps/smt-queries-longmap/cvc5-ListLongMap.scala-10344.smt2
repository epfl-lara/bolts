; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121654 () Bool)

(assert start!121654)

(declare-datatypes ((array!96510 0))(
  ( (array!96511 (arr!46588 (Array (_ BitVec 32) (_ BitVec 64))) (size!47139 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96510)

(declare-fun lt!622548 () (_ BitVec 64))

(declare-fun b!1412740 () Bool)

(declare-fun e!799517 () Bool)

(declare-fun lt!622547 () array!96510)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10921 0))(
  ( (MissingZero!10921 (index!46063 (_ BitVec 32))) (Found!10921 (index!46064 (_ BitVec 32))) (Intermediate!10921 (undefined!11733 Bool) (index!46065 (_ BitVec 32)) (x!127659 (_ BitVec 32))) (Undefined!10921) (MissingVacant!10921 (index!46066 (_ BitVec 32))) )
))
(declare-fun lt!622546 () SeekEntryResult!10921)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96510 (_ BitVec 32)) SeekEntryResult!10921)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96510 (_ BitVec 32)) SeekEntryResult!10921)

(assert (=> b!1412740 (= e!799517 (= (seekEntryOrOpen!0 lt!622548 lt!622547 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127659 lt!622546) (index!46065 lt!622546) (index!46065 lt!622546) (select (arr!46588 a!2901) j!112) lt!622547 mask!2840)))))

(declare-fun b!1412741 () Bool)

(declare-fun res!949848 () Bool)

(declare-fun e!799518 () Bool)

(assert (=> b!1412741 (=> (not res!949848) (not e!799518))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412741 (= res!949848 (validKeyInArray!0 (select (arr!46588 a!2901) j!112)))))

(declare-fun res!949842 () Bool)

(assert (=> start!121654 (=> (not res!949842) (not e!799518))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121654 (= res!949842 (validMask!0 mask!2840))))

(assert (=> start!121654 e!799518))

(assert (=> start!121654 true))

(declare-fun array_inv!35533 (array!96510) Bool)

(assert (=> start!121654 (array_inv!35533 a!2901)))

(declare-fun b!1412742 () Bool)

(declare-fun e!799519 () Bool)

(assert (=> b!1412742 (= e!799519 true)))

(assert (=> b!1412742 e!799517))

(declare-fun res!949841 () Bool)

(assert (=> b!1412742 (=> (not res!949841) (not e!799517))))

(declare-fun lt!622545 () SeekEntryResult!10921)

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1412742 (= res!949841 (and (not (undefined!11733 lt!622546)) (= (index!46065 lt!622546) i!1037) (bvslt (x!127659 lt!622546) (x!127659 lt!622545)) (= (select (store (arr!46588 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46065 lt!622546)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47766 0))(
  ( (Unit!47767) )
))
(declare-fun lt!622544 () Unit!47766)

(declare-fun lt!622549 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96510 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47766)

(assert (=> b!1412742 (= lt!622544 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622549 (x!127659 lt!622545) (index!46065 lt!622545) (x!127659 lt!622546) (index!46065 lt!622546) (undefined!11733 lt!622546) mask!2840))))

(declare-fun b!1412743 () Bool)

(declare-fun e!799516 () Bool)

(assert (=> b!1412743 (= e!799516 (= (seekEntryOrOpen!0 (select (arr!46588 a!2901) j!112) a!2901 mask!2840) (Found!10921 j!112)))))

(declare-fun b!1412744 () Bool)

(declare-fun res!949839 () Bool)

(assert (=> b!1412744 (=> (not res!949839) (not e!799518))))

(declare-datatypes ((List!33287 0))(
  ( (Nil!33284) (Cons!33283 (h!34558 (_ BitVec 64)) (t!47988 List!33287)) )
))
(declare-fun arrayNoDuplicates!0 (array!96510 (_ BitVec 32) List!33287) Bool)

(assert (=> b!1412744 (= res!949839 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33284))))

(declare-fun b!1412745 () Bool)

(declare-fun res!949846 () Bool)

(assert (=> b!1412745 (=> (not res!949846) (not e!799518))))

(assert (=> b!1412745 (= res!949846 (and (= (size!47139 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47139 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47139 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412746 () Bool)

(declare-fun res!949847 () Bool)

(assert (=> b!1412746 (=> (not res!949847) (not e!799518))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96510 (_ BitVec 32)) Bool)

(assert (=> b!1412746 (= res!949847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1412747 () Bool)

(declare-fun res!949840 () Bool)

(assert (=> b!1412747 (=> (not res!949840) (not e!799518))))

(assert (=> b!1412747 (= res!949840 (validKeyInArray!0 (select (arr!46588 a!2901) i!1037)))))

(declare-fun b!1412748 () Bool)

(declare-fun e!799520 () Bool)

(assert (=> b!1412748 (= e!799518 (not e!799520))))

(declare-fun res!949844 () Bool)

(assert (=> b!1412748 (=> res!949844 e!799520)))

(assert (=> b!1412748 (= res!949844 (or (not (is-Intermediate!10921 lt!622545)) (undefined!11733 lt!622545)))))

(assert (=> b!1412748 e!799516))

(declare-fun res!949843 () Bool)

(assert (=> b!1412748 (=> (not res!949843) (not e!799516))))

(assert (=> b!1412748 (= res!949843 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622543 () Unit!47766)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96510 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47766)

(assert (=> b!1412748 (= lt!622543 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96510 (_ BitVec 32)) SeekEntryResult!10921)

(assert (=> b!1412748 (= lt!622545 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622549 (select (arr!46588 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412748 (= lt!622549 (toIndex!0 (select (arr!46588 a!2901) j!112) mask!2840))))

(declare-fun b!1412749 () Bool)

(assert (=> b!1412749 (= e!799520 e!799519)))

(declare-fun res!949845 () Bool)

(assert (=> b!1412749 (=> res!949845 e!799519)))

(assert (=> b!1412749 (= res!949845 (or (= lt!622545 lt!622546) (not (is-Intermediate!10921 lt!622546))))))

(assert (=> b!1412749 (= lt!622546 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622548 mask!2840) lt!622548 lt!622547 mask!2840))))

(assert (=> b!1412749 (= lt!622548 (select (store (arr!46588 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412749 (= lt!622547 (array!96511 (store (arr!46588 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47139 a!2901)))))

(assert (= (and start!121654 res!949842) b!1412745))

(assert (= (and b!1412745 res!949846) b!1412747))

(assert (= (and b!1412747 res!949840) b!1412741))

(assert (= (and b!1412741 res!949848) b!1412746))

(assert (= (and b!1412746 res!949847) b!1412744))

(assert (= (and b!1412744 res!949839) b!1412748))

(assert (= (and b!1412748 res!949843) b!1412743))

(assert (= (and b!1412748 (not res!949844)) b!1412749))

(assert (= (and b!1412749 (not res!949845)) b!1412742))

(assert (= (and b!1412742 res!949841) b!1412740))

(declare-fun m!1302977 () Bool)

(assert (=> b!1412746 m!1302977))

(declare-fun m!1302979 () Bool)

(assert (=> b!1412740 m!1302979))

(declare-fun m!1302981 () Bool)

(assert (=> b!1412740 m!1302981))

(assert (=> b!1412740 m!1302981))

(declare-fun m!1302983 () Bool)

(assert (=> b!1412740 m!1302983))

(declare-fun m!1302985 () Bool)

(assert (=> b!1412749 m!1302985))

(assert (=> b!1412749 m!1302985))

(declare-fun m!1302987 () Bool)

(assert (=> b!1412749 m!1302987))

(declare-fun m!1302989 () Bool)

(assert (=> b!1412749 m!1302989))

(declare-fun m!1302991 () Bool)

(assert (=> b!1412749 m!1302991))

(assert (=> b!1412743 m!1302981))

(assert (=> b!1412743 m!1302981))

(declare-fun m!1302993 () Bool)

(assert (=> b!1412743 m!1302993))

(assert (=> b!1412748 m!1302981))

(declare-fun m!1302995 () Bool)

(assert (=> b!1412748 m!1302995))

(assert (=> b!1412748 m!1302981))

(declare-fun m!1302997 () Bool)

(assert (=> b!1412748 m!1302997))

(assert (=> b!1412748 m!1302981))

(declare-fun m!1302999 () Bool)

(assert (=> b!1412748 m!1302999))

(declare-fun m!1303001 () Bool)

(assert (=> b!1412748 m!1303001))

(assert (=> b!1412741 m!1302981))

(assert (=> b!1412741 m!1302981))

(declare-fun m!1303003 () Bool)

(assert (=> b!1412741 m!1303003))

(declare-fun m!1303005 () Bool)

(assert (=> start!121654 m!1303005))

(declare-fun m!1303007 () Bool)

(assert (=> start!121654 m!1303007))

(assert (=> b!1412742 m!1302989))

(declare-fun m!1303009 () Bool)

(assert (=> b!1412742 m!1303009))

(declare-fun m!1303011 () Bool)

(assert (=> b!1412742 m!1303011))

(declare-fun m!1303013 () Bool)

(assert (=> b!1412744 m!1303013))

(declare-fun m!1303015 () Bool)

(assert (=> b!1412747 m!1303015))

(assert (=> b!1412747 m!1303015))

(declare-fun m!1303017 () Bool)

(assert (=> b!1412747 m!1303017))

(push 1)

