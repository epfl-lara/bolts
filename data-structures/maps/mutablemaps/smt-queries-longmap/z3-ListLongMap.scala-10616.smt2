; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124878 () Bool)

(assert start!124878)

(declare-fun b!1448968 () Bool)

(declare-fun res!980563 () Bool)

(declare-fun e!816019 () Bool)

(assert (=> b!1448968 (=> (not res!980563) (not e!816019))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1448968 (= res!980563 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1448969 () Bool)

(declare-fun res!980573 () Bool)

(declare-fun e!816026 () Bool)

(assert (=> b!1448969 (=> (not res!980573) (not e!816026))))

(declare-datatypes ((array!98243 0))(
  ( (array!98244 (arr!47405 (Array (_ BitVec 32) (_ BitVec 64))) (size!47956 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98243)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98243 (_ BitVec 32)) Bool)

(assert (=> b!1448969 (= res!980573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1448970 () Bool)

(declare-fun e!816024 () Bool)

(assert (=> b!1448970 (= e!816019 (not e!816024))))

(declare-fun res!980560 () Bool)

(assert (=> b!1448970 (=> res!980560 e!816024)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1448970 (= res!980560 (or (and (= (select (arr!47405 a!2862) index!646) (select (store (arr!47405 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47405 a!2862) index!646) (select (arr!47405 a!2862) j!93))) (not (= (select (arr!47405 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47405 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!816021 () Bool)

(assert (=> b!1448970 e!816021))

(declare-fun res!980574 () Bool)

(assert (=> b!1448970 (=> (not res!980574) (not e!816021))))

(declare-datatypes ((SeekEntryResult!11680 0))(
  ( (MissingZero!11680 (index!49111 (_ BitVec 32))) (Found!11680 (index!49112 (_ BitVec 32))) (Intermediate!11680 (undefined!12492 Bool) (index!49113 (_ BitVec 32)) (x!130780 (_ BitVec 32))) (Undefined!11680) (MissingVacant!11680 (index!49114 (_ BitVec 32))) )
))
(declare-fun lt!635699 () SeekEntryResult!11680)

(assert (=> b!1448970 (= res!980574 (and (= lt!635699 (Found!11680 j!93)) (or (= (select (arr!47405 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47405 a!2862) intermediateBeforeIndex!19) (select (arr!47405 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98243 (_ BitVec 32)) SeekEntryResult!11680)

(assert (=> b!1448970 (= lt!635699 (seekEntryOrOpen!0 (select (arr!47405 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1448970 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48804 0))(
  ( (Unit!48805) )
))
(declare-fun lt!635697 () Unit!48804)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98243 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48804)

(assert (=> b!1448970 (= lt!635697 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1448971 () Bool)

(declare-fun res!980562 () Bool)

(assert (=> b!1448971 (=> (not res!980562) (not e!816026))))

(assert (=> b!1448971 (= res!980562 (and (= (size!47956 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47956 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47956 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1448972 () Bool)

(declare-fun res!980559 () Bool)

(declare-fun e!816018 () Bool)

(assert (=> b!1448972 (=> (not res!980559) (not e!816018))))

(declare-fun lt!635696 () SeekEntryResult!11680)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98243 (_ BitVec 32)) SeekEntryResult!11680)

(assert (=> b!1448972 (= res!980559 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47405 a!2862) j!93) a!2862 mask!2687) lt!635696))))

(declare-fun b!1448973 () Bool)

(declare-fun res!980570 () Bool)

(assert (=> b!1448973 (=> (not res!980570) (not e!816026))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1448973 (= res!980570 (validKeyInArray!0 (select (arr!47405 a!2862) j!93)))))

(declare-fun b!1448974 () Bool)

(declare-fun e!816020 () Bool)

(declare-fun e!816025 () Bool)

(assert (=> b!1448974 (= e!816020 e!816025)))

(declare-fun res!980568 () Bool)

(assert (=> b!1448974 (=> (not res!980568) (not e!816025))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98243 (_ BitVec 32)) SeekEntryResult!11680)

(assert (=> b!1448974 (= res!980568 (= lt!635699 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47405 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1448975 () Bool)

(assert (=> b!1448975 (= e!816025 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1448976 () Bool)

(declare-fun res!980561 () Bool)

(assert (=> b!1448976 (=> (not res!980561) (not e!816026))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1448976 (= res!980561 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47956 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47956 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47956 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1448977 () Bool)

(declare-fun e!816017 () Bool)

(assert (=> b!1448977 (= e!816017 e!816018)))

(declare-fun res!980569 () Bool)

(assert (=> b!1448977 (=> (not res!980569) (not e!816018))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1448977 (= res!980569 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47405 a!2862) j!93) mask!2687) (select (arr!47405 a!2862) j!93) a!2862 mask!2687) lt!635696))))

(assert (=> b!1448977 (= lt!635696 (Intermediate!11680 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1448978 () Bool)

(assert (=> b!1448978 (= e!816018 e!816019)))

(declare-fun res!980566 () Bool)

(assert (=> b!1448978 (=> (not res!980566) (not e!816019))))

(declare-fun lt!635701 () SeekEntryResult!11680)

(assert (=> b!1448978 (= res!980566 (= lt!635701 (Intermediate!11680 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!635695 () (_ BitVec 64))

(declare-fun lt!635700 () array!98243)

(assert (=> b!1448978 (= lt!635701 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635695 mask!2687) lt!635695 lt!635700 mask!2687))))

(assert (=> b!1448978 (= lt!635695 (select (store (arr!47405 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun e!816022 () Bool)

(declare-fun b!1448979 () Bool)

(assert (=> b!1448979 (= e!816022 (= lt!635701 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635695 lt!635700 mask!2687)))))

(declare-fun b!1448980 () Bool)

(assert (=> b!1448980 (= e!816022 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635695 lt!635700 mask!2687) (seekEntryOrOpen!0 lt!635695 lt!635700 mask!2687)))))

(declare-fun b!1448981 () Bool)

(assert (=> b!1448981 (= e!816021 e!816020)))

(declare-fun res!980572 () Bool)

(assert (=> b!1448981 (=> res!980572 e!816020)))

(assert (=> b!1448981 (= res!980572 (or (and (= (select (arr!47405 a!2862) index!646) (select (store (arr!47405 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47405 a!2862) index!646) (select (arr!47405 a!2862) j!93))) (not (= (select (arr!47405 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1448982 () Bool)

(declare-fun res!980564 () Bool)

(assert (=> b!1448982 (=> (not res!980564) (not e!816026))))

(declare-datatypes ((List!34086 0))(
  ( (Nil!34083) (Cons!34082 (h!35432 (_ BitVec 64)) (t!48787 List!34086)) )
))
(declare-fun arrayNoDuplicates!0 (array!98243 (_ BitVec 32) List!34086) Bool)

(assert (=> b!1448982 (= res!980564 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34083))))

(declare-fun b!1448983 () Bool)

(declare-fun res!980571 () Bool)

(assert (=> b!1448983 (=> (not res!980571) (not e!816026))))

(assert (=> b!1448983 (= res!980571 (validKeyInArray!0 (select (arr!47405 a!2862) i!1006)))))

(declare-fun res!980558 () Bool)

(assert (=> start!124878 (=> (not res!980558) (not e!816026))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124878 (= res!980558 (validMask!0 mask!2687))))

(assert (=> start!124878 e!816026))

(assert (=> start!124878 true))

(declare-fun array_inv!36350 (array!98243) Bool)

(assert (=> start!124878 (array_inv!36350 a!2862)))

(declare-fun b!1448984 () Bool)

(declare-fun res!980567 () Bool)

(assert (=> b!1448984 (=> (not res!980567) (not e!816019))))

(assert (=> b!1448984 (= res!980567 e!816022)))

(declare-fun c!133718 () Bool)

(assert (=> b!1448984 (= c!133718 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1448985 () Bool)

(assert (=> b!1448985 (= e!816024 true)))

(declare-fun lt!635698 () SeekEntryResult!11680)

(assert (=> b!1448985 (= lt!635698 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47405 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1448986 () Bool)

(assert (=> b!1448986 (= e!816026 e!816017)))

(declare-fun res!980565 () Bool)

(assert (=> b!1448986 (=> (not res!980565) (not e!816017))))

(assert (=> b!1448986 (= res!980565 (= (select (store (arr!47405 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1448986 (= lt!635700 (array!98244 (store (arr!47405 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47956 a!2862)))))

(assert (= (and start!124878 res!980558) b!1448971))

(assert (= (and b!1448971 res!980562) b!1448983))

(assert (= (and b!1448983 res!980571) b!1448973))

(assert (= (and b!1448973 res!980570) b!1448969))

(assert (= (and b!1448969 res!980573) b!1448982))

(assert (= (and b!1448982 res!980564) b!1448976))

(assert (= (and b!1448976 res!980561) b!1448986))

(assert (= (and b!1448986 res!980565) b!1448977))

(assert (= (and b!1448977 res!980569) b!1448972))

(assert (= (and b!1448972 res!980559) b!1448978))

(assert (= (and b!1448978 res!980566) b!1448984))

(assert (= (and b!1448984 c!133718) b!1448979))

(assert (= (and b!1448984 (not c!133718)) b!1448980))

(assert (= (and b!1448984 res!980567) b!1448968))

(assert (= (and b!1448968 res!980563) b!1448970))

(assert (= (and b!1448970 res!980574) b!1448981))

(assert (= (and b!1448981 (not res!980572)) b!1448974))

(assert (= (and b!1448974 res!980568) b!1448975))

(assert (= (and b!1448970 (not res!980560)) b!1448985))

(declare-fun m!1337757 () Bool)

(assert (=> b!1448970 m!1337757))

(declare-fun m!1337759 () Bool)

(assert (=> b!1448970 m!1337759))

(declare-fun m!1337761 () Bool)

(assert (=> b!1448970 m!1337761))

(declare-fun m!1337763 () Bool)

(assert (=> b!1448970 m!1337763))

(declare-fun m!1337765 () Bool)

(assert (=> b!1448970 m!1337765))

(declare-fun m!1337767 () Bool)

(assert (=> b!1448970 m!1337767))

(declare-fun m!1337769 () Bool)

(assert (=> b!1448970 m!1337769))

(declare-fun m!1337771 () Bool)

(assert (=> b!1448970 m!1337771))

(assert (=> b!1448970 m!1337767))

(declare-fun m!1337773 () Bool)

(assert (=> b!1448983 m!1337773))

(assert (=> b!1448983 m!1337773))

(declare-fun m!1337775 () Bool)

(assert (=> b!1448983 m!1337775))

(declare-fun m!1337777 () Bool)

(assert (=> b!1448969 m!1337777))

(declare-fun m!1337779 () Bool)

(assert (=> b!1448980 m!1337779))

(declare-fun m!1337781 () Bool)

(assert (=> b!1448980 m!1337781))

(assert (=> b!1448974 m!1337767))

(assert (=> b!1448974 m!1337767))

(declare-fun m!1337783 () Bool)

(assert (=> b!1448974 m!1337783))

(assert (=> b!1448977 m!1337767))

(assert (=> b!1448977 m!1337767))

(declare-fun m!1337785 () Bool)

(assert (=> b!1448977 m!1337785))

(assert (=> b!1448977 m!1337785))

(assert (=> b!1448977 m!1337767))

(declare-fun m!1337787 () Bool)

(assert (=> b!1448977 m!1337787))

(declare-fun m!1337789 () Bool)

(assert (=> start!124878 m!1337789))

(declare-fun m!1337791 () Bool)

(assert (=> start!124878 m!1337791))

(assert (=> b!1448972 m!1337767))

(assert (=> b!1448972 m!1337767))

(declare-fun m!1337793 () Bool)

(assert (=> b!1448972 m!1337793))

(declare-fun m!1337795 () Bool)

(assert (=> b!1448978 m!1337795))

(assert (=> b!1448978 m!1337795))

(declare-fun m!1337797 () Bool)

(assert (=> b!1448978 m!1337797))

(assert (=> b!1448978 m!1337759))

(declare-fun m!1337799 () Bool)

(assert (=> b!1448978 m!1337799))

(assert (=> b!1448981 m!1337765))

(assert (=> b!1448981 m!1337759))

(assert (=> b!1448981 m!1337763))

(assert (=> b!1448981 m!1337767))

(declare-fun m!1337801 () Bool)

(assert (=> b!1448982 m!1337801))

(assert (=> b!1448986 m!1337759))

(declare-fun m!1337803 () Bool)

(assert (=> b!1448986 m!1337803))

(assert (=> b!1448985 m!1337767))

(assert (=> b!1448985 m!1337767))

(declare-fun m!1337805 () Bool)

(assert (=> b!1448985 m!1337805))

(assert (=> b!1448973 m!1337767))

(assert (=> b!1448973 m!1337767))

(declare-fun m!1337807 () Bool)

(assert (=> b!1448973 m!1337807))

(declare-fun m!1337809 () Bool)

(assert (=> b!1448979 m!1337809))

(check-sat (not b!1448985) (not b!1448978) (not b!1448970) (not b!1448979) (not b!1448977) (not b!1448983) (not b!1448972) (not b!1448980) (not b!1448982) (not b!1448974) (not b!1448973) (not start!124878) (not b!1448969))
(check-sat)
