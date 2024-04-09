; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124556 () Bool)

(assert start!124556)

(declare-fun b!1440728 () Bool)

(declare-fun e!812285 () Bool)

(declare-fun e!812284 () Bool)

(assert (=> b!1440728 (= e!812285 e!812284)))

(declare-fun res!973272 () Bool)

(assert (=> b!1440728 (=> (not res!973272) (not e!812284))))

(declare-datatypes ((SeekEntryResult!11519 0))(
  ( (MissingZero!11519 (index!48467 (_ BitVec 32))) (Found!11519 (index!48468 (_ BitVec 32))) (Intermediate!11519 (undefined!12331 Bool) (index!48469 (_ BitVec 32)) (x!130187 (_ BitVec 32))) (Undefined!11519) (MissingVacant!11519 (index!48470 (_ BitVec 32))) )
))
(declare-fun lt!632968 () SeekEntryResult!11519)

(declare-datatypes ((array!97921 0))(
  ( (array!97922 (arr!47244 (Array (_ BitVec 32) (_ BitVec 64))) (size!47795 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97921)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97921 (_ BitVec 32)) SeekEntryResult!11519)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440728 (= res!973272 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47244 a!2862) j!93) mask!2687) (select (arr!47244 a!2862) j!93) a!2862 mask!2687) lt!632968))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1440728 (= lt!632968 (Intermediate!11519 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440729 () Bool)

(declare-fun res!973267 () Bool)

(assert (=> b!1440729 (=> (not res!973267) (not e!812285))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1440729 (= res!973267 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47795 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47795 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47795 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47244 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440730 () Bool)

(declare-fun res!973266 () Bool)

(assert (=> b!1440730 (=> (not res!973266) (not e!812284))))

(assert (=> b!1440730 (= res!973266 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47244 a!2862) j!93) a!2862 mask!2687) lt!632968))))

(declare-fun res!973269 () Bool)

(assert (=> start!124556 (=> (not res!973269) (not e!812285))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124556 (= res!973269 (validMask!0 mask!2687))))

(assert (=> start!124556 e!812285))

(assert (=> start!124556 true))

(declare-fun array_inv!36189 (array!97921) Bool)

(assert (=> start!124556 (array_inv!36189 a!2862)))

(declare-fun b!1440731 () Bool)

(declare-fun res!973271 () Bool)

(assert (=> b!1440731 (=> (not res!973271) (not e!812285))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440731 (= res!973271 (validKeyInArray!0 (select (arr!47244 a!2862) j!93)))))

(declare-fun b!1440732 () Bool)

(assert (=> b!1440732 (= e!812284 false)))

(declare-fun lt!632967 () SeekEntryResult!11519)

(assert (=> b!1440732 (= lt!632967 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47244 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47244 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97922 (store (arr!47244 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47795 a!2862)) mask!2687))))

(declare-fun b!1440733 () Bool)

(declare-fun res!973270 () Bool)

(assert (=> b!1440733 (=> (not res!973270) (not e!812285))))

(assert (=> b!1440733 (= res!973270 (and (= (size!47795 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47795 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47795 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440734 () Bool)

(declare-fun res!973268 () Bool)

(assert (=> b!1440734 (=> (not res!973268) (not e!812285))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97921 (_ BitVec 32)) Bool)

(assert (=> b!1440734 (= res!973268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440735 () Bool)

(declare-fun res!973264 () Bool)

(assert (=> b!1440735 (=> (not res!973264) (not e!812285))))

(assert (=> b!1440735 (= res!973264 (validKeyInArray!0 (select (arr!47244 a!2862) i!1006)))))

(declare-fun b!1440736 () Bool)

(declare-fun res!973265 () Bool)

(assert (=> b!1440736 (=> (not res!973265) (not e!812285))))

(declare-datatypes ((List!33925 0))(
  ( (Nil!33922) (Cons!33921 (h!35271 (_ BitVec 64)) (t!48626 List!33925)) )
))
(declare-fun arrayNoDuplicates!0 (array!97921 (_ BitVec 32) List!33925) Bool)

(assert (=> b!1440736 (= res!973265 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33922))))

(assert (= (and start!124556 res!973269) b!1440733))

(assert (= (and b!1440733 res!973270) b!1440735))

(assert (= (and b!1440735 res!973264) b!1440731))

(assert (= (and b!1440731 res!973271) b!1440734))

(assert (= (and b!1440734 res!973268) b!1440736))

(assert (= (and b!1440736 res!973265) b!1440729))

(assert (= (and b!1440729 res!973267) b!1440728))

(assert (= (and b!1440728 res!973272) b!1440730))

(assert (= (and b!1440730 res!973266) b!1440732))

(declare-fun m!1330021 () Bool)

(assert (=> b!1440732 m!1330021))

(declare-fun m!1330023 () Bool)

(assert (=> b!1440732 m!1330023))

(assert (=> b!1440732 m!1330023))

(declare-fun m!1330025 () Bool)

(assert (=> b!1440732 m!1330025))

(assert (=> b!1440732 m!1330025))

(assert (=> b!1440732 m!1330023))

(declare-fun m!1330027 () Bool)

(assert (=> b!1440732 m!1330027))

(declare-fun m!1330029 () Bool)

(assert (=> b!1440728 m!1330029))

(assert (=> b!1440728 m!1330029))

(declare-fun m!1330031 () Bool)

(assert (=> b!1440728 m!1330031))

(assert (=> b!1440728 m!1330031))

(assert (=> b!1440728 m!1330029))

(declare-fun m!1330033 () Bool)

(assert (=> b!1440728 m!1330033))

(declare-fun m!1330035 () Bool)

(assert (=> start!124556 m!1330035))

(declare-fun m!1330037 () Bool)

(assert (=> start!124556 m!1330037))

(assert (=> b!1440730 m!1330029))

(assert (=> b!1440730 m!1330029))

(declare-fun m!1330039 () Bool)

(assert (=> b!1440730 m!1330039))

(assert (=> b!1440729 m!1330021))

(declare-fun m!1330041 () Bool)

(assert (=> b!1440729 m!1330041))

(assert (=> b!1440731 m!1330029))

(assert (=> b!1440731 m!1330029))

(declare-fun m!1330043 () Bool)

(assert (=> b!1440731 m!1330043))

(declare-fun m!1330045 () Bool)

(assert (=> b!1440734 m!1330045))

(declare-fun m!1330047 () Bool)

(assert (=> b!1440736 m!1330047))

(declare-fun m!1330049 () Bool)

(assert (=> b!1440735 m!1330049))

(assert (=> b!1440735 m!1330049))

(declare-fun m!1330051 () Bool)

(assert (=> b!1440735 m!1330051))

(push 1)

(assert (not b!1440736))

