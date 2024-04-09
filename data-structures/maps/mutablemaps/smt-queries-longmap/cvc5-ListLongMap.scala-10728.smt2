; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125548 () Bool)

(assert start!125548)

(declare-fun b!1468259 () Bool)

(declare-fun e!824534 () Bool)

(assert (=> b!1468259 (= e!824534 false)))

(declare-datatypes ((SeekEntryResult!12003 0))(
  ( (MissingZero!12003 (index!50403 (_ BitVec 32))) (Found!12003 (index!50404 (_ BitVec 32))) (Intermediate!12003 (undefined!12815 Bool) (index!50405 (_ BitVec 32)) (x!131999 (_ BitVec 32))) (Undefined!12003) (MissingVacant!12003 (index!50406 (_ BitVec 32))) )
))
(declare-fun lt!642207 () SeekEntryResult!12003)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98913 0))(
  ( (array!98914 (arr!47740 (Array (_ BitVec 32) (_ BitVec 64))) (size!48291 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98913)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98913 (_ BitVec 32)) SeekEntryResult!12003)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468259 (= lt!642207 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47740 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47740 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98914 (store (arr!47740 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48291 a!2862)) mask!2687))))

(declare-fun b!1468260 () Bool)

(declare-fun res!996912 () Bool)

(assert (=> b!1468260 (=> (not res!996912) (not e!824534))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!642208 () SeekEntryResult!12003)

(assert (=> b!1468260 (= res!996912 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47740 a!2862) j!93) a!2862 mask!2687) lt!642208))))

(declare-fun b!1468261 () Bool)

(declare-fun res!996911 () Bool)

(declare-fun e!824533 () Bool)

(assert (=> b!1468261 (=> (not res!996911) (not e!824533))))

(declare-datatypes ((List!34421 0))(
  ( (Nil!34418) (Cons!34417 (h!35767 (_ BitVec 64)) (t!49122 List!34421)) )
))
(declare-fun arrayNoDuplicates!0 (array!98913 (_ BitVec 32) List!34421) Bool)

(assert (=> b!1468261 (= res!996911 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34418))))

(declare-fun b!1468262 () Bool)

(declare-fun res!996914 () Bool)

(assert (=> b!1468262 (=> (not res!996914) (not e!824533))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468262 (= res!996914 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48291 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48291 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48291 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47740 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!996910 () Bool)

(assert (=> start!125548 (=> (not res!996910) (not e!824533))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125548 (= res!996910 (validMask!0 mask!2687))))

(assert (=> start!125548 e!824533))

(assert (=> start!125548 true))

(declare-fun array_inv!36685 (array!98913) Bool)

(assert (=> start!125548 (array_inv!36685 a!2862)))

(declare-fun b!1468263 () Bool)

(declare-fun res!996915 () Bool)

(assert (=> b!1468263 (=> (not res!996915) (not e!824533))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98913 (_ BitVec 32)) Bool)

(assert (=> b!1468263 (= res!996915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468264 () Bool)

(declare-fun res!996913 () Bool)

(assert (=> b!1468264 (=> (not res!996913) (not e!824533))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468264 (= res!996913 (validKeyInArray!0 (select (arr!47740 a!2862) i!1006)))))

(declare-fun b!1468265 () Bool)

(assert (=> b!1468265 (= e!824533 e!824534)))

(declare-fun res!996907 () Bool)

(assert (=> b!1468265 (=> (not res!996907) (not e!824534))))

(assert (=> b!1468265 (= res!996907 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47740 a!2862) j!93) mask!2687) (select (arr!47740 a!2862) j!93) a!2862 mask!2687) lt!642208))))

(assert (=> b!1468265 (= lt!642208 (Intermediate!12003 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468266 () Bool)

(declare-fun res!996908 () Bool)

(assert (=> b!1468266 (=> (not res!996908) (not e!824533))))

(assert (=> b!1468266 (= res!996908 (validKeyInArray!0 (select (arr!47740 a!2862) j!93)))))

(declare-fun b!1468267 () Bool)

(declare-fun res!996909 () Bool)

(assert (=> b!1468267 (=> (not res!996909) (not e!824533))))

(assert (=> b!1468267 (= res!996909 (and (= (size!48291 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48291 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48291 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125548 res!996910) b!1468267))

(assert (= (and b!1468267 res!996909) b!1468264))

(assert (= (and b!1468264 res!996913) b!1468266))

(assert (= (and b!1468266 res!996908) b!1468263))

(assert (= (and b!1468263 res!996915) b!1468261))

(assert (= (and b!1468261 res!996911) b!1468262))

(assert (= (and b!1468262 res!996914) b!1468265))

(assert (= (and b!1468265 res!996907) b!1468260))

(assert (= (and b!1468260 res!996912) b!1468259))

(declare-fun m!1355361 () Bool)

(assert (=> b!1468260 m!1355361))

(assert (=> b!1468260 m!1355361))

(declare-fun m!1355363 () Bool)

(assert (=> b!1468260 m!1355363))

(declare-fun m!1355365 () Bool)

(assert (=> b!1468264 m!1355365))

(assert (=> b!1468264 m!1355365))

(declare-fun m!1355367 () Bool)

(assert (=> b!1468264 m!1355367))

(declare-fun m!1355369 () Bool)

(assert (=> b!1468261 m!1355369))

(declare-fun m!1355371 () Bool)

(assert (=> b!1468262 m!1355371))

(declare-fun m!1355373 () Bool)

(assert (=> b!1468262 m!1355373))

(declare-fun m!1355375 () Bool)

(assert (=> b!1468263 m!1355375))

(declare-fun m!1355377 () Bool)

(assert (=> start!125548 m!1355377))

(declare-fun m!1355379 () Bool)

(assert (=> start!125548 m!1355379))

(assert (=> b!1468266 m!1355361))

(assert (=> b!1468266 m!1355361))

(declare-fun m!1355381 () Bool)

(assert (=> b!1468266 m!1355381))

(assert (=> b!1468265 m!1355361))

(assert (=> b!1468265 m!1355361))

(declare-fun m!1355383 () Bool)

(assert (=> b!1468265 m!1355383))

(assert (=> b!1468265 m!1355383))

(assert (=> b!1468265 m!1355361))

(declare-fun m!1355385 () Bool)

(assert (=> b!1468265 m!1355385))

(assert (=> b!1468259 m!1355371))

(declare-fun m!1355387 () Bool)

(assert (=> b!1468259 m!1355387))

(assert (=> b!1468259 m!1355387))

(declare-fun m!1355389 () Bool)

(assert (=> b!1468259 m!1355389))

(assert (=> b!1468259 m!1355389))

(assert (=> b!1468259 m!1355387))

(declare-fun m!1355391 () Bool)

(assert (=> b!1468259 m!1355391))

(push 1)

