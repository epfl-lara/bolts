; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121534 () Bool)

(assert start!121534)

(declare-fun b!1411628 () Bool)

(declare-fun res!948966 () Bool)

(declare-fun e!798860 () Bool)

(assert (=> b!1411628 (=> (not res!948966) (not e!798860))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96453 0))(
  ( (array!96454 (arr!46561 (Array (_ BitVec 32) (_ BitVec 64))) (size!47112 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96453)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1411628 (= res!948966 (and (= (size!47112 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47112 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47112 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411629 () Bool)

(declare-fun e!798861 () Bool)

(assert (=> b!1411629 (= e!798860 (not e!798861))))

(declare-fun res!948970 () Bool)

(assert (=> b!1411629 (=> res!948970 e!798861)))

(declare-datatypes ((SeekEntryResult!10894 0))(
  ( (MissingZero!10894 (index!45952 (_ BitVec 32))) (Found!10894 (index!45953 (_ BitVec 32))) (Intermediate!10894 (undefined!11706 Bool) (index!45954 (_ BitVec 32)) (x!127548 (_ BitVec 32))) (Undefined!10894) (MissingVacant!10894 (index!45955 (_ BitVec 32))) )
))
(declare-fun lt!621838 () SeekEntryResult!10894)

(assert (=> b!1411629 (= res!948970 (or (not (is-Intermediate!10894 lt!621838)) (undefined!11706 lt!621838)))))

(declare-fun e!798862 () Bool)

(assert (=> b!1411629 e!798862))

(declare-fun res!948964 () Bool)

(assert (=> b!1411629 (=> (not res!948964) (not e!798862))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96453 (_ BitVec 32)) Bool)

(assert (=> b!1411629 (= res!948964 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47712 0))(
  ( (Unit!47713) )
))
(declare-fun lt!621841 () Unit!47712)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96453 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47712)

(assert (=> b!1411629 (= lt!621841 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621840 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96453 (_ BitVec 32)) SeekEntryResult!10894)

(assert (=> b!1411629 (= lt!621838 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621840 (select (arr!46561 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411629 (= lt!621840 (toIndex!0 (select (arr!46561 a!2901) j!112) mask!2840))))

(declare-fun res!948972 () Bool)

(assert (=> start!121534 (=> (not res!948972) (not e!798860))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121534 (= res!948972 (validMask!0 mask!2840))))

(assert (=> start!121534 e!798860))

(assert (=> start!121534 true))

(declare-fun array_inv!35506 (array!96453) Bool)

(assert (=> start!121534 (array_inv!35506 a!2901)))

(declare-fun b!1411630 () Bool)

(declare-fun res!948967 () Bool)

(assert (=> b!1411630 (=> (not res!948967) (not e!798860))))

(assert (=> b!1411630 (= res!948967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411631 () Bool)

(declare-fun e!798859 () Bool)

(assert (=> b!1411631 (= e!798859 true)))

(declare-fun lt!621836 () SeekEntryResult!10894)

(assert (=> b!1411631 (and (not (undefined!11706 lt!621836)) (= (index!45954 lt!621836) i!1037) (bvslt (x!127548 lt!621836) (x!127548 lt!621838)) (= (select (store (arr!46561 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45954 lt!621836)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!621839 () Unit!47712)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96453 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47712)

(assert (=> b!1411631 (= lt!621839 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621840 (x!127548 lt!621838) (index!45954 lt!621838) (x!127548 lt!621836) (index!45954 lt!621836) (undefined!11706 lt!621836) mask!2840))))

(declare-fun b!1411632 () Bool)

(declare-fun res!948965 () Bool)

(assert (=> b!1411632 (=> (not res!948965) (not e!798860))))

(declare-datatypes ((List!33260 0))(
  ( (Nil!33257) (Cons!33256 (h!34528 (_ BitVec 64)) (t!47961 List!33260)) )
))
(declare-fun arrayNoDuplicates!0 (array!96453 (_ BitVec 32) List!33260) Bool)

(assert (=> b!1411632 (= res!948965 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33257))))

(declare-fun b!1411633 () Bool)

(declare-fun res!948968 () Bool)

(assert (=> b!1411633 (=> (not res!948968) (not e!798860))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411633 (= res!948968 (validKeyInArray!0 (select (arr!46561 a!2901) i!1037)))))

(declare-fun b!1411634 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96453 (_ BitVec 32)) SeekEntryResult!10894)

(assert (=> b!1411634 (= e!798862 (= (seekEntryOrOpen!0 (select (arr!46561 a!2901) j!112) a!2901 mask!2840) (Found!10894 j!112)))))

(declare-fun b!1411635 () Bool)

(assert (=> b!1411635 (= e!798861 e!798859)))

(declare-fun res!948969 () Bool)

(assert (=> b!1411635 (=> res!948969 e!798859)))

(assert (=> b!1411635 (= res!948969 (or (= lt!621838 lt!621836) (not (is-Intermediate!10894 lt!621836))))))

(declare-fun lt!621837 () (_ BitVec 64))

(assert (=> b!1411635 (= lt!621836 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621837 mask!2840) lt!621837 (array!96454 (store (arr!46561 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47112 a!2901)) mask!2840))))

(assert (=> b!1411635 (= lt!621837 (select (store (arr!46561 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1411636 () Bool)

(declare-fun res!948971 () Bool)

(assert (=> b!1411636 (=> (not res!948971) (not e!798860))))

(assert (=> b!1411636 (= res!948971 (validKeyInArray!0 (select (arr!46561 a!2901) j!112)))))

(assert (= (and start!121534 res!948972) b!1411628))

(assert (= (and b!1411628 res!948966) b!1411633))

(assert (= (and b!1411633 res!948968) b!1411636))

(assert (= (and b!1411636 res!948971) b!1411630))

(assert (= (and b!1411630 res!948967) b!1411632))

(assert (= (and b!1411632 res!948965) b!1411629))

(assert (= (and b!1411629 res!948964) b!1411634))

(assert (= (and b!1411629 (not res!948970)) b!1411635))

(assert (= (and b!1411635 (not res!948969)) b!1411631))

(declare-fun m!1301645 () Bool)

(assert (=> b!1411633 m!1301645))

(assert (=> b!1411633 m!1301645))

(declare-fun m!1301647 () Bool)

(assert (=> b!1411633 m!1301647))

(declare-fun m!1301649 () Bool)

(assert (=> b!1411632 m!1301649))

(declare-fun m!1301651 () Bool)

(assert (=> start!121534 m!1301651))

(declare-fun m!1301653 () Bool)

(assert (=> start!121534 m!1301653))

(declare-fun m!1301655 () Bool)

(assert (=> b!1411631 m!1301655))

(declare-fun m!1301657 () Bool)

(assert (=> b!1411631 m!1301657))

(declare-fun m!1301659 () Bool)

(assert (=> b!1411631 m!1301659))

(declare-fun m!1301661 () Bool)

(assert (=> b!1411635 m!1301661))

(assert (=> b!1411635 m!1301655))

(assert (=> b!1411635 m!1301661))

(declare-fun m!1301663 () Bool)

(assert (=> b!1411635 m!1301663))

(declare-fun m!1301665 () Bool)

(assert (=> b!1411635 m!1301665))

(declare-fun m!1301667 () Bool)

(assert (=> b!1411630 m!1301667))

(declare-fun m!1301669 () Bool)

(assert (=> b!1411629 m!1301669))

(declare-fun m!1301671 () Bool)

(assert (=> b!1411629 m!1301671))

(assert (=> b!1411629 m!1301669))

(declare-fun m!1301673 () Bool)

(assert (=> b!1411629 m!1301673))

(declare-fun m!1301675 () Bool)

(assert (=> b!1411629 m!1301675))

(assert (=> b!1411629 m!1301669))

(declare-fun m!1301677 () Bool)

(assert (=> b!1411629 m!1301677))

(assert (=> b!1411634 m!1301669))

(assert (=> b!1411634 m!1301669))

(declare-fun m!1301679 () Bool)

(assert (=> b!1411634 m!1301679))

(assert (=> b!1411636 m!1301669))

(assert (=> b!1411636 m!1301669))

(declare-fun m!1301681 () Bool)

(assert (=> b!1411636 m!1301681))

(push 1)

