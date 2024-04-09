; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121536 () Bool)

(assert start!121536)

(declare-fun b!1411655 () Bool)

(declare-fun res!948991 () Bool)

(declare-fun e!798876 () Bool)

(assert (=> b!1411655 (=> (not res!948991) (not e!798876))))

(declare-datatypes ((array!96455 0))(
  ( (array!96456 (arr!46562 (Array (_ BitVec 32) (_ BitVec 64))) (size!47113 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96455)

(declare-datatypes ((List!33261 0))(
  ( (Nil!33258) (Cons!33257 (h!34529 (_ BitVec 64)) (t!47962 List!33261)) )
))
(declare-fun arrayNoDuplicates!0 (array!96455 (_ BitVec 32) List!33261) Bool)

(assert (=> b!1411655 (= res!948991 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33258))))

(declare-fun b!1411656 () Bool)

(declare-fun res!948993 () Bool)

(assert (=> b!1411656 (=> (not res!948993) (not e!798876))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411656 (= res!948993 (validKeyInArray!0 (select (arr!46562 a!2901) j!112)))))

(declare-fun b!1411657 () Bool)

(declare-fun e!798877 () Bool)

(assert (=> b!1411657 (= e!798876 (not e!798877))))

(declare-fun res!948995 () Bool)

(assert (=> b!1411657 (=> res!948995 e!798877)))

(declare-datatypes ((SeekEntryResult!10895 0))(
  ( (MissingZero!10895 (index!45956 (_ BitVec 32))) (Found!10895 (index!45957 (_ BitVec 32))) (Intermediate!10895 (undefined!11707 Bool) (index!45958 (_ BitVec 32)) (x!127549 (_ BitVec 32))) (Undefined!10895) (MissingVacant!10895 (index!45959 (_ BitVec 32))) )
))
(declare-fun lt!621854 () SeekEntryResult!10895)

(get-info :version)

(assert (=> b!1411657 (= res!948995 (or (not ((_ is Intermediate!10895) lt!621854)) (undefined!11707 lt!621854)))))

(declare-fun e!798874 () Bool)

(assert (=> b!1411657 e!798874))

(declare-fun res!948999 () Bool)

(assert (=> b!1411657 (=> (not res!948999) (not e!798874))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96455 (_ BitVec 32)) Bool)

(assert (=> b!1411657 (= res!948999 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47714 0))(
  ( (Unit!47715) )
))
(declare-fun lt!621859 () Unit!47714)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96455 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47714)

(assert (=> b!1411657 (= lt!621859 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621855 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96455 (_ BitVec 32)) SeekEntryResult!10895)

(assert (=> b!1411657 (= lt!621854 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621855 (select (arr!46562 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411657 (= lt!621855 (toIndex!0 (select (arr!46562 a!2901) j!112) mask!2840))))

(declare-fun b!1411658 () Bool)

(declare-fun e!798875 () Bool)

(assert (=> b!1411658 (= e!798875 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!621857 () SeekEntryResult!10895)

(assert (=> b!1411658 (and (not (undefined!11707 lt!621857)) (= (index!45958 lt!621857) i!1037) (bvslt (x!127549 lt!621857) (x!127549 lt!621854)) (= (select (store (arr!46562 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45958 lt!621857)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!621858 () Unit!47714)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96455 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47714)

(assert (=> b!1411658 (= lt!621858 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621855 (x!127549 lt!621854) (index!45958 lt!621854) (x!127549 lt!621857) (index!45958 lt!621857) (undefined!11707 lt!621857) mask!2840))))

(declare-fun b!1411659 () Bool)

(assert (=> b!1411659 (= e!798877 e!798875)))

(declare-fun res!948994 () Bool)

(assert (=> b!1411659 (=> res!948994 e!798875)))

(assert (=> b!1411659 (= res!948994 (or (= lt!621854 lt!621857) (not ((_ is Intermediate!10895) lt!621857))))))

(declare-fun lt!621856 () (_ BitVec 64))

(assert (=> b!1411659 (= lt!621857 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621856 mask!2840) lt!621856 (array!96456 (store (arr!46562 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47113 a!2901)) mask!2840))))

(assert (=> b!1411659 (= lt!621856 (select (store (arr!46562 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1411660 () Bool)

(declare-fun res!948997 () Bool)

(assert (=> b!1411660 (=> (not res!948997) (not e!798876))))

(assert (=> b!1411660 (= res!948997 (validKeyInArray!0 (select (arr!46562 a!2901) i!1037)))))

(declare-fun b!1411661 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96455 (_ BitVec 32)) SeekEntryResult!10895)

(assert (=> b!1411661 (= e!798874 (= (seekEntryOrOpen!0 (select (arr!46562 a!2901) j!112) a!2901 mask!2840) (Found!10895 j!112)))))

(declare-fun b!1411662 () Bool)

(declare-fun res!948992 () Bool)

(assert (=> b!1411662 (=> (not res!948992) (not e!798876))))

(assert (=> b!1411662 (= res!948992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!948998 () Bool)

(assert (=> start!121536 (=> (not res!948998) (not e!798876))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121536 (= res!948998 (validMask!0 mask!2840))))

(assert (=> start!121536 e!798876))

(assert (=> start!121536 true))

(declare-fun array_inv!35507 (array!96455) Bool)

(assert (=> start!121536 (array_inv!35507 a!2901)))

(declare-fun b!1411663 () Bool)

(declare-fun res!948996 () Bool)

(assert (=> b!1411663 (=> (not res!948996) (not e!798876))))

(assert (=> b!1411663 (= res!948996 (and (= (size!47113 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47113 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47113 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!121536 res!948998) b!1411663))

(assert (= (and b!1411663 res!948996) b!1411660))

(assert (= (and b!1411660 res!948997) b!1411656))

(assert (= (and b!1411656 res!948993) b!1411662))

(assert (= (and b!1411662 res!948992) b!1411655))

(assert (= (and b!1411655 res!948991) b!1411657))

(assert (= (and b!1411657 res!948999) b!1411661))

(assert (= (and b!1411657 (not res!948995)) b!1411659))

(assert (= (and b!1411659 (not res!948994)) b!1411658))

(declare-fun m!1301683 () Bool)

(assert (=> b!1411655 m!1301683))

(declare-fun m!1301685 () Bool)

(assert (=> b!1411660 m!1301685))

(assert (=> b!1411660 m!1301685))

(declare-fun m!1301687 () Bool)

(assert (=> b!1411660 m!1301687))

(declare-fun m!1301689 () Bool)

(assert (=> b!1411658 m!1301689))

(declare-fun m!1301691 () Bool)

(assert (=> b!1411658 m!1301691))

(declare-fun m!1301693 () Bool)

(assert (=> b!1411658 m!1301693))

(declare-fun m!1301695 () Bool)

(assert (=> b!1411656 m!1301695))

(assert (=> b!1411656 m!1301695))

(declare-fun m!1301697 () Bool)

(assert (=> b!1411656 m!1301697))

(declare-fun m!1301699 () Bool)

(assert (=> b!1411659 m!1301699))

(assert (=> b!1411659 m!1301689))

(assert (=> b!1411659 m!1301699))

(declare-fun m!1301701 () Bool)

(assert (=> b!1411659 m!1301701))

(declare-fun m!1301703 () Bool)

(assert (=> b!1411659 m!1301703))

(declare-fun m!1301705 () Bool)

(assert (=> start!121536 m!1301705))

(declare-fun m!1301707 () Bool)

(assert (=> start!121536 m!1301707))

(assert (=> b!1411661 m!1301695))

(assert (=> b!1411661 m!1301695))

(declare-fun m!1301709 () Bool)

(assert (=> b!1411661 m!1301709))

(assert (=> b!1411657 m!1301695))

(declare-fun m!1301711 () Bool)

(assert (=> b!1411657 m!1301711))

(assert (=> b!1411657 m!1301695))

(assert (=> b!1411657 m!1301695))

(declare-fun m!1301713 () Bool)

(assert (=> b!1411657 m!1301713))

(declare-fun m!1301715 () Bool)

(assert (=> b!1411657 m!1301715))

(declare-fun m!1301717 () Bool)

(assert (=> b!1411657 m!1301717))

(declare-fun m!1301719 () Bool)

(assert (=> b!1411662 m!1301719))

(check-sat (not b!1411662) (not b!1411660) (not b!1411661) (not b!1411659) (not b!1411655) (not b!1411657) (not b!1411656) (not start!121536) (not b!1411658))
(check-sat)
