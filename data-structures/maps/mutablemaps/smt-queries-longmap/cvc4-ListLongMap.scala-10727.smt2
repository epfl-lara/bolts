; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125546 () Bool)

(assert start!125546)

(declare-fun b!1468232 () Bool)

(declare-fun res!996881 () Bool)

(declare-fun e!824524 () Bool)

(assert (=> b!1468232 (=> (not res!996881) (not e!824524))))

(declare-datatypes ((array!98911 0))(
  ( (array!98912 (arr!47739 (Array (_ BitVec 32) (_ BitVec 64))) (size!48290 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98911)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98911 (_ BitVec 32)) Bool)

(assert (=> b!1468232 (= res!996881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468233 () Bool)

(declare-fun res!996883 () Bool)

(assert (=> b!1468233 (=> (not res!996883) (not e!824524))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468233 (= res!996883 (validKeyInArray!0 (select (arr!47739 a!2862) i!1006)))))

(declare-fun b!1468234 () Bool)

(declare-fun e!824525 () Bool)

(assert (=> b!1468234 (= e!824525 false)))

(declare-datatypes ((SeekEntryResult!12002 0))(
  ( (MissingZero!12002 (index!50399 (_ BitVec 32))) (Found!12002 (index!50400 (_ BitVec 32))) (Intermediate!12002 (undefined!12814 Bool) (index!50401 (_ BitVec 32)) (x!131990 (_ BitVec 32))) (Undefined!12002) (MissingVacant!12002 (index!50402 (_ BitVec 32))) )
))
(declare-fun lt!642202 () SeekEntryResult!12002)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98911 (_ BitVec 32)) SeekEntryResult!12002)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468234 (= lt!642202 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47739 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47739 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98912 (store (arr!47739 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48290 a!2862)) mask!2687))))

(declare-fun b!1468235 () Bool)

(declare-fun res!996886 () Bool)

(assert (=> b!1468235 (=> (not res!996886) (not e!824524))))

(declare-datatypes ((List!34420 0))(
  ( (Nil!34417) (Cons!34416 (h!35766 (_ BitVec 64)) (t!49121 List!34420)) )
))
(declare-fun arrayNoDuplicates!0 (array!98911 (_ BitVec 32) List!34420) Bool)

(assert (=> b!1468235 (= res!996886 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34417))))

(declare-fun b!1468236 () Bool)

(declare-fun res!996880 () Bool)

(assert (=> b!1468236 (=> (not res!996880) (not e!824525))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!642201 () SeekEntryResult!12002)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1468236 (= res!996880 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47739 a!2862) j!93) a!2862 mask!2687) lt!642201))))

(declare-fun b!1468237 () Bool)

(assert (=> b!1468237 (= e!824524 e!824525)))

(declare-fun res!996882 () Bool)

(assert (=> b!1468237 (=> (not res!996882) (not e!824525))))

(assert (=> b!1468237 (= res!996882 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47739 a!2862) j!93) mask!2687) (select (arr!47739 a!2862) j!93) a!2862 mask!2687) lt!642201))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468237 (= lt!642201 (Intermediate!12002 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468238 () Bool)

(declare-fun res!996887 () Bool)

(assert (=> b!1468238 (=> (not res!996887) (not e!824524))))

(assert (=> b!1468238 (= res!996887 (and (= (size!48290 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48290 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48290 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!996885 () Bool)

(assert (=> start!125546 (=> (not res!996885) (not e!824524))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125546 (= res!996885 (validMask!0 mask!2687))))

(assert (=> start!125546 e!824524))

(assert (=> start!125546 true))

(declare-fun array_inv!36684 (array!98911) Bool)

(assert (=> start!125546 (array_inv!36684 a!2862)))

(declare-fun b!1468239 () Bool)

(declare-fun res!996888 () Bool)

(assert (=> b!1468239 (=> (not res!996888) (not e!824524))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468239 (= res!996888 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48290 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48290 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48290 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47739 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468240 () Bool)

(declare-fun res!996884 () Bool)

(assert (=> b!1468240 (=> (not res!996884) (not e!824524))))

(assert (=> b!1468240 (= res!996884 (validKeyInArray!0 (select (arr!47739 a!2862) j!93)))))

(assert (= (and start!125546 res!996885) b!1468238))

(assert (= (and b!1468238 res!996887) b!1468233))

(assert (= (and b!1468233 res!996883) b!1468240))

(assert (= (and b!1468240 res!996884) b!1468232))

(assert (= (and b!1468232 res!996881) b!1468235))

(assert (= (and b!1468235 res!996886) b!1468239))

(assert (= (and b!1468239 res!996888) b!1468237))

(assert (= (and b!1468237 res!996882) b!1468236))

(assert (= (and b!1468236 res!996880) b!1468234))

(declare-fun m!1355329 () Bool)

(assert (=> b!1468240 m!1355329))

(assert (=> b!1468240 m!1355329))

(declare-fun m!1355331 () Bool)

(assert (=> b!1468240 m!1355331))

(declare-fun m!1355333 () Bool)

(assert (=> start!125546 m!1355333))

(declare-fun m!1355335 () Bool)

(assert (=> start!125546 m!1355335))

(assert (=> b!1468236 m!1355329))

(assert (=> b!1468236 m!1355329))

(declare-fun m!1355337 () Bool)

(assert (=> b!1468236 m!1355337))

(declare-fun m!1355339 () Bool)

(assert (=> b!1468233 m!1355339))

(assert (=> b!1468233 m!1355339))

(declare-fun m!1355341 () Bool)

(assert (=> b!1468233 m!1355341))

(declare-fun m!1355343 () Bool)

(assert (=> b!1468235 m!1355343))

(declare-fun m!1355345 () Bool)

(assert (=> b!1468234 m!1355345))

(declare-fun m!1355347 () Bool)

(assert (=> b!1468234 m!1355347))

(assert (=> b!1468234 m!1355347))

(declare-fun m!1355349 () Bool)

(assert (=> b!1468234 m!1355349))

(assert (=> b!1468234 m!1355349))

(assert (=> b!1468234 m!1355347))

(declare-fun m!1355351 () Bool)

(assert (=> b!1468234 m!1355351))

(declare-fun m!1355353 () Bool)

(assert (=> b!1468232 m!1355353))

(assert (=> b!1468237 m!1355329))

(assert (=> b!1468237 m!1355329))

(declare-fun m!1355355 () Bool)

(assert (=> b!1468237 m!1355355))

(assert (=> b!1468237 m!1355355))

(assert (=> b!1468237 m!1355329))

(declare-fun m!1355357 () Bool)

(assert (=> b!1468237 m!1355357))

(assert (=> b!1468239 m!1355345))

(declare-fun m!1355359 () Bool)

(assert (=> b!1468239 m!1355359))

(push 1)

(assert (not b!1468240))

(assert (not start!125546))

(assert (not b!1468235))

(assert (not b!1468237))

(assert (not b!1468233))

(assert (not b!1468236))

