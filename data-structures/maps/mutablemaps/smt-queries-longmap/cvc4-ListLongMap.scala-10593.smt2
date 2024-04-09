; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124742 () Bool)

(assert start!124742)

(declare-fun b!1445220 () Bool)

(declare-fun res!977229 () Bool)

(declare-fun e!814169 () Bool)

(assert (=> b!1445220 (=> (not res!977229) (not e!814169))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98107 0))(
  ( (array!98108 (arr!47337 (Array (_ BitVec 32) (_ BitVec 64))) (size!47888 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98107)

(assert (=> b!1445220 (= res!977229 (and (= (size!47888 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47888 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47888 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1445221 () Bool)

(declare-fun e!814174 () Bool)

(declare-fun e!814172 () Bool)

(assert (=> b!1445221 (= e!814174 e!814172)))

(declare-fun res!977227 () Bool)

(assert (=> b!1445221 (=> (not res!977227) (not e!814172))))

(declare-datatypes ((SeekEntryResult!11612 0))(
  ( (MissingZero!11612 (index!48839 (_ BitVec 32))) (Found!11612 (index!48840 (_ BitVec 32))) (Intermediate!11612 (undefined!12424 Bool) (index!48841 (_ BitVec 32)) (x!130528 (_ BitVec 32))) (Undefined!11612) (MissingVacant!11612 (index!48842 (_ BitVec 32))) )
))
(declare-fun lt!634396 () SeekEntryResult!11612)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98107 (_ BitVec 32)) SeekEntryResult!11612)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1445221 (= res!977227 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47337 a!2862) j!93) mask!2687) (select (arr!47337 a!2862) j!93) a!2862 mask!2687) lt!634396))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1445221 (= lt!634396 (Intermediate!11612 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1445222 () Bool)

(declare-fun res!977232 () Bool)

(declare-fun e!814171 () Bool)

(assert (=> b!1445222 (=> (not res!977232) (not e!814171))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1445222 (= res!977232 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun lt!634398 () (_ BitVec 64))

(declare-fun lt!634395 () SeekEntryResult!11612)

(declare-fun b!1445223 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!814170 () Bool)

(declare-fun lt!634399 () array!98107)

(assert (=> b!1445223 (= e!814170 (= lt!634395 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634398 lt!634399 mask!2687)))))

(declare-fun b!1445224 () Bool)

(declare-fun res!977224 () Bool)

(assert (=> b!1445224 (=> (not res!977224) (not e!814169))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1445224 (= res!977224 (validKeyInArray!0 (select (arr!47337 a!2862) i!1006)))))

(declare-fun b!1445225 () Bool)

(declare-fun res!977222 () Bool)

(assert (=> b!1445225 (=> (not res!977222) (not e!814169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98107 (_ BitVec 32)) Bool)

(assert (=> b!1445225 (= res!977222 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun e!814175 () Bool)

(declare-fun b!1445226 () Bool)

(assert (=> b!1445226 (= e!814175 (or (= (select (arr!47337 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47337 a!2862) intermediateBeforeIndex!19) (select (arr!47337 a!2862) j!93))))))

(declare-fun b!1445227 () Bool)

(assert (=> b!1445227 (= e!814172 e!814171)))

(declare-fun res!977228 () Bool)

(assert (=> b!1445227 (=> (not res!977228) (not e!814171))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1445227 (= res!977228 (= lt!634395 (Intermediate!11612 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1445227 (= lt!634395 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634398 mask!2687) lt!634398 lt!634399 mask!2687))))

(assert (=> b!1445227 (= lt!634398 (select (store (arr!47337 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1445228 () Bool)

(declare-fun res!977226 () Bool)

(assert (=> b!1445228 (=> (not res!977226) (not e!814169))))

(declare-datatypes ((List!34018 0))(
  ( (Nil!34015) (Cons!34014 (h!35364 (_ BitVec 64)) (t!48719 List!34018)) )
))
(declare-fun arrayNoDuplicates!0 (array!98107 (_ BitVec 32) List!34018) Bool)

(assert (=> b!1445228 (= res!977226 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34015))))

(declare-fun b!1445230 () Bool)

(declare-fun res!977221 () Bool)

(assert (=> b!1445230 (=> (not res!977221) (not e!814169))))

(assert (=> b!1445230 (= res!977221 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47888 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47888 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47888 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1445231 () Bool)

(declare-fun res!977231 () Bool)

(assert (=> b!1445231 (=> (not res!977231) (not e!814172))))

(assert (=> b!1445231 (= res!977231 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47337 a!2862) j!93) a!2862 mask!2687) lt!634396))))

(declare-fun b!1445232 () Bool)

(declare-fun res!977223 () Bool)

(assert (=> b!1445232 (=> (not res!977223) (not e!814169))))

(assert (=> b!1445232 (= res!977223 (validKeyInArray!0 (select (arr!47337 a!2862) j!93)))))

(declare-fun b!1445233 () Bool)

(declare-fun res!977230 () Bool)

(assert (=> b!1445233 (=> (not res!977230) (not e!814175))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98107 (_ BitVec 32)) SeekEntryResult!11612)

(assert (=> b!1445233 (= res!977230 (= (seekEntryOrOpen!0 (select (arr!47337 a!2862) j!93) a!2862 mask!2687) (Found!11612 j!93)))))

(declare-fun b!1445234 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98107 (_ BitVec 32)) SeekEntryResult!11612)

(assert (=> b!1445234 (= e!814170 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634398 lt!634399 mask!2687) (seekEntryOrOpen!0 lt!634398 lt!634399 mask!2687)))))

(declare-fun b!1445235 () Bool)

(assert (=> b!1445235 (= e!814169 e!814174)))

(declare-fun res!977225 () Bool)

(assert (=> b!1445235 (=> (not res!977225) (not e!814174))))

(assert (=> b!1445235 (= res!977225 (= (select (store (arr!47337 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1445235 (= lt!634399 (array!98108 (store (arr!47337 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47888 a!2862)))))

(declare-fun b!1445236 () Bool)

(declare-fun res!977219 () Bool)

(assert (=> b!1445236 (=> (not res!977219) (not e!814171))))

(assert (=> b!1445236 (= res!977219 e!814170)))

(declare-fun c!133514 () Bool)

(assert (=> b!1445236 (= c!133514 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1445229 () Bool)

(assert (=> b!1445229 (= e!814171 (not true))))

(assert (=> b!1445229 e!814175))

(declare-fun res!977218 () Bool)

(assert (=> b!1445229 (=> (not res!977218) (not e!814175))))

(assert (=> b!1445229 (= res!977218 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48668 0))(
  ( (Unit!48669) )
))
(declare-fun lt!634397 () Unit!48668)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98107 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48668)

(assert (=> b!1445229 (= lt!634397 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!977220 () Bool)

(assert (=> start!124742 (=> (not res!977220) (not e!814169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124742 (= res!977220 (validMask!0 mask!2687))))

(assert (=> start!124742 e!814169))

(assert (=> start!124742 true))

(declare-fun array_inv!36282 (array!98107) Bool)

(assert (=> start!124742 (array_inv!36282 a!2862)))

(assert (= (and start!124742 res!977220) b!1445220))

(assert (= (and b!1445220 res!977229) b!1445224))

(assert (= (and b!1445224 res!977224) b!1445232))

(assert (= (and b!1445232 res!977223) b!1445225))

(assert (= (and b!1445225 res!977222) b!1445228))

(assert (= (and b!1445228 res!977226) b!1445230))

(assert (= (and b!1445230 res!977221) b!1445235))

(assert (= (and b!1445235 res!977225) b!1445221))

(assert (= (and b!1445221 res!977227) b!1445231))

(assert (= (and b!1445231 res!977231) b!1445227))

(assert (= (and b!1445227 res!977228) b!1445236))

(assert (= (and b!1445236 c!133514) b!1445223))

(assert (= (and b!1445236 (not c!133514)) b!1445234))

(assert (= (and b!1445236 res!977219) b!1445222))

(assert (= (and b!1445222 res!977232) b!1445229))

(assert (= (and b!1445229 res!977218) b!1445233))

(assert (= (and b!1445233 res!977230) b!1445226))

(declare-fun m!1334237 () Bool)

(assert (=> b!1445229 m!1334237))

(declare-fun m!1334239 () Bool)

(assert (=> b!1445229 m!1334239))

(declare-fun m!1334241 () Bool)

(assert (=> b!1445234 m!1334241))

(declare-fun m!1334243 () Bool)

(assert (=> b!1445234 m!1334243))

(declare-fun m!1334245 () Bool)

(assert (=> b!1445233 m!1334245))

(assert (=> b!1445233 m!1334245))

(declare-fun m!1334247 () Bool)

(assert (=> b!1445233 m!1334247))

(declare-fun m!1334249 () Bool)

(assert (=> start!124742 m!1334249))

(declare-fun m!1334251 () Bool)

(assert (=> start!124742 m!1334251))

(assert (=> b!1445232 m!1334245))

(assert (=> b!1445232 m!1334245))

(declare-fun m!1334253 () Bool)

(assert (=> b!1445232 m!1334253))

(declare-fun m!1334255 () Bool)

(assert (=> b!1445227 m!1334255))

(assert (=> b!1445227 m!1334255))

(declare-fun m!1334257 () Bool)

(assert (=> b!1445227 m!1334257))

(declare-fun m!1334259 () Bool)

(assert (=> b!1445227 m!1334259))

(declare-fun m!1334261 () Bool)

(assert (=> b!1445227 m!1334261))

(declare-fun m!1334263 () Bool)

(assert (=> b!1445223 m!1334263))

(declare-fun m!1334265 () Bool)

(assert (=> b!1445225 m!1334265))

(assert (=> b!1445231 m!1334245))

(assert (=> b!1445231 m!1334245))

(declare-fun m!1334267 () Bool)

(assert (=> b!1445231 m!1334267))

(declare-fun m!1334269 () Bool)

(assert (=> b!1445226 m!1334269))

(assert (=> b!1445226 m!1334245))

(assert (=> b!1445235 m!1334259))

(declare-fun m!1334271 () Bool)

(assert (=> b!1445235 m!1334271))

(declare-fun m!1334273 () Bool)

(assert (=> b!1445228 m!1334273))

(declare-fun m!1334275 () Bool)

(assert (=> b!1445224 m!1334275))

(assert (=> b!1445224 m!1334275))

(declare-fun m!1334277 () Bool)

(assert (=> b!1445224 m!1334277))

(assert (=> b!1445221 m!1334245))

(assert (=> b!1445221 m!1334245))

(declare-fun m!1334279 () Bool)

(assert (=> b!1445221 m!1334279))

(assert (=> b!1445221 m!1334279))

(assert (=> b!1445221 m!1334245))

(declare-fun m!1334281 () Bool)

(assert (=> b!1445221 m!1334281))

(push 1)

