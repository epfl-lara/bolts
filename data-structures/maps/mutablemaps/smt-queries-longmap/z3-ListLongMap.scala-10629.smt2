; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124956 () Bool)

(assert start!124956)

(declare-fun b!1451244 () Bool)

(declare-fun res!982609 () Bool)

(declare-fun e!817160 () Bool)

(assert (=> b!1451244 (=> (not res!982609) (not e!817160))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11719 0))(
  ( (MissingZero!11719 (index!49267 (_ BitVec 32))) (Found!11719 (index!49268 (_ BitVec 32))) (Intermediate!11719 (undefined!12531 Bool) (index!49269 (_ BitVec 32)) (x!130923 (_ BitVec 32))) (Undefined!11719) (MissingVacant!11719 (index!49270 (_ BitVec 32))) )
))
(declare-fun lt!636562 () SeekEntryResult!11719)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98321 0))(
  ( (array!98322 (arr!47444 (Array (_ BitVec 32) (_ BitVec 64))) (size!47995 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98321)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98321 (_ BitVec 32)) SeekEntryResult!11719)

(assert (=> b!1451244 (= res!982609 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47444 a!2862) j!93) a!2862 mask!2687) lt!636562))))

(declare-fun b!1451245 () Bool)

(declare-fun e!817156 () Bool)

(assert (=> b!1451245 (= e!817160 e!817156)))

(declare-fun res!982613 () Bool)

(assert (=> b!1451245 (=> (not res!982613) (not e!817156))))

