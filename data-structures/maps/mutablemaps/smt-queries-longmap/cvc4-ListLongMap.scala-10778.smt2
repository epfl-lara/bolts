; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126212 () Bool)

(assert start!126212)

(declare-fun b!1477484 () Bool)

(declare-fun e!828899 () Bool)

(declare-fun e!828897 () Bool)

(assert (=> b!1477484 (= e!828899 e!828897)))

(declare-fun res!1003711 () Bool)

(assert (=> b!1477484 (=> (not res!1003711) (not e!828897))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12155 0))(
  ( (MissingZero!12155 (index!51011 (_ BitVec 32))) (Found!12155 (index!51012 (_ BitVec 32))) (Intermediate!12155 (undefined!12967 Bool) (index!51013 (_ BitVec 32)) (x!132605 (_ BitVec 32))) (Undefined!12155) (MissingVacant!12155 (index!51014 (_ BitVec 32))) )
))
(declare-fun lt!645329 () SeekEntryResult!12155)

(assert (=> b!1477484 (= res!1003711 (= lt!645329 (Intermediate!12155 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!99235 0))(
  ( (array!99236 (arr!47892 (Array (_ BitVec 32) (_ BitVec 64))) (size!48443 (_ BitVec 32))) )
))
(declare-fun lt!645330 () array!99235)

(declare-fun lt!645332 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99235 (_ BitVec 32)) SeekEntryResult!12155)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1477484 (= lt!645329 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645332 mask!2687) lt!645332 lt!645330 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99235)

(assert (=> b!1477484 (= lt!645332 (select (store (arr!47892 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1477485 () Bool)

(declare-fun e!828892 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1477485 (= e!828892 (= lt!645329 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645332 lt!645330 mask!2687)))))

(declare-fun b!1477486 () Bool)

(declare-fun res!1003717 () Bool)

(declare-fun e!828891 () Bool)

(assert (=> b!1477486 (=> (not res!1003717) (not e!828891))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1477486 (= res!1003717 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48443 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48443 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48443 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1477487 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99235 (_ BitVec 32)) SeekEntryResult!12155)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99235 (_ BitVec 32)) SeekEntryResult!12155)

(assert (=> b!1477487 (= e!828892 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645332 lt!645330 mask!2687) (seekEntryOrOpen!0 lt!645332 lt!645330 mask!2687)))))

(declare-fun b!1477488 () Bool)

(declare-fun e!828894 () Bool)

(declare-fun e!828896 () Bool)

(assert (=> b!1477488 (= e!828894 e!828896)))

(declare-fun res!1003707 () Bool)

(assert (=> b!1477488 (=> res!1003707 e!828896)))

