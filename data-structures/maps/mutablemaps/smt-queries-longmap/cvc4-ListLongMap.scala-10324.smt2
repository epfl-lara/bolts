; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121472 () Bool)

(assert start!121472)

(declare-fun b!1410765 () Bool)

(declare-fun res!948102 () Bool)

(declare-fun e!798378 () Bool)

(assert (=> b!1410765 (=> (not res!948102) (not e!798378))))

(declare-datatypes ((array!96391 0))(
  ( (array!96392 (arr!46530 (Array (_ BitVec 32) (_ BitVec 64))) (size!47081 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96391)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1410765 (= res!948102 (validKeyInArray!0 (select (arr!46530 a!2901) j!112)))))

(declare-fun b!1410766 () Bool)

(declare-fun e!798380 () Bool)

(assert (=> b!1410766 (= e!798378 (not e!798380))))

(declare-fun res!948103 () Bool)

(assert (=> b!1410766 (=> res!948103 e!798380)))

(declare-datatypes ((SeekEntryResult!10863 0))(
  ( (MissingZero!10863 (index!45828 (_ BitVec 32))) (Found!10863 (index!45829 (_ BitVec 32))) (Intermediate!10863 (undefined!11675 Bool) (index!45830 (_ BitVec 32)) (x!127429 (_ BitVec 32))) (Undefined!10863) (MissingVacant!10863 (index!45831 (_ BitVec 32))) )
))
(declare-fun lt!621301 () SeekEntryResult!10863)

(assert (=> b!1410766 (= res!948103 (or (not (is-Intermediate!10863 lt!621301)) (undefined!11675 lt!621301)))))

(declare-fun e!798379 () Bool)

(assert (=> b!1410766 e!798379))

(declare-fun res!948107 () Bool)

(assert (=> b!1410766 (=> (not res!948107) (not e!798379))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96391 (_ BitVec 32)) Bool)

(assert (=> b!1410766 (= res!948107 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47650 0))(
  ( (Unit!47651) )
))
(declare-fun lt!621300 () Unit!47650)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96391 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47650)

(assert (=> b!1410766 (= lt!621300 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96391 (_ BitVec 32)) SeekEntryResult!10863)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410766 (= lt!621301 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46530 a!2901) j!112) mask!2840) (select (arr!46530 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1410767 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96391 (_ BitVec 32)) SeekEntryResult!10863)

(assert (=> b!1410767 (= e!798379 (= (seekEntryOrOpen!0 (select (arr!46530 a!2901) j!112) a!2901 mask!2840) (Found!10863 j!112)))))

(declare-fun b!1410768 () Bool)

(declare-fun res!948106 () Bool)

(assert (=> b!1410768 (=> (not res!948106) (not e!798378))))

(assert (=> b!1410768 (= res!948106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1410770 () Bool)

(declare-fun res!948101 () Bool)

(assert (=> b!1410770 (=> (not res!948101) (not e!798378))))

(declare-datatypes ((List!33229 0))(
  ( (Nil!33226) (Cons!33225 (h!34497 (_ BitVec 64)) (t!47930 List!33229)) )
))
(declare-fun arrayNoDuplicates!0 (array!96391 (_ BitVec 32) List!33229) Bool)

(assert (=> b!1410770 (= res!948101 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33226))))

(declare-fun b!1410771 () Bool)

(declare-fun res!948108 () Bool)

(assert (=> b!1410771 (=> (not res!948108) (not e!798378))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1410771 (= res!948108 (validKeyInArray!0 (select (arr!46530 a!2901) i!1037)))))

(declare-fun b!1410772 () Bool)

(assert (=> b!1410772 (= e!798380 true)))

(declare-fun lt!621299 () SeekEntryResult!10863)

(assert (=> b!1410772 (= lt!621299 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46530 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46530 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96392 (store (arr!46530 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47081 a!2901)) mask!2840))))

(declare-fun b!1410769 () Bool)

(declare-fun res!948104 () Bool)

(assert (=> b!1410769 (=> (not res!948104) (not e!798378))))

(assert (=> b!1410769 (= res!948104 (and (= (size!47081 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47081 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47081 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!948105 () Bool)

(assert (=> start!121472 (=> (not res!948105) (not e!798378))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121472 (= res!948105 (validMask!0 mask!2840))))

(assert (=> start!121472 e!798378))

(assert (=> start!121472 true))

(declare-fun array_inv!35475 (array!96391) Bool)

(assert (=> start!121472 (array_inv!35475 a!2901)))

(assert (= (and start!121472 res!948105) b!1410769))

(assert (= (and b!1410769 res!948104) b!1410771))

(assert (= (and b!1410771 res!948108) b!1410765))

(assert (= (and b!1410765 res!948102) b!1410768))

(assert (= (and b!1410768 res!948106) b!1410770))

(assert (= (and b!1410770 res!948101) b!1410766))

(assert (= (and b!1410766 res!948107) b!1410767))

(assert (= (and b!1410766 (not res!948103)) b!1410772))

(declare-fun m!1300507 () Bool)

(assert (=> b!1410766 m!1300507))

(declare-fun m!1300509 () Bool)

(assert (=> b!1410766 m!1300509))

(assert (=> b!1410766 m!1300507))

(declare-fun m!1300511 () Bool)

(assert (=> b!1410766 m!1300511))

(assert (=> b!1410766 m!1300509))

(assert (=> b!1410766 m!1300507))

(declare-fun m!1300513 () Bool)

(assert (=> b!1410766 m!1300513))

(declare-fun m!1300515 () Bool)

(assert (=> b!1410766 m!1300515))

(declare-fun m!1300517 () Bool)

(assert (=> b!1410768 m!1300517))

(assert (=> b!1410765 m!1300507))

(assert (=> b!1410765 m!1300507))

(declare-fun m!1300519 () Bool)

(assert (=> b!1410765 m!1300519))

(assert (=> b!1410767 m!1300507))

(assert (=> b!1410767 m!1300507))

(declare-fun m!1300521 () Bool)

(assert (=> b!1410767 m!1300521))

(declare-fun m!1300523 () Bool)

(assert (=> b!1410771 m!1300523))

(assert (=> b!1410771 m!1300523))

(declare-fun m!1300525 () Bool)

(assert (=> b!1410771 m!1300525))

(declare-fun m!1300527 () Bool)

(assert (=> b!1410770 m!1300527))

(declare-fun m!1300529 () Bool)

(assert (=> b!1410772 m!1300529))

(declare-fun m!1300531 () Bool)

(assert (=> b!1410772 m!1300531))

(assert (=> b!1410772 m!1300531))

(declare-fun m!1300533 () Bool)

(assert (=> b!1410772 m!1300533))

(assert (=> b!1410772 m!1300533))

(assert (=> b!1410772 m!1300531))

(declare-fun m!1300535 () Bool)

(assert (=> b!1410772 m!1300535))

(declare-fun m!1300537 () Bool)

(assert (=> start!121472 m!1300537))

(declare-fun m!1300539 () Bool)

(assert (=> start!121472 m!1300539))

(push 1)

(assert (not b!1410771))

(assert (not b!1410768))

(assert (not b!1410767))

(assert (not b!1410772))

(assert (not b!1410765))

(assert (not b!1410770))

(assert (not b!1410766))

(assert (not start!121472))

(check-sat)

