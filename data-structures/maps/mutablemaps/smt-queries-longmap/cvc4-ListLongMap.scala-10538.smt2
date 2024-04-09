; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124328 () Bool)

(assert start!124328)

(declare-fun b!1438216 () Bool)

(declare-fun res!971003 () Bool)

(declare-fun e!811342 () Bool)

(assert (=> b!1438216 (=> (not res!971003) (not e!811342))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97771 0))(
  ( (array!97772 (arr!47172 (Array (_ BitVec 32) (_ BitVec 64))) (size!47723 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97771)

(declare-datatypes ((SeekEntryResult!11447 0))(
  ( (MissingZero!11447 (index!48179 (_ BitVec 32))) (Found!11447 (index!48180 (_ BitVec 32))) (Intermediate!11447 (undefined!12259 Bool) (index!48181 (_ BitVec 32)) (x!129911 (_ BitVec 32))) (Undefined!11447) (MissingVacant!11447 (index!48182 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97771 (_ BitVec 32)) SeekEntryResult!11447)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438216 (= res!971003 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47172 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47172 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97772 (store (arr!47172 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47723 a!2862)) mask!2687) (Intermediate!11447 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1438217 () Bool)

(declare-fun e!811341 () Bool)

(assert (=> b!1438217 (= e!811341 e!811342)))

(declare-fun res!971004 () Bool)

(assert (=> b!1438217 (=> (not res!971004) (not e!811342))))

(declare-fun lt!632464 () SeekEntryResult!11447)

(assert (=> b!1438217 (= res!971004 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47172 a!2862) j!93) mask!2687) (select (arr!47172 a!2862) j!93) a!2862 mask!2687) lt!632464))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1438217 (= lt!632464 (Intermediate!11447 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1438218 () Bool)

(declare-fun res!970999 () Bool)

(assert (=> b!1438218 (=> (not res!970999) (not e!811341))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438218 (= res!970999 (validKeyInArray!0 (select (arr!47172 a!2862) i!1006)))))

(declare-fun b!1438219 () Bool)

(declare-fun res!971006 () Bool)

(assert (=> b!1438219 (=> (not res!971006) (not e!811341))))

(declare-datatypes ((List!33853 0))(
  ( (Nil!33850) (Cons!33849 (h!35193 (_ BitVec 64)) (t!48554 List!33853)) )
))
(declare-fun arrayNoDuplicates!0 (array!97771 (_ BitVec 32) List!33853) Bool)

(assert (=> b!1438219 (= res!971006 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33850))))

(declare-fun b!1438220 () Bool)

(declare-fun res!971000 () Bool)

(assert (=> b!1438220 (=> (not res!971000) (not e!811341))))

(assert (=> b!1438220 (= res!971000 (validKeyInArray!0 (select (arr!47172 a!2862) j!93)))))

(declare-fun res!970998 () Bool)

(assert (=> start!124328 (=> (not res!970998) (not e!811341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124328 (= res!970998 (validMask!0 mask!2687))))

(assert (=> start!124328 e!811341))

(assert (=> start!124328 true))

(declare-fun array_inv!36117 (array!97771) Bool)

(assert (=> start!124328 (array_inv!36117 a!2862)))

(declare-fun b!1438221 () Bool)

(declare-fun res!971007 () Bool)

(assert (=> b!1438221 (=> (not res!971007) (not e!811341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97771 (_ BitVec 32)) Bool)

(assert (=> b!1438221 (= res!971007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1438222 () Bool)

(assert (=> b!1438222 (= e!811342 (and (bvsle x!665 intermediateAfterX!19) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(declare-fun b!1438223 () Bool)

(declare-fun res!971001 () Bool)

(assert (=> b!1438223 (=> (not res!971001) (not e!811341))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1438223 (= res!971001 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47723 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47723 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47723 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47172 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438224 () Bool)

(declare-fun res!971002 () Bool)

(assert (=> b!1438224 (=> (not res!971002) (not e!811342))))

(assert (=> b!1438224 (= res!971002 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47172 a!2862) j!93) a!2862 mask!2687) lt!632464))))

(declare-fun b!1438225 () Bool)

(declare-fun res!971005 () Bool)

(assert (=> b!1438225 (=> (not res!971005) (not e!811341))))

(assert (=> b!1438225 (= res!971005 (and (= (size!47723 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47723 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47723 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124328 res!970998) b!1438225))

(assert (= (and b!1438225 res!971005) b!1438218))

(assert (= (and b!1438218 res!970999) b!1438220))

(assert (= (and b!1438220 res!971000) b!1438221))

(assert (= (and b!1438221 res!971007) b!1438219))

(assert (= (and b!1438219 res!971006) b!1438223))

(assert (= (and b!1438223 res!971001) b!1438217))

(assert (= (and b!1438217 res!971004) b!1438224))

(assert (= (and b!1438224 res!971002) b!1438216))

(assert (= (and b!1438216 res!971003) b!1438222))

(declare-fun m!1327459 () Bool)

(assert (=> b!1438224 m!1327459))

(assert (=> b!1438224 m!1327459))

(declare-fun m!1327461 () Bool)

(assert (=> b!1438224 m!1327461))

(declare-fun m!1327463 () Bool)

(assert (=> b!1438223 m!1327463))

(declare-fun m!1327465 () Bool)

(assert (=> b!1438223 m!1327465))

(declare-fun m!1327467 () Bool)

(assert (=> start!124328 m!1327467))

(declare-fun m!1327469 () Bool)

(assert (=> start!124328 m!1327469))

(declare-fun m!1327471 () Bool)

(assert (=> b!1438218 m!1327471))

(assert (=> b!1438218 m!1327471))

(declare-fun m!1327473 () Bool)

(assert (=> b!1438218 m!1327473))

(declare-fun m!1327475 () Bool)

(assert (=> b!1438221 m!1327475))

(declare-fun m!1327477 () Bool)

(assert (=> b!1438219 m!1327477))

(assert (=> b!1438216 m!1327463))

(declare-fun m!1327479 () Bool)

(assert (=> b!1438216 m!1327479))

(assert (=> b!1438216 m!1327479))

(declare-fun m!1327481 () Bool)

(assert (=> b!1438216 m!1327481))

(assert (=> b!1438216 m!1327481))

(assert (=> b!1438216 m!1327479))

(declare-fun m!1327483 () Bool)

(assert (=> b!1438216 m!1327483))

(assert (=> b!1438217 m!1327459))

(assert (=> b!1438217 m!1327459))

(declare-fun m!1327485 () Bool)

(assert (=> b!1438217 m!1327485))

(assert (=> b!1438217 m!1327485))

(assert (=> b!1438217 m!1327459))

(declare-fun m!1327487 () Bool)

(assert (=> b!1438217 m!1327487))

(assert (=> b!1438220 m!1327459))

(assert (=> b!1438220 m!1327459))

(declare-fun m!1327489 () Bool)

(assert (=> b!1438220 m!1327489))

(push 1)

