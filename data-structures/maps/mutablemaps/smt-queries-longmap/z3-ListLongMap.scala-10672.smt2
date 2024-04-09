; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125214 () Bool)

(assert start!125214)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11848 0))(
  ( (MissingZero!11848 (index!49783 (_ BitVec 32))) (Found!11848 (index!49784 (_ BitVec 32))) (Intermediate!11848 (undefined!12660 Bool) (index!49785 (_ BitVec 32)) (x!131396 (_ BitVec 32))) (Undefined!11848) (MissingVacant!11848 (index!49786 (_ BitVec 32))) )
))
(declare-fun lt!639338 () SeekEntryResult!11848)

(declare-fun e!820693 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1459234 () Bool)

(declare-fun lt!639340 () (_ BitVec 64))

(declare-datatypes ((array!98579 0))(
  ( (array!98580 (arr!47573 (Array (_ BitVec 32) (_ BitVec 64))) (size!48124 (_ BitVec 32))) )
))
(declare-fun lt!639335 () array!98579)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98579 (_ BitVec 32)) SeekEntryResult!11848)

(assert (=> b!1459234 (= e!820693 (= lt!639338 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639340 lt!639335 mask!2687)))))

(declare-fun b!1459235 () Bool)

(declare-fun e!820692 () Bool)

(declare-fun e!820694 () Bool)

(assert (=> b!1459235 (= e!820692 e!820694)))

(declare-fun res!989313 () Bool)

(assert (=> b!1459235 (=> res!989313 e!820694)))

(declare-fun lt!639339 () (_ BitVec 32))

(declare-fun a!2862 () array!98579)

