; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125540 () Bool)

(assert start!125540)

(declare-fun b!1468151 () Bool)

(declare-fun res!996802 () Bool)

(declare-fun e!824497 () Bool)

(assert (=> b!1468151 (=> (not res!996802) (not e!824497))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98905 0))(
  ( (array!98906 (arr!47736 (Array (_ BitVec 32) (_ BitVec 64))) (size!48287 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98905)

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1468151 (= res!996802 (and (= (size!48287 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48287 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48287 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468152 () Bool)

(declare-fun res!996801 () Bool)

(declare-fun e!824496 () Bool)

(assert (=> b!1468152 (=> (not res!996801) (not e!824496))))

(declare-datatypes ((SeekEntryResult!11999 0))(
  ( (MissingZero!11999 (index!50387 (_ BitVec 32))) (Found!11999 (index!50388 (_ BitVec 32))) (Intermediate!11999 (undefined!12811 Bool) (index!50389 (_ BitVec 32)) (x!131979 (_ BitVec 32))) (Undefined!11999) (MissingVacant!11999 (index!50390 (_ BitVec 32))) )
))
(declare-fun lt!642184 () SeekEntryResult!11999)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98905 (_ BitVec 32)) SeekEntryResult!11999)

(assert (=> b!1468152 (= res!996801 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47736 a!2862) j!93) a!2862 mask!2687) lt!642184))))

(declare-fun b!1468153 () Bool)

(assert (=> b!1468153 (= e!824496 false)))

(declare-fun lt!642183 () SeekEntryResult!11999)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468153 (= lt!642183 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47736 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47736 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98906 (store (arr!47736 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48287 a!2862)) mask!2687))))

(declare-fun b!1468154 () Bool)

(assert (=> b!1468154 (= e!824497 e!824496)))

(declare-fun res!996803 () Bool)

(assert (=> b!1468154 (=> (not res!996803) (not e!824496))))

(assert (=> b!1468154 (= res!996803 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47736 a!2862) j!93) mask!2687) (select (arr!47736 a!2862) j!93) a!2862 mask!2687) lt!642184))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468154 (= lt!642184 (Intermediate!11999 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468155 () Bool)

(declare-fun res!996806 () Bool)

(assert (=> b!1468155 (=> (not res!996806) (not e!824497))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98905 (_ BitVec 32)) Bool)

(assert (=> b!1468155 (= res!996806 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!996805 () Bool)

(assert (=> start!125540 (=> (not res!996805) (not e!824497))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125540 (= res!996805 (validMask!0 mask!2687))))

(assert (=> start!125540 e!824497))

(assert (=> start!125540 true))

(declare-fun array_inv!36681 (array!98905) Bool)

(assert (=> start!125540 (array_inv!36681 a!2862)))

(declare-fun b!1468156 () Bool)

(declare-fun res!996799 () Bool)

(assert (=> b!1468156 (=> (not res!996799) (not e!824497))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468156 (= res!996799 (validKeyInArray!0 (select (arr!47736 a!2862) i!1006)))))

(declare-fun b!1468157 () Bool)

(declare-fun res!996804 () Bool)

(assert (=> b!1468157 (=> (not res!996804) (not e!824497))))

(assert (=> b!1468157 (= res!996804 (validKeyInArray!0 (select (arr!47736 a!2862) j!93)))))

(declare-fun b!1468158 () Bool)

(declare-fun res!996807 () Bool)

(assert (=> b!1468158 (=> (not res!996807) (not e!824497))))

(declare-datatypes ((List!34417 0))(
  ( (Nil!34414) (Cons!34413 (h!35763 (_ BitVec 64)) (t!49118 List!34417)) )
))
(declare-fun arrayNoDuplicates!0 (array!98905 (_ BitVec 32) List!34417) Bool)

(assert (=> b!1468158 (= res!996807 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34414))))

(declare-fun b!1468159 () Bool)

(declare-fun res!996800 () Bool)

(assert (=> b!1468159 (=> (not res!996800) (not e!824497))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468159 (= res!996800 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48287 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48287 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48287 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47736 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!125540 res!996805) b!1468151))

(assert (= (and b!1468151 res!996802) b!1468156))

(assert (= (and b!1468156 res!996799) b!1468157))

(assert (= (and b!1468157 res!996804) b!1468155))

(assert (= (and b!1468155 res!996806) b!1468158))

(assert (= (and b!1468158 res!996807) b!1468159))

(assert (= (and b!1468159 res!996800) b!1468154))

(assert (= (and b!1468154 res!996803) b!1468152))

(assert (= (and b!1468152 res!996801) b!1468153))

(declare-fun m!1355233 () Bool)

(assert (=> b!1468159 m!1355233))

(declare-fun m!1355235 () Bool)

(assert (=> b!1468159 m!1355235))

(declare-fun m!1355237 () Bool)

(assert (=> b!1468158 m!1355237))

(declare-fun m!1355239 () Bool)

(assert (=> b!1468156 m!1355239))

(assert (=> b!1468156 m!1355239))

(declare-fun m!1355241 () Bool)

(assert (=> b!1468156 m!1355241))

(declare-fun m!1355243 () Bool)

(assert (=> b!1468157 m!1355243))

(assert (=> b!1468157 m!1355243))

(declare-fun m!1355245 () Bool)

(assert (=> b!1468157 m!1355245))

(assert (=> b!1468154 m!1355243))

(assert (=> b!1468154 m!1355243))

(declare-fun m!1355247 () Bool)

(assert (=> b!1468154 m!1355247))

(assert (=> b!1468154 m!1355247))

(assert (=> b!1468154 m!1355243))

(declare-fun m!1355249 () Bool)

(assert (=> b!1468154 m!1355249))

(declare-fun m!1355251 () Bool)

(assert (=> b!1468155 m!1355251))

(assert (=> b!1468153 m!1355233))

(declare-fun m!1355253 () Bool)

(assert (=> b!1468153 m!1355253))

(assert (=> b!1468153 m!1355253))

(declare-fun m!1355255 () Bool)

(assert (=> b!1468153 m!1355255))

(assert (=> b!1468153 m!1355255))

(assert (=> b!1468153 m!1355253))

(declare-fun m!1355257 () Bool)

(assert (=> b!1468153 m!1355257))

(declare-fun m!1355259 () Bool)

(assert (=> start!125540 m!1355259))

(declare-fun m!1355261 () Bool)

(assert (=> start!125540 m!1355261))

(assert (=> b!1468152 m!1355243))

(assert (=> b!1468152 m!1355243))

(declare-fun m!1355263 () Bool)

(assert (=> b!1468152 m!1355263))

(push 1)

