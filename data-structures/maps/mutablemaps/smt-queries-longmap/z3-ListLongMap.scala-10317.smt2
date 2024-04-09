; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121266 () Bool)

(assert start!121266)

(declare-fun b!1409472 () Bool)

(declare-fun res!947308 () Bool)

(declare-fun e!797638 () Bool)

(assert (=> b!1409472 (=> (not res!947308) (not e!797638))))

(declare-datatypes ((array!96338 0))(
  ( (array!96339 (arr!46508 (Array (_ BitVec 32) (_ BitVec 64))) (size!47059 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96338)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409472 (= res!947308 (validKeyInArray!0 (select (arr!46508 a!2901) i!1037)))))

(declare-fun b!1409473 () Bool)

(declare-fun res!947306 () Bool)

(assert (=> b!1409473 (=> (not res!947306) (not e!797638))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1409473 (= res!947306 (validKeyInArray!0 (select (arr!46508 a!2901) j!112)))))

(declare-fun b!1409474 () Bool)

(declare-fun res!947309 () Bool)

(assert (=> b!1409474 (=> (not res!947309) (not e!797638))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96338 (_ BitVec 32)) Bool)

(assert (=> b!1409474 (= res!947309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1409475 () Bool)

(declare-fun e!797639 () Bool)

(assert (=> b!1409475 (= e!797638 (not e!797639))))

(declare-fun res!947303 () Bool)

(assert (=> b!1409475 (=> res!947303 e!797639)))

(declare-datatypes ((SeekEntryResult!10841 0))(
  ( (MissingZero!10841 (index!45740 (_ BitVec 32))) (Found!10841 (index!45741 (_ BitVec 32))) (Intermediate!10841 (undefined!11653 Bool) (index!45742 (_ BitVec 32)) (x!127333 (_ BitVec 32))) (Undefined!10841) (MissingVacant!10841 (index!45743 (_ BitVec 32))) )
))
(declare-fun lt!620705 () SeekEntryResult!10841)

(get-info :version)

(assert (=> b!1409475 (= res!947303 (or (not ((_ is Intermediate!10841) lt!620705)) (undefined!11653 lt!620705)))))

(declare-fun e!797637 () Bool)

(assert (=> b!1409475 e!797637))

(declare-fun res!947310 () Bool)

(assert (=> b!1409475 (=> (not res!947310) (not e!797637))))

(assert (=> b!1409475 (= res!947310 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47606 0))(
  ( (Unit!47607) )
))
(declare-fun lt!620707 () Unit!47606)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96338 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47606)

(assert (=> b!1409475 (= lt!620707 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96338 (_ BitVec 32)) SeekEntryResult!10841)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409475 (= lt!620705 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46508 a!2901) j!112) mask!2840) (select (arr!46508 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409476 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96338 (_ BitVec 32)) SeekEntryResult!10841)

(assert (=> b!1409476 (= e!797637 (= (seekEntryOrOpen!0 (select (arr!46508 a!2901) j!112) a!2901 mask!2840) (Found!10841 j!112)))))

(declare-fun b!1409477 () Bool)

(declare-fun res!947305 () Bool)

(assert (=> b!1409477 (=> (not res!947305) (not e!797638))))

(declare-datatypes ((List!33207 0))(
  ( (Nil!33204) (Cons!33203 (h!34466 (_ BitVec 64)) (t!47908 List!33207)) )
))
(declare-fun arrayNoDuplicates!0 (array!96338 (_ BitVec 32) List!33207) Bool)

(assert (=> b!1409477 (= res!947305 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33204))))

(declare-fun res!947307 () Bool)

(assert (=> start!121266 (=> (not res!947307) (not e!797638))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121266 (= res!947307 (validMask!0 mask!2840))))

(assert (=> start!121266 e!797638))

(assert (=> start!121266 true))

(declare-fun array_inv!35453 (array!96338) Bool)

(assert (=> start!121266 (array_inv!35453 a!2901)))

(declare-fun b!1409478 () Bool)

(declare-fun res!947304 () Bool)

(assert (=> b!1409478 (=> (not res!947304) (not e!797638))))

(assert (=> b!1409478 (= res!947304 (and (= (size!47059 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47059 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47059 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1409479 () Bool)

(assert (=> b!1409479 (= e!797639 true)))

(declare-fun lt!620706 () SeekEntryResult!10841)

(assert (=> b!1409479 (= lt!620706 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46508 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46508 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96339 (store (arr!46508 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47059 a!2901)) mask!2840))))

(assert (= (and start!121266 res!947307) b!1409478))

(assert (= (and b!1409478 res!947304) b!1409472))

(assert (= (and b!1409472 res!947308) b!1409473))

(assert (= (and b!1409473 res!947306) b!1409474))

(assert (= (and b!1409474 res!947309) b!1409477))

(assert (= (and b!1409477 res!947305) b!1409475))

(assert (= (and b!1409475 res!947310) b!1409476))

(assert (= (and b!1409475 (not res!947303)) b!1409479))

(declare-fun m!1299297 () Bool)

(assert (=> b!1409476 m!1299297))

(assert (=> b!1409476 m!1299297))

(declare-fun m!1299299 () Bool)

(assert (=> b!1409476 m!1299299))

(declare-fun m!1299301 () Bool)

(assert (=> b!1409477 m!1299301))

(assert (=> b!1409475 m!1299297))

(declare-fun m!1299303 () Bool)

(assert (=> b!1409475 m!1299303))

(assert (=> b!1409475 m!1299297))

(declare-fun m!1299305 () Bool)

(assert (=> b!1409475 m!1299305))

(assert (=> b!1409475 m!1299303))

(assert (=> b!1409475 m!1299297))

(declare-fun m!1299307 () Bool)

(assert (=> b!1409475 m!1299307))

(declare-fun m!1299309 () Bool)

(assert (=> b!1409475 m!1299309))

(declare-fun m!1299311 () Bool)

(assert (=> b!1409479 m!1299311))

(declare-fun m!1299313 () Bool)

(assert (=> b!1409479 m!1299313))

(assert (=> b!1409479 m!1299313))

(declare-fun m!1299315 () Bool)

(assert (=> b!1409479 m!1299315))

(assert (=> b!1409479 m!1299315))

(assert (=> b!1409479 m!1299313))

(declare-fun m!1299317 () Bool)

(assert (=> b!1409479 m!1299317))

(declare-fun m!1299319 () Bool)

(assert (=> start!121266 m!1299319))

(declare-fun m!1299321 () Bool)

(assert (=> start!121266 m!1299321))

(assert (=> b!1409473 m!1299297))

(assert (=> b!1409473 m!1299297))

(declare-fun m!1299323 () Bool)

(assert (=> b!1409473 m!1299323))

(declare-fun m!1299325 () Bool)

(assert (=> b!1409472 m!1299325))

(assert (=> b!1409472 m!1299325))

(declare-fun m!1299327 () Bool)

(assert (=> b!1409472 m!1299327))

(declare-fun m!1299329 () Bool)

(assert (=> b!1409474 m!1299329))

(check-sat (not b!1409479) (not b!1409474) (not b!1409472) (not b!1409476) (not b!1409473) (not start!121266) (not b!1409475) (not b!1409477))
