; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125834 () Bool)

(assert start!125834)

(declare-fun b!1472280 () Bool)

(declare-fun res!1000061 () Bool)

(declare-fun e!826302 () Bool)

(assert (=> b!1472280 (=> (not res!1000061) (not e!826302))))

(declare-datatypes ((array!99085 0))(
  ( (array!99086 (arr!47823 (Array (_ BitVec 32) (_ BitVec 64))) (size!48374 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99085)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1472280 (= res!1000061 (validKeyInArray!0 (select (arr!47823 a!2862) j!93)))))

(declare-fun b!1472282 () Bool)

(declare-fun e!826303 () Bool)

(assert (=> b!1472282 (= e!826303 (not true))))

(declare-fun e!826306 () Bool)

(assert (=> b!1472282 e!826306))

(declare-fun res!1000062 () Bool)

(assert (=> b!1472282 (=> (not res!1000062) (not e!826306))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99085 (_ BitVec 32)) Bool)

(assert (=> b!1472282 (= res!1000062 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49460 0))(
  ( (Unit!49461) )
))
(declare-fun lt!643488 () Unit!49460)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99085 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49460)

(assert (=> b!1472282 (= lt!643488 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1472283 () Bool)

(declare-fun res!1000068 () Bool)

(assert (=> b!1472283 (=> (not res!1000068) (not e!826303))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1472283 (= res!1000068 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun lt!643492 () array!99085)

(declare-fun lt!643489 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!826307 () Bool)

(declare-fun b!1472284 () Bool)

(declare-datatypes ((SeekEntryResult!12086 0))(
  ( (MissingZero!12086 (index!50735 (_ BitVec 32))) (Found!12086 (index!50736 (_ BitVec 32))) (Intermediate!12086 (undefined!12898 Bool) (index!50737 (_ BitVec 32)) (x!132316 (_ BitVec 32))) (Undefined!12086) (MissingVacant!12086 (index!50738 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99085 (_ BitVec 32)) SeekEntryResult!12086)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99085 (_ BitVec 32)) SeekEntryResult!12086)

(assert (=> b!1472284 (= e!826307 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643489 lt!643492 mask!2687) (seekEntryOrOpen!0 lt!643489 lt!643492 mask!2687)))))

(declare-fun lt!643491 () SeekEntryResult!12086)

(declare-fun b!1472285 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99085 (_ BitVec 32)) SeekEntryResult!12086)

(assert (=> b!1472285 (= e!826307 (= lt!643491 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643489 lt!643492 mask!2687)))))

(declare-fun b!1472286 () Bool)

(declare-fun res!1000074 () Bool)

(assert (=> b!1472286 (=> (not res!1000074) (not e!826302))))

(assert (=> b!1472286 (= res!1000074 (validKeyInArray!0 (select (arr!47823 a!2862) i!1006)))))

(declare-fun b!1472287 () Bool)

(declare-fun e!826305 () Bool)

(assert (=> b!1472287 (= e!826302 e!826305)))

(declare-fun res!1000069 () Bool)

(assert (=> b!1472287 (=> (not res!1000069) (not e!826305))))

(assert (=> b!1472287 (= res!1000069 (= (select (store (arr!47823 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1472287 (= lt!643492 (array!99086 (store (arr!47823 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48374 a!2862)))))

(declare-fun b!1472288 () Bool)

(declare-fun res!1000065 () Bool)

(assert (=> b!1472288 (=> (not res!1000065) (not e!826302))))

(assert (=> b!1472288 (= res!1000065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1472289 () Bool)

(declare-fun e!826301 () Bool)

(assert (=> b!1472289 (= e!826305 e!826301)))

(declare-fun res!1000073 () Bool)

(assert (=> b!1472289 (=> (not res!1000073) (not e!826301))))

(declare-fun lt!643490 () SeekEntryResult!12086)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1472289 (= res!1000073 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47823 a!2862) j!93) mask!2687) (select (arr!47823 a!2862) j!93) a!2862 mask!2687) lt!643490))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1472289 (= lt!643490 (Intermediate!12086 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1472290 () Bool)

(declare-fun res!1000070 () Bool)

(assert (=> b!1472290 (=> (not res!1000070) (not e!826302))))

(declare-datatypes ((List!34504 0))(
  ( (Nil!34501) (Cons!34500 (h!35856 (_ BitVec 64)) (t!49205 List!34504)) )
))
(declare-fun arrayNoDuplicates!0 (array!99085 (_ BitVec 32) List!34504) Bool)

(assert (=> b!1472290 (= res!1000070 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34501))))

(declare-fun b!1472291 () Bool)

(declare-fun res!1000071 () Bool)

(assert (=> b!1472291 (=> (not res!1000071) (not e!826302))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1472291 (= res!1000071 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48374 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48374 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48374 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1472281 () Bool)

(assert (=> b!1472281 (= e!826301 e!826303)))

(declare-fun res!1000063 () Bool)

(assert (=> b!1472281 (=> (not res!1000063) (not e!826303))))

(assert (=> b!1472281 (= res!1000063 (= lt!643491 (Intermediate!12086 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1472281 (= lt!643491 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643489 mask!2687) lt!643489 lt!643492 mask!2687))))

(assert (=> b!1472281 (= lt!643489 (select (store (arr!47823 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!1000067 () Bool)

(assert (=> start!125834 (=> (not res!1000067) (not e!826302))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125834 (= res!1000067 (validMask!0 mask!2687))))

(assert (=> start!125834 e!826302))

(assert (=> start!125834 true))

(declare-fun array_inv!36768 (array!99085) Bool)

(assert (=> start!125834 (array_inv!36768 a!2862)))

(declare-fun b!1472292 () Bool)

(declare-fun res!1000060 () Bool)

(assert (=> b!1472292 (=> (not res!1000060) (not e!826302))))

(assert (=> b!1472292 (= res!1000060 (and (= (size!48374 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48374 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48374 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1472293 () Bool)

(declare-fun res!1000066 () Bool)

(assert (=> b!1472293 (=> (not res!1000066) (not e!826303))))

(assert (=> b!1472293 (= res!1000066 e!826307)))

(declare-fun c!135626 () Bool)

(assert (=> b!1472293 (= c!135626 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1472294 () Bool)

(declare-fun res!1000072 () Bool)

(assert (=> b!1472294 (=> (not res!1000072) (not e!826301))))

(assert (=> b!1472294 (= res!1000072 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47823 a!2862) j!93) a!2862 mask!2687) lt!643490))))

(declare-fun b!1472295 () Bool)

(assert (=> b!1472295 (= e!826306 (or (= (select (arr!47823 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47823 a!2862) intermediateBeforeIndex!19) (select (arr!47823 a!2862) j!93))))))

(declare-fun b!1472296 () Bool)

(declare-fun res!1000064 () Bool)

(assert (=> b!1472296 (=> (not res!1000064) (not e!826306))))

(assert (=> b!1472296 (= res!1000064 (= (seekEntryOrOpen!0 (select (arr!47823 a!2862) j!93) a!2862 mask!2687) (Found!12086 j!93)))))

(assert (= (and start!125834 res!1000067) b!1472292))

(assert (= (and b!1472292 res!1000060) b!1472286))

(assert (= (and b!1472286 res!1000074) b!1472280))

(assert (= (and b!1472280 res!1000061) b!1472288))

(assert (= (and b!1472288 res!1000065) b!1472290))

(assert (= (and b!1472290 res!1000070) b!1472291))

(assert (= (and b!1472291 res!1000071) b!1472287))

(assert (= (and b!1472287 res!1000069) b!1472289))

(assert (= (and b!1472289 res!1000073) b!1472294))

(assert (= (and b!1472294 res!1000072) b!1472281))

(assert (= (and b!1472281 res!1000063) b!1472293))

(assert (= (and b!1472293 c!135626) b!1472285))

(assert (= (and b!1472293 (not c!135626)) b!1472284))

(assert (= (and b!1472293 res!1000066) b!1472283))

(assert (= (and b!1472283 res!1000068) b!1472282))

(assert (= (and b!1472282 res!1000062) b!1472296))

(assert (= (and b!1472296 res!1000064) b!1472295))

(declare-fun m!1359059 () Bool)

(assert (=> b!1472288 m!1359059))

(declare-fun m!1359061 () Bool)

(assert (=> b!1472284 m!1359061))

(declare-fun m!1359063 () Bool)

(assert (=> b!1472284 m!1359063))

(declare-fun m!1359065 () Bool)

(assert (=> b!1472296 m!1359065))

(assert (=> b!1472296 m!1359065))

(declare-fun m!1359067 () Bool)

(assert (=> b!1472296 m!1359067))

(declare-fun m!1359069 () Bool)

(assert (=> b!1472287 m!1359069))

(declare-fun m!1359071 () Bool)

(assert (=> b!1472287 m!1359071))

(declare-fun m!1359073 () Bool)

(assert (=> b!1472281 m!1359073))

(assert (=> b!1472281 m!1359073))

(declare-fun m!1359075 () Bool)

(assert (=> b!1472281 m!1359075))

(assert (=> b!1472281 m!1359069))

(declare-fun m!1359077 () Bool)

(assert (=> b!1472281 m!1359077))

(declare-fun m!1359079 () Bool)

(assert (=> b!1472282 m!1359079))

(declare-fun m!1359081 () Bool)

(assert (=> b!1472282 m!1359081))

(declare-fun m!1359083 () Bool)

(assert (=> b!1472290 m!1359083))

(assert (=> b!1472294 m!1359065))

(assert (=> b!1472294 m!1359065))

(declare-fun m!1359085 () Bool)

(assert (=> b!1472294 m!1359085))

(assert (=> b!1472289 m!1359065))

(assert (=> b!1472289 m!1359065))

(declare-fun m!1359087 () Bool)

(assert (=> b!1472289 m!1359087))

(assert (=> b!1472289 m!1359087))

(assert (=> b!1472289 m!1359065))

(declare-fun m!1359089 () Bool)

(assert (=> b!1472289 m!1359089))

(assert (=> b!1472280 m!1359065))

(assert (=> b!1472280 m!1359065))

(declare-fun m!1359091 () Bool)

(assert (=> b!1472280 m!1359091))

(declare-fun m!1359093 () Bool)

(assert (=> start!125834 m!1359093))

(declare-fun m!1359095 () Bool)

(assert (=> start!125834 m!1359095))

(declare-fun m!1359097 () Bool)

(assert (=> b!1472285 m!1359097))

(declare-fun m!1359099 () Bool)

(assert (=> b!1472286 m!1359099))

(assert (=> b!1472286 m!1359099))

(declare-fun m!1359101 () Bool)

(assert (=> b!1472286 m!1359101))

(declare-fun m!1359103 () Bool)

(assert (=> b!1472295 m!1359103))

(assert (=> b!1472295 m!1359065))

(push 1)

