; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125430 () Bool)

(assert start!125430)

(declare-fun b!1466191 () Bool)

(declare-fun res!995039 () Bool)

(declare-fun e!823776 () Bool)

(assert (=> b!1466191 (=> (not res!995039) (not e!823776))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1466191 (= res!995039 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1466192 () Bool)

(declare-fun e!823771 () Bool)

(declare-fun e!823775 () Bool)

(assert (=> b!1466192 (= e!823771 e!823775)))

(declare-fun res!995052 () Bool)

(assert (=> b!1466192 (=> (not res!995052) (not e!823775))))

(declare-datatypes ((SeekEntryResult!11956 0))(
  ( (MissingZero!11956 (index!50215 (_ BitVec 32))) (Found!11956 (index!50216 (_ BitVec 32))) (Intermediate!11956 (undefined!12768 Bool) (index!50217 (_ BitVec 32)) (x!131792 (_ BitVec 32))) (Undefined!11956) (MissingVacant!11956 (index!50218 (_ BitVec 32))) )
))
(declare-fun lt!641635 () SeekEntryResult!11956)

(declare-datatypes ((array!98795 0))(
  ( (array!98796 (arr!47681 (Array (_ BitVec 32) (_ BitVec 64))) (size!48232 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98795)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98795 (_ BitVec 32)) SeekEntryResult!11956)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466192 (= res!995052 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47681 a!2862) j!93) mask!2687) (select (arr!47681 a!2862) j!93) a!2862 mask!2687) lt!641635))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1466192 (= lt!641635 (Intermediate!11956 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1466193 () Bool)

(declare-fun e!823778 () Bool)

(assert (=> b!1466193 (= e!823776 (not e!823778))))

(declare-fun res!995044 () Bool)

(assert (=> b!1466193 (=> res!995044 e!823778)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1466193 (= res!995044 (or (and (= (select (arr!47681 a!2862) index!646) (select (store (arr!47681 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47681 a!2862) index!646) (select (arr!47681 a!2862) j!93))) (= (select (arr!47681 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun lt!641633 () SeekEntryResult!11956)

(assert (=> b!1466193 (and (= lt!641633 (Found!11956 j!93)) (or (= (select (arr!47681 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47681 a!2862) intermediateBeforeIndex!19) (select (arr!47681 a!2862) j!93))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98795 (_ BitVec 32)) SeekEntryResult!11956)

(assert (=> b!1466193 (= lt!641633 (seekEntryOrOpen!0 (select (arr!47681 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98795 (_ BitVec 32)) Bool)

(assert (=> b!1466193 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49356 0))(
  ( (Unit!49357) )
))
(declare-fun lt!641631 () Unit!49356)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98795 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49356)

(assert (=> b!1466193 (= lt!641631 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun lt!641638 () (_ BitVec 64))

(declare-fun lt!641637 () (_ BitVec 32))

(declare-fun b!1466194 () Bool)

(declare-fun lt!641632 () SeekEntryResult!11956)

(declare-fun e!823770 () Bool)

(declare-fun lt!641634 () array!98795)

(assert (=> b!1466194 (= e!823770 (not (= lt!641632 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641637 lt!641638 lt!641634 mask!2687))))))

(declare-fun b!1466195 () Bool)

(declare-fun res!995040 () Bool)

(declare-fun e!823777 () Bool)

(assert (=> b!1466195 (=> (not res!995040) (not e!823777))))

(assert (=> b!1466195 (= res!995040 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1466197 () Bool)

(assert (=> b!1466197 (= e!823777 e!823771)))

(declare-fun res!995049 () Bool)

(assert (=> b!1466197 (=> (not res!995049) (not e!823771))))

(assert (=> b!1466197 (= res!995049 (= (select (store (arr!47681 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1466197 (= lt!641634 (array!98796 (store (arr!47681 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48232 a!2862)))))

(declare-fun b!1466198 () Bool)

(declare-fun res!995046 () Bool)

(assert (=> b!1466198 (=> (not res!995046) (not e!823777))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1466198 (= res!995046 (validKeyInArray!0 (select (arr!47681 a!2862) j!93)))))

(declare-fun b!1466199 () Bool)

(declare-fun res!995042 () Bool)

(assert (=> b!1466199 (=> (not res!995042) (not e!823776))))

(declare-fun e!823774 () Bool)

(assert (=> b!1466199 (= res!995042 e!823774)))

(declare-fun c!135091 () Bool)

(assert (=> b!1466199 (= c!135091 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1466200 () Bool)

(declare-fun res!995051 () Bool)

(declare-fun e!823772 () Bool)

(assert (=> b!1466200 (=> res!995051 e!823772)))

(assert (=> b!1466200 (= res!995051 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1466201 () Bool)

(assert (=> b!1466201 (= e!823775 e!823776)))

(declare-fun res!995043 () Bool)

(assert (=> b!1466201 (=> (not res!995043) (not e!823776))))

(assert (=> b!1466201 (= res!995043 (= lt!641632 (Intermediate!11956 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1466201 (= lt!641632 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641638 mask!2687) lt!641638 lt!641634 mask!2687))))

(assert (=> b!1466201 (= lt!641638 (select (store (arr!47681 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1466202 () Bool)

(declare-fun res!995048 () Bool)

(assert (=> b!1466202 (=> (not res!995048) (not e!823777))))

(assert (=> b!1466202 (= res!995048 (validKeyInArray!0 (select (arr!47681 a!2862) i!1006)))))

(declare-fun b!1466203 () Bool)

(declare-fun res!995036 () Bool)

(assert (=> b!1466203 (=> res!995036 e!823772)))

(assert (=> b!1466203 (= res!995036 e!823770)))

(declare-fun c!135092 () Bool)

(assert (=> b!1466203 (= c!135092 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1466204 () Bool)

(declare-fun res!995050 () Bool)

(assert (=> b!1466204 (=> (not res!995050) (not e!823777))))

(assert (=> b!1466204 (= res!995050 (and (= (size!48232 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48232 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48232 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!995035 () Bool)

(assert (=> start!125430 (=> (not res!995035) (not e!823777))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125430 (= res!995035 (validMask!0 mask!2687))))

(assert (=> start!125430 e!823777))

(assert (=> start!125430 true))

(declare-fun array_inv!36626 (array!98795) Bool)

(assert (=> start!125430 (array_inv!36626 a!2862)))

(declare-fun b!1466196 () Bool)

(assert (=> b!1466196 (= e!823774 (= lt!641632 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641638 lt!641634 mask!2687)))))

(declare-fun b!1466205 () Bool)

(declare-fun res!995047 () Bool)

(assert (=> b!1466205 (=> (not res!995047) (not e!823777))))

(assert (=> b!1466205 (= res!995047 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48232 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48232 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48232 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1466206 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98795 (_ BitVec 32)) SeekEntryResult!11956)

(assert (=> b!1466206 (= e!823774 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641638 lt!641634 mask!2687) (seekEntryOrOpen!0 lt!641638 lt!641634 mask!2687)))))

(declare-fun b!1466207 () Bool)

(declare-fun res!995045 () Bool)

(assert (=> b!1466207 (=> (not res!995045) (not e!823777))))

(declare-datatypes ((List!34362 0))(
  ( (Nil!34359) (Cons!34358 (h!35708 (_ BitVec 64)) (t!49063 List!34362)) )
))
(declare-fun arrayNoDuplicates!0 (array!98795 (_ BitVec 32) List!34362) Bool)

(assert (=> b!1466207 (= res!995045 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34359))))

(declare-fun b!1466208 () Bool)

(declare-fun res!995041 () Bool)

(assert (=> b!1466208 (=> res!995041 e!823772)))

(assert (=> b!1466208 (= res!995041 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641637 (select (arr!47681 a!2862) j!93) a!2862 mask!2687) lt!641635)))))

(declare-fun b!1466209 () Bool)

(assert (=> b!1466209 (= e!823778 e!823772)))

(declare-fun res!995037 () Bool)

(assert (=> b!1466209 (=> res!995037 e!823772)))

(assert (=> b!1466209 (= res!995037 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641637 #b00000000000000000000000000000000) (bvsge lt!641637 (size!48232 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466209 (= lt!641637 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1466210 () Bool)

(assert (=> b!1466210 (= e!823772 true)))

(assert (=> b!1466210 (= lt!641633 (seekEntryOrOpen!0 lt!641638 lt!641634 mask!2687))))

(declare-fun lt!641636 () Unit!49356)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98795 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49356)

(assert (=> b!1466210 (= lt!641636 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641637 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1466211 () Bool)

(declare-fun res!995038 () Bool)

(assert (=> b!1466211 (=> (not res!995038) (not e!823775))))

(assert (=> b!1466211 (= res!995038 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47681 a!2862) j!93) a!2862 mask!2687) lt!641635))))

(declare-fun b!1466212 () Bool)

(assert (=> b!1466212 (= e!823770 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641637 intermediateAfterIndex!19 lt!641638 lt!641634 mask!2687) (seekEntryOrOpen!0 lt!641638 lt!641634 mask!2687))))))

(assert (= (and start!125430 res!995035) b!1466204))

(assert (= (and b!1466204 res!995050) b!1466202))

(assert (= (and b!1466202 res!995048) b!1466198))

(assert (= (and b!1466198 res!995046) b!1466195))

(assert (= (and b!1466195 res!995040) b!1466207))

(assert (= (and b!1466207 res!995045) b!1466205))

(assert (= (and b!1466205 res!995047) b!1466197))

(assert (= (and b!1466197 res!995049) b!1466192))

(assert (= (and b!1466192 res!995052) b!1466211))

(assert (= (and b!1466211 res!995038) b!1466201))

(assert (= (and b!1466201 res!995043) b!1466199))

(assert (= (and b!1466199 c!135091) b!1466196))

(assert (= (and b!1466199 (not c!135091)) b!1466206))

(assert (= (and b!1466199 res!995042) b!1466191))

(assert (= (and b!1466191 res!995039) b!1466193))

(assert (= (and b!1466193 (not res!995044)) b!1466209))

(assert (= (and b!1466209 (not res!995037)) b!1466208))

(assert (= (and b!1466208 (not res!995041)) b!1466203))

(assert (= (and b!1466203 c!135092) b!1466194))

(assert (= (and b!1466203 (not c!135092)) b!1466212))

(assert (= (and b!1466203 (not res!995036)) b!1466200))

(assert (= (and b!1466200 (not res!995051)) b!1466210))

(declare-fun m!1353255 () Bool)

(assert (=> b!1466195 m!1353255))

(declare-fun m!1353257 () Bool)

(assert (=> b!1466208 m!1353257))

(assert (=> b!1466208 m!1353257))

(declare-fun m!1353259 () Bool)

(assert (=> b!1466208 m!1353259))

(declare-fun m!1353261 () Bool)

(assert (=> b!1466193 m!1353261))

(declare-fun m!1353263 () Bool)

(assert (=> b!1466193 m!1353263))

(declare-fun m!1353265 () Bool)

(assert (=> b!1466193 m!1353265))

(declare-fun m!1353267 () Bool)

(assert (=> b!1466193 m!1353267))

(declare-fun m!1353269 () Bool)

(assert (=> b!1466193 m!1353269))

(assert (=> b!1466193 m!1353257))

(declare-fun m!1353271 () Bool)

(assert (=> b!1466193 m!1353271))

(declare-fun m!1353273 () Bool)

(assert (=> b!1466193 m!1353273))

(assert (=> b!1466193 m!1353257))

(declare-fun m!1353275 () Bool)

(assert (=> b!1466201 m!1353275))

(assert (=> b!1466201 m!1353275))

(declare-fun m!1353277 () Bool)

(assert (=> b!1466201 m!1353277))

(assert (=> b!1466201 m!1353263))

(declare-fun m!1353279 () Bool)

(assert (=> b!1466201 m!1353279))

(assert (=> b!1466198 m!1353257))

(assert (=> b!1466198 m!1353257))

(declare-fun m!1353281 () Bool)

(assert (=> b!1466198 m!1353281))

(declare-fun m!1353283 () Bool)

(assert (=> b!1466209 m!1353283))

(declare-fun m!1353285 () Bool)

(assert (=> b!1466194 m!1353285))

(assert (=> b!1466197 m!1353263))

(declare-fun m!1353287 () Bool)

(assert (=> b!1466197 m!1353287))

(declare-fun m!1353289 () Bool)

(assert (=> start!125430 m!1353289))

(declare-fun m!1353291 () Bool)

(assert (=> start!125430 m!1353291))

(declare-fun m!1353293 () Bool)

(assert (=> b!1466196 m!1353293))

(declare-fun m!1353295 () Bool)

(assert (=> b!1466206 m!1353295))

(declare-fun m!1353297 () Bool)

(assert (=> b!1466206 m!1353297))

(assert (=> b!1466210 m!1353297))

(declare-fun m!1353299 () Bool)

(assert (=> b!1466210 m!1353299))

(assert (=> b!1466211 m!1353257))

(assert (=> b!1466211 m!1353257))

(declare-fun m!1353301 () Bool)

(assert (=> b!1466211 m!1353301))

(declare-fun m!1353303 () Bool)

(assert (=> b!1466212 m!1353303))

(assert (=> b!1466212 m!1353297))

(declare-fun m!1353305 () Bool)

(assert (=> b!1466202 m!1353305))

(assert (=> b!1466202 m!1353305))

(declare-fun m!1353307 () Bool)

(assert (=> b!1466202 m!1353307))

(declare-fun m!1353309 () Bool)

(assert (=> b!1466207 m!1353309))

(assert (=> b!1466192 m!1353257))

(assert (=> b!1466192 m!1353257))

(declare-fun m!1353311 () Bool)

(assert (=> b!1466192 m!1353311))

(assert (=> b!1466192 m!1353311))

(assert (=> b!1466192 m!1353257))

(declare-fun m!1353313 () Bool)

(assert (=> b!1466192 m!1353313))

(check-sat (not b!1466208) (not b!1466206) (not b!1466194) (not b!1466209) (not b!1466207) (not b!1466198) (not b!1466192) (not b!1466212) (not b!1466201) (not b!1466211) (not start!125430) (not b!1466210) (not b!1466193) (not b!1466196) (not b!1466202) (not b!1466195))
