; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125462 () Bool)

(assert start!125462)

(declare-fun b!1467255 () Bool)

(declare-fun e!824215 () Bool)

(declare-fun e!824217 () Bool)

(assert (=> b!1467255 (= e!824215 e!824217)))

(declare-fun res!995907 () Bool)

(assert (=> b!1467255 (=> res!995907 e!824217)))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1467255 (= res!995907 (bvslt mask!2687 #b00000000000000000000000000000000))))

(declare-fun lt!642017 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11972 0))(
  ( (MissingZero!11972 (index!50279 (_ BitVec 32))) (Found!11972 (index!50280 (_ BitVec 32))) (Intermediate!11972 (undefined!12784 Bool) (index!50281 (_ BitVec 32)) (x!131848 (_ BitVec 32))) (Undefined!11972) (MissingVacant!11972 (index!50282 (_ BitVec 32))) )
))
(declare-fun lt!642022 () SeekEntryResult!11972)

(declare-datatypes ((array!98827 0))(
  ( (array!98828 (arr!47697 (Array (_ BitVec 32) (_ BitVec 64))) (size!48248 (_ BitVec 32))) )
))
(declare-fun lt!642018 () array!98827)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98827 (_ BitVec 32)) SeekEntryResult!11972)

(assert (=> b!1467255 (= lt!642022 (seekEntryOrOpen!0 lt!642017 lt!642018 mask!2687))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!642016 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98827)

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((Unit!49388 0))(
  ( (Unit!49389) )
))
(declare-fun lt!642019 () Unit!49388)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98827 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49388)

(assert (=> b!1467255 (= lt!642019 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!642016 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1467256 () Bool)

(declare-fun res!995925 () Bool)

(declare-fun e!824210 () Bool)

(assert (=> b!1467256 (=> (not res!995925) (not e!824210))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98827 (_ BitVec 32)) Bool)

(assert (=> b!1467256 (= res!995925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467257 () Bool)

(declare-fun res!995913 () Bool)

(assert (=> b!1467257 (=> (not res!995913) (not e!824210))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467257 (= res!995913 (validKeyInArray!0 (select (arr!47697 a!2862) i!1006)))))

(declare-fun b!1467258 () Bool)

(declare-fun res!995909 () Bool)

(assert (=> b!1467258 (=> (not res!995909) (not e!824210))))

(declare-datatypes ((List!34378 0))(
  ( (Nil!34375) (Cons!34374 (h!35724 (_ BitVec 64)) (t!49079 List!34378)) )
))
(declare-fun arrayNoDuplicates!0 (array!98827 (_ BitVec 32) List!34378) Bool)

(assert (=> b!1467258 (= res!995909 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34375))))

(declare-fun e!824213 () Bool)

(declare-fun b!1467259 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98827 (_ BitVec 32)) SeekEntryResult!11972)

(assert (=> b!1467259 (= e!824213 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!642016 intermediateAfterIndex!19 lt!642017 lt!642018 mask!2687) (seekEntryOrOpen!0 lt!642017 lt!642018 mask!2687))))))

(declare-fun b!1467260 () Bool)

(assert (=> b!1467260 (= e!824217 (validKeyInArray!0 lt!642017))))

(declare-fun res!995920 () Bool)

(assert (=> start!125462 (=> (not res!995920) (not e!824210))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125462 (= res!995920 (validMask!0 mask!2687))))

(assert (=> start!125462 e!824210))

(assert (=> start!125462 true))

(declare-fun array_inv!36642 (array!98827) Bool)

(assert (=> start!125462 (array_inv!36642 a!2862)))

(declare-fun b!1467261 () Bool)

(declare-fun e!824219 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!642021 () SeekEntryResult!11972)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98827 (_ BitVec 32)) SeekEntryResult!11972)

(assert (=> b!1467261 (= e!824219 (= lt!642021 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642017 lt!642018 mask!2687)))))

(declare-fun b!1467262 () Bool)

(declare-fun res!995922 () Bool)

(declare-fun e!824212 () Bool)

(assert (=> b!1467262 (=> (not res!995922) (not e!824212))))

(assert (=> b!1467262 (= res!995922 e!824219)))

(declare-fun c!135187 () Bool)

(assert (=> b!1467262 (= c!135187 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1467263 () Bool)

(assert (=> b!1467263 (= e!824213 (not (= lt!642021 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!642016 lt!642017 lt!642018 mask!2687))))))

(declare-fun b!1467264 () Bool)

(declare-fun res!995919 () Bool)

(assert (=> b!1467264 (=> (not res!995919) (not e!824210))))

(assert (=> b!1467264 (= res!995919 (and (= (size!48248 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48248 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48248 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467265 () Bool)

(declare-fun res!995924 () Bool)

(declare-fun e!824214 () Bool)

(assert (=> b!1467265 (=> (not res!995924) (not e!824214))))

(declare-fun lt!642015 () SeekEntryResult!11972)

(assert (=> b!1467265 (= res!995924 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47697 a!2862) j!93) a!2862 mask!2687) lt!642015))))

(declare-fun b!1467266 () Bool)

(assert (=> b!1467266 (= e!824219 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642017 lt!642018 mask!2687) (seekEntryOrOpen!0 lt!642017 lt!642018 mask!2687)))))

