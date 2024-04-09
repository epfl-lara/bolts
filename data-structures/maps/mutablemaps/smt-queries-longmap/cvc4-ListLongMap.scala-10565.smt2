; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124574 () Bool)

(assert start!124574)

(declare-fun e!812420 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!97939 0))(
  ( (array!97940 (arr!47253 (Array (_ BitVec 32) (_ BitVec 64))) (size!47804 (_ BitVec 32))) )
))
(declare-fun lt!633064 () array!97939)

(declare-fun lt!633066 () (_ BitVec 64))

(declare-fun b!1441057 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11528 0))(
  ( (MissingZero!11528 (index!48503 (_ BitVec 32))) (Found!11528 (index!48504 (_ BitVec 32))) (Intermediate!11528 (undefined!12340 Bool) (index!48505 (_ BitVec 32)) (x!130220 (_ BitVec 32))) (Undefined!11528) (MissingVacant!11528 (index!48506 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97939 (_ BitVec 32)) SeekEntryResult!11528)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97939 (_ BitVec 32)) SeekEntryResult!11528)

(assert (=> b!1441057 (= e!812420 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633066 lt!633064 mask!2687) (seekEntryOrOpen!0 lt!633066 lt!633064 mask!2687))))))

(declare-fun b!1441058 () Bool)

(declare-fun e!812417 () Bool)

(declare-fun e!812418 () Bool)

(assert (=> b!1441058 (= e!812417 e!812418)))

(declare-fun res!973563 () Bool)

(assert (=> b!1441058 (=> (not res!973563) (not e!812418))))

(declare-fun lt!633065 () SeekEntryResult!11528)

