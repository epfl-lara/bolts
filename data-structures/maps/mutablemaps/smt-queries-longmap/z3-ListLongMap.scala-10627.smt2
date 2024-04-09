; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124944 () Bool)

(assert start!124944)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!636459 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!817022 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1450922 () Bool)

(declare-datatypes ((array!98309 0))(
  ( (array!98310 (arr!47438 (Array (_ BitVec 32) (_ BitVec 64))) (size!47989 (_ BitVec 32))) )
))
(declare-fun lt!636457 () array!98309)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11713 0))(
  ( (MissingZero!11713 (index!49243 (_ BitVec 32))) (Found!11713 (index!49244 (_ BitVec 32))) (Intermediate!11713 (undefined!12525 Bool) (index!49245 (_ BitVec 32)) (x!130901 (_ BitVec 32))) (Undefined!11713) (MissingVacant!11713 (index!49246 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98309 (_ BitVec 32)) SeekEntryResult!11713)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98309 (_ BitVec 32)) SeekEntryResult!11713)

(assert (=> b!1450922 (= e!817022 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636459 lt!636457 mask!2687) (seekEntryOrOpen!0 lt!636459 lt!636457 mask!2687)))))

(declare-fun b!1450923 () Bool)

(declare-fun res!982318 () Bool)

(declare-fun e!817014 () Bool)

(assert (=> b!1450923 (=> (not res!982318) (not e!817014))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98309)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1450923 (= res!982318 (and (= (size!47989 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47989 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47989 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1450925 () Bool)

(declare-fun res!982326 () Bool)

(declare-fun e!817013 () Bool)

(assert (=> b!1450925 (=> res!982326 e!817013)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!636463 () SeekEntryResult!11713)

(assert (=> b!1450925 (= res!982326 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47438 a!2862) j!93) a!2862 mask!2687) lt!636463)))))

(declare-fun b!1450926 () Bool)

(declare-fun res!982314 () Bool)

(assert (=> b!1450926 (=> (not res!982314) (not e!817014))))

(declare-datatypes ((List!34119 0))(
  ( (Nil!34116) (Cons!34115 (h!35465 (_ BitVec 64)) (t!48820 List!34119)) )
))
(declare-fun arrayNoDuplicates!0 (array!98309 (_ BitVec 32) List!34119) Bool)

(assert (=> b!1450926 (= res!982314 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34116))))

(declare-fun b!1450927 () Bool)

(declare-fun res!982325 () Bool)

(assert (=> b!1450927 (=> (not res!982325) (not e!817014))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1450927 (= res!982325 (validKeyInArray!0 (select (arr!47438 a!2862) j!93)))))

(declare-fun b!1450928 () Bool)

(declare-fun res!982330 () Bool)

(assert (=> b!1450928 (=> (not res!982330) (not e!817014))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98309 (_ BitVec 32)) Bool)

(assert (=> b!1450928 (= res!982330 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1450929 () Bool)

(declare-fun res!982321 () Bool)

(declare-fun e!817017 () Bool)

(assert (=> b!1450929 (=> (not res!982321) (not e!817017))))

(declare-fun lt!636461 () SeekEntryResult!11713)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98309 (_ BitVec 32)) SeekEntryResult!11713)

(assert (=> b!1450929 (= res!982321 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47438 a!2862) j!93) a!2862 mask!2687) lt!636461))))

(declare-fun b!1450930 () Bool)

(declare-fun e!817012 () Bool)

(assert (=> b!1450930 (= e!817017 e!817012)))

(declare-fun res!982324 () Bool)

(assert (=> b!1450930 (=> (not res!982324) (not e!817012))))

(declare-fun lt!636456 () SeekEntryResult!11713)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1450930 (= res!982324 (= lt!636456 (Intermediate!11713 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1450930 (= lt!636456 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636459 mask!2687) lt!636459 lt!636457 mask!2687))))

