; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127408 () Bool)

(assert start!127408)

(declare-fun b!1497034 () Bool)

(declare-fun e!838428 () Bool)

(declare-fun e!838425 () Bool)

(assert (=> b!1497034 (= e!838428 e!838425)))

(declare-fun res!1018351 () Bool)

(assert (=> b!1497034 (=> (not res!1018351) (not e!838425))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99783 0))(
  ( (array!99784 (arr!48151 (Array (_ BitVec 32) (_ BitVec 64))) (size!48702 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99783)

(assert (=> b!1497034 (= res!1018351 (= (select (store (arr!48151 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!652274 () array!99783)

(assert (=> b!1497034 (= lt!652274 (array!99784 (store (arr!48151 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48702 a!2862)))))

(declare-fun b!1497035 () Bool)

(declare-fun e!838429 () Bool)

(assert (=> b!1497035 (= e!838425 e!838429)))

(declare-fun res!1018346 () Bool)

(assert (=> b!1497035 (=> (not res!1018346) (not e!838429))))

(declare-datatypes ((SeekEntryResult!12414 0))(
  ( (MissingZero!12414 (index!52047 (_ BitVec 32))) (Found!12414 (index!52048 (_ BitVec 32))) (Intermediate!12414 (undefined!13226 Bool) (index!52049 (_ BitVec 32)) (x!133677 (_ BitVec 32))) (Undefined!12414) (MissingVacant!12414 (index!52050 (_ BitVec 32))) )
))
(declare-fun lt!652275 () SeekEntryResult!12414)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99783 (_ BitVec 32)) SeekEntryResult!12414)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1497035 (= res!1018346 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48151 a!2862) j!93) mask!2687) (select (arr!48151 a!2862) j!93) a!2862 mask!2687) lt!652275))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1497035 (= lt!652275 (Intermediate!12414 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1497036 () Bool)

(declare-fun e!838430 () Bool)

(assert (=> b!1497036 (= e!838429 e!838430)))

(declare-fun res!1018347 () Bool)

(assert (=> b!1497036 (=> (not res!1018347) (not e!838430))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!652271 () SeekEntryResult!12414)

(assert (=> b!1497036 (= res!1018347 (= lt!652271 (Intermediate!12414 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!652272 () (_ BitVec 64))

(assert (=> b!1497036 (= lt!652271 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!652272 mask!2687) lt!652272 lt!652274 mask!2687))))

(assert (=> b!1497036 (= lt!652272 (select (store (arr!48151 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!838427 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1497037 () Bool)

(assert (=> b!1497037 (= e!838427 (= lt!652271 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!652272 lt!652274 mask!2687)))))

(declare-fun b!1497038 () Bool)

(declare-fun res!1018338 () Bool)

(assert (=> b!1497038 (=> (not res!1018338) (not e!838428))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497038 (= res!1018338 (validKeyInArray!0 (select (arr!48151 a!2862) j!93)))))

(declare-fun b!1497039 () Bool)

(declare-fun lt!652270 () (_ BitVec 32))

(declare-fun e!838426 () Bool)

(assert (=> b!1497039 (= e!838426 (not (= lt!652271 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652270 lt!652272 lt!652274 mask!2687))))))

(declare-fun b!1497040 () Bool)

(declare-fun res!1018345 () Bool)

(assert (=> b!1497040 (=> (not res!1018345) (not e!838430))))

(assert (=> b!1497040 (= res!1018345 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1497041 () Bool)

(declare-fun res!1018340 () Bool)

(declare-fun e!838423 () Bool)

(assert (=> b!1497041 (=> res!1018340 e!838423)))

(assert (=> b!1497041 (= res!1018340 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652270 (select (arr!48151 a!2862) j!93) a!2862 mask!2687) lt!652275)))))

(declare-fun res!1018350 () Bool)

(assert (=> start!127408 (=> (not res!1018350) (not e!838428))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127408 (= res!1018350 (validMask!0 mask!2687))))

(assert (=> start!127408 e!838428))

(assert (=> start!127408 true))

(declare-fun array_inv!37096 (array!99783) Bool)

(assert (=> start!127408 (array_inv!37096 a!2862)))

(declare-fun b!1497042 () Bool)

(declare-fun res!1018337 () Bool)

(assert (=> b!1497042 (=> (not res!1018337) (not e!838428))))

(declare-datatypes ((List!34832 0))(
  ( (Nil!34829) (Cons!34828 (h!36226 (_ BitVec 64)) (t!49533 List!34832)) )
))
(declare-fun arrayNoDuplicates!0 (array!99783 (_ BitVec 32) List!34832) Bool)

(assert (=> b!1497042 (= res!1018337 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34829))))

(declare-fun b!1497043 () Bool)

(declare-fun res!1018342 () Bool)

(assert (=> b!1497043 (=> (not res!1018342) (not e!838428))))

(assert (=> b!1497043 (= res!1018342 (and (= (size!48702 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48702 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48702 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1497044 () Bool)

(assert (=> b!1497044 (= e!838423 true)))

(declare-fun lt!652273 () SeekEntryResult!12414)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99783 (_ BitVec 32)) SeekEntryResult!12414)

(assert (=> b!1497044 (= lt!652273 (seekEntryOrOpen!0 lt!652272 lt!652274 mask!2687))))

(declare-datatypes ((Unit!50116 0))(
  ( (Unit!50117) )
))
(declare-fun lt!652269 () Unit!50116)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99783 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50116)

(assert (=> b!1497044 (= lt!652269 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!652270 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1497045 () Bool)

(declare-fun res!1018341 () Bool)

(assert (=> b!1497045 (=> (not res!1018341) (not e!838430))))

(assert (=> b!1497045 (= res!1018341 e!838427)))

(declare-fun c!138887 () Bool)

(assert (=> b!1497045 (= c!138887 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1497046 () Bool)

(declare-fun e!838422 () Bool)

(assert (=> b!1497046 (= e!838430 (not e!838422))))

(declare-fun res!1018353 () Bool)

(assert (=> b!1497046 (=> res!1018353 e!838422)))

(assert (=> b!1497046 (= res!1018353 (or (and (= (select (arr!48151 a!2862) index!646) (select (store (arr!48151 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48151 a!2862) index!646) (select (arr!48151 a!2862) j!93))) (= (select (arr!48151 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1497046 (and (= lt!652273 (Found!12414 j!93)) (or (= (select (arr!48151 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48151 a!2862) intermediateBeforeIndex!19) (select (arr!48151 a!2862) j!93))))))

(assert (=> b!1497046 (= lt!652273 (seekEntryOrOpen!0 (select (arr!48151 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99783 (_ BitVec 32)) Bool)

(assert (=> b!1497046 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!652276 () Unit!50116)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99783 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50116)

(assert (=> b!1497046 (= lt!652276 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1497047 () Bool)

(declare-fun res!1018344 () Bool)

(assert (=> b!1497047 (=> (not res!1018344) (not e!838428))))

(assert (=> b!1497047 (= res!1018344 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48702 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48702 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48702 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1497048 () Bool)

(assert (=> b!1497048 (= e!838422 e!838423)))

(declare-fun res!1018348 () Bool)

(assert (=> b!1497048 (=> res!1018348 e!838423)))

(assert (=> b!1497048 (= res!1018348 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!652270 #b00000000000000000000000000000000) (bvsge lt!652270 (size!48702 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1497048 (= lt!652270 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1497049 () Bool)

(declare-fun res!1018343 () Bool)

(assert (=> b!1497049 (=> res!1018343 e!838423)))

(assert (=> b!1497049 (= res!1018343 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1497050 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99783 (_ BitVec 32)) SeekEntryResult!12414)

(assert (=> b!1497050 (= e!838427 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!652272 lt!652274 mask!2687) (seekEntryOrOpen!0 lt!652272 lt!652274 mask!2687)))))

(declare-fun b!1497051 () Bool)

(declare-fun res!1018349 () Bool)

(assert (=> b!1497051 (=> (not res!1018349) (not e!838428))))

(assert (=> b!1497051 (= res!1018349 (validKeyInArray!0 (select (arr!48151 a!2862) i!1006)))))

(declare-fun b!1497052 () Bool)

(declare-fun res!1018336 () Bool)

(assert (=> b!1497052 (=> (not res!1018336) (not e!838429))))

(assert (=> b!1497052 (= res!1018336 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48151 a!2862) j!93) a!2862 mask!2687) lt!652275))))

(declare-fun b!1497053 () Bool)

(assert (=> b!1497053 (= e!838426 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652270 intermediateAfterIndex!19 lt!652272 lt!652274 mask!2687) (seekEntryOrOpen!0 lt!652272 lt!652274 mask!2687))))))

(declare-fun b!1497054 () Bool)

(declare-fun res!1018339 () Bool)

(assert (=> b!1497054 (=> (not res!1018339) (not e!838428))))

(assert (=> b!1497054 (= res!1018339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1497055 () Bool)

(declare-fun res!1018352 () Bool)

(assert (=> b!1497055 (=> res!1018352 e!838423)))

(assert (=> b!1497055 (= res!1018352 e!838426)))

(declare-fun c!138886 () Bool)

(assert (=> b!1497055 (= c!138886 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(assert (= (and start!127408 res!1018350) b!1497043))

(assert (= (and b!1497043 res!1018342) b!1497051))

(assert (= (and b!1497051 res!1018349) b!1497038))

(assert (= (and b!1497038 res!1018338) b!1497054))

(assert (= (and b!1497054 res!1018339) b!1497042))

(assert (= (and b!1497042 res!1018337) b!1497047))

(assert (= (and b!1497047 res!1018344) b!1497034))

(assert (= (and b!1497034 res!1018351) b!1497035))

(assert (= (and b!1497035 res!1018346) b!1497052))

(assert (= (and b!1497052 res!1018336) b!1497036))

(assert (= (and b!1497036 res!1018347) b!1497045))

(assert (= (and b!1497045 c!138887) b!1497037))

(assert (= (and b!1497045 (not c!138887)) b!1497050))

(assert (= (and b!1497045 res!1018341) b!1497040))

(assert (= (and b!1497040 res!1018345) b!1497046))

(assert (= (and b!1497046 (not res!1018353)) b!1497048))

(assert (= (and b!1497048 (not res!1018348)) b!1497041))

(assert (= (and b!1497041 (not res!1018340)) b!1497055))

(assert (= (and b!1497055 c!138886) b!1497039))

(assert (= (and b!1497055 (not c!138886)) b!1497053))

(assert (= (and b!1497055 (not res!1018352)) b!1497049))

(assert (= (and b!1497049 (not res!1018343)) b!1497044))

(declare-fun m!1380201 () Bool)

(assert (=> b!1497041 m!1380201))

(assert (=> b!1497041 m!1380201))

(declare-fun m!1380203 () Bool)

(assert (=> b!1497041 m!1380203))

(declare-fun m!1380205 () Bool)

(assert (=> b!1497037 m!1380205))

(declare-fun m!1380207 () Bool)

(assert (=> start!127408 m!1380207))

(declare-fun m!1380209 () Bool)

(assert (=> start!127408 m!1380209))

(declare-fun m!1380211 () Bool)

(assert (=> b!1497044 m!1380211))

(declare-fun m!1380213 () Bool)

(assert (=> b!1497044 m!1380213))

(declare-fun m!1380215 () Bool)

(assert (=> b!1497034 m!1380215))

(declare-fun m!1380217 () Bool)

(assert (=> b!1497034 m!1380217))

(declare-fun m!1380219 () Bool)

(assert (=> b!1497046 m!1380219))

(assert (=> b!1497046 m!1380215))

(declare-fun m!1380221 () Bool)

(assert (=> b!1497046 m!1380221))

(declare-fun m!1380223 () Bool)

(assert (=> b!1497046 m!1380223))

(declare-fun m!1380225 () Bool)

(assert (=> b!1497046 m!1380225))

(assert (=> b!1497046 m!1380201))

(declare-fun m!1380227 () Bool)

(assert (=> b!1497046 m!1380227))

(declare-fun m!1380229 () Bool)

(assert (=> b!1497046 m!1380229))

(assert (=> b!1497046 m!1380201))

(declare-fun m!1380231 () Bool)

(assert (=> b!1497039 m!1380231))

(assert (=> b!1497038 m!1380201))

(assert (=> b!1497038 m!1380201))

(declare-fun m!1380233 () Bool)

(assert (=> b!1497038 m!1380233))

(assert (=> b!1497052 m!1380201))

(assert (=> b!1497052 m!1380201))

(declare-fun m!1380235 () Bool)

(assert (=> b!1497052 m!1380235))

(declare-fun m!1380237 () Bool)

(assert (=> b!1497053 m!1380237))

(assert (=> b!1497053 m!1380211))

(declare-fun m!1380239 () Bool)

(assert (=> b!1497048 m!1380239))

(declare-fun m!1380241 () Bool)

(assert (=> b!1497051 m!1380241))

(assert (=> b!1497051 m!1380241))

(declare-fun m!1380243 () Bool)

(assert (=> b!1497051 m!1380243))

(declare-fun m!1380245 () Bool)

(assert (=> b!1497036 m!1380245))

(assert (=> b!1497036 m!1380245))

(declare-fun m!1380247 () Bool)

(assert (=> b!1497036 m!1380247))

(assert (=> b!1497036 m!1380215))

(declare-fun m!1380249 () Bool)

(assert (=> b!1497036 m!1380249))

(assert (=> b!1497035 m!1380201))

(assert (=> b!1497035 m!1380201))

(declare-fun m!1380251 () Bool)

(assert (=> b!1497035 m!1380251))

(assert (=> b!1497035 m!1380251))

(assert (=> b!1497035 m!1380201))

(declare-fun m!1380253 () Bool)

(assert (=> b!1497035 m!1380253))

(declare-fun m!1380255 () Bool)

(assert (=> b!1497042 m!1380255))

(declare-fun m!1380257 () Bool)

(assert (=> b!1497054 m!1380257))

(declare-fun m!1380259 () Bool)

(assert (=> b!1497050 m!1380259))

(assert (=> b!1497050 m!1380211))

(push 1)

