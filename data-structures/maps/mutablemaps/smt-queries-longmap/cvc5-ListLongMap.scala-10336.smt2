; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121540 () Bool)

(assert start!121540)

(declare-fun b!1411709 () Bool)

(declare-fun e!798906 () Bool)

(declare-fun e!798905 () Bool)

(assert (=> b!1411709 (= e!798906 e!798905)))

(declare-fun res!949046 () Bool)

(assert (=> b!1411709 (=> res!949046 e!798905)))

(declare-datatypes ((SeekEntryResult!10897 0))(
  ( (MissingZero!10897 (index!45964 (_ BitVec 32))) (Found!10897 (index!45965 (_ BitVec 32))) (Intermediate!10897 (undefined!11709 Bool) (index!45966 (_ BitVec 32)) (x!127559 (_ BitVec 32))) (Undefined!10897) (MissingVacant!10897 (index!45967 (_ BitVec 32))) )
))
(declare-fun lt!621892 () SeekEntryResult!10897)

(declare-fun lt!621890 () SeekEntryResult!10897)

(assert (=> b!1411709 (= res!949046 (or (= lt!621892 lt!621890) (not (is-Intermediate!10897 lt!621890))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96459 0))(
  ( (array!96460 (arr!46564 (Array (_ BitVec 32) (_ BitVec 64))) (size!47115 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96459)

(declare-fun lt!621895 () (_ BitVec 64))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96459 (_ BitVec 32)) SeekEntryResult!10897)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411709 (= lt!621890 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621895 mask!2840) lt!621895 (array!96460 (store (arr!46564 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47115 a!2901)) mask!2840))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1411709 (= lt!621895 (select (store (arr!46564 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1411710 () Bool)

(declare-fun res!949045 () Bool)

(declare-fun e!798908 () Bool)

(assert (=> b!1411710 (=> (not res!949045) (not e!798908))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411710 (= res!949045 (validKeyInArray!0 (select (arr!46564 a!2901) j!112)))))

(declare-fun b!1411711 () Bool)

(assert (=> b!1411711 (= e!798908 (not e!798906))))

(declare-fun res!949048 () Bool)

(assert (=> b!1411711 (=> res!949048 e!798906)))

(assert (=> b!1411711 (= res!949048 (or (not (is-Intermediate!10897 lt!621892)) (undefined!11709 lt!621892)))))

(declare-fun e!798907 () Bool)

(assert (=> b!1411711 e!798907))

(declare-fun res!949052 () Bool)

(assert (=> b!1411711 (=> (not res!949052) (not e!798907))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96459 (_ BitVec 32)) Bool)

(assert (=> b!1411711 (= res!949052 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47718 0))(
  ( (Unit!47719) )
))
(declare-fun lt!621894 () Unit!47718)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96459 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47718)

(assert (=> b!1411711 (= lt!621894 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621893 () (_ BitVec 32))

(assert (=> b!1411711 (= lt!621892 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621893 (select (arr!46564 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1411711 (= lt!621893 (toIndex!0 (select (arr!46564 a!2901) j!112) mask!2840))))

(declare-fun b!1411712 () Bool)

(declare-fun res!949050 () Bool)

(assert (=> b!1411712 (=> (not res!949050) (not e!798908))))

(assert (=> b!1411712 (= res!949050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411713 () Bool)

(declare-fun res!949049 () Bool)

(assert (=> b!1411713 (=> (not res!949049) (not e!798908))))

(assert (=> b!1411713 (= res!949049 (and (= (size!47115 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47115 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47115 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411715 () Bool)

(declare-fun res!949047 () Bool)

(assert (=> b!1411715 (=> (not res!949047) (not e!798908))))

(declare-datatypes ((List!33263 0))(
  ( (Nil!33260) (Cons!33259 (h!34531 (_ BitVec 64)) (t!47964 List!33263)) )
))
(declare-fun arrayNoDuplicates!0 (array!96459 (_ BitVec 32) List!33263) Bool)

(assert (=> b!1411715 (= res!949047 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33260))))

(declare-fun res!949051 () Bool)

(assert (=> start!121540 (=> (not res!949051) (not e!798908))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121540 (= res!949051 (validMask!0 mask!2840))))

(assert (=> start!121540 e!798908))

(assert (=> start!121540 true))

(declare-fun array_inv!35509 (array!96459) Bool)

(assert (=> start!121540 (array_inv!35509 a!2901)))

(declare-fun b!1411714 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96459 (_ BitVec 32)) SeekEntryResult!10897)

(assert (=> b!1411714 (= e!798907 (= (seekEntryOrOpen!0 (select (arr!46564 a!2901) j!112) a!2901 mask!2840) (Found!10897 j!112)))))

(declare-fun b!1411716 () Bool)

(assert (=> b!1411716 (= e!798905 true)))

(assert (=> b!1411716 (and (not (undefined!11709 lt!621890)) (= (index!45966 lt!621890) i!1037) (bvslt (x!127559 lt!621890) (x!127559 lt!621892)) (= (select (store (arr!46564 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45966 lt!621890)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!621891 () Unit!47718)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96459 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47718)

(assert (=> b!1411716 (= lt!621891 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621893 (x!127559 lt!621892) (index!45966 lt!621892) (x!127559 lt!621890) (index!45966 lt!621890) (undefined!11709 lt!621890) mask!2840))))

(declare-fun b!1411717 () Bool)

(declare-fun res!949053 () Bool)

(assert (=> b!1411717 (=> (not res!949053) (not e!798908))))

(assert (=> b!1411717 (= res!949053 (validKeyInArray!0 (select (arr!46564 a!2901) i!1037)))))

(assert (= (and start!121540 res!949051) b!1411713))

(assert (= (and b!1411713 res!949049) b!1411717))

(assert (= (and b!1411717 res!949053) b!1411710))

(assert (= (and b!1411710 res!949045) b!1411712))

(assert (= (and b!1411712 res!949050) b!1411715))

(assert (= (and b!1411715 res!949047) b!1411711))

(assert (= (and b!1411711 res!949052) b!1411714))

(assert (= (and b!1411711 (not res!949048)) b!1411709))

(assert (= (and b!1411709 (not res!949046)) b!1411716))

(declare-fun m!1301759 () Bool)

(assert (=> start!121540 m!1301759))

(declare-fun m!1301761 () Bool)

(assert (=> start!121540 m!1301761))

(declare-fun m!1301763 () Bool)

(assert (=> b!1411717 m!1301763))

(assert (=> b!1411717 m!1301763))

(declare-fun m!1301765 () Bool)

(assert (=> b!1411717 m!1301765))

(declare-fun m!1301767 () Bool)

(assert (=> b!1411711 m!1301767))

(declare-fun m!1301769 () Bool)

(assert (=> b!1411711 m!1301769))

(assert (=> b!1411711 m!1301767))

(declare-fun m!1301771 () Bool)

(assert (=> b!1411711 m!1301771))

(assert (=> b!1411711 m!1301767))

(declare-fun m!1301773 () Bool)

(assert (=> b!1411711 m!1301773))

(declare-fun m!1301775 () Bool)

(assert (=> b!1411711 m!1301775))

(declare-fun m!1301777 () Bool)

(assert (=> b!1411716 m!1301777))

(declare-fun m!1301779 () Bool)

(assert (=> b!1411716 m!1301779))

(declare-fun m!1301781 () Bool)

(assert (=> b!1411716 m!1301781))

(declare-fun m!1301783 () Bool)

(assert (=> b!1411712 m!1301783))

(assert (=> b!1411710 m!1301767))

(assert (=> b!1411710 m!1301767))

(declare-fun m!1301785 () Bool)

(assert (=> b!1411710 m!1301785))

(declare-fun m!1301787 () Bool)

(assert (=> b!1411715 m!1301787))

(assert (=> b!1411714 m!1301767))

(assert (=> b!1411714 m!1301767))

(declare-fun m!1301789 () Bool)

(assert (=> b!1411714 m!1301789))

(declare-fun m!1301791 () Bool)

(assert (=> b!1411709 m!1301791))

(assert (=> b!1411709 m!1301777))

(assert (=> b!1411709 m!1301791))

(declare-fun m!1301793 () Bool)

(assert (=> b!1411709 m!1301793))

(declare-fun m!1301795 () Bool)

(assert (=> b!1411709 m!1301795))

(push 1)

