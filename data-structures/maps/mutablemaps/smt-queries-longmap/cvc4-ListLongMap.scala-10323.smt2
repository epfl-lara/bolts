; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121466 () Bool)

(assert start!121466)

(declare-fun b!1410693 () Bool)

(declare-fun res!948031 () Bool)

(declare-fun e!798343 () Bool)

(assert (=> b!1410693 (=> (not res!948031) (not e!798343))))

(declare-datatypes ((array!96385 0))(
  ( (array!96386 (arr!46527 (Array (_ BitVec 32) (_ BitVec 64))) (size!47078 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96385)

(declare-datatypes ((List!33226 0))(
  ( (Nil!33223) (Cons!33222 (h!34494 (_ BitVec 64)) (t!47927 List!33226)) )
))
(declare-fun arrayNoDuplicates!0 (array!96385 (_ BitVec 32) List!33226) Bool)

(assert (=> b!1410693 (= res!948031 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33223))))

(declare-fun b!1410694 () Bool)

(declare-fun res!948030 () Bool)

(assert (=> b!1410694 (=> (not res!948030) (not e!798343))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1410694 (= res!948030 (validKeyInArray!0 (select (arr!46527 a!2901) j!112)))))

(declare-fun b!1410695 () Bool)

(declare-fun res!948036 () Bool)

(assert (=> b!1410695 (=> (not res!948036) (not e!798343))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96385 (_ BitVec 32)) Bool)

(assert (=> b!1410695 (= res!948036 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1410696 () Bool)

(declare-fun res!948029 () Bool)

(assert (=> b!1410696 (=> (not res!948029) (not e!798343))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1410696 (= res!948029 (and (= (size!47078 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47078 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47078 a!2901)) (not (= i!1037 j!112))))))

(declare-datatypes ((SeekEntryResult!10860 0))(
  ( (MissingZero!10860 (index!45816 (_ BitVec 32))) (Found!10860 (index!45817 (_ BitVec 32))) (Intermediate!10860 (undefined!11672 Bool) (index!45818 (_ BitVec 32)) (x!127418 (_ BitVec 32))) (Undefined!10860) (MissingVacant!10860 (index!45819 (_ BitVec 32))) )
))
(declare-fun lt!621274 () SeekEntryResult!10860)

(declare-fun lt!621273 () SeekEntryResult!10860)

(declare-fun b!1410697 () Bool)

(declare-fun lt!621272 () (_ BitVec 32))

(declare-fun e!798344 () Bool)

(assert (=> b!1410697 (= e!798344 (or (= lt!621274 lt!621273) (not (is-Intermediate!10860 lt!621273)) (bvslt (x!127418 lt!621274) #b00000000000000000000000000000000) (bvsgt (x!127418 lt!621274) #b01111111111111111111111111111110) (bvslt lt!621272 #b00000000000000000000000000000000) (bvsge lt!621272 (size!47078 a!2901)) (bvslt (index!45818 lt!621274) #b00000000000000000000000000000000) (bvsge (index!45818 lt!621274) (size!47078 a!2901)) (not (= lt!621274 (Intermediate!10860 false (index!45818 lt!621274) (x!127418 lt!621274)))) (= lt!621273 (Intermediate!10860 (undefined!11672 lt!621273) (index!45818 lt!621273) (x!127418 lt!621273)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96385 (_ BitVec 32)) SeekEntryResult!10860)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410697 (= lt!621273 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46527 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46527 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96386 (store (arr!46527 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47078 a!2901)) mask!2840))))

(declare-fun b!1410698 () Bool)

(declare-fun e!798342 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96385 (_ BitVec 32)) SeekEntryResult!10860)

(assert (=> b!1410698 (= e!798342 (= (seekEntryOrOpen!0 (select (arr!46527 a!2901) j!112) a!2901 mask!2840) (Found!10860 j!112)))))

(declare-fun res!948032 () Bool)

(assert (=> start!121466 (=> (not res!948032) (not e!798343))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121466 (= res!948032 (validMask!0 mask!2840))))

(assert (=> start!121466 e!798343))

(assert (=> start!121466 true))

(declare-fun array_inv!35472 (array!96385) Bool)

(assert (=> start!121466 (array_inv!35472 a!2901)))

(declare-fun b!1410699 () Bool)

(declare-fun res!948034 () Bool)

(assert (=> b!1410699 (=> (not res!948034) (not e!798343))))

(assert (=> b!1410699 (= res!948034 (validKeyInArray!0 (select (arr!46527 a!2901) i!1037)))))

(declare-fun b!1410700 () Bool)

(assert (=> b!1410700 (= e!798343 (not e!798344))))

(declare-fun res!948035 () Bool)

(assert (=> b!1410700 (=> res!948035 e!798344)))

(assert (=> b!1410700 (= res!948035 (or (not (is-Intermediate!10860 lt!621274)) (undefined!11672 lt!621274)))))

(assert (=> b!1410700 e!798342))

(declare-fun res!948033 () Bool)

(assert (=> b!1410700 (=> (not res!948033) (not e!798342))))

(assert (=> b!1410700 (= res!948033 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47644 0))(
  ( (Unit!47645) )
))
(declare-fun lt!621271 () Unit!47644)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96385 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47644)

(assert (=> b!1410700 (= lt!621271 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1410700 (= lt!621274 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621272 (select (arr!46527 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1410700 (= lt!621272 (toIndex!0 (select (arr!46527 a!2901) j!112) mask!2840))))

(assert (= (and start!121466 res!948032) b!1410696))

(assert (= (and b!1410696 res!948029) b!1410699))

(assert (= (and b!1410699 res!948034) b!1410694))

(assert (= (and b!1410694 res!948030) b!1410695))

(assert (= (and b!1410695 res!948036) b!1410693))

(assert (= (and b!1410693 res!948031) b!1410700))

(assert (= (and b!1410700 res!948033) b!1410698))

(assert (= (and b!1410700 (not res!948035)) b!1410697))

(declare-fun m!1300405 () Bool)

(assert (=> b!1410693 m!1300405))

(declare-fun m!1300407 () Bool)

(assert (=> b!1410694 m!1300407))

(assert (=> b!1410694 m!1300407))

(declare-fun m!1300409 () Bool)

(assert (=> b!1410694 m!1300409))

(declare-fun m!1300411 () Bool)

(assert (=> start!121466 m!1300411))

(declare-fun m!1300413 () Bool)

(assert (=> start!121466 m!1300413))

(declare-fun m!1300415 () Bool)

(assert (=> b!1410699 m!1300415))

(assert (=> b!1410699 m!1300415))

(declare-fun m!1300417 () Bool)

(assert (=> b!1410699 m!1300417))

(declare-fun m!1300419 () Bool)

(assert (=> b!1410697 m!1300419))

(declare-fun m!1300421 () Bool)

(assert (=> b!1410697 m!1300421))

(assert (=> b!1410697 m!1300421))

(declare-fun m!1300423 () Bool)

(assert (=> b!1410697 m!1300423))

(assert (=> b!1410697 m!1300423))

(assert (=> b!1410697 m!1300421))

(declare-fun m!1300425 () Bool)

(assert (=> b!1410697 m!1300425))

(assert (=> b!1410700 m!1300407))

(declare-fun m!1300427 () Bool)

(assert (=> b!1410700 m!1300427))

(declare-fun m!1300429 () Bool)

(assert (=> b!1410700 m!1300429))

(assert (=> b!1410700 m!1300407))

(declare-fun m!1300431 () Bool)

(assert (=> b!1410700 m!1300431))

(assert (=> b!1410700 m!1300407))

(declare-fun m!1300433 () Bool)

(assert (=> b!1410700 m!1300433))

(assert (=> b!1410698 m!1300407))

(assert (=> b!1410698 m!1300407))

(declare-fun m!1300435 () Bool)

(assert (=> b!1410698 m!1300435))

(declare-fun m!1300437 () Bool)

(assert (=> b!1410695 m!1300437))

(push 1)

