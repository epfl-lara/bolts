; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126872 () Bool)

(assert start!126872)

(declare-datatypes ((SeekEntryResult!12311 0))(
  ( (MissingZero!12311 (index!51635 (_ BitVec 32))) (Found!12311 (index!51636 (_ BitVec 32))) (Intermediate!12311 (undefined!13123 Bool) (index!51637 (_ BitVec 32)) (x!133234 (_ BitVec 32))) (Undefined!12311) (MissingVacant!12311 (index!51638 (_ BitVec 32))) )
))
(declare-fun lt!649335 () SeekEntryResult!12311)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!99562 0))(
  ( (array!99563 (arr!48048 (Array (_ BitVec 32) (_ BitVec 64))) (size!48599 (_ BitVec 32))) )
))
(declare-fun lt!649332 () array!99562)

(declare-fun b!1488907 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!649336 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!834558 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99562 (_ BitVec 32)) SeekEntryResult!12311)

(assert (=> b!1488907 (= e!834558 (= lt!649335 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649336 lt!649332 mask!2687)))))

(declare-fun b!1488908 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99562 (_ BitVec 32)) SeekEntryResult!12311)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99562 (_ BitVec 32)) SeekEntryResult!12311)

(assert (=> b!1488908 (= e!834558 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649336 lt!649332 mask!2687) (seekEntryOrOpen!0 lt!649336 lt!649332 mask!2687)))))

(declare-fun b!1488909 () Bool)

(declare-fun res!1012544 () Bool)

(declare-fun e!834557 () Bool)

(assert (=> b!1488909 (=> (not res!1012544) (not e!834557))))

(declare-fun a!2862 () array!99562)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1488909 (= res!1012544 (validKeyInArray!0 (select (arr!48048 a!2862) i!1006)))))

(declare-fun b!1488910 () Bool)

(declare-fun e!834566 () Bool)

(declare-fun e!834564 () Bool)

(assert (=> b!1488910 (= e!834566 (not e!834564))))

(declare-fun res!1012547 () Bool)

