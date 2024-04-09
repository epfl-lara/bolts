; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121228 () Bool)

(assert start!121228)

(declare-fun b!1409016 () Bool)

(declare-fun res!946849 () Bool)

(declare-fun e!797410 () Bool)

(assert (=> b!1409016 (=> (not res!946849) (not e!797410))))

(declare-datatypes ((array!96300 0))(
  ( (array!96301 (arr!46489 (Array (_ BitVec 32) (_ BitVec 64))) (size!47040 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96300)

(declare-datatypes ((List!33188 0))(
  ( (Nil!33185) (Cons!33184 (h!34447 (_ BitVec 64)) (t!47889 List!33188)) )
))
(declare-fun arrayNoDuplicates!0 (array!96300 (_ BitVec 32) List!33188) Bool)

(assert (=> b!1409016 (= res!946849 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33185))))

(declare-fun b!1409017 () Bool)

(declare-fun e!797411 () Bool)

(assert (=> b!1409017 (= e!797411 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10822 0))(
  ( (MissingZero!10822 (index!45664 (_ BitVec 32))) (Found!10822 (index!45665 (_ BitVec 32))) (Intermediate!10822 (undefined!11634 Bool) (index!45666 (_ BitVec 32)) (x!127266 (_ BitVec 32))) (Undefined!10822) (MissingVacant!10822 (index!45667 (_ BitVec 32))) )
))
(declare-fun lt!620534 () SeekEntryResult!10822)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96300 (_ BitVec 32)) SeekEntryResult!10822)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409017 (= lt!620534 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46489 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46489 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96301 (store (arr!46489 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47040 a!2901)) mask!2840))))

(declare-fun b!1409018 () Bool)

(assert (=> b!1409018 (= e!797410 (not e!797411))))

(declare-fun res!946852 () Bool)

(assert (=> b!1409018 (=> res!946852 e!797411)))

(declare-fun lt!620535 () SeekEntryResult!10822)

(assert (=> b!1409018 (= res!946852 (or (not (is-Intermediate!10822 lt!620535)) (undefined!11634 lt!620535)))))

(declare-fun e!797408 () Bool)

(assert (=> b!1409018 e!797408))

(declare-fun res!946853 () Bool)

(assert (=> b!1409018 (=> (not res!946853) (not e!797408))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96300 (_ BitVec 32)) Bool)

(assert (=> b!1409018 (= res!946853 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47568 0))(
  ( (Unit!47569) )
))
(declare-fun lt!620536 () Unit!47568)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96300 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47568)

(assert (=> b!1409018 (= lt!620536 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1409018 (= lt!620535 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46489 a!2901) j!112) mask!2840) (select (arr!46489 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!946851 () Bool)

(assert (=> start!121228 (=> (not res!946851) (not e!797410))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121228 (= res!946851 (validMask!0 mask!2840))))

(assert (=> start!121228 e!797410))

(assert (=> start!121228 true))

(declare-fun array_inv!35434 (array!96300) Bool)

(assert (=> start!121228 (array_inv!35434 a!2901)))

(declare-fun b!1409019 () Bool)

(declare-fun res!946850 () Bool)

(assert (=> b!1409019 (=> (not res!946850) (not e!797410))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409019 (= res!946850 (validKeyInArray!0 (select (arr!46489 a!2901) j!112)))))

(declare-fun b!1409020 () Bool)

(declare-fun res!946854 () Bool)

(assert (=> b!1409020 (=> (not res!946854) (not e!797410))))

(assert (=> b!1409020 (= res!946854 (and (= (size!47040 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47040 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47040 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1409021 () Bool)

(declare-fun res!946847 () Bool)

(assert (=> b!1409021 (=> (not res!946847) (not e!797410))))

(assert (=> b!1409021 (= res!946847 (validKeyInArray!0 (select (arr!46489 a!2901) i!1037)))))

(declare-fun b!1409022 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96300 (_ BitVec 32)) SeekEntryResult!10822)

(assert (=> b!1409022 (= e!797408 (= (seekEntryOrOpen!0 (select (arr!46489 a!2901) j!112) a!2901 mask!2840) (Found!10822 j!112)))))

(declare-fun b!1409023 () Bool)

(declare-fun res!946848 () Bool)

(assert (=> b!1409023 (=> (not res!946848) (not e!797410))))

(assert (=> b!1409023 (= res!946848 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121228 res!946851) b!1409020))

(assert (= (and b!1409020 res!946854) b!1409021))

(assert (= (and b!1409021 res!946847) b!1409019))

(assert (= (and b!1409019 res!946850) b!1409023))

(assert (= (and b!1409023 res!946848) b!1409016))

(assert (= (and b!1409016 res!946849) b!1409018))

(assert (= (and b!1409018 res!946853) b!1409022))

(assert (= (and b!1409018 (not res!946852)) b!1409017))

(declare-fun m!1298651 () Bool)

(assert (=> b!1409016 m!1298651))

(declare-fun m!1298653 () Bool)

(assert (=> b!1409019 m!1298653))

(assert (=> b!1409019 m!1298653))

(declare-fun m!1298655 () Bool)

(assert (=> b!1409019 m!1298655))

(declare-fun m!1298657 () Bool)

(assert (=> b!1409023 m!1298657))

(declare-fun m!1298659 () Bool)

(assert (=> b!1409017 m!1298659))

(declare-fun m!1298661 () Bool)

(assert (=> b!1409017 m!1298661))

(assert (=> b!1409017 m!1298661))

(declare-fun m!1298663 () Bool)

(assert (=> b!1409017 m!1298663))

(assert (=> b!1409017 m!1298663))

(assert (=> b!1409017 m!1298661))

(declare-fun m!1298665 () Bool)

(assert (=> b!1409017 m!1298665))

(declare-fun m!1298667 () Bool)

(assert (=> start!121228 m!1298667))

(declare-fun m!1298669 () Bool)

(assert (=> start!121228 m!1298669))

(declare-fun m!1298671 () Bool)

(assert (=> b!1409021 m!1298671))

(assert (=> b!1409021 m!1298671))

(declare-fun m!1298673 () Bool)

(assert (=> b!1409021 m!1298673))

(assert (=> b!1409018 m!1298653))

(declare-fun m!1298675 () Bool)

(assert (=> b!1409018 m!1298675))

(assert (=> b!1409018 m!1298653))

(declare-fun m!1298677 () Bool)

(assert (=> b!1409018 m!1298677))

(assert (=> b!1409018 m!1298675))

(assert (=> b!1409018 m!1298653))

(declare-fun m!1298679 () Bool)

(assert (=> b!1409018 m!1298679))

(declare-fun m!1298681 () Bool)

(assert (=> b!1409018 m!1298681))

(assert (=> b!1409022 m!1298653))

(assert (=> b!1409022 m!1298653))

(declare-fun m!1298683 () Bool)

(assert (=> b!1409022 m!1298683))

(push 1)

(assert (not b!1409022))

(assert (not b!1409018))

(assert (not b!1409021))

(assert (not b!1409023))

(assert (not b!1409019))

(assert (not start!121228))

(assert (not b!1409017))

(assert (not b!1409016))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

