; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124658 () Bool)

(assert start!124658)

(declare-fun b!1443015 () Bool)

(declare-fun res!975266 () Bool)

(declare-fun e!813236 () Bool)

(assert (=> b!1443015 (=> (not res!975266) (not e!813236))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1443015 (= res!975266 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1443016 () Bool)

(declare-fun res!975268 () Bool)

(declare-fun e!813238 () Bool)

(assert (=> b!1443016 (=> (not res!975268) (not e!813238))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98023 0))(
  ( (array!98024 (arr!47295 (Array (_ BitVec 32) (_ BitVec 64))) (size!47846 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98023)

(assert (=> b!1443016 (= res!975268 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47846 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47846 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47846 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1443017 () Bool)

(declare-fun res!975270 () Bool)

(assert (=> b!1443017 (=> (not res!975270) (not e!813238))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1443017 (= res!975270 (and (= (size!47846 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47846 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47846 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1443018 () Bool)

(declare-fun res!975272 () Bool)

(assert (=> b!1443018 (=> (not res!975272) (not e!813238))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1443018 (= res!975272 (validKeyInArray!0 (select (arr!47295 a!2862) j!93)))))

(declare-fun b!1443019 () Bool)

(declare-fun res!975265 () Bool)

(assert (=> b!1443019 (=> (not res!975265) (not e!813238))))

(declare-datatypes ((List!33976 0))(
  ( (Nil!33973) (Cons!33972 (h!35322 (_ BitVec 64)) (t!48677 List!33976)) )
))
(declare-fun arrayNoDuplicates!0 (array!98023 (_ BitVec 32) List!33976) Bool)

(assert (=> b!1443019 (= res!975265 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33973))))

(declare-fun b!1443020 () Bool)

(declare-fun res!975267 () Bool)

(declare-fun e!813235 () Bool)

(assert (=> b!1443020 (=> (not res!975267) (not e!813235))))

(declare-datatypes ((SeekEntryResult!11570 0))(
  ( (MissingZero!11570 (index!48671 (_ BitVec 32))) (Found!11570 (index!48672 (_ BitVec 32))) (Intermediate!11570 (undefined!12382 Bool) (index!48673 (_ BitVec 32)) (x!130374 (_ BitVec 32))) (Undefined!11570) (MissingVacant!11570 (index!48674 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98023 (_ BitVec 32)) SeekEntryResult!11570)

(assert (=> b!1443020 (= res!975267 (= (seekEntryOrOpen!0 (select (arr!47295 a!2862) j!93) a!2862 mask!2687) (Found!11570 j!93)))))

(declare-fun b!1443021 () Bool)

(declare-fun lt!633694 () SeekEntryResult!11570)

(declare-fun e!813239 () Bool)

(declare-fun lt!633695 () array!98023)

(declare-fun lt!633697 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98023 (_ BitVec 32)) SeekEntryResult!11570)

(assert (=> b!1443021 (= e!813239 (= lt!633694 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633697 lt!633695 mask!2687)))))

(declare-fun b!1443023 () Bool)

(declare-fun res!975274 () Bool)

(assert (=> b!1443023 (=> (not res!975274) (not e!813238))))

(assert (=> b!1443023 (= res!975274 (validKeyInArray!0 (select (arr!47295 a!2862) i!1006)))))

(declare-fun b!1443024 () Bool)

(assert (=> b!1443024 (= e!813235 (or (= (select (arr!47295 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47295 a!2862) intermediateBeforeIndex!19) (select (arr!47295 a!2862) j!93))))))

(declare-fun b!1443025 () Bool)

(declare-fun res!975277 () Bool)

(assert (=> b!1443025 (=> (not res!975277) (not e!813236))))

(assert (=> b!1443025 (= res!975277 e!813239)))

(declare-fun c!133388 () Bool)

(assert (=> b!1443025 (= c!133388 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1443026 () Bool)

(declare-fun e!813237 () Bool)

(assert (=> b!1443026 (= e!813237 e!813236)))

(declare-fun res!975279 () Bool)

(assert (=> b!1443026 (=> (not res!975279) (not e!813236))))

(assert (=> b!1443026 (= res!975279 (= lt!633694 (Intermediate!11570 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1443026 (= lt!633694 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633697 mask!2687) lt!633697 lt!633695 mask!2687))))

(assert (=> b!1443026 (= lt!633697 (select (store (arr!47295 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1443027 () Bool)

(assert (=> b!1443027 (= e!813236 (not true))))

(assert (=> b!1443027 e!813235))

(declare-fun res!975278 () Bool)

(assert (=> b!1443027 (=> (not res!975278) (not e!813235))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98023 (_ BitVec 32)) Bool)

(assert (=> b!1443027 (= res!975278 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48584 0))(
  ( (Unit!48585) )
))
(declare-fun lt!633696 () Unit!48584)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98023 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48584)

(assert (=> b!1443027 (= lt!633696 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1443028 () Bool)

(declare-fun res!975275 () Bool)

(assert (=> b!1443028 (=> (not res!975275) (not e!813238))))

(assert (=> b!1443028 (= res!975275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1443029 () Bool)

(declare-fun res!975271 () Bool)

(assert (=> b!1443029 (=> (not res!975271) (not e!813237))))

(declare-fun lt!633693 () SeekEntryResult!11570)

(assert (=> b!1443029 (= res!975271 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47295 a!2862) j!93) a!2862 mask!2687) lt!633693))))

(declare-fun b!1443030 () Bool)

(declare-fun e!813233 () Bool)

(assert (=> b!1443030 (= e!813233 e!813237)))

(declare-fun res!975273 () Bool)

(assert (=> b!1443030 (=> (not res!975273) (not e!813237))))

(assert (=> b!1443030 (= res!975273 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47295 a!2862) j!93) mask!2687) (select (arr!47295 a!2862) j!93) a!2862 mask!2687) lt!633693))))

(assert (=> b!1443030 (= lt!633693 (Intermediate!11570 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1443031 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98023 (_ BitVec 32)) SeekEntryResult!11570)

(assert (=> b!1443031 (= e!813239 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633697 lt!633695 mask!2687) (seekEntryOrOpen!0 lt!633697 lt!633695 mask!2687)))))

(declare-fun res!975269 () Bool)

(assert (=> start!124658 (=> (not res!975269) (not e!813238))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124658 (= res!975269 (validMask!0 mask!2687))))

(assert (=> start!124658 e!813238))

(assert (=> start!124658 true))

(declare-fun array_inv!36240 (array!98023) Bool)

(assert (=> start!124658 (array_inv!36240 a!2862)))

(declare-fun b!1443022 () Bool)

(assert (=> b!1443022 (= e!813238 e!813233)))

(declare-fun res!975276 () Bool)

(assert (=> b!1443022 (=> (not res!975276) (not e!813233))))

(assert (=> b!1443022 (= res!975276 (= (select (store (arr!47295 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1443022 (= lt!633695 (array!98024 (store (arr!47295 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47846 a!2862)))))

(assert (= (and start!124658 res!975269) b!1443017))

(assert (= (and b!1443017 res!975270) b!1443023))

(assert (= (and b!1443023 res!975274) b!1443018))

(assert (= (and b!1443018 res!975272) b!1443028))

(assert (= (and b!1443028 res!975275) b!1443019))

(assert (= (and b!1443019 res!975265) b!1443016))

(assert (= (and b!1443016 res!975268) b!1443022))

(assert (= (and b!1443022 res!975276) b!1443030))

(assert (= (and b!1443030 res!975273) b!1443029))

(assert (= (and b!1443029 res!975271) b!1443026))

(assert (= (and b!1443026 res!975279) b!1443025))

(assert (= (and b!1443025 c!133388) b!1443021))

(assert (= (and b!1443025 (not c!133388)) b!1443031))

(assert (= (and b!1443025 res!975277) b!1443015))

(assert (= (and b!1443015 res!975266) b!1443027))

(assert (= (and b!1443027 res!975278) b!1443020))

(assert (= (and b!1443020 res!975267) b!1443024))

(declare-fun m!1332173 () Bool)

(assert (=> start!124658 m!1332173))

(declare-fun m!1332175 () Bool)

(assert (=> start!124658 m!1332175))

(declare-fun m!1332177 () Bool)

(assert (=> b!1443023 m!1332177))

(assert (=> b!1443023 m!1332177))

(declare-fun m!1332179 () Bool)

(assert (=> b!1443023 m!1332179))

(declare-fun m!1332181 () Bool)

(assert (=> b!1443029 m!1332181))

(assert (=> b!1443029 m!1332181))

(declare-fun m!1332183 () Bool)

(assert (=> b!1443029 m!1332183))

(assert (=> b!1443018 m!1332181))

(assert (=> b!1443018 m!1332181))

(declare-fun m!1332185 () Bool)

(assert (=> b!1443018 m!1332185))

(declare-fun m!1332187 () Bool)

(assert (=> b!1443019 m!1332187))

(declare-fun m!1332189 () Bool)

(assert (=> b!1443022 m!1332189))

(declare-fun m!1332191 () Bool)

(assert (=> b!1443022 m!1332191))

(assert (=> b!1443030 m!1332181))

(assert (=> b!1443030 m!1332181))

(declare-fun m!1332193 () Bool)

(assert (=> b!1443030 m!1332193))

(assert (=> b!1443030 m!1332193))

(assert (=> b!1443030 m!1332181))

(declare-fun m!1332195 () Bool)

(assert (=> b!1443030 m!1332195))

(assert (=> b!1443020 m!1332181))

(assert (=> b!1443020 m!1332181))

(declare-fun m!1332197 () Bool)

(assert (=> b!1443020 m!1332197))

(declare-fun m!1332199 () Bool)

(assert (=> b!1443028 m!1332199))

(declare-fun m!1332201 () Bool)

(assert (=> b!1443031 m!1332201))

(declare-fun m!1332203 () Bool)

(assert (=> b!1443031 m!1332203))

(declare-fun m!1332205 () Bool)

(assert (=> b!1443026 m!1332205))

(assert (=> b!1443026 m!1332205))

(declare-fun m!1332207 () Bool)

(assert (=> b!1443026 m!1332207))

(assert (=> b!1443026 m!1332189))

(declare-fun m!1332209 () Bool)

(assert (=> b!1443026 m!1332209))

(declare-fun m!1332211 () Bool)

(assert (=> b!1443024 m!1332211))

(assert (=> b!1443024 m!1332181))

(declare-fun m!1332213 () Bool)

(assert (=> b!1443021 m!1332213))

(declare-fun m!1332215 () Bool)

(assert (=> b!1443027 m!1332215))

(declare-fun m!1332217 () Bool)

(assert (=> b!1443027 m!1332217))

(push 1)

