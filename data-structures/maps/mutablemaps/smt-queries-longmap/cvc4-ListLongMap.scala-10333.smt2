; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121526 () Bool)

(assert start!121526)

(declare-fun b!1411520 () Bool)

(declare-fun e!798803 () Bool)

(declare-fun e!798801 () Bool)

(assert (=> b!1411520 (= e!798803 (not e!798801))))

(declare-fun res!948863 () Bool)

(assert (=> b!1411520 (=> res!948863 e!798801)))

(declare-datatypes ((SeekEntryResult!10890 0))(
  ( (MissingZero!10890 (index!45936 (_ BitVec 32))) (Found!10890 (index!45937 (_ BitVec 32))) (Intermediate!10890 (undefined!11702 Bool) (index!45938 (_ BitVec 32)) (x!127528 (_ BitVec 32))) (Undefined!10890) (MissingVacant!10890 (index!45939 (_ BitVec 32))) )
))
(declare-fun lt!621764 () SeekEntryResult!10890)

(assert (=> b!1411520 (= res!948863 (or (not (is-Intermediate!10890 lt!621764)) (undefined!11702 lt!621764)))))

(declare-fun e!798800 () Bool)

(assert (=> b!1411520 e!798800))

(declare-fun res!948857 () Bool)

(assert (=> b!1411520 (=> (not res!948857) (not e!798800))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96445 0))(
  ( (array!96446 (arr!46557 (Array (_ BitVec 32) (_ BitVec 64))) (size!47108 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96445)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96445 (_ BitVec 32)) Bool)

(assert (=> b!1411520 (= res!948857 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47704 0))(
  ( (Unit!47705) )
))
(declare-fun lt!621768 () Unit!47704)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96445 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47704)

