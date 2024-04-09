; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125094 () Bool)

(assert start!125094)

(declare-fun b!1455274 () Bool)

(declare-fun res!986072 () Bool)

(declare-fun e!818929 () Bool)

(assert (=> b!1455274 (=> (not res!986072) (not e!818929))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1455274 (= res!986072 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1455275 () Bool)

(declare-fun res!986078 () Bool)

(declare-fun e!818926 () Bool)

(assert (=> b!1455275 (=> (not res!986078) (not e!818926))))

(declare-datatypes ((array!98459 0))(
  ( (array!98460 (arr!47513 (Array (_ BitVec 32) (_ BitVec 64))) (size!48064 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98459)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98459 (_ BitVec 32)) Bool)

(assert (=> b!1455275 (= res!986078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun lt!637862 () array!98459)

(declare-fun lt!637861 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11788 0))(
  ( (MissingZero!11788 (index!49543 (_ BitVec 32))) (Found!11788 (index!49544 (_ BitVec 32))) (Intermediate!11788 (undefined!12600 Bool) (index!49545 (_ BitVec 32)) (x!131176 (_ BitVec 32))) (Undefined!11788) (MissingVacant!11788 (index!49546 (_ BitVec 32))) )
))
(declare-fun lt!637866 () SeekEntryResult!11788)

(declare-fun e!818932 () Bool)

(declare-fun b!1455276 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98459 (_ BitVec 32)) SeekEntryResult!11788)

(assert (=> b!1455276 (= e!818932 (= lt!637866 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637861 lt!637862 mask!2687)))))

(declare-fun b!1455277 () Bool)

(declare-fun res!986071 () Bool)

(declare-fun e!818924 () Bool)

(assert (=> b!1455277 (=> (not res!986071) (not e!818924))))

(declare-fun lt!637867 () SeekEntryResult!11788)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1455277 (= res!986071 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47513 a!2862) j!93) a!2862 mask!2687) lt!637867))))

(declare-fun b!1455278 () Bool)

(declare-fun e!818931 () Bool)

(assert (=> b!1455278 (= e!818926 e!818931)))

(declare-fun res!986063 () Bool)

(assert (=> b!1455278 (=> (not res!986063) (not e!818931))))

