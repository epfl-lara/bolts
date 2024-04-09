; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124662 () Bool)

(assert start!124662)

(declare-fun b!1443122 () Bool)

(declare-fun res!975361 () Bool)

(declare-fun e!813286 () Bool)

(assert (=> b!1443122 (=> (not res!975361) (not e!813286))))

(declare-datatypes ((array!98027 0))(
  ( (array!98028 (arr!47297 (Array (_ BitVec 32) (_ BitVec 64))) (size!47848 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98027)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1443122 (= res!975361 (validKeyInArray!0 (select (arr!47297 a!2862) j!93)))))

(declare-fun b!1443123 () Bool)

(declare-fun res!975362 () Bool)

(declare-fun e!813284 () Bool)

(assert (=> b!1443123 (=> (not res!975362) (not e!813284))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11572 0))(
  ( (MissingZero!11572 (index!48679 (_ BitVec 32))) (Found!11572 (index!48680 (_ BitVec 32))) (Intermediate!11572 (undefined!12384 Bool) (index!48681 (_ BitVec 32)) (x!130384 (_ BitVec 32))) (Undefined!11572) (MissingVacant!11572 (index!48682 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98027 (_ BitVec 32)) SeekEntryResult!11572)

(assert (=> b!1443123 (= res!975362 (= (seekEntryOrOpen!0 (select (arr!47297 a!2862) j!93) a!2862 mask!2687) (Found!11572 j!93)))))

(declare-fun b!1443124 () Bool)

(declare-fun res!975364 () Bool)

(assert (=> b!1443124 (=> (not res!975364) (not e!813286))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1443124 (= res!975364 (validKeyInArray!0 (select (arr!47297 a!2862) i!1006)))))

(declare-fun res!975363 () Bool)

(assert (=> start!124662 (=> (not res!975363) (not e!813286))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124662 (= res!975363 (validMask!0 mask!2687))))

(assert (=> start!124662 e!813286))

(assert (=> start!124662 true))

(declare-fun array_inv!36242 (array!98027) Bool)

(assert (=> start!124662 (array_inv!36242 a!2862)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!633726 () SeekEntryResult!11572)

(declare-fun e!813285 () Bool)

(declare-fun b!1443125 () Bool)

(declare-fun lt!633727 () array!98027)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!633724 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98027 (_ BitVec 32)) SeekEntryResult!11572)

(assert (=> b!1443125 (= e!813285 (= lt!633726 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633724 lt!633727 mask!2687)))))

(declare-fun b!1443126 () Bool)

(declare-fun e!813280 () Bool)

(assert (=> b!1443126 (= e!813280 (validKeyInArray!0 lt!633724))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1443127 () Bool)

(assert (=> b!1443127 (= e!813284 (or (= (select (arr!47297 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47297 a!2862) intermediateBeforeIndex!19) (select (arr!47297 a!2862) j!93))))))

(declare-fun b!1443128 () Bool)

(declare-fun res!975369 () Bool)

(assert (=> b!1443128 (=> (not res!975369) (not e!813286))))

(assert (=> b!1443128 (= res!975369 (and (= (size!47848 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47848 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47848 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1443129 () Bool)

(declare-fun res!975370 () Bool)

(declare-fun e!813282 () Bool)

(assert (=> b!1443129 (=> (not res!975370) (not e!813282))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1443129 (= res!975370 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1443130 () Bool)

(declare-fun res!975365 () Bool)

(assert (=> b!1443130 (=> (not res!975365) (not e!813286))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98027 (_ BitVec 32)) Bool)

(assert (=> b!1443130 (= res!975365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1443131 () Bool)

(declare-fun res!975368 () Bool)

(declare-fun e!813287 () Bool)

(assert (=> b!1443131 (=> (not res!975368) (not e!813287))))

(declare-fun lt!633723 () SeekEntryResult!11572)

(assert (=> b!1443131 (= res!975368 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47297 a!2862) j!93) a!2862 mask!2687) lt!633723))))

(declare-fun b!1443132 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98027 (_ BitVec 32)) SeekEntryResult!11572)

(assert (=> b!1443132 (= e!813285 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633724 lt!633727 mask!2687) (seekEntryOrOpen!0 lt!633724 lt!633727 mask!2687)))))

(declare-fun b!1443133 () Bool)

(assert (=> b!1443133 (= e!813282 (not e!813280))))

(declare-fun res!975373 () Bool)

(assert (=> b!1443133 (=> res!975373 e!813280)))

(assert (=> b!1443133 (= res!975373 (or (not (= (select (arr!47297 a!2862) index!646) (select (store (arr!47297 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47297 a!2862) index!646) (select (arr!47297 a!2862) j!93))) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(assert (=> b!1443133 e!813284))

(declare-fun res!975375 () Bool)

(assert (=> b!1443133 (=> (not res!975375) (not e!813284))))

(assert (=> b!1443133 (= res!975375 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48588 0))(
  ( (Unit!48589) )
))
(declare-fun lt!633725 () Unit!48588)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98027 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48588)

(assert (=> b!1443133 (= lt!633725 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1443134 () Bool)

(declare-fun res!975372 () Bool)

(assert (=> b!1443134 (=> (not res!975372) (not e!813286))))

(declare-datatypes ((List!33978 0))(
  ( (Nil!33975) (Cons!33974 (h!35324 (_ BitVec 64)) (t!48679 List!33978)) )
))
(declare-fun arrayNoDuplicates!0 (array!98027 (_ BitVec 32) List!33978) Bool)

(assert (=> b!1443134 (= res!975372 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33975))))

(declare-fun b!1443135 () Bool)

(declare-fun e!813283 () Bool)

(assert (=> b!1443135 (= e!813286 e!813283)))

(declare-fun res!975374 () Bool)

(assert (=> b!1443135 (=> (not res!975374) (not e!813283))))

(assert (=> b!1443135 (= res!975374 (= (select (store (arr!47297 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1443135 (= lt!633727 (array!98028 (store (arr!47297 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47848 a!2862)))))

(declare-fun b!1443136 () Bool)

(declare-fun res!975366 () Bool)

(assert (=> b!1443136 (=> (not res!975366) (not e!813282))))

(assert (=> b!1443136 (= res!975366 e!813285)))

(declare-fun c!133394 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1443136 (= c!133394 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1443137 () Bool)

(declare-fun res!975360 () Bool)

(assert (=> b!1443137 (=> (not res!975360) (not e!813286))))

(assert (=> b!1443137 (= res!975360 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47848 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47848 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47848 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1443138 () Bool)

(assert (=> b!1443138 (= e!813287 e!813282)))

(declare-fun res!975371 () Bool)

(assert (=> b!1443138 (=> (not res!975371) (not e!813282))))

(assert (=> b!1443138 (= res!975371 (= lt!633726 (Intermediate!11572 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1443138 (= lt!633726 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633724 mask!2687) lt!633724 lt!633727 mask!2687))))

(assert (=> b!1443138 (= lt!633724 (select (store (arr!47297 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1443139 () Bool)

(assert (=> b!1443139 (= e!813283 e!813287)))

(declare-fun res!975367 () Bool)

(assert (=> b!1443139 (=> (not res!975367) (not e!813287))))

(assert (=> b!1443139 (= res!975367 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47297 a!2862) j!93) mask!2687) (select (arr!47297 a!2862) j!93) a!2862 mask!2687) lt!633723))))

(assert (=> b!1443139 (= lt!633723 (Intermediate!11572 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124662 res!975363) b!1443128))

(assert (= (and b!1443128 res!975369) b!1443124))

(assert (= (and b!1443124 res!975364) b!1443122))

(assert (= (and b!1443122 res!975361) b!1443130))

(assert (= (and b!1443130 res!975365) b!1443134))

(assert (= (and b!1443134 res!975372) b!1443137))

(assert (= (and b!1443137 res!975360) b!1443135))

(assert (= (and b!1443135 res!975374) b!1443139))

(assert (= (and b!1443139 res!975367) b!1443131))

(assert (= (and b!1443131 res!975368) b!1443138))

(assert (= (and b!1443138 res!975371) b!1443136))

(assert (= (and b!1443136 c!133394) b!1443125))

(assert (= (and b!1443136 (not c!133394)) b!1443132))

(assert (= (and b!1443136 res!975366) b!1443129))

(assert (= (and b!1443129 res!975370) b!1443133))

(assert (= (and b!1443133 res!975375) b!1443123))

(assert (= (and b!1443123 res!975362) b!1443127))

(assert (= (and b!1443133 (not res!975373)) b!1443126))

(declare-fun m!1332271 () Bool)

(assert (=> b!1443130 m!1332271))

(declare-fun m!1332273 () Bool)

(assert (=> b!1443122 m!1332273))

(assert (=> b!1443122 m!1332273))

(declare-fun m!1332275 () Bool)

(assert (=> b!1443122 m!1332275))

(assert (=> b!1443139 m!1332273))

(assert (=> b!1443139 m!1332273))

(declare-fun m!1332277 () Bool)

(assert (=> b!1443139 m!1332277))

(assert (=> b!1443139 m!1332277))

(assert (=> b!1443139 m!1332273))

(declare-fun m!1332279 () Bool)

(assert (=> b!1443139 m!1332279))

(declare-fun m!1332281 () Bool)

(assert (=> b!1443125 m!1332281))

(assert (=> b!1443123 m!1332273))

(assert (=> b!1443123 m!1332273))

(declare-fun m!1332283 () Bool)

(assert (=> b!1443123 m!1332283))

(declare-fun m!1332285 () Bool)

(assert (=> b!1443138 m!1332285))

(assert (=> b!1443138 m!1332285))

(declare-fun m!1332287 () Bool)

(assert (=> b!1443138 m!1332287))

(declare-fun m!1332289 () Bool)

(assert (=> b!1443138 m!1332289))

(declare-fun m!1332291 () Bool)

(assert (=> b!1443138 m!1332291))

(declare-fun m!1332293 () Bool)

(assert (=> b!1443124 m!1332293))

(assert (=> b!1443124 m!1332293))

(declare-fun m!1332295 () Bool)

(assert (=> b!1443124 m!1332295))

(assert (=> b!1443135 m!1332289))

(declare-fun m!1332297 () Bool)

(assert (=> b!1443135 m!1332297))

(declare-fun m!1332299 () Bool)

(assert (=> b!1443133 m!1332299))

(assert (=> b!1443133 m!1332289))

(declare-fun m!1332301 () Bool)

(assert (=> b!1443133 m!1332301))

(declare-fun m!1332303 () Bool)

(assert (=> b!1443133 m!1332303))

(declare-fun m!1332305 () Bool)

(assert (=> b!1443133 m!1332305))

(assert (=> b!1443133 m!1332273))

(assert (=> b!1443131 m!1332273))

(assert (=> b!1443131 m!1332273))

(declare-fun m!1332307 () Bool)

(assert (=> b!1443131 m!1332307))

(declare-fun m!1332309 () Bool)

(assert (=> start!124662 m!1332309))

(declare-fun m!1332311 () Bool)

(assert (=> start!124662 m!1332311))

(declare-fun m!1332313 () Bool)

(assert (=> b!1443127 m!1332313))

(assert (=> b!1443127 m!1332273))

(declare-fun m!1332315 () Bool)

(assert (=> b!1443132 m!1332315))

(declare-fun m!1332317 () Bool)

(assert (=> b!1443132 m!1332317))

(declare-fun m!1332319 () Bool)

(assert (=> b!1443126 m!1332319))

(declare-fun m!1332321 () Bool)

(assert (=> b!1443134 m!1332321))

(check-sat (not b!1443122) (not b!1443139) (not b!1443134) (not b!1443123) (not b!1443133) (not b!1443124) (not b!1443130) (not b!1443132) (not start!124662) (not b!1443126) (not b!1443125) (not b!1443138) (not b!1443131))
(check-sat)
