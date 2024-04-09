; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125612 () Bool)

(assert start!125612)

(declare-fun b!1469155 () Bool)

(declare-fun e!824845 () Bool)

(declare-fun e!824846 () Bool)

(assert (=> b!1469155 (= e!824845 e!824846)))

(declare-fun res!997793 () Bool)

(assert (=> b!1469155 (=> (not res!997793) (not e!824846))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98977 0))(
  ( (array!98978 (arr!47772 (Array (_ BitVec 32) (_ BitVec 64))) (size!48323 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98977)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1469155 (= res!997793 (= (select (store (arr!47772 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!642427 () array!98977)

(assert (=> b!1469155 (= lt!642427 (array!98978 (store (arr!47772 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48323 a!2862)))))

(declare-fun b!1469156 () Bool)

(declare-fun res!997795 () Bool)

(assert (=> b!1469156 (=> (not res!997795) (not e!824845))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98977 (_ BitVec 32)) Bool)

(assert (=> b!1469156 (= res!997795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1469157 () Bool)

(declare-fun res!997796 () Bool)

(assert (=> b!1469157 (=> (not res!997796) (not e!824845))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469157 (= res!997796 (validKeyInArray!0 (select (arr!47772 a!2862) j!93)))))

(declare-fun b!1469158 () Bool)

(declare-fun res!997791 () Bool)

(assert (=> b!1469158 (=> (not res!997791) (not e!824845))))

(declare-datatypes ((List!34453 0))(
  ( (Nil!34450) (Cons!34449 (h!35799 (_ BitVec 64)) (t!49154 List!34453)) )
))
(declare-fun arrayNoDuplicates!0 (array!98977 (_ BitVec 32) List!34453) Bool)

(assert (=> b!1469158 (= res!997791 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34450))))

(declare-fun b!1469159 () Bool)

(declare-fun e!824847 () Bool)

(assert (=> b!1469159 (= e!824847 false)))

(declare-fun lt!642425 () Bool)

(declare-fun e!824844 () Bool)

(assert (=> b!1469159 (= lt!642425 e!824844)))

(declare-fun c!135197 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1469159 (= c!135197 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1469160 () Bool)

(declare-fun e!824849 () Bool)

(assert (=> b!1469160 (= e!824846 e!824849)))

(declare-fun res!997797 () Bool)

(assert (=> b!1469160 (=> (not res!997797) (not e!824849))))

(declare-datatypes ((SeekEntryResult!12035 0))(
  ( (MissingZero!12035 (index!50531 (_ BitVec 32))) (Found!12035 (index!50532 (_ BitVec 32))) (Intermediate!12035 (undefined!12847 Bool) (index!50533 (_ BitVec 32)) (x!132111 (_ BitVec 32))) (Undefined!12035) (MissingVacant!12035 (index!50534 (_ BitVec 32))) )
))
(declare-fun lt!642426 () SeekEntryResult!12035)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98977 (_ BitVec 32)) SeekEntryResult!12035)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469160 (= res!997797 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47772 a!2862) j!93) mask!2687) (select (arr!47772 a!2862) j!93) a!2862 mask!2687) lt!642426))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1469160 (= lt!642426 (Intermediate!12035 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469161 () Bool)

(declare-fun res!997788 () Bool)

(assert (=> b!1469161 (=> (not res!997788) (not e!824845))))

(assert (=> b!1469161 (= res!997788 (and (= (size!48323 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48323 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48323 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1469162 () Bool)

(declare-fun res!997789 () Bool)

(assert (=> b!1469162 (=> (not res!997789) (not e!824845))))

(assert (=> b!1469162 (= res!997789 (validKeyInArray!0 (select (arr!47772 a!2862) i!1006)))))

(declare-fun res!997790 () Bool)

(assert (=> start!125612 (=> (not res!997790) (not e!824845))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125612 (= res!997790 (validMask!0 mask!2687))))

(assert (=> start!125612 e!824845))

(assert (=> start!125612 true))

(declare-fun array_inv!36717 (array!98977) Bool)

(assert (=> start!125612 (array_inv!36717 a!2862)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!642424 () (_ BitVec 64))

(declare-fun b!1469163 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98977 (_ BitVec 32)) SeekEntryResult!12035)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98977 (_ BitVec 32)) SeekEntryResult!12035)

(assert (=> b!1469163 (= e!824844 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642424 lt!642427 mask!2687) (seekEntryOrOpen!0 lt!642424 lt!642427 mask!2687))))))

(declare-fun b!1469164 () Bool)

(declare-fun lt!642423 () SeekEntryResult!12035)

(assert (=> b!1469164 (= e!824844 (not (= lt!642423 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642424 lt!642427 mask!2687))))))

(declare-fun b!1469165 () Bool)

(declare-fun res!997787 () Bool)

(assert (=> b!1469165 (=> (not res!997787) (not e!824845))))

(assert (=> b!1469165 (= res!997787 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48323 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48323 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48323 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1469166 () Bool)

(declare-fun res!997794 () Bool)

(assert (=> b!1469166 (=> (not res!997794) (not e!824849))))

(assert (=> b!1469166 (= res!997794 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47772 a!2862) j!93) a!2862 mask!2687) lt!642426))))

(declare-fun b!1469167 () Bool)

(assert (=> b!1469167 (= e!824849 e!824847)))

(declare-fun res!997792 () Bool)

(assert (=> b!1469167 (=> (not res!997792) (not e!824847))))

(assert (=> b!1469167 (= res!997792 (= lt!642423 (Intermediate!12035 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1469167 (= lt!642423 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642424 mask!2687) lt!642424 lt!642427 mask!2687))))

(assert (=> b!1469167 (= lt!642424 (select (store (arr!47772 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!125612 res!997790) b!1469161))

(assert (= (and b!1469161 res!997788) b!1469162))

(assert (= (and b!1469162 res!997789) b!1469157))

(assert (= (and b!1469157 res!997796) b!1469156))

(assert (= (and b!1469156 res!997795) b!1469158))

(assert (= (and b!1469158 res!997791) b!1469165))

(assert (= (and b!1469165 res!997787) b!1469155))

(assert (= (and b!1469155 res!997793) b!1469160))

(assert (= (and b!1469160 res!997797) b!1469166))

(assert (= (and b!1469166 res!997794) b!1469167))

(assert (= (and b!1469167 res!997792) b!1469159))

(assert (= (and b!1469159 c!135197) b!1469164))

(assert (= (and b!1469159 (not c!135197)) b!1469163))

(declare-fun m!1356397 () Bool)

(assert (=> b!1469162 m!1356397))

(assert (=> b!1469162 m!1356397))

(declare-fun m!1356399 () Bool)

(assert (=> b!1469162 m!1356399))

(declare-fun m!1356401 () Bool)

(assert (=> b!1469156 m!1356401))

(declare-fun m!1356403 () Bool)

(assert (=> b!1469158 m!1356403))

(declare-fun m!1356405 () Bool)

(assert (=> b!1469167 m!1356405))

(assert (=> b!1469167 m!1356405))

(declare-fun m!1356407 () Bool)

(assert (=> b!1469167 m!1356407))

(declare-fun m!1356409 () Bool)

(assert (=> b!1469167 m!1356409))

(declare-fun m!1356411 () Bool)

(assert (=> b!1469167 m!1356411))

(declare-fun m!1356413 () Bool)

(assert (=> b!1469166 m!1356413))

(assert (=> b!1469166 m!1356413))

(declare-fun m!1356415 () Bool)

(assert (=> b!1469166 m!1356415))

(declare-fun m!1356417 () Bool)

(assert (=> b!1469164 m!1356417))

(assert (=> b!1469155 m!1356409))

(declare-fun m!1356419 () Bool)

(assert (=> b!1469155 m!1356419))

(declare-fun m!1356421 () Bool)

(assert (=> start!125612 m!1356421))

(declare-fun m!1356423 () Bool)

(assert (=> start!125612 m!1356423))

(assert (=> b!1469160 m!1356413))

(assert (=> b!1469160 m!1356413))

(declare-fun m!1356425 () Bool)

(assert (=> b!1469160 m!1356425))

(assert (=> b!1469160 m!1356425))

(assert (=> b!1469160 m!1356413))

(declare-fun m!1356427 () Bool)

(assert (=> b!1469160 m!1356427))

(assert (=> b!1469157 m!1356413))

(assert (=> b!1469157 m!1356413))

(declare-fun m!1356429 () Bool)

(assert (=> b!1469157 m!1356429))

(declare-fun m!1356431 () Bool)

(assert (=> b!1469163 m!1356431))

(declare-fun m!1356433 () Bool)

(assert (=> b!1469163 m!1356433))

(push 1)

