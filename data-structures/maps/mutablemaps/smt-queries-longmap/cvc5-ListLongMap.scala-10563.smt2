; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124558 () Bool)

(assert start!124558)

(declare-fun b!1440759 () Bool)

(declare-fun e!812294 () Bool)

(declare-fun e!812292 () Bool)

(assert (=> b!1440759 (= e!812294 e!812292)))

(declare-fun res!973298 () Bool)

(assert (=> b!1440759 (=> (not res!973298) (not e!812292))))

(declare-datatypes ((SeekEntryResult!11520 0))(
  ( (MissingZero!11520 (index!48471 (_ BitVec 32))) (Found!11520 (index!48472 (_ BitVec 32))) (Intermediate!11520 (undefined!12332 Bool) (index!48473 (_ BitVec 32)) (x!130196 (_ BitVec 32))) (Undefined!11520) (MissingVacant!11520 (index!48474 (_ BitVec 32))) )
))
(declare-fun lt!632971 () SeekEntryResult!11520)

(declare-datatypes ((array!97923 0))(
  ( (array!97924 (arr!47245 (Array (_ BitVec 32) (_ BitVec 64))) (size!47796 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97923)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97923 (_ BitVec 32)) SeekEntryResult!11520)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440759 (= res!973298 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47245 a!2862) j!93) mask!2687) (select (arr!47245 a!2862) j!93) a!2862 mask!2687) lt!632971))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1440759 (= lt!632971 (Intermediate!11520 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440760 () Bool)

(declare-fun res!973305 () Bool)

(assert (=> b!1440760 (=> (not res!973305) (not e!812294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97923 (_ BitVec 32)) Bool)

(assert (=> b!1440760 (= res!973305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!973301 () Bool)

(assert (=> start!124558 (=> (not res!973301) (not e!812294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124558 (= res!973301 (validMask!0 mask!2687))))

(assert (=> start!124558 e!812294))

(assert (=> start!124558 true))

(declare-fun array_inv!36190 (array!97923) Bool)

(assert (=> start!124558 (array_inv!36190 a!2862)))

(declare-fun b!1440761 () Bool)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440761 (= e!812292 (not (validKeyInArray!0 (select (store (arr!47245 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))))

(declare-fun b!1440762 () Bool)

(declare-fun res!973300 () Bool)

(assert (=> b!1440762 (=> (not res!973300) (not e!812294))))

(declare-datatypes ((List!33926 0))(
  ( (Nil!33923) (Cons!33922 (h!35272 (_ BitVec 64)) (t!48627 List!33926)) )
))
(declare-fun arrayNoDuplicates!0 (array!97923 (_ BitVec 32) List!33926) Bool)

(assert (=> b!1440762 (= res!973300 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33923))))

(declare-fun b!1440763 () Bool)

(declare-fun res!973299 () Bool)

(assert (=> b!1440763 (=> (not res!973299) (not e!812294))))

(assert (=> b!1440763 (= res!973299 (and (= (size!47796 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47796 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47796 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440764 () Bool)

(declare-fun res!973302 () Bool)

(assert (=> b!1440764 (=> (not res!973302) (not e!812292))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1440764 (= res!973302 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47245 a!2862) j!93) a!2862 mask!2687) lt!632971))))

(declare-fun b!1440765 () Bool)

(declare-fun res!973296 () Bool)

(assert (=> b!1440765 (=> (not res!973296) (not e!812294))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1440765 (= res!973296 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47796 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47796 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47796 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47245 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440766 () Bool)

(declare-fun res!973297 () Bool)

(assert (=> b!1440766 (=> (not res!973297) (not e!812294))))

(assert (=> b!1440766 (= res!973297 (validKeyInArray!0 (select (arr!47245 a!2862) j!93)))))

(declare-fun b!1440767 () Bool)

(declare-fun res!973303 () Bool)

(assert (=> b!1440767 (=> (not res!973303) (not e!812292))))

(assert (=> b!1440767 (= res!973303 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47245 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47245 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97924 (store (arr!47245 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47796 a!2862)) mask!2687) (Intermediate!11520 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1440768 () Bool)

(declare-fun res!973295 () Bool)

(assert (=> b!1440768 (=> (not res!973295) (not e!812292))))

(assert (=> b!1440768 (= res!973295 (and (bvsgt x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000)))))

(declare-fun b!1440769 () Bool)

(declare-fun res!973304 () Bool)

(assert (=> b!1440769 (=> (not res!973304) (not e!812294))))

(assert (=> b!1440769 (= res!973304 (validKeyInArray!0 (select (arr!47245 a!2862) i!1006)))))

(assert (= (and start!124558 res!973301) b!1440763))

(assert (= (and b!1440763 res!973299) b!1440769))

(assert (= (and b!1440769 res!973304) b!1440766))

(assert (= (and b!1440766 res!973297) b!1440760))

(assert (= (and b!1440760 res!973305) b!1440762))

(assert (= (and b!1440762 res!973300) b!1440765))

(assert (= (and b!1440765 res!973296) b!1440759))

(assert (= (and b!1440759 res!973298) b!1440764))

(assert (= (and b!1440764 res!973302) b!1440767))

(assert (= (and b!1440767 res!973303) b!1440768))

(assert (= (and b!1440768 res!973295) b!1440761))

(declare-fun m!1330053 () Bool)

(assert (=> b!1440762 m!1330053))

(declare-fun m!1330055 () Bool)

(assert (=> b!1440760 m!1330055))

(declare-fun m!1330057 () Bool)

(assert (=> b!1440765 m!1330057))

(declare-fun m!1330059 () Bool)

(assert (=> b!1440765 m!1330059))

(assert (=> b!1440761 m!1330057))

(declare-fun m!1330061 () Bool)

(assert (=> b!1440761 m!1330061))

(assert (=> b!1440761 m!1330061))

(declare-fun m!1330063 () Bool)

(assert (=> b!1440761 m!1330063))

(declare-fun m!1330065 () Bool)

(assert (=> b!1440764 m!1330065))

(assert (=> b!1440764 m!1330065))

(declare-fun m!1330067 () Bool)

(assert (=> b!1440764 m!1330067))

(assert (=> b!1440759 m!1330065))

(assert (=> b!1440759 m!1330065))

(declare-fun m!1330069 () Bool)

(assert (=> b!1440759 m!1330069))

(assert (=> b!1440759 m!1330069))

(assert (=> b!1440759 m!1330065))

(declare-fun m!1330071 () Bool)

(assert (=> b!1440759 m!1330071))

(assert (=> b!1440766 m!1330065))

(assert (=> b!1440766 m!1330065))

(declare-fun m!1330073 () Bool)

(assert (=> b!1440766 m!1330073))

(declare-fun m!1330075 () Bool)

(assert (=> start!124558 m!1330075))

(declare-fun m!1330077 () Bool)

(assert (=> start!124558 m!1330077))

(declare-fun m!1330079 () Bool)

(assert (=> b!1440769 m!1330079))

(assert (=> b!1440769 m!1330079))

(declare-fun m!1330081 () Bool)

(assert (=> b!1440769 m!1330081))

(assert (=> b!1440767 m!1330057))

(assert (=> b!1440767 m!1330061))

(assert (=> b!1440767 m!1330061))

(declare-fun m!1330083 () Bool)

(assert (=> b!1440767 m!1330083))

(assert (=> b!1440767 m!1330083))

(assert (=> b!1440767 m!1330061))

(declare-fun m!1330085 () Bool)

(assert (=> b!1440767 m!1330085))

(push 1)