(assert (=> b!1411520 (= lt!621768 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621766 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96445 (_ BitVec 32)) SeekEntryResult!10890)

(assert (=> b!1411520 (= lt!621764 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621766 (select (arr!46557 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411520 (= lt!621766 (toIndex!0 (select (arr!46557 a!2901) j!112) mask!2840))))

(declare-fun b!1411522 () Bool)

(declare-fun e!798799 () Bool)

(assert (=> b!1411522 (= e!798799 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!621767 () SeekEntryResult!10890)

(assert (=> b!1411522 (and (not (undefined!11702 lt!621767)) (= (index!45938 lt!621767) i!1037) (bvslt (x!127528 lt!621767) (x!127528 lt!621764)) (= (select (store (arr!46557 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45938 lt!621767)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!621765 () Unit!47704)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96445 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47704)

(assert (=> b!1411522 (= lt!621765 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621766 (x!127528 lt!621764) (index!45938 lt!621764) (x!127528 lt!621767) (index!45938 lt!621767) (undefined!11702 lt!621767) mask!2840))))

(declare-fun b!1411523 () Bool)

(declare-fun res!948862 () Bool)

(assert (=> b!1411523 (=> (not res!948862) (not e!798803))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411523 (= res!948862 (validKeyInArray!0 (select (arr!46557 a!2901) j!112)))))

(declare-fun b!1411524 () Bool)

(declare-fun res!948864 () Bool)

(assert (=> b!1411524 (=> (not res!948864) (not e!798803))))

(assert (=> b!1411524 (= res!948864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411525 () Bool)

(declare-fun res!948861 () Bool)

(assert (=> b!1411525 (=> (not res!948861) (not e!798803))))

(assert (=> b!1411525 (= res!948861 (validKeyInArray!0 (select (arr!46557 a!2901) i!1037)))))

(declare-fun b!1411526 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96445 (_ BitVec 32)) SeekEntryResult!10890)

(assert (=> b!1411526 (= e!798800 (= (seekEntryOrOpen!0 (select (arr!46557 a!2901) j!112) a!2901 mask!2840) (Found!10890 j!112)))))

(declare-fun res!948859 () Bool)

(assert (=> start!121526 (=> (not res!948859) (not e!798803))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121526 (= res!948859 (validMask!0 mask!2840))))

(assert (=> start!121526 e!798803))

(assert (=> start!121526 true))

(declare-fun array_inv!35502 (array!96445) Bool)

(assert (=> start!121526 (array_inv!35502 a!2901)))

(declare-fun b!1411521 () Bool)

(declare-fun res!948856 () Bool)

(assert (=> b!1411521 (=> (not res!948856) (not e!798803))))

(declare-datatypes ((List!33256 0))(
  ( (Nil!33253) (Cons!33252 (h!34524 (_ BitVec 64)) (t!47957 List!33256)) )
))
(declare-fun arrayNoDuplicates!0 (array!96445 (_ BitVec 32) List!33256) Bool)

(assert (=> b!1411521 (= res!948856 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33253))))

(declare-fun b!1411527 () Bool)

(assert (=> b!1411527 (= e!798801 e!798799)))

(declare-fun res!948858 () Bool)

(assert (=> b!1411527 (=> res!948858 e!798799)))

(assert (=> b!1411527 (= res!948858 (or (= lt!621764 lt!621767) (not (is-Intermediate!10890 lt!621767))))))

(declare-fun lt!621769 () (_ BitVec 64))

(assert (=> b!1411527 (= lt!621767 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621769 mask!2840) lt!621769 (array!96446 (store (arr!46557 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47108 a!2901)) mask!2840))))

(assert (=> b!1411527 (= lt!621769 (select (store (arr!46557 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1411528 () Bool)

(declare-fun res!948860 () Bool)

(assert (=> b!1411528 (=> (not res!948860) (not e!798803))))

(assert (=> b!1411528 (= res!948860 (and (= (size!47108 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47108 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47108 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!121526 res!948859) b!1411528))

(assert (= (and b!1411528 res!948860) b!1411525))

(assert (= (and b!1411525 res!948861) b!1411523))

(assert (= (and b!1411523 res!948862) b!1411524))

(assert (= (and b!1411524 res!948864) b!1411521))

(assert (= (and b!1411521 res!948856) b!1411520))

(assert (= (and b!1411520 res!948857) b!1411526))

(assert (= (and b!1411520 (not res!948863)) b!1411527))

(assert (= (and b!1411527 (not res!948858)) b!1411522))

(declare-fun m!1301493 () Bool)

(assert (=> b!1411521 m!1301493))

(declare-fun m!1301495 () Bool)

(assert (=> b!1411526 m!1301495))

(assert (=> b!1411526 m!1301495))

(declare-fun m!1301497 () Bool)

(assert (=> b!1411526 m!1301497))

(declare-fun m!1301499 () Bool)

(assert (=> b!1411524 m!1301499))

(assert (=> b!1411523 m!1301495))

(assert (=> b!1411523 m!1301495))

(declare-fun m!1301501 () Bool)

(assert (=> b!1411523 m!1301501))

(assert (=> b!1411520 m!1301495))

(declare-fun m!1301503 () Bool)

(assert (=> b!1411520 m!1301503))

(assert (=> b!1411520 m!1301495))

(declare-fun m!1301505 () Bool)

(assert (=> b!1411520 m!1301505))

(assert (=> b!1411520 m!1301495))

(declare-fun m!1301507 () Bool)

(assert (=> b!1411520 m!1301507))

(declare-fun m!1301509 () Bool)

(assert (=> b!1411520 m!1301509))

(declare-fun m!1301511 () Bool)

(assert (=> b!1411525 m!1301511))

(assert (=> b!1411525 m!1301511))

(declare-fun m!1301513 () Bool)

(assert (=> b!1411525 m!1301513))

(declare-fun m!1301515 () Bool)

(assert (=> b!1411522 m!1301515))

(declare-fun m!1301517 () Bool)

(assert (=> b!1411522 m!1301517))

(declare-fun m!1301519 () Bool)

(assert (=> b!1411522 m!1301519))

(declare-fun m!1301521 () Bool)

(assert (=> b!1411527 m!1301521))

(assert (=> b!1411527 m!1301515))

(assert (=> b!1411527 m!1301521))

(declare-fun m!1301523 () Bool)

(assert (=> b!1411527 m!1301523))

(declare-fun m!1301525 () Bool)

(assert (=> b!1411527 m!1301525))

(declare-fun m!1301527 () Bool)

(assert (=> start!121526 m!1301527))

(declare-fun m!1301529 () Bool)

(assert (=> start!121526 m!1301529))

(push 1)

