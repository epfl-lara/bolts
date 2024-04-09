; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124704 () Bool)

(assert start!124704)

(declare-fun b!1444238 () Bool)

(declare-fun res!976351 () Bool)

(declare-fun e!813773 () Bool)

(assert (=> b!1444238 (=> (not res!976351) (not e!813773))))

(declare-datatypes ((array!98069 0))(
  ( (array!98070 (arr!47318 (Array (_ BitVec 32) (_ BitVec 64))) (size!47869 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98069)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98069 (_ BitVec 32)) Bool)

(assert (=> b!1444238 (= res!976351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1444239 () Bool)

(declare-fun res!976353 () Bool)

(declare-fun e!813767 () Bool)

(assert (=> b!1444239 (=> (not res!976353) (not e!813767))))

(declare-fun e!813769 () Bool)

(assert (=> b!1444239 (= res!976353 e!813769)))

(declare-fun c!133457 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1444239 (= c!133457 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1444240 () Bool)

(declare-fun res!976364 () Bool)

(assert (=> b!1444240 (=> (not res!976364) (not e!813773))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1444240 (= res!976364 (and (= (size!47869 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47869 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47869 a!2862)) (not (= i!1006 j!93))))))

(declare-datatypes ((SeekEntryResult!11593 0))(
  ( (MissingZero!11593 (index!48763 (_ BitVec 32))) (Found!11593 (index!48764 (_ BitVec 32))) (Intermediate!11593 (undefined!12405 Bool) (index!48765 (_ BitVec 32)) (x!130461 (_ BitVec 32))) (Undefined!11593) (MissingVacant!11593 (index!48766 (_ BitVec 32))) )
))
(declare-fun lt!634097 () SeekEntryResult!11593)

(declare-fun lt!634099 () array!98069)

(declare-fun lt!634100 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1444241 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98069 (_ BitVec 32)) SeekEntryResult!11593)

(assert (=> b!1444241 (= e!813769 (= lt!634097 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634100 lt!634099 mask!2687)))))

(declare-fun b!1444243 () Bool)

(declare-fun res!976360 () Bool)

(assert (=> b!1444243 (=> (not res!976360) (not e!813773))))

(declare-datatypes ((List!33999 0))(
  ( (Nil!33996) (Cons!33995 (h!35345 (_ BitVec 64)) (t!48700 List!33999)) )
))
(declare-fun arrayNoDuplicates!0 (array!98069 (_ BitVec 32) List!33999) Bool)

(assert (=> b!1444243 (= res!976360 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33996))))

(declare-fun e!813772 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1444244 () Bool)

(assert (=> b!1444244 (= e!813772 (or (= (select (arr!47318 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47318 a!2862) intermediateBeforeIndex!19) (select (arr!47318 a!2862) j!93))))))

(declare-fun b!1444245 () Bool)

(declare-fun e!813771 () Bool)

(declare-fun e!813768 () Bool)

(assert (=> b!1444245 (= e!813771 e!813768)))

(declare-fun res!976350 () Bool)

(assert (=> b!1444245 (=> (not res!976350) (not e!813768))))

(declare-fun lt!634101 () SeekEntryResult!11593)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1444245 (= res!976350 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47318 a!2862) j!93) mask!2687) (select (arr!47318 a!2862) j!93) a!2862 mask!2687) lt!634101))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1444245 (= lt!634101 (Intermediate!11593 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1444246 () Bool)

(declare-fun res!976362 () Bool)

(assert (=> b!1444246 (=> (not res!976362) (not e!813767))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1444246 (= res!976362 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1444247 () Bool)

(declare-fun res!976359 () Bool)

(assert (=> b!1444247 (=> (not res!976359) (not e!813768))))

(assert (=> b!1444247 (= res!976359 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47318 a!2862) j!93) a!2862 mask!2687) lt!634101))))

(declare-fun b!1444248 () Bool)

(declare-fun res!976355 () Bool)

(assert (=> b!1444248 (=> (not res!976355) (not e!813772))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98069 (_ BitVec 32)) SeekEntryResult!11593)

