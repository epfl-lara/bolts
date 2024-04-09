; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124460 () Bool)

(assert start!124460)

(declare-fun b!1439342 () Bool)

(declare-fun res!971878 () Bool)

(declare-fun e!811852 () Bool)

(assert (=> b!1439342 (=> (not res!971878) (not e!811852))))

(declare-datatypes ((array!97825 0))(
  ( (array!97826 (arr!47196 (Array (_ BitVec 32) (_ BitVec 64))) (size!47747 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97825)

(declare-datatypes ((List!33877 0))(
  ( (Nil!33874) (Cons!33873 (h!35223 (_ BitVec 64)) (t!48578 List!33877)) )
))
(declare-fun arrayNoDuplicates!0 (array!97825 (_ BitVec 32) List!33877) Bool)

(assert (=> b!1439342 (= res!971878 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33874))))

(declare-fun b!1439343 () Bool)

(declare-fun e!811853 () Bool)

(assert (=> b!1439343 (= e!811852 e!811853)))

(declare-fun res!971879 () Bool)

(assert (=> b!1439343 (=> (not res!971879) (not e!811853))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11471 0))(
  ( (MissingZero!11471 (index!48275 (_ BitVec 32))) (Found!11471 (index!48276 (_ BitVec 32))) (Intermediate!11471 (undefined!12283 Bool) (index!48277 (_ BitVec 32)) (x!130011 (_ BitVec 32))) (Undefined!11471) (MissingVacant!11471 (index!48278 (_ BitVec 32))) )
))
(declare-fun lt!632751 () SeekEntryResult!11471)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97825 (_ BitVec 32)) SeekEntryResult!11471)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439343 (= res!971879 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47196 a!2862) j!93) mask!2687) (select (arr!47196 a!2862) j!93) a!2862 mask!2687) lt!632751))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1439343 (= lt!632751 (Intermediate!11471 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439344 () Bool)

(declare-fun res!971885 () Bool)

(assert (=> b!1439344 (=> (not res!971885) (not e!811852))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97825 (_ BitVec 32)) Bool)

(assert (=> b!1439344 (= res!971885 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439345 () Bool)

(declare-fun res!971883 () Bool)

(assert (=> b!1439345 (=> (not res!971883) (not e!811853))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1439345 (= res!971883 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47196 a!2862) j!93) a!2862 mask!2687) lt!632751))))

(declare-fun b!1439346 () Bool)

(declare-fun res!971880 () Bool)

(assert (=> b!1439346 (=> (not res!971880) (not e!811852))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439346 (= res!971880 (validKeyInArray!0 (select (arr!47196 a!2862) j!93)))))

(declare-fun res!971886 () Bool)

(assert (=> start!124460 (=> (not res!971886) (not e!811852))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124460 (= res!971886 (validMask!0 mask!2687))))

(assert (=> start!124460 e!811852))

(assert (=> start!124460 true))

(declare-fun array_inv!36141 (array!97825) Bool)

(assert (=> start!124460 (array_inv!36141 a!2862)))

(declare-fun b!1439347 () Bool)

(assert (=> b!1439347 (= e!811853 false)))

(declare-fun lt!632752 () SeekEntryResult!11471)

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1439347 (= lt!632752 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47196 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47196 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97826 (store (arr!47196 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47747 a!2862)) mask!2687))))

(declare-fun b!1439348 () Bool)

(declare-fun res!971884 () Bool)

(assert (=> b!1439348 (=> (not res!971884) (not e!811852))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1439348 (= res!971884 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47747 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47747 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47747 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47196 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439349 () Bool)

(declare-fun res!971881 () Bool)

(assert (=> b!1439349 (=> (not res!971881) (not e!811852))))

(assert (=> b!1439349 (= res!971881 (validKeyInArray!0 (select (arr!47196 a!2862) i!1006)))))

(declare-fun b!1439350 () Bool)

(declare-fun res!971882 () Bool)

(assert (=> b!1439350 (=> (not res!971882) (not e!811852))))

(assert (=> b!1439350 (= res!971882 (and (= (size!47747 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47747 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47747 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124460 res!971886) b!1439350))

(assert (= (and b!1439350 res!971882) b!1439349))

(assert (= (and b!1439349 res!971881) b!1439346))

(assert (= (and b!1439346 res!971880) b!1439344))

(assert (= (and b!1439344 res!971885) b!1439342))

(assert (= (and b!1439342 res!971878) b!1439348))

(assert (= (and b!1439348 res!971884) b!1439343))

(assert (= (and b!1439343 res!971879) b!1439345))

(assert (= (and b!1439345 res!971883) b!1439347))

(declare-fun m!1328473 () Bool)

(assert (=> b!1439346 m!1328473))

(assert (=> b!1439346 m!1328473))

(declare-fun m!1328475 () Bool)

(assert (=> b!1439346 m!1328475))

(declare-fun m!1328477 () Bool)

(assert (=> b!1439347 m!1328477))

(declare-fun m!1328479 () Bool)

(assert (=> b!1439347 m!1328479))

(assert (=> b!1439347 m!1328479))

(declare-fun m!1328481 () Bool)

(assert (=> b!1439347 m!1328481))

(assert (=> b!1439347 m!1328481))

(assert (=> b!1439347 m!1328479))

(declare-fun m!1328483 () Bool)

(assert (=> b!1439347 m!1328483))

(assert (=> b!1439345 m!1328473))

(assert (=> b!1439345 m!1328473))

(declare-fun m!1328485 () Bool)

(assert (=> b!1439345 m!1328485))

(declare-fun m!1328487 () Bool)

(assert (=> start!124460 m!1328487))

(declare-fun m!1328489 () Bool)

(assert (=> start!124460 m!1328489))

(assert (=> b!1439348 m!1328477))

(declare-fun m!1328491 () Bool)

(assert (=> b!1439348 m!1328491))

(declare-fun m!1328493 () Bool)

(assert (=> b!1439342 m!1328493))

(assert (=> b!1439343 m!1328473))

(assert (=> b!1439343 m!1328473))

(declare-fun m!1328495 () Bool)

(assert (=> b!1439343 m!1328495))

(assert (=> b!1439343 m!1328495))

(assert (=> b!1439343 m!1328473))

(declare-fun m!1328497 () Bool)

(assert (=> b!1439343 m!1328497))

(declare-fun m!1328499 () Bool)

(assert (=> b!1439349 m!1328499))

(assert (=> b!1439349 m!1328499))

(declare-fun m!1328501 () Bool)

(assert (=> b!1439349 m!1328501))

(declare-fun m!1328503 () Bool)

(assert (=> b!1439344 m!1328503))

(push 1)

