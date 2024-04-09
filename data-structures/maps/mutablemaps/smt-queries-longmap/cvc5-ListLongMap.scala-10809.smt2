; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126544 () Bool)

(assert start!126544)

(declare-fun b!1483517 () Bool)

(declare-fun e!831869 () Bool)

(declare-fun e!831866 () Bool)

(assert (=> b!1483517 (= e!831869 e!831866)))

(declare-fun res!1008493 () Bool)

(assert (=> b!1483517 (=> (not res!1008493) (not e!831866))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12246 0))(
  ( (MissingZero!12246 (index!51375 (_ BitVec 32))) (Found!12246 (index!51376 (_ BitVec 32))) (Intermediate!12246 (undefined!13058 Bool) (index!51377 (_ BitVec 32)) (x!132965 (_ BitVec 32))) (Undefined!12246) (MissingVacant!12246 (index!51378 (_ BitVec 32))) )
))
(declare-fun lt!647421 () SeekEntryResult!12246)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1483517 (= res!1008493 (= lt!647421 (Intermediate!12246 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!647419 () (_ BitVec 64))

(declare-datatypes ((array!99423 0))(
  ( (array!99424 (arr!47983 (Array (_ BitVec 32) (_ BitVec 64))) (size!48534 (_ BitVec 32))) )
))
(declare-fun lt!647423 () array!99423)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99423 (_ BitVec 32)) SeekEntryResult!12246)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483517 (= lt!647421 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647419 mask!2687) lt!647419 lt!647423 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99423)

