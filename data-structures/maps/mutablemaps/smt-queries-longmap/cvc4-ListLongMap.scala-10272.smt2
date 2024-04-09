; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120836 () Bool)

(assert start!120836)

(declare-fun b!1405429 () Bool)

(declare-fun res!943758 () Bool)

(declare-fun e!795572 () Bool)

(assert (=> b!1405429 (=> (not res!943758) (not e!795572))))

(declare-datatypes ((array!96061 0))(
  ( (array!96062 (arr!46374 (Array (_ BitVec 32) (_ BitVec 64))) (size!46925 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96061)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405429 (= res!943758 (validKeyInArray!0 (select (arr!46374 a!2901) j!112)))))

(declare-fun res!943755 () Bool)

(assert (=> start!120836 (=> (not res!943755) (not e!795572))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120836 (= res!943755 (validMask!0 mask!2840))))

(assert (=> start!120836 e!795572))

(assert (=> start!120836 true))

(declare-fun array_inv!35319 (array!96061) Bool)

(assert (=> start!120836 (array_inv!35319 a!2901)))

(declare-fun b!1405430 () Bool)

(assert (=> b!1405430 (= e!795572 (not true))))

(declare-fun e!795570 () Bool)

(assert (=> b!1405430 e!795570))

(declare-fun res!943759 () Bool)

(assert (=> b!1405430 (=> (not res!943759) (not e!795570))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96061 (_ BitVec 32)) Bool)

(assert (=> b!1405430 (= res!943759 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47338 0))(
  ( (Unit!47339) )
))
(declare-fun lt!618987 () Unit!47338)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96061 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47338)

(assert (=> b!1405430 (= lt!618987 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10707 0))(
  ( (MissingZero!10707 (index!45204 (_ BitVec 32))) (Found!10707 (index!45205 (_ BitVec 32))) (Intermediate!10707 (undefined!11519 Bool) (index!45206 (_ BitVec 32)) (x!126821 (_ BitVec 32))) (Undefined!10707) (MissingVacant!10707 (index!45207 (_ BitVec 32))) )
))
(declare-fun lt!618988 () SeekEntryResult!10707)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96061 (_ BitVec 32)) SeekEntryResult!10707)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405430 (= lt!618988 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46374 a!2901) j!112) mask!2840) (select (arr!46374 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405431 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96061 (_ BitVec 32)) SeekEntryResult!10707)

(assert (=> b!1405431 (= e!795570 (= (seekEntryOrOpen!0 (select (arr!46374 a!2901) j!112) a!2901 mask!2840) (Found!10707 j!112)))))

(declare-fun b!1405432 () Bool)

(declare-fun res!943760 () Bool)

(assert (=> b!1405432 (=> (not res!943760) (not e!795572))))

(declare-datatypes ((List!33073 0))(
  ( (Nil!33070) (Cons!33069 (h!34323 (_ BitVec 64)) (t!47774 List!33073)) )
))
(declare-fun arrayNoDuplicates!0 (array!96061 (_ BitVec 32) List!33073) Bool)

(assert (=> b!1405432 (= res!943760 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33070))))

(declare-fun b!1405433 () Bool)

(declare-fun res!943757 () Bool)

(assert (=> b!1405433 (=> (not res!943757) (not e!795572))))

(assert (=> b!1405433 (= res!943757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405434 () Bool)

(declare-fun res!943761 () Bool)

(assert (=> b!1405434 (=> (not res!943761) (not e!795572))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1405434 (= res!943761 (and (= (size!46925 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46925 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46925 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405435 () Bool)

(declare-fun res!943756 () Bool)

(assert (=> b!1405435 (=> (not res!943756) (not e!795572))))

(assert (=> b!1405435 (= res!943756 (validKeyInArray!0 (select (arr!46374 a!2901) i!1037)))))

(assert (= (and start!120836 res!943755) b!1405434))

(assert (= (and b!1405434 res!943761) b!1405435))

(assert (= (and b!1405435 res!943756) b!1405429))

(assert (= (and b!1405429 res!943758) b!1405433))

(assert (= (and b!1405433 res!943757) b!1405432))

(assert (= (and b!1405432 res!943760) b!1405430))

(assert (= (and b!1405430 res!943759) b!1405431))

(declare-fun m!1294287 () Bool)

(assert (=> b!1405432 m!1294287))

(declare-fun m!1294289 () Bool)

(assert (=> b!1405429 m!1294289))

(assert (=> b!1405429 m!1294289))

(declare-fun m!1294291 () Bool)

(assert (=> b!1405429 m!1294291))

(declare-fun m!1294293 () Bool)

(assert (=> start!120836 m!1294293))

(declare-fun m!1294295 () Bool)

(assert (=> start!120836 m!1294295))

(assert (=> b!1405431 m!1294289))

(assert (=> b!1405431 m!1294289))

(declare-fun m!1294297 () Bool)

(assert (=> b!1405431 m!1294297))

(assert (=> b!1405430 m!1294289))

(declare-fun m!1294299 () Bool)

(assert (=> b!1405430 m!1294299))

(assert (=> b!1405430 m!1294289))

(declare-fun m!1294301 () Bool)

(assert (=> b!1405430 m!1294301))

(assert (=> b!1405430 m!1294299))

(assert (=> b!1405430 m!1294289))

(declare-fun m!1294303 () Bool)

(assert (=> b!1405430 m!1294303))

(declare-fun m!1294305 () Bool)

(assert (=> b!1405430 m!1294305))

(declare-fun m!1294307 () Bool)

(assert (=> b!1405435 m!1294307))

(assert (=> b!1405435 m!1294307))

(declare-fun m!1294309 () Bool)

(assert (=> b!1405435 m!1294309))

(declare-fun m!1294311 () Bool)

(assert (=> b!1405433 m!1294311))

(push 1)

(assert (not b!1405431))

(assert (not b!1405435))

(assert (not b!1405429))

(assert (not b!1405432))

(assert (not start!120836))

(assert (not b!1405430))

(assert (not b!1405433))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

