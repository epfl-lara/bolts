; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125052 () Bool)

(assert start!125052)

(declare-fun res!984935 () Bool)

(declare-fun e!818303 () Bool)

(assert (=> start!125052 (=> (not res!984935) (not e!818303))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125052 (= res!984935 (validMask!0 mask!2687))))

(assert (=> start!125052 e!818303))

(assert (=> start!125052 true))

(declare-datatypes ((array!98417 0))(
  ( (array!98418 (arr!47492 (Array (_ BitVec 32) (_ BitVec 64))) (size!48043 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98417)

(declare-fun array_inv!36437 (array!98417) Bool)

(assert (=> start!125052 (array_inv!36437 a!2862)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1453888 () Bool)

(declare-fun e!818302 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1453888 (= e!818302 (and (or (= (select (arr!47492 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47492 a!2862) intermediateBeforeIndex!19) (select (arr!47492 a!2862) j!93))) (let ((bdg!53020 (select (store (arr!47492 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47492 a!2862) index!646) bdg!53020) (= (select (arr!47492 a!2862) index!646) (select (arr!47492 a!2862) j!93))) (= (select (arr!47492 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53020 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1453889 () Bool)

(declare-datatypes ((SeekEntryResult!11767 0))(
  ( (MissingZero!11767 (index!49459 (_ BitVec 32))) (Found!11767 (index!49460 (_ BitVec 32))) (Intermediate!11767 (undefined!12579 Bool) (index!49461 (_ BitVec 32)) (x!131099 (_ BitVec 32))) (Undefined!11767) (MissingVacant!11767 (index!49462 (_ BitVec 32))) )
))
(declare-fun lt!637361 () SeekEntryResult!11767)

(declare-fun lt!637360 () array!98417)

(declare-fun lt!637358 () (_ BitVec 64))

(declare-fun e!818298 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98417 (_ BitVec 32)) SeekEntryResult!11767)

(assert (=> b!1453889 (= e!818298 (= lt!637361 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637358 lt!637360 mask!2687)))))

(declare-fun b!1453890 () Bool)

(declare-fun res!984932 () Bool)

(assert (=> b!1453890 (=> (not res!984932) (not e!818303))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98417 (_ BitVec 32)) Bool)

(assert (=> b!1453890 (= res!984932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1453891 () Bool)

(declare-fun e!818297 () Bool)

(declare-fun e!818294 () Bool)

(assert (=> b!1453891 (= e!818297 e!818294)))

(declare-fun res!984938 () Bool)

(assert (=> b!1453891 (=> (not res!984938) (not e!818294))))

(declare-fun lt!637359 () SeekEntryResult!11767)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453891 (= res!984938 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47492 a!2862) j!93) mask!2687) (select (arr!47492 a!2862) j!93) a!2862 mask!2687) lt!637359))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1453891 (= lt!637359 (Intermediate!11767 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1453892 () Bool)

(assert (=> b!1453892 (= e!818303 e!818297)))

(declare-fun res!984937 () Bool)

(assert (=> b!1453892 (=> (not res!984937) (not e!818297))))

(assert (=> b!1453892 (= res!984937 (= (select (store (arr!47492 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1453892 (= lt!637360 (array!98418 (store (arr!47492 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48043 a!2862)))))

(declare-fun b!1453893 () Bool)

(declare-fun e!818299 () Bool)

(declare-fun e!818296 () Bool)

(assert (=> b!1453893 (= e!818299 e!818296)))

(declare-fun res!984928 () Bool)

(assert (=> b!1453893 (=> res!984928 e!818296)))

(declare-fun lt!637357 () (_ BitVec 32))

(assert (=> b!1453893 (= res!984928 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637357 #b00000000000000000000000000000000) (bvsge lt!637357 (size!48043 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453893 (= lt!637357 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!637363 () SeekEntryResult!11767)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98417 (_ BitVec 32)) SeekEntryResult!11767)

(assert (=> b!1453893 (= lt!637363 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637358 lt!637360 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98417 (_ BitVec 32)) SeekEntryResult!11767)

(assert (=> b!1453893 (= lt!637363 (seekEntryOrOpen!0 lt!637358 lt!637360 mask!2687))))

(declare-fun b!1453894 () Bool)

(declare-fun res!984945 () Bool)

(assert (=> b!1453894 (=> (not res!984945) (not e!818303))))

(declare-datatypes ((List!34173 0))(
  ( (Nil!34170) (Cons!34169 (h!35519 (_ BitVec 64)) (t!48874 List!34173)) )
))
(declare-fun arrayNoDuplicates!0 (array!98417 (_ BitVec 32) List!34173) Bool)

(assert (=> b!1453894 (= res!984945 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34170))))

(declare-fun b!1453895 () Bool)

(declare-fun e!818301 () Bool)

(assert (=> b!1453895 (= e!818301 (not e!818299))))

(declare-fun res!984936 () Bool)

(assert (=> b!1453895 (=> res!984936 e!818299)))

(assert (=> b!1453895 (= res!984936 (or (and (= (select (arr!47492 a!2862) index!646) (select (store (arr!47492 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47492 a!2862) index!646) (select (arr!47492 a!2862) j!93))) (= (select (arr!47492 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1453895 e!818302))

(declare-fun res!984942 () Bool)

(assert (=> b!1453895 (=> (not res!984942) (not e!818302))))

(assert (=> b!1453895 (= res!984942 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48978 0))(
  ( (Unit!48979) )
))
(declare-fun lt!637356 () Unit!48978)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98417 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48978)

(assert (=> b!1453895 (= lt!637356 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun e!818300 () Bool)

(declare-fun b!1453896 () Bool)

(assert (=> b!1453896 (= e!818300 (not (= lt!637361 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637357 lt!637358 lt!637360 mask!2687))))))

(declare-fun b!1453897 () Bool)

(declare-fun res!984939 () Bool)

(assert (=> b!1453897 (=> (not res!984939) (not e!818301))))

(assert (=> b!1453897 (= res!984939 e!818298)))

(declare-fun c!133993 () Bool)

(assert (=> b!1453897 (= c!133993 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1453898 () Bool)

(declare-fun res!984930 () Bool)

(assert (=> b!1453898 (=> (not res!984930) (not e!818294))))

(assert (=> b!1453898 (= res!984930 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47492 a!2862) j!93) a!2862 mask!2687) lt!637359))))

(declare-fun b!1453899 () Bool)

(declare-fun res!984940 () Bool)

(assert (=> b!1453899 (=> res!984940 e!818296)))

(assert (=> b!1453899 (= res!984940 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637357 (select (arr!47492 a!2862) j!93) a!2862 mask!2687) lt!637359)))))

(declare-fun b!1453900 () Bool)

(declare-fun res!984931 () Bool)

(assert (=> b!1453900 (=> (not res!984931) (not e!818303))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1453900 (= res!984931 (validKeyInArray!0 (select (arr!47492 a!2862) i!1006)))))

(declare-fun b!1453901 () Bool)

(declare-fun res!984943 () Bool)

(assert (=> b!1453901 (=> (not res!984943) (not e!818303))))

(assert (=> b!1453901 (= res!984943 (validKeyInArray!0 (select (arr!47492 a!2862) j!93)))))

(declare-fun b!1453902 () Bool)

(assert (=> b!1453902 (= e!818298 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637358 lt!637360 mask!2687) (seekEntryOrOpen!0 lt!637358 lt!637360 mask!2687)))))

(declare-fun b!1453903 () Bool)

(declare-fun res!984944 () Bool)

(assert (=> b!1453903 (=> (not res!984944) (not e!818303))))

(assert (=> b!1453903 (= res!984944 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48043 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48043 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48043 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1453904 () Bool)

(assert (=> b!1453904 (= e!818296 true)))

(declare-fun lt!637362 () Bool)

(assert (=> b!1453904 (= lt!637362 e!818300)))

(declare-fun c!133994 () Bool)

(assert (=> b!1453904 (= c!133994 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1453905 () Bool)

(assert (=> b!1453905 (= e!818294 e!818301)))

(declare-fun res!984941 () Bool)

(assert (=> b!1453905 (=> (not res!984941) (not e!818301))))

(assert (=> b!1453905 (= res!984941 (= lt!637361 (Intermediate!11767 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1453905 (= lt!637361 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637358 mask!2687) lt!637358 lt!637360 mask!2687))))

(assert (=> b!1453905 (= lt!637358 (select (store (arr!47492 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1453906 () Bool)

(declare-fun res!984933 () Bool)

(assert (=> b!1453906 (=> (not res!984933) (not e!818301))))

(assert (=> b!1453906 (= res!984933 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1453907 () Bool)

(declare-fun res!984929 () Bool)

(assert (=> b!1453907 (=> (not res!984929) (not e!818303))))

(assert (=> b!1453907 (= res!984929 (and (= (size!48043 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48043 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48043 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1453908 () Bool)

(assert (=> b!1453908 (= e!818300 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637357 intermediateAfterIndex!19 lt!637358 lt!637360 mask!2687) lt!637363)))))

(declare-fun b!1453909 () Bool)

(declare-fun res!984934 () Bool)

(assert (=> b!1453909 (=> (not res!984934) (not e!818302))))

(assert (=> b!1453909 (= res!984934 (= (seekEntryOrOpen!0 (select (arr!47492 a!2862) j!93) a!2862 mask!2687) (Found!11767 j!93)))))

(assert (= (and start!125052 res!984935) b!1453907))

(assert (= (and b!1453907 res!984929) b!1453900))

(assert (= (and b!1453900 res!984931) b!1453901))

(assert (= (and b!1453901 res!984943) b!1453890))

(assert (= (and b!1453890 res!984932) b!1453894))

(assert (= (and b!1453894 res!984945) b!1453903))

(assert (= (and b!1453903 res!984944) b!1453892))

(assert (= (and b!1453892 res!984937) b!1453891))

(assert (= (and b!1453891 res!984938) b!1453898))

(assert (= (and b!1453898 res!984930) b!1453905))

(assert (= (and b!1453905 res!984941) b!1453897))

(assert (= (and b!1453897 c!133993) b!1453889))

(assert (= (and b!1453897 (not c!133993)) b!1453902))

(assert (= (and b!1453897 res!984939) b!1453906))

(assert (= (and b!1453906 res!984933) b!1453895))

(assert (= (and b!1453895 res!984942) b!1453909))

(assert (= (and b!1453909 res!984934) b!1453888))

(assert (= (and b!1453895 (not res!984936)) b!1453893))

(assert (= (and b!1453893 (not res!984928)) b!1453899))

(assert (= (and b!1453899 (not res!984940)) b!1453904))

(assert (= (and b!1453904 c!133994) b!1453896))

(assert (= (and b!1453904 (not c!133994)) b!1453908))

(declare-fun m!1342345 () Bool)

(assert (=> b!1453908 m!1342345))

(declare-fun m!1342347 () Bool)

(assert (=> b!1453899 m!1342347))

(assert (=> b!1453899 m!1342347))

(declare-fun m!1342349 () Bool)

(assert (=> b!1453899 m!1342349))

(assert (=> b!1453891 m!1342347))

(assert (=> b!1453891 m!1342347))

(declare-fun m!1342351 () Bool)

(assert (=> b!1453891 m!1342351))

(assert (=> b!1453891 m!1342351))

(assert (=> b!1453891 m!1342347))

(declare-fun m!1342353 () Bool)

(assert (=> b!1453891 m!1342353))

(declare-fun m!1342355 () Bool)

(assert (=> b!1453894 m!1342355))

(declare-fun m!1342357 () Bool)

(assert (=> b!1453889 m!1342357))

(declare-fun m!1342359 () Bool)

(assert (=> b!1453892 m!1342359))

(declare-fun m!1342361 () Bool)

(assert (=> b!1453892 m!1342361))

(declare-fun m!1342363 () Bool)

(assert (=> b!1453900 m!1342363))

(assert (=> b!1453900 m!1342363))

(declare-fun m!1342365 () Bool)

(assert (=> b!1453900 m!1342365))

(assert (=> b!1453909 m!1342347))

(assert (=> b!1453909 m!1342347))

(declare-fun m!1342367 () Bool)

(assert (=> b!1453909 m!1342367))

(declare-fun m!1342369 () Bool)

(assert (=> b!1453896 m!1342369))

(declare-fun m!1342371 () Bool)

(assert (=> b!1453895 m!1342371))

(assert (=> b!1453895 m!1342359))

(declare-fun m!1342373 () Bool)

(assert (=> b!1453895 m!1342373))

(declare-fun m!1342375 () Bool)

(assert (=> b!1453895 m!1342375))

(declare-fun m!1342377 () Bool)

(assert (=> b!1453895 m!1342377))

(assert (=> b!1453895 m!1342347))

(assert (=> b!1453898 m!1342347))

(assert (=> b!1453898 m!1342347))

(declare-fun m!1342379 () Bool)

(assert (=> b!1453898 m!1342379))

(declare-fun m!1342381 () Bool)

(assert (=> start!125052 m!1342381))

(declare-fun m!1342383 () Bool)

(assert (=> start!125052 m!1342383))

(declare-fun m!1342385 () Bool)

(assert (=> b!1453890 m!1342385))

(declare-fun m!1342387 () Bool)

(assert (=> b!1453905 m!1342387))

(assert (=> b!1453905 m!1342387))

(declare-fun m!1342389 () Bool)

(assert (=> b!1453905 m!1342389))

(assert (=> b!1453905 m!1342359))

(declare-fun m!1342391 () Bool)

(assert (=> b!1453905 m!1342391))

(assert (=> b!1453888 m!1342359))

(declare-fun m!1342393 () Bool)

(assert (=> b!1453888 m!1342393))

(assert (=> b!1453888 m!1342373))

(assert (=> b!1453888 m!1342375))

(assert (=> b!1453888 m!1342347))

(assert (=> b!1453901 m!1342347))

(assert (=> b!1453901 m!1342347))

(declare-fun m!1342395 () Bool)

(assert (=> b!1453901 m!1342395))

(declare-fun m!1342397 () Bool)

(assert (=> b!1453902 m!1342397))

(declare-fun m!1342399 () Bool)

(assert (=> b!1453902 m!1342399))

(declare-fun m!1342401 () Bool)

(assert (=> b!1453893 m!1342401))

(assert (=> b!1453893 m!1342397))

(assert (=> b!1453893 m!1342399))

(check-sat (not b!1453900) (not b!1453891) (not b!1453899) (not b!1453908) (not b!1453889) (not b!1453902) (not b!1453898) (not b!1453894) (not b!1453893) (not b!1453901) (not b!1453909) (not b!1453905) (not start!125052) (not b!1453896) (not b!1453890) (not b!1453895))
(check-sat)
