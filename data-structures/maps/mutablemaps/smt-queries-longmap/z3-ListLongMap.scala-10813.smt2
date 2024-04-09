; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126570 () Bool)

(assert start!126570)

(declare-fun b!1484336 () Bool)

(declare-fun e!832250 () Bool)

(declare-fun e!832259 () Bool)

(assert (=> b!1484336 (= e!832250 e!832259)))

(declare-fun res!1009233 () Bool)

(assert (=> b!1484336 (=> (not res!1009233) (not e!832259))))

(declare-datatypes ((array!99449 0))(
  ( (array!99450 (arr!47996 (Array (_ BitVec 32) (_ BitVec 64))) (size!48547 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99449)

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12259 0))(
  ( (MissingZero!12259 (index!51427 (_ BitVec 32))) (Found!12259 (index!51428 (_ BitVec 32))) (Intermediate!12259 (undefined!13071 Bool) (index!51429 (_ BitVec 32)) (x!133010 (_ BitVec 32))) (Undefined!12259) (MissingVacant!12259 (index!51430 (_ BitVec 32))) )
))
(declare-fun lt!647694 () SeekEntryResult!12259)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99449 (_ BitVec 32)) SeekEntryResult!12259)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484336 (= res!1009233 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47996 a!2862) j!93) mask!2687) (select (arr!47996 a!2862) j!93) a!2862 mask!2687) lt!647694))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1484336 (= lt!647694 (Intermediate!12259 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1484337 () Bool)

(declare-fun res!1009236 () Bool)

(declare-fun e!832257 () Bool)

(assert (=> b!1484337 (=> (not res!1009236) (not e!832257))))

(declare-datatypes ((List!34677 0))(
  ( (Nil!34674) (Cons!34673 (h!36047 (_ BitVec 64)) (t!49378 List!34677)) )
))
(declare-fun arrayNoDuplicates!0 (array!99449 (_ BitVec 32) List!34677) Bool)

(assert (=> b!1484337 (= res!1009236 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34674))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!832252 () Bool)

(declare-fun lt!647698 () SeekEntryResult!12259)

(declare-fun b!1484338 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!647692 () array!99449)

(declare-fun lt!647696 () (_ BitVec 64))

(assert (=> b!1484338 (= e!832252 (= lt!647698 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647696 lt!647692 mask!2687)))))

(declare-fun e!832251 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1484339 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99449 (_ BitVec 32)) SeekEntryResult!12259)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99449 (_ BitVec 32)) SeekEntryResult!12259)

(assert (=> b!1484339 (= e!832251 (= (seekEntryOrOpen!0 lt!647696 lt!647692 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647696 lt!647692 mask!2687)))))

(declare-fun b!1484340 () Bool)

(declare-fun e!832256 () Bool)

(assert (=> b!1484340 (= e!832259 e!832256)))

(declare-fun res!1009232 () Bool)