(assert (=> b!1444248 (= res!976355 (= (seekEntryOrOpen!0 (select (arr!47318 a!2862) j!93) a!2862 mask!2687) (Found!11593 j!93)))))

(declare-fun b!1444249 () Bool)

(declare-fun res!976361 () Bool)

(assert (=> b!1444249 (=> (not res!976361) (not e!813773))))

(assert (=> b!1444249 (= res!976361 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47869 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47869 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47869 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1444250 () Bool)

(declare-fun e!813766 () Bool)

(assert (=> b!1444250 (= e!813766 true)))

(declare-fun lt!634098 () SeekEntryResult!11593)

(assert (=> b!1444250 (= lt!634098 (seekEntryOrOpen!0 lt!634100 lt!634099 mask!2687))))

(declare-fun b!1444251 () Bool)

(assert (=> b!1444251 (= e!813768 e!813767)))

(declare-fun res!976357 () Bool)

(assert (=> b!1444251 (=> (not res!976357) (not e!813767))))

(assert (=> b!1444251 (= res!976357 (= lt!634097 (Intermediate!11593 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1444251 (= lt!634097 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634100 mask!2687) lt!634100 lt!634099 mask!2687))))

(assert (=> b!1444251 (= lt!634100 (select (store (arr!47318 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!976354 () Bool)

(assert (=> start!124704 (=> (not res!976354) (not e!813773))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124704 (= res!976354 (validMask!0 mask!2687))))

(assert (=> start!124704 e!813773))

(assert (=> start!124704 true))

(declare-fun array_inv!36263 (array!98069) Bool)

(assert (=> start!124704 (array_inv!36263 a!2862)))

(declare-fun b!1444242 () Bool)

(assert (=> b!1444242 (= e!813767 (not e!813766))))

(declare-fun res!976356 () Bool)

(assert (=> b!1444242 (=> res!976356 e!813766)))

(assert (=> b!1444242 (= res!976356 (or (not (= (select (arr!47318 a!2862) index!646) (select (store (arr!47318 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47318 a!2862) index!646) (select (arr!47318 a!2862) j!93)))))))

(assert (=> b!1444242 e!813772))

(declare-fun res!976352 () Bool)

(assert (=> b!1444242 (=> (not res!976352) (not e!813772))))

(assert (=> b!1444242 (= res!976352 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48630 0))(
  ( (Unit!48631) )
))
(declare-fun lt!634102 () Unit!48630)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98069 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48630)

(assert (=> b!1444242 (= lt!634102 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1444252 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98069 (_ BitVec 32)) SeekEntryResult!11593)

(assert (=> b!1444252 (= e!813769 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634100 lt!634099 mask!2687) (seekEntryOrOpen!0 lt!634100 lt!634099 mask!2687)))))

(declare-fun b!1444253 () Bool)

(assert (=> b!1444253 (= e!813773 e!813771)))

(declare-fun res!976358 () Bool)

(assert (=> b!1444253 (=> (not res!976358) (not e!813771))))

(assert (=> b!1444253 (= res!976358 (= (select (store (arr!47318 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1444253 (= lt!634099 (array!98070 (store (arr!47318 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47869 a!2862)))))

(declare-fun b!1444254 () Bool)

(declare-fun res!976363 () Bool)

(assert (=> b!1444254 (=> (not res!976363) (not e!813773))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1444254 (= res!976363 (validKeyInArray!0 (select (arr!47318 a!2862) i!1006)))))

(declare-fun b!1444255 () Bool)

(declare-fun res!976365 () Bool)

(assert (=> b!1444255 (=> (not res!976365) (not e!813773))))

(assert (=> b!1444255 (= res!976365 (validKeyInArray!0 (select (arr!47318 a!2862) j!93)))))

(assert (= (and start!124704 res!976354) b!1444240))

(assert (= (and b!1444240 res!976364) b!1444254))

(assert (= (and b!1444254 res!976363) b!1444255))

(assert (= (and b!1444255 res!976365) b!1444238))

(assert (= (and b!1444238 res!976351) b!1444243))

(assert (= (and b!1444243 res!976360) b!1444249))

(assert (= (and b!1444249 res!976361) b!1444253))

(assert (= (and b!1444253 res!976358) b!1444245))

(assert (= (and b!1444245 res!976350) b!1444247))

(assert (= (and b!1444247 res!976359) b!1444251))

(assert (= (and b!1444251 res!976357) b!1444239))

(assert (= (and b!1444239 c!133457) b!1444241))

(assert (= (and b!1444239 (not c!133457)) b!1444252))

(assert (= (and b!1444239 res!976353) b!1444246))

(assert (= (and b!1444246 res!976362) b!1444242))

(assert (= (and b!1444242 res!976352) b!1444248))

(assert (= (and b!1444248 res!976355) b!1444244))

(assert (= (and b!1444242 (not res!976356)) b!1444250))

(declare-fun m!1333325 () Bool)

(assert (=> b!1444255 m!1333325))

(assert (=> b!1444255 m!1333325))

(declare-fun m!1333327 () Bool)

(assert (=> b!1444255 m!1333327))

(assert (=> b!1444245 m!1333325))

(assert (=> b!1444245 m!1333325))

(declare-fun m!1333329 () Bool)

(assert (=> b!1444245 m!1333329))

(assert (=> b!1444245 m!1333329))

(assert (=> b!1444245 m!1333325))

(declare-fun m!1333331 () Bool)

(assert (=> b!1444245 m!1333331))

(assert (=> b!1444247 m!1333325))

(assert (=> b!1444247 m!1333325))

(declare-fun m!1333333 () Bool)

(assert (=> b!1444247 m!1333333))

(declare-fun m!1333335 () Bool)

(assert (=> b!1444252 m!1333335))

(declare-fun m!1333337 () Bool)

(assert (=> b!1444252 m!1333337))

(declare-fun m!1333339 () Bool)

(assert (=> b!1444254 m!1333339))

(assert (=> b!1444254 m!1333339))

(declare-fun m!1333341 () Bool)

(assert (=> b!1444254 m!1333341))

(declare-fun m!1333343 () Bool)

(assert (=> b!1444251 m!1333343))

(assert (=> b!1444251 m!1333343))

(declare-fun m!1333345 () Bool)

(assert (=> b!1444251 m!1333345))

(declare-fun m!1333347 () Bool)

(assert (=> b!1444251 m!1333347))

(declare-fun m!1333349 () Bool)

(assert (=> b!1444251 m!1333349))

(declare-fun m!1333351 () Bool)

(assert (=> b!1444238 m!1333351))

(declare-fun m!1333353 () Bool)

(assert (=> start!124704 m!1333353))

(declare-fun m!1333355 () Bool)

(assert (=> start!124704 m!1333355))

(assert (=> b!1444253 m!1333347))

(declare-fun m!1333357 () Bool)

(assert (=> b!1444253 m!1333357))

(declare-fun m!1333359 () Bool)

(assert (=> b!1444243 m!1333359))

(declare-fun m!1333361 () Bool)

(assert (=> b!1444242 m!1333361))

(assert (=> b!1444242 m!1333347))

(declare-fun m!1333363 () Bool)

(assert (=> b!1444242 m!1333363))

(declare-fun m!1333365 () Bool)

(assert (=> b!1444242 m!1333365))

(declare-fun m!1333367 () Bool)

(assert (=> b!1444242 m!1333367))

(assert (=> b!1444242 m!1333325))

(declare-fun m!1333369 () Bool)

(assert (=> b!1444244 m!1333369))

(assert (=> b!1444244 m!1333325))

(assert (=> b!1444248 m!1333325))

(assert (=> b!1444248 m!1333325))

(declare-fun m!1333371 () Bool)

(assert (=> b!1444248 m!1333371))

(declare-fun m!1333373 () Bool)

(assert (=> b!1444241 m!1333373))

(assert (=> b!1444250 m!1333337))

(check-sat (not b!1444248) (not b!1444238) (not b!1444255) (not b!1444250) (not b!1444242) (not b!1444252) (not b!1444241) (not b!1444247) (not b!1444254) (not b!1444243) (not start!124704) (not b!1444251) (not b!1444245))
(check-sat)
