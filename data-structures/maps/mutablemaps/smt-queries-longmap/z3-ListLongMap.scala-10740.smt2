; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125622 () Bool)

(assert start!125622)

(declare-fun b!1469350 () Bool)

(declare-fun e!824937 () Bool)

(assert (=> b!1469350 (= e!824937 false)))

(declare-fun lt!642502 () Bool)

(declare-fun e!824935 () Bool)

(assert (=> b!1469350 (= lt!642502 e!824935)))

(declare-fun c!135212 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1469350 (= c!135212 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!997958 () Bool)

(declare-fun e!824936 () Bool)

(assert (=> start!125622 (=> (not res!997958) (not e!824936))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125622 (= res!997958 (validMask!0 mask!2687))))

(assert (=> start!125622 e!824936))

(assert (=> start!125622 true))

(declare-datatypes ((array!98987 0))(
  ( (array!98988 (arr!47777 (Array (_ BitVec 32) (_ BitVec 64))) (size!48328 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98987)

(declare-fun array_inv!36722 (array!98987) Bool)

(assert (=> start!125622 (array_inv!36722 a!2862)))

(declare-fun b!1469351 () Bool)

(declare-fun res!997956 () Bool)

(assert (=> b!1469351 (=> (not res!997956) (not e!824936))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469351 (= res!997956 (validKeyInArray!0 (select (arr!47777 a!2862) i!1006)))))

(declare-fun b!1469352 () Bool)

(declare-fun lt!642501 () (_ BitVec 64))

(declare-fun lt!642499 () array!98987)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12040 0))(
  ( (MissingZero!12040 (index!50551 (_ BitVec 32))) (Found!12040 (index!50552 (_ BitVec 32))) (Intermediate!12040 (undefined!12852 Bool) (index!50553 (_ BitVec 32)) (x!132132 (_ BitVec 32))) (Undefined!12040) (MissingVacant!12040 (index!50554 (_ BitVec 32))) )
))
(declare-fun lt!642500 () SeekEntryResult!12040)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98987 (_ BitVec 32)) SeekEntryResult!12040)

(assert (=> b!1469352 (= e!824935 (not (= lt!642500 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642501 lt!642499 mask!2687))))))

(declare-fun b!1469353 () Bool)

(declare-fun e!824934 () Bool)

(declare-fun e!824938 () Bool)

(assert (=> b!1469353 (= e!824934 e!824938)))

(declare-fun res!997952 () Bool)

(assert (=> b!1469353 (=> (not res!997952) (not e!824938))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!642498 () SeekEntryResult!12040)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469353 (= res!997952 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47777 a!2862) j!93) mask!2687) (select (arr!47777 a!2862) j!93) a!2862 mask!2687) lt!642498))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1469353 (= lt!642498 (Intermediate!12040 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469354 () Bool)

(declare-fun res!997957 () Bool)

(assert (=> b!1469354 (=> (not res!997957) (not e!824936))))

(declare-datatypes ((List!34458 0))(
  ( (Nil!34455) (Cons!34454 (h!35804 (_ BitVec 64)) (t!49159 List!34458)) )
))
(declare-fun arrayNoDuplicates!0 (array!98987 (_ BitVec 32) List!34458) Bool)

(assert (=> b!1469354 (= res!997957 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34455))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1469355 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98987 (_ BitVec 32)) SeekEntryResult!12040)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98987 (_ BitVec 32)) SeekEntryResult!12040)

(assert (=> b!1469355 (= e!824935 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642501 lt!642499 mask!2687) (seekEntryOrOpen!0 lt!642501 lt!642499 mask!2687))))))

(declare-fun b!1469356 () Bool)

(declare-fun res!997961 () Bool)

(assert (=> b!1469356 (=> (not res!997961) (not e!824936))))