(assert (=> b!1484340 (=> (not res!1009232) (not e!832256))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1484340 (= res!1009232 (= lt!647698 (Intermediate!12259 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1484340 (= lt!647698 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647696 mask!2687) lt!647696 lt!647692 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1484340 (= lt!647696 (select (store (arr!47996 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1484341 () Bool)

(declare-fun e!832254 () Bool)

(assert (=> b!1484341 (= e!832256 (not e!832254))))

(declare-fun res!1009225 () Bool)

(assert (=> b!1484341 (=> res!1009225 e!832254)))

(assert (=> b!1484341 (= res!1009225 (or (and (= (select (arr!47996 a!2862) index!646) (select (store (arr!47996 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47996 a!2862) index!646) (select (arr!47996 a!2862) j!93))) (= (select (arr!47996 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!832255 () Bool)

(assert (=> b!1484341 e!832255))

(declare-fun res!1009235 () Bool)

(assert (=> b!1484341 (=> (not res!1009235) (not e!832255))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99449 (_ BitVec 32)) Bool)

(assert (=> b!1484341 (= res!1009235 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49806 0))(
  ( (Unit!49807) )
))
(declare-fun lt!647695 () Unit!49806)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99449 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49806)

(assert (=> b!1484341 (= lt!647695 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1484342 () Bool)

(declare-fun res!1009234 () Bool)

(assert (=> b!1484342 (=> (not res!1009234) (not e!832257))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1484342 (= res!1009234 (validKeyInArray!0 (select (arr!47996 a!2862) i!1006)))))

(declare-fun b!1484343 () Bool)

(declare-fun res!1009237 () Bool)

(assert (=> b!1484343 (=> (not res!1009237) (not e!832257))))

(assert (=> b!1484343 (= res!1009237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1484344 () Bool)

(assert (=> b!1484344 (= e!832257 e!832250)))

(declare-fun res!1009226 () Bool)

(assert (=> b!1484344 (=> (not res!1009226) (not e!832250))))

(assert (=> b!1484344 (= res!1009226 (= (select (store (arr!47996 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1484344 (= lt!647692 (array!99450 (store (arr!47996 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48547 a!2862)))))

(declare-fun b!1484345 () Bool)

(declare-fun res!1009242 () Bool)

(assert (=> b!1484345 (=> (not res!1009242) (not e!832257))))

(assert (=> b!1484345 (= res!1009242 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48547 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48547 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48547 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1484346 () Bool)

(assert (=> b!1484346 (= e!832252 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647696 lt!647692 mask!2687) (seekEntryOrOpen!0 lt!647696 lt!647692 mask!2687)))))

(declare-fun b!1484347 () Bool)

(declare-fun res!1009238 () Bool)

(assert (=> b!1484347 (=> (not res!1009238) (not e!832255))))

(assert (=> b!1484347 (= res!1009238 (= (seekEntryOrOpen!0 (select (arr!47996 a!2862) j!93) a!2862 mask!2687) (Found!12259 j!93)))))

(declare-fun res!1009227 () Bool)

(assert (=> start!126570 (=> (not res!1009227) (not e!832257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126570 (= res!1009227 (validMask!0 mask!2687))))

(assert (=> start!126570 e!832257))

(assert (=> start!126570 true))

(declare-fun array_inv!36941 (array!99449) Bool)

(assert (=> start!126570 (array_inv!36941 a!2862)))

(declare-fun b!1484348 () Bool)

(declare-fun res!1009231 () Bool)

(assert (=> b!1484348 (=> (not res!1009231) (not e!832256))))

(assert (=> b!1484348 (= res!1009231 e!832252)))

(declare-fun c!137081 () Bool)

(assert (=> b!1484348 (= c!137081 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1484349 () Bool)

(declare-fun e!832253 () Bool)

(assert (=> b!1484349 (= e!832253 e!832251)))

(declare-fun res!1009228 () Bool)

(assert (=> b!1484349 (=> (not res!1009228) (not e!832251))))

(declare-fun lt!647697 () (_ BitVec 64))

(assert (=> b!1484349 (= res!1009228 (and (= index!646 intermediateAfterIndex!19) (= lt!647697 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1484350 () Bool)

(declare-fun res!1009240 () Bool)

(assert (=> b!1484350 (=> (not res!1009240) (not e!832255))))

(assert (=> b!1484350 (= res!1009240 (or (= (select (arr!47996 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47996 a!2862) intermediateBeforeIndex!19) (select (arr!47996 a!2862) j!93))))))

(declare-fun b!1484351 () Bool)

(declare-fun res!1009241 () Bool)

(assert (=> b!1484351 (=> (not res!1009241) (not e!832256))))

(assert (=> b!1484351 (= res!1009241 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1484352 () Bool)

(declare-fun res!1009229 () Bool)

(assert (=> b!1484352 (=> (not res!1009229) (not e!832257))))

(assert (=> b!1484352 (= res!1009229 (and (= (size!48547 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48547 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48547 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1484353 () Bool)

(assert (=> b!1484353 (= e!832254 true)))

(declare-fun lt!647693 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484353 (= lt!647693 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1484354 () Bool)

(assert (=> b!1484354 (= e!832255 e!832253)))

(declare-fun res!1009224 () Bool)

(assert (=> b!1484354 (=> res!1009224 e!832253)))

(assert (=> b!1484354 (= res!1009224 (or (and (= (select (arr!47996 a!2862) index!646) lt!647697) (= (select (arr!47996 a!2862) index!646) (select (arr!47996 a!2862) j!93))) (= (select (arr!47996 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484354 (= lt!647697 (select (store (arr!47996 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1484355 () Bool)

(declare-fun res!1009239 () Bool)

(assert (=> b!1484355 (=> (not res!1009239) (not e!832257))))

(assert (=> b!1484355 (= res!1009239 (validKeyInArray!0 (select (arr!47996 a!2862) j!93)))))

(declare-fun b!1484356 () Bool)

(declare-fun res!1009230 () Bool)

(assert (=> b!1484356 (=> (not res!1009230) (not e!832259))))

(assert (=> b!1484356 (= res!1009230 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47996 a!2862) j!93) a!2862 mask!2687) lt!647694))))

(assert (= (and start!126570 res!1009227) b!1484352))

(assert (= (and b!1484352 res!1009229) b!1484342))

(assert (= (and b!1484342 res!1009234) b!1484355))

(assert (= (and b!1484355 res!1009239) b!1484343))

(assert (= (and b!1484343 res!1009237) b!1484337))

(assert (= (and b!1484337 res!1009236) b!1484345))

(assert (= (and b!1484345 res!1009242) b!1484344))

(assert (= (and b!1484344 res!1009226) b!1484336))

(assert (= (and b!1484336 res!1009233) b!1484356))

(assert (= (and b!1484356 res!1009230) b!1484340))

(assert (= (and b!1484340 res!1009232) b!1484348))

(assert (= (and b!1484348 c!137081) b!1484338))

(assert (= (and b!1484348 (not c!137081)) b!1484346))

(assert (= (and b!1484348 res!1009231) b!1484351))

(assert (= (and b!1484351 res!1009241) b!1484341))

(assert (= (and b!1484341 res!1009235) b!1484347))

(assert (= (and b!1484347 res!1009238) b!1484350))

(assert (= (and b!1484350 res!1009240) b!1484354))

(assert (= (and b!1484354 (not res!1009224)) b!1484349))

(assert (= (and b!1484349 res!1009228) b!1484339))

(assert (= (and b!1484341 (not res!1009225)) b!1484353))

(declare-fun m!1369705 () Bool)

(assert (=> b!1484354 m!1369705))

(declare-fun m!1369707 () Bool)

(assert (=> b!1484354 m!1369707))

(declare-fun m!1369709 () Bool)

(assert (=> b!1484354 m!1369709))

(declare-fun m!1369711 () Bool)

(assert (=> b!1484354 m!1369711))

(declare-fun m!1369713 () Bool)

(assert (=> b!1484339 m!1369713))

(declare-fun m!1369715 () Bool)

(assert (=> b!1484339 m!1369715))

(declare-fun m!1369717 () Bool)

(assert (=> b!1484342 m!1369717))

(assert (=> b!1484342 m!1369717))

(declare-fun m!1369719 () Bool)

(assert (=> b!1484342 m!1369719))

(declare-fun m!1369721 () Bool)

(assert (=> b!1484338 m!1369721))

(assert (=> b!1484346 m!1369715))

(assert (=> b!1484346 m!1369713))

(declare-fun m!1369723 () Bool)

(assert (=> b!1484350 m!1369723))

(assert (=> b!1484350 m!1369707))

(assert (=> b!1484344 m!1369709))

(declare-fun m!1369725 () Bool)

(assert (=> b!1484344 m!1369725))

(declare-fun m!1369727 () Bool)

(assert (=> b!1484337 m!1369727))

(declare-fun m!1369729 () Bool)

(assert (=> b!1484341 m!1369729))

(assert (=> b!1484341 m!1369709))

(assert (=> b!1484341 m!1369711))

(assert (=> b!1484341 m!1369705))

(declare-fun m!1369731 () Bool)

(assert (=> b!1484341 m!1369731))

(assert (=> b!1484341 m!1369707))

(declare-fun m!1369733 () Bool)

(assert (=> b!1484353 m!1369733))

(assert (=> b!1484356 m!1369707))

(assert (=> b!1484356 m!1369707))

(declare-fun m!1369735 () Bool)

(assert (=> b!1484356 m!1369735))

(assert (=> b!1484336 m!1369707))

(assert (=> b!1484336 m!1369707))

(declare-fun m!1369737 () Bool)

(assert (=> b!1484336 m!1369737))

(assert (=> b!1484336 m!1369737))

(assert (=> b!1484336 m!1369707))

(declare-fun m!1369739 () Bool)

(assert (=> b!1484336 m!1369739))

(assert (=> b!1484347 m!1369707))

(assert (=> b!1484347 m!1369707))

(declare-fun m!1369741 () Bool)

(assert (=> b!1484347 m!1369741))

(assert (=> b!1484355 m!1369707))

(assert (=> b!1484355 m!1369707))

(declare-fun m!1369743 () Bool)

(assert (=> b!1484355 m!1369743))

(declare-fun m!1369745 () Bool)

(assert (=> start!126570 m!1369745))

(declare-fun m!1369747 () Bool)

(assert (=> start!126570 m!1369747))

(declare-fun m!1369749 () Bool)

(assert (=> b!1484340 m!1369749))

(assert (=> b!1484340 m!1369749))

(declare-fun m!1369751 () Bool)

(assert (=> b!1484340 m!1369751))

(assert (=> b!1484340 m!1369709))

(declare-fun m!1369753 () Bool)

(assert (=> b!1484340 m!1369753))

(declare-fun m!1369755 () Bool)

(assert (=> b!1484343 m!1369755))

(check-sat (not b!1484356) (not b!1484336) (not b!1484340) (not b!1484343) (not b!1484338) (not b!1484339) (not b!1484355) (not b!1484353) (not b!1484346) (not b!1484342) (not b!1484341) (not start!126570) (not b!1484347) (not b!1484337))
(check-sat)
