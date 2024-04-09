; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121640 () Bool)

(assert start!121640)

(declare-fun b!1412530 () Bool)

(declare-fun res!949635 () Bool)

(declare-fun e!799390 () Bool)

(assert (=> b!1412530 (=> (not res!949635) (not e!799390))))

(declare-datatypes ((array!96496 0))(
  ( (array!96497 (arr!46581 (Array (_ BitVec 32) (_ BitVec 64))) (size!47132 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96496)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412530 (= res!949635 (validKeyInArray!0 (select (arr!46581 a!2901) i!1037)))))

(declare-fun b!1412531 () Bool)

(declare-fun res!949631 () Bool)

(assert (=> b!1412531 (=> (not res!949631) (not e!799390))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1412531 (= res!949631 (validKeyInArray!0 (select (arr!46581 a!2901) j!112)))))

(declare-fun b!1412532 () Bool)

(declare-fun e!799393 () Bool)

(assert (=> b!1412532 (= e!799393 true)))

(declare-fun e!799392 () Bool)

(assert (=> b!1412532 e!799392))

(declare-fun res!949633 () Bool)

(assert (=> b!1412532 (=> (not res!949633) (not e!799392))))

(declare-datatypes ((SeekEntryResult!10914 0))(
  ( (MissingZero!10914 (index!46035 (_ BitVec 32))) (Found!10914 (index!46036 (_ BitVec 32))) (Intermediate!10914 (undefined!11726 Bool) (index!46037 (_ BitVec 32)) (x!127628 (_ BitVec 32))) (Undefined!10914) (MissingVacant!10914 (index!46038 (_ BitVec 32))) )
))
(declare-fun lt!622400 () SeekEntryResult!10914)

(declare-fun lt!622396 () SeekEntryResult!10914)

(assert (=> b!1412532 (= res!949633 (and (not (undefined!11726 lt!622400)) (= (index!46037 lt!622400) i!1037) (bvslt (x!127628 lt!622400) (x!127628 lt!622396)) (= (select (store (arr!46581 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46037 lt!622400)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((Unit!47752 0))(
  ( (Unit!47753) )
))
(declare-fun lt!622398 () Unit!47752)

(declare-fun lt!622402 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96496 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47752)

(assert (=> b!1412532 (= lt!622398 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622402 (x!127628 lt!622396) (index!46037 lt!622396) (x!127628 lt!622400) (index!46037 lt!622400) (undefined!11726 lt!622400) mask!2840))))

(declare-fun lt!622397 () array!96496)

(declare-fun b!1412533 () Bool)

(declare-fun lt!622401 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96496 (_ BitVec 32)) SeekEntryResult!10914)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96496 (_ BitVec 32)) SeekEntryResult!10914)

(assert (=> b!1412533 (= e!799392 (= (seekEntryOrOpen!0 lt!622401 lt!622397 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127628 lt!622400) (index!46037 lt!622400) (index!46037 lt!622400) (select (arr!46581 a!2901) j!112) lt!622397 mask!2840)))))

(declare-fun b!1412534 () Bool)

(declare-fun res!949634 () Bool)

(assert (=> b!1412534 (=> (not res!949634) (not e!799390))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96496 (_ BitVec 32)) Bool)

(assert (=> b!1412534 (= res!949634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1412535 () Bool)

(declare-fun res!949630 () Bool)

(assert (=> b!1412535 (=> (not res!949630) (not e!799390))))

(declare-datatypes ((List!33280 0))(
  ( (Nil!33277) (Cons!33276 (h!34551 (_ BitVec 64)) (t!47981 List!33280)) )
))
(declare-fun arrayNoDuplicates!0 (array!96496 (_ BitVec 32) List!33280) Bool)

(assert (=> b!1412535 (= res!949630 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33277))))

(declare-fun res!949636 () Bool)

(assert (=> start!121640 (=> (not res!949636) (not e!799390))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121640 (= res!949636 (validMask!0 mask!2840))))

(assert (=> start!121640 e!799390))

(assert (=> start!121640 true))

(declare-fun array_inv!35526 (array!96496) Bool)

(assert (=> start!121640 (array_inv!35526 a!2901)))

(declare-fun b!1412536 () Bool)

(declare-fun e!799389 () Bool)

(assert (=> b!1412536 (= e!799389 (= (seekEntryOrOpen!0 (select (arr!46581 a!2901) j!112) a!2901 mask!2840) (Found!10914 j!112)))))

(declare-fun b!1412537 () Bool)

(declare-fun res!949638 () Bool)

(assert (=> b!1412537 (=> (not res!949638) (not e!799390))))

(assert (=> b!1412537 (= res!949638 (and (= (size!47132 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47132 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47132 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412538 () Bool)

(declare-fun e!799391 () Bool)

(assert (=> b!1412538 (= e!799390 (not e!799391))))

(declare-fun res!949632 () Bool)

(assert (=> b!1412538 (=> res!949632 e!799391)))

(assert (=> b!1412538 (= res!949632 (or (not (is-Intermediate!10914 lt!622396)) (undefined!11726 lt!622396)))))

(assert (=> b!1412538 e!799389))

(declare-fun res!949629 () Bool)

(assert (=> b!1412538 (=> (not res!949629) (not e!799389))))

(assert (=> b!1412538 (= res!949629 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622399 () Unit!47752)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96496 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47752)

(assert (=> b!1412538 (= lt!622399 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96496 (_ BitVec 32)) SeekEntryResult!10914)

(assert (=> b!1412538 (= lt!622396 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622402 (select (arr!46581 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412538 (= lt!622402 (toIndex!0 (select (arr!46581 a!2901) j!112) mask!2840))))

(declare-fun b!1412539 () Bool)

(assert (=> b!1412539 (= e!799391 e!799393)))

(declare-fun res!949637 () Bool)

(assert (=> b!1412539 (=> res!949637 e!799393)))

(assert (=> b!1412539 (= res!949637 (or (= lt!622396 lt!622400) (not (is-Intermediate!10914 lt!622400))))))

(assert (=> b!1412539 (= lt!622400 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622401 mask!2840) lt!622401 lt!622397 mask!2840))))

(assert (=> b!1412539 (= lt!622401 (select (store (arr!46581 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412539 (= lt!622397 (array!96497 (store (arr!46581 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47132 a!2901)))))

(assert (= (and start!121640 res!949636) b!1412537))

(assert (= (and b!1412537 res!949638) b!1412530))

(assert (= (and b!1412530 res!949635) b!1412531))

(assert (= (and b!1412531 res!949631) b!1412534))

(assert (= (and b!1412534 res!949634) b!1412535))

(assert (= (and b!1412535 res!949630) b!1412538))

(assert (= (and b!1412538 res!949629) b!1412536))

(assert (= (and b!1412538 (not res!949632)) b!1412539))

(assert (= (and b!1412539 (not res!949637)) b!1412532))

(assert (= (and b!1412532 res!949633) b!1412533))

(declare-fun m!1302683 () Bool)

(assert (=> b!1412530 m!1302683))

(assert (=> b!1412530 m!1302683))

(declare-fun m!1302685 () Bool)

(assert (=> b!1412530 m!1302685))

(declare-fun m!1302687 () Bool)

(assert (=> b!1412531 m!1302687))

(assert (=> b!1412531 m!1302687))

(declare-fun m!1302689 () Bool)

(assert (=> b!1412531 m!1302689))

(declare-fun m!1302691 () Bool)

(assert (=> b!1412533 m!1302691))

(assert (=> b!1412533 m!1302687))

(assert (=> b!1412533 m!1302687))

(declare-fun m!1302693 () Bool)

(assert (=> b!1412533 m!1302693))

(declare-fun m!1302695 () Bool)

(assert (=> start!121640 m!1302695))

(declare-fun m!1302697 () Bool)

(assert (=> start!121640 m!1302697))

(declare-fun m!1302699 () Bool)

(assert (=> b!1412539 m!1302699))

(assert (=> b!1412539 m!1302699))

(declare-fun m!1302701 () Bool)

(assert (=> b!1412539 m!1302701))

(declare-fun m!1302703 () Bool)

(assert (=> b!1412539 m!1302703))

(declare-fun m!1302705 () Bool)

(assert (=> b!1412539 m!1302705))

(declare-fun m!1302707 () Bool)

(assert (=> b!1412534 m!1302707))

(assert (=> b!1412536 m!1302687))

(assert (=> b!1412536 m!1302687))

(declare-fun m!1302709 () Bool)

(assert (=> b!1412536 m!1302709))

(assert (=> b!1412532 m!1302703))

(declare-fun m!1302711 () Bool)

(assert (=> b!1412532 m!1302711))

(declare-fun m!1302713 () Bool)

(assert (=> b!1412532 m!1302713))

(declare-fun m!1302715 () Bool)

(assert (=> b!1412535 m!1302715))

(assert (=> b!1412538 m!1302687))

(declare-fun m!1302717 () Bool)

(assert (=> b!1412538 m!1302717))

(assert (=> b!1412538 m!1302687))

(declare-fun m!1302719 () Bool)

(assert (=> b!1412538 m!1302719))

(assert (=> b!1412538 m!1302687))

(declare-fun m!1302721 () Bool)

(assert (=> b!1412538 m!1302721))

(declare-fun m!1302723 () Bool)

(assert (=> b!1412538 m!1302723))

(push 1)

