; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124710 () Bool)

(assert start!124710)

(declare-fun b!1444400 () Bool)

(declare-fun res!976497 () Bool)

(declare-fun e!813834 () Bool)

(assert (=> b!1444400 (=> (not res!976497) (not e!813834))))

(declare-datatypes ((array!98075 0))(
  ( (array!98076 (arr!47321 (Array (_ BitVec 32) (_ BitVec 64))) (size!47872 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98075)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1444400 (= res!976497 (validKeyInArray!0 (select (arr!47321 a!2862) j!93)))))

(declare-fun b!1444401 () Bool)

(declare-fun e!813833 () Bool)

(declare-fun e!813839 () Bool)

(assert (=> b!1444401 (= e!813833 (not e!813839))))

(declare-fun res!976496 () Bool)

(assert (=> b!1444401 (=> res!976496 e!813839)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1444401 (= res!976496 (or (not (= (select (arr!47321 a!2862) index!646) (select (store (arr!47321 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47321 a!2862) index!646) (select (arr!47321 a!2862) j!93)))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11596 0))(
  ( (MissingZero!11596 (index!48775 (_ BitVec 32))) (Found!11596 (index!48776 (_ BitVec 32))) (Intermediate!11596 (undefined!12408 Bool) (index!48777 (_ BitVec 32)) (x!130472 (_ BitVec 32))) (Undefined!11596) (MissingVacant!11596 (index!48778 (_ BitVec 32))) )
))
(declare-fun lt!634153 () SeekEntryResult!11596)

(assert (=> b!1444401 (and (= lt!634153 (Found!11596 j!93)) (or (= (select (arr!47321 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47321 a!2862) intermediateBeforeIndex!19) (select (arr!47321 a!2862) j!93))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98075 (_ BitVec 32)) SeekEntryResult!11596)

(assert (=> b!1444401 (= lt!634153 (seekEntryOrOpen!0 (select (arr!47321 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98075 (_ BitVec 32)) Bool)

(assert (=> b!1444401 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48636 0))(
  ( (Unit!48637) )
))
(declare-fun lt!634156 () Unit!48636)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98075 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48636)

(assert (=> b!1444401 (= lt!634156 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1444402 () Bool)

(declare-fun e!813838 () Bool)

(assert (=> b!1444402 (= e!813834 e!813838)))

(declare-fun res!976499 () Bool)

(assert (=> b!1444402 (=> (not res!976499) (not e!813838))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1444402 (= res!976499 (= (select (store (arr!47321 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!634155 () array!98075)

(assert (=> b!1444402 (= lt!634155 (array!98076 (store (arr!47321 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47872 a!2862)))))

(declare-fun b!1444403 () Bool)

(declare-fun e!813835 () Bool)

(assert (=> b!1444403 (= e!813838 e!813835)))

(declare-fun res!976506 () Bool)

(assert (=> b!1444403 (=> (not res!976506) (not e!813835))))

(declare-fun lt!634151 () SeekEntryResult!11596)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98075 (_ BitVec 32)) SeekEntryResult!11596)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1444403 (= res!976506 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47321 a!2862) j!93) mask!2687) (select (arr!47321 a!2862) j!93) a!2862 mask!2687) lt!634151))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1444403 (= lt!634151 (Intermediate!11596 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1444404 () Bool)

(declare-fun res!976508 () Bool)

(assert (=> b!1444404 (=> (not res!976508) (not e!813833))))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1444404 (= res!976508 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1444405 () Bool)

(declare-fun res!976498 () Bool)

(assert (=> b!1444405 (=> (not res!976498) (not e!813834))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1444405 (= res!976498 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47872 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47872 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47872 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1444406 () Bool)

(declare-fun lt!634152 () (_ BitVec 64))

(assert (=> b!1444406 (= e!813839 (validKeyInArray!0 lt!634152))))

(declare-fun b!1444407 () Bool)

(declare-fun res!976509 () Bool)

(assert (=> b!1444407 (=> (not res!976509) (not e!813834))))

(assert (=> b!1444407 (= res!976509 (and (= (size!47872 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47872 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47872 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1444408 () Bool)

(assert (=> b!1444408 (= e!813835 e!813833)))

(declare-fun res!976503 () Bool)

(assert (=> b!1444408 (=> (not res!976503) (not e!813833))))

(declare-fun lt!634154 () SeekEntryResult!11596)

(assert (=> b!1444408 (= res!976503 (= lt!634154 (Intermediate!11596 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1444408 (= lt!634154 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634152 mask!2687) lt!634152 lt!634155 mask!2687))))

(assert (=> b!1444408 (= lt!634152 (select (store (arr!47321 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1444409 () Bool)

(declare-fun e!813837 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98075 (_ BitVec 32)) SeekEntryResult!11596)

(assert (=> b!1444409 (= e!813837 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634152 lt!634155 mask!2687) (seekEntryOrOpen!0 lt!634152 lt!634155 mask!2687)))))

(declare-fun b!1444410 () Bool)

(assert (=> b!1444410 (= e!813837 (= lt!634154 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634152 lt!634155 mask!2687)))))

(declare-fun b!1444411 () Bool)

(declare-fun res!976502 () Bool)

(assert (=> b!1444411 (=> res!976502 e!813839)))

(assert (=> b!1444411 (= res!976502 (not (= lt!634153 (seekEntryOrOpen!0 lt!634152 lt!634155 mask!2687))))))

(declare-fun res!976500 () Bool)

(assert (=> start!124710 (=> (not res!976500) (not e!813834))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124710 (= res!976500 (validMask!0 mask!2687))))

(assert (=> start!124710 e!813834))

(assert (=> start!124710 true))

(declare-fun array_inv!36266 (array!98075) Bool)

(assert (=> start!124710 (array_inv!36266 a!2862)))

(declare-fun b!1444412 () Bool)

(declare-fun res!976505 () Bool)

(assert (=> b!1444412 (=> (not res!976505) (not e!813835))))

(assert (=> b!1444412 (= res!976505 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47321 a!2862) j!93) a!2862 mask!2687) lt!634151))))

(declare-fun b!1444413 () Bool)

(declare-fun res!976495 () Bool)

(assert (=> b!1444413 (=> (not res!976495) (not e!813834))))

(assert (=> b!1444413 (= res!976495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1444414 () Bool)

(declare-fun res!976494 () Bool)

(assert (=> b!1444414 (=> (not res!976494) (not e!813834))))

(assert (=> b!1444414 (= res!976494 (validKeyInArray!0 (select (arr!47321 a!2862) i!1006)))))

(declare-fun b!1444415 () Bool)

(declare-fun res!976507 () Bool)

(assert (=> b!1444415 (=> (not res!976507) (not e!813833))))

(assert (=> b!1444415 (= res!976507 e!813837)))

(declare-fun c!133466 () Bool)

(assert (=> b!1444415 (= c!133466 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1444416 () Bool)

(declare-fun res!976504 () Bool)

(assert (=> b!1444416 (=> res!976504 e!813839)))

(assert (=> b!1444416 (= res!976504 (bvslt mask!2687 #b00000000000000000000000000000000))))

(declare-fun b!1444417 () Bool)

(declare-fun res!976501 () Bool)

(assert (=> b!1444417 (=> (not res!976501) (not e!813834))))

(declare-datatypes ((List!34002 0))(
  ( (Nil!33999) (Cons!33998 (h!35348 (_ BitVec 64)) (t!48703 List!34002)) )
))
(declare-fun arrayNoDuplicates!0 (array!98075 (_ BitVec 32) List!34002) Bool)

(assert (=> b!1444417 (= res!976501 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33999))))

(assert (= (and start!124710 res!976500) b!1444407))

(assert (= (and b!1444407 res!976509) b!1444414))

(assert (= (and b!1444414 res!976494) b!1444400))

(assert (= (and b!1444400 res!976497) b!1444413))

(assert (= (and b!1444413 res!976495) b!1444417))

(assert (= (and b!1444417 res!976501) b!1444405))

(assert (= (and b!1444405 res!976498) b!1444402))

(assert (= (and b!1444402 res!976499) b!1444403))

(assert (= (and b!1444403 res!976506) b!1444412))

(assert (= (and b!1444412 res!976505) b!1444408))

(assert (= (and b!1444408 res!976503) b!1444415))

(assert (= (and b!1444415 c!133466) b!1444410))

(assert (= (and b!1444415 (not c!133466)) b!1444409))

(assert (= (and b!1444415 res!976507) b!1444404))

(assert (= (and b!1444404 res!976508) b!1444401))

(assert (= (and b!1444401 (not res!976496)) b!1444411))

(assert (= (and b!1444411 (not res!976502)) b!1444416))

(assert (= (and b!1444416 (not res!976504)) b!1444406))

(declare-fun m!1333477 () Bool)

(assert (=> b!1444403 m!1333477))

(assert (=> b!1444403 m!1333477))

(declare-fun m!1333479 () Bool)

(assert (=> b!1444403 m!1333479))

(assert (=> b!1444403 m!1333479))

(assert (=> b!1444403 m!1333477))

(declare-fun m!1333481 () Bool)

(assert (=> b!1444403 m!1333481))

(declare-fun m!1333483 () Bool)

(assert (=> b!1444401 m!1333483))

(declare-fun m!1333485 () Bool)

(assert (=> b!1444401 m!1333485))

(declare-fun m!1333487 () Bool)

(assert (=> b!1444401 m!1333487))

(declare-fun m!1333489 () Bool)

(assert (=> b!1444401 m!1333489))

(declare-fun m!1333491 () Bool)

(assert (=> b!1444401 m!1333491))

(assert (=> b!1444401 m!1333477))

(declare-fun m!1333493 () Bool)

(assert (=> b!1444401 m!1333493))

(declare-fun m!1333495 () Bool)

(assert (=> b!1444401 m!1333495))

(assert (=> b!1444401 m!1333477))

(declare-fun m!1333497 () Bool)

(assert (=> b!1444417 m!1333497))

(assert (=> b!1444400 m!1333477))

(assert (=> b!1444400 m!1333477))

(declare-fun m!1333499 () Bool)

(assert (=> b!1444400 m!1333499))

(declare-fun m!1333501 () Bool)

(assert (=> b!1444414 m!1333501))

(assert (=> b!1444414 m!1333501))

(declare-fun m!1333503 () Bool)

(assert (=> b!1444414 m!1333503))

(declare-fun m!1333505 () Bool)

(assert (=> b!1444410 m!1333505))

(assert (=> b!1444402 m!1333485))

(declare-fun m!1333507 () Bool)

(assert (=> b!1444402 m!1333507))

(declare-fun m!1333509 () Bool)

(assert (=> start!124710 m!1333509))

(declare-fun m!1333511 () Bool)

(assert (=> start!124710 m!1333511))

(declare-fun m!1333513 () Bool)

(assert (=> b!1444413 m!1333513))

(declare-fun m!1333515 () Bool)

(assert (=> b!1444408 m!1333515))

(assert (=> b!1444408 m!1333515))

(declare-fun m!1333517 () Bool)

(assert (=> b!1444408 m!1333517))

(assert (=> b!1444408 m!1333485))

(declare-fun m!1333519 () Bool)

(assert (=> b!1444408 m!1333519))

(declare-fun m!1333521 () Bool)

(assert (=> b!1444411 m!1333521))

(declare-fun m!1333523 () Bool)

(assert (=> b!1444406 m!1333523))

(assert (=> b!1444412 m!1333477))

(assert (=> b!1444412 m!1333477))

(declare-fun m!1333525 () Bool)

(assert (=> b!1444412 m!1333525))

(declare-fun m!1333527 () Bool)

(assert (=> b!1444409 m!1333527))

(assert (=> b!1444409 m!1333521))

(check-sat (not b!1444413) (not b!1444411) (not b!1444414) (not b!1444401) (not start!124710) (not b!1444406) (not b!1444417) (not b!1444403) (not b!1444412) (not b!1444410) (not b!1444409) (not b!1444400) (not b!1444408))
(check-sat)