(assert (=> b!1477488 (= res!1003707 (or (and (= (select (arr!47892 a!2862) index!646) (select (store (arr!47892 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47892 a!2862) index!646) (select (arr!47892 a!2862) j!93))) (not (= (select (arr!47892 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1477489 () Bool)

(declare-fun res!1003704 () Bool)

(assert (=> b!1477489 (=> (not res!1003704) (not e!828891))))

(declare-datatypes ((List!34573 0))(
  ( (Nil!34570) (Cons!34569 (h!35937 (_ BitVec 64)) (t!49274 List!34573)) )
))
(declare-fun arrayNoDuplicates!0 (array!99235 (_ BitVec 32) List!34573) Bool)

(assert (=> b!1477489 (= res!1003704 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34570))))

(declare-fun b!1477490 () Bool)

(declare-fun res!1003719 () Bool)

(assert (=> b!1477490 (=> (not res!1003719) (not e!828899))))

(declare-fun lt!645334 () SeekEntryResult!12155)

(assert (=> b!1477490 (= res!1003719 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47892 a!2862) j!93) a!2862 mask!2687) lt!645334))))

(declare-fun b!1477491 () Bool)

(declare-fun e!828898 () Bool)

(assert (=> b!1477491 (= e!828898 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1477493 () Bool)

(declare-fun res!1003709 () Bool)

(assert (=> b!1477493 (=> (not res!1003709) (not e!828891))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1477493 (= res!1003709 (validKeyInArray!0 (select (arr!47892 a!2862) j!93)))))

(declare-fun b!1477494 () Bool)

(assert (=> b!1477494 (= e!828896 e!828898)))

(declare-fun res!1003706 () Bool)

(assert (=> b!1477494 (=> (not res!1003706) (not e!828898))))

(declare-fun lt!645333 () SeekEntryResult!12155)

(assert (=> b!1477494 (= res!1003706 (= lt!645333 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47892 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1477495 () Bool)

(declare-fun res!1003716 () Bool)

(assert (=> b!1477495 (=> (not res!1003716) (not e!828891))))

(assert (=> b!1477495 (= res!1003716 (and (= (size!48443 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48443 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48443 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1477496 () Bool)

(declare-fun res!1003712 () Bool)

(assert (=> b!1477496 (=> (not res!1003712) (not e!828891))))

(assert (=> b!1477496 (= res!1003712 (validKeyInArray!0 (select (arr!47892 a!2862) i!1006)))))

(declare-fun b!1477497 () Bool)

(assert (=> b!1477497 (= e!828897 (not true))))

(assert (=> b!1477497 e!828894))

(declare-fun res!1003708 () Bool)

(assert (=> b!1477497 (=> (not res!1003708) (not e!828894))))

(assert (=> b!1477497 (= res!1003708 (and (= lt!645333 (Found!12155 j!93)) (or (= (select (arr!47892 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47892 a!2862) intermediateBeforeIndex!19) (select (arr!47892 a!2862) j!93)))))))

(assert (=> b!1477497 (= lt!645333 (seekEntryOrOpen!0 (select (arr!47892 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99235 (_ BitVec 32)) Bool)

(assert (=> b!1477497 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49598 0))(
  ( (Unit!49599) )
))
(declare-fun lt!645331 () Unit!49598)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99235 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49598)

(assert (=> b!1477497 (= lt!645331 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!1003718 () Bool)

(assert (=> start!126212 (=> (not res!1003718) (not e!828891))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126212 (= res!1003718 (validMask!0 mask!2687))))

(assert (=> start!126212 e!828891))

(assert (=> start!126212 true))

(declare-fun array_inv!36837 (array!99235) Bool)

(assert (=> start!126212 (array_inv!36837 a!2862)))

(declare-fun b!1477492 () Bool)

(declare-fun res!1003713 () Bool)

(assert (=> b!1477492 (=> (not res!1003713) (not e!828897))))

(assert (=> b!1477492 (= res!1003713 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1477498 () Bool)

(declare-fun e!828893 () Bool)

(assert (=> b!1477498 (= e!828893 e!828899)))

(declare-fun res!1003715 () Bool)

(assert (=> b!1477498 (=> (not res!1003715) (not e!828899))))

(assert (=> b!1477498 (= res!1003715 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47892 a!2862) j!93) mask!2687) (select (arr!47892 a!2862) j!93) a!2862 mask!2687) lt!645334))))

(assert (=> b!1477498 (= lt!645334 (Intermediate!12155 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1477499 () Bool)

(declare-fun res!1003710 () Bool)

(assert (=> b!1477499 (=> (not res!1003710) (not e!828897))))

(assert (=> b!1477499 (= res!1003710 e!828892)))

(declare-fun c!136412 () Bool)

(assert (=> b!1477499 (= c!136412 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1477500 () Bool)

(declare-fun res!1003714 () Bool)

(assert (=> b!1477500 (=> (not res!1003714) (not e!828891))))

(assert (=> b!1477500 (= res!1003714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1477501 () Bool)

(assert (=> b!1477501 (= e!828891 e!828893)))

(declare-fun res!1003705 () Bool)

(assert (=> b!1477501 (=> (not res!1003705) (not e!828893))))

(assert (=> b!1477501 (= res!1003705 (= (select (store (arr!47892 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1477501 (= lt!645330 (array!99236 (store (arr!47892 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48443 a!2862)))))

(assert (= (and start!126212 res!1003718) b!1477495))

(assert (= (and b!1477495 res!1003716) b!1477496))

(assert (= (and b!1477496 res!1003712) b!1477493))

(assert (= (and b!1477493 res!1003709) b!1477500))

(assert (= (and b!1477500 res!1003714) b!1477489))

(assert (= (and b!1477489 res!1003704) b!1477486))

(assert (= (and b!1477486 res!1003717) b!1477501))

(assert (= (and b!1477501 res!1003705) b!1477498))

(assert (= (and b!1477498 res!1003715) b!1477490))

(assert (= (and b!1477490 res!1003719) b!1477484))

(assert (= (and b!1477484 res!1003711) b!1477499))

(assert (= (and b!1477499 c!136412) b!1477485))

(assert (= (and b!1477499 (not c!136412)) b!1477487))

(assert (= (and b!1477499 res!1003710) b!1477492))

(assert (= (and b!1477492 res!1003713) b!1477497))

(assert (= (and b!1477497 res!1003708) b!1477488))

(assert (= (and b!1477488 (not res!1003707)) b!1477494))

(assert (= (and b!1477494 res!1003706) b!1477491))

(declare-fun m!1363487 () Bool)

(assert (=> start!126212 m!1363487))

(declare-fun m!1363489 () Bool)

(assert (=> start!126212 m!1363489))

(declare-fun m!1363491 () Bool)

(assert (=> b!1477493 m!1363491))

(assert (=> b!1477493 m!1363491))

(declare-fun m!1363493 () Bool)

(assert (=> b!1477493 m!1363493))

(assert (=> b!1477494 m!1363491))

(assert (=> b!1477494 m!1363491))

(declare-fun m!1363495 () Bool)

(assert (=> b!1477494 m!1363495))

(declare-fun m!1363497 () Bool)

(assert (=> b!1477488 m!1363497))

(declare-fun m!1363499 () Bool)

(assert (=> b!1477488 m!1363499))

(declare-fun m!1363501 () Bool)

(assert (=> b!1477488 m!1363501))

(assert (=> b!1477488 m!1363491))

(declare-fun m!1363503 () Bool)

(assert (=> b!1477496 m!1363503))

(assert (=> b!1477496 m!1363503))

(declare-fun m!1363505 () Bool)

(assert (=> b!1477496 m!1363505))

(declare-fun m!1363507 () Bool)

(assert (=> b!1477485 m!1363507))

(declare-fun m!1363509 () Bool)

(assert (=> b!1477489 m!1363509))

(declare-fun m!1363511 () Bool)

(assert (=> b!1477500 m!1363511))

(assert (=> b!1477501 m!1363499))

(declare-fun m!1363513 () Bool)

(assert (=> b!1477501 m!1363513))

(declare-fun m!1363515 () Bool)

(assert (=> b!1477487 m!1363515))

(declare-fun m!1363517 () Bool)

(assert (=> b!1477487 m!1363517))

(assert (=> b!1477490 m!1363491))

(assert (=> b!1477490 m!1363491))

(declare-fun m!1363519 () Bool)

(assert (=> b!1477490 m!1363519))

(declare-fun m!1363521 () Bool)

(assert (=> b!1477484 m!1363521))

(assert (=> b!1477484 m!1363521))

(declare-fun m!1363523 () Bool)

(assert (=> b!1477484 m!1363523))

(assert (=> b!1477484 m!1363499))

(declare-fun m!1363525 () Bool)

(assert (=> b!1477484 m!1363525))

(assert (=> b!1477498 m!1363491))

(assert (=> b!1477498 m!1363491))

(declare-fun m!1363527 () Bool)

(assert (=> b!1477498 m!1363527))

(assert (=> b!1477498 m!1363527))

(assert (=> b!1477498 m!1363491))

(declare-fun m!1363529 () Bool)

(assert (=> b!1477498 m!1363529))

(declare-fun m!1363531 () Bool)

(assert (=> b!1477497 m!1363531))

(declare-fun m!1363533 () Bool)

(assert (=> b!1477497 m!1363533))

(assert (=> b!1477497 m!1363491))

(declare-fun m!1363535 () Bool)

(assert (=> b!1477497 m!1363535))

(declare-fun m!1363537 () Bool)

(assert (=> b!1477497 m!1363537))

(assert (=> b!1477497 m!1363491))

(push 1)