(declare-fun lt!636559 () SeekEntryResult!11719)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1451245 (= res!982613 (= lt!636559 (Intermediate!11719 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!636560 () array!98321)

(declare-fun lt!636558 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1451245 (= lt!636559 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636558 mask!2687) lt!636558 lt!636560 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1451245 (= lt!636558 (select (store (arr!47444 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1451246 () Bool)

(declare-fun res!982612 () Bool)

(declare-fun e!817159 () Bool)

(assert (=> b!1451246 (=> (not res!982612) (not e!817159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98321 (_ BitVec 32)) Bool)

(assert (=> b!1451246 (= res!982612 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1451247 () Bool)

(declare-fun res!982611 () Bool)

(assert (=> b!1451247 (=> (not res!982611) (not e!817159))))

(declare-datatypes ((List!34125 0))(
  ( (Nil!34122) (Cons!34121 (h!35471 (_ BitVec 64)) (t!48826 List!34125)) )
))
(declare-fun arrayNoDuplicates!0 (array!98321 (_ BitVec 32) List!34125) Bool)

(assert (=> b!1451247 (= res!982611 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34122))))

(declare-fun b!1451248 () Bool)

(declare-fun res!982605 () Bool)

(assert (=> b!1451248 (=> (not res!982605) (not e!817159))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1451248 (= res!982605 (validKeyInArray!0 (select (arr!47444 a!2862) i!1006)))))

(declare-fun b!1451249 () Bool)

(assert (=> b!1451249 (= e!817156 (not (or (and (= (select (arr!47444 a!2862) index!646) (select (store (arr!47444 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47444 a!2862) index!646) (select (arr!47444 a!2862) j!93))) (= (select (arr!47444 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(declare-fun e!817154 () Bool)

(assert (=> b!1451249 e!817154))

(declare-fun res!982601 () Bool)

(assert (=> b!1451249 (=> (not res!982601) (not e!817154))))

(assert (=> b!1451249 (= res!982601 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48882 0))(
  ( (Unit!48883) )
))
(declare-fun lt!636561 () Unit!48882)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98321 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48882)

(assert (=> b!1451249 (= lt!636561 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1451250 () Bool)

(declare-fun e!817158 () Bool)

(assert (=> b!1451250 (= e!817158 (= lt!636559 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636558 lt!636560 mask!2687)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1451251 () Bool)

(assert (=> b!1451251 (= e!817154 (and (or (= (select (arr!47444 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47444 a!2862) intermediateBeforeIndex!19) (select (arr!47444 a!2862) j!93))) (or (and (= (select (arr!47444 a!2862) index!646) (select (store (arr!47444 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47444 a!2862) index!646) (select (arr!47444 a!2862) j!93))) (= (select (arr!47444 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47444 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1451252 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98321 (_ BitVec 32)) SeekEntryResult!11719)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98321 (_ BitVec 32)) SeekEntryResult!11719)

(assert (=> b!1451252 (= e!817158 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636558 lt!636560 mask!2687) (seekEntryOrOpen!0 lt!636558 lt!636560 mask!2687)))))

(declare-fun res!982610 () Bool)

(assert (=> start!124956 (=> (not res!982610) (not e!817159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124956 (= res!982610 (validMask!0 mask!2687))))

(assert (=> start!124956 e!817159))

(assert (=> start!124956 true))

(declare-fun array_inv!36389 (array!98321) Bool)

(assert (=> start!124956 (array_inv!36389 a!2862)))

(declare-fun b!1451253 () Bool)

(declare-fun e!817155 () Bool)

(assert (=> b!1451253 (= e!817159 e!817155)))

(declare-fun res!982603 () Bool)

(assert (=> b!1451253 (=> (not res!982603) (not e!817155))))

(assert (=> b!1451253 (= res!982603 (= (select (store (arr!47444 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1451253 (= lt!636560 (array!98322 (store (arr!47444 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47995 a!2862)))))

(declare-fun b!1451254 () Bool)

(declare-fun res!982614 () Bool)

(assert (=> b!1451254 (=> (not res!982614) (not e!817154))))

(assert (=> b!1451254 (= res!982614 (= (seekEntryOrOpen!0 (select (arr!47444 a!2862) j!93) a!2862 mask!2687) (Found!11719 j!93)))))

(declare-fun b!1451255 () Bool)

(declare-fun res!982604 () Bool)

(assert (=> b!1451255 (=> (not res!982604) (not e!817156))))

(assert (=> b!1451255 (= res!982604 e!817158)))

(declare-fun c!133835 () Bool)

(assert (=> b!1451255 (= c!133835 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1451256 () Bool)

(declare-fun res!982608 () Bool)

(assert (=> b!1451256 (=> (not res!982608) (not e!817159))))

(assert (=> b!1451256 (= res!982608 (validKeyInArray!0 (select (arr!47444 a!2862) j!93)))))

(declare-fun b!1451257 () Bool)

(declare-fun res!982602 () Bool)

(assert (=> b!1451257 (=> (not res!982602) (not e!817159))))

(assert (=> b!1451257 (= res!982602 (and (= (size!47995 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47995 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47995 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1451258 () Bool)

(declare-fun res!982607 () Bool)

(assert (=> b!1451258 (=> (not res!982607) (not e!817156))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1451258 (= res!982607 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1451259 () Bool)

(declare-fun res!982600 () Bool)

(assert (=> b!1451259 (=> (not res!982600) (not e!817159))))

(assert (=> b!1451259 (= res!982600 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47995 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47995 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47995 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1451260 () Bool)

(assert (=> b!1451260 (= e!817155 e!817160)))

(declare-fun res!982606 () Bool)

(assert (=> b!1451260 (=> (not res!982606) (not e!817160))))

(assert (=> b!1451260 (= res!982606 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47444 a!2862) j!93) mask!2687) (select (arr!47444 a!2862) j!93) a!2862 mask!2687) lt!636562))))

(assert (=> b!1451260 (= lt!636562 (Intermediate!11719 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124956 res!982610) b!1451257))

(assert (= (and b!1451257 res!982602) b!1451248))

(assert (= (and b!1451248 res!982605) b!1451256))

(assert (= (and b!1451256 res!982608) b!1451246))

(assert (= (and b!1451246 res!982612) b!1451247))

(assert (= (and b!1451247 res!982611) b!1451259))

(assert (= (and b!1451259 res!982600) b!1451253))

(assert (= (and b!1451253 res!982603) b!1451260))

(assert (= (and b!1451260 res!982606) b!1451244))

(assert (= (and b!1451244 res!982609) b!1451245))

(assert (= (and b!1451245 res!982613) b!1451255))

(assert (= (and b!1451255 c!133835) b!1451250))

(assert (= (and b!1451255 (not c!133835)) b!1451252))

(assert (= (and b!1451255 res!982604) b!1451258))

(assert (= (and b!1451258 res!982607) b!1451249))

(assert (= (and b!1451249 res!982601) b!1451254))

(assert (= (and b!1451254 res!982614) b!1451251))

(declare-fun m!1339901 () Bool)

(assert (=> b!1451260 m!1339901))

(assert (=> b!1451260 m!1339901))

(declare-fun m!1339903 () Bool)

(assert (=> b!1451260 m!1339903))

(assert (=> b!1451260 m!1339903))

(assert (=> b!1451260 m!1339901))

(declare-fun m!1339905 () Bool)

(assert (=> b!1451260 m!1339905))

(declare-fun m!1339907 () Bool)

(assert (=> start!124956 m!1339907))

(declare-fun m!1339909 () Bool)

(assert (=> start!124956 m!1339909))

(assert (=> b!1451244 m!1339901))

(assert (=> b!1451244 m!1339901))

(declare-fun m!1339911 () Bool)

(assert (=> b!1451244 m!1339911))

(declare-fun m!1339913 () Bool)

(assert (=> b!1451252 m!1339913))

(declare-fun m!1339915 () Bool)

(assert (=> b!1451252 m!1339915))

(declare-fun m!1339917 () Bool)

(assert (=> b!1451251 m!1339917))

(declare-fun m!1339919 () Bool)

(assert (=> b!1451251 m!1339919))

(declare-fun m!1339921 () Bool)

(assert (=> b!1451251 m!1339921))

(declare-fun m!1339923 () Bool)

(assert (=> b!1451251 m!1339923))

(assert (=> b!1451251 m!1339901))

(assert (=> b!1451253 m!1339917))

(declare-fun m!1339925 () Bool)

(assert (=> b!1451253 m!1339925))

(declare-fun m!1339927 () Bool)

(assert (=> b!1451250 m!1339927))

(declare-fun m!1339929 () Bool)

(assert (=> b!1451247 m!1339929))

(declare-fun m!1339931 () Bool)

(assert (=> b!1451249 m!1339931))

(assert (=> b!1451249 m!1339917))

(assert (=> b!1451249 m!1339921))

(assert (=> b!1451249 m!1339923))

(declare-fun m!1339933 () Bool)

(assert (=> b!1451249 m!1339933))

(assert (=> b!1451249 m!1339901))

(declare-fun m!1339935 () Bool)

(assert (=> b!1451245 m!1339935))

(assert (=> b!1451245 m!1339935))

(declare-fun m!1339937 () Bool)

(assert (=> b!1451245 m!1339937))

(assert (=> b!1451245 m!1339917))

(declare-fun m!1339939 () Bool)

(assert (=> b!1451245 m!1339939))

(assert (=> b!1451256 m!1339901))

(assert (=> b!1451256 m!1339901))

(declare-fun m!1339941 () Bool)

(assert (=> b!1451256 m!1339941))

(declare-fun m!1339943 () Bool)

(assert (=> b!1451246 m!1339943))

(assert (=> b!1451254 m!1339901))

(assert (=> b!1451254 m!1339901))

(declare-fun m!1339945 () Bool)

(assert (=> b!1451254 m!1339945))

(declare-fun m!1339947 () Bool)

(assert (=> b!1451248 m!1339947))

(assert (=> b!1451248 m!1339947))

(declare-fun m!1339949 () Bool)

(assert (=> b!1451248 m!1339949))

(check-sat (not b!1451246) (not b!1451252) (not b!1451249) (not b!1451245) (not b!1451247) (not start!124956) (not b!1451248) (not b!1451244) (not b!1451250) (not b!1451260) (not b!1451256) (not b!1451254))
(check-sat)
