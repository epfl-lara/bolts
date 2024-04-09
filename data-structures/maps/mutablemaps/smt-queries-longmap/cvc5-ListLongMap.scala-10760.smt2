; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125920 () Bool)

(assert start!125920)

(declare-fun b!1473317 () Bool)

(declare-fun res!1000749 () Bool)

(declare-fun e!826808 () Bool)

(assert (=> b!1473317 (=> (not res!1000749) (not e!826808))))

(declare-datatypes ((array!99114 0))(
  ( (array!99115 (arr!47836 (Array (_ BitVec 32) (_ BitVec 64))) (size!48387 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99114)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1473317 (= res!1000749 (validKeyInArray!0 (select (arr!47836 a!2862) j!93)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!826804 () Bool)

(declare-fun b!1473318 () Bool)

(assert (=> b!1473318 (= e!826804 (or (= (select (arr!47836 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47836 a!2862) intermediateBeforeIndex!19) (select (arr!47836 a!2862) j!93))))))

(declare-fun b!1473319 () Bool)

(declare-fun res!1000755 () Bool)

(assert (=> b!1473319 (=> (not res!1000755) (not e!826808))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1473319 (= res!1000755 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48387 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48387 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48387 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1473320 () Bool)

(declare-fun res!1000758 () Bool)

(declare-fun e!826803 () Bool)

(assert (=> b!1473320 (=> (not res!1000758) (not e!826803))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1473320 (= res!1000758 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1473321 () Bool)

(declare-fun res!1000750 () Bool)

(assert (=> b!1473321 (=> (not res!1000750) (not e!826804))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12099 0))(
  ( (MissingZero!12099 (index!50787 (_ BitVec 32))) (Found!12099 (index!50788 (_ BitVec 32))) (Intermediate!12099 (undefined!12911 Bool) (index!50789 (_ BitVec 32)) (x!132378 (_ BitVec 32))) (Undefined!12099) (MissingVacant!12099 (index!50790 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99114 (_ BitVec 32)) SeekEntryResult!12099)

(assert (=> b!1473321 (= res!1000750 (= (seekEntryOrOpen!0 (select (arr!47836 a!2862) j!93) a!2862 mask!2687) (Found!12099 j!93)))))

(declare-fun res!1000757 () Bool)

(assert (=> start!125920 (=> (not res!1000757) (not e!826808))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125920 (= res!1000757 (validMask!0 mask!2687))))

(assert (=> start!125920 e!826808))

(assert (=> start!125920 true))

(declare-fun array_inv!36781 (array!99114) Bool)

(assert (=> start!125920 (array_inv!36781 a!2862)))

(declare-fun b!1473322 () Bool)

(declare-fun e!826801 () Bool)

(assert (=> b!1473322 (= e!826801 e!826803)))

(declare-fun res!1000751 () Bool)

(assert (=> b!1473322 (=> (not res!1000751) (not e!826803))))

(declare-fun lt!643858 () SeekEntryResult!12099)

(assert (=> b!1473322 (= res!1000751 (= lt!643858 (Intermediate!12099 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!643855 () array!99114)

(declare-fun lt!643853 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99114 (_ BitVec 32)) SeekEntryResult!12099)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1473322 (= lt!643858 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643853 mask!2687) lt!643853 lt!643855 mask!2687))))

(assert (=> b!1473322 (= lt!643853 (select (store (arr!47836 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun e!826802 () Bool)

(declare-fun b!1473323 () Bool)

(assert (=> b!1473323 (= e!826802 (= lt!643858 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643853 lt!643855 mask!2687)))))

(declare-fun b!1473324 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99114 (_ BitVec 32)) SeekEntryResult!12099)

(assert (=> b!1473324 (= e!826802 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643853 lt!643855 mask!2687) (seekEntryOrOpen!0 lt!643853 lt!643855 mask!2687)))))

(declare-fun b!1473325 () Bool)

(declare-fun e!826805 () Bool)

(assert (=> b!1473325 (= e!826808 e!826805)))

(declare-fun res!1000746 () Bool)

(assert (=> b!1473325 (=> (not res!1000746) (not e!826805))))

(assert (=> b!1473325 (= res!1000746 (= (select (store (arr!47836 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473325 (= lt!643855 (array!99115 (store (arr!47836 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48387 a!2862)))))

(declare-fun b!1473326 () Bool)

(declare-fun res!1000760 () Bool)

(assert (=> b!1473326 (=> (not res!1000760) (not e!826808))))

(assert (=> b!1473326 (= res!1000760 (and (= (size!48387 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48387 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48387 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1473327 () Bool)

(declare-fun res!1000759 () Bool)

(assert (=> b!1473327 (=> (not res!1000759) (not e!826801))))

(declare-fun lt!643857 () SeekEntryResult!12099)

(assert (=> b!1473327 (= res!1000759 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47836 a!2862) j!93) a!2862 mask!2687) lt!643857))))

(declare-fun b!1473328 () Bool)

(declare-fun e!826807 () Bool)

(assert (=> b!1473328 (= e!826803 (not e!826807))))

(declare-fun res!1000754 () Bool)

(assert (=> b!1473328 (=> res!1000754 e!826807)))

(assert (=> b!1473328 (= res!1000754 (or (not (= (select (arr!47836 a!2862) index!646) (select (store (arr!47836 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47836 a!2862) index!646) (select (arr!47836 a!2862) j!93)))))))

(assert (=> b!1473328 e!826804))

(declare-fun res!1000747 () Bool)

(assert (=> b!1473328 (=> (not res!1000747) (not e!826804))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99114 (_ BitVec 32)) Bool)

(assert (=> b!1473328 (= res!1000747 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49486 0))(
  ( (Unit!49487) )
))
(declare-fun lt!643854 () Unit!49486)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99114 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49486)

(assert (=> b!1473328 (= lt!643854 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1473329 () Bool)

(assert (=> b!1473329 (= e!826807 true)))

(declare-fun lt!643856 () SeekEntryResult!12099)

(assert (=> b!1473329 (= lt!643856 (seekEntryOrOpen!0 lt!643853 lt!643855 mask!2687))))

(declare-fun b!1473330 () Bool)

(declare-fun res!1000761 () Bool)

(assert (=> b!1473330 (=> (not res!1000761) (not e!826803))))

(assert (=> b!1473330 (= res!1000761 e!826802)))

(declare-fun c!135803 () Bool)

(assert (=> b!1473330 (= c!135803 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1473331 () Bool)

(assert (=> b!1473331 (= e!826805 e!826801)))

(declare-fun res!1000753 () Bool)

(assert (=> b!1473331 (=> (not res!1000753) (not e!826801))))

(assert (=> b!1473331 (= res!1000753 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47836 a!2862) j!93) mask!2687) (select (arr!47836 a!2862) j!93) a!2862 mask!2687) lt!643857))))

(assert (=> b!1473331 (= lt!643857 (Intermediate!12099 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1473332 () Bool)

(declare-fun res!1000748 () Bool)

(assert (=> b!1473332 (=> (not res!1000748) (not e!826808))))

(assert (=> b!1473332 (= res!1000748 (validKeyInArray!0 (select (arr!47836 a!2862) i!1006)))))

(declare-fun b!1473333 () Bool)

(declare-fun res!1000756 () Bool)

(assert (=> b!1473333 (=> (not res!1000756) (not e!826808))))

(assert (=> b!1473333 (= res!1000756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1473334 () Bool)

(declare-fun res!1000752 () Bool)

(assert (=> b!1473334 (=> (not res!1000752) (not e!826808))))

(declare-datatypes ((List!34517 0))(
  ( (Nil!34514) (Cons!34513 (h!35872 (_ BitVec 64)) (t!49218 List!34517)) )
))
(declare-fun arrayNoDuplicates!0 (array!99114 (_ BitVec 32) List!34517) Bool)

(assert (=> b!1473334 (= res!1000752 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34514))))

(assert (= (and start!125920 res!1000757) b!1473326))

(assert (= (and b!1473326 res!1000760) b!1473332))

(assert (= (and b!1473332 res!1000748) b!1473317))

(assert (= (and b!1473317 res!1000749) b!1473333))

(assert (= (and b!1473333 res!1000756) b!1473334))

(assert (= (and b!1473334 res!1000752) b!1473319))

(assert (= (and b!1473319 res!1000755) b!1473325))

(assert (= (and b!1473325 res!1000746) b!1473331))

(assert (= (and b!1473331 res!1000753) b!1473327))

(assert (= (and b!1473327 res!1000759) b!1473322))

(assert (= (and b!1473322 res!1000751) b!1473330))

(assert (= (and b!1473330 c!135803) b!1473323))

(assert (= (and b!1473330 (not c!135803)) b!1473324))

(assert (= (and b!1473330 res!1000761) b!1473320))

(assert (= (and b!1473320 res!1000758) b!1473328))

(assert (= (and b!1473328 res!1000747) b!1473321))

(assert (= (and b!1473321 res!1000750) b!1473318))

(assert (= (and b!1473328 (not res!1000754)) b!1473329))

(declare-fun m!1359903 () Bool)

(assert (=> b!1473332 m!1359903))

(assert (=> b!1473332 m!1359903))

(declare-fun m!1359905 () Bool)

(assert (=> b!1473332 m!1359905))

(declare-fun m!1359907 () Bool)

(assert (=> b!1473318 m!1359907))

(declare-fun m!1359909 () Bool)

(assert (=> b!1473318 m!1359909))

(assert (=> b!1473321 m!1359909))

(assert (=> b!1473321 m!1359909))

(declare-fun m!1359911 () Bool)

(assert (=> b!1473321 m!1359911))

(declare-fun m!1359913 () Bool)

(assert (=> b!1473333 m!1359913))

(declare-fun m!1359915 () Bool)

(assert (=> b!1473322 m!1359915))

(assert (=> b!1473322 m!1359915))

(declare-fun m!1359917 () Bool)

(assert (=> b!1473322 m!1359917))

(declare-fun m!1359919 () Bool)

(assert (=> b!1473322 m!1359919))

(declare-fun m!1359921 () Bool)

(assert (=> b!1473322 m!1359921))

(declare-fun m!1359923 () Bool)

(assert (=> b!1473334 m!1359923))

(declare-fun m!1359925 () Bool)

(assert (=> b!1473323 m!1359925))

(declare-fun m!1359927 () Bool)

(assert (=> b!1473329 m!1359927))

(declare-fun m!1359929 () Bool)

(assert (=> start!125920 m!1359929))

(declare-fun m!1359931 () Bool)

(assert (=> start!125920 m!1359931))

(assert (=> b!1473325 m!1359919))

(declare-fun m!1359933 () Bool)

(assert (=> b!1473325 m!1359933))

(declare-fun m!1359935 () Bool)

(assert (=> b!1473324 m!1359935))

(assert (=> b!1473324 m!1359927))

(assert (=> b!1473331 m!1359909))

(assert (=> b!1473331 m!1359909))

(declare-fun m!1359937 () Bool)

(assert (=> b!1473331 m!1359937))

(assert (=> b!1473331 m!1359937))

(assert (=> b!1473331 m!1359909))

(declare-fun m!1359939 () Bool)

(assert (=> b!1473331 m!1359939))

(assert (=> b!1473317 m!1359909))

(assert (=> b!1473317 m!1359909))

(declare-fun m!1359941 () Bool)

(assert (=> b!1473317 m!1359941))

(declare-fun m!1359943 () Bool)

(assert (=> b!1473328 m!1359943))

(assert (=> b!1473328 m!1359919))

(declare-fun m!1359945 () Bool)

(assert (=> b!1473328 m!1359945))

(declare-fun m!1359947 () Bool)

(assert (=> b!1473328 m!1359947))

(declare-fun m!1359949 () Bool)

(assert (=> b!1473328 m!1359949))

(assert (=> b!1473328 m!1359909))

(assert (=> b!1473327 m!1359909))

(assert (=> b!1473327 m!1359909))

(declare-fun m!1359951 () Bool)

(assert (=> b!1473327 m!1359951))

(push 1)

