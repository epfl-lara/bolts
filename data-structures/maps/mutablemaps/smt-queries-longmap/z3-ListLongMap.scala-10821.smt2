; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126684 () Bool)

(assert start!126684)

(declare-fun b!1486229 () Bool)

(declare-fun e!833200 () Bool)

(declare-fun e!833198 () Bool)

(assert (=> b!1486229 (= e!833200 e!833198)))

(declare-fun res!1010716 () Bool)

(assert (=> b!1486229 (=> res!1010716 e!833198)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!648366 () (_ BitVec 64))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99500 0))(
  ( (array!99501 (arr!48020 (Array (_ BitVec 32) (_ BitVec 64))) (size!48571 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99500)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1486229 (= res!1010716 (or (and (= (select (arr!48020 a!2862) index!646) lt!648366) (= (select (arr!48020 a!2862) index!646) (select (arr!48020 a!2862) j!93))) (= (select (arr!48020 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1486229 (= lt!648366 (select (store (arr!48020 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1486230 () Bool)

(declare-fun res!1010705 () Bool)

(declare-fun e!833196 () Bool)

(assert (=> b!1486230 (=> (not res!1010705) (not e!833196))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1486230 (= res!1010705 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48571 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48571 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48571 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1486231 () Bool)

(declare-fun res!1010710 () Bool)

(declare-fun e!833201 () Bool)

(assert (=> b!1486231 (=> (not res!1010710) (not e!833201))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12283 0))(
  ( (MissingZero!12283 (index!51523 (_ BitVec 32))) (Found!12283 (index!51524 (_ BitVec 32))) (Intermediate!12283 (undefined!13095 Bool) (index!51525 (_ BitVec 32)) (x!133110 (_ BitVec 32))) (Undefined!12283) (MissingVacant!12283 (index!51526 (_ BitVec 32))) )
))
(declare-fun lt!648365 () SeekEntryResult!12283)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99500 (_ BitVec 32)) SeekEntryResult!12283)

(assert (=> b!1486231 (= res!1010710 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48020 a!2862) j!93) a!2862 mask!2687) lt!648365))))

(declare-fun b!1486233 () Bool)

(declare-fun res!1010714 () Bool)

(assert (=> b!1486233 (=> (not res!1010714) (not e!833196))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1486233 (= res!1010714 (validKeyInArray!0 (select (arr!48020 a!2862) j!93)))))

(declare-fun lt!648369 () (_ BitVec 64))

(declare-fun lt!648368 () array!99500)

(declare-fun b!1486234 () Bool)

(declare-fun e!833203 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99500 (_ BitVec 32)) SeekEntryResult!12283)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99500 (_ BitVec 32)) SeekEntryResult!12283)

(assert (=> b!1486234 (= e!833203 (= (seekEntryOrOpen!0 lt!648369 lt!648368 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648369 lt!648368 mask!2687)))))

(declare-fun b!1486235 () Bool)

(declare-fun res!1010708 () Bool)

(declare-fun e!833195 () Bool)

(assert (=> b!1486235 (=> (not res!1010708) (not e!833195))))

(assert (=> b!1486235 (= res!1010708 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1486236 () Bool)

(declare-fun e!833197 () Bool)

(assert (=> b!1486236 (= e!833196 e!833197)))

(declare-fun res!1010702 () Bool)

(assert (=> b!1486236 (=> (not res!1010702) (not e!833197))))

(assert (=> b!1486236 (= res!1010702 (= (select (store (arr!48020 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1486236 (= lt!648368 (array!99501 (store (arr!48020 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48571 a!2862)))))

(declare-fun b!1486237 () Bool)

(declare-fun res!1010715 () Bool)

(assert (=> b!1486237 (=> (not res!1010715) (not e!833200))))

(assert (=> b!1486237 (= res!1010715 (or (= (select (arr!48020 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48020 a!2862) intermediateBeforeIndex!19) (select (arr!48020 a!2862) j!93))))))

(declare-fun b!1486238 () Bool)

(declare-fun e!833199 () Bool)

(assert (=> b!1486238 (= e!833195 (not e!833199))))

(declare-fun res!1010706 () Bool)

(assert (=> b!1486238 (=> res!1010706 e!833199)))

(assert (=> b!1486238 (= res!1010706 (or (and (= (select (arr!48020 a!2862) index!646) (select (store (arr!48020 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48020 a!2862) index!646) (select (arr!48020 a!2862) j!93))) (= (select (arr!48020 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486238 e!833200))

(declare-fun res!1010718 () Bool)

(assert (=> b!1486238 (=> (not res!1010718) (not e!833200))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99500 (_ BitVec 32)) Bool)

(assert (=> b!1486238 (= res!1010718 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49854 0))(
  ( (Unit!49855) )
))
(declare-fun lt!648364 () Unit!49854)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99500 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49854)

(assert (=> b!1486238 (= lt!648364 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1486239 () Bool)

(declare-fun res!1010717 () Bool)

(assert (=> b!1486239 (=> (not res!1010717) (not e!833196))))

(declare-datatypes ((List!34701 0))(
  ( (Nil!34698) (Cons!34697 (h!36074 (_ BitVec 64)) (t!49402 List!34701)) )
))
(declare-fun arrayNoDuplicates!0 (array!99500 (_ BitVec 32) List!34701) Bool)

(assert (=> b!1486239 (= res!1010717 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34698))))

(declare-fun b!1486240 () Bool)

(declare-fun e!833202 () Bool)

(assert (=> b!1486240 (= e!833202 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648369 lt!648368 mask!2687) (seekEntryOrOpen!0 lt!648369 lt!648368 mask!2687)))))

(declare-fun b!1486241 () Bool)

(declare-fun res!1010713 () Bool)

(assert (=> b!1486241 (=> (not res!1010713) (not e!833195))))

(assert (=> b!1486241 (= res!1010713 e!833202)))

(declare-fun c!137291 () Bool)

(assert (=> b!1486241 (= c!137291 (bvsle x!665 intermediateAfterX!19))))

(declare-fun lt!648367 () SeekEntryResult!12283)

(declare-fun b!1486242 () Bool)

(assert (=> b!1486242 (= e!833202 (= lt!648367 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648369 lt!648368 mask!2687)))))

(declare-fun b!1486243 () Bool)

(assert (=> b!1486243 (= e!833199 true)))

(declare-fun lt!648370 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486243 (= lt!648370 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1486244 () Bool)

(assert (=> b!1486244 (= e!833201 e!833195)))

(declare-fun res!1010704 () Bool)

(assert (=> b!1486244 (=> (not res!1010704) (not e!833195))))

(assert (=> b!1486244 (= res!1010704 (= lt!648367 (Intermediate!12283 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486244 (= lt!648367 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648369 mask!2687) lt!648369 lt!648368 mask!2687))))

(assert (=> b!1486244 (= lt!648369 (select (store (arr!48020 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1486245 () Bool)

(assert (=> b!1486245 (= e!833198 e!833203)))

(declare-fun res!1010711 () Bool)

(assert (=> b!1486245 (=> (not res!1010711) (not e!833203))))

(assert (=> b!1486245 (= res!1010711 (and (= index!646 intermediateAfterIndex!19) (= lt!648366 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1010707 () Bool)

(assert (=> start!126684 (=> (not res!1010707) (not e!833196))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126684 (= res!1010707 (validMask!0 mask!2687))))

(assert (=> start!126684 e!833196))

(assert (=> start!126684 true))

(declare-fun array_inv!36965 (array!99500) Bool)

(assert (=> start!126684 (array_inv!36965 a!2862)))

(declare-fun b!1486232 () Bool)

(declare-fun res!1010712 () Bool)

(assert (=> b!1486232 (=> (not res!1010712) (not e!833196))))

(assert (=> b!1486232 (= res!1010712 (and (= (size!48571 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48571 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48571 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1486246 () Bool)

(declare-fun res!1010700 () Bool)

(assert (=> b!1486246 (=> (not res!1010700) (not e!833196))))

(assert (=> b!1486246 (= res!1010700 (validKeyInArray!0 (select (arr!48020 a!2862) i!1006)))))

(declare-fun b!1486247 () Bool)

(assert (=> b!1486247 (= e!833197 e!833201)))

(declare-fun res!1010703 () Bool)

(assert (=> b!1486247 (=> (not res!1010703) (not e!833201))))

(assert (=> b!1486247 (= res!1010703 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48020 a!2862) j!93) mask!2687) (select (arr!48020 a!2862) j!93) a!2862 mask!2687) lt!648365))))

(assert (=> b!1486247 (= lt!648365 (Intermediate!12283 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1486248 () Bool)

(declare-fun res!1010701 () Bool)

(assert (=> b!1486248 (=> (not res!1010701) (not e!833200))))

(assert (=> b!1486248 (= res!1010701 (= (seekEntryOrOpen!0 (select (arr!48020 a!2862) j!93) a!2862 mask!2687) (Found!12283 j!93)))))

(declare-fun b!1486249 () Bool)

(declare-fun res!1010709 () Bool)

(assert (=> b!1486249 (=> (not res!1010709) (not e!833196))))

(assert (=> b!1486249 (= res!1010709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!126684 res!1010707) b!1486232))

(assert (= (and b!1486232 res!1010712) b!1486246))

(assert (= (and b!1486246 res!1010700) b!1486233))

(assert (= (and b!1486233 res!1010714) b!1486249))

(assert (= (and b!1486249 res!1010709) b!1486239))

(assert (= (and b!1486239 res!1010717) b!1486230))

(assert (= (and b!1486230 res!1010705) b!1486236))

(assert (= (and b!1486236 res!1010702) b!1486247))

(assert (= (and b!1486247 res!1010703) b!1486231))

(assert (= (and b!1486231 res!1010710) b!1486244))

(assert (= (and b!1486244 res!1010704) b!1486241))

(assert (= (and b!1486241 c!137291) b!1486242))

(assert (= (and b!1486241 (not c!137291)) b!1486240))

(assert (= (and b!1486241 res!1010713) b!1486235))

(assert (= (and b!1486235 res!1010708) b!1486238))

(assert (= (and b!1486238 res!1010718) b!1486248))

(assert (= (and b!1486248 res!1010701) b!1486237))

(assert (= (and b!1486237 res!1010715) b!1486229))

(assert (= (and b!1486229 (not res!1010716)) b!1486245))

(assert (= (and b!1486245 res!1010711) b!1486234))

(assert (= (and b!1486238 (not res!1010706)) b!1486243))

(declare-fun m!1371187 () Bool)

(assert (=> b!1486238 m!1371187))

(declare-fun m!1371189 () Bool)

(assert (=> b!1486238 m!1371189))

(declare-fun m!1371191 () Bool)

(assert (=> b!1486238 m!1371191))

(declare-fun m!1371193 () Bool)

(assert (=> b!1486238 m!1371193))

(declare-fun m!1371195 () Bool)

(assert (=> b!1486238 m!1371195))

(declare-fun m!1371197 () Bool)

(assert (=> b!1486238 m!1371197))

(declare-fun m!1371199 () Bool)

(assert (=> b!1486242 m!1371199))

(declare-fun m!1371201 () Bool)

(assert (=> b!1486237 m!1371201))

(assert (=> b!1486237 m!1371197))

(assert (=> b!1486236 m!1371189))

(declare-fun m!1371203 () Bool)

(assert (=> b!1486236 m!1371203))

(declare-fun m!1371205 () Bool)

(assert (=> b!1486244 m!1371205))

(assert (=> b!1486244 m!1371205))

(declare-fun m!1371207 () Bool)

(assert (=> b!1486244 m!1371207))

(assert (=> b!1486244 m!1371189))

(declare-fun m!1371209 () Bool)

(assert (=> b!1486244 m!1371209))

(declare-fun m!1371211 () Bool)

(assert (=> b!1486234 m!1371211))

(declare-fun m!1371213 () Bool)

(assert (=> b!1486234 m!1371213))

(assert (=> b!1486248 m!1371197))

(assert (=> b!1486248 m!1371197))

(declare-fun m!1371215 () Bool)

(assert (=> b!1486248 m!1371215))

(declare-fun m!1371217 () Bool)

(assert (=> b!1486249 m!1371217))

(declare-fun m!1371219 () Bool)

(assert (=> b!1486243 m!1371219))

(assert (=> b!1486240 m!1371213))

(assert (=> b!1486240 m!1371211))

(declare-fun m!1371221 () Bool)

(assert (=> b!1486239 m!1371221))

(declare-fun m!1371223 () Bool)

(assert (=> b!1486246 m!1371223))

(assert (=> b!1486246 m!1371223))

(declare-fun m!1371225 () Bool)

(assert (=> b!1486246 m!1371225))

(assert (=> b!1486233 m!1371197))

(assert (=> b!1486233 m!1371197))

(declare-fun m!1371227 () Bool)

(assert (=> b!1486233 m!1371227))

(assert (=> b!1486231 m!1371197))

(assert (=> b!1486231 m!1371197))

(declare-fun m!1371229 () Bool)

(assert (=> b!1486231 m!1371229))

(assert (=> b!1486229 m!1371193))

(assert (=> b!1486229 m!1371197))

(assert (=> b!1486229 m!1371189))

(assert (=> b!1486229 m!1371191))

(declare-fun m!1371231 () Bool)

(assert (=> start!126684 m!1371231))

(declare-fun m!1371233 () Bool)

(assert (=> start!126684 m!1371233))

(assert (=> b!1486247 m!1371197))

(assert (=> b!1486247 m!1371197))

(declare-fun m!1371235 () Bool)

(assert (=> b!1486247 m!1371235))

(assert (=> b!1486247 m!1371235))

(assert (=> b!1486247 m!1371197))

(declare-fun m!1371237 () Bool)

(assert (=> b!1486247 m!1371237))

(check-sat (not b!1486239) (not b!1486242) (not b!1486238) (not b!1486248) (not b!1486233) (not b!1486231) (not b!1486240) (not b!1486249) (not start!126684) (not b!1486244) (not b!1486246) (not b!1486243) (not b!1486247) (not b!1486234))
(check-sat)
