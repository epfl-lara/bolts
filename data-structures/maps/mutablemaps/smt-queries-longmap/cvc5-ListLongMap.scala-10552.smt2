; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124492 () Bool)

(assert start!124492)

(declare-fun b!1439810 () Bool)

(declare-fun e!811996 () Bool)

(assert (=> b!1439810 (= e!811996 false)))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11487 0))(
  ( (MissingZero!11487 (index!48339 (_ BitVec 32))) (Found!11487 (index!48340 (_ BitVec 32))) (Intermediate!11487 (undefined!12299 Bool) (index!48341 (_ BitVec 32)) (x!130075 (_ BitVec 32))) (Undefined!11487) (MissingVacant!11487 (index!48342 (_ BitVec 32))) )
))
(declare-fun lt!632820 () SeekEntryResult!11487)

(declare-datatypes ((array!97857 0))(
  ( (array!97858 (arr!47212 (Array (_ BitVec 32) (_ BitVec 64))) (size!47763 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97857)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97857 (_ BitVec 32)) SeekEntryResult!11487)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439810 (= lt!632820 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47212 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47212 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97858 (store (arr!47212 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47763 a!2862)) mask!2687))))

(declare-fun b!1439811 () Bool)

(declare-fun res!972347 () Bool)

(declare-fun e!811997 () Bool)

(assert (=> b!1439811 (=> (not res!972347) (not e!811997))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439811 (= res!972347 (validKeyInArray!0 (select (arr!47212 a!2862) i!1006)))))

(declare-fun b!1439812 () Bool)

(declare-fun res!972351 () Bool)

(assert (=> b!1439812 (=> (not res!972351) (not e!811997))))

(assert (=> b!1439812 (= res!972351 (and (= (size!47763 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47763 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47763 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439814 () Bool)

(declare-fun res!972354 () Bool)

(assert (=> b!1439814 (=> (not res!972354) (not e!811997))))

(declare-datatypes ((List!33893 0))(
  ( (Nil!33890) (Cons!33889 (h!35239 (_ BitVec 64)) (t!48594 List!33893)) )
))
(declare-fun arrayNoDuplicates!0 (array!97857 (_ BitVec 32) List!33893) Bool)

(assert (=> b!1439814 (= res!972354 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33890))))

(declare-fun b!1439815 () Bool)

(declare-fun res!972348 () Bool)

(assert (=> b!1439815 (=> (not res!972348) (not e!811997))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97857 (_ BitVec 32)) Bool)

(assert (=> b!1439815 (= res!972348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439816 () Bool)

(assert (=> b!1439816 (= e!811997 e!811996)))

(declare-fun res!972353 () Bool)

(assert (=> b!1439816 (=> (not res!972353) (not e!811996))))

(declare-fun lt!632821 () SeekEntryResult!11487)

(assert (=> b!1439816 (= res!972353 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47212 a!2862) j!93) mask!2687) (select (arr!47212 a!2862) j!93) a!2862 mask!2687) lt!632821))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1439816 (= lt!632821 (Intermediate!11487 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439817 () Bool)

(declare-fun res!972349 () Bool)

(assert (=> b!1439817 (=> (not res!972349) (not e!811997))))

(assert (=> b!1439817 (= res!972349 (validKeyInArray!0 (select (arr!47212 a!2862) j!93)))))

(declare-fun b!1439818 () Bool)

(declare-fun res!972352 () Bool)

(assert (=> b!1439818 (=> (not res!972352) (not e!811996))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1439818 (= res!972352 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47212 a!2862) j!93) a!2862 mask!2687) lt!632821))))

(declare-fun res!972346 () Bool)

(assert (=> start!124492 (=> (not res!972346) (not e!811997))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124492 (= res!972346 (validMask!0 mask!2687))))

(assert (=> start!124492 e!811997))

(assert (=> start!124492 true))

(declare-fun array_inv!36157 (array!97857) Bool)

(assert (=> start!124492 (array_inv!36157 a!2862)))

(declare-fun b!1439813 () Bool)

(declare-fun res!972350 () Bool)

(assert (=> b!1439813 (=> (not res!972350) (not e!811997))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1439813 (= res!972350 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47763 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47763 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47763 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47212 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!124492 res!972346) b!1439812))

(assert (= (and b!1439812 res!972351) b!1439811))

(assert (= (and b!1439811 res!972347) b!1439817))

(assert (= (and b!1439817 res!972349) b!1439815))

(assert (= (and b!1439815 res!972348) b!1439814))

(assert (= (and b!1439814 res!972354) b!1439813))

(assert (= (and b!1439813 res!972350) b!1439816))

(assert (= (and b!1439816 res!972353) b!1439818))

(assert (= (and b!1439818 res!972352) b!1439810))

(declare-fun m!1328991 () Bool)

(assert (=> b!1439815 m!1328991))

(declare-fun m!1328993 () Bool)

(assert (=> b!1439810 m!1328993))

(declare-fun m!1328995 () Bool)

(assert (=> b!1439810 m!1328995))

(assert (=> b!1439810 m!1328995))

(declare-fun m!1328997 () Bool)

(assert (=> b!1439810 m!1328997))

(assert (=> b!1439810 m!1328997))

(assert (=> b!1439810 m!1328995))

(declare-fun m!1328999 () Bool)

(assert (=> b!1439810 m!1328999))

(declare-fun m!1329001 () Bool)

(assert (=> b!1439814 m!1329001))

(declare-fun m!1329003 () Bool)

(assert (=> b!1439817 m!1329003))

(assert (=> b!1439817 m!1329003))

(declare-fun m!1329005 () Bool)

(assert (=> b!1439817 m!1329005))

(declare-fun m!1329007 () Bool)

(assert (=> start!124492 m!1329007))

(declare-fun m!1329009 () Bool)

(assert (=> start!124492 m!1329009))

(assert (=> b!1439818 m!1329003))

(assert (=> b!1439818 m!1329003))

(declare-fun m!1329011 () Bool)

(assert (=> b!1439818 m!1329011))

(assert (=> b!1439813 m!1328993))

(declare-fun m!1329013 () Bool)

(assert (=> b!1439813 m!1329013))

(declare-fun m!1329015 () Bool)

(assert (=> b!1439811 m!1329015))

(assert (=> b!1439811 m!1329015))

(declare-fun m!1329017 () Bool)

(assert (=> b!1439811 m!1329017))

(assert (=> b!1439816 m!1329003))

(assert (=> b!1439816 m!1329003))

(declare-fun m!1329019 () Bool)

(assert (=> b!1439816 m!1329019))

(assert (=> b!1439816 m!1329019))

(assert (=> b!1439816 m!1329003))

(declare-fun m!1329021 () Bool)

(assert (=> b!1439816 m!1329021))

(push 1)

