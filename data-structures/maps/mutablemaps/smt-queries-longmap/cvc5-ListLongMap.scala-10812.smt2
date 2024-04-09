; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126562 () Bool)

(assert start!126562)

(declare-fun b!1484084 () Bool)

(declare-fun res!1008998 () Bool)

(declare-fun e!832137 () Bool)

(assert (=> b!1484084 (=> (not res!1008998) (not e!832137))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1484084 (= res!1008998 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1484085 () Bool)

(declare-fun e!832130 () Bool)

(assert (=> b!1484085 (= e!832137 (not e!832130))))

(declare-fun res!1009009 () Bool)

(assert (=> b!1484085 (=> res!1009009 e!832130)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((array!99441 0))(
  ( (array!99442 (arr!47992 (Array (_ BitVec 32) (_ BitVec 64))) (size!48543 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99441)

(assert (=> b!1484085 (= res!1009009 (or (and (= (select (arr!47992 a!2862) index!646) (select (store (arr!47992 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47992 a!2862) index!646) (select (arr!47992 a!2862) j!93))) (= (select (arr!47992 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!832132 () Bool)

(assert (=> b!1484085 e!832132))

(declare-fun res!1009012 () Bool)

(assert (=> b!1484085 (=> (not res!1009012) (not e!832132))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99441 (_ BitVec 32)) Bool)

(assert (=> b!1484085 (= res!1009012 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49798 0))(
  ( (Unit!49799) )
))
(declare-fun lt!647608 () Unit!49798)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99441 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49798)

(assert (=> b!1484085 (= lt!647608 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1484086 () Bool)

(declare-fun e!832138 () Bool)

(assert (=> b!1484086 (= e!832132 e!832138)))

(declare-fun res!1009011 () Bool)

(assert (=> b!1484086 (=> res!1009011 e!832138)))

(declare-fun lt!647609 () (_ BitVec 64))

(assert (=> b!1484086 (= res!1009011 (or (and (= (select (arr!47992 a!2862) index!646) lt!647609) (= (select (arr!47992 a!2862) index!646) (select (arr!47992 a!2862) j!93))) (= (select (arr!47992 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484086 (= lt!647609 (select (store (arr!47992 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1484087 () Bool)

(declare-fun res!1009000 () Bool)

(declare-fun e!832134 () Bool)

(assert (=> b!1484087 (=> (not res!1009000) (not e!832134))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1484087 (= res!1009000 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48543 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48543 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48543 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1484088 () Bool)

(assert (=> b!1484088 (= e!832130 true)))

(declare-fun lt!647610 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484088 (= lt!647610 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1484089 () Bool)

(declare-fun res!1009014 () Bool)

(assert (=> b!1484089 (=> (not res!1009014) (not e!832132))))

(declare-datatypes ((SeekEntryResult!12255 0))(
  ( (MissingZero!12255 (index!51411 (_ BitVec 32))) (Found!12255 (index!51412 (_ BitVec 32))) (Intermediate!12255 (undefined!13067 Bool) (index!51413 (_ BitVec 32)) (x!132998 (_ BitVec 32))) (Undefined!12255) (MissingVacant!12255 (index!51414 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99441 (_ BitVec 32)) SeekEntryResult!12255)

(assert (=> b!1484089 (= res!1009014 (= (seekEntryOrOpen!0 (select (arr!47992 a!2862) j!93) a!2862 mask!2687) (Found!12255 j!93)))))

(declare-fun b!1484090 () Bool)

(declare-fun res!1009005 () Bool)

(assert (=> b!1484090 (=> (not res!1009005) (not e!832134))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1484090 (= res!1009005 (validKeyInArray!0 (select (arr!47992 a!2862) j!93)))))

(declare-fun b!1484092 () Bool)

(declare-fun res!1009001 () Bool)

(assert (=> b!1484092 (=> (not res!1009001) (not e!832134))))

(declare-datatypes ((List!34673 0))(
  ( (Nil!34670) (Cons!34669 (h!36043 (_ BitVec 64)) (t!49374 List!34673)) )
))
(declare-fun arrayNoDuplicates!0 (array!99441 (_ BitVec 32) List!34673) Bool)

(assert (=> b!1484092 (= res!1009001 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34670))))

(declare-fun b!1484093 () Bool)

(declare-fun res!1009006 () Bool)

(assert (=> b!1484093 (=> (not res!1009006) (not e!832134))))

(assert (=> b!1484093 (= res!1009006 (validKeyInArray!0 (select (arr!47992 a!2862) i!1006)))))

(declare-fun b!1484094 () Bool)

(declare-fun e!832133 () Bool)

(assert (=> b!1484094 (= e!832134 e!832133)))

(declare-fun res!1008996 () Bool)

(assert (=> b!1484094 (=> (not res!1008996) (not e!832133))))

(assert (=> b!1484094 (= res!1008996 (= (select (store (arr!47992 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!647613 () array!99441)

(assert (=> b!1484094 (= lt!647613 (array!99442 (store (arr!47992 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48543 a!2862)))))

(declare-fun b!1484095 () Bool)

(declare-fun res!1008997 () Bool)

(assert (=> b!1484095 (=> (not res!1008997) (not e!832134))))

(assert (=> b!1484095 (= res!1008997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun lt!647612 () (_ BitVec 64))

(declare-fun e!832131 () Bool)

(declare-fun b!1484096 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99441 (_ BitVec 32)) SeekEntryResult!12255)

(assert (=> b!1484096 (= e!832131 (= (seekEntryOrOpen!0 lt!647612 lt!647613 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647612 lt!647613 mask!2687)))))

(declare-fun b!1484097 () Bool)

(declare-fun res!1009010 () Bool)

(assert (=> b!1484097 (=> (not res!1009010) (not e!832137))))

(declare-fun e!832135 () Bool)

(assert (=> b!1484097 (= res!1009010 e!832135)))

(declare-fun c!137069 () Bool)

(assert (=> b!1484097 (= c!137069 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1484098 () Bool)

(declare-fun res!1009003 () Bool)

(assert (=> b!1484098 (=> (not res!1009003) (not e!832132))))

(assert (=> b!1484098 (= res!1009003 (or (= (select (arr!47992 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47992 a!2862) intermediateBeforeIndex!19) (select (arr!47992 a!2862) j!93))))))

(declare-fun b!1484099 () Bool)

(assert (=> b!1484099 (= e!832135 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647612 lt!647613 mask!2687) (seekEntryOrOpen!0 lt!647612 lt!647613 mask!2687)))))

(declare-fun b!1484100 () Bool)

(assert (=> b!1484100 (= e!832138 e!832131)))

(declare-fun res!1009002 () Bool)

(assert (=> b!1484100 (=> (not res!1009002) (not e!832131))))

(assert (=> b!1484100 (= res!1009002 (and (= index!646 intermediateAfterIndex!19) (= lt!647609 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1484101 () Bool)

(declare-fun e!832139 () Bool)

(assert (=> b!1484101 (= e!832133 e!832139)))

(declare-fun res!1009004 () Bool)

(assert (=> b!1484101 (=> (not res!1009004) (not e!832139))))

(declare-fun lt!647614 () SeekEntryResult!12255)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99441 (_ BitVec 32)) SeekEntryResult!12255)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484101 (= res!1009004 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47992 a!2862) j!93) mask!2687) (select (arr!47992 a!2862) j!93) a!2862 mask!2687) lt!647614))))

(assert (=> b!1484101 (= lt!647614 (Intermediate!12255 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1484102 () Bool)

(declare-fun res!1009007 () Bool)

(assert (=> b!1484102 (=> (not res!1009007) (not e!832139))))

(assert (=> b!1484102 (= res!1009007 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47992 a!2862) j!93) a!2862 mask!2687) lt!647614))))

(declare-fun b!1484103 () Bool)

(declare-fun lt!647611 () SeekEntryResult!12255)

(assert (=> b!1484103 (= e!832135 (= lt!647611 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647612 lt!647613 mask!2687)))))

(declare-fun b!1484104 () Bool)

(assert (=> b!1484104 (= e!832139 e!832137)))

(declare-fun res!1009013 () Bool)

(assert (=> b!1484104 (=> (not res!1009013) (not e!832137))))

(assert (=> b!1484104 (= res!1009013 (= lt!647611 (Intermediate!12255 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1484104 (= lt!647611 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647612 mask!2687) lt!647612 lt!647613 mask!2687))))

(assert (=> b!1484104 (= lt!647612 (select (store (arr!47992 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!1009008 () Bool)

(assert (=> start!126562 (=> (not res!1009008) (not e!832134))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126562 (= res!1009008 (validMask!0 mask!2687))))

(assert (=> start!126562 e!832134))

(assert (=> start!126562 true))

(declare-fun array_inv!36937 (array!99441) Bool)

(assert (=> start!126562 (array_inv!36937 a!2862)))

(declare-fun b!1484091 () Bool)

(declare-fun res!1008999 () Bool)

(assert (=> b!1484091 (=> (not res!1008999) (not e!832134))))

(assert (=> b!1484091 (= res!1008999 (and (= (size!48543 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48543 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48543 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!126562 res!1009008) b!1484091))

(assert (= (and b!1484091 res!1008999) b!1484093))

(assert (= (and b!1484093 res!1009006) b!1484090))

(assert (= (and b!1484090 res!1009005) b!1484095))

(assert (= (and b!1484095 res!1008997) b!1484092))

(assert (= (and b!1484092 res!1009001) b!1484087))

(assert (= (and b!1484087 res!1009000) b!1484094))

(assert (= (and b!1484094 res!1008996) b!1484101))

(assert (= (and b!1484101 res!1009004) b!1484102))

(assert (= (and b!1484102 res!1009007) b!1484104))

(assert (= (and b!1484104 res!1009013) b!1484097))

(assert (= (and b!1484097 c!137069) b!1484103))

(assert (= (and b!1484097 (not c!137069)) b!1484099))

(assert (= (and b!1484097 res!1009010) b!1484084))

(assert (= (and b!1484084 res!1008998) b!1484085))

(assert (= (and b!1484085 res!1009012) b!1484089))

(assert (= (and b!1484089 res!1009014) b!1484098))

(assert (= (and b!1484098 res!1009003) b!1484086))

(assert (= (and b!1484086 (not res!1009011)) b!1484100))

(assert (= (and b!1484100 res!1009002) b!1484096))

(assert (= (and b!1484085 (not res!1009009)) b!1484088))

(declare-fun m!1369497 () Bool)

(assert (=> b!1484101 m!1369497))

(assert (=> b!1484101 m!1369497))

(declare-fun m!1369499 () Bool)

(assert (=> b!1484101 m!1369499))

(assert (=> b!1484101 m!1369499))

(assert (=> b!1484101 m!1369497))

(declare-fun m!1369501 () Bool)

(assert (=> b!1484101 m!1369501))

(assert (=> b!1484089 m!1369497))

(assert (=> b!1484089 m!1369497))

(declare-fun m!1369503 () Bool)

(assert (=> b!1484089 m!1369503))

(declare-fun m!1369505 () Bool)

(assert (=> b!1484103 m!1369505))

(declare-fun m!1369507 () Bool)

(assert (=> b!1484092 m!1369507))

(declare-fun m!1369509 () Bool)

(assert (=> b!1484104 m!1369509))

(assert (=> b!1484104 m!1369509))

(declare-fun m!1369511 () Bool)

(assert (=> b!1484104 m!1369511))

(declare-fun m!1369513 () Bool)

(assert (=> b!1484104 m!1369513))

(declare-fun m!1369515 () Bool)

(assert (=> b!1484104 m!1369515))

(declare-fun m!1369517 () Bool)

(assert (=> b!1484085 m!1369517))

(assert (=> b!1484085 m!1369513))

(declare-fun m!1369519 () Bool)

(assert (=> b!1484085 m!1369519))

(declare-fun m!1369521 () Bool)

(assert (=> b!1484085 m!1369521))

(declare-fun m!1369523 () Bool)

(assert (=> b!1484085 m!1369523))

(assert (=> b!1484085 m!1369497))

(assert (=> b!1484090 m!1369497))

(assert (=> b!1484090 m!1369497))

(declare-fun m!1369525 () Bool)

(assert (=> b!1484090 m!1369525))

(declare-fun m!1369527 () Bool)

(assert (=> b!1484098 m!1369527))

(assert (=> b!1484098 m!1369497))

(declare-fun m!1369529 () Bool)

(assert (=> b!1484088 m!1369529))

(assert (=> b!1484094 m!1369513))

(declare-fun m!1369531 () Bool)

(assert (=> b!1484094 m!1369531))

(assert (=> b!1484086 m!1369521))

(assert (=> b!1484086 m!1369497))

(assert (=> b!1484086 m!1369513))

(assert (=> b!1484086 m!1369519))

(declare-fun m!1369533 () Bool)

(assert (=> b!1484096 m!1369533))

(declare-fun m!1369535 () Bool)

(assert (=> b!1484096 m!1369535))

(declare-fun m!1369537 () Bool)

(assert (=> b!1484093 m!1369537))

(assert (=> b!1484093 m!1369537))

(declare-fun m!1369539 () Bool)

(assert (=> b!1484093 m!1369539))

(assert (=> b!1484099 m!1369535))

(assert (=> b!1484099 m!1369533))

(declare-fun m!1369541 () Bool)

(assert (=> b!1484095 m!1369541))

(declare-fun m!1369543 () Bool)

(assert (=> start!126562 m!1369543))

(declare-fun m!1369545 () Bool)

(assert (=> start!126562 m!1369545))

(assert (=> b!1484102 m!1369497))

(assert (=> b!1484102 m!1369497))

(declare-fun m!1369547 () Bool)

(assert (=> b!1484102 m!1369547))

(push 1)