(assert (=> b!1450930 (= lt!636459 (select (store (arr!47438 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1450931 () Bool)

(declare-fun res!982327 () Bool)

(assert (=> b!1450931 (=> (not res!982327) (not e!817012))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1450931 (= res!982327 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1450932 () Bool)

(assert (=> b!1450932 (= e!817022 (= lt!636456 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636459 lt!636457 mask!2687)))))

(declare-fun b!1450933 () Bool)

(declare-fun res!982320 () Bool)

(assert (=> b!1450933 (=> (not res!982320) (not e!817014))))

(assert (=> b!1450933 (= res!982320 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47989 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47989 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47989 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1450934 () Bool)

(declare-fun e!817020 () Bool)

(declare-fun e!817019 () Bool)

(assert (=> b!1450934 (= e!817020 e!817019)))

(declare-fun res!982322 () Bool)

(assert (=> b!1450934 (=> res!982322 e!817019)))

(assert (=> b!1450934 (= res!982322 (or (and (= (select (arr!47438 a!2862) index!646) (select (store (arr!47438 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47438 a!2862) index!646) (select (arr!47438 a!2862) j!93))) (not (= (select (arr!47438 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1450935 () Bool)

(declare-fun e!817015 () Bool)

(assert (=> b!1450935 (= e!817013 e!817015)))

(declare-fun res!982332 () Bool)

(assert (=> b!1450935 (=> res!982332 e!817015)))

(assert (=> b!1450935 (= res!982332 (bvslt mask!2687 #b00000000000000000000000000000000))))

(assert (=> b!1450935 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636459 lt!636457 mask!2687) lt!636463)))

(declare-datatypes ((Unit!48870 0))(
  ( (Unit!48871) )
))
(declare-fun lt!636460 () Unit!48870)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98309 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48870)

(assert (=> b!1450935 (= lt!636460 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1450936 () Bool)

(declare-fun e!817021 () Bool)

(assert (=> b!1450936 (= e!817019 e!817021)))

(declare-fun res!982316 () Bool)

(assert (=> b!1450936 (=> (not res!982316) (not e!817021))))

(declare-fun lt!636462 () SeekEntryResult!11713)

(assert (=> b!1450936 (= res!982316 (= lt!636462 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47438 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1450937 () Bool)

(declare-fun e!817016 () Bool)

(assert (=> b!1450937 (= e!817016 e!817017)))

(declare-fun res!982323 () Bool)

(assert (=> b!1450937 (=> (not res!982323) (not e!817017))))

(assert (=> b!1450937 (= res!982323 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47438 a!2862) j!93) mask!2687) (select (arr!47438 a!2862) j!93) a!2862 mask!2687) lt!636461))))

(assert (=> b!1450937 (= lt!636461 (Intermediate!11713 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1450938 () Bool)

(assert (=> b!1450938 (= e!817012 (not e!817013))))

(declare-fun res!982328 () Bool)

(assert (=> b!1450938 (=> res!982328 e!817013)))

(assert (=> b!1450938 (= res!982328 (or (and (= (select (arr!47438 a!2862) index!646) (select (store (arr!47438 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47438 a!2862) index!646) (select (arr!47438 a!2862) j!93))) (not (= (select (arr!47438 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47438 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1450938 e!817020))

(declare-fun res!982315 () Bool)

(assert (=> b!1450938 (=> (not res!982315) (not e!817020))))

(assert (=> b!1450938 (= res!982315 (and (= lt!636462 lt!636463) (or (= (select (arr!47438 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47438 a!2862) intermediateBeforeIndex!19) (select (arr!47438 a!2862) j!93)))))))

(assert (=> b!1450938 (= lt!636463 (Found!11713 j!93))))

(assert (=> b!1450938 (= lt!636462 (seekEntryOrOpen!0 (select (arr!47438 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1450938 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!636458 () Unit!48870)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98309 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48870)

(assert (=> b!1450938 (= lt!636458 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1450924 () Bool)

(assert (=> b!1450924 (= e!817014 e!817016)))

(declare-fun res!982317 () Bool)

(assert (=> b!1450924 (=> (not res!982317) (not e!817016))))

(assert (=> b!1450924 (= res!982317 (= (select (store (arr!47438 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1450924 (= lt!636457 (array!98310 (store (arr!47438 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47989 a!2862)))))

(declare-fun res!982331 () Bool)

(assert (=> start!124944 (=> (not res!982331) (not e!817014))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124944 (= res!982331 (validMask!0 mask!2687))))

(assert (=> start!124944 e!817014))

(assert (=> start!124944 true))

(declare-fun array_inv!36383 (array!98309) Bool)

(assert (=> start!124944 (array_inv!36383 a!2862)))

(declare-fun b!1450939 () Bool)

(declare-fun res!982319 () Bool)

(assert (=> b!1450939 (=> (not res!982319) (not e!817014))))

(assert (=> b!1450939 (= res!982319 (validKeyInArray!0 (select (arr!47438 a!2862) i!1006)))))

(declare-fun b!1450940 () Bool)

(declare-fun res!982329 () Bool)

(assert (=> b!1450940 (=> (not res!982329) (not e!817012))))

(assert (=> b!1450940 (= res!982329 e!817022)))

(declare-fun c!133817 () Bool)

(assert (=> b!1450940 (= c!133817 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1450941 () Bool)

(assert (=> b!1450941 (= e!817015 (validKeyInArray!0 lt!636459))))

(declare-fun b!1450942 () Bool)

(assert (=> b!1450942 (= e!817021 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(assert (= (and start!124944 res!982331) b!1450923))

(assert (= (and b!1450923 res!982318) b!1450939))

(assert (= (and b!1450939 res!982319) b!1450927))

(assert (= (and b!1450927 res!982325) b!1450928))

(assert (= (and b!1450928 res!982330) b!1450926))

(assert (= (and b!1450926 res!982314) b!1450933))

(assert (= (and b!1450933 res!982320) b!1450924))

(assert (= (and b!1450924 res!982317) b!1450937))

(assert (= (and b!1450937 res!982323) b!1450929))

(assert (= (and b!1450929 res!982321) b!1450930))

(assert (= (and b!1450930 res!982324) b!1450940))

(assert (= (and b!1450940 c!133817) b!1450932))

(assert (= (and b!1450940 (not c!133817)) b!1450922))

(assert (= (and b!1450940 res!982329) b!1450931))

(assert (= (and b!1450931 res!982327) b!1450938))

(assert (= (and b!1450938 res!982315) b!1450934))

(assert (= (and b!1450934 (not res!982322)) b!1450936))

(assert (= (and b!1450936 res!982316) b!1450942))

(assert (= (and b!1450938 (not res!982328)) b!1450925))

(assert (= (and b!1450925 (not res!982326)) b!1450935))

(assert (= (and b!1450935 (not res!982332)) b!1450941))

(declare-fun m!1339585 () Bool)

(assert (=> b!1450926 m!1339585))

(declare-fun m!1339587 () Bool)

(assert (=> b!1450941 m!1339587))

(declare-fun m!1339589 () Bool)

(assert (=> b!1450937 m!1339589))

(assert (=> b!1450937 m!1339589))

(declare-fun m!1339591 () Bool)

(assert (=> b!1450937 m!1339591))

(assert (=> b!1450937 m!1339591))

(assert (=> b!1450937 m!1339589))

(declare-fun m!1339593 () Bool)

(assert (=> b!1450937 m!1339593))

(declare-fun m!1339595 () Bool)

(assert (=> b!1450932 m!1339595))

(declare-fun m!1339597 () Bool)

(assert (=> b!1450938 m!1339597))

(declare-fun m!1339599 () Bool)

(assert (=> b!1450938 m!1339599))

(declare-fun m!1339601 () Bool)

(assert (=> b!1450938 m!1339601))

(declare-fun m!1339603 () Bool)

(assert (=> b!1450938 m!1339603))

(declare-fun m!1339605 () Bool)

(assert (=> b!1450938 m!1339605))

(assert (=> b!1450938 m!1339589))

(declare-fun m!1339607 () Bool)

(assert (=> b!1450938 m!1339607))

(declare-fun m!1339609 () Bool)

(assert (=> b!1450938 m!1339609))

(assert (=> b!1450938 m!1339589))

(assert (=> b!1450934 m!1339605))

(assert (=> b!1450934 m!1339599))

(assert (=> b!1450934 m!1339603))

(assert (=> b!1450934 m!1339589))

(declare-fun m!1339611 () Bool)

(assert (=> b!1450939 m!1339611))

(assert (=> b!1450939 m!1339611))

(declare-fun m!1339613 () Bool)

(assert (=> b!1450939 m!1339613))

(assert (=> b!1450929 m!1339589))

(assert (=> b!1450929 m!1339589))

(declare-fun m!1339615 () Bool)

(assert (=> b!1450929 m!1339615))

(assert (=> b!1450936 m!1339589))

(assert (=> b!1450936 m!1339589))

(declare-fun m!1339617 () Bool)

(assert (=> b!1450936 m!1339617))

(assert (=> b!1450924 m!1339599))

(declare-fun m!1339619 () Bool)

(assert (=> b!1450924 m!1339619))

(declare-fun m!1339621 () Bool)

(assert (=> b!1450928 m!1339621))

(declare-fun m!1339623 () Bool)

(assert (=> b!1450935 m!1339623))

(declare-fun m!1339625 () Bool)

(assert (=> b!1450935 m!1339625))

(assert (=> b!1450927 m!1339589))

(assert (=> b!1450927 m!1339589))

(declare-fun m!1339627 () Bool)

(assert (=> b!1450927 m!1339627))

(declare-fun m!1339629 () Bool)

(assert (=> start!124944 m!1339629))

(declare-fun m!1339631 () Bool)

(assert (=> start!124944 m!1339631))

(assert (=> b!1450925 m!1339589))

(assert (=> b!1450925 m!1339589))

(declare-fun m!1339633 () Bool)

(assert (=> b!1450925 m!1339633))

(declare-fun m!1339635 () Bool)

(assert (=> b!1450930 m!1339635))

(assert (=> b!1450930 m!1339635))

(declare-fun m!1339637 () Bool)

(assert (=> b!1450930 m!1339637))

(assert (=> b!1450930 m!1339599))

(declare-fun m!1339639 () Bool)

(assert (=> b!1450930 m!1339639))

(assert (=> b!1450922 m!1339623))

(declare-fun m!1339641 () Bool)

(assert (=> b!1450922 m!1339641))

(check-sat (not b!1450932) (not b!1450925) (not b!1450937) (not b!1450941) (not b!1450927) (not b!1450926) (not start!124944) (not b!1450936) (not b!1450930) (not b!1450928) (not b!1450935) (not b!1450938) (not b!1450929) (not b!1450939) (not b!1450922))
(check-sat)
