; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124508 () Bool)

(assert start!124508)

(declare-fun b!1440035 () Bool)

(declare-fun res!972575 () Bool)

(declare-fun e!812067 () Bool)

(assert (=> b!1440035 (=> (not res!972575) (not e!812067))))

(declare-datatypes ((array!97873 0))(
  ( (array!97874 (arr!47220 (Array (_ BitVec 32) (_ BitVec 64))) (size!47771 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97873)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440035 (= res!972575 (validKeyInArray!0 (select (arr!47220 a!2862) i!1006)))))

(declare-fun b!1440036 () Bool)

(declare-fun res!972579 () Bool)

(assert (=> b!1440036 (=> (not res!972579) (not e!812067))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97873 (_ BitVec 32)) Bool)

(assert (=> b!1440036 (= res!972579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440037 () Bool)

(declare-fun res!972578 () Bool)

(declare-fun e!812069 () Bool)

(assert (=> b!1440037 (=> (not res!972578) (not e!812069))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11495 0))(
  ( (MissingZero!11495 (index!48371 (_ BitVec 32))) (Found!11495 (index!48372 (_ BitVec 32))) (Intermediate!11495 (undefined!12307 Bool) (index!48373 (_ BitVec 32)) (x!130099 (_ BitVec 32))) (Undefined!11495) (MissingVacant!11495 (index!48374 (_ BitVec 32))) )
))
(declare-fun lt!632860 () SeekEntryResult!11495)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97873 (_ BitVec 32)) SeekEntryResult!11495)

(assert (=> b!1440037 (= res!972578 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47220 a!2862) j!93) a!2862 mask!2687) lt!632860))))

(declare-fun b!1440038 () Bool)

(declare-fun res!972574 () Bool)

(assert (=> b!1440038 (=> (not res!972574) (not e!812067))))

(declare-datatypes ((List!33901 0))(
  ( (Nil!33898) (Cons!33897 (h!35247 (_ BitVec 64)) (t!48602 List!33901)) )
))
(declare-fun arrayNoDuplicates!0 (array!97873 (_ BitVec 32) List!33901) Bool)

(assert (=> b!1440038 (= res!972574 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33898))))

(declare-fun b!1440039 () Bool)

(declare-fun res!972577 () Bool)

(assert (=> b!1440039 (=> (not res!972577) (not e!812067))))

(assert (=> b!1440039 (= res!972577 (and (= (size!47771 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47771 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47771 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440040 () Bool)

(declare-fun res!972573 () Bool)

(assert (=> b!1440040 (=> (not res!972573) (not e!812067))))

(assert (=> b!1440040 (= res!972573 (validKeyInArray!0 (select (arr!47220 a!2862) j!93)))))

(declare-fun b!1440041 () Bool)

(assert (=> b!1440041 (= e!812069 false)))

(declare-fun lt!632859 () SeekEntryResult!11495)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440041 (= lt!632859 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47220 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47220 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97874 (store (arr!47220 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47771 a!2862)) mask!2687))))

(declare-fun b!1440042 () Bool)

(assert (=> b!1440042 (= e!812067 e!812069)))

(declare-fun res!972571 () Bool)

(assert (=> b!1440042 (=> (not res!972571) (not e!812069))))

(assert (=> b!1440042 (= res!972571 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47220 a!2862) j!93) mask!2687) (select (arr!47220 a!2862) j!93) a!2862 mask!2687) lt!632860))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1440042 (= lt!632860 (Intermediate!11495 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440043 () Bool)

(declare-fun res!972572 () Bool)

(assert (=> b!1440043 (=> (not res!972572) (not e!812067))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1440043 (= res!972572 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47771 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47771 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47771 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47220 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!972576 () Bool)

(assert (=> start!124508 (=> (not res!972576) (not e!812067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124508 (= res!972576 (validMask!0 mask!2687))))

(assert (=> start!124508 e!812067))

(assert (=> start!124508 true))

(declare-fun array_inv!36165 (array!97873) Bool)

(assert (=> start!124508 (array_inv!36165 a!2862)))

(assert (= (and start!124508 res!972576) b!1440039))

(assert (= (and b!1440039 res!972577) b!1440035))

(assert (= (and b!1440035 res!972575) b!1440040))

(assert (= (and b!1440040 res!972573) b!1440036))

(assert (= (and b!1440036 res!972579) b!1440038))

(assert (= (and b!1440038 res!972574) b!1440043))

(assert (= (and b!1440043 res!972572) b!1440042))

(assert (= (and b!1440042 res!972571) b!1440037))

(assert (= (and b!1440037 res!972578) b!1440041))

(declare-fun m!1329247 () Bool)

(assert (=> b!1440035 m!1329247))

(assert (=> b!1440035 m!1329247))

(declare-fun m!1329249 () Bool)

(assert (=> b!1440035 m!1329249))

(declare-fun m!1329251 () Bool)

(assert (=> b!1440036 m!1329251))

(declare-fun m!1329253 () Bool)

(assert (=> b!1440038 m!1329253))

(declare-fun m!1329255 () Bool)

(assert (=> start!124508 m!1329255))

(declare-fun m!1329257 () Bool)

(assert (=> start!124508 m!1329257))

(declare-fun m!1329259 () Bool)

(assert (=> b!1440040 m!1329259))

(assert (=> b!1440040 m!1329259))

(declare-fun m!1329261 () Bool)

(assert (=> b!1440040 m!1329261))

(declare-fun m!1329263 () Bool)

(assert (=> b!1440041 m!1329263))

(declare-fun m!1329265 () Bool)

(assert (=> b!1440041 m!1329265))

(assert (=> b!1440041 m!1329265))

(declare-fun m!1329267 () Bool)

(assert (=> b!1440041 m!1329267))

(assert (=> b!1440041 m!1329267))

(assert (=> b!1440041 m!1329265))

(declare-fun m!1329269 () Bool)

(assert (=> b!1440041 m!1329269))

(assert (=> b!1440037 m!1329259))

(assert (=> b!1440037 m!1329259))

(declare-fun m!1329271 () Bool)

(assert (=> b!1440037 m!1329271))

(assert (=> b!1440043 m!1329263))

(declare-fun m!1329273 () Bool)

(assert (=> b!1440043 m!1329273))

(assert (=> b!1440042 m!1329259))

(assert (=> b!1440042 m!1329259))

(declare-fun m!1329275 () Bool)

(assert (=> b!1440042 m!1329275))

(assert (=> b!1440042 m!1329275))

(assert (=> b!1440042 m!1329259))

(declare-fun m!1329277 () Bool)

(assert (=> b!1440042 m!1329277))

(push 1)