(assert (=> b!1483517 (= lt!647419 (select (store (arr!47983 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1483518 () Bool)

(declare-fun e!831861 () Bool)

(assert (=> b!1483518 (= e!831861 e!831869)))

(declare-fun res!1008495 () Bool)

(assert (=> b!1483518 (=> (not res!1008495) (not e!831869))))

(declare-fun lt!647422 () SeekEntryResult!12246)

(assert (=> b!1483518 (= res!1008495 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47983 a!2862) j!93) mask!2687) (select (arr!47983 a!2862) j!93) a!2862 mask!2687) lt!647422))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1483518 (= lt!647422 (Intermediate!12246 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1483519 () Bool)

(declare-fun res!1008496 () Bool)

(declare-fun e!831862 () Bool)

(assert (=> b!1483519 (=> (not res!1008496) (not e!831862))))

(declare-datatypes ((List!34664 0))(
  ( (Nil!34661) (Cons!34660 (h!36034 (_ BitVec 64)) (t!49365 List!34664)) )
))
(declare-fun arrayNoDuplicates!0 (array!99423 (_ BitVec 32) List!34664) Bool)

(assert (=> b!1483519 (= res!1008496 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34661))))

(declare-fun b!1483520 () Bool)

(assert (=> b!1483520 (= e!831862 e!831861)))

(declare-fun res!1008483 () Bool)

(assert (=> b!1483520 (=> (not res!1008483) (not e!831861))))

(assert (=> b!1483520 (= res!1008483 (= (select (store (arr!47983 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1483520 (= lt!647423 (array!99424 (store (arr!47983 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48534 a!2862)))))

(declare-fun res!1008500 () Bool)

(assert (=> start!126544 (=> (not res!1008500) (not e!831862))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126544 (= res!1008500 (validMask!0 mask!2687))))

(assert (=> start!126544 e!831862))

(assert (=> start!126544 true))

(declare-fun array_inv!36928 (array!99423) Bool)

(assert (=> start!126544 (array_inv!36928 a!2862)))

(declare-fun b!1483521 () Bool)

(declare-fun e!831863 () Bool)

(declare-fun e!831868 () Bool)

(assert (=> b!1483521 (= e!831863 e!831868)))

(declare-fun res!1008484 () Bool)

(assert (=> b!1483521 (=> res!1008484 e!831868)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!647420 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1483521 (= res!1008484 (or (and (= (select (arr!47983 a!2862) index!646) lt!647420) (= (select (arr!47983 a!2862) index!646) (select (arr!47983 a!2862) j!93))) (= (select (arr!47983 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483521 (= lt!647420 (select (store (arr!47983 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1483522 () Bool)

(declare-fun res!1008487 () Bool)

(assert (=> b!1483522 (=> (not res!1008487) (not e!831862))))

(assert (=> b!1483522 (= res!1008487 (and (= (size!48534 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48534 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48534 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1483523 () Bool)

(declare-fun e!831860 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99423 (_ BitVec 32)) SeekEntryResult!12246)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99423 (_ BitVec 32)) SeekEntryResult!12246)

(assert (=> b!1483523 (= e!831860 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647419 lt!647423 mask!2687) (seekEntryOrOpen!0 lt!647419 lt!647423 mask!2687)))))

(declare-fun b!1483524 () Bool)

(declare-fun e!831865 () Bool)

(assert (=> b!1483524 (= e!831865 true)))

(declare-fun lt!647425 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483524 (= lt!647425 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1483525 () Bool)

(assert (=> b!1483525 (= e!831866 (not e!831865))))

(declare-fun res!1008501 () Bool)

(assert (=> b!1483525 (=> res!1008501 e!831865)))

(assert (=> b!1483525 (= res!1008501 (or (and (= (select (arr!47983 a!2862) index!646) (select (store (arr!47983 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47983 a!2862) index!646) (select (arr!47983 a!2862) j!93))) (= (select (arr!47983 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483525 e!831863))

(declare-fun res!1008486 () Bool)

(assert (=> b!1483525 (=> (not res!1008486) (not e!831863))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99423 (_ BitVec 32)) Bool)

(assert (=> b!1483525 (= res!1008486 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49780 0))(
  ( (Unit!49781) )
))
(declare-fun lt!647424 () Unit!49780)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99423 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49780)

(assert (=> b!1483525 (= lt!647424 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1483526 () Bool)

(assert (=> b!1483526 (= e!831860 (= lt!647421 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647419 lt!647423 mask!2687)))))

(declare-fun b!1483527 () Bool)

(declare-fun e!831864 () Bool)

(assert (=> b!1483527 (= e!831868 e!831864)))

(declare-fun res!1008490 () Bool)

(assert (=> b!1483527 (=> (not res!1008490) (not e!831864))))

(assert (=> b!1483527 (= res!1008490 (and (= index!646 intermediateAfterIndex!19) (= lt!647420 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1483528 () Bool)

(declare-fun res!1008494 () Bool)

(assert (=> b!1483528 (=> (not res!1008494) (not e!831862))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1483528 (= res!1008494 (validKeyInArray!0 (select (arr!47983 a!2862) i!1006)))))

(declare-fun b!1483529 () Bool)

(declare-fun res!1008499 () Bool)

(assert (=> b!1483529 (=> (not res!1008499) (not e!831862))))

(assert (=> b!1483529 (= res!1008499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1483530 () Bool)

(declare-fun res!1008491 () Bool)

(assert (=> b!1483530 (=> (not res!1008491) (not e!831866))))

(assert (=> b!1483530 (= res!1008491 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1483531 () Bool)

(declare-fun res!1008489 () Bool)

(assert (=> b!1483531 (=> (not res!1008489) (not e!831869))))

(assert (=> b!1483531 (= res!1008489 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47983 a!2862) j!93) a!2862 mask!2687) lt!647422))))

(declare-fun b!1483532 () Bool)

(assert (=> b!1483532 (= e!831864 (= (seekEntryOrOpen!0 lt!647419 lt!647423 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647419 lt!647423 mask!2687)))))

(declare-fun b!1483533 () Bool)

(declare-fun res!1008498 () Bool)

(assert (=> b!1483533 (=> (not res!1008498) (not e!831862))))

(assert (=> b!1483533 (= res!1008498 (validKeyInArray!0 (select (arr!47983 a!2862) j!93)))))

(declare-fun b!1483534 () Bool)

(declare-fun res!1008497 () Bool)

(assert (=> b!1483534 (=> (not res!1008497) (not e!831863))))

(assert (=> b!1483534 (= res!1008497 (= (seekEntryOrOpen!0 (select (arr!47983 a!2862) j!93) a!2862 mask!2687) (Found!12246 j!93)))))

(declare-fun b!1483535 () Bool)

(declare-fun res!1008485 () Bool)

(assert (=> b!1483535 (=> (not res!1008485) (not e!831862))))

(assert (=> b!1483535 (= res!1008485 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48534 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48534 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48534 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1483536 () Bool)

(declare-fun res!1008492 () Bool)

(assert (=> b!1483536 (=> (not res!1008492) (not e!831866))))

(assert (=> b!1483536 (= res!1008492 e!831860)))

(declare-fun c!137042 () Bool)

(assert (=> b!1483536 (= c!137042 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1483537 () Bool)

(declare-fun res!1008488 () Bool)

(assert (=> b!1483537 (=> (not res!1008488) (not e!831863))))

(assert (=> b!1483537 (= res!1008488 (or (= (select (arr!47983 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47983 a!2862) intermediateBeforeIndex!19) (select (arr!47983 a!2862) j!93))))))

(assert (= (and start!126544 res!1008500) b!1483522))

(assert (= (and b!1483522 res!1008487) b!1483528))

(assert (= (and b!1483528 res!1008494) b!1483533))

(assert (= (and b!1483533 res!1008498) b!1483529))

(assert (= (and b!1483529 res!1008499) b!1483519))

(assert (= (and b!1483519 res!1008496) b!1483535))

(assert (= (and b!1483535 res!1008485) b!1483520))

(assert (= (and b!1483520 res!1008483) b!1483518))

(assert (= (and b!1483518 res!1008495) b!1483531))

(assert (= (and b!1483531 res!1008489) b!1483517))

(assert (= (and b!1483517 res!1008493) b!1483536))

(assert (= (and b!1483536 c!137042) b!1483526))

(assert (= (and b!1483536 (not c!137042)) b!1483523))

(assert (= (and b!1483536 res!1008492) b!1483530))

(assert (= (and b!1483530 res!1008491) b!1483525))

(assert (= (and b!1483525 res!1008486) b!1483534))

(assert (= (and b!1483534 res!1008497) b!1483537))

(assert (= (and b!1483537 res!1008488) b!1483521))

(assert (= (and b!1483521 (not res!1008484)) b!1483527))

(assert (= (and b!1483527 res!1008490) b!1483532))

(assert (= (and b!1483525 (not res!1008501)) b!1483524))

(declare-fun m!1369029 () Bool)

(assert (=> b!1483519 m!1369029))

(declare-fun m!1369031 () Bool)

(assert (=> b!1483529 m!1369031))

(declare-fun m!1369033 () Bool)

(assert (=> b!1483520 m!1369033))

(declare-fun m!1369035 () Bool)

(assert (=> b!1483520 m!1369035))

(declare-fun m!1369037 () Bool)

(assert (=> b!1483533 m!1369037))

(assert (=> b!1483533 m!1369037))

(declare-fun m!1369039 () Bool)

(assert (=> b!1483533 m!1369039))

(declare-fun m!1369041 () Bool)

(assert (=> b!1483525 m!1369041))

(assert (=> b!1483525 m!1369033))

(declare-fun m!1369043 () Bool)

(assert (=> b!1483525 m!1369043))

(declare-fun m!1369045 () Bool)

(assert (=> b!1483525 m!1369045))

(declare-fun m!1369047 () Bool)

(assert (=> b!1483525 m!1369047))

(assert (=> b!1483525 m!1369037))

(assert (=> b!1483518 m!1369037))

(assert (=> b!1483518 m!1369037))

(declare-fun m!1369049 () Bool)

(assert (=> b!1483518 m!1369049))

(assert (=> b!1483518 m!1369049))

(assert (=> b!1483518 m!1369037))

(declare-fun m!1369051 () Bool)

(assert (=> b!1483518 m!1369051))

(declare-fun m!1369053 () Bool)

(assert (=> b!1483523 m!1369053))

(declare-fun m!1369055 () Bool)

(assert (=> b!1483523 m!1369055))

(declare-fun m!1369057 () Bool)

(assert (=> b!1483524 m!1369057))

(declare-fun m!1369059 () Bool)

(assert (=> b!1483526 m!1369059))

(assert (=> b!1483534 m!1369037))

(assert (=> b!1483534 m!1369037))

(declare-fun m!1369061 () Bool)

(assert (=> b!1483534 m!1369061))

(assert (=> b!1483532 m!1369055))

(assert (=> b!1483532 m!1369053))

(assert (=> b!1483521 m!1369045))

(assert (=> b!1483521 m!1369037))

(assert (=> b!1483521 m!1369033))

(assert (=> b!1483521 m!1369043))

(declare-fun m!1369063 () Bool)

(assert (=> b!1483517 m!1369063))

(assert (=> b!1483517 m!1369063))

(declare-fun m!1369065 () Bool)

(assert (=> b!1483517 m!1369065))

(assert (=> b!1483517 m!1369033))

(declare-fun m!1369067 () Bool)

(assert (=> b!1483517 m!1369067))

(declare-fun m!1369069 () Bool)

(assert (=> b!1483528 m!1369069))

(assert (=> b!1483528 m!1369069))

(declare-fun m!1369071 () Bool)

(assert (=> b!1483528 m!1369071))

(declare-fun m!1369073 () Bool)

(assert (=> start!126544 m!1369073))

(declare-fun m!1369075 () Bool)

(assert (=> start!126544 m!1369075))

(declare-fun m!1369077 () Bool)

(assert (=> b!1483537 m!1369077))

(assert (=> b!1483537 m!1369037))

(assert (=> b!1483531 m!1369037))

(assert (=> b!1483531 m!1369037))

(declare-fun m!1369079 () Bool)

(assert (=> b!1483531 m!1369079))

(push 1)