(assert (=> b!1469356 (= res!997961 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48328 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48328 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48328 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1469357 () Bool)

(assert (=> b!1469357 (= e!824936 e!824934)))

(declare-fun res!997953 () Bool)

(assert (=> b!1469357 (=> (not res!997953) (not e!824934))))

(assert (=> b!1469357 (= res!997953 (= (select (store (arr!47777 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1469357 (= lt!642499 (array!98988 (store (arr!47777 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48328 a!2862)))))

(declare-fun b!1469358 () Bool)

(assert (=> b!1469358 (= e!824938 e!824937)))

(declare-fun res!997960 () Bool)

(assert (=> b!1469358 (=> (not res!997960) (not e!824937))))

(assert (=> b!1469358 (= res!997960 (= lt!642500 (Intermediate!12040 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1469358 (= lt!642500 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642501 mask!2687) lt!642501 lt!642499 mask!2687))))

(assert (=> b!1469358 (= lt!642501 (select (store (arr!47777 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1469359 () Bool)

(declare-fun res!997955 () Bool)

(assert (=> b!1469359 (=> (not res!997955) (not e!824938))))

(assert (=> b!1469359 (= res!997955 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47777 a!2862) j!93) a!2862 mask!2687) lt!642498))))

(declare-fun b!1469360 () Bool)

(declare-fun res!997959 () Bool)

(assert (=> b!1469360 (=> (not res!997959) (not e!824936))))

(assert (=> b!1469360 (= res!997959 (validKeyInArray!0 (select (arr!47777 a!2862) j!93)))))

(declare-fun b!1469361 () Bool)

(declare-fun res!997954 () Bool)

(assert (=> b!1469361 (=> (not res!997954) (not e!824936))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98987 (_ BitVec 32)) Bool)

(assert (=> b!1469361 (= res!997954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1469362 () Bool)

(declare-fun res!997962 () Bool)

(assert (=> b!1469362 (=> (not res!997962) (not e!824936))))

(assert (=> b!1469362 (= res!997962 (and (= (size!48328 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48328 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48328 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125622 res!997958) b!1469362))

(assert (= (and b!1469362 res!997962) b!1469351))

(assert (= (and b!1469351 res!997956) b!1469360))

(assert (= (and b!1469360 res!997959) b!1469361))

(assert (= (and b!1469361 res!997954) b!1469354))

(assert (= (and b!1469354 res!997957) b!1469356))

(assert (= (and b!1469356 res!997961) b!1469357))

(assert (= (and b!1469357 res!997953) b!1469353))

(assert (= (and b!1469353 res!997952) b!1469359))

(assert (= (and b!1469359 res!997955) b!1469358))

(assert (= (and b!1469358 res!997960) b!1469350))

(assert (= (and b!1469350 c!135212) b!1469352))

(assert (= (and b!1469350 (not c!135212)) b!1469355))

(declare-fun m!1356587 () Bool)

(assert (=> b!1469361 m!1356587))

(declare-fun m!1356589 () Bool)

(assert (=> b!1469355 m!1356589))

(declare-fun m!1356591 () Bool)

(assert (=> b!1469355 m!1356591))

(declare-fun m!1356593 () Bool)

(assert (=> b!1469351 m!1356593))

(assert (=> b!1469351 m!1356593))

(declare-fun m!1356595 () Bool)

(assert (=> b!1469351 m!1356595))

(declare-fun m!1356597 () Bool)

(assert (=> b!1469359 m!1356597))

(assert (=> b!1469359 m!1356597))

(declare-fun m!1356599 () Bool)

(assert (=> b!1469359 m!1356599))

(assert (=> b!1469353 m!1356597))

(assert (=> b!1469353 m!1356597))

(declare-fun m!1356601 () Bool)

(assert (=> b!1469353 m!1356601))

(assert (=> b!1469353 m!1356601))

(assert (=> b!1469353 m!1356597))

(declare-fun m!1356603 () Bool)

(assert (=> b!1469353 m!1356603))

(assert (=> b!1469360 m!1356597))

(assert (=> b!1469360 m!1356597))

(declare-fun m!1356605 () Bool)

(assert (=> b!1469360 m!1356605))

(declare-fun m!1356607 () Bool)

(assert (=> start!125622 m!1356607))

(declare-fun m!1356609 () Bool)

(assert (=> start!125622 m!1356609))

(declare-fun m!1356611 () Bool)

(assert (=> b!1469357 m!1356611))

(declare-fun m!1356613 () Bool)

(assert (=> b!1469357 m!1356613))

(declare-fun m!1356615 () Bool)

(assert (=> b!1469358 m!1356615))

(assert (=> b!1469358 m!1356615))

(declare-fun m!1356617 () Bool)

(assert (=> b!1469358 m!1356617))

(assert (=> b!1469358 m!1356611))

(declare-fun m!1356619 () Bool)

(assert (=> b!1469358 m!1356619))

(declare-fun m!1356621 () Bool)

(assert (=> b!1469352 m!1356621))

(declare-fun m!1356623 () Bool)

(assert (=> b!1469354 m!1356623))

(check-sat (not b!1469359) (not start!125622) (not b!1469361) (not b!1469358) (not b!1469351) (not b!1469355) (not b!1469353) (not b!1469352) (not b!1469354) (not b!1469360))
