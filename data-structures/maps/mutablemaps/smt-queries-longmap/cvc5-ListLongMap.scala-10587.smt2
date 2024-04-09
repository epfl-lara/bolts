; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124702 () Bool)

(assert start!124702)

(declare-fun b!1444184 () Bool)

(declare-fun res!976307 () Bool)

(declare-fun e!813745 () Bool)

(assert (=> b!1444184 (=> (not res!976307) (not e!813745))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98067 0))(
  ( (array!98068 (arr!47317 (Array (_ BitVec 32) (_ BitVec 64))) (size!47868 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98067)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1444184 (= res!976307 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47868 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47868 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47868 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1444185 () Bool)

(declare-fun res!976317 () Bool)

(assert (=> b!1444185 (=> (not res!976317) (not e!813745))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98067 (_ BitVec 32)) Bool)

(assert (=> b!1444185 (= res!976317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1444186 () Bool)

(declare-fun res!976306 () Bool)

(assert (=> b!1444186 (=> (not res!976306) (not e!813745))))

(declare-datatypes ((List!33998 0))(
  ( (Nil!33995) (Cons!33994 (h!35344 (_ BitVec 64)) (t!48699 List!33998)) )
))
(declare-fun arrayNoDuplicates!0 (array!98067 (_ BitVec 32) List!33998) Bool)

(assert (=> b!1444186 (= res!976306 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33995))))

(declare-fun b!1444187 () Bool)

(declare-fun res!976315 () Bool)

(assert (=> b!1444187 (=> (not res!976315) (not e!813745))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1444187 (= res!976315 (validKeyInArray!0 (select (arr!47317 a!2862) i!1006)))))

(declare-fun b!1444188 () Bool)

(declare-fun res!976314 () Bool)

(assert (=> b!1444188 (=> (not res!976314) (not e!813745))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1444188 (= res!976314 (validKeyInArray!0 (select (arr!47317 a!2862) j!93)))))

(declare-fun res!976305 () Bool)

(assert (=> start!124702 (=> (not res!976305) (not e!813745))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124702 (= res!976305 (validMask!0 mask!2687))))

(assert (=> start!124702 e!813745))

(assert (=> start!124702 true))

(declare-fun array_inv!36262 (array!98067) Bool)

(assert (=> start!124702 (array_inv!36262 a!2862)))

(declare-fun b!1444189 () Bool)

(declare-fun res!976303 () Bool)

(declare-fun e!813742 () Bool)

(assert (=> b!1444189 (=> (not res!976303) (not e!813742))))

(declare-datatypes ((SeekEntryResult!11592 0))(
  ( (MissingZero!11592 (index!48759 (_ BitVec 32))) (Found!11592 (index!48760 (_ BitVec 32))) (Intermediate!11592 (undefined!12404 Bool) (index!48761 (_ BitVec 32)) (x!130460 (_ BitVec 32))) (Undefined!11592) (MissingVacant!11592 (index!48762 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98067 (_ BitVec 32)) SeekEntryResult!11592)

(assert (=> b!1444189 (= res!976303 (= (seekEntryOrOpen!0 (select (arr!47317 a!2862) j!93) a!2862 mask!2687) (Found!11592 j!93)))))

(declare-fun b!1444190 () Bool)

(declare-fun res!976313 () Bool)

(declare-fun e!813743 () Bool)

(assert (=> b!1444190 (=> (not res!976313) (not e!813743))))

(declare-fun e!813749 () Bool)

(assert (=> b!1444190 (= res!976313 e!813749)))

(declare-fun c!133454 () Bool)

(assert (=> b!1444190 (= c!133454 (bvsle x!665 intermediateAfterX!19))))

(declare-fun lt!634081 () (_ BitVec 64))

(declare-fun lt!634079 () array!98067)

(declare-fun b!1444191 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98067 (_ BitVec 32)) SeekEntryResult!11592)

(assert (=> b!1444191 (= e!813749 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634081 lt!634079 mask!2687) (seekEntryOrOpen!0 lt!634081 lt!634079 mask!2687)))))

(declare-fun b!1444192 () Bool)

(declare-fun res!976312 () Bool)

(assert (=> b!1444192 (=> (not res!976312) (not e!813743))))

(assert (=> b!1444192 (= res!976312 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1444193 () Bool)

(declare-fun e!813747 () Bool)

(assert (=> b!1444193 (= e!813745 e!813747)))

(declare-fun res!976316 () Bool)

(assert (=> b!1444193 (=> (not res!976316) (not e!813747))))

(assert (=> b!1444193 (= res!976316 (= (select (store (arr!47317 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1444193 (= lt!634079 (array!98068 (store (arr!47317 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47868 a!2862)))))

(declare-fun b!1444194 () Bool)

(declare-fun e!813748 () Bool)

(assert (=> b!1444194 (= e!813748 e!813743)))

(declare-fun res!976304 () Bool)

(assert (=> b!1444194 (=> (not res!976304) (not e!813743))))

(declare-fun lt!634080 () SeekEntryResult!11592)

(assert (=> b!1444194 (= res!976304 (= lt!634080 (Intermediate!11592 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98067 (_ BitVec 32)) SeekEntryResult!11592)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1444194 (= lt!634080 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634081 mask!2687) lt!634081 lt!634079 mask!2687))))

(assert (=> b!1444194 (= lt!634081 (select (store (arr!47317 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1444195 () Bool)

(assert (=> b!1444195 (= e!813749 (= lt!634080 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634081 lt!634079 mask!2687)))))

(declare-fun b!1444196 () Bool)

(assert (=> b!1444196 (= e!813742 (or (= (select (arr!47317 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47317 a!2862) intermediateBeforeIndex!19) (select (arr!47317 a!2862) j!93))))))

(declare-fun b!1444197 () Bool)

(declare-fun res!976302 () Bool)

(assert (=> b!1444197 (=> (not res!976302) (not e!813748))))

(declare-fun lt!634084 () SeekEntryResult!11592)

(assert (=> b!1444197 (= res!976302 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47317 a!2862) j!93) a!2862 mask!2687) lt!634084))))

(declare-fun b!1444198 () Bool)

(declare-fun e!813744 () Bool)

(assert (=> b!1444198 (= e!813743 (not e!813744))))

(declare-fun res!976308 () Bool)

(assert (=> b!1444198 (=> res!976308 e!813744)))

(assert (=> b!1444198 (= res!976308 (or (not (= (select (arr!47317 a!2862) index!646) (select (store (arr!47317 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47317 a!2862) index!646) (select (arr!47317 a!2862) j!93)))))))

(assert (=> b!1444198 e!813742))

(declare-fun res!976309 () Bool)

(assert (=> b!1444198 (=> (not res!976309) (not e!813742))))

(assert (=> b!1444198 (= res!976309 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48628 0))(
  ( (Unit!48629) )
))
(declare-fun lt!634082 () Unit!48628)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98067 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48628)

(assert (=> b!1444198 (= lt!634082 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1444199 () Bool)

(declare-fun res!976310 () Bool)

(assert (=> b!1444199 (=> (not res!976310) (not e!813745))))

(assert (=> b!1444199 (= res!976310 (and (= (size!47868 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47868 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47868 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1444200 () Bool)

(assert (=> b!1444200 (= e!813744 true)))

(declare-fun lt!634083 () SeekEntryResult!11592)

(assert (=> b!1444200 (= lt!634083 (seekEntryOrOpen!0 lt!634081 lt!634079 mask!2687))))

(declare-fun b!1444201 () Bool)

(assert (=> b!1444201 (= e!813747 e!813748)))

(declare-fun res!976311 () Bool)

(assert (=> b!1444201 (=> (not res!976311) (not e!813748))))

(assert (=> b!1444201 (= res!976311 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47317 a!2862) j!93) mask!2687) (select (arr!47317 a!2862) j!93) a!2862 mask!2687) lt!634084))))

(assert (=> b!1444201 (= lt!634084 (Intermediate!11592 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124702 res!976305) b!1444199))

(assert (= (and b!1444199 res!976310) b!1444187))

(assert (= (and b!1444187 res!976315) b!1444188))

(assert (= (and b!1444188 res!976314) b!1444185))

(assert (= (and b!1444185 res!976317) b!1444186))

(assert (= (and b!1444186 res!976306) b!1444184))

(assert (= (and b!1444184 res!976307) b!1444193))

(assert (= (and b!1444193 res!976316) b!1444201))

(assert (= (and b!1444201 res!976311) b!1444197))

(assert (= (and b!1444197 res!976302) b!1444194))

(assert (= (and b!1444194 res!976304) b!1444190))

(assert (= (and b!1444190 c!133454) b!1444195))

(assert (= (and b!1444190 (not c!133454)) b!1444191))

(assert (= (and b!1444190 res!976313) b!1444192))

(assert (= (and b!1444192 res!976312) b!1444198))

(assert (= (and b!1444198 res!976309) b!1444189))

(assert (= (and b!1444189 res!976303) b!1444196))

(assert (= (and b!1444198 (not res!976308)) b!1444200))

(declare-fun m!1333275 () Bool)

(assert (=> b!1444185 m!1333275))

(declare-fun m!1333277 () Bool)

(assert (=> b!1444194 m!1333277))

(assert (=> b!1444194 m!1333277))

(declare-fun m!1333279 () Bool)

(assert (=> b!1444194 m!1333279))

(declare-fun m!1333281 () Bool)

(assert (=> b!1444194 m!1333281))

(declare-fun m!1333283 () Bool)

(assert (=> b!1444194 m!1333283))

(declare-fun m!1333285 () Bool)

(assert (=> start!124702 m!1333285))

(declare-fun m!1333287 () Bool)

(assert (=> start!124702 m!1333287))

(declare-fun m!1333289 () Bool)

(assert (=> b!1444196 m!1333289))

(declare-fun m!1333291 () Bool)

(assert (=> b!1444196 m!1333291))

(declare-fun m!1333293 () Bool)

(assert (=> b!1444198 m!1333293))

(assert (=> b!1444198 m!1333281))

(declare-fun m!1333295 () Bool)

(assert (=> b!1444198 m!1333295))

(declare-fun m!1333297 () Bool)

(assert (=> b!1444198 m!1333297))

(declare-fun m!1333299 () Bool)

(assert (=> b!1444198 m!1333299))

(assert (=> b!1444198 m!1333291))

(assert (=> b!1444201 m!1333291))

(assert (=> b!1444201 m!1333291))

(declare-fun m!1333301 () Bool)

(assert (=> b!1444201 m!1333301))

(assert (=> b!1444201 m!1333301))

(assert (=> b!1444201 m!1333291))

(declare-fun m!1333303 () Bool)

(assert (=> b!1444201 m!1333303))

(declare-fun m!1333305 () Bool)

(assert (=> b!1444195 m!1333305))

(assert (=> b!1444197 m!1333291))

(assert (=> b!1444197 m!1333291))

(declare-fun m!1333307 () Bool)

(assert (=> b!1444197 m!1333307))

(declare-fun m!1333309 () Bool)

(assert (=> b!1444191 m!1333309))

(declare-fun m!1333311 () Bool)

(assert (=> b!1444191 m!1333311))

(declare-fun m!1333313 () Bool)

(assert (=> b!1444186 m!1333313))

(assert (=> b!1444188 m!1333291))

(assert (=> b!1444188 m!1333291))

(declare-fun m!1333315 () Bool)

(assert (=> b!1444188 m!1333315))

(declare-fun m!1333317 () Bool)

(assert (=> b!1444187 m!1333317))

(assert (=> b!1444187 m!1333317))

(declare-fun m!1333319 () Bool)

(assert (=> b!1444187 m!1333319))

(assert (=> b!1444200 m!1333311))

(assert (=> b!1444193 m!1333281))

(declare-fun m!1333321 () Bool)

(assert (=> b!1444193 m!1333321))

(assert (=> b!1444189 m!1333291))

(assert (=> b!1444189 m!1333291))

(declare-fun m!1333323 () Bool)

(assert (=> b!1444189 m!1333323))

(push 1)

