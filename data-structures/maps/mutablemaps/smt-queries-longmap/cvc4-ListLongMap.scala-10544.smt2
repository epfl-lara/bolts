; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124448 () Bool)

(assert start!124448)

(declare-fun b!1439162 () Bool)

(declare-fun res!971705 () Bool)

(declare-fun e!811788 () Bool)

(assert (=> b!1439162 (=> (not res!971705) (not e!811788))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97813 0))(
  ( (array!97814 (arr!47190 (Array (_ BitVec 32) (_ BitVec 64))) (size!47741 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97813)

(assert (=> b!1439162 (= res!971705 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47741 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47741 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47741 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47190 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439163 () Bool)

(declare-fun res!971698 () Bool)

(assert (=> b!1439163 (=> (not res!971698) (not e!811788))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97813 (_ BitVec 32)) Bool)

(assert (=> b!1439163 (= res!971698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439164 () Bool)

(declare-fun e!811790 () Bool)

(assert (=> b!1439164 (= e!811788 e!811790)))

(declare-fun res!971704 () Bool)

(assert (=> b!1439164 (=> (not res!971704) (not e!811790))))

(declare-datatypes ((SeekEntryResult!11465 0))(
  ( (MissingZero!11465 (index!48251 (_ BitVec 32))) (Found!11465 (index!48252 (_ BitVec 32))) (Intermediate!11465 (undefined!12277 Bool) (index!48253 (_ BitVec 32)) (x!129989 (_ BitVec 32))) (Undefined!11465) (MissingVacant!11465 (index!48254 (_ BitVec 32))) )
))
(declare-fun lt!632716 () SeekEntryResult!11465)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97813 (_ BitVec 32)) SeekEntryResult!11465)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439164 (= res!971704 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47190 a!2862) j!93) mask!2687) (select (arr!47190 a!2862) j!93) a!2862 mask!2687) lt!632716))))

(assert (=> b!1439164 (= lt!632716 (Intermediate!11465 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439165 () Bool)

(declare-fun res!971701 () Bool)

(assert (=> b!1439165 (=> (not res!971701) (not e!811788))))

(assert (=> b!1439165 (= res!971701 (and (= (size!47741 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47741 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47741 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439166 () Bool)

(declare-fun res!971699 () Bool)

(assert (=> b!1439166 (=> (not res!971699) (not e!811790))))

(assert (=> b!1439166 (= res!971699 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47190 a!2862) j!93) a!2862 mask!2687) lt!632716))))

(declare-fun b!1439167 () Bool)

(declare-fun res!971702 () Bool)

(assert (=> b!1439167 (=> (not res!971702) (not e!811788))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439167 (= res!971702 (validKeyInArray!0 (select (arr!47190 a!2862) j!93)))))

(declare-fun b!1439168 () Bool)

(assert (=> b!1439168 (= e!811790 false)))

(declare-fun lt!632715 () SeekEntryResult!11465)

(assert (=> b!1439168 (= lt!632715 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47190 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47190 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97814 (store (arr!47190 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47741 a!2862)) mask!2687))))

(declare-fun res!971706 () Bool)

(assert (=> start!124448 (=> (not res!971706) (not e!811788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124448 (= res!971706 (validMask!0 mask!2687))))

(assert (=> start!124448 e!811788))

(assert (=> start!124448 true))

(declare-fun array_inv!36135 (array!97813) Bool)

(assert (=> start!124448 (array_inv!36135 a!2862)))

(declare-fun b!1439169 () Bool)

(declare-fun res!971700 () Bool)

(assert (=> b!1439169 (=> (not res!971700) (not e!811788))))

(declare-datatypes ((List!33871 0))(
  ( (Nil!33868) (Cons!33867 (h!35217 (_ BitVec 64)) (t!48572 List!33871)) )
))
(declare-fun arrayNoDuplicates!0 (array!97813 (_ BitVec 32) List!33871) Bool)

(assert (=> b!1439169 (= res!971700 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33868))))

(declare-fun b!1439170 () Bool)

(declare-fun res!971703 () Bool)

(assert (=> b!1439170 (=> (not res!971703) (not e!811788))))

(assert (=> b!1439170 (= res!971703 (validKeyInArray!0 (select (arr!47190 a!2862) i!1006)))))

(assert (= (and start!124448 res!971706) b!1439165))

(assert (= (and b!1439165 res!971701) b!1439170))

(assert (= (and b!1439170 res!971703) b!1439167))

(assert (= (and b!1439167 res!971702) b!1439163))

(assert (= (and b!1439163 res!971698) b!1439169))

(assert (= (and b!1439169 res!971700) b!1439162))

(assert (= (and b!1439162 res!971705) b!1439164))

(assert (= (and b!1439164 res!971704) b!1439166))

(assert (= (and b!1439166 res!971699) b!1439168))

(declare-fun m!1328275 () Bool)

(assert (=> b!1439170 m!1328275))

(assert (=> b!1439170 m!1328275))

(declare-fun m!1328277 () Bool)

(assert (=> b!1439170 m!1328277))

(declare-fun m!1328279 () Bool)

(assert (=> b!1439167 m!1328279))

(assert (=> b!1439167 m!1328279))

(declare-fun m!1328281 () Bool)

(assert (=> b!1439167 m!1328281))

(assert (=> b!1439164 m!1328279))

(assert (=> b!1439164 m!1328279))

(declare-fun m!1328283 () Bool)

(assert (=> b!1439164 m!1328283))

(assert (=> b!1439164 m!1328283))

(assert (=> b!1439164 m!1328279))

(declare-fun m!1328285 () Bool)

(assert (=> b!1439164 m!1328285))

(declare-fun m!1328287 () Bool)

(assert (=> start!124448 m!1328287))

(declare-fun m!1328289 () Bool)

(assert (=> start!124448 m!1328289))

(declare-fun m!1328291 () Bool)

(assert (=> b!1439168 m!1328291))

(declare-fun m!1328293 () Bool)

(assert (=> b!1439168 m!1328293))

(assert (=> b!1439168 m!1328293))

(declare-fun m!1328295 () Bool)

(assert (=> b!1439168 m!1328295))

(assert (=> b!1439168 m!1328295))

(assert (=> b!1439168 m!1328293))

(declare-fun m!1328297 () Bool)

(assert (=> b!1439168 m!1328297))

(assert (=> b!1439166 m!1328279))

(assert (=> b!1439166 m!1328279))

(declare-fun m!1328299 () Bool)

(assert (=> b!1439166 m!1328299))

(declare-fun m!1328301 () Bool)

(assert (=> b!1439169 m!1328301))

(assert (=> b!1439162 m!1328291))

(declare-fun m!1328303 () Bool)

(assert (=> b!1439162 m!1328303))

(declare-fun m!1328305 () Bool)

(assert (=> b!1439163 m!1328305))

(push 1)

(assert (not b!1439170))

(assert (not b!1439163))

(assert (not b!1439168))

(assert (not b!1439169))

(assert (not b!1439167))

(assert (not start!124448))

(assert (not b!1439166))