(assert (=> b!1455278 (= res!986063 (= (select (store (arr!47513 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1455278 (= lt!637862 (array!98460 (store (arr!47513 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48064 a!2862)))))

(declare-fun res!986065 () Bool)

(assert (=> start!125094 (=> (not res!986065) (not e!818926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125094 (= res!986065 (validMask!0 mask!2687))))

(assert (=> start!125094 e!818926))

(assert (=> start!125094 true))

(declare-fun array_inv!36458 (array!98459) Bool)

(assert (=> start!125094 (array_inv!36458 a!2862)))

(declare-fun b!1455279 () Bool)

(declare-fun res!986079 () Bool)

(assert (=> b!1455279 (=> (not res!986079) (not e!818926))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1455279 (= res!986079 (validKeyInArray!0 (select (arr!47513 a!2862) j!93)))))

(declare-fun b!1455280 () Bool)

(assert (=> b!1455280 (= e!818931 e!818924)))

(declare-fun res!986073 () Bool)

(assert (=> b!1455280 (=> (not res!986073) (not e!818924))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455280 (= res!986073 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47513 a!2862) j!93) mask!2687) (select (arr!47513 a!2862) j!93) a!2862 mask!2687) lt!637867))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1455280 (= lt!637867 (Intermediate!11788 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1455281 () Bool)

(declare-fun res!986064 () Bool)

(assert (=> b!1455281 (=> (not res!986064) (not e!818929))))

(assert (=> b!1455281 (= res!986064 e!818932)))

(declare-fun c!134120 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1455281 (= c!134120 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1455282 () Bool)

(declare-fun res!986070 () Bool)

(assert (=> b!1455282 (=> (not res!986070) (not e!818926))))

(assert (=> b!1455282 (= res!986070 (and (= (size!48064 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48064 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48064 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1455283 () Bool)

(declare-fun e!818930 () Bool)

(assert (=> b!1455283 (= e!818930 true)))

(declare-fun lt!637860 () Bool)

(declare-fun e!818927 () Bool)

(assert (=> b!1455283 (= lt!637860 e!818927)))

(declare-fun c!134119 () Bool)

(assert (=> b!1455283 (= c!134119 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1455284 () Bool)

(declare-fun res!986062 () Bool)

(assert (=> b!1455284 (=> (not res!986062) (not e!818926))))

(declare-datatypes ((List!34194 0))(
  ( (Nil!34191) (Cons!34190 (h!35540 (_ BitVec 64)) (t!48895 List!34194)) )
))
(declare-fun arrayNoDuplicates!0 (array!98459 (_ BitVec 32) List!34194) Bool)

(assert (=> b!1455284 (= res!986062 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34191))))

(declare-fun b!1455285 () Bool)

(declare-fun res!986074 () Bool)

(assert (=> b!1455285 (=> (not res!986074) (not e!818926))))

(assert (=> b!1455285 (= res!986074 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48064 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48064 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48064 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!818928 () Bool)

(declare-fun b!1455286 () Bool)

(assert (=> b!1455286 (= e!818928 (and (or (= (select (arr!47513 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47513 a!2862) intermediateBeforeIndex!19) (select (arr!47513 a!2862) j!93))) (let ((bdg!53146 (select (store (arr!47513 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47513 a!2862) index!646) bdg!53146) (= (select (arr!47513 a!2862) index!646) (select (arr!47513 a!2862) j!93))) (= (select (arr!47513 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53146 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1455287 () Bool)

(declare-fun res!986069 () Bool)

(assert (=> b!1455287 (=> (not res!986069) (not e!818928))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98459 (_ BitVec 32)) SeekEntryResult!11788)

(assert (=> b!1455287 (= res!986069 (= (seekEntryOrOpen!0 (select (arr!47513 a!2862) j!93) a!2862 mask!2687) (Found!11788 j!93)))))

(declare-fun b!1455288 () Bool)

(declare-fun e!818933 () Bool)

(assert (=> b!1455288 (= e!818933 e!818930)))

(declare-fun res!986066 () Bool)

(assert (=> b!1455288 (=> res!986066 e!818930)))

(declare-fun lt!637863 () (_ BitVec 32))

(assert (=> b!1455288 (= res!986066 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637863 #b00000000000000000000000000000000) (bvsge lt!637863 (size!48064 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455288 (= lt!637863 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!637865 () SeekEntryResult!11788)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98459 (_ BitVec 32)) SeekEntryResult!11788)

(assert (=> b!1455288 (= lt!637865 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637861 lt!637862 mask!2687))))

(assert (=> b!1455288 (= lt!637865 (seekEntryOrOpen!0 lt!637861 lt!637862 mask!2687))))

(declare-fun b!1455289 () Bool)

(assert (=> b!1455289 (= e!818932 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637861 lt!637862 mask!2687) (seekEntryOrOpen!0 lt!637861 lt!637862 mask!2687)))))

(declare-fun b!1455290 () Bool)

(declare-fun res!986076 () Bool)

(assert (=> b!1455290 (=> res!986076 e!818930)))

(assert (=> b!1455290 (= res!986076 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637863 (select (arr!47513 a!2862) j!93) a!2862 mask!2687) lt!637867)))))

(declare-fun b!1455291 () Bool)

(assert (=> b!1455291 (= e!818924 e!818929)))

(declare-fun res!986068 () Bool)

(assert (=> b!1455291 (=> (not res!986068) (not e!818929))))

(assert (=> b!1455291 (= res!986068 (= lt!637866 (Intermediate!11788 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1455291 (= lt!637866 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637861 mask!2687) lt!637861 lt!637862 mask!2687))))

(assert (=> b!1455291 (= lt!637861 (select (store (arr!47513 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1455292 () Bool)

(assert (=> b!1455292 (= e!818927 (not (= lt!637866 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637863 lt!637861 lt!637862 mask!2687))))))

(declare-fun b!1455293 () Bool)

(declare-fun res!986075 () Bool)

(assert (=> b!1455293 (=> (not res!986075) (not e!818926))))

(assert (=> b!1455293 (= res!986075 (validKeyInArray!0 (select (arr!47513 a!2862) i!1006)))))

(declare-fun b!1455294 () Bool)

(assert (=> b!1455294 (= e!818929 (not e!818933))))

(declare-fun res!986067 () Bool)

(assert (=> b!1455294 (=> res!986067 e!818933)))

(assert (=> b!1455294 (= res!986067 (or (and (= (select (arr!47513 a!2862) index!646) (select (store (arr!47513 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47513 a!2862) index!646) (select (arr!47513 a!2862) j!93))) (= (select (arr!47513 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1455294 e!818928))

(declare-fun res!986077 () Bool)

(assert (=> b!1455294 (=> (not res!986077) (not e!818928))))

(assert (=> b!1455294 (= res!986077 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49020 0))(
  ( (Unit!49021) )
))
(declare-fun lt!637864 () Unit!49020)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98459 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49020)

(assert (=> b!1455294 (= lt!637864 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1455295 () Bool)

(assert (=> b!1455295 (= e!818927 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637863 intermediateAfterIndex!19 lt!637861 lt!637862 mask!2687) lt!637865)))))

(assert (= (and start!125094 res!986065) b!1455282))

(assert (= (and b!1455282 res!986070) b!1455293))

(assert (= (and b!1455293 res!986075) b!1455279))

(assert (= (and b!1455279 res!986079) b!1455275))

(assert (= (and b!1455275 res!986078) b!1455284))

(assert (= (and b!1455284 res!986062) b!1455285))

(assert (= (and b!1455285 res!986074) b!1455278))

(assert (= (and b!1455278 res!986063) b!1455280))

(assert (= (and b!1455280 res!986073) b!1455277))

(assert (= (and b!1455277 res!986071) b!1455291))

(assert (= (and b!1455291 res!986068) b!1455281))

(assert (= (and b!1455281 c!134120) b!1455276))

(assert (= (and b!1455281 (not c!134120)) b!1455289))

(assert (= (and b!1455281 res!986064) b!1455274))

(assert (= (and b!1455274 res!986072) b!1455294))

(assert (= (and b!1455294 res!986077) b!1455287))

(assert (= (and b!1455287 res!986069) b!1455286))

(assert (= (and b!1455294 (not res!986067)) b!1455288))

(assert (= (and b!1455288 (not res!986066)) b!1455290))

(assert (= (and b!1455290 (not res!986076)) b!1455283))

(assert (= (and b!1455283 c!134119) b!1455292))

(assert (= (and b!1455283 (not c!134119)) b!1455295))

(declare-fun m!1343563 () Bool)

(assert (=> b!1455293 m!1343563))

(assert (=> b!1455293 m!1343563))

(declare-fun m!1343565 () Bool)

(assert (=> b!1455293 m!1343565))

(declare-fun m!1343567 () Bool)

(assert (=> b!1455291 m!1343567))

(assert (=> b!1455291 m!1343567))

(declare-fun m!1343569 () Bool)

(assert (=> b!1455291 m!1343569))

(declare-fun m!1343571 () Bool)

(assert (=> b!1455291 m!1343571))

(declare-fun m!1343573 () Bool)

(assert (=> b!1455291 m!1343573))

(declare-fun m!1343575 () Bool)

(assert (=> b!1455295 m!1343575))

(declare-fun m!1343577 () Bool)

(assert (=> b!1455289 m!1343577))

(declare-fun m!1343579 () Bool)

(assert (=> b!1455289 m!1343579))

(assert (=> b!1455286 m!1343571))

(declare-fun m!1343581 () Bool)

(assert (=> b!1455286 m!1343581))

(declare-fun m!1343583 () Bool)

(assert (=> b!1455286 m!1343583))

(declare-fun m!1343585 () Bool)

(assert (=> b!1455286 m!1343585))

(declare-fun m!1343587 () Bool)

(assert (=> b!1455286 m!1343587))

(assert (=> b!1455277 m!1343587))

(assert (=> b!1455277 m!1343587))

(declare-fun m!1343589 () Bool)

(assert (=> b!1455277 m!1343589))

(declare-fun m!1343591 () Bool)

(assert (=> b!1455284 m!1343591))

(assert (=> b!1455287 m!1343587))

(assert (=> b!1455287 m!1343587))

(declare-fun m!1343593 () Bool)

(assert (=> b!1455287 m!1343593))

(declare-fun m!1343595 () Bool)

(assert (=> b!1455288 m!1343595))

(assert (=> b!1455288 m!1343577))

(assert (=> b!1455288 m!1343579))

(declare-fun m!1343597 () Bool)

(assert (=> b!1455292 m!1343597))

(assert (=> b!1455278 m!1343571))

(declare-fun m!1343599 () Bool)

(assert (=> b!1455278 m!1343599))

(assert (=> b!1455279 m!1343587))

(assert (=> b!1455279 m!1343587))

(declare-fun m!1343601 () Bool)

(assert (=> b!1455279 m!1343601))

(declare-fun m!1343603 () Bool)

(assert (=> start!125094 m!1343603))

(declare-fun m!1343605 () Bool)

(assert (=> start!125094 m!1343605))

(assert (=> b!1455290 m!1343587))

(assert (=> b!1455290 m!1343587))

(declare-fun m!1343607 () Bool)

(assert (=> b!1455290 m!1343607))

(declare-fun m!1343609 () Bool)

(assert (=> b!1455276 m!1343609))

(declare-fun m!1343611 () Bool)

(assert (=> b!1455294 m!1343611))

(assert (=> b!1455294 m!1343571))

(assert (=> b!1455294 m!1343583))

(assert (=> b!1455294 m!1343585))

(declare-fun m!1343613 () Bool)

(assert (=> b!1455294 m!1343613))

(assert (=> b!1455294 m!1343587))

(assert (=> b!1455280 m!1343587))

(assert (=> b!1455280 m!1343587))

(declare-fun m!1343615 () Bool)

(assert (=> b!1455280 m!1343615))

(assert (=> b!1455280 m!1343615))

(assert (=> b!1455280 m!1343587))

(declare-fun m!1343617 () Bool)

(assert (=> b!1455280 m!1343617))

(declare-fun m!1343619 () Bool)

(assert (=> b!1455275 m!1343619))

(check-sat (not b!1455287) (not b!1455294) (not b!1455279) (not b!1455292) (not b!1455284) (not b!1455280) (not b!1455277) (not b!1455293) (not b!1455290) (not b!1455295) (not b!1455291) (not b!1455275) (not b!1455289) (not b!1455276) (not b!1455288) (not start!125094))
(check-sat)