(declare-fun b!1467267 () Bool)

(declare-fun res!995921 () Bool)

(assert (=> b!1467267 (=> (not res!995921) (not e!824210))))

(assert (=> b!1467267 (= res!995921 (validKeyInArray!0 (select (arr!47697 a!2862) j!93)))))

(declare-fun b!1467268 () Bool)

(declare-fun res!995912 () Bool)

(assert (=> b!1467268 (=> (not res!995912) (not e!824210))))

(assert (=> b!1467268 (= res!995912 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48248 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48248 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48248 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1467269 () Bool)

(declare-fun e!824218 () Bool)

(assert (=> b!1467269 (= e!824218 e!824214)))

(declare-fun res!995915 () Bool)

(assert (=> b!1467269 (=> (not res!995915) (not e!824214))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467269 (= res!995915 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47697 a!2862) j!93) mask!2687) (select (arr!47697 a!2862) j!93) a!2862 mask!2687) lt!642015))))

(assert (=> b!1467269 (= lt!642015 (Intermediate!11972 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1467270 () Bool)

(declare-fun e!824216 () Bool)

(assert (=> b!1467270 (= e!824216 e!824215)))

(declare-fun res!995918 () Bool)

(assert (=> b!1467270 (=> res!995918 e!824215)))

(assert (=> b!1467270 (= res!995918 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!642016 #b00000000000000000000000000000000) (bvsge lt!642016 (size!48248 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467270 (= lt!642016 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1467271 () Bool)

(assert (=> b!1467271 (= e!824210 e!824218)))

(declare-fun res!995908 () Bool)

(assert (=> b!1467271 (=> (not res!995908) (not e!824218))))

(assert (=> b!1467271 (= res!995908 (= (select (store (arr!47697 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1467271 (= lt!642018 (array!98828 (store (arr!47697 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48248 a!2862)))))

(declare-fun b!1467272 () Bool)

(declare-fun res!995916 () Bool)

(assert (=> b!1467272 (=> (not res!995916) (not e!824212))))

(assert (=> b!1467272 (= res!995916 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1467273 () Bool)

(declare-fun res!995910 () Bool)

(assert (=> b!1467273 (=> res!995910 e!824215)))

(assert (=> b!1467273 (= res!995910 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1467274 () Bool)

(assert (=> b!1467274 (= e!824214 e!824212)))

(declare-fun res!995917 () Bool)

(assert (=> b!1467274 (=> (not res!995917) (not e!824212))))

(assert (=> b!1467274 (= res!995917 (= lt!642021 (Intermediate!11972 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1467274 (= lt!642021 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642017 mask!2687) lt!642017 lt!642018 mask!2687))))

(assert (=> b!1467274 (= lt!642017 (select (store (arr!47697 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1467275 () Bool)

(declare-fun res!995923 () Bool)

(assert (=> b!1467275 (=> res!995923 e!824215)))

(assert (=> b!1467275 (= res!995923 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!642016 (select (arr!47697 a!2862) j!93) a!2862 mask!2687) lt!642015)))))

(declare-fun b!1467276 () Bool)

(assert (=> b!1467276 (= e!824212 (not e!824216))))

(declare-fun res!995911 () Bool)

(assert (=> b!1467276 (=> res!995911 e!824216)))

(assert (=> b!1467276 (= res!995911 (or (and (= (select (arr!47697 a!2862) index!646) (select (store (arr!47697 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47697 a!2862) index!646) (select (arr!47697 a!2862) j!93))) (= (select (arr!47697 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1467276 (and (= lt!642022 (Found!11972 j!93)) (or (= (select (arr!47697 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47697 a!2862) intermediateBeforeIndex!19) (select (arr!47697 a!2862) j!93))))))

(assert (=> b!1467276 (= lt!642022 (seekEntryOrOpen!0 (select (arr!47697 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1467276 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!642020 () Unit!49388)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98827 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49388)

(assert (=> b!1467276 (= lt!642020 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1467277 () Bool)

(declare-fun res!995914 () Bool)

(assert (=> b!1467277 (=> res!995914 e!824215)))

(assert (=> b!1467277 (= res!995914 e!824213)))

(declare-fun c!135188 () Bool)

(assert (=> b!1467277 (= c!135188 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(assert (= (and start!125462 res!995920) b!1467264))

(assert (= (and b!1467264 res!995919) b!1467257))

(assert (= (and b!1467257 res!995913) b!1467267))

(assert (= (and b!1467267 res!995921) b!1467256))

(assert (= (and b!1467256 res!995925) b!1467258))

(assert (= (and b!1467258 res!995909) b!1467268))

(assert (= (and b!1467268 res!995912) b!1467271))

(assert (= (and b!1467271 res!995908) b!1467269))

(assert (= (and b!1467269 res!995915) b!1467265))

(assert (= (and b!1467265 res!995924) b!1467274))

(assert (= (and b!1467274 res!995917) b!1467262))

(assert (= (and b!1467262 c!135187) b!1467261))

(assert (= (and b!1467262 (not c!135187)) b!1467266))

(assert (= (and b!1467262 res!995922) b!1467272))

(assert (= (and b!1467272 res!995916) b!1467276))

(assert (= (and b!1467276 (not res!995911)) b!1467270))

(assert (= (and b!1467270 (not res!995918)) b!1467275))

(assert (= (and b!1467275 (not res!995923)) b!1467277))

(assert (= (and b!1467277 c!135188) b!1467263))

(assert (= (and b!1467277 (not c!135188)) b!1467259))

(assert (= (and b!1467277 (not res!995914)) b!1467273))

(assert (= (and b!1467273 (not res!995910)) b!1467255))

(assert (= (and b!1467255 (not res!995907)) b!1467260))

(declare-fun m!1354219 () Bool)

(assert (=> b!1467260 m!1354219))

(declare-fun m!1354221 () Bool)

(assert (=> b!1467261 m!1354221))

(declare-fun m!1354223 () Bool)

(assert (=> b!1467265 m!1354223))

(assert (=> b!1467265 m!1354223))

(declare-fun m!1354225 () Bool)

(assert (=> b!1467265 m!1354225))

(declare-fun m!1354227 () Bool)

(assert (=> b!1467266 m!1354227))

(declare-fun m!1354229 () Bool)

(assert (=> b!1467266 m!1354229))

(declare-fun m!1354231 () Bool)

(assert (=> b!1467257 m!1354231))

(assert (=> b!1467257 m!1354231))

(declare-fun m!1354233 () Bool)

(assert (=> b!1467257 m!1354233))

(assert (=> b!1467255 m!1354229))

(declare-fun m!1354235 () Bool)

(assert (=> b!1467255 m!1354235))

(declare-fun m!1354237 () Bool)

(assert (=> b!1467274 m!1354237))

(assert (=> b!1467274 m!1354237))

(declare-fun m!1354239 () Bool)

(assert (=> b!1467274 m!1354239))

(declare-fun m!1354241 () Bool)

(assert (=> b!1467274 m!1354241))

(declare-fun m!1354243 () Bool)

(assert (=> b!1467274 m!1354243))

(declare-fun m!1354245 () Bool)

(assert (=> b!1467259 m!1354245))

(assert (=> b!1467259 m!1354229))

(assert (=> b!1467271 m!1354241))

(declare-fun m!1354247 () Bool)

(assert (=> b!1467271 m!1354247))

(declare-fun m!1354249 () Bool)

(assert (=> b!1467270 m!1354249))

(assert (=> b!1467275 m!1354223))

(assert (=> b!1467275 m!1354223))

(declare-fun m!1354251 () Bool)

(assert (=> b!1467275 m!1354251))

(declare-fun m!1354253 () Bool)

(assert (=> b!1467256 m!1354253))

(declare-fun m!1354255 () Bool)

(assert (=> b!1467276 m!1354255))

(assert (=> b!1467276 m!1354241))

(declare-fun m!1354257 () Bool)

(assert (=> b!1467276 m!1354257))

(declare-fun m!1354259 () Bool)

(assert (=> b!1467276 m!1354259))

(declare-fun m!1354261 () Bool)

(assert (=> b!1467276 m!1354261))

(assert (=> b!1467276 m!1354223))

(declare-fun m!1354263 () Bool)

(assert (=> b!1467276 m!1354263))

(declare-fun m!1354265 () Bool)

(assert (=> b!1467276 m!1354265))

(assert (=> b!1467276 m!1354223))

(assert (=> b!1467269 m!1354223))

(assert (=> b!1467269 m!1354223))

(declare-fun m!1354267 () Bool)

(assert (=> b!1467269 m!1354267))

(assert (=> b!1467269 m!1354267))

(assert (=> b!1467269 m!1354223))

(declare-fun m!1354269 () Bool)

(assert (=> b!1467269 m!1354269))

(declare-fun m!1354271 () Bool)

(assert (=> start!125462 m!1354271))

(declare-fun m!1354273 () Bool)

(assert (=> start!125462 m!1354273))

(declare-fun m!1354275 () Bool)

(assert (=> b!1467263 m!1354275))

(assert (=> b!1467267 m!1354223))

(assert (=> b!1467267 m!1354223))

(declare-fun m!1354277 () Bool)

(assert (=> b!1467267 m!1354277))

(declare-fun m!1354279 () Bool)

(assert (=> b!1467258 m!1354279))

(push 1)

