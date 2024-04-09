; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121262 () Bool)

(assert start!121262)

(declare-fun b!1409424 () Bool)

(declare-fun e!797615 () Bool)

(declare-fun e!797614 () Bool)

(assert (=> b!1409424 (= e!797615 (not e!797614))))

(declare-fun res!947258 () Bool)

(assert (=> b!1409424 (=> res!947258 e!797614)))

(declare-datatypes ((SeekEntryResult!10839 0))(
  ( (MissingZero!10839 (index!45732 (_ BitVec 32))) (Found!10839 (index!45733 (_ BitVec 32))) (Intermediate!10839 (undefined!11651 Bool) (index!45734 (_ BitVec 32)) (x!127323 (_ BitVec 32))) (Undefined!10839) (MissingVacant!10839 (index!45735 (_ BitVec 32))) )
))
(declare-fun lt!620687 () SeekEntryResult!10839)

(assert (=> b!1409424 (= res!947258 (or (not (is-Intermediate!10839 lt!620687)) (undefined!11651 lt!620687)))))

(declare-fun e!797613 () Bool)

(assert (=> b!1409424 e!797613))

(declare-fun res!947256 () Bool)

(assert (=> b!1409424 (=> (not res!947256) (not e!797613))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96334 0))(
  ( (array!96335 (arr!46506 (Array (_ BitVec 32) (_ BitVec 64))) (size!47057 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96334)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96334 (_ BitVec 32)) Bool)

(assert (=> b!1409424 (= res!947256 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47602 0))(
  ( (Unit!47603) )
))
(declare-fun lt!620688 () Unit!47602)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96334 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47602)

(assert (=> b!1409424 (= lt!620688 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96334 (_ BitVec 32)) SeekEntryResult!10839)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409424 (= lt!620687 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46506 a!2901) j!112) mask!2840) (select (arr!46506 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409425 () Bool)

(declare-fun res!947261 () Bool)

(assert (=> b!1409425 (=> (not res!947261) (not e!797615))))

(declare-datatypes ((List!33205 0))(
  ( (Nil!33202) (Cons!33201 (h!34464 (_ BitVec 64)) (t!47906 List!33205)) )
))
(declare-fun arrayNoDuplicates!0 (array!96334 (_ BitVec 32) List!33205) Bool)

(assert (=> b!1409425 (= res!947261 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33202))))

(declare-fun b!1409426 () Bool)

(declare-fun res!947255 () Bool)

(assert (=> b!1409426 (=> (not res!947255) (not e!797615))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409426 (= res!947255 (validKeyInArray!0 (select (arr!46506 a!2901) j!112)))))

(declare-fun b!1409427 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96334 (_ BitVec 32)) SeekEntryResult!10839)

(assert (=> b!1409427 (= e!797613 (= (seekEntryOrOpen!0 (select (arr!46506 a!2901) j!112) a!2901 mask!2840) (Found!10839 j!112)))))

(declare-fun b!1409428 () Bool)

(declare-fun res!947257 () Bool)

(assert (=> b!1409428 (=> (not res!947257) (not e!797615))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1409428 (= res!947257 (and (= (size!47057 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47057 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47057 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1409429 () Bool)

(assert (=> b!1409429 (= e!797614 true)))

(declare-fun lt!620689 () SeekEntryResult!10839)

(assert (=> b!1409429 (= lt!620689 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46506 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46506 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96335 (store (arr!46506 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47057 a!2901)) mask!2840))))

(declare-fun res!947262 () Bool)

(assert (=> start!121262 (=> (not res!947262) (not e!797615))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121262 (= res!947262 (validMask!0 mask!2840))))

(assert (=> start!121262 e!797615))

(assert (=> start!121262 true))

(declare-fun array_inv!35451 (array!96334) Bool)

(assert (=> start!121262 (array_inv!35451 a!2901)))

(declare-fun b!1409430 () Bool)

(declare-fun res!947260 () Bool)

(assert (=> b!1409430 (=> (not res!947260) (not e!797615))))

(assert (=> b!1409430 (= res!947260 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1409431 () Bool)

(declare-fun res!947259 () Bool)

(assert (=> b!1409431 (=> (not res!947259) (not e!797615))))

(assert (=> b!1409431 (= res!947259 (validKeyInArray!0 (select (arr!46506 a!2901) i!1037)))))

(assert (= (and start!121262 res!947262) b!1409428))

(assert (= (and b!1409428 res!947257) b!1409431))

(assert (= (and b!1409431 res!947259) b!1409426))

(assert (= (and b!1409426 res!947255) b!1409430))

(assert (= (and b!1409430 res!947260) b!1409425))

(assert (= (and b!1409425 res!947261) b!1409424))

(assert (= (and b!1409424 res!947256) b!1409427))

(assert (= (and b!1409424 (not res!947258)) b!1409429))

(declare-fun m!1299229 () Bool)

(assert (=> b!1409425 m!1299229))

(declare-fun m!1299231 () Bool)

(assert (=> b!1409431 m!1299231))

(assert (=> b!1409431 m!1299231))

(declare-fun m!1299233 () Bool)

(assert (=> b!1409431 m!1299233))

(declare-fun m!1299235 () Bool)

(assert (=> b!1409426 m!1299235))

(assert (=> b!1409426 m!1299235))

(declare-fun m!1299237 () Bool)

(assert (=> b!1409426 m!1299237))

(declare-fun m!1299239 () Bool)

(assert (=> b!1409429 m!1299239))

(declare-fun m!1299241 () Bool)

(assert (=> b!1409429 m!1299241))

(assert (=> b!1409429 m!1299241))

(declare-fun m!1299243 () Bool)

(assert (=> b!1409429 m!1299243))

(assert (=> b!1409429 m!1299243))

(assert (=> b!1409429 m!1299241))

(declare-fun m!1299245 () Bool)

(assert (=> b!1409429 m!1299245))

(assert (=> b!1409427 m!1299235))

(assert (=> b!1409427 m!1299235))

(declare-fun m!1299247 () Bool)

(assert (=> b!1409427 m!1299247))

(declare-fun m!1299249 () Bool)

(assert (=> start!121262 m!1299249))

(declare-fun m!1299251 () Bool)

(assert (=> start!121262 m!1299251))

(declare-fun m!1299253 () Bool)

(assert (=> b!1409430 m!1299253))

(assert (=> b!1409424 m!1299235))

(declare-fun m!1299255 () Bool)

(assert (=> b!1409424 m!1299255))

(assert (=> b!1409424 m!1299235))

(declare-fun m!1299257 () Bool)

(assert (=> b!1409424 m!1299257))

(assert (=> b!1409424 m!1299255))

(assert (=> b!1409424 m!1299235))

(declare-fun m!1299259 () Bool)

(assert (=> b!1409424 m!1299259))

(declare-fun m!1299261 () Bool)

(assert (=> b!1409424 m!1299261))

(push 1)

(assert (not start!121262))

(assert (not b!1409425))

(assert (not b!1409424))

(assert (not b!1409426))

(assert (not b!1409427))

