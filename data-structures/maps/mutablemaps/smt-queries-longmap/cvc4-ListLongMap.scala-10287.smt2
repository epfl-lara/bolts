; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120926 () Bool)

(assert start!120926)

(declare-fun b!1406490 () Bool)

(declare-fun res!944822 () Bool)

(declare-fun e!796093 () Bool)

(assert (=> b!1406490 (=> (not res!944822) (not e!796093))))

(declare-datatypes ((array!96151 0))(
  ( (array!96152 (arr!46419 (Array (_ BitVec 32) (_ BitVec 64))) (size!46970 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96151)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406490 (= res!944822 (validKeyInArray!0 (select (arr!46419 a!2901) j!112)))))

(declare-fun b!1406491 () Bool)

(declare-fun e!796094 () Bool)

(assert (=> b!1406491 (= e!796094 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10752 0))(
  ( (MissingZero!10752 (index!45384 (_ BitVec 32))) (Found!10752 (index!45385 (_ BitVec 32))) (Intermediate!10752 (undefined!11564 Bool) (index!45386 (_ BitVec 32)) (x!126986 (_ BitVec 32))) (Undefined!10752) (MissingVacant!10752 (index!45387 (_ BitVec 32))) )
))
(declare-fun lt!619374 () SeekEntryResult!10752)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96151 (_ BitVec 32)) SeekEntryResult!10752)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406491 (= lt!619374 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46419 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46419 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96152 (store (arr!46419 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46970 a!2901)) mask!2840))))

(declare-fun b!1406492 () Bool)

(declare-fun res!944817 () Bool)

(assert (=> b!1406492 (=> (not res!944817) (not e!796093))))

(assert (=> b!1406492 (= res!944817 (and (= (size!46970 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46970 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46970 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!944818 () Bool)

(assert (=> start!120926 (=> (not res!944818) (not e!796093))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120926 (= res!944818 (validMask!0 mask!2840))))

(assert (=> start!120926 e!796093))

(assert (=> start!120926 true))

(declare-fun array_inv!35364 (array!96151) Bool)

(assert (=> start!120926 (array_inv!35364 a!2901)))

(declare-fun b!1406493 () Bool)

(assert (=> b!1406493 (= e!796093 (not e!796094))))

(declare-fun res!944820 () Bool)

(assert (=> b!1406493 (=> res!944820 e!796094)))

(declare-fun lt!619375 () SeekEntryResult!10752)

(assert (=> b!1406493 (= res!944820 (or (not (is-Intermediate!10752 lt!619375)) (undefined!11564 lt!619375)))))

(declare-fun e!796092 () Bool)

(assert (=> b!1406493 e!796092))

(declare-fun res!944823 () Bool)

(assert (=> b!1406493 (=> (not res!944823) (not e!796092))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96151 (_ BitVec 32)) Bool)

(assert (=> b!1406493 (= res!944823 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47428 0))(
  ( (Unit!47429) )
))
(declare-fun lt!619373 () Unit!47428)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96151 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47428)

(assert (=> b!1406493 (= lt!619373 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1406493 (= lt!619375 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46419 a!2901) j!112) mask!2840) (select (arr!46419 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406494 () Bool)

(declare-fun res!944819 () Bool)

(assert (=> b!1406494 (=> (not res!944819) (not e!796093))))

(assert (=> b!1406494 (= res!944819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406495 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96151 (_ BitVec 32)) SeekEntryResult!10752)

(assert (=> b!1406495 (= e!796092 (= (seekEntryOrOpen!0 (select (arr!46419 a!2901) j!112) a!2901 mask!2840) (Found!10752 j!112)))))

(declare-fun b!1406496 () Bool)

(declare-fun res!944816 () Bool)

(assert (=> b!1406496 (=> (not res!944816) (not e!796093))))

(assert (=> b!1406496 (= res!944816 (validKeyInArray!0 (select (arr!46419 a!2901) i!1037)))))

(declare-fun b!1406497 () Bool)

(declare-fun res!944821 () Bool)

(assert (=> b!1406497 (=> (not res!944821) (not e!796093))))

(declare-datatypes ((List!33118 0))(
  ( (Nil!33115) (Cons!33114 (h!34368 (_ BitVec 64)) (t!47819 List!33118)) )
))
(declare-fun arrayNoDuplicates!0 (array!96151 (_ BitVec 32) List!33118) Bool)

(assert (=> b!1406497 (= res!944821 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33115))))

(assert (= (and start!120926 res!944818) b!1406492))

(assert (= (and b!1406492 res!944817) b!1406496))

(assert (= (and b!1406496 res!944816) b!1406490))

(assert (= (and b!1406490 res!944822) b!1406494))

(assert (= (and b!1406494 res!944819) b!1406497))

(assert (= (and b!1406497 res!944821) b!1406493))

(assert (= (and b!1406493 res!944823) b!1406495))

(assert (= (and b!1406493 (not res!944820)) b!1406491))

(declare-fun m!1295749 () Bool)

(assert (=> start!120926 m!1295749))

(declare-fun m!1295751 () Bool)

(assert (=> start!120926 m!1295751))

(declare-fun m!1295753 () Bool)

(assert (=> b!1406494 m!1295753))

(declare-fun m!1295755 () Bool)

(assert (=> b!1406493 m!1295755))

(declare-fun m!1295757 () Bool)

(assert (=> b!1406493 m!1295757))

(assert (=> b!1406493 m!1295755))

(declare-fun m!1295759 () Bool)

(assert (=> b!1406493 m!1295759))

(assert (=> b!1406493 m!1295757))

(assert (=> b!1406493 m!1295755))

(declare-fun m!1295761 () Bool)

(assert (=> b!1406493 m!1295761))

(declare-fun m!1295763 () Bool)

(assert (=> b!1406493 m!1295763))

(assert (=> b!1406495 m!1295755))

(assert (=> b!1406495 m!1295755))

(declare-fun m!1295765 () Bool)

(assert (=> b!1406495 m!1295765))

(declare-fun m!1295767 () Bool)

(assert (=> b!1406496 m!1295767))

(assert (=> b!1406496 m!1295767))

(declare-fun m!1295769 () Bool)

(assert (=> b!1406496 m!1295769))

(declare-fun m!1295771 () Bool)

(assert (=> b!1406491 m!1295771))

(declare-fun m!1295773 () Bool)

(assert (=> b!1406491 m!1295773))

(assert (=> b!1406491 m!1295773))

(declare-fun m!1295775 () Bool)

(assert (=> b!1406491 m!1295775))

(assert (=> b!1406491 m!1295775))

(assert (=> b!1406491 m!1295773))

(declare-fun m!1295777 () Bool)

(assert (=> b!1406491 m!1295777))

(declare-fun m!1295779 () Bool)

(assert (=> b!1406497 m!1295779))

(assert (=> b!1406490 m!1295755))

(assert (=> b!1406490 m!1295755))

(declare-fun m!1295781 () Bool)

(assert (=> b!1406490 m!1295781))

(push 1)

(assert (not b!1406494))

(assert (not start!120926))

(assert (not b!1406497))

(assert (not b!1406490))

(assert (not b!1406495))

(assert (not b!1406493))

(assert (not b!1406491))

(assert (not b!1406496))

(check-sat)

(pop 1)

