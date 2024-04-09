; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121192 () Bool)

(assert start!121192)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96264 0))(
  ( (array!96265 (arr!46471 (Array (_ BitVec 32) (_ BitVec 64))) (size!47022 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96264)

(declare-fun b!1408584 () Bool)

(declare-fun e!797195 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10804 0))(
  ( (MissingZero!10804 (index!45592 (_ BitVec 32))) (Found!10804 (index!45593 (_ BitVec 32))) (Intermediate!10804 (undefined!11616 Bool) (index!45594 (_ BitVec 32)) (x!127200 (_ BitVec 32))) (Undefined!10804) (MissingVacant!10804 (index!45595 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96264 (_ BitVec 32)) SeekEntryResult!10804)

(assert (=> b!1408584 (= e!797195 (= (seekEntryOrOpen!0 (select (arr!46471 a!2901) j!112) a!2901 mask!2840) (Found!10804 j!112)))))

(declare-fun res!946417 () Bool)

(declare-fun e!797194 () Bool)

(assert (=> start!121192 (=> (not res!946417) (not e!797194))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121192 (= res!946417 (validMask!0 mask!2840))))

(assert (=> start!121192 e!797194))

(assert (=> start!121192 true))

(declare-fun array_inv!35416 (array!96264) Bool)

(assert (=> start!121192 (array_inv!35416 a!2901)))

(declare-fun b!1408585 () Bool)

(declare-fun e!797193 () Bool)

(assert (=> b!1408585 (= e!797194 (not e!797193))))

(declare-fun res!946416 () Bool)

(assert (=> b!1408585 (=> res!946416 e!797193)))

(declare-fun lt!620374 () SeekEntryResult!10804)

(assert (=> b!1408585 (= res!946416 (or (not (is-Intermediate!10804 lt!620374)) (undefined!11616 lt!620374)))))

(assert (=> b!1408585 e!797195))

(declare-fun res!946421 () Bool)

(assert (=> b!1408585 (=> (not res!946421) (not e!797195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96264 (_ BitVec 32)) Bool)

(assert (=> b!1408585 (= res!946421 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47532 0))(
  ( (Unit!47533) )
))
(declare-fun lt!620372 () Unit!47532)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96264 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47532)

(assert (=> b!1408585 (= lt!620372 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96264 (_ BitVec 32)) SeekEntryResult!10804)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408585 (= lt!620374 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46471 a!2901) j!112) mask!2840) (select (arr!46471 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408586 () Bool)

(assert (=> b!1408586 (= e!797193 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!620373 () SeekEntryResult!10804)

(assert (=> b!1408586 (= lt!620373 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46471 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46471 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96265 (store (arr!46471 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47022 a!2901)) mask!2840))))

(declare-fun b!1408587 () Bool)

(declare-fun res!946419 () Bool)

(assert (=> b!1408587 (=> (not res!946419) (not e!797194))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408587 (= res!946419 (validKeyInArray!0 (select (arr!46471 a!2901) j!112)))))

(declare-fun b!1408588 () Bool)

(declare-fun res!946422 () Bool)

(assert (=> b!1408588 (=> (not res!946422) (not e!797194))))

(assert (=> b!1408588 (= res!946422 (validKeyInArray!0 (select (arr!46471 a!2901) i!1037)))))

(declare-fun b!1408589 () Bool)

(declare-fun res!946415 () Bool)

(assert (=> b!1408589 (=> (not res!946415) (not e!797194))))

(declare-datatypes ((List!33170 0))(
  ( (Nil!33167) (Cons!33166 (h!34429 (_ BitVec 64)) (t!47871 List!33170)) )
))
(declare-fun arrayNoDuplicates!0 (array!96264 (_ BitVec 32) List!33170) Bool)

(assert (=> b!1408589 (= res!946415 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33167))))

(declare-fun b!1408590 () Bool)

(declare-fun res!946418 () Bool)

(assert (=> b!1408590 (=> (not res!946418) (not e!797194))))

(assert (=> b!1408590 (= res!946418 (and (= (size!47022 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47022 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47022 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408591 () Bool)

(declare-fun res!946420 () Bool)

(assert (=> b!1408591 (=> (not res!946420) (not e!797194))))

(assert (=> b!1408591 (= res!946420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121192 res!946417) b!1408590))

(assert (= (and b!1408590 res!946418) b!1408588))

(assert (= (and b!1408588 res!946422) b!1408587))

(assert (= (and b!1408587 res!946419) b!1408591))

(assert (= (and b!1408591 res!946420) b!1408589))

(assert (= (and b!1408589 res!946415) b!1408585))

(assert (= (and b!1408585 res!946421) b!1408584))

(assert (= (and b!1408585 (not res!946416)) b!1408586))

(declare-fun m!1298039 () Bool)

(assert (=> b!1408589 m!1298039))

(declare-fun m!1298041 () Bool)

(assert (=> b!1408585 m!1298041))

(declare-fun m!1298043 () Bool)

(assert (=> b!1408585 m!1298043))

(assert (=> b!1408585 m!1298041))

(declare-fun m!1298045 () Bool)

(assert (=> b!1408585 m!1298045))

(assert (=> b!1408585 m!1298043))

(assert (=> b!1408585 m!1298041))

(declare-fun m!1298047 () Bool)

(assert (=> b!1408585 m!1298047))

(declare-fun m!1298049 () Bool)

(assert (=> b!1408585 m!1298049))

(declare-fun m!1298051 () Bool)

(assert (=> b!1408586 m!1298051))

(declare-fun m!1298053 () Bool)

(assert (=> b!1408586 m!1298053))

(assert (=> b!1408586 m!1298053))

(declare-fun m!1298055 () Bool)

(assert (=> b!1408586 m!1298055))

(assert (=> b!1408586 m!1298055))

(assert (=> b!1408586 m!1298053))

(declare-fun m!1298057 () Bool)

(assert (=> b!1408586 m!1298057))

(declare-fun m!1298059 () Bool)

(assert (=> start!121192 m!1298059))

(declare-fun m!1298061 () Bool)

(assert (=> start!121192 m!1298061))

(assert (=> b!1408584 m!1298041))

(assert (=> b!1408584 m!1298041))

(declare-fun m!1298063 () Bool)

(assert (=> b!1408584 m!1298063))

(declare-fun m!1298065 () Bool)

(assert (=> b!1408591 m!1298065))

(declare-fun m!1298067 () Bool)

(assert (=> b!1408588 m!1298067))

(assert (=> b!1408588 m!1298067))

(declare-fun m!1298069 () Bool)

(assert (=> b!1408588 m!1298069))

(assert (=> b!1408587 m!1298041))

(assert (=> b!1408587 m!1298041))

(declare-fun m!1298071 () Bool)

(assert (=> b!1408587 m!1298071))

(push 1)

(assert (not b!1408584))

(assert (not start!121192))

(assert (not b!1408585))

(assert (not b!1408587))

(assert (not b!1408591))

(assert (not b!1408589))

(assert (not b!1408586))

(assert (not b!1408588))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

