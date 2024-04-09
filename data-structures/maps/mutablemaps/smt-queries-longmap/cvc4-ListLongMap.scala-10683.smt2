; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125282 () Bool)

(assert start!125282)

(declare-fun b!1461307 () Bool)

(declare-fun res!991044 () Bool)

(declare-fun e!821577 () Bool)

(assert (=> b!1461307 (=> (not res!991044) (not e!821577))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11882 0))(
  ( (MissingZero!11882 (index!49919 (_ BitVec 32))) (Found!11882 (index!49920 (_ BitVec 32))) (Intermediate!11882 (undefined!12694 Bool) (index!49921 (_ BitVec 32)) (x!131518 (_ BitVec 32))) (Undefined!11882) (MissingVacant!11882 (index!49922 (_ BitVec 32))) )
))
(declare-fun lt!640059 () SeekEntryResult!11882)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98647 0))(
  ( (array!98648 (arr!47607 (Array (_ BitVec 32) (_ BitVec 64))) (size!48158 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98647)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98647 (_ BitVec 32)) SeekEntryResult!11882)

(assert (=> b!1461307 (= res!991044 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47607 a!2862) j!93) a!2862 mask!2687) lt!640059))))

(declare-fun b!1461308 () Bool)

(declare-fun res!991043 () Bool)

(declare-fun e!821579 () Bool)

