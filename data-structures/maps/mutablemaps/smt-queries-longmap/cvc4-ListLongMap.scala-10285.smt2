; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120914 () Bool)

(assert start!120914)

(declare-fun b!1406346 () Bool)

(declare-fun e!796019 () Bool)

(assert (=> b!1406346 (= e!796019 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96139 0))(
  ( (array!96140 (arr!46413 (Array (_ BitVec 32) (_ BitVec 64))) (size!46964 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96139)

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10746 0))(
  ( (MissingZero!10746 (index!45360 (_ BitVec 32))) (Found!10746 (index!45361 (_ BitVec 32))) (Intermediate!10746 (undefined!11558 Bool) (index!45362 (_ BitVec 32)) (x!126964 (_ BitVec 32))) (Undefined!10746) (MissingVacant!10746 (index!45363 (_ BitVec 32))) )
))
(declare-fun lt!619320 () SeekEntryResult!10746)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96139 (_ BitVec 32)) SeekEntryResult!10746)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406346 (= lt!619320 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46413 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46413 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96140 (store (arr!46413 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46964 a!2901)) mask!2840))))

(declare-fun b!1406347 () Bool)

(declare-fun res!944675 () Bool)

(declare-fun e!796021 () Bool)

(assert (=> b!1406347 (=> (not res!944675) (not e!796021))))

(declare-datatypes ((List!33112 0))(
  ( (Nil!33109) (Cons!33108 (h!34362 (_ BitVec 64)) (t!47813 List!33112)) )
))
(declare-fun arrayNoDuplicates!0 (array!96139 (_ BitVec 32) List!33112) Bool)

(assert (=> b!1406347 (= res!944675 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33109))))

(declare-fun e!796022 () Bool)

(declare-fun b!1406348 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96139 (_ BitVec 32)) SeekEntryResult!10746)

(assert (=> b!1406348 (= e!796022 (= (seekEntryOrOpen!0 (select (arr!46413 a!2901) j!112) a!2901 mask!2840) (Found!10746 j!112)))))

(declare-fun b!1406349 () Bool)

(declare-fun res!944674 () Bool)

(assert (=> b!1406349 (=> (not res!944674) (not e!796021))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406349 (= res!944674 (validKeyInArray!0 (select (arr!46413 a!2901) j!112)))))

(declare-fun res!944676 () Bool)

(assert (=> start!120914 (=> (not res!944676) (not e!796021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120914 (= res!944676 (validMask!0 mask!2840))))

(assert (=> start!120914 e!796021))

(assert (=> start!120914 true))

(declare-fun array_inv!35358 (array!96139) Bool)

(assert (=> start!120914 (array_inv!35358 a!2901)))

(declare-fun b!1406350 () Bool)

(declare-fun res!944677 () Bool)

(assert (=> b!1406350 (=> (not res!944677) (not e!796021))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96139 (_ BitVec 32)) Bool)

(assert (=> b!1406350 (= res!944677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406351 () Bool)

(declare-fun res!944673 () Bool)

(assert (=> b!1406351 (=> (not res!944673) (not e!796021))))

(assert (=> b!1406351 (= res!944673 (validKeyInArray!0 (select (arr!46413 a!2901) i!1037)))))

(declare-fun b!1406352 () Bool)

(assert (=> b!1406352 (= e!796021 (not e!796019))))

(declare-fun res!944679 () Bool)

(assert (=> b!1406352 (=> res!944679 e!796019)))

(declare-fun lt!619321 () SeekEntryResult!10746)

(assert (=> b!1406352 (= res!944679 (or (not (is-Intermediate!10746 lt!619321)) (undefined!11558 lt!619321)))))

(assert (=> b!1406352 e!796022))

(declare-fun res!944672 () Bool)

(assert (=> b!1406352 (=> (not res!944672) (not e!796022))))

(assert (=> b!1406352 (= res!944672 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47416 0))(
  ( (Unit!47417) )
))
(declare-fun lt!619319 () Unit!47416)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96139 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47416)

(assert (=> b!1406352 (= lt!619319 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1406352 (= lt!619321 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46413 a!2901) j!112) mask!2840) (select (arr!46413 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406353 () Bool)

(declare-fun res!944678 () Bool)

(assert (=> b!1406353 (=> (not res!944678) (not e!796021))))

(assert (=> b!1406353 (= res!944678 (and (= (size!46964 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46964 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46964 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120914 res!944676) b!1406353))

(assert (= (and b!1406353 res!944678) b!1406351))

(assert (= (and b!1406351 res!944673) b!1406349))

(assert (= (and b!1406349 res!944674) b!1406350))

(assert (= (and b!1406350 res!944677) b!1406347))

(assert (= (and b!1406347 res!944675) b!1406352))

(assert (= (and b!1406352 res!944672) b!1406348))

(assert (= (and b!1406352 (not res!944679)) b!1406346))

(declare-fun m!1295545 () Bool)

(assert (=> b!1406351 m!1295545))

(assert (=> b!1406351 m!1295545))

(declare-fun m!1295547 () Bool)

(assert (=> b!1406351 m!1295547))

(declare-fun m!1295549 () Bool)

(assert (=> b!1406352 m!1295549))

(declare-fun m!1295551 () Bool)

(assert (=> b!1406352 m!1295551))

(assert (=> b!1406352 m!1295549))

(declare-fun m!1295553 () Bool)

(assert (=> b!1406352 m!1295553))

(assert (=> b!1406352 m!1295551))

(assert (=> b!1406352 m!1295549))

(declare-fun m!1295555 () Bool)

(assert (=> b!1406352 m!1295555))

(declare-fun m!1295557 () Bool)

(assert (=> b!1406352 m!1295557))

(assert (=> b!1406348 m!1295549))

(assert (=> b!1406348 m!1295549))

(declare-fun m!1295559 () Bool)

(assert (=> b!1406348 m!1295559))

(declare-fun m!1295561 () Bool)

(assert (=> b!1406347 m!1295561))

(declare-fun m!1295563 () Bool)

(assert (=> start!120914 m!1295563))

(declare-fun m!1295565 () Bool)

(assert (=> start!120914 m!1295565))

(declare-fun m!1295567 () Bool)

(assert (=> b!1406350 m!1295567))

(declare-fun m!1295569 () Bool)

(assert (=> b!1406346 m!1295569))

(declare-fun m!1295571 () Bool)

(assert (=> b!1406346 m!1295571))

(assert (=> b!1406346 m!1295571))

(declare-fun m!1295573 () Bool)

(assert (=> b!1406346 m!1295573))

(assert (=> b!1406346 m!1295573))

(assert (=> b!1406346 m!1295571))

(declare-fun m!1295575 () Bool)

(assert (=> b!1406346 m!1295575))

(assert (=> b!1406349 m!1295549))

(assert (=> b!1406349 m!1295549))

(declare-fun m!1295577 () Bool)

(assert (=> b!1406349 m!1295577))

(push 1)

(assert (not b!1406352))

(assert (not b!1406346))

(assert (not b!1406348))

(assert (not b!1406351))

(assert (not b!1406347))

(assert (not b!1406349))

(assert (not start!120914))

(assert (not b!1406350))

(check-sat)

(pop 1)

(push 1)

