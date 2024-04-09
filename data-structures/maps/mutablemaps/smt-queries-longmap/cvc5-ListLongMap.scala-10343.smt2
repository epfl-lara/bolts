; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121648 () Bool)

(assert start!121648)

(declare-fun b!1412650 () Bool)

(declare-fun res!949755 () Bool)

(declare-fun e!799463 () Bool)

(assert (=> b!1412650 (=> (not res!949755) (not e!799463))))

(declare-datatypes ((array!96504 0))(
  ( (array!96505 (arr!46585 (Array (_ BitVec 32) (_ BitVec 64))) (size!47136 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96504)

(declare-datatypes ((List!33284 0))(
  ( (Nil!33281) (Cons!33280 (h!34555 (_ BitVec 64)) (t!47985 List!33284)) )
))
(declare-fun arrayNoDuplicates!0 (array!96504 (_ BitVec 32) List!33284) Bool)

(assert (=> b!1412650 (= res!949755 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33281))))

(declare-fun b!1412651 () Bool)

(declare-fun res!949751 () Bool)

(assert (=> b!1412651 (=> (not res!949751) (not e!799463))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412651 (= res!949751 (validKeyInArray!0 (select (arr!46585 a!2901) i!1037)))))

(declare-fun b!1412652 () Bool)

(declare-fun res!949752 () Bool)

(assert (=> b!1412652 (=> (not res!949752) (not e!799463))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1412652 (= res!949752 (validKeyInArray!0 (select (arr!46585 a!2901) j!112)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!799464 () Bool)

(declare-fun b!1412653 () Bool)

(declare-datatypes ((SeekEntryResult!10918 0))(
  ( (MissingZero!10918 (index!46051 (_ BitVec 32))) (Found!10918 (index!46052 (_ BitVec 32))) (Intermediate!10918 (undefined!11730 Bool) (index!46053 (_ BitVec 32)) (x!127648 (_ BitVec 32))) (Undefined!10918) (MissingVacant!10918 (index!46054 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96504 (_ BitVec 32)) SeekEntryResult!10918)

(assert (=> b!1412653 (= e!799464 (= (seekEntryOrOpen!0 (select (arr!46585 a!2901) j!112) a!2901 mask!2840) (Found!10918 j!112)))))

(declare-fun b!1412654 () Bool)

(declare-fun e!799462 () Bool)

(assert (=> b!1412654 (= e!799462 true)))

(declare-fun e!799466 () Bool)

(assert (=> b!1412654 e!799466))

(declare-fun res!949756 () Bool)

(assert (=> b!1412654 (=> (not res!949756) (not e!799466))))

(declare-fun lt!622482 () SeekEntryResult!10918)

(declare-fun lt!622480 () SeekEntryResult!10918)

(assert (=> b!1412654 (= res!949756 (and (not (undefined!11730 lt!622482)) (= (index!46053 lt!622482) i!1037) (bvslt (x!127648 lt!622482) (x!127648 lt!622480)) (= (select (store (arr!46585 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46053 lt!622482)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622484 () (_ BitVec 32))

(declare-datatypes ((Unit!47760 0))(
  ( (Unit!47761) )
))
(declare-fun lt!622483 () Unit!47760)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96504 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47760)

(assert (=> b!1412654 (= lt!622483 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622484 (x!127648 lt!622480) (index!46053 lt!622480) (x!127648 lt!622482) (index!46053 lt!622482) (undefined!11730 lt!622482) mask!2840))))

(declare-fun res!949749 () Bool)

(assert (=> start!121648 (=> (not res!949749) (not e!799463))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121648 (= res!949749 (validMask!0 mask!2840))))

(assert (=> start!121648 e!799463))

(assert (=> start!121648 true))

(declare-fun array_inv!35530 (array!96504) Bool)

(assert (=> start!121648 (array_inv!35530 a!2901)))

(declare-fun b!1412655 () Bool)

(declare-fun lt!622485 () (_ BitVec 64))

(declare-fun lt!622481 () array!96504)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96504 (_ BitVec 32)) SeekEntryResult!10918)

(assert (=> b!1412655 (= e!799466 (= (seekEntryOrOpen!0 lt!622485 lt!622481 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127648 lt!622482) (index!46053 lt!622482) (index!46053 lt!622482) (select (arr!46585 a!2901) j!112) lt!622481 mask!2840)))))

(declare-fun b!1412656 () Bool)

(declare-fun e!799465 () Bool)

(assert (=> b!1412656 (= e!799463 (not e!799465))))

(declare-fun res!949757 () Bool)

(assert (=> b!1412656 (=> res!949757 e!799465)))

(assert (=> b!1412656 (= res!949757 (or (not (is-Intermediate!10918 lt!622480)) (undefined!11730 lt!622480)))))

(assert (=> b!1412656 e!799464))

(declare-fun res!949753 () Bool)

(assert (=> b!1412656 (=> (not res!949753) (not e!799464))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96504 (_ BitVec 32)) Bool)

(assert (=> b!1412656 (= res!949753 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622486 () Unit!47760)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96504 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47760)

(assert (=> b!1412656 (= lt!622486 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96504 (_ BitVec 32)) SeekEntryResult!10918)

(assert (=> b!1412656 (= lt!622480 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622484 (select (arr!46585 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412656 (= lt!622484 (toIndex!0 (select (arr!46585 a!2901) j!112) mask!2840))))

(declare-fun b!1412657 () Bool)

(declare-fun res!949758 () Bool)

(assert (=> b!1412657 (=> (not res!949758) (not e!799463))))

(assert (=> b!1412657 (= res!949758 (and (= (size!47136 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47136 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47136 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412658 () Bool)

(assert (=> b!1412658 (= e!799465 e!799462)))

(declare-fun res!949754 () Bool)

(assert (=> b!1412658 (=> res!949754 e!799462)))

(assert (=> b!1412658 (= res!949754 (or (= lt!622480 lt!622482) (not (is-Intermediate!10918 lt!622482))))))

(assert (=> b!1412658 (= lt!622482 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622485 mask!2840) lt!622485 lt!622481 mask!2840))))

(assert (=> b!1412658 (= lt!622485 (select (store (arr!46585 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412658 (= lt!622481 (array!96505 (store (arr!46585 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47136 a!2901)))))

(declare-fun b!1412659 () Bool)

(declare-fun res!949750 () Bool)

(assert (=> b!1412659 (=> (not res!949750) (not e!799463))))

(assert (=> b!1412659 (= res!949750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121648 res!949749) b!1412657))

(assert (= (and b!1412657 res!949758) b!1412651))

(assert (= (and b!1412651 res!949751) b!1412652))

(assert (= (and b!1412652 res!949752) b!1412659))

(assert (= (and b!1412659 res!949750) b!1412650))

(assert (= (and b!1412650 res!949755) b!1412656))

(assert (= (and b!1412656 res!949753) b!1412653))

(assert (= (and b!1412656 (not res!949757)) b!1412658))

(assert (= (and b!1412658 (not res!949754)) b!1412654))

(assert (= (and b!1412654 res!949756) b!1412655))

(declare-fun m!1302851 () Bool)

(assert (=> b!1412655 m!1302851))

(declare-fun m!1302853 () Bool)

(assert (=> b!1412655 m!1302853))

(assert (=> b!1412655 m!1302853))

(declare-fun m!1302855 () Bool)

(assert (=> b!1412655 m!1302855))

(assert (=> b!1412652 m!1302853))

(assert (=> b!1412652 m!1302853))

(declare-fun m!1302857 () Bool)

(assert (=> b!1412652 m!1302857))

(declare-fun m!1302859 () Bool)

(assert (=> b!1412650 m!1302859))

(declare-fun m!1302861 () Bool)

(assert (=> b!1412654 m!1302861))

(declare-fun m!1302863 () Bool)

(assert (=> b!1412654 m!1302863))

(declare-fun m!1302865 () Bool)

(assert (=> b!1412654 m!1302865))

(declare-fun m!1302867 () Bool)

(assert (=> b!1412651 m!1302867))

(assert (=> b!1412651 m!1302867))

(declare-fun m!1302869 () Bool)

(assert (=> b!1412651 m!1302869))

(declare-fun m!1302871 () Bool)

(assert (=> start!121648 m!1302871))

(declare-fun m!1302873 () Bool)

(assert (=> start!121648 m!1302873))

(assert (=> b!1412656 m!1302853))

(declare-fun m!1302875 () Bool)

(assert (=> b!1412656 m!1302875))

(assert (=> b!1412656 m!1302853))

(assert (=> b!1412656 m!1302853))

(declare-fun m!1302877 () Bool)

(assert (=> b!1412656 m!1302877))

(declare-fun m!1302879 () Bool)

(assert (=> b!1412656 m!1302879))

(declare-fun m!1302881 () Bool)

(assert (=> b!1412656 m!1302881))

(declare-fun m!1302883 () Bool)

(assert (=> b!1412658 m!1302883))

(assert (=> b!1412658 m!1302883))

(declare-fun m!1302885 () Bool)

(assert (=> b!1412658 m!1302885))

(assert (=> b!1412658 m!1302861))

(declare-fun m!1302887 () Bool)

(assert (=> b!1412658 m!1302887))

(declare-fun m!1302889 () Bool)

(assert (=> b!1412659 m!1302889))

(assert (=> b!1412653 m!1302853))

(assert (=> b!1412653 m!1302853))

(declare-fun m!1302891 () Bool)

(assert (=> b!1412653 m!1302891))

(push 1)