(assert (=> b!1461308 (=> (not res!991043) (not e!821579))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1461308 (= res!991043 (and (= (size!48158 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48158 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48158 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1461309 () Bool)

(declare-fun e!821574 () Bool)

(assert (=> b!1461309 (= e!821579 e!821574)))

(declare-fun res!991046 () Bool)

(assert (=> b!1461309 (=> (not res!991046) (not e!821574))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1461309 (= res!991046 (= (select (store (arr!47607 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!640054 () array!98647)

(assert (=> b!1461309 (= lt!640054 (array!98648 (store (arr!47607 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48158 a!2862)))))

(declare-fun b!1461310 () Bool)

(declare-fun res!991053 () Bool)

(declare-fun e!821582 () Bool)

(assert (=> b!1461310 (=> res!991053 e!821582)))

(declare-fun lt!640055 () (_ BitVec 32))

(assert (=> b!1461310 (= res!991053 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640055 (select (arr!47607 a!2862) j!93) a!2862 mask!2687) lt!640059)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!821581 () Bool)

(declare-fun b!1461311 () Bool)

(assert (=> b!1461311 (= e!821581 (or (= (select (arr!47607 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47607 a!2862) intermediateBeforeIndex!19) (select (arr!47607 a!2862) j!93))))))

(declare-fun e!821580 () Bool)

(declare-fun b!1461312 () Bool)

(declare-fun lt!640058 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98647 (_ BitVec 32)) SeekEntryResult!11882)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98647 (_ BitVec 32)) SeekEntryResult!11882)

(assert (=> b!1461312 (= e!821580 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640058 lt!640054 mask!2687) (seekEntryOrOpen!0 lt!640058 lt!640054 mask!2687)))))

(declare-fun b!1461313 () Bool)

(declare-fun res!991055 () Bool)

(assert (=> b!1461313 (=> (not res!991055) (not e!821579))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1461313 (= res!991055 (validKeyInArray!0 (select (arr!47607 a!2862) i!1006)))))

(declare-fun e!821575 () Bool)

(declare-fun lt!640057 () SeekEntryResult!11882)

(declare-fun b!1461314 () Bool)

(assert (=> b!1461314 (= e!821575 (not (= lt!640057 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640055 lt!640058 lt!640054 mask!2687))))))

(declare-fun res!991056 () Bool)

(assert (=> start!125282 (=> (not res!991056) (not e!821579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125282 (= res!991056 (validMask!0 mask!2687))))

(assert (=> start!125282 e!821579))

(assert (=> start!125282 true))

(declare-fun array_inv!36552 (array!98647) Bool)

(assert (=> start!125282 (array_inv!36552 a!2862)))

(declare-fun b!1461315 () Bool)

(declare-fun res!991039 () Bool)

(declare-fun e!821578 () Bool)

(assert (=> b!1461315 (=> (not res!991039) (not e!821578))))

(assert (=> b!1461315 (= res!991039 e!821580)))

(declare-fun c!134647 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1461315 (= c!134647 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1461316 () Bool)

(declare-fun res!991047 () Bool)

(assert (=> b!1461316 (=> (not res!991047) (not e!821579))))

(assert (=> b!1461316 (= res!991047 (validKeyInArray!0 (select (arr!47607 a!2862) j!93)))))

(declare-fun b!1461317 () Bool)

(declare-fun e!821573 () Bool)

(assert (=> b!1461317 (= e!821578 (not e!821573))))

(declare-fun res!991054 () Bool)

(assert (=> b!1461317 (=> res!991054 e!821573)))

(assert (=> b!1461317 (= res!991054 (or (and (= (select (arr!47607 a!2862) index!646) (select (store (arr!47607 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47607 a!2862) index!646) (select (arr!47607 a!2862) j!93))) (= (select (arr!47607 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1461317 e!821581))

(declare-fun res!991049 () Bool)

(assert (=> b!1461317 (=> (not res!991049) (not e!821581))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98647 (_ BitVec 32)) Bool)

(assert (=> b!1461317 (= res!991049 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49208 0))(
  ( (Unit!49209) )
))
(declare-fun lt!640060 () Unit!49208)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98647 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49208)

(assert (=> b!1461317 (= lt!640060 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1461318 () Bool)

(declare-fun res!991050 () Bool)

(assert (=> b!1461318 (=> (not res!991050) (not e!821579))))

(declare-datatypes ((List!34288 0))(
  ( (Nil!34285) (Cons!34284 (h!35634 (_ BitVec 64)) (t!48989 List!34288)) )
))
(declare-fun arrayNoDuplicates!0 (array!98647 (_ BitVec 32) List!34288) Bool)

(assert (=> b!1461318 (= res!991050 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34285))))

(declare-fun b!1461319 () Bool)

(declare-fun res!991051 () Bool)

(assert (=> b!1461319 (=> (not res!991051) (not e!821579))))

(assert (=> b!1461319 (= res!991051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1461320 () Bool)

(assert (=> b!1461320 (= e!821574 e!821577)))

(declare-fun res!991048 () Bool)

(assert (=> b!1461320 (=> (not res!991048) (not e!821577))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461320 (= res!991048 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47607 a!2862) j!93) mask!2687) (select (arr!47607 a!2862) j!93) a!2862 mask!2687) lt!640059))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1461320 (= lt!640059 (Intermediate!11882 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1461321 () Bool)

(assert (=> b!1461321 (= e!821573 e!821582)))

(declare-fun res!991052 () Bool)

(assert (=> b!1461321 (=> res!991052 e!821582)))

(assert (=> b!1461321 (= res!991052 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640055 #b00000000000000000000000000000000) (bvsge lt!640055 (size!48158 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461321 (= lt!640055 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1461322 () Bool)

(assert (=> b!1461322 (= e!821575 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640055 intermediateAfterIndex!19 lt!640058 lt!640054 mask!2687) (seekEntryOrOpen!0 lt!640058 lt!640054 mask!2687))))))

(declare-fun b!1461323 () Bool)

(assert (=> b!1461323 (= e!821582 true)))

(declare-fun lt!640056 () Bool)

(assert (=> b!1461323 (= lt!640056 e!821575)))

(declare-fun c!134648 () Bool)

(assert (=> b!1461323 (= c!134648 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1461324 () Bool)

(declare-fun res!991040 () Bool)

(assert (=> b!1461324 (=> (not res!991040) (not e!821578))))

(assert (=> b!1461324 (= res!991040 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1461325 () Bool)

(assert (=> b!1461325 (= e!821580 (= lt!640057 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640058 lt!640054 mask!2687)))))

(declare-fun b!1461326 () Bool)

(assert (=> b!1461326 (= e!821577 e!821578)))

(declare-fun res!991042 () Bool)

(assert (=> b!1461326 (=> (not res!991042) (not e!821578))))

(assert (=> b!1461326 (= res!991042 (= lt!640057 (Intermediate!11882 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1461326 (= lt!640057 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640058 mask!2687) lt!640058 lt!640054 mask!2687))))

(assert (=> b!1461326 (= lt!640058 (select (store (arr!47607 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1461327 () Bool)

(declare-fun res!991045 () Bool)

(assert (=> b!1461327 (=> (not res!991045) (not e!821581))))

(assert (=> b!1461327 (= res!991045 (= (seekEntryOrOpen!0 (select (arr!47607 a!2862) j!93) a!2862 mask!2687) (Found!11882 j!93)))))

(declare-fun b!1461328 () Bool)

(declare-fun res!991041 () Bool)

(assert (=> b!1461328 (=> (not res!991041) (not e!821579))))

(assert (=> b!1461328 (= res!991041 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48158 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48158 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48158 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!125282 res!991056) b!1461308))

(assert (= (and b!1461308 res!991043) b!1461313))

(assert (= (and b!1461313 res!991055) b!1461316))

(assert (= (and b!1461316 res!991047) b!1461319))

(assert (= (and b!1461319 res!991051) b!1461318))

(assert (= (and b!1461318 res!991050) b!1461328))

(assert (= (and b!1461328 res!991041) b!1461309))

(assert (= (and b!1461309 res!991046) b!1461320))

(assert (= (and b!1461320 res!991048) b!1461307))

(assert (= (and b!1461307 res!991044) b!1461326))

(assert (= (and b!1461326 res!991042) b!1461315))

(assert (= (and b!1461315 c!134647) b!1461325))

(assert (= (and b!1461315 (not c!134647)) b!1461312))

(assert (= (and b!1461315 res!991039) b!1461324))

(assert (= (and b!1461324 res!991040) b!1461317))

(assert (= (and b!1461317 res!991049) b!1461327))

(assert (= (and b!1461327 res!991045) b!1461311))

(assert (= (and b!1461317 (not res!991054)) b!1461321))

(assert (= (and b!1461321 (not res!991052)) b!1461310))

(assert (= (and b!1461310 (not res!991053)) b!1461323))

(assert (= (and b!1461323 c!134648) b!1461314))

(assert (= (and b!1461323 (not c!134648)) b!1461322))

(declare-fun m!1348949 () Bool)

(assert (=> b!1461318 m!1348949))

(declare-fun m!1348951 () Bool)

(assert (=> b!1461309 m!1348951))

(declare-fun m!1348953 () Bool)

(assert (=> b!1461309 m!1348953))

(declare-fun m!1348955 () Bool)

(assert (=> b!1461320 m!1348955))

(assert (=> b!1461320 m!1348955))

(declare-fun m!1348957 () Bool)

(assert (=> b!1461320 m!1348957))

(assert (=> b!1461320 m!1348957))

(assert (=> b!1461320 m!1348955))

(declare-fun m!1348959 () Bool)

(assert (=> b!1461320 m!1348959))

(assert (=> b!1461316 m!1348955))

(assert (=> b!1461316 m!1348955))

(declare-fun m!1348961 () Bool)

(assert (=> b!1461316 m!1348961))

(declare-fun m!1348963 () Bool)

(assert (=> b!1461314 m!1348963))

(declare-fun m!1348965 () Bool)

(assert (=> b!1461325 m!1348965))

(declare-fun m!1348967 () Bool)

(assert (=> b!1461313 m!1348967))

(assert (=> b!1461313 m!1348967))

(declare-fun m!1348969 () Bool)

(assert (=> b!1461313 m!1348969))

(declare-fun m!1348971 () Bool)

(assert (=> start!125282 m!1348971))

(declare-fun m!1348973 () Bool)

(assert (=> start!125282 m!1348973))

(declare-fun m!1348975 () Bool)

(assert (=> b!1461311 m!1348975))

(assert (=> b!1461311 m!1348955))

(assert (=> b!1461307 m!1348955))

(assert (=> b!1461307 m!1348955))

(declare-fun m!1348977 () Bool)

(assert (=> b!1461307 m!1348977))

(declare-fun m!1348979 () Bool)

(assert (=> b!1461326 m!1348979))

(assert (=> b!1461326 m!1348979))

(declare-fun m!1348981 () Bool)

(assert (=> b!1461326 m!1348981))

(assert (=> b!1461326 m!1348951))

(declare-fun m!1348983 () Bool)

(assert (=> b!1461326 m!1348983))

(declare-fun m!1348985 () Bool)

(assert (=> b!1461322 m!1348985))

(declare-fun m!1348987 () Bool)

(assert (=> b!1461322 m!1348987))

(declare-fun m!1348989 () Bool)

(assert (=> b!1461321 m!1348989))

(assert (=> b!1461310 m!1348955))

(assert (=> b!1461310 m!1348955))

(declare-fun m!1348991 () Bool)

(assert (=> b!1461310 m!1348991))

(declare-fun m!1348993 () Bool)

(assert (=> b!1461312 m!1348993))

(assert (=> b!1461312 m!1348987))

(declare-fun m!1348995 () Bool)

(assert (=> b!1461319 m!1348995))

(assert (=> b!1461327 m!1348955))

(assert (=> b!1461327 m!1348955))

(declare-fun m!1348997 () Bool)

(assert (=> b!1461327 m!1348997))

(declare-fun m!1348999 () Bool)

(assert (=> b!1461317 m!1348999))

(assert (=> b!1461317 m!1348951))

(declare-fun m!1349001 () Bool)

(assert (=> b!1461317 m!1349001))

(declare-fun m!1349003 () Bool)

(assert (=> b!1461317 m!1349003))

(declare-fun m!1349005 () Bool)

(assert (=> b!1461317 m!1349005))

(assert (=> b!1461317 m!1348955))

(push 1)