(assert (=> b!1488910 (=> res!1012547 e!834564)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1488910 (= res!1012547 (or (and (= (select (arr!48048 a!2862) index!646) (select (store (arr!48048 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48048 a!2862) index!646) (select (arr!48048 a!2862) j!93))) (= (select (arr!48048 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!834560 () Bool)

(assert (=> b!1488910 e!834560))

(declare-fun res!1012549 () Bool)

(assert (=> b!1488910 (=> (not res!1012549) (not e!834560))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99562 (_ BitVec 32)) Bool)

(assert (=> b!1488910 (= res!1012549 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49910 0))(
  ( (Unit!49911) )
))
(declare-fun lt!649329 () Unit!49910)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99562 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49910)

(assert (=> b!1488910 (= lt!649329 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1488911 () Bool)

(declare-fun res!1012542 () Bool)

(declare-fun e!834565 () Bool)

(assert (=> b!1488911 (=> res!1012542 e!834565)))

(declare-fun lt!649330 () (_ BitVec 32))

(declare-fun lt!649333 () SeekEntryResult!12311)

(assert (=> b!1488911 (= res!1012542 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649330 (select (arr!48048 a!2862) j!93) a!2862 mask!2687) lt!649333)))))

(declare-fun b!1488912 () Bool)

(declare-fun res!1012541 () Bool)

(assert (=> b!1488912 (=> (not res!1012541) (not e!834557))))

(assert (=> b!1488912 (= res!1012541 (and (= (size!48599 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48599 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48599 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1488913 () Bool)

(declare-fun res!1012540 () Bool)

(assert (=> b!1488913 (=> (not res!1012540) (not e!834557))))

(declare-datatypes ((List!34729 0))(
  ( (Nil!34726) (Cons!34725 (h!36108 (_ BitVec 64)) (t!49430 List!34729)) )
))
(declare-fun arrayNoDuplicates!0 (array!99562 (_ BitVec 32) List!34729) Bool)

(assert (=> b!1488913 (= res!1012540 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34726))))

(declare-fun b!1488914 () Bool)

(declare-fun e!834563 () Bool)

(assert (=> b!1488914 (= e!834563 e!834566)))

(declare-fun res!1012550 () Bool)

(assert (=> b!1488914 (=> (not res!1012550) (not e!834566))))

(assert (=> b!1488914 (= res!1012550 (= lt!649335 (Intermediate!12311 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1488914 (= lt!649335 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649336 mask!2687) lt!649336 lt!649332 mask!2687))))

(assert (=> b!1488914 (= lt!649336 (select (store (arr!48048 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1488915 () Bool)

(declare-fun e!834562 () Bool)

(assert (=> b!1488915 (= e!834562 e!834563)))

(declare-fun res!1012551 () Bool)

(assert (=> b!1488915 (=> (not res!1012551) (not e!834563))))

(assert (=> b!1488915 (= res!1012551 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48048 a!2862) j!93) mask!2687) (select (arr!48048 a!2862) j!93) a!2862 mask!2687) lt!649333))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1488915 (= lt!649333 (Intermediate!12311 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!1012545 () Bool)

(assert (=> start!126872 (=> (not res!1012545) (not e!834557))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126872 (= res!1012545 (validMask!0 mask!2687))))

(assert (=> start!126872 e!834557))

(assert (=> start!126872 true))

(declare-fun array_inv!36993 (array!99562) Bool)

(assert (=> start!126872 (array_inv!36993 a!2862)))

(declare-fun b!1488916 () Bool)

(declare-fun res!1012546 () Bool)

(assert (=> b!1488916 (=> (not res!1012546) (not e!834557))))

(assert (=> b!1488916 (= res!1012546 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48599 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48599 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48599 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1488917 () Bool)

(declare-fun res!1012555 () Bool)

(assert (=> b!1488917 (=> (not res!1012555) (not e!834557))))

(assert (=> b!1488917 (= res!1012555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1488918 () Bool)

(declare-fun res!1012552 () Bool)

(assert (=> b!1488918 (=> (not res!1012552) (not e!834566))))

(assert (=> b!1488918 (= res!1012552 e!834558)))

(declare-fun c!137714 () Bool)

(assert (=> b!1488918 (= c!137714 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1488919 () Bool)

(declare-fun res!1012543 () Bool)

(assert (=> b!1488919 (=> (not res!1012543) (not e!834566))))

(assert (=> b!1488919 (= res!1012543 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun e!834561 () Bool)

(declare-fun b!1488920 () Bool)

(assert (=> b!1488920 (= e!834561 (not (= lt!649335 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649330 lt!649336 lt!649332 mask!2687))))))

(declare-fun b!1488921 () Bool)

(assert (=> b!1488921 (= e!834565 true)))

(declare-fun lt!649331 () Bool)

(assert (=> b!1488921 (= lt!649331 e!834561)))

(declare-fun c!137713 () Bool)

(assert (=> b!1488921 (= c!137713 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1488922 () Bool)

(declare-fun lt!649334 () SeekEntryResult!12311)

(assert (=> b!1488922 (= e!834561 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649330 intermediateAfterIndex!19 lt!649336 lt!649332 mask!2687) lt!649334)))))

(declare-fun b!1488923 () Bool)

(declare-fun res!1012553 () Bool)

(assert (=> b!1488923 (=> (not res!1012553) (not e!834557))))

(assert (=> b!1488923 (= res!1012553 (validKeyInArray!0 (select (arr!48048 a!2862) j!93)))))

(declare-fun b!1488924 () Bool)

(assert (=> b!1488924 (= e!834557 e!834562)))

(declare-fun res!1012548 () Bool)

(assert (=> b!1488924 (=> (not res!1012548) (not e!834562))))

(assert (=> b!1488924 (= res!1012548 (= (select (store (arr!48048 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1488924 (= lt!649332 (array!99563 (store (arr!48048 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48599 a!2862)))))

(declare-fun b!1488925 () Bool)

(declare-fun res!1012554 () Bool)

(assert (=> b!1488925 (=> (not res!1012554) (not e!834560))))

(assert (=> b!1488925 (= res!1012554 (= (seekEntryOrOpen!0 (select (arr!48048 a!2862) j!93) a!2862 mask!2687) (Found!12311 j!93)))))

(declare-fun b!1488926 () Bool)

(declare-fun res!1012557 () Bool)

(assert (=> b!1488926 (=> (not res!1012557) (not e!834563))))

(assert (=> b!1488926 (= res!1012557 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48048 a!2862) j!93) a!2862 mask!2687) lt!649333))))

(declare-fun b!1488927 () Bool)

(assert (=> b!1488927 (= e!834564 e!834565)))

(declare-fun res!1012556 () Bool)

(assert (=> b!1488927 (=> res!1012556 e!834565)))

(assert (=> b!1488927 (= res!1012556 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649330 #b00000000000000000000000000000000) (bvsge lt!649330 (size!48599 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1488927 (= lt!649330 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1488927 (= lt!649334 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649336 lt!649332 mask!2687))))

(assert (=> b!1488927 (= lt!649334 (seekEntryOrOpen!0 lt!649336 lt!649332 mask!2687))))

(declare-fun b!1488928 () Bool)

(assert (=> b!1488928 (= e!834560 (and (or (= (select (arr!48048 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48048 a!2862) intermediateBeforeIndex!19) (select (arr!48048 a!2862) j!93))) (let ((bdg!54677 (select (store (arr!48048 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48048 a!2862) index!646) bdg!54677) (= (select (arr!48048 a!2862) index!646) (select (arr!48048 a!2862) j!93))) (= (select (arr!48048 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54677 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and start!126872 res!1012545) b!1488912))

(assert (= (and b!1488912 res!1012541) b!1488909))

(assert (= (and b!1488909 res!1012544) b!1488923))

(assert (= (and b!1488923 res!1012553) b!1488917))

(assert (= (and b!1488917 res!1012555) b!1488913))

(assert (= (and b!1488913 res!1012540) b!1488916))

(assert (= (and b!1488916 res!1012546) b!1488924))

(assert (= (and b!1488924 res!1012548) b!1488915))

(assert (= (and b!1488915 res!1012551) b!1488926))

(assert (= (and b!1488926 res!1012557) b!1488914))

(assert (= (and b!1488914 res!1012550) b!1488918))

(assert (= (and b!1488918 c!137714) b!1488907))

(assert (= (and b!1488918 (not c!137714)) b!1488908))

(assert (= (and b!1488918 res!1012552) b!1488919))

(assert (= (and b!1488919 res!1012543) b!1488910))

(assert (= (and b!1488910 res!1012549) b!1488925))

(assert (= (and b!1488925 res!1012554) b!1488928))

(assert (= (and b!1488910 (not res!1012547)) b!1488927))

(assert (= (and b!1488927 (not res!1012556)) b!1488911))

(assert (= (and b!1488911 (not res!1012542)) b!1488921))

(assert (= (and b!1488921 c!137713) b!1488920))

(assert (= (and b!1488921 (not c!137713)) b!1488922))

(declare-fun m!1373255 () Bool)

(assert (=> b!1488920 m!1373255))

(declare-fun m!1373257 () Bool)

(assert (=> b!1488928 m!1373257))

(declare-fun m!1373259 () Bool)

(assert (=> b!1488928 m!1373259))

(declare-fun m!1373261 () Bool)

(assert (=> b!1488928 m!1373261))

(declare-fun m!1373263 () Bool)

(assert (=> b!1488928 m!1373263))

(declare-fun m!1373265 () Bool)

(assert (=> b!1488928 m!1373265))

(assert (=> b!1488923 m!1373265))

(assert (=> b!1488923 m!1373265))

(declare-fun m!1373267 () Bool)

(assert (=> b!1488923 m!1373267))

(declare-fun m!1373269 () Bool)

(assert (=> b!1488908 m!1373269))

(declare-fun m!1373271 () Bool)

(assert (=> b!1488908 m!1373271))

(assert (=> b!1488926 m!1373265))

(assert (=> b!1488926 m!1373265))

(declare-fun m!1373273 () Bool)

(assert (=> b!1488926 m!1373273))

(declare-fun m!1373275 () Bool)

(assert (=> b!1488909 m!1373275))

(assert (=> b!1488909 m!1373275))

(declare-fun m!1373277 () Bool)

(assert (=> b!1488909 m!1373277))

(declare-fun m!1373279 () Bool)

(assert (=> b!1488907 m!1373279))

(declare-fun m!1373281 () Bool)

(assert (=> start!126872 m!1373281))

(declare-fun m!1373283 () Bool)

(assert (=> start!126872 m!1373283))

(assert (=> b!1488911 m!1373265))

(assert (=> b!1488911 m!1373265))

(declare-fun m!1373285 () Bool)

(assert (=> b!1488911 m!1373285))

(declare-fun m!1373287 () Bool)

(assert (=> b!1488922 m!1373287))

(declare-fun m!1373289 () Bool)

(assert (=> b!1488910 m!1373289))

(assert (=> b!1488910 m!1373257))

(assert (=> b!1488910 m!1373261))

(assert (=> b!1488910 m!1373263))

(declare-fun m!1373291 () Bool)

(assert (=> b!1488910 m!1373291))

(assert (=> b!1488910 m!1373265))

(assert (=> b!1488924 m!1373257))

(declare-fun m!1373293 () Bool)

(assert (=> b!1488924 m!1373293))

(declare-fun m!1373295 () Bool)

(assert (=> b!1488914 m!1373295))

(assert (=> b!1488914 m!1373295))

(declare-fun m!1373297 () Bool)

(assert (=> b!1488914 m!1373297))

(assert (=> b!1488914 m!1373257))

(declare-fun m!1373299 () Bool)

(assert (=> b!1488914 m!1373299))

(declare-fun m!1373301 () Bool)

(assert (=> b!1488927 m!1373301))

(assert (=> b!1488927 m!1373269))

(assert (=> b!1488927 m!1373271))

(assert (=> b!1488925 m!1373265))

(assert (=> b!1488925 m!1373265))

(declare-fun m!1373303 () Bool)

(assert (=> b!1488925 m!1373303))

(assert (=> b!1488915 m!1373265))

(assert (=> b!1488915 m!1373265))

(declare-fun m!1373305 () Bool)

(assert (=> b!1488915 m!1373305))

(assert (=> b!1488915 m!1373305))

(assert (=> b!1488915 m!1373265))

(declare-fun m!1373307 () Bool)

(assert (=> b!1488915 m!1373307))

(declare-fun m!1373309 () Bool)

(assert (=> b!1488913 m!1373309))

(declare-fun m!1373311 () Bool)

(assert (=> b!1488917 m!1373311))

(push 1)

