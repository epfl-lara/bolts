; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125604 () Bool)

(assert start!125604)

(declare-fun b!1469015 () Bool)

(declare-fun res!997669 () Bool)

(declare-fun e!824786 () Bool)

(assert (=> b!1469015 (=> (not res!997669) (not e!824786))))

(declare-datatypes ((array!98969 0))(
  ( (array!98970 (arr!47768 (Array (_ BitVec 32) (_ BitVec 64))) (size!48319 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98969)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469015 (= res!997669 (validKeyInArray!0 (select (arr!47768 a!2862) i!1006)))))

(declare-fun b!1469016 () Bool)

(declare-fun res!997666 () Bool)

(declare-fun e!824785 () Bool)

(assert (=> b!1469016 (=> (not res!997666) (not e!824785))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12031 0))(
  ( (MissingZero!12031 (index!50515 (_ BitVec 32))) (Found!12031 (index!50516 (_ BitVec 32))) (Intermediate!12031 (undefined!12843 Bool) (index!50517 (_ BitVec 32)) (x!132099 (_ BitVec 32))) (Undefined!12031) (MissingVacant!12031 (index!50518 (_ BitVec 32))) )
))
(declare-fun lt!642375 () SeekEntryResult!12031)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98969 (_ BitVec 32)) SeekEntryResult!12031)

(assert (=> b!1469016 (= res!997666 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47768 a!2862) j!93) a!2862 mask!2687) lt!642375))))

(declare-fun b!1469017 () Bool)

(declare-fun res!997667 () Bool)

(assert (=> b!1469017 (=> (not res!997667) (not e!824786))))

(declare-datatypes ((List!34449 0))(
  ( (Nil!34446) (Cons!34445 (h!35795 (_ BitVec 64)) (t!49150 List!34449)) )
))
(declare-fun arrayNoDuplicates!0 (array!98969 (_ BitVec 32) List!34449) Bool)

(assert (=> b!1469017 (= res!997667 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34446))))

(declare-fun res!997664 () Bool)

(assert (=> start!125604 (=> (not res!997664) (not e!824786))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125604 (= res!997664 (validMask!0 mask!2687))))

(assert (=> start!125604 e!824786))

(assert (=> start!125604 true))

(declare-fun array_inv!36713 (array!98969) Bool)

(assert (=> start!125604 (array_inv!36713 a!2862)))

(declare-fun b!1469018 () Bool)

(assert (=> b!1469018 (= e!824785 false)))

(declare-fun lt!642376 () SeekEntryResult!12031)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469018 (= lt!642376 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47768 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47768 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98970 (store (arr!47768 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48319 a!2862)) mask!2687))))

(declare-fun b!1469019 () Bool)

(assert (=> b!1469019 (= e!824786 e!824785)))

(declare-fun res!997670 () Bool)

(assert (=> b!1469019 (=> (not res!997670) (not e!824785))))

(assert (=> b!1469019 (= res!997670 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47768 a!2862) j!93) mask!2687) (select (arr!47768 a!2862) j!93) a!2862 mask!2687) lt!642375))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1469019 (= lt!642375 (Intermediate!12031 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469020 () Bool)

(declare-fun res!997663 () Bool)

(assert (=> b!1469020 (=> (not res!997663) (not e!824786))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1469020 (= res!997663 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48319 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48319 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48319 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47768 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1469021 () Bool)

(declare-fun res!997665 () Bool)

(assert (=> b!1469021 (=> (not res!997665) (not e!824786))))

(assert (=> b!1469021 (= res!997665 (validKeyInArray!0 (select (arr!47768 a!2862) j!93)))))

(declare-fun b!1469022 () Bool)

(declare-fun res!997671 () Bool)

(assert (=> b!1469022 (=> (not res!997671) (not e!824786))))

(assert (=> b!1469022 (= res!997671 (and (= (size!48319 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48319 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48319 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1469023 () Bool)

(declare-fun res!997668 () Bool)

(assert (=> b!1469023 (=> (not res!997668) (not e!824786))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98969 (_ BitVec 32)) Bool)

(assert (=> b!1469023 (= res!997668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125604 res!997664) b!1469022))

(assert (= (and b!1469022 res!997671) b!1469015))

(assert (= (and b!1469015 res!997669) b!1469021))

(assert (= (and b!1469021 res!997665) b!1469023))

(assert (= (and b!1469023 res!997668) b!1469017))

(assert (= (and b!1469017 res!997667) b!1469020))

(assert (= (and b!1469020 res!997663) b!1469019))

(assert (= (and b!1469019 res!997670) b!1469016))

(assert (= (and b!1469016 res!997666) b!1469018))

(declare-fun m!1356257 () Bool)

(assert (=> b!1469021 m!1356257))

(assert (=> b!1469021 m!1356257))

(declare-fun m!1356259 () Bool)

(assert (=> b!1469021 m!1356259))

(declare-fun m!1356261 () Bool)

(assert (=> b!1469018 m!1356261))

(declare-fun m!1356263 () Bool)

(assert (=> b!1469018 m!1356263))

(assert (=> b!1469018 m!1356263))

(declare-fun m!1356265 () Bool)

(assert (=> b!1469018 m!1356265))

(assert (=> b!1469018 m!1356265))

(assert (=> b!1469018 m!1356263))

(declare-fun m!1356267 () Bool)

(assert (=> b!1469018 m!1356267))

(assert (=> b!1469020 m!1356261))

(declare-fun m!1356269 () Bool)

(assert (=> b!1469020 m!1356269))

(declare-fun m!1356271 () Bool)

(assert (=> start!125604 m!1356271))

(declare-fun m!1356273 () Bool)

(assert (=> start!125604 m!1356273))

(declare-fun m!1356275 () Bool)

(assert (=> b!1469017 m!1356275))

(assert (=> b!1469016 m!1356257))

(assert (=> b!1469016 m!1356257))

(declare-fun m!1356277 () Bool)

(assert (=> b!1469016 m!1356277))

(assert (=> b!1469019 m!1356257))

(assert (=> b!1469019 m!1356257))

(declare-fun m!1356279 () Bool)

(assert (=> b!1469019 m!1356279))

(assert (=> b!1469019 m!1356279))

(assert (=> b!1469019 m!1356257))

(declare-fun m!1356281 () Bool)

(assert (=> b!1469019 m!1356281))

(declare-fun m!1356283 () Bool)

(assert (=> b!1469015 m!1356283))

(assert (=> b!1469015 m!1356283))

(declare-fun m!1356285 () Bool)

(assert (=> b!1469015 m!1356285))

(declare-fun m!1356287 () Bool)

(assert (=> b!1469023 m!1356287))

(check-sat (not b!1469016) (not b!1469021) (not b!1469017) (not b!1469018) (not b!1469019) (not b!1469023) (not start!125604) (not b!1469015))
