; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121270 () Bool)

(assert start!121270)

(declare-fun res!947353 () Bool)

(declare-fun e!797662 () Bool)

(assert (=> start!121270 (=> (not res!947353) (not e!797662))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121270 (= res!947353 (validMask!0 mask!2840))))

(assert (=> start!121270 e!797662))

(assert (=> start!121270 true))

(declare-datatypes ((array!96342 0))(
  ( (array!96343 (arr!46510 (Array (_ BitVec 32) (_ BitVec 64))) (size!47061 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96342)

(declare-fun array_inv!35455 (array!96342) Bool)

(assert (=> start!121270 (array_inv!35455 a!2901)))

(declare-fun b!1409520 () Bool)

(declare-fun e!797661 () Bool)

(assert (=> b!1409520 (= e!797662 (not e!797661))))

(declare-fun res!947356 () Bool)

(assert (=> b!1409520 (=> res!947356 e!797661)))

(declare-datatypes ((SeekEntryResult!10843 0))(
  ( (MissingZero!10843 (index!45748 (_ BitVec 32))) (Found!10843 (index!45749 (_ BitVec 32))) (Intermediate!10843 (undefined!11655 Bool) (index!45750 (_ BitVec 32)) (x!127343 (_ BitVec 32))) (Undefined!10843) (MissingVacant!10843 (index!45751 (_ BitVec 32))) )
))
(declare-fun lt!620723 () SeekEntryResult!10843)

(assert (=> b!1409520 (= res!947356 (or (not (is-Intermediate!10843 lt!620723)) (undefined!11655 lt!620723)))))

(declare-fun e!797663 () Bool)

(assert (=> b!1409520 e!797663))

(declare-fun res!947351 () Bool)

(assert (=> b!1409520 (=> (not res!947351) (not e!797663))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96342 (_ BitVec 32)) Bool)

(assert (=> b!1409520 (= res!947351 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47610 0))(
  ( (Unit!47611) )
))
(declare-fun lt!620725 () Unit!47610)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96342 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47610)

(assert (=> b!1409520 (= lt!620725 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96342 (_ BitVec 32)) SeekEntryResult!10843)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409520 (= lt!620723 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46510 a!2901) j!112) mask!2840) (select (arr!46510 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409521 () Bool)

(declare-fun res!947357 () Bool)

(assert (=> b!1409521 (=> (not res!947357) (not e!797662))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409521 (= res!947357 (validKeyInArray!0 (select (arr!46510 a!2901) i!1037)))))

(declare-fun b!1409522 () Bool)

(assert (=> b!1409522 (= e!797661 true)))

(declare-fun lt!620724 () SeekEntryResult!10843)

(assert (=> b!1409522 (= lt!620724 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46510 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46510 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96343 (store (arr!46510 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47061 a!2901)) mask!2840))))

(declare-fun b!1409523 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96342 (_ BitVec 32)) SeekEntryResult!10843)

(assert (=> b!1409523 (= e!797663 (= (seekEntryOrOpen!0 (select (arr!46510 a!2901) j!112) a!2901 mask!2840) (Found!10843 j!112)))))

(declare-fun b!1409524 () Bool)

(declare-fun res!947352 () Bool)

(assert (=> b!1409524 (=> (not res!947352) (not e!797662))))

(assert (=> b!1409524 (= res!947352 (and (= (size!47061 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47061 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47061 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1409525 () Bool)

(declare-fun res!947358 () Bool)

(assert (=> b!1409525 (=> (not res!947358) (not e!797662))))

(declare-datatypes ((List!33209 0))(
  ( (Nil!33206) (Cons!33205 (h!34468 (_ BitVec 64)) (t!47910 List!33209)) )
))
(declare-fun arrayNoDuplicates!0 (array!96342 (_ BitVec 32) List!33209) Bool)

(assert (=> b!1409525 (= res!947358 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33206))))

(declare-fun b!1409526 () Bool)

(declare-fun res!947355 () Bool)

(assert (=> b!1409526 (=> (not res!947355) (not e!797662))))

(assert (=> b!1409526 (= res!947355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1409527 () Bool)

(declare-fun res!947354 () Bool)

(assert (=> b!1409527 (=> (not res!947354) (not e!797662))))

(assert (=> b!1409527 (= res!947354 (validKeyInArray!0 (select (arr!46510 a!2901) j!112)))))

(assert (= (and start!121270 res!947353) b!1409524))

(assert (= (and b!1409524 res!947352) b!1409521))

(assert (= (and b!1409521 res!947357) b!1409527))

(assert (= (and b!1409527 res!947354) b!1409526))

(assert (= (and b!1409526 res!947355) b!1409525))

(assert (= (and b!1409525 res!947358) b!1409520))

(assert (= (and b!1409520 res!947351) b!1409523))

(assert (= (and b!1409520 (not res!947356)) b!1409522))

(declare-fun m!1299365 () Bool)

(assert (=> b!1409523 m!1299365))

(assert (=> b!1409523 m!1299365))

(declare-fun m!1299367 () Bool)

(assert (=> b!1409523 m!1299367))

(assert (=> b!1409527 m!1299365))

(assert (=> b!1409527 m!1299365))

(declare-fun m!1299369 () Bool)

(assert (=> b!1409527 m!1299369))

(declare-fun m!1299371 () Bool)

(assert (=> b!1409521 m!1299371))

(assert (=> b!1409521 m!1299371))

(declare-fun m!1299373 () Bool)

(assert (=> b!1409521 m!1299373))

(declare-fun m!1299375 () Bool)

(assert (=> start!121270 m!1299375))

(declare-fun m!1299377 () Bool)

(assert (=> start!121270 m!1299377))

(declare-fun m!1299379 () Bool)

(assert (=> b!1409526 m!1299379))

(assert (=> b!1409520 m!1299365))

(declare-fun m!1299381 () Bool)

(assert (=> b!1409520 m!1299381))

(assert (=> b!1409520 m!1299365))

(declare-fun m!1299383 () Bool)

(assert (=> b!1409520 m!1299383))

(assert (=> b!1409520 m!1299381))

(assert (=> b!1409520 m!1299365))

(declare-fun m!1299385 () Bool)

(assert (=> b!1409520 m!1299385))

(declare-fun m!1299387 () Bool)

(assert (=> b!1409520 m!1299387))

(declare-fun m!1299389 () Bool)

(assert (=> b!1409522 m!1299389))

(declare-fun m!1299391 () Bool)

(assert (=> b!1409522 m!1299391))

(assert (=> b!1409522 m!1299391))

(declare-fun m!1299393 () Bool)

(assert (=> b!1409522 m!1299393))

(assert (=> b!1409522 m!1299393))

(assert (=> b!1409522 m!1299391))

(declare-fun m!1299395 () Bool)

(assert (=> b!1409522 m!1299395))

(declare-fun m!1299397 () Bool)

(assert (=> b!1409525 m!1299397))

(push 1)

(assert (not b!1409520))

(assert (not b!1409521))

(assert (not b!1409522))

(assert (not b!1409526))

(assert (not b!1409523))

(assert (not start!121270))

(assert (not b!1409527))

(assert (not b!1409525))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

