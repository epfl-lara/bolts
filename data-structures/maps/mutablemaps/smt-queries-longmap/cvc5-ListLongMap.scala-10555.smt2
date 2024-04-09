; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124510 () Bool)

(assert start!124510)

(declare-fun b!1440064 () Bool)

(declare-fun res!972602 () Bool)

(declare-fun e!812077 () Bool)

(assert (=> b!1440064 (=> (not res!972602) (not e!812077))))

(declare-datatypes ((array!97875 0))(
  ( (array!97876 (arr!47221 (Array (_ BitVec 32) (_ BitVec 64))) (size!47772 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97875)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440064 (= res!972602 (validKeyInArray!0 (select (arr!47221 a!2862) j!93)))))

(declare-fun b!1440065 () Bool)

(declare-fun res!972608 () Bool)

(assert (=> b!1440065 (=> (not res!972608) (not e!812077))))

(declare-datatypes ((List!33902 0))(
  ( (Nil!33899) (Cons!33898 (h!35248 (_ BitVec 64)) (t!48603 List!33902)) )
))
(declare-fun arrayNoDuplicates!0 (array!97875 (_ BitVec 32) List!33902) Bool)

(assert (=> b!1440065 (= res!972608 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33899))))

(declare-fun res!972609 () Bool)

(assert (=> start!124510 (=> (not res!972609) (not e!812077))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124510 (= res!972609 (validMask!0 mask!2687))))

(assert (=> start!124510 e!812077))

(assert (=> start!124510 true))

(declare-fun array_inv!36166 (array!97875) Bool)

(assert (=> start!124510 (array_inv!36166 a!2862)))

(declare-fun b!1440066 () Bool)

(declare-fun res!972600 () Bool)

(assert (=> b!1440066 (=> (not res!972600) (not e!812077))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1440066 (= res!972600 (validKeyInArray!0 (select (arr!47221 a!2862) i!1006)))))

(declare-fun b!1440067 () Bool)

(declare-fun res!972604 () Bool)

(declare-fun e!812078 () Bool)

(assert (=> b!1440067 (=> (not res!972604) (not e!812078))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11496 0))(
  ( (MissingZero!11496 (index!48375 (_ BitVec 32))) (Found!11496 (index!48376 (_ BitVec 32))) (Intermediate!11496 (undefined!12308 Bool) (index!48377 (_ BitVec 32)) (x!130108 (_ BitVec 32))) (Undefined!11496) (MissingVacant!11496 (index!48378 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97875 (_ BitVec 32)) SeekEntryResult!11496)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440067 (= res!972604 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47221 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47221 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97876 (store (arr!47221 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47772 a!2862)) mask!2687) (Intermediate!11496 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1440068 () Bool)

(declare-fun res!972601 () Bool)

(assert (=> b!1440068 (=> (not res!972601) (not e!812077))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97875 (_ BitVec 32)) Bool)

(assert (=> b!1440068 (= res!972601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440069 () Bool)

(assert (=> b!1440069 (= e!812077 e!812078)))

(declare-fun res!972605 () Bool)

(assert (=> b!1440069 (=> (not res!972605) (not e!812078))))

(declare-fun lt!632863 () SeekEntryResult!11496)

(assert (=> b!1440069 (= res!972605 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47221 a!2862) j!93) mask!2687) (select (arr!47221 a!2862) j!93) a!2862 mask!2687) lt!632863))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1440069 (= lt!632863 (Intermediate!11496 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440070 () Bool)

(declare-fun res!972606 () Bool)

(assert (=> b!1440070 (=> (not res!972606) (not e!812077))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1440070 (= res!972606 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47772 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47772 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47772 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47221 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440071 () Bool)

(assert (=> b!1440071 (= e!812078 (and (bvsgt x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (bvsge index!646 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun b!1440072 () Bool)

(declare-fun res!972603 () Bool)

(assert (=> b!1440072 (=> (not res!972603) (not e!812077))))

(assert (=> b!1440072 (= res!972603 (and (= (size!47772 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47772 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47772 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440073 () Bool)

(declare-fun res!972607 () Bool)

(assert (=> b!1440073 (=> (not res!972607) (not e!812078))))

(assert (=> b!1440073 (= res!972607 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47221 a!2862) j!93) a!2862 mask!2687) lt!632863))))

(assert (= (and start!124510 res!972609) b!1440072))

(assert (= (and b!1440072 res!972603) b!1440066))

(assert (= (and b!1440066 res!972600) b!1440064))

(assert (= (and b!1440064 res!972602) b!1440068))

(assert (= (and b!1440068 res!972601) b!1440065))

(assert (= (and b!1440065 res!972608) b!1440070))

(assert (= (and b!1440070 res!972606) b!1440069))

(assert (= (and b!1440069 res!972605) b!1440073))

(assert (= (and b!1440073 res!972607) b!1440067))

(assert (= (and b!1440067 res!972604) b!1440071))

(declare-fun m!1329279 () Bool)

(assert (=> b!1440070 m!1329279))

(declare-fun m!1329281 () Bool)

(assert (=> b!1440070 m!1329281))

(assert (=> b!1440067 m!1329279))

(declare-fun m!1329283 () Bool)

(assert (=> b!1440067 m!1329283))

(assert (=> b!1440067 m!1329283))

(declare-fun m!1329285 () Bool)

(assert (=> b!1440067 m!1329285))

(assert (=> b!1440067 m!1329285))

(assert (=> b!1440067 m!1329283))

(declare-fun m!1329287 () Bool)

(assert (=> b!1440067 m!1329287))

(declare-fun m!1329289 () Bool)

(assert (=> b!1440064 m!1329289))

(assert (=> b!1440064 m!1329289))

(declare-fun m!1329291 () Bool)

(assert (=> b!1440064 m!1329291))

(declare-fun m!1329293 () Bool)

(assert (=> b!1440066 m!1329293))

(assert (=> b!1440066 m!1329293))

(declare-fun m!1329295 () Bool)

(assert (=> b!1440066 m!1329295))

(assert (=> b!1440069 m!1329289))

(assert (=> b!1440069 m!1329289))

(declare-fun m!1329297 () Bool)

(assert (=> b!1440069 m!1329297))

(assert (=> b!1440069 m!1329297))

(assert (=> b!1440069 m!1329289))

(declare-fun m!1329299 () Bool)

(assert (=> b!1440069 m!1329299))

(assert (=> b!1440073 m!1329289))

(assert (=> b!1440073 m!1329289))

(declare-fun m!1329301 () Bool)

(assert (=> b!1440073 m!1329301))

(declare-fun m!1329303 () Bool)

(assert (=> start!124510 m!1329303))

(declare-fun m!1329305 () Bool)

(assert (=> start!124510 m!1329305))

(declare-fun m!1329307 () Bool)

(assert (=> b!1440065 m!1329307))

(declare-fun m!1329309 () Bool)

(assert (=> b!1440068 m!1329309))

(push 1)

(assert (not b!1440064))

(assert (not b!1440066))

(assert (not b!1440069))

(assert (not b!1440073))

(assert (not b!1440067))

(assert (not b!1440068))

(assert (not start!124510))

(assert (not b!1440065))

(check-sat)

(pop 1)

(push 1)

(check-sat)

