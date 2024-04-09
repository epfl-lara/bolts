; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121642 () Bool)

(assert start!121642)

(declare-fun b!1412560 () Bool)

(declare-fun res!949662 () Bool)

(declare-fun e!799412 () Bool)

(assert (=> b!1412560 (=> (not res!949662) (not e!799412))))

(declare-datatypes ((array!96498 0))(
  ( (array!96499 (arr!46582 (Array (_ BitVec 32) (_ BitVec 64))) (size!47133 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96498)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412560 (= res!949662 (validKeyInArray!0 (select (arr!46582 a!2901) i!1037)))))

(declare-fun b!1412561 () Bool)

(declare-fun res!949668 () Bool)

(assert (=> b!1412561 (=> (not res!949668) (not e!799412))))

(declare-datatypes ((List!33281 0))(
  ( (Nil!33278) (Cons!33277 (h!34552 (_ BitVec 64)) (t!47982 List!33281)) )
))
(declare-fun arrayNoDuplicates!0 (array!96498 (_ BitVec 32) List!33281) Bool)

(assert (=> b!1412561 (= res!949668 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33278))))

(declare-fun b!1412562 () Bool)

(declare-fun res!949663 () Bool)

(assert (=> b!1412562 (=> (not res!949663) (not e!799412))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96498 (_ BitVec 32)) Bool)

(assert (=> b!1412562 (= res!949663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1412563 () Bool)

(declare-fun res!949661 () Bool)

(assert (=> b!1412563 (=> (not res!949661) (not e!799412))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1412563 (= res!949661 (and (= (size!47133 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47133 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47133 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412564 () Bool)

(declare-fun e!799409 () Bool)

(declare-fun e!799408 () Bool)

(assert (=> b!1412564 (= e!799409 e!799408)))

(declare-fun res!949667 () Bool)

(assert (=> b!1412564 (=> res!949667 e!799408)))

(declare-datatypes ((SeekEntryResult!10915 0))(
  ( (MissingZero!10915 (index!46039 (_ BitVec 32))) (Found!10915 (index!46040 (_ BitVec 32))) (Intermediate!10915 (undefined!11727 Bool) (index!46041 (_ BitVec 32)) (x!127637 (_ BitVec 32))) (Undefined!10915) (MissingVacant!10915 (index!46042 (_ BitVec 32))) )
))
(declare-fun lt!622417 () SeekEntryResult!10915)

(declare-fun lt!622419 () SeekEntryResult!10915)

(assert (=> b!1412564 (= res!949667 (or (= lt!622417 lt!622419) (not (is-Intermediate!10915 lt!622419))))))

(declare-fun lt!622423 () (_ BitVec 64))

(declare-fun lt!622420 () array!96498)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96498 (_ BitVec 32)) SeekEntryResult!10915)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412564 (= lt!622419 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622423 mask!2840) lt!622423 lt!622420 mask!2840))))

(assert (=> b!1412564 (= lt!622423 (select (store (arr!46582 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412564 (= lt!622420 (array!96499 (store (arr!46582 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47133 a!2901)))))

(declare-fun e!799407 () Bool)

(declare-fun b!1412565 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96498 (_ BitVec 32)) SeekEntryResult!10915)

(assert (=> b!1412565 (= e!799407 (= (seekEntryOrOpen!0 (select (arr!46582 a!2901) j!112) a!2901 mask!2840) (Found!10915 j!112)))))

(declare-fun b!1412566 () Bool)

(assert (=> b!1412566 (= e!799412 (not e!799409))))

(declare-fun res!949664 () Bool)

(assert (=> b!1412566 (=> res!949664 e!799409)))

(assert (=> b!1412566 (= res!949664 (or (not (is-Intermediate!10915 lt!622417)) (undefined!11727 lt!622417)))))

(assert (=> b!1412566 e!799407))

(declare-fun res!949665 () Bool)

(assert (=> b!1412566 (=> (not res!949665) (not e!799407))))

(assert (=> b!1412566 (= res!949665 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47754 0))(
  ( (Unit!47755) )
))
(declare-fun lt!622421 () Unit!47754)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96498 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47754)

(assert (=> b!1412566 (= lt!622421 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!622418 () (_ BitVec 32))

(assert (=> b!1412566 (= lt!622417 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622418 (select (arr!46582 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1412566 (= lt!622418 (toIndex!0 (select (arr!46582 a!2901) j!112) mask!2840))))

(declare-fun res!949666 () Bool)

(assert (=> start!121642 (=> (not res!949666) (not e!799412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121642 (= res!949666 (validMask!0 mask!2840))))

(assert (=> start!121642 e!799412))

(assert (=> start!121642 true))

(declare-fun array_inv!35527 (array!96498) Bool)

(assert (=> start!121642 (array_inv!35527 a!2901)))

(declare-fun b!1412567 () Bool)

(declare-fun e!799410 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96498 (_ BitVec 32)) SeekEntryResult!10915)

(assert (=> b!1412567 (= e!799410 (= (seekEntryOrOpen!0 lt!622423 lt!622420 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127637 lt!622419) (index!46041 lt!622419) (index!46041 lt!622419) (select (arr!46582 a!2901) j!112) lt!622420 mask!2840)))))

(declare-fun b!1412568 () Bool)

(declare-fun res!949660 () Bool)

(assert (=> b!1412568 (=> (not res!949660) (not e!799412))))

(assert (=> b!1412568 (= res!949660 (validKeyInArray!0 (select (arr!46582 a!2901) j!112)))))

(declare-fun b!1412569 () Bool)

(assert (=> b!1412569 (= e!799408 true)))

(assert (=> b!1412569 e!799410))

(declare-fun res!949659 () Bool)

(assert (=> b!1412569 (=> (not res!949659) (not e!799410))))

(assert (=> b!1412569 (= res!949659 (and (not (undefined!11727 lt!622419)) (= (index!46041 lt!622419) i!1037) (bvslt (x!127637 lt!622419) (x!127637 lt!622417)) (= (select (store (arr!46582 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46041 lt!622419)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622422 () Unit!47754)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96498 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47754)

(assert (=> b!1412569 (= lt!622422 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622418 (x!127637 lt!622417) (index!46041 lt!622417) (x!127637 lt!622419) (index!46041 lt!622419) (undefined!11727 lt!622419) mask!2840))))

(assert (= (and start!121642 res!949666) b!1412563))

(assert (= (and b!1412563 res!949661) b!1412560))

(assert (= (and b!1412560 res!949662) b!1412568))

(assert (= (and b!1412568 res!949660) b!1412562))

(assert (= (and b!1412562 res!949663) b!1412561))

(assert (= (and b!1412561 res!949668) b!1412566))

(assert (= (and b!1412566 res!949665) b!1412565))

(assert (= (and b!1412566 (not res!949664)) b!1412564))

(assert (= (and b!1412564 (not res!949667)) b!1412569))

(assert (= (and b!1412569 res!949659) b!1412567))

(declare-fun m!1302725 () Bool)

(assert (=> b!1412564 m!1302725))

(assert (=> b!1412564 m!1302725))

(declare-fun m!1302727 () Bool)

(assert (=> b!1412564 m!1302727))

(declare-fun m!1302729 () Bool)

(assert (=> b!1412564 m!1302729))

(declare-fun m!1302731 () Bool)

(assert (=> b!1412564 m!1302731))

(assert (=> b!1412569 m!1302729))

(declare-fun m!1302733 () Bool)

(assert (=> b!1412569 m!1302733))

(declare-fun m!1302735 () Bool)

(assert (=> b!1412569 m!1302735))

(declare-fun m!1302737 () Bool)

(assert (=> b!1412567 m!1302737))

(declare-fun m!1302739 () Bool)

(assert (=> b!1412567 m!1302739))

(assert (=> b!1412567 m!1302739))

(declare-fun m!1302741 () Bool)

(assert (=> b!1412567 m!1302741))

(assert (=> b!1412565 m!1302739))

(assert (=> b!1412565 m!1302739))

(declare-fun m!1302743 () Bool)

(assert (=> b!1412565 m!1302743))

(declare-fun m!1302745 () Bool)

(assert (=> start!121642 m!1302745))

(declare-fun m!1302747 () Bool)

(assert (=> start!121642 m!1302747))

(declare-fun m!1302749 () Bool)

(assert (=> b!1412561 m!1302749))

(declare-fun m!1302751 () Bool)

(assert (=> b!1412562 m!1302751))

(declare-fun m!1302753 () Bool)

(assert (=> b!1412560 m!1302753))

(assert (=> b!1412560 m!1302753))

(declare-fun m!1302755 () Bool)

(assert (=> b!1412560 m!1302755))

(assert (=> b!1412568 m!1302739))

(assert (=> b!1412568 m!1302739))

(declare-fun m!1302757 () Bool)

(assert (=> b!1412568 m!1302757))

(assert (=> b!1412566 m!1302739))

(declare-fun m!1302759 () Bool)

(assert (=> b!1412566 m!1302759))

(assert (=> b!1412566 m!1302739))

(declare-fun m!1302761 () Bool)

(assert (=> b!1412566 m!1302761))

(declare-fun m!1302763 () Bool)

(assert (=> b!1412566 m!1302763))

(assert (=> b!1412566 m!1302739))

(declare-fun m!1302765 () Bool)

(assert (=> b!1412566 m!1302765))

(push 1)

