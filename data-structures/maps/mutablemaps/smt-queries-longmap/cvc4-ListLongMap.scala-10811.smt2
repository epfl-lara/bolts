; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126560 () Bool)

(assert start!126560)

(declare-fun res!1008946 () Bool)

(declare-fun e!832100 () Bool)

(assert (=> start!126560 (=> (not res!1008946) (not e!832100))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126560 (= res!1008946 (validMask!0 mask!2687))))

(assert (=> start!126560 e!832100))

(assert (=> start!126560 true))

(declare-datatypes ((array!99439 0))(
  ( (array!99440 (arr!47991 (Array (_ BitVec 32) (_ BitVec 64))) (size!48542 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99439)

(declare-fun array_inv!36936 (array!99439) Bool)

(assert (=> start!126560 (array_inv!36936 a!2862)))

(declare-fun b!1484021 () Bool)

(declare-fun res!1008940 () Bool)

(declare-fun e!832105 () Bool)

(assert (=> b!1484021 (=> (not res!1008940) (not e!832105))))

(declare-fun e!832106 () Bool)

(assert (=> b!1484021 (= res!1008940 e!832106)))

(declare-fun c!137066 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1484021 (= c!137066 (bvsle x!665 intermediateAfterX!19))))

(declare-datatypes ((SeekEntryResult!12254 0))(
  ( (MissingZero!12254 (index!51407 (_ BitVec 32))) (Found!12254 (index!51408 (_ BitVec 32))) (Intermediate!12254 (undefined!13066 Bool) (index!51409 (_ BitVec 32)) (x!132989 (_ BitVec 32))) (Undefined!12254) (MissingVacant!12254 (index!51410 (_ BitVec 32))) )
))
(declare-fun lt!647591 () SeekEntryResult!12254)

(declare-fun lt!647589 () array!99439)

(declare-fun lt!647590 () (_ BitVec 64))

(declare-fun b!1484022 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99439 (_ BitVec 32)) SeekEntryResult!12254)

(assert (=> b!1484022 (= e!832106 (= lt!647591 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647590 lt!647589 mask!2687)))))

(declare-fun b!1484023 () Bool)

(declare-fun res!1008947 () Bool)

(assert (=> b!1484023 (=> (not res!1008947) (not e!832100))))

(declare-datatypes ((List!34672 0))(
  ( (Nil!34669) (Cons!34668 (h!36042 (_ BitVec 64)) (t!49373 List!34672)) )
))
(declare-fun arrayNoDuplicates!0 (array!99439 (_ BitVec 32) List!34672) Bool)

(assert (=> b!1484023 (= res!1008947 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34669))))

(declare-fun b!1484024 () Bool)

(declare-fun e!832107 () Bool)

(assert (=> b!1484024 (= e!832107 true)))