(assert (=> b!1459235 (= res!989313 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639339 #b00000000000000000000000000000000) (bvsge lt!639339 (size!48124 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459235 (= lt!639339 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!639336 () SeekEntryResult!11848)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98579 (_ BitVec 32)) SeekEntryResult!11848)

(assert (=> b!1459235 (= lt!639336 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639340 lt!639335 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98579 (_ BitVec 32)) SeekEntryResult!11848)

(assert (=> b!1459235 (= lt!639336 (seekEntryOrOpen!0 lt!639340 lt!639335 mask!2687))))

(declare-fun b!1459236 () Bool)

(declare-fun e!820698 () Bool)

(declare-fun e!820696 () Bool)

(assert (=> b!1459236 (= e!820698 e!820696)))

(declare-fun res!989307 () Bool)

(assert (=> b!1459236 (=> (not res!989307) (not e!820696))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1459236 (= res!989307 (= (select (store (arr!47573 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1459236 (= lt!639335 (array!98580 (store (arr!47573 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48124 a!2862)))))

(declare-fun b!1459237 () Bool)

(declare-fun res!989311 () Bool)

(declare-fun e!820697 () Bool)

(assert (=> b!1459237 (=> (not res!989311) (not e!820697))))

(assert (=> b!1459237 (= res!989311 e!820693)))

(declare-fun c!134480 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1459237 (= c!134480 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1459238 () Bool)

(declare-fun res!989304 () Bool)

(assert (=> b!1459238 (=> (not res!989304) (not e!820698))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1459238 (= res!989304 (validKeyInArray!0 (select (arr!47573 a!2862) j!93)))))

(declare-fun b!1459239 () Bool)

(assert (=> b!1459239 (= e!820697 (not e!820692))))

(declare-fun res!989314 () Bool)

(assert (=> b!1459239 (=> res!989314 e!820692)))

(assert (=> b!1459239 (= res!989314 (or (and (= (select (arr!47573 a!2862) index!646) (select (store (arr!47573 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47573 a!2862) index!646) (select (arr!47573 a!2862) j!93))) (= (select (arr!47573 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!639333 () SeekEntryResult!11848)

(assert (=> b!1459239 (and (= lt!639333 (Found!11848 j!93)) (or (= (select (arr!47573 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47573 a!2862) intermediateBeforeIndex!19) (select (arr!47573 a!2862) j!93))) (let ((bdg!53499 (select (store (arr!47573 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47573 a!2862) index!646) bdg!53499) (= (select (arr!47573 a!2862) index!646) (select (arr!47573 a!2862) j!93))) (= (select (arr!47573 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53499 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1459239 (= lt!639333 (seekEntryOrOpen!0 (select (arr!47573 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98579 (_ BitVec 32)) Bool)

(assert (=> b!1459239 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49140 0))(
  ( (Unit!49141) )
))
(declare-fun lt!639337 () Unit!49140)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98579 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49140)

(assert (=> b!1459239 (= lt!639337 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1459240 () Bool)

(declare-fun res!989308 () Bool)

(assert (=> b!1459240 (=> (not res!989308) (not e!820698))))

(assert (=> b!1459240 (= res!989308 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1459241 () Bool)

(declare-fun e!820700 () Bool)

(assert (=> b!1459241 (= e!820696 e!820700)))

(declare-fun res!989318 () Bool)

(assert (=> b!1459241 (=> (not res!989318) (not e!820700))))

(declare-fun lt!639332 () SeekEntryResult!11848)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459241 (= res!989318 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47573 a!2862) j!93) mask!2687) (select (arr!47573 a!2862) j!93) a!2862 mask!2687) lt!639332))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1459241 (= lt!639332 (Intermediate!11848 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1459242 () Bool)

(declare-fun res!989309 () Bool)

(assert (=> b!1459242 (=> (not res!989309) (not e!820698))))

(assert (=> b!1459242 (= res!989309 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48124 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48124 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48124 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1459243 () Bool)

(declare-fun res!989317 () Bool)

(assert (=> b!1459243 (=> res!989317 e!820694)))

(declare-fun e!820695 () Bool)

(assert (=> b!1459243 (= res!989317 e!820695)))

(declare-fun c!134479 () Bool)

(assert (=> b!1459243 (= c!134479 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1459244 () Bool)

(declare-fun res!989310 () Bool)

(assert (=> b!1459244 (=> (not res!989310) (not e!820698))))

(assert (=> b!1459244 (= res!989310 (validKeyInArray!0 (select (arr!47573 a!2862) i!1006)))))

(declare-fun b!1459245 () Bool)

(declare-fun res!989303 () Bool)

(assert (=> b!1459245 (=> (not res!989303) (not e!820697))))

(assert (=> b!1459245 (= res!989303 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1459246 () Bool)

(assert (=> b!1459246 (= e!820695 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639339 intermediateAfterIndex!19 lt!639340 lt!639335 mask!2687) lt!639336)))))

(declare-fun res!989306 () Bool)

(assert (=> start!125214 (=> (not res!989306) (not e!820698))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125214 (= res!989306 (validMask!0 mask!2687))))

(assert (=> start!125214 e!820698))

(assert (=> start!125214 true))

(declare-fun array_inv!36518 (array!98579) Bool)

(assert (=> start!125214 (array_inv!36518 a!2862)))

(declare-fun b!1459247 () Bool)

(declare-fun res!989319 () Bool)

(assert (=> b!1459247 (=> (not res!989319) (not e!820700))))

(assert (=> b!1459247 (= res!989319 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47573 a!2862) j!93) a!2862 mask!2687) lt!639332))))

(declare-fun b!1459248 () Bool)

(assert (=> b!1459248 (= e!820693 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639340 lt!639335 mask!2687) (seekEntryOrOpen!0 lt!639340 lt!639335 mask!2687)))))

(declare-fun b!1459249 () Bool)

(declare-fun res!989315 () Bool)

(assert (=> b!1459249 (=> (not res!989315) (not e!820698))))

(assert (=> b!1459249 (= res!989315 (and (= (size!48124 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48124 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48124 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1459250 () Bool)

(declare-fun res!989305 () Bool)

(assert (=> b!1459250 (=> res!989305 e!820694)))

(assert (=> b!1459250 (= res!989305 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1459251 () Bool)

(assert (=> b!1459251 (= e!820700 e!820697)))

(declare-fun res!989302 () Bool)

(assert (=> b!1459251 (=> (not res!989302) (not e!820697))))

(assert (=> b!1459251 (= res!989302 (= lt!639338 (Intermediate!11848 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1459251 (= lt!639338 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639340 mask!2687) lt!639340 lt!639335 mask!2687))))

(assert (=> b!1459251 (= lt!639340 (select (store (arr!47573 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1459252 () Bool)

(assert (=> b!1459252 (= e!820695 (not (= lt!639338 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639339 lt!639340 lt!639335 mask!2687))))))

(declare-fun b!1459253 () Bool)

(declare-fun res!989312 () Bool)

(assert (=> b!1459253 (=> res!989312 e!820694)))

(assert (=> b!1459253 (= res!989312 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639339 (select (arr!47573 a!2862) j!93) a!2862 mask!2687) lt!639332)))))

(declare-fun b!1459254 () Bool)

(assert (=> b!1459254 (= e!820694 true)))

(assert (=> b!1459254 (= lt!639333 lt!639336)))

(declare-fun lt!639334 () Unit!49140)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98579 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49140)

(assert (=> b!1459254 (= lt!639334 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639339 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1459255 () Bool)

(declare-fun res!989316 () Bool)

(assert (=> b!1459255 (=> (not res!989316) (not e!820698))))

(declare-datatypes ((List!34254 0))(
  ( (Nil!34251) (Cons!34250 (h!35600 (_ BitVec 64)) (t!48955 List!34254)) )
))
(declare-fun arrayNoDuplicates!0 (array!98579 (_ BitVec 32) List!34254) Bool)

(assert (=> b!1459255 (= res!989316 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34251))))

(assert (= (and start!125214 res!989306) b!1459249))

(assert (= (and b!1459249 res!989315) b!1459244))

(assert (= (and b!1459244 res!989310) b!1459238))

(assert (= (and b!1459238 res!989304) b!1459240))

(assert (= (and b!1459240 res!989308) b!1459255))

(assert (= (and b!1459255 res!989316) b!1459242))

(assert (= (and b!1459242 res!989309) b!1459236))

(assert (= (and b!1459236 res!989307) b!1459241))

(assert (= (and b!1459241 res!989318) b!1459247))

(assert (= (and b!1459247 res!989319) b!1459251))

(assert (= (and b!1459251 res!989302) b!1459237))

(assert (= (and b!1459237 c!134480) b!1459234))

(assert (= (and b!1459237 (not c!134480)) b!1459248))

(assert (= (and b!1459237 res!989311) b!1459245))

(assert (= (and b!1459245 res!989303) b!1459239))

(assert (= (and b!1459239 (not res!989314)) b!1459235))

(assert (= (and b!1459235 (not res!989313)) b!1459253))

(assert (= (and b!1459253 (not res!989312)) b!1459243))

(assert (= (and b!1459243 c!134479) b!1459252))

(assert (= (and b!1459243 (not c!134479)) b!1459246))

(assert (= (and b!1459243 (not res!989317)) b!1459250))

(assert (= (and b!1459250 (not res!989305)) b!1459254))

(declare-fun m!1347063 () Bool)

(assert (=> b!1459236 m!1347063))

(declare-fun m!1347065 () Bool)

(assert (=> b!1459236 m!1347065))

(declare-fun m!1347067 () Bool)

(assert (=> b!1459252 m!1347067))

(declare-fun m!1347069 () Bool)

(assert (=> b!1459241 m!1347069))

(assert (=> b!1459241 m!1347069))

(declare-fun m!1347071 () Bool)

(assert (=> b!1459241 m!1347071))

(assert (=> b!1459241 m!1347071))

(assert (=> b!1459241 m!1347069))

(declare-fun m!1347073 () Bool)

(assert (=> b!1459241 m!1347073))

(declare-fun m!1347075 () Bool)

(assert (=> b!1459244 m!1347075))

(assert (=> b!1459244 m!1347075))

(declare-fun m!1347077 () Bool)

(assert (=> b!1459244 m!1347077))

(declare-fun m!1347079 () Bool)

(assert (=> b!1459235 m!1347079))

(declare-fun m!1347081 () Bool)

(assert (=> b!1459235 m!1347081))

(declare-fun m!1347083 () Bool)

(assert (=> b!1459235 m!1347083))

(declare-fun m!1347085 () Bool)

(assert (=> b!1459240 m!1347085))

(declare-fun m!1347087 () Bool)

(assert (=> b!1459254 m!1347087))

(declare-fun m!1347089 () Bool)

(assert (=> b!1459234 m!1347089))

(assert (=> b!1459238 m!1347069))

(assert (=> b!1459238 m!1347069))

(declare-fun m!1347091 () Bool)

(assert (=> b!1459238 m!1347091))

(declare-fun m!1347093 () Bool)

(assert (=> b!1459239 m!1347093))

(assert (=> b!1459239 m!1347063))

(declare-fun m!1347095 () Bool)

(assert (=> b!1459239 m!1347095))

(declare-fun m!1347097 () Bool)

(assert (=> b!1459239 m!1347097))

(declare-fun m!1347099 () Bool)

(assert (=> b!1459239 m!1347099))

(assert (=> b!1459239 m!1347069))

(declare-fun m!1347101 () Bool)

(assert (=> b!1459239 m!1347101))

(declare-fun m!1347103 () Bool)

(assert (=> b!1459239 m!1347103))

(assert (=> b!1459239 m!1347069))

(assert (=> b!1459253 m!1347069))

(assert (=> b!1459253 m!1347069))

(declare-fun m!1347105 () Bool)

(assert (=> b!1459253 m!1347105))

(assert (=> b!1459247 m!1347069))

(assert (=> b!1459247 m!1347069))

(declare-fun m!1347107 () Bool)

(assert (=> b!1459247 m!1347107))

(declare-fun m!1347109 () Bool)

(assert (=> b!1459251 m!1347109))

(assert (=> b!1459251 m!1347109))

(declare-fun m!1347111 () Bool)

(assert (=> b!1459251 m!1347111))

(assert (=> b!1459251 m!1347063))

(declare-fun m!1347113 () Bool)

(assert (=> b!1459251 m!1347113))

(declare-fun m!1347115 () Bool)

(assert (=> b!1459255 m!1347115))

(assert (=> b!1459248 m!1347081))

(assert (=> b!1459248 m!1347083))

(declare-fun m!1347117 () Bool)

(assert (=> b!1459246 m!1347117))

(declare-fun m!1347119 () Bool)

(assert (=> start!125214 m!1347119))

(declare-fun m!1347121 () Bool)

(assert (=> start!125214 m!1347121))

(check-sat (not b!1459254) (not b!1459234) (not b!1459251) (not b!1459238) (not b!1459235) (not b!1459252) (not b!1459239) (not b!1459255) (not b!1459246) (not b!1459253) (not b!1459241) (not b!1459244) (not b!1459247) (not start!125214) (not b!1459248) (not b!1459240))
(check-sat)
