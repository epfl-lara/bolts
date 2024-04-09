; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125618 () Bool)

(assert start!125618)

(declare-fun res!997889 () Bool)

(declare-fun e!824898 () Bool)

(assert (=> start!125618 (=> (not res!997889) (not e!824898))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125618 (= res!997889 (validMask!0 mask!2687))))

(assert (=> start!125618 e!824898))

(assert (=> start!125618 true))

(declare-datatypes ((array!98983 0))(
  ( (array!98984 (arr!47775 (Array (_ BitVec 32) (_ BitVec 64))) (size!48326 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98983)

(declare-fun array_inv!36720 (array!98983) Bool)

(assert (=> start!125618 (array_inv!36720 a!2862)))

(declare-fun b!1469272 () Bool)

(declare-fun res!997894 () Bool)

(assert (=> b!1469272 (=> (not res!997894) (not e!824898))))

(declare-datatypes ((List!34456 0))(
  ( (Nil!34453) (Cons!34452 (h!35802 (_ BitVec 64)) (t!49157 List!34456)) )
))
(declare-fun arrayNoDuplicates!0 (array!98983 (_ BitVec 32) List!34456) Bool)

(assert (=> b!1469272 (= res!997894 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34453))))

(declare-fun b!1469273 () Bool)

(declare-fun res!997895 () Bool)

(assert (=> b!1469273 (=> (not res!997895) (not e!824898))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469273 (= res!997895 (validKeyInArray!0 (select (arr!47775 a!2862) i!1006)))))

(declare-fun b!1469274 () Bool)

(declare-fun res!997891 () Bool)

(assert (=> b!1469274 (=> (not res!997891) (not e!824898))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1469274 (= res!997891 (and (= (size!48326 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48326 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48326 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1469275 () Bool)

(declare-fun e!824899 () Bool)

(declare-fun e!824900 () Bool)

(assert (=> b!1469275 (= e!824899 e!824900)))

(declare-fun res!997890 () Bool)

(assert (=> b!1469275 (=> (not res!997890) (not e!824900))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12038 0))(
  ( (MissingZero!12038 (index!50543 (_ BitVec 32))) (Found!12038 (index!50544 (_ BitVec 32))) (Intermediate!12038 (undefined!12850 Bool) (index!50545 (_ BitVec 32)) (x!132122 (_ BitVec 32))) (Undefined!12038) (MissingVacant!12038 (index!50546 (_ BitVec 32))) )
))
(declare-fun lt!642469 () SeekEntryResult!12038)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1469275 (= res!997890 (= lt!642469 (Intermediate!12038 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!642471 () array!98983)

(declare-fun lt!642468 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98983 (_ BitVec 32)) SeekEntryResult!12038)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469275 (= lt!642469 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642468 mask!2687) lt!642468 lt!642471 mask!2687))))

(assert (=> b!1469275 (= lt!642468 (select (store (arr!47775 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1469276 () Bool)

(declare-fun e!824903 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1469276 (= e!824903 (not (= lt!642469 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642468 lt!642471 mask!2687))))))

(declare-fun b!1469277 () Bool)

(declare-fun e!824901 () Bool)

(assert (=> b!1469277 (= e!824898 e!824901)))

(declare-fun res!997886 () Bool)

(assert (=> b!1469277 (=> (not res!997886) (not e!824901))))

(assert (=> b!1469277 (= res!997886 (= (select (store (arr!47775 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1469277 (= lt!642471 (array!98984 (store (arr!47775 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48326 a!2862)))))

(declare-fun b!1469278 () Bool)

(declare-fun res!997896 () Bool)

(assert (=> b!1469278 (=> (not res!997896) (not e!824898))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1469278 (= res!997896 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48326 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48326 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48326 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1469279 () Bool)

(declare-fun res!997892 () Bool)

(assert (=> b!1469279 (=> (not res!997892) (not e!824898))))

(assert (=> b!1469279 (= res!997892 (validKeyInArray!0 (select (arr!47775 a!2862) j!93)))))

(declare-fun b!1469280 () Bool)

(assert (=> b!1469280 (= e!824900 false)))

(declare-fun lt!642472 () Bool)

(assert (=> b!1469280 (= lt!642472 e!824903)))

(declare-fun c!135206 () Bool)

(assert (=> b!1469280 (= c!135206 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1469281 () Bool)

(declare-fun res!997887 () Bool)

(assert (=> b!1469281 (=> (not res!997887) (not e!824899))))

(declare-fun lt!642470 () SeekEntryResult!12038)

(assert (=> b!1469281 (= res!997887 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47775 a!2862) j!93) a!2862 mask!2687) lt!642470))))

(declare-fun b!1469282 () Bool)

(assert (=> b!1469282 (= e!824901 e!824899)))

(declare-fun res!997893 () Bool)

(assert (=> b!1469282 (=> (not res!997893) (not e!824899))))

(assert (=> b!1469282 (= res!997893 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47775 a!2862) j!93) mask!2687) (select (arr!47775 a!2862) j!93) a!2862 mask!2687) lt!642470))))

(assert (=> b!1469282 (= lt!642470 (Intermediate!12038 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469283 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98983 (_ BitVec 32)) SeekEntryResult!12038)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98983 (_ BitVec 32)) SeekEntryResult!12038)

(assert (=> b!1469283 (= e!824903 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642468 lt!642471 mask!2687) (seekEntryOrOpen!0 lt!642468 lt!642471 mask!2687))))))

(declare-fun b!1469284 () Bool)

(declare-fun res!997888 () Bool)

(assert (=> b!1469284 (=> (not res!997888) (not e!824898))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98983 (_ BitVec 32)) Bool)

(assert (=> b!1469284 (= res!997888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125618 res!997889) b!1469274))

(assert (= (and b!1469274 res!997891) b!1469273))

(assert (= (and b!1469273 res!997895) b!1469279))

(assert (= (and b!1469279 res!997892) b!1469284))

(assert (= (and b!1469284 res!997888) b!1469272))

(assert (= (and b!1469272 res!997894) b!1469278))

(assert (= (and b!1469278 res!997896) b!1469277))

(assert (= (and b!1469277 res!997886) b!1469282))

(assert (= (and b!1469282 res!997893) b!1469281))

(assert (= (and b!1469281 res!997887) b!1469275))

(assert (= (and b!1469275 res!997890) b!1469280))

(assert (= (and b!1469280 c!135206) b!1469276))

(assert (= (and b!1469280 (not c!135206)) b!1469283))

(declare-fun m!1356511 () Bool)

(assert (=> b!1469283 m!1356511))

(declare-fun m!1356513 () Bool)

(assert (=> b!1469283 m!1356513))

(declare-fun m!1356515 () Bool)

(assert (=> b!1469279 m!1356515))

(assert (=> b!1469279 m!1356515))

(declare-fun m!1356517 () Bool)

(assert (=> b!1469279 m!1356517))

(declare-fun m!1356519 () Bool)

(assert (=> b!1469272 m!1356519))

(declare-fun m!1356521 () Bool)

(assert (=> start!125618 m!1356521))

(declare-fun m!1356523 () Bool)

(assert (=> start!125618 m!1356523))

(declare-fun m!1356525 () Bool)

(assert (=> b!1469284 m!1356525))

(declare-fun m!1356527 () Bool)

(assert (=> b!1469276 m!1356527))

(assert (=> b!1469281 m!1356515))

(assert (=> b!1469281 m!1356515))

(declare-fun m!1356529 () Bool)

(assert (=> b!1469281 m!1356529))

(declare-fun m!1356531 () Bool)

(assert (=> b!1469273 m!1356531))

(assert (=> b!1469273 m!1356531))

(declare-fun m!1356533 () Bool)

(assert (=> b!1469273 m!1356533))

(assert (=> b!1469282 m!1356515))

(assert (=> b!1469282 m!1356515))

(declare-fun m!1356535 () Bool)

(assert (=> b!1469282 m!1356535))

(assert (=> b!1469282 m!1356535))

(assert (=> b!1469282 m!1356515))

(declare-fun m!1356537 () Bool)

(assert (=> b!1469282 m!1356537))

(declare-fun m!1356539 () Bool)

(assert (=> b!1469275 m!1356539))

(assert (=> b!1469275 m!1356539))

(declare-fun m!1356541 () Bool)

(assert (=> b!1469275 m!1356541))

(declare-fun m!1356543 () Bool)

(assert (=> b!1469275 m!1356543))

(declare-fun m!1356545 () Bool)

(assert (=> b!1469275 m!1356545))

(assert (=> b!1469277 m!1356543))

(declare-fun m!1356547 () Bool)

(assert (=> b!1469277 m!1356547))

(push 1)

(assert (not b!1469275))

(assert (not b!1469281))