(declare-fun lt!647592 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484024 (= lt!647592 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1484025 () Bool)

(declare-fun e!832103 () Bool)

(assert (=> b!1484025 (= e!832103 e!832105)))

(declare-fun res!1008950 () Bool)

(assert (=> b!1484025 (=> (not res!1008950) (not e!832105))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1484025 (= res!1008950 (= lt!647591 (Intermediate!12254 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484025 (= lt!647591 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647590 mask!2687) lt!647590 lt!647589 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1484025 (= lt!647590 (select (store (arr!47991 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1484026 () Bool)

(declare-fun e!832101 () Bool)

(declare-fun e!832104 () Bool)

(assert (=> b!1484026 (= e!832101 e!832104)))

(declare-fun res!1008941 () Bool)

(assert (=> b!1484026 (=> res!1008941 e!832104)))

(declare-fun lt!647593 () (_ BitVec 64))

(assert (=> b!1484026 (= res!1008941 (or (and (= (select (arr!47991 a!2862) index!646) lt!647593) (= (select (arr!47991 a!2862) index!646) (select (arr!47991 a!2862) j!93))) (= (select (arr!47991 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484026 (= lt!647593 (select (store (arr!47991 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1484027 () Bool)

(assert (=> b!1484027 (= e!832105 (not e!832107))))

(declare-fun res!1008952 () Bool)

(assert (=> b!1484027 (=> res!1008952 e!832107)))

(assert (=> b!1484027 (= res!1008952 (or (and (= (select (arr!47991 a!2862) index!646) (select (store (arr!47991 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47991 a!2862) index!646) (select (arr!47991 a!2862) j!93))) (= (select (arr!47991 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484027 e!832101))

(declare-fun res!1008939 () Bool)

(assert (=> b!1484027 (=> (not res!1008939) (not e!832101))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99439 (_ BitVec 32)) Bool)

(assert (=> b!1484027 (= res!1008939 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49796 0))(
  ( (Unit!49797) )
))
(declare-fun lt!647587 () Unit!49796)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99439 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49796)

(assert (=> b!1484027 (= lt!647587 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1484028 () Bool)

(declare-fun res!1008954 () Bool)

(assert (=> b!1484028 (=> (not res!1008954) (not e!832100))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1484028 (= res!1008954 (validKeyInArray!0 (select (arr!47991 a!2862) i!1006)))))

(declare-fun b!1484029 () Bool)

(declare-fun res!1008955 () Bool)

(assert (=> b!1484029 (=> (not res!1008955) (not e!832100))))

(assert (=> b!1484029 (= res!1008955 (validKeyInArray!0 (select (arr!47991 a!2862) j!93)))))

(declare-fun b!1484030 () Bool)

(declare-fun res!1008949 () Bool)

(assert (=> b!1484030 (=> (not res!1008949) (not e!832100))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1484030 (= res!1008949 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48542 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48542 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48542 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1484031 () Bool)

(declare-fun res!1008957 () Bool)

(assert (=> b!1484031 (=> (not res!1008957) (not e!832100))))

(assert (=> b!1484031 (= res!1008957 (and (= (size!48542 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48542 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48542 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1484032 () Bool)

(declare-fun e!832102 () Bool)

(assert (=> b!1484032 (= e!832102 e!832103)))

(declare-fun res!1008951 () Bool)

(assert (=> b!1484032 (=> (not res!1008951) (not e!832103))))

(declare-fun lt!647588 () SeekEntryResult!12254)

(assert (=> b!1484032 (= res!1008951 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47991 a!2862) j!93) mask!2687) (select (arr!47991 a!2862) j!93) a!2862 mask!2687) lt!647588))))

(assert (=> b!1484032 (= lt!647588 (Intermediate!12254 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1484033 () Bool)

(assert (=> b!1484033 (= e!832100 e!832102)))

(declare-fun res!1008942 () Bool)

(assert (=> b!1484033 (=> (not res!1008942) (not e!832102))))

(assert (=> b!1484033 (= res!1008942 (= (select (store (arr!47991 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1484033 (= lt!647589 (array!99440 (store (arr!47991 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48542 a!2862)))))

(declare-fun b!1484034 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99439 (_ BitVec 32)) SeekEntryResult!12254)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99439 (_ BitVec 32)) SeekEntryResult!12254)

(assert (=> b!1484034 (= e!832106 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647590 lt!647589 mask!2687) (seekEntryOrOpen!0 lt!647590 lt!647589 mask!2687)))))

(declare-fun b!1484035 () Bool)

(declare-fun res!1008944 () Bool)

(assert (=> b!1484035 (=> (not res!1008944) (not e!832100))))

(assert (=> b!1484035 (= res!1008944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1484036 () Bool)

(declare-fun res!1008956 () Bool)

(assert (=> b!1484036 (=> (not res!1008956) (not e!832101))))

(assert (=> b!1484036 (= res!1008956 (or (= (select (arr!47991 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47991 a!2862) intermediateBeforeIndex!19) (select (arr!47991 a!2862) j!93))))))

(declare-fun b!1484037 () Bool)

(declare-fun res!1008953 () Bool)

(assert (=> b!1484037 (=> (not res!1008953) (not e!832105))))

(assert (=> b!1484037 (= res!1008953 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1484038 () Bool)

(declare-fun res!1008943 () Bool)

(assert (=> b!1484038 (=> (not res!1008943) (not e!832101))))

(assert (=> b!1484038 (= res!1008943 (= (seekEntryOrOpen!0 (select (arr!47991 a!2862) j!93) a!2862 mask!2687) (Found!12254 j!93)))))

(declare-fun b!1484039 () Bool)

(declare-fun res!1008945 () Bool)

(assert (=> b!1484039 (=> (not res!1008945) (not e!832103))))

(assert (=> b!1484039 (= res!1008945 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47991 a!2862) j!93) a!2862 mask!2687) lt!647588))))

(declare-fun e!832108 () Bool)

(declare-fun b!1484040 () Bool)

(assert (=> b!1484040 (= e!832108 (= (seekEntryOrOpen!0 lt!647590 lt!647589 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647590 lt!647589 mask!2687)))))

(declare-fun b!1484041 () Bool)

(assert (=> b!1484041 (= e!832104 e!832108)))

(declare-fun res!1008948 () Bool)

(assert (=> b!1484041 (=> (not res!1008948) (not e!832108))))

(assert (=> b!1484041 (= res!1008948 (and (= index!646 intermediateAfterIndex!19) (= lt!647593 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!126560 res!1008946) b!1484031))

(assert (= (and b!1484031 res!1008957) b!1484028))

(assert (= (and b!1484028 res!1008954) b!1484029))

(assert (= (and b!1484029 res!1008955) b!1484035))

(assert (= (and b!1484035 res!1008944) b!1484023))

(assert (= (and b!1484023 res!1008947) b!1484030))

(assert (= (and b!1484030 res!1008949) b!1484033))

(assert (= (and b!1484033 res!1008942) b!1484032))

(assert (= (and b!1484032 res!1008951) b!1484039))

(assert (= (and b!1484039 res!1008945) b!1484025))

(assert (= (and b!1484025 res!1008950) b!1484021))

(assert (= (and b!1484021 c!137066) b!1484022))

(assert (= (and b!1484021 (not c!137066)) b!1484034))

(assert (= (and b!1484021 res!1008940) b!1484037))

(assert (= (and b!1484037 res!1008953) b!1484027))

(assert (= (and b!1484027 res!1008939) b!1484038))

(assert (= (and b!1484038 res!1008943) b!1484036))

(assert (= (and b!1484036 res!1008956) b!1484026))

(assert (= (and b!1484026 (not res!1008941)) b!1484041))

(assert (= (and b!1484041 res!1008948) b!1484040))

(assert (= (and b!1484027 (not res!1008952)) b!1484024))

(declare-fun m!1369445 () Bool)

(assert (=> b!1484022 m!1369445))

(declare-fun m!1369447 () Bool)

(assert (=> b!1484034 m!1369447))

(declare-fun m!1369449 () Bool)

(assert (=> b!1484034 m!1369449))

(declare-fun m!1369451 () Bool)

(assert (=> b!1484028 m!1369451))

(assert (=> b!1484028 m!1369451))

(declare-fun m!1369453 () Bool)

(assert (=> b!1484028 m!1369453))

(declare-fun m!1369455 () Bool)

(assert (=> b!1484029 m!1369455))

(assert (=> b!1484029 m!1369455))

(declare-fun m!1369457 () Bool)

(assert (=> b!1484029 m!1369457))

(declare-fun m!1369459 () Bool)

(assert (=> b!1484035 m!1369459))

(assert (=> b!1484038 m!1369455))

(assert (=> b!1484038 m!1369455))

(declare-fun m!1369461 () Bool)

(assert (=> b!1484038 m!1369461))

(declare-fun m!1369463 () Bool)

(assert (=> b!1484027 m!1369463))

(declare-fun m!1369465 () Bool)

(assert (=> b!1484027 m!1369465))

(declare-fun m!1369467 () Bool)

(assert (=> b!1484027 m!1369467))

(declare-fun m!1369469 () Bool)

(assert (=> b!1484027 m!1369469))

(declare-fun m!1369471 () Bool)

(assert (=> b!1484027 m!1369471))

(assert (=> b!1484027 m!1369455))

(assert (=> b!1484040 m!1369449))

(assert (=> b!1484040 m!1369447))

(assert (=> b!1484026 m!1369469))

(assert (=> b!1484026 m!1369455))

(assert (=> b!1484026 m!1369465))

(assert (=> b!1484026 m!1369467))

(declare-fun m!1369473 () Bool)

(assert (=> start!126560 m!1369473))

(declare-fun m!1369475 () Bool)

(assert (=> start!126560 m!1369475))

(declare-fun m!1369477 () Bool)

(assert (=> b!1484025 m!1369477))

(assert (=> b!1484025 m!1369477))

(declare-fun m!1369479 () Bool)

(assert (=> b!1484025 m!1369479))

(assert (=> b!1484025 m!1369465))

(declare-fun m!1369481 () Bool)

(assert (=> b!1484025 m!1369481))

(assert (=> b!1484032 m!1369455))

(assert (=> b!1484032 m!1369455))

(declare-fun m!1369483 () Bool)

(assert (=> b!1484032 m!1369483))

(assert (=> b!1484032 m!1369483))

(assert (=> b!1484032 m!1369455))

(declare-fun m!1369485 () Bool)

(assert (=> b!1484032 m!1369485))

(declare-fun m!1369487 () Bool)

(assert (=> b!1484036 m!1369487))

(assert (=> b!1484036 m!1369455))

(assert (=> b!1484039 m!1369455))

(assert (=> b!1484039 m!1369455))

(declare-fun m!1369489 () Bool)

(assert (=> b!1484039 m!1369489))

(assert (=> b!1484033 m!1369465))

(declare-fun m!1369491 () Bool)

(assert (=> b!1484033 m!1369491))

(declare-fun m!1369493 () Bool)

(assert (=> b!1484024 m!1369493))

(declare-fun m!1369495 () Bool)

(assert (=> b!1484023 m!1369495))

(push 1)

(assert (not b!1484035))

(assert (not b!1484027))

(assert (not b!1484039))

(assert (not b!1484032))

(assert (not b!1484023))

(assert (not start!126560))

(assert (not b!1484040))

(assert (not b!1484028))

(assert (not b!1484022))

(assert (not b!1484034))

(assert (not b!1484024))

(assert (not b!1484029))

(assert (not b!1484038))

(assert (not b!1484025))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

