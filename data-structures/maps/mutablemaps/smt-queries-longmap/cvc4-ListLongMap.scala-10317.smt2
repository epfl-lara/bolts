; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121268 () Bool)

(assert start!121268)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96340 0))(
  ( (array!96341 (arr!46509 (Array (_ BitVec 32) (_ BitVec 64))) (size!47060 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96340)

(declare-fun e!797649 () Bool)

(declare-fun b!1409496 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10842 0))(
  ( (MissingZero!10842 (index!45744 (_ BitVec 32))) (Found!10842 (index!45745 (_ BitVec 32))) (Intermediate!10842 (undefined!11654 Bool) (index!45746 (_ BitVec 32)) (x!127334 (_ BitVec 32))) (Undefined!10842) (MissingVacant!10842 (index!45747 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96340 (_ BitVec 32)) SeekEntryResult!10842)

(assert (=> b!1409496 (= e!797649 (= (seekEntryOrOpen!0 (select (arr!46509 a!2901) j!112) a!2901 mask!2840) (Found!10842 j!112)))))

(declare-fun b!1409497 () Bool)

(declare-fun res!947328 () Bool)

(declare-fun e!797648 () Bool)

(assert (=> b!1409497 (=> (not res!947328) (not e!797648))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96340 (_ BitVec 32)) Bool)

(assert (=> b!1409497 (= res!947328 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1409498 () Bool)

(declare-fun res!947333 () Bool)

(assert (=> b!1409498 (=> (not res!947333) (not e!797648))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409498 (= res!947333 (validKeyInArray!0 (select (arr!46509 a!2901) i!1037)))))

(declare-fun b!1409499 () Bool)

(declare-fun res!947329 () Bool)

(assert (=> b!1409499 (=> (not res!947329) (not e!797648))))

(assert (=> b!1409499 (= res!947329 (and (= (size!47060 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47060 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47060 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1409500 () Bool)

(declare-fun e!797650 () Bool)

(assert (=> b!1409500 (= e!797648 (not e!797650))))

(declare-fun res!947330 () Bool)

(assert (=> b!1409500 (=> res!947330 e!797650)))

(declare-fun lt!620714 () SeekEntryResult!10842)

(assert (=> b!1409500 (= res!947330 (or (not (is-Intermediate!10842 lt!620714)) (undefined!11654 lt!620714)))))

(assert (=> b!1409500 e!797649))

(declare-fun res!947332 () Bool)

(assert (=> b!1409500 (=> (not res!947332) (not e!797649))))

(assert (=> b!1409500 (= res!947332 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47608 0))(
  ( (Unit!47609) )
))
(declare-fun lt!620716 () Unit!47608)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96340 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47608)

(assert (=> b!1409500 (= lt!620716 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96340 (_ BitVec 32)) SeekEntryResult!10842)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409500 (= lt!620714 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46509 a!2901) j!112) mask!2840) (select (arr!46509 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!947331 () Bool)

(assert (=> start!121268 (=> (not res!947331) (not e!797648))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121268 (= res!947331 (validMask!0 mask!2840))))

(assert (=> start!121268 e!797648))

(assert (=> start!121268 true))

(declare-fun array_inv!35454 (array!96340) Bool)

(assert (=> start!121268 (array_inv!35454 a!2901)))

(declare-fun b!1409501 () Bool)

(declare-fun res!947327 () Bool)

(assert (=> b!1409501 (=> (not res!947327) (not e!797648))))

(declare-datatypes ((List!33208 0))(
  ( (Nil!33205) (Cons!33204 (h!34467 (_ BitVec 64)) (t!47909 List!33208)) )
))
(declare-fun arrayNoDuplicates!0 (array!96340 (_ BitVec 32) List!33208) Bool)

(assert (=> b!1409501 (= res!947327 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33205))))

(declare-fun b!1409502 () Bool)

(assert (=> b!1409502 (= e!797650 true)))

(declare-fun lt!620715 () SeekEntryResult!10842)

(assert (=> b!1409502 (= lt!620715 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46509 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46509 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96341 (store (arr!46509 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47060 a!2901)) mask!2840))))

(declare-fun b!1409503 () Bool)

(declare-fun res!947334 () Bool)

(assert (=> b!1409503 (=> (not res!947334) (not e!797648))))

(assert (=> b!1409503 (= res!947334 (validKeyInArray!0 (select (arr!46509 a!2901) j!112)))))

(assert (= (and start!121268 res!947331) b!1409499))

(assert (= (and b!1409499 res!947329) b!1409498))

(assert (= (and b!1409498 res!947333) b!1409503))

(assert (= (and b!1409503 res!947334) b!1409497))

(assert (= (and b!1409497 res!947328) b!1409501))

(assert (= (and b!1409501 res!947327) b!1409500))

(assert (= (and b!1409500 res!947332) b!1409496))

(assert (= (and b!1409500 (not res!947330)) b!1409502))

(declare-fun m!1299331 () Bool)

(assert (=> start!121268 m!1299331))

(declare-fun m!1299333 () Bool)

(assert (=> start!121268 m!1299333))

(declare-fun m!1299335 () Bool)

(assert (=> b!1409496 m!1299335))

(assert (=> b!1409496 m!1299335))

(declare-fun m!1299337 () Bool)

(assert (=> b!1409496 m!1299337))

(declare-fun m!1299339 () Bool)

(assert (=> b!1409501 m!1299339))

(declare-fun m!1299341 () Bool)

(assert (=> b!1409498 m!1299341))

(assert (=> b!1409498 m!1299341))

(declare-fun m!1299343 () Bool)

(assert (=> b!1409498 m!1299343))

(assert (=> b!1409503 m!1299335))

(assert (=> b!1409503 m!1299335))

(declare-fun m!1299345 () Bool)

(assert (=> b!1409503 m!1299345))

(assert (=> b!1409500 m!1299335))

(declare-fun m!1299347 () Bool)

(assert (=> b!1409500 m!1299347))

(assert (=> b!1409500 m!1299335))

(declare-fun m!1299349 () Bool)

(assert (=> b!1409500 m!1299349))

(assert (=> b!1409500 m!1299347))

(assert (=> b!1409500 m!1299335))

(declare-fun m!1299351 () Bool)

(assert (=> b!1409500 m!1299351))

(declare-fun m!1299353 () Bool)

(assert (=> b!1409500 m!1299353))

(declare-fun m!1299355 () Bool)

(assert (=> b!1409497 m!1299355))

(declare-fun m!1299357 () Bool)

(assert (=> b!1409502 m!1299357))

(declare-fun m!1299359 () Bool)

(assert (=> b!1409502 m!1299359))

(assert (=> b!1409502 m!1299359))

(declare-fun m!1299361 () Bool)

(assert (=> b!1409502 m!1299361))

(assert (=> b!1409502 m!1299361))

(assert (=> b!1409502 m!1299359))

(declare-fun m!1299363 () Bool)

(assert (=> b!1409502 m!1299363))

(push 1)

(assert (not start!121268))

(assert (not b!1409502))

(assert (not b!1409498))

(assert (not b!1409497))

(assert (not b!1409500))

(assert (not b!1409496))

(assert (not b!1409503))

(assert (not b!1409501))

(check-sat)

(pop 1)

