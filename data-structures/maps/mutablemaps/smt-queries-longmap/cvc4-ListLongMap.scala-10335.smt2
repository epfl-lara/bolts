; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121538 () Bool)

(assert start!121538)

(declare-fun b!1411682 () Bool)

(declare-fun res!949021 () Bool)

(declare-fun e!798889 () Bool)

(assert (=> b!1411682 (=> (not res!949021) (not e!798889))))

(declare-datatypes ((array!96457 0))(
  ( (array!96458 (arr!46563 (Array (_ BitVec 32) (_ BitVec 64))) (size!47114 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96457)

(declare-datatypes ((List!33262 0))(
  ( (Nil!33259) (Cons!33258 (h!34530 (_ BitVec 64)) (t!47963 List!33262)) )
))
(declare-fun arrayNoDuplicates!0 (array!96457 (_ BitVec 32) List!33262) Bool)

(assert (=> b!1411682 (= res!949021 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33259))))

(declare-fun b!1411683 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun e!798890 () Bool)

(declare-datatypes ((SeekEntryResult!10896 0))(
  ( (MissingZero!10896 (index!45960 (_ BitVec 32))) (Found!10896 (index!45961 (_ BitVec 32))) (Intermediate!10896 (undefined!11708 Bool) (index!45962 (_ BitVec 32)) (x!127550 (_ BitVec 32))) (Undefined!10896) (MissingVacant!10896 (index!45963 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96457 (_ BitVec 32)) SeekEntryResult!10896)

(assert (=> b!1411683 (= e!798890 (= (seekEntryOrOpen!0 (select (arr!46563 a!2901) j!112) a!2901 mask!2840) (Found!10896 j!112)))))

(declare-fun b!1411684 () Bool)

(declare-fun e!798893 () Bool)

(assert (=> b!1411684 (= e!798889 (not e!798893))))

(declare-fun res!949022 () Bool)

(assert (=> b!1411684 (=> res!949022 e!798893)))

(declare-fun lt!621876 () SeekEntryResult!10896)

(assert (=> b!1411684 (= res!949022 (or (not (is-Intermediate!10896 lt!621876)) (undefined!11708 lt!621876)))))

(assert (=> b!1411684 e!798890))

(declare-fun res!949019 () Bool)

(assert (=> b!1411684 (=> (not res!949019) (not e!798890))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96457 (_ BitVec 32)) Bool)

(assert (=> b!1411684 (= res!949019 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47716 0))(
  ( (Unit!47717) )
))
(declare-fun lt!621873 () Unit!47716)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96457 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47716)

(assert (=> b!1411684 (= lt!621873 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621877 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96457 (_ BitVec 32)) SeekEntryResult!10896)

(assert (=> b!1411684 (= lt!621876 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621877 (select (arr!46563 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411684 (= lt!621877 (toIndex!0 (select (arr!46563 a!2901) j!112) mask!2840))))

(declare-fun b!1411685 () Bool)

(declare-fun res!949020 () Bool)

(assert (=> b!1411685 (=> (not res!949020) (not e!798889))))

(assert (=> b!1411685 (= res!949020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411687 () Bool)

(declare-fun e!798892 () Bool)

(assert (=> b!1411687 (= e!798892 true)))

(declare-fun lt!621874 () SeekEntryResult!10896)

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1411687 (and (not (undefined!11708 lt!621874)) (= (index!45962 lt!621874) i!1037) (bvslt (x!127550 lt!621874) (x!127550 lt!621876)) (= (select (store (arr!46563 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45962 lt!621874)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!621875 () Unit!47716)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96457 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47716)

(assert (=> b!1411687 (= lt!621875 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621877 (x!127550 lt!621876) (index!45962 lt!621876) (x!127550 lt!621874) (index!45962 lt!621874) (undefined!11708 lt!621874) mask!2840))))

(declare-fun b!1411688 () Bool)

(assert (=> b!1411688 (= e!798893 e!798892)))

(declare-fun res!949018 () Bool)

(assert (=> b!1411688 (=> res!949018 e!798892)))

(assert (=> b!1411688 (= res!949018 (or (= lt!621876 lt!621874) (not (is-Intermediate!10896 lt!621874))))))

(declare-fun lt!621872 () (_ BitVec 64))

(assert (=> b!1411688 (= lt!621874 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621872 mask!2840) lt!621872 (array!96458 (store (arr!46563 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47114 a!2901)) mask!2840))))

(assert (=> b!1411688 (= lt!621872 (select (store (arr!46563 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1411689 () Bool)

(declare-fun res!949025 () Bool)

(assert (=> b!1411689 (=> (not res!949025) (not e!798889))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411689 (= res!949025 (validKeyInArray!0 (select (arr!46563 a!2901) i!1037)))))

(declare-fun b!1411690 () Bool)

(declare-fun res!949026 () Bool)

(assert (=> b!1411690 (=> (not res!949026) (not e!798889))))

(assert (=> b!1411690 (= res!949026 (and (= (size!47114 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47114 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47114 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!949024 () Bool)

(assert (=> start!121538 (=> (not res!949024) (not e!798889))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121538 (= res!949024 (validMask!0 mask!2840))))

(assert (=> start!121538 e!798889))

(assert (=> start!121538 true))

(declare-fun array_inv!35508 (array!96457) Bool)

(assert (=> start!121538 (array_inv!35508 a!2901)))

(declare-fun b!1411686 () Bool)

(declare-fun res!949023 () Bool)

(assert (=> b!1411686 (=> (not res!949023) (not e!798889))))

(assert (=> b!1411686 (= res!949023 (validKeyInArray!0 (select (arr!46563 a!2901) j!112)))))

(assert (= (and start!121538 res!949024) b!1411690))

(assert (= (and b!1411690 res!949026) b!1411689))

(assert (= (and b!1411689 res!949025) b!1411686))

(assert (= (and b!1411686 res!949023) b!1411685))

(assert (= (and b!1411685 res!949020) b!1411682))

(assert (= (and b!1411682 res!949021) b!1411684))

(assert (= (and b!1411684 res!949019) b!1411683))

(assert (= (and b!1411684 (not res!949022)) b!1411688))

(assert (= (and b!1411688 (not res!949018)) b!1411687))

(declare-fun m!1301721 () Bool)

(assert (=> b!1411687 m!1301721))

(declare-fun m!1301723 () Bool)

(assert (=> b!1411687 m!1301723))

(declare-fun m!1301725 () Bool)

(assert (=> b!1411687 m!1301725))

(declare-fun m!1301727 () Bool)

(assert (=> b!1411683 m!1301727))

(assert (=> b!1411683 m!1301727))

(declare-fun m!1301729 () Bool)

(assert (=> b!1411683 m!1301729))

(declare-fun m!1301731 () Bool)

(assert (=> b!1411682 m!1301731))

(assert (=> b!1411684 m!1301727))

(declare-fun m!1301733 () Bool)

(assert (=> b!1411684 m!1301733))

(assert (=> b!1411684 m!1301727))

(declare-fun m!1301735 () Bool)

(assert (=> b!1411684 m!1301735))

(declare-fun m!1301737 () Bool)

(assert (=> b!1411684 m!1301737))

(assert (=> b!1411684 m!1301727))

(declare-fun m!1301739 () Bool)

(assert (=> b!1411684 m!1301739))

(declare-fun m!1301741 () Bool)

(assert (=> start!121538 m!1301741))

(declare-fun m!1301743 () Bool)

(assert (=> start!121538 m!1301743))

(declare-fun m!1301745 () Bool)

(assert (=> b!1411685 m!1301745))

(declare-fun m!1301747 () Bool)

(assert (=> b!1411689 m!1301747))

(assert (=> b!1411689 m!1301747))

(declare-fun m!1301749 () Bool)

(assert (=> b!1411689 m!1301749))

(declare-fun m!1301751 () Bool)

(assert (=> b!1411688 m!1301751))

(assert (=> b!1411688 m!1301721))

(assert (=> b!1411688 m!1301751))

(declare-fun m!1301753 () Bool)

(assert (=> b!1411688 m!1301753))

(declare-fun m!1301755 () Bool)

(assert (=> b!1411688 m!1301755))

(assert (=> b!1411686 m!1301727))

(assert (=> b!1411686 m!1301727))

(declare-fun m!1301757 () Bool)

(assert (=> b!1411686 m!1301757))

(push 1)

(assert (not b!1411689))

(assert (not b!1411688))

(assert (not b!1411683))

(assert (not b!1411687))

(assert (not b!1411685))

(assert (not start!121538))

(assert (not b!1411686))

(assert (not b!1411682))

(assert (not b!1411684))

(check-sat)