(declare-fun a!2862 () array!97939)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97939 (_ BitVec 32)) SeekEntryResult!11528)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441058 (= res!973563 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47253 a!2862) j!93) mask!2687) (select (arr!47253 a!2862) j!93) a!2862 mask!2687) lt!633065))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1441058 (= lt!633065 (Intermediate!11528 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1441059 () Bool)

(declare-fun res!973567 () Bool)

(declare-fun e!812419 () Bool)

(assert (=> b!1441059 (=> (not res!973567) (not e!812419))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1441059 (= res!973567 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47804 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47804 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47804 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1441060 () Bool)

(declare-fun res!973564 () Bool)

(assert (=> b!1441060 (=> (not res!973564) (not e!812419))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1441060 (= res!973564 (and (= (size!47804 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47804 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47804 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1441061 () Bool)

(declare-fun res!973566 () Bool)

(assert (=> b!1441061 (=> (not res!973566) (not e!812419))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97939 (_ BitVec 32)) Bool)

(assert (=> b!1441061 (= res!973566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1441062 () Bool)

(declare-fun res!973569 () Bool)

(assert (=> b!1441062 (=> (not res!973569) (not e!812419))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441062 (= res!973569 (validKeyInArray!0 (select (arr!47253 a!2862) j!93)))))

(declare-fun b!1441063 () Bool)

(declare-fun e!812416 () Bool)

(assert (=> b!1441063 (= e!812418 e!812416)))

(declare-fun res!973560 () Bool)

(assert (=> b!1441063 (=> (not res!973560) (not e!812416))))

(declare-fun lt!633067 () SeekEntryResult!11528)

(assert (=> b!1441063 (= res!973560 (= lt!633067 (Intermediate!11528 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1441063 (= lt!633067 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633066 mask!2687) lt!633066 lt!633064 mask!2687))))

(assert (=> b!1441063 (= lt!633066 (select (store (arr!47253 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1441064 () Bool)

(assert (=> b!1441064 (= e!812420 (not (= lt!633067 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633066 lt!633064 mask!2687))))))

(declare-fun b!1441065 () Bool)

(assert (=> b!1441065 (= e!812416 false)))

(declare-fun lt!633063 () Bool)

(assert (=> b!1441065 (= lt!633063 e!812420)))

(declare-fun c!133262 () Bool)

(assert (=> b!1441065 (= c!133262 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1441066 () Bool)

(declare-fun res!973561 () Bool)

(assert (=> b!1441066 (=> (not res!973561) (not e!812418))))

(assert (=> b!1441066 (= res!973561 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47253 a!2862) j!93) a!2862 mask!2687) lt!633065))))

(declare-fun b!1441067 () Bool)

(declare-fun res!973562 () Bool)

(assert (=> b!1441067 (=> (not res!973562) (not e!812419))))

(assert (=> b!1441067 (= res!973562 (validKeyInArray!0 (select (arr!47253 a!2862) i!1006)))))

(declare-fun res!973559 () Bool)

(assert (=> start!124574 (=> (not res!973559) (not e!812419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124574 (= res!973559 (validMask!0 mask!2687))))

(assert (=> start!124574 e!812419))

(assert (=> start!124574 true))

(declare-fun array_inv!36198 (array!97939) Bool)

(assert (=> start!124574 (array_inv!36198 a!2862)))

(declare-fun b!1441068 () Bool)

(assert (=> b!1441068 (= e!812419 e!812417)))

(declare-fun res!973565 () Bool)

(assert (=> b!1441068 (=> (not res!973565) (not e!812417))))

(assert (=> b!1441068 (= res!973565 (= (select (store (arr!47253 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1441068 (= lt!633064 (array!97940 (store (arr!47253 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47804 a!2862)))))

(declare-fun b!1441069 () Bool)

(declare-fun res!973568 () Bool)

(assert (=> b!1441069 (=> (not res!973568) (not e!812419))))

(declare-datatypes ((List!33934 0))(
  ( (Nil!33931) (Cons!33930 (h!35280 (_ BitVec 64)) (t!48635 List!33934)) )
))
(declare-fun arrayNoDuplicates!0 (array!97939 (_ BitVec 32) List!33934) Bool)

(assert (=> b!1441069 (= res!973568 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33931))))

(assert (= (and start!124574 res!973559) b!1441060))

(assert (= (and b!1441060 res!973564) b!1441067))

(assert (= (and b!1441067 res!973562) b!1441062))

(assert (= (and b!1441062 res!973569) b!1441061))

(assert (= (and b!1441061 res!973566) b!1441069))

(assert (= (and b!1441069 res!973568) b!1441059))

(assert (= (and b!1441059 res!973567) b!1441068))

(assert (= (and b!1441068 res!973565) b!1441058))

(assert (= (and b!1441058 res!973563) b!1441066))

(assert (= (and b!1441066 res!973561) b!1441063))

(assert (= (and b!1441063 res!973560) b!1441065))

(assert (= (and b!1441065 c!133262) b!1441064))

(assert (= (and b!1441065 (not c!133262)) b!1441057))

(declare-fun m!1330345 () Bool)

(assert (=> b!1441063 m!1330345))

(assert (=> b!1441063 m!1330345))

(declare-fun m!1330347 () Bool)

(assert (=> b!1441063 m!1330347))

(declare-fun m!1330349 () Bool)

(assert (=> b!1441063 m!1330349))

(declare-fun m!1330351 () Bool)

(assert (=> b!1441063 m!1330351))

(declare-fun m!1330353 () Bool)

(assert (=> start!124574 m!1330353))

(declare-fun m!1330355 () Bool)

(assert (=> start!124574 m!1330355))

(declare-fun m!1330357 () Bool)

(assert (=> b!1441058 m!1330357))

(assert (=> b!1441058 m!1330357))

(declare-fun m!1330359 () Bool)

(assert (=> b!1441058 m!1330359))

(assert (=> b!1441058 m!1330359))

(assert (=> b!1441058 m!1330357))

(declare-fun m!1330361 () Bool)

(assert (=> b!1441058 m!1330361))

(declare-fun m!1330363 () Bool)

(assert (=> b!1441057 m!1330363))

(declare-fun m!1330365 () Bool)

(assert (=> b!1441057 m!1330365))

(declare-fun m!1330367 () Bool)

(assert (=> b!1441061 m!1330367))

(declare-fun m!1330369 () Bool)

(assert (=> b!1441067 m!1330369))

(assert (=> b!1441067 m!1330369))

(declare-fun m!1330371 () Bool)

(assert (=> b!1441067 m!1330371))

(declare-fun m!1330373 () Bool)

(assert (=> b!1441069 m!1330373))

(assert (=> b!1441066 m!1330357))

(assert (=> b!1441066 m!1330357))

(declare-fun m!1330375 () Bool)

(assert (=> b!1441066 m!1330375))

(assert (=> b!1441068 m!1330349))

(declare-fun m!1330377 () Bool)

(assert (=> b!1441068 m!1330377))

(assert (=> b!1441062 m!1330357))

(assert (=> b!1441062 m!1330357))

(declare-fun m!1330379 () Bool)

(assert (=> b!1441062 m!1330379))

(declare-fun m!1330381 () Bool)

(assert (=> b!1441064 m!1330381))

(push 1)

(assert (not b!1441061))

