; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124538 () Bool)

(assert start!124538)

(declare-fun b!1440474 () Bool)

(declare-fun res!973016 () Bool)

(declare-fun e!812204 () Bool)

(assert (=> b!1440474 (=> (not res!973016) (not e!812204))))

(declare-datatypes ((array!97903 0))(
  ( (array!97904 (arr!47235 (Array (_ BitVec 32) (_ BitVec 64))) (size!47786 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97903)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97903 (_ BitVec 32)) Bool)

(assert (=> b!1440474 (= res!973016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440475 () Bool)

(declare-fun res!973011 () Bool)

(assert (=> b!1440475 (=> (not res!973011) (not e!812204))))

(declare-datatypes ((List!33916 0))(
  ( (Nil!33913) (Cons!33912 (h!35262 (_ BitVec 64)) (t!48617 List!33916)) )
))
(declare-fun arrayNoDuplicates!0 (array!97903 (_ BitVec 32) List!33916) Bool)

(assert (=> b!1440475 (= res!973011 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33913))))

(declare-fun b!1440476 () Bool)

(declare-fun res!973017 () Bool)

(assert (=> b!1440476 (=> (not res!973017) (not e!812204))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1440476 (= res!973017 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47786 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47786 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47786 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47235 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440477 () Bool)

(declare-fun res!973012 () Bool)

(declare-fun e!812203 () Bool)

(assert (=> b!1440477 (=> (not res!973012) (not e!812203))))

(assert (=> b!1440477 (= res!973012 (and (bvsgt x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (bvslt index!646 (bvadd #b00000000000000000000000000000001 mask!2687)) (bvslt intermediateAfterIndex!19 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun b!1440478 () Bool)

(declare-fun res!973014 () Bool)

(assert (=> b!1440478 (=> (not res!973014) (not e!812204))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1440478 (= res!973014 (and (= (size!47786 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47786 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47786 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440479 () Bool)

(declare-fun res!973019 () Bool)

(assert (=> b!1440479 (=> (not res!973019) (not e!812203))))

(declare-datatypes ((SeekEntryResult!11510 0))(
  ( (MissingZero!11510 (index!48431 (_ BitVec 32))) (Found!11510 (index!48432 (_ BitVec 32))) (Intermediate!11510 (undefined!12322 Bool) (index!48433 (_ BitVec 32)) (x!130154 (_ BitVec 32))) (Undefined!11510) (MissingVacant!11510 (index!48434 (_ BitVec 32))) )
))
(declare-fun lt!632923 () SeekEntryResult!11510)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97903 (_ BitVec 32)) SeekEntryResult!11510)

(assert (=> b!1440479 (= res!973019 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47235 a!2862) j!93) a!2862 mask!2687) lt!632923))))

(declare-fun b!1440481 () Bool)

(declare-fun res!973013 () Bool)

(assert (=> b!1440481 (=> (not res!973013) (not e!812204))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440481 (= res!973013 (validKeyInArray!0 (select (arr!47235 a!2862) j!93)))))

(declare-fun b!1440482 () Bool)

(declare-fun res!973018 () Bool)

(assert (=> b!1440482 (=> (not res!973018) (not e!812203))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440482 (= res!973018 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47235 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47235 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97904 (store (arr!47235 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47786 a!2862)) mask!2687) (Intermediate!11510 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1440483 () Bool)

(declare-fun res!973020 () Bool)

(assert (=> b!1440483 (=> (not res!973020) (not e!812204))))

(assert (=> b!1440483 (= res!973020 (validKeyInArray!0 (select (arr!47235 a!2862) i!1006)))))

(declare-fun b!1440484 () Bool)

(assert (=> b!1440484 (= e!812204 e!812203)))

(declare-fun res!973010 () Bool)

(assert (=> b!1440484 (=> (not res!973010) (not e!812203))))

(assert (=> b!1440484 (= res!973010 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47235 a!2862) j!93) mask!2687) (select (arr!47235 a!2862) j!93) a!2862 mask!2687) lt!632923))))

(assert (=> b!1440484 (= lt!632923 (Intermediate!11510 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!973015 () Bool)

(assert (=> start!124538 (=> (not res!973015) (not e!812204))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124538 (= res!973015 (validMask!0 mask!2687))))

(assert (=> start!124538 e!812204))

(assert (=> start!124538 true))

(declare-fun array_inv!36180 (array!97903) Bool)

(assert (=> start!124538 (array_inv!36180 a!2862)))

(declare-fun b!1440480 () Bool)

(assert (=> b!1440480 (= e!812203 (not (validKeyInArray!0 (select (store (arr!47235 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))))

(assert (= (and start!124538 res!973015) b!1440478))

(assert (= (and b!1440478 res!973014) b!1440483))

(assert (= (and b!1440483 res!973020) b!1440481))

(assert (= (and b!1440481 res!973013) b!1440474))

(assert (= (and b!1440474 res!973016) b!1440475))

(assert (= (and b!1440475 res!973011) b!1440476))

(assert (= (and b!1440476 res!973017) b!1440484))

(assert (= (and b!1440484 res!973010) b!1440479))

(assert (= (and b!1440479 res!973019) b!1440482))

(assert (= (and b!1440482 res!973018) b!1440477))

(assert (= (and b!1440477 res!973012) b!1440480))

(declare-fun m!1329731 () Bool)

(assert (=> b!1440484 m!1329731))

(assert (=> b!1440484 m!1329731))

(declare-fun m!1329733 () Bool)

(assert (=> b!1440484 m!1329733))

(assert (=> b!1440484 m!1329733))

(assert (=> b!1440484 m!1329731))

(declare-fun m!1329735 () Bool)

(assert (=> b!1440484 m!1329735))

(declare-fun m!1329737 () Bool)

(assert (=> b!1440480 m!1329737))

(declare-fun m!1329739 () Bool)

(assert (=> b!1440480 m!1329739))

(assert (=> b!1440480 m!1329739))

(declare-fun m!1329741 () Bool)

(assert (=> b!1440480 m!1329741))

(assert (=> b!1440476 m!1329737))

(declare-fun m!1329743 () Bool)

(assert (=> b!1440476 m!1329743))

(declare-fun m!1329745 () Bool)

(assert (=> start!124538 m!1329745))

(declare-fun m!1329747 () Bool)

(assert (=> start!124538 m!1329747))

(declare-fun m!1329749 () Bool)

(assert (=> b!1440475 m!1329749))

(assert (=> b!1440482 m!1329737))

(assert (=> b!1440482 m!1329739))

(assert (=> b!1440482 m!1329739))

(declare-fun m!1329751 () Bool)

(assert (=> b!1440482 m!1329751))

(assert (=> b!1440482 m!1329751))

(assert (=> b!1440482 m!1329739))

(declare-fun m!1329753 () Bool)

(assert (=> b!1440482 m!1329753))

(declare-fun m!1329755 () Bool)

(assert (=> b!1440483 m!1329755))

(assert (=> b!1440483 m!1329755))

(declare-fun m!1329757 () Bool)

(assert (=> b!1440483 m!1329757))

(assert (=> b!1440481 m!1329731))

(assert (=> b!1440481 m!1329731))

(declare-fun m!1329759 () Bool)

(assert (=> b!1440481 m!1329759))

(assert (=> b!1440479 m!1329731))

(assert (=> b!1440479 m!1329731))

(declare-fun m!1329761 () Bool)

(assert (=> b!1440479 m!1329761))

(declare-fun m!1329763 () Bool)

(assert (=> b!1440474 m!1329763))

(push 1)

(assert (not b!1440480))

(assert (not b!1440475))

(assert (not b!1440479))

(assert (not b!1440474))

(assert (not b!1440483))

(assert (not b!1440481))

(assert (not b!1440482))

(assert (not b!1440484))

(assert (not start!124538))

(check-sat)

(pop 1)

(push 1)

(check-sat)

