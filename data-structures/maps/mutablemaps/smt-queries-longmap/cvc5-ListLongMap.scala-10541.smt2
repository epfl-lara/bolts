; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124384 () Bool)

(assert start!124384)

(declare-fun b!1438633 () Bool)

(declare-fun res!971292 () Bool)

(declare-fun e!811542 () Bool)

(assert (=> b!1438633 (=> (not res!971292) (not e!811542))))

(declare-datatypes ((array!97788 0))(
  ( (array!97789 (arr!47179 (Array (_ BitVec 32) (_ BitVec 64))) (size!47730 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97788)

(declare-datatypes ((List!33860 0))(
  ( (Nil!33857) (Cons!33856 (h!35203 (_ BitVec 64)) (t!48561 List!33860)) )
))
(declare-fun arrayNoDuplicates!0 (array!97788 (_ BitVec 32) List!33860) Bool)

(assert (=> b!1438633 (= res!971292 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33857))))

(declare-fun b!1438634 () Bool)

(declare-fun res!971296 () Bool)

(assert (=> b!1438634 (=> (not res!971296) (not e!811542))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97788 (_ BitVec 32)) Bool)

(assert (=> b!1438634 (= res!971296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!971300 () Bool)

(assert (=> start!124384 (=> (not res!971300) (not e!811542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124384 (= res!971300 (validMask!0 mask!2687))))

(assert (=> start!124384 e!811542))

(assert (=> start!124384 true))

(declare-fun array_inv!36124 (array!97788) Bool)

(assert (=> start!124384 (array_inv!36124 a!2862)))

(declare-fun b!1438635 () Bool)

(declare-fun res!971297 () Bool)

(assert (=> b!1438635 (=> (not res!971297) (not e!811542))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1438635 (= res!971297 (and (= (size!47730 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47730 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47730 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1438636 () Bool)

(declare-fun e!811544 () Bool)

(assert (=> b!1438636 (= e!811542 e!811544)))

(declare-fun res!971295 () Bool)

(assert (=> b!1438636 (=> (not res!971295) (not e!811544))))

(declare-datatypes ((SeekEntryResult!11454 0))(
  ( (MissingZero!11454 (index!48207 (_ BitVec 32))) (Found!11454 (index!48208 (_ BitVec 32))) (Intermediate!11454 (undefined!12266 Bool) (index!48209 (_ BitVec 32)) (x!129948 (_ BitVec 32))) (Undefined!11454) (MissingVacant!11454 (index!48210 (_ BitVec 32))) )
))
(declare-fun lt!632575 () SeekEntryResult!11454)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97788 (_ BitVec 32)) SeekEntryResult!11454)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438636 (= res!971295 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47179 a!2862) j!93) mask!2687) (select (arr!47179 a!2862) j!93) a!2862 mask!2687) lt!632575))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1438636 (= lt!632575 (Intermediate!11454 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1438637 () Bool)

(declare-fun res!971293 () Bool)

(assert (=> b!1438637 (=> (not res!971293) (not e!811542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438637 (= res!971293 (validKeyInArray!0 (select (arr!47179 a!2862) j!93)))))

(declare-fun b!1438638 () Bool)

(declare-fun res!971294 () Bool)

(assert (=> b!1438638 (=> (not res!971294) (not e!811544))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1438638 (= res!971294 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47179 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47179 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97789 (store (arr!47179 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47730 a!2862)) mask!2687) (Intermediate!11454 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1438639 () Bool)

(declare-fun res!971298 () Bool)

(assert (=> b!1438639 (=> (not res!971298) (not e!811542))))

(assert (=> b!1438639 (= res!971298 (validKeyInArray!0 (select (arr!47179 a!2862) i!1006)))))

(declare-fun b!1438640 () Bool)

(declare-fun res!971301 () Bool)

(assert (=> b!1438640 (=> (not res!971301) (not e!811542))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1438640 (= res!971301 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47730 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47730 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47730 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47179 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438641 () Bool)

(assert (=> b!1438641 (= e!811544 (and (bvsle x!665 intermediateAfterX!19) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(declare-fun b!1438642 () Bool)

(declare-fun res!971299 () Bool)

(assert (=> b!1438642 (=> (not res!971299) (not e!811544))))

(assert (=> b!1438642 (= res!971299 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47179 a!2862) j!93) a!2862 mask!2687) lt!632575))))

(assert (= (and start!124384 res!971300) b!1438635))

(assert (= (and b!1438635 res!971297) b!1438639))

(assert (= (and b!1438639 res!971298) b!1438637))

(assert (= (and b!1438637 res!971293) b!1438634))

(assert (= (and b!1438634 res!971296) b!1438633))

(assert (= (and b!1438633 res!971292) b!1438640))

(assert (= (and b!1438640 res!971301) b!1438636))

(assert (= (and b!1438636 res!971295) b!1438642))

(assert (= (and b!1438642 res!971299) b!1438638))

(assert (= (and b!1438638 res!971294) b!1438641))

(declare-fun m!1327803 () Bool)

(assert (=> b!1438634 m!1327803))

(declare-fun m!1327805 () Bool)

(assert (=> b!1438639 m!1327805))

(assert (=> b!1438639 m!1327805))

(declare-fun m!1327807 () Bool)

(assert (=> b!1438639 m!1327807))

(declare-fun m!1327809 () Bool)

(assert (=> b!1438633 m!1327809))

(declare-fun m!1327811 () Bool)

(assert (=> b!1438640 m!1327811))

(declare-fun m!1327813 () Bool)

(assert (=> b!1438640 m!1327813))

(declare-fun m!1327815 () Bool)

(assert (=> b!1438642 m!1327815))

(assert (=> b!1438642 m!1327815))

(declare-fun m!1327817 () Bool)

(assert (=> b!1438642 m!1327817))

(declare-fun m!1327819 () Bool)

(assert (=> start!124384 m!1327819))

(declare-fun m!1327821 () Bool)

(assert (=> start!124384 m!1327821))

(assert (=> b!1438637 m!1327815))

(assert (=> b!1438637 m!1327815))

(declare-fun m!1327823 () Bool)

(assert (=> b!1438637 m!1327823))

(assert (=> b!1438636 m!1327815))

(assert (=> b!1438636 m!1327815))

(declare-fun m!1327825 () Bool)

(assert (=> b!1438636 m!1327825))

(assert (=> b!1438636 m!1327825))

(assert (=> b!1438636 m!1327815))

(declare-fun m!1327827 () Bool)

(assert (=> b!1438636 m!1327827))

(assert (=> b!1438638 m!1327811))

(declare-fun m!1327829 () Bool)

(assert (=> b!1438638 m!1327829))

(assert (=> b!1438638 m!1327829))

(declare-fun m!1327831 () Bool)

(assert (=> b!1438638 m!1327831))

(assert (=> b!1438638 m!1327831))

(assert (=> b!1438638 m!1327829))

(declare-fun m!1327833 () Bool)

(assert (=> b!1438638 m!1327833))

(push 1)

