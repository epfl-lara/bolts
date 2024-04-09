; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126712 () Bool)

(assert start!126712)

(declare-fun b!1487113 () Bool)

(declare-fun res!1011518 () Bool)

(declare-fun e!833619 () Bool)

(assert (=> b!1487113 (=> (not res!1011518) (not e!833619))))

(declare-datatypes ((array!99528 0))(
  ( (array!99529 (arr!48034 (Array (_ BitVec 32) (_ BitVec 64))) (size!48585 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99528)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99528 (_ BitVec 32)) Bool)

(assert (=> b!1487113 (= res!1011518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1487114 () Bool)

(declare-fun res!1011502 () Bool)

(assert (=> b!1487114 (=> (not res!1011502) (not e!833619))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1487114 (= res!1011502 (validKeyInArray!0 (select (arr!48034 a!2862) i!1006)))))

(declare-fun b!1487116 () Bool)

(declare-fun res!1011507 () Bool)

(declare-fun e!833627 () Bool)

(assert (=> b!1487116 (=> (not res!1011507) (not e!833627))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1487116 (= res!1011507 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1487117 () Bool)

(declare-fun res!1011515 () Bool)

(declare-fun e!833624 () Bool)

(assert (=> b!1487117 (=> (not res!1011515) (not e!833624))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1487117 (= res!1011515 (or (= (select (arr!48034 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48034 a!2862) intermediateBeforeIndex!19) (select (arr!48034 a!2862) j!93))))))

(declare-fun e!833620 () Bool)

(declare-fun lt!648664 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!648661 () array!99528)

(declare-fun b!1487118 () Bool)

(declare-datatypes ((SeekEntryResult!12297 0))(
  ( (MissingZero!12297 (index!51579 (_ BitVec 32))) (Found!12297 (index!51580 (_ BitVec 32))) (Intermediate!12297 (undefined!13109 Bool) (index!51581 (_ BitVec 32)) (x!133164 (_ BitVec 32))) (Undefined!12297) (MissingVacant!12297 (index!51582 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99528 (_ BitVec 32)) SeekEntryResult!12297)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99528 (_ BitVec 32)) SeekEntryResult!12297)

(assert (=> b!1487118 (= e!833620 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648664 lt!648661 mask!2687) (seekEntryOrOpen!0 lt!648664 lt!648661 mask!2687)))))

(declare-fun b!1487119 () Bool)

(declare-fun e!833622 () Bool)

(declare-fun e!833621 () Bool)

(assert (=> b!1487119 (= e!833622 e!833621)))

(declare-fun res!1011509 () Bool)

(assert (=> b!1487119 (=> (not res!1011509) (not e!833621))))

(declare-fun lt!648658 () SeekEntryResult!12297)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99528 (_ BitVec 32)) SeekEntryResult!12297)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1487119 (= res!1011509 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48034 a!2862) j!93) mask!2687) (select (arr!48034 a!2862) j!93) a!2862 mask!2687) lt!648658))))

(assert (=> b!1487119 (= lt!648658 (Intermediate!12297 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1487120 () Bool)

(declare-fun res!1011513 () Bool)

(assert (=> b!1487120 (=> (not res!1011513) (not e!833627))))

(assert (=> b!1487120 (= res!1011513 e!833620)))

(declare-fun c!137333 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1487120 (= c!137333 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1487121 () Bool)

(declare-fun res!1011519 () Bool)

(assert (=> b!1487121 (=> (not res!1011519) (not e!833619))))

(declare-datatypes ((List!34715 0))(
  ( (Nil!34712) (Cons!34711 (h!36088 (_ BitVec 64)) (t!49416 List!34715)) )
))
(declare-fun arrayNoDuplicates!0 (array!99528 (_ BitVec 32) List!34715) Bool)

(assert (=> b!1487121 (= res!1011519 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34712))))

(declare-fun b!1487122 () Bool)

(assert (=> b!1487122 (= e!833619 e!833622)))

(declare-fun res!1011506 () Bool)

(assert (=> b!1487122 (=> (not res!1011506) (not e!833622))))

(assert (=> b!1487122 (= res!1011506 (= (select (store (arr!48034 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1487122 (= lt!648661 (array!99529 (store (arr!48034 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48585 a!2862)))))

(declare-fun b!1487123 () Bool)

(declare-fun e!833626 () Bool)

(declare-fun e!833625 () Bool)

(assert (=> b!1487123 (= e!833626 e!833625)))

(declare-fun res!1011508 () Bool)

(assert (=> b!1487123 (=> (not res!1011508) (not e!833625))))

(declare-fun lt!648662 () (_ BitVec 64))

(assert (=> b!1487123 (= res!1011508 (and (= index!646 intermediateAfterIndex!19) (= lt!648662 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1487124 () Bool)

(declare-fun res!1011516 () Bool)

(assert (=> b!1487124 (=> (not res!1011516) (not e!833619))))

(assert (=> b!1487124 (= res!1011516 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48585 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48585 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48585 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1487125 () Bool)

(declare-fun e!833617 () Bool)

(declare-fun e!833623 () Bool)

(assert (=> b!1487125 (= e!833617 e!833623)))

(declare-fun res!1011514 () Bool)

(assert (=> b!1487125 (=> res!1011514 e!833623)))

(declare-fun lt!648660 () (_ BitVec 32))

(assert (=> b!1487125 (= res!1011514 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!648660 #b00000000000000000000000000000000) (bvsge lt!648660 (size!48585 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1487125 (= lt!648660 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1487126 () Bool)

(declare-fun res!1011512 () Bool)

(assert (=> b!1487126 (=> (not res!1011512) (not e!833619))))

(assert (=> b!1487126 (= res!1011512 (and (= (size!48585 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48585 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48585 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!1011511 () Bool)

(assert (=> start!126712 (=> (not res!1011511) (not e!833619))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126712 (= res!1011511 (validMask!0 mask!2687))))

(assert (=> start!126712 e!833619))

(assert (=> start!126712 true))

(declare-fun array_inv!36979 (array!99528) Bool)

(assert (=> start!126712 (array_inv!36979 a!2862)))

(declare-fun b!1487115 () Bool)

(assert (=> b!1487115 (= e!833621 e!833627)))

(declare-fun res!1011517 () Bool)

(assert (=> b!1487115 (=> (not res!1011517) (not e!833627))))

(declare-fun lt!648663 () SeekEntryResult!12297)

(assert (=> b!1487115 (= res!1011517 (= lt!648663 (Intermediate!12297 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1487115 (= lt!648663 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648664 mask!2687) lt!648664 lt!648661 mask!2687))))

(assert (=> b!1487115 (= lt!648664 (select (store (arr!48034 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1487127 () Bool)

(assert (=> b!1487127 (= e!833623 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!648660 (select (arr!48034 a!2862) j!93) a!2862 mask!2687) lt!648658))))

(declare-fun b!1487128 () Bool)

(declare-fun res!1011504 () Bool)

(assert (=> b!1487128 (=> (not res!1011504) (not e!833624))))

(assert (=> b!1487128 (= res!1011504 (= (seekEntryOrOpen!0 (select (arr!48034 a!2862) j!93) a!2862 mask!2687) (Found!12297 j!93)))))

(declare-fun b!1487129 () Bool)

(declare-fun res!1011501 () Bool)

(assert (=> b!1487129 (=> (not res!1011501) (not e!833621))))

(assert (=> b!1487129 (= res!1011501 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48034 a!2862) j!93) a!2862 mask!2687) lt!648658))))

(declare-fun b!1487130 () Bool)

(declare-fun res!1011505 () Bool)

(assert (=> b!1487130 (=> (not res!1011505) (not e!833619))))

(assert (=> b!1487130 (= res!1011505 (validKeyInArray!0 (select (arr!48034 a!2862) j!93)))))

(declare-fun b!1487131 () Bool)

(assert (=> b!1487131 (= e!833625 (= (seekEntryOrOpen!0 lt!648664 lt!648661 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648664 lt!648661 mask!2687)))))

(declare-fun b!1487132 () Bool)

(assert (=> b!1487132 (= e!833620 (= lt!648663 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648664 lt!648661 mask!2687)))))

(declare-fun b!1487133 () Bool)

(assert (=> b!1487133 (= e!833627 (not e!833617))))

(declare-fun res!1011500 () Bool)

(assert (=> b!1487133 (=> res!1011500 e!833617)))

(assert (=> b!1487133 (= res!1011500 (or (and (= (select (arr!48034 a!2862) index!646) (select (store (arr!48034 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48034 a!2862) index!646) (select (arr!48034 a!2862) j!93))) (= (select (arr!48034 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1487133 e!833624))

(declare-fun res!1011503 () Bool)

(assert (=> b!1487133 (=> (not res!1011503) (not e!833624))))

(assert (=> b!1487133 (= res!1011503 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49882 0))(
  ( (Unit!49883) )
))
(declare-fun lt!648659 () Unit!49882)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99528 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49882)

(assert (=> b!1487133 (= lt!648659 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1487134 () Bool)

(assert (=> b!1487134 (= e!833624 e!833626)))

(declare-fun res!1011510 () Bool)

(assert (=> b!1487134 (=> res!1011510 e!833626)))

(assert (=> b!1487134 (= res!1011510 (or (and (= (select (arr!48034 a!2862) index!646) lt!648662) (= (select (arr!48034 a!2862) index!646) (select (arr!48034 a!2862) j!93))) (= (select (arr!48034 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1487134 (= lt!648662 (select (store (arr!48034 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(assert (= (and start!126712 res!1011511) b!1487126))

(assert (= (and b!1487126 res!1011512) b!1487114))

(assert (= (and b!1487114 res!1011502) b!1487130))

(assert (= (and b!1487130 res!1011505) b!1487113))

(assert (= (and b!1487113 res!1011518) b!1487121))

(assert (= (and b!1487121 res!1011519) b!1487124))

(assert (= (and b!1487124 res!1011516) b!1487122))

(assert (= (and b!1487122 res!1011506) b!1487119))

(assert (= (and b!1487119 res!1011509) b!1487129))

(assert (= (and b!1487129 res!1011501) b!1487115))

(assert (= (and b!1487115 res!1011517) b!1487120))

(assert (= (and b!1487120 c!137333) b!1487132))

(assert (= (and b!1487120 (not c!137333)) b!1487118))

(assert (= (and b!1487120 res!1011513) b!1487116))

(assert (= (and b!1487116 res!1011507) b!1487133))

(assert (= (and b!1487133 res!1011503) b!1487128))

(assert (= (and b!1487128 res!1011504) b!1487117))

(assert (= (and b!1487117 res!1011515) b!1487134))

(assert (= (and b!1487134 (not res!1011510)) b!1487123))

(assert (= (and b!1487123 res!1011508) b!1487131))

(assert (= (and b!1487133 (not res!1011500)) b!1487125))

(assert (= (and b!1487125 (not res!1011514)) b!1487127))

(declare-fun m!1371915 () Bool)

(assert (=> b!1487125 m!1371915))

(declare-fun m!1371917 () Bool)

(assert (=> b!1487122 m!1371917))

(declare-fun m!1371919 () Bool)

(assert (=> b!1487122 m!1371919))

(declare-fun m!1371921 () Bool)

(assert (=> start!126712 m!1371921))

(declare-fun m!1371923 () Bool)

(assert (=> start!126712 m!1371923))

(declare-fun m!1371925 () Bool)

(assert (=> b!1487133 m!1371925))

(assert (=> b!1487133 m!1371917))

(declare-fun m!1371927 () Bool)

(assert (=> b!1487133 m!1371927))

(declare-fun m!1371929 () Bool)

(assert (=> b!1487133 m!1371929))

(declare-fun m!1371931 () Bool)

(assert (=> b!1487133 m!1371931))

(declare-fun m!1371933 () Bool)

(assert (=> b!1487133 m!1371933))

(assert (=> b!1487134 m!1371929))

(assert (=> b!1487134 m!1371933))

(assert (=> b!1487134 m!1371917))

(assert (=> b!1487134 m!1371927))

(declare-fun m!1371935 () Bool)

(assert (=> b!1487121 m!1371935))

(declare-fun m!1371937 () Bool)

(assert (=> b!1487114 m!1371937))

(assert (=> b!1487114 m!1371937))

(declare-fun m!1371939 () Bool)

(assert (=> b!1487114 m!1371939))

(declare-fun m!1371941 () Bool)

(assert (=> b!1487118 m!1371941))

(declare-fun m!1371943 () Bool)

(assert (=> b!1487118 m!1371943))

(assert (=> b!1487130 m!1371933))

(assert (=> b!1487130 m!1371933))

(declare-fun m!1371945 () Bool)

(assert (=> b!1487130 m!1371945))

(assert (=> b!1487131 m!1371943))

(assert (=> b!1487131 m!1371941))

(declare-fun m!1371947 () Bool)

(assert (=> b!1487113 m!1371947))

(assert (=> b!1487127 m!1371933))

(assert (=> b!1487127 m!1371933))

(declare-fun m!1371949 () Bool)

(assert (=> b!1487127 m!1371949))

(assert (=> b!1487119 m!1371933))

(assert (=> b!1487119 m!1371933))

(declare-fun m!1371951 () Bool)

(assert (=> b!1487119 m!1371951))

(assert (=> b!1487119 m!1371951))

(assert (=> b!1487119 m!1371933))

(declare-fun m!1371953 () Bool)

(assert (=> b!1487119 m!1371953))

(assert (=> b!1487129 m!1371933))

(assert (=> b!1487129 m!1371933))

(declare-fun m!1371955 () Bool)

(assert (=> b!1487129 m!1371955))

(declare-fun m!1371957 () Bool)

(assert (=> b!1487115 m!1371957))

(assert (=> b!1487115 m!1371957))

(declare-fun m!1371959 () Bool)

(assert (=> b!1487115 m!1371959))

(assert (=> b!1487115 m!1371917))

(declare-fun m!1371961 () Bool)

(assert (=> b!1487115 m!1371961))

(assert (=> b!1487128 m!1371933))

(assert (=> b!1487128 m!1371933))

(declare-fun m!1371963 () Bool)

(assert (=> b!1487128 m!1371963))

(declare-fun m!1371965 () Bool)

(assert (=> b!1487132 m!1371965))

(declare-fun m!1371967 () Bool)

(assert (=> b!1487117 m!1371967))

(assert (=> b!1487117 m!1371933))

(push 1)

(assert (not b!1487133))

(assert (not b!1487128))

(assert (not b!1487115))

(assert (not b!1487121))

(assert (not b!1487131))

(assert (not b!1487125))

(assert (not b!1487129))

(assert (not b!1487132))

(assert (not b!1487119))

(assert (not b!1487127))

(assert (not b!1487130))

(assert (not start!126712))

(assert (not b!1487113))

(assert (not b!1487114))

(assert (not b!1487118))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1487389 () Bool)

(declare-fun e!833767 () Bool)

(declare-fun e!833768 () Bool)

(assert (=> b!1487389 (= e!833767 e!833768)))

(declare-fun c!137384 () Bool)

(assert (=> b!1487389 (= c!137384 (validKeyInArray!0 (select (arr!48034 a!2862) j!93)))))

(declare-fun d!156487 () Bool)

(declare-fun res!1011675 () Bool)

(assert (=> d!156487 (=> res!1011675 e!833767)))

(assert (=> d!156487 (= res!1011675 (bvsge j!93 (size!48585 a!2862)))))

(assert (=> d!156487 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!833767)))

(declare-fun call!67902 () Bool)

(declare-fun bm!67899 () Bool)

(assert (=> bm!67899 (= call!67902 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1487390 () Bool)

(assert (=> b!1487390 (= e!833768 call!67902)))

(declare-fun b!1487391 () Bool)

(declare-fun e!833769 () Bool)

(assert (=> b!1487391 (= e!833769 call!67902)))

(declare-fun b!1487392 () Bool)

(assert (=> b!1487392 (= e!833768 e!833769)))

(declare-fun lt!648751 () (_ BitVec 64))

(assert (=> b!1487392 (= lt!648751 (select (arr!48034 a!2862) j!93))))

(declare-fun lt!648752 () Unit!49882)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99528 (_ BitVec 64) (_ BitVec 32)) Unit!49882)

(assert (=> b!1487392 (= lt!648752 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!648751 j!93))))

(declare-fun arrayContainsKey!0 (array!99528 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1487392 (arrayContainsKey!0 a!2862 lt!648751 #b00000000000000000000000000000000)))

(declare-fun lt!648750 () Unit!49882)

(assert (=> b!1487392 (= lt!648750 lt!648752)))

(declare-fun res!1011676 () Bool)

(assert (=> b!1487392 (= res!1011676 (= (seekEntryOrOpen!0 (select (arr!48034 a!2862) j!93) a!2862 mask!2687) (Found!12297 j!93)))))

(assert (=> b!1487392 (=> (not res!1011676) (not e!833769))))

(assert (= (and d!156487 (not res!1011675)) b!1487389))

(assert (= (and b!1487389 c!137384) b!1487392))

(assert (= (and b!1487389 (not c!137384)) b!1487390))

(assert (= (and b!1487392 res!1011676) b!1487391))

(assert (= (or b!1487391 b!1487390) bm!67899))

(assert (=> b!1487389 m!1371933))

(assert (=> b!1487389 m!1371933))

(assert (=> b!1487389 m!1371945))

(declare-fun m!1372141 () Bool)

(assert (=> bm!67899 m!1372141))

(assert (=> b!1487392 m!1371933))

(declare-fun m!1372143 () Bool)

(assert (=> b!1487392 m!1372143))

(declare-fun m!1372145 () Bool)

(assert (=> b!1487392 m!1372145))

(assert (=> b!1487392 m!1371933))

(assert (=> b!1487392 m!1371963))

(assert (=> b!1487133 d!156487))

(declare-fun d!156497 () Bool)

(assert (=> d!156497 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!648764 () Unit!49882)

(declare-fun choose!38 (array!99528 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49882)

(assert (=> d!156497 (= lt!648764 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!156497 (validMask!0 mask!2687)))

(assert (=> d!156497 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!648764)))

(declare-fun bs!42776 () Bool)

(assert (= bs!42776 d!156497))

(assert (=> bs!42776 m!1371931))

(declare-fun m!1372153 () Bool)

(assert (=> bs!42776 m!1372153))

(assert (=> bs!42776 m!1371921))

(assert (=> b!1487133 d!156497))

(declare-fun b!1487475 () Bool)

(declare-fun lt!648800 () SeekEntryResult!12297)

(assert (=> b!1487475 (and (bvsge (index!51581 lt!648800) #b00000000000000000000000000000000) (bvslt (index!51581 lt!648800) (size!48585 lt!648661)))))

(declare-fun res!1011705 () Bool)

(assert (=> b!1487475 (= res!1011705 (= (select (arr!48034 lt!648661) (index!51581 lt!648800)) lt!648664))))

(declare-fun e!833824 () Bool)

(assert (=> b!1487475 (=> res!1011705 e!833824)))

(declare-fun e!833825 () Bool)

(assert (=> b!1487475 (= e!833825 e!833824)))

(declare-fun b!1487476 () Bool)

(declare-fun e!833823 () Bool)

(assert (=> b!1487476 (= e!833823 e!833825)))

(declare-fun res!1011703 () Bool)

(assert (=> b!1487476 (= res!1011703 (and (is-Intermediate!12297 lt!648800) (not (undefined!13109 lt!648800)) (bvslt (x!133164 lt!648800) #b01111111111111111111111111111110) (bvsge (x!133164 lt!648800) #b00000000000000000000000000000000) (bvsge (x!133164 lt!648800) x!665)))))

(assert (=> b!1487476 (=> (not res!1011703) (not e!833825))))

(declare-fun b!1487477 () Bool)

(assert (=> b!1487477 (and (bvsge (index!51581 lt!648800) #b00000000000000000000000000000000) (bvslt (index!51581 lt!648800) (size!48585 lt!648661)))))

(declare-fun res!1011704 () Bool)

(assert (=> b!1487477 (= res!1011704 (= (select (arr!48034 lt!648661) (index!51581 lt!648800)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1487477 (=> res!1011704 e!833824)))

(declare-fun b!1487478 () Bool)

(assert (=> b!1487478 (= e!833823 (bvsge (x!133164 lt!648800) #b01111111111111111111111111111110))))

(declare-fun d!156503 () Bool)

(assert (=> d!156503 e!833823))

(declare-fun c!137415 () Bool)

(assert (=> d!156503 (= c!137415 (and (is-Intermediate!12297 lt!648800) (undefined!13109 lt!648800)))))

(declare-fun e!833821 () SeekEntryResult!12297)

(assert (=> d!156503 (= lt!648800 e!833821)))

(declare-fun c!137413 () Bool)

(assert (=> d!156503 (= c!137413 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!648801 () (_ BitVec 64))

(assert (=> d!156503 (= lt!648801 (select (arr!48034 lt!648661) index!646))))

(assert (=> d!156503 (validMask!0 mask!2687)))

(assert (=> d!156503 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648664 lt!648661 mask!2687) lt!648800)))

(declare-fun b!1487479 () Bool)

(assert (=> b!1487479 (and (bvsge (index!51581 lt!648800) #b00000000000000000000000000000000) (bvslt (index!51581 lt!648800) (size!48585 lt!648661)))))

(assert (=> b!1487479 (= e!833824 (= (select (arr!48034 lt!648661) (index!51581 lt!648800)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1487480 () Bool)

(assert (=> b!1487480 (= e!833821 (Intermediate!12297 true index!646 x!665))))

(declare-fun b!1487481 () Bool)

(declare-fun e!833822 () SeekEntryResult!12297)

(assert (=> b!1487481 (= e!833821 e!833822)))

(declare-fun c!137414 () Bool)

(assert (=> b!1487481 (= c!137414 (or (= lt!648801 lt!648664) (= (bvadd lt!648801 lt!648801) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1487482 () Bool)

(assert (=> b!1487482 (= e!833822 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!648664 lt!648661 mask!2687))))

(declare-fun b!1487483 () Bool)

(assert (=> b!1487483 (= e!833822 (Intermediate!12297 false index!646 x!665))))

(assert (= (and d!156503 c!137413) b!1487480))

(assert (= (and d!156503 (not c!137413)) b!1487481))

(assert (= (and b!1487481 c!137414) b!1487483))

(assert (= (and b!1487481 (not c!137414)) b!1487482))

(assert (= (and d!156503 c!137415) b!1487478))

(assert (= (and d!156503 (not c!137415)) b!1487476))

(assert (= (and b!1487476 res!1011703) b!1487475))

(assert (= (and b!1487475 (not res!1011705)) b!1487477))

(assert (= (and b!1487477 (not res!1011704)) b!1487479))

(declare-fun m!1372199 () Bool)

(assert (=> b!1487479 m!1372199))

(declare-fun m!1372201 () Bool)

(assert (=> d!156503 m!1372201))

(assert (=> d!156503 m!1371921))

(assert (=> b!1487477 m!1372199))

(assert (=> b!1487482 m!1371915))

(assert (=> b!1487482 m!1371915))

(declare-fun m!1372203 () Bool)

(assert (=> b!1487482 m!1372203))

(assert (=> b!1487475 m!1372199))

(assert (=> b!1487132 d!156503))

(declare-fun bm!67909 () Bool)

(declare-fun call!67912 () Bool)

(declare-fun c!137421 () Bool)

(assert (=> bm!67909 (= call!67912 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!137421 (Cons!34711 (select (arr!48034 a!2862) #b00000000000000000000000000000000) Nil!34712) Nil!34712)))))

(declare-fun b!1487503 () Bool)

(declare-fun e!833840 () Bool)

(assert (=> b!1487503 (= e!833840 call!67912)))

(declare-fun b!1487504 () Bool)

(declare-fun e!833842 () Bool)

(assert (=> b!1487504 (= e!833842 e!833840)))

(assert (=> b!1487504 (= c!137421 (validKeyInArray!0 (select (arr!48034 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1487505 () Bool)

(assert (=> b!1487505 (= e!833840 call!67912)))

(declare-fun b!1487507 () Bool)

(declare-fun e!833841 () Bool)

(assert (=> b!1487507 (= e!833841 e!833842)))

(declare-fun res!1011716 () Bool)

(assert (=> b!1487507 (=> (not res!1011716) (not e!833842))))

(declare-fun e!833839 () Bool)

(assert (=> b!1487507 (= res!1011716 (not e!833839))))

(declare-fun res!1011717 () Bool)

(assert (=> b!1487507 (=> (not res!1011717) (not e!833839))))

(assert (=> b!1487507 (= res!1011717 (validKeyInArray!0 (select (arr!48034 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!156525 () Bool)

(declare-fun res!1011715 () Bool)

(assert (=> d!156525 (=> res!1011715 e!833841)))

(assert (=> d!156525 (= res!1011715 (bvsge #b00000000000000000000000000000000 (size!48585 a!2862)))))

(assert (=> d!156525 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34712) e!833841)))

(declare-fun b!1487506 () Bool)

(declare-fun contains!9933 (List!34715 (_ BitVec 64)) Bool)

(assert (=> b!1487506 (= e!833839 (contains!9933 Nil!34712 (select (arr!48034 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!156525 (not res!1011715)) b!1487507))

(assert (= (and b!1487507 res!1011717) b!1487506))

(assert (= (and b!1487507 res!1011716) b!1487504))

(assert (= (and b!1487504 c!137421) b!1487505))

(assert (= (and b!1487504 (not c!137421)) b!1487503))

(assert (= (or b!1487505 b!1487503) bm!67909))

(declare-fun m!1372213 () Bool)

(assert (=> bm!67909 m!1372213))

(declare-fun m!1372215 () Bool)

(assert (=> bm!67909 m!1372215))

(assert (=> b!1487504 m!1372213))

(assert (=> b!1487504 m!1372213))

(declare-fun m!1372217 () Bool)

(assert (=> b!1487504 m!1372217))

(assert (=> b!1487507 m!1372213))

(assert (=> b!1487507 m!1372213))

(assert (=> b!1487507 m!1372217))

(assert (=> b!1487506 m!1372213))

(assert (=> b!1487506 m!1372213))

(declare-fun m!1372219 () Bool)

(assert (=> b!1487506 m!1372219))

(assert (=> b!1487121 d!156525))

(declare-fun b!1487538 () Bool)

(declare-fun e!833860 () SeekEntryResult!12297)

(declare-fun e!833858 () SeekEntryResult!12297)

(assert (=> b!1487538 (= e!833860 e!833858)))

(declare-fun lt!648818 () (_ BitVec 64))

(declare-fun lt!648816 () SeekEntryResult!12297)

(assert (=> b!1487538 (= lt!648818 (select (arr!48034 lt!648661) (index!51581 lt!648816)))))

(declare-fun c!137439 () Bool)

(assert (=> b!1487538 (= c!137439 (= lt!648818 lt!648664))))

(declare-fun b!1487539 () Bool)

(declare-fun c!137438 () Bool)

(assert (=> b!1487539 (= c!137438 (= lt!648818 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!833859 () SeekEntryResult!12297)

(assert (=> b!1487539 (= e!833858 e!833859)))

(declare-fun b!1487540 () Bool)

(assert (=> b!1487540 (= e!833858 (Found!12297 (index!51581 lt!648816)))))

(declare-fun b!1487541 () Bool)

(assert (=> b!1487541 (= e!833859 (MissingZero!12297 (index!51581 lt!648816)))))

(declare-fun b!1487542 () Bool)

(assert (=> b!1487542 (= e!833860 Undefined!12297)))

(declare-fun b!1487543 () Bool)

(assert (=> b!1487543 (= e!833859 (seekKeyOrZeroReturnVacant!0 (x!133164 lt!648816) (index!51581 lt!648816) (index!51581 lt!648816) lt!648664 lt!648661 mask!2687))))

(declare-fun d!156531 () Bool)

(declare-fun lt!648817 () SeekEntryResult!12297)

(assert (=> d!156531 (and (or (is-Undefined!12297 lt!648817) (not (is-Found!12297 lt!648817)) (and (bvsge (index!51580 lt!648817) #b00000000000000000000000000000000) (bvslt (index!51580 lt!648817) (size!48585 lt!648661)))) (or (is-Undefined!12297 lt!648817) (is-Found!12297 lt!648817) (not (is-MissingZero!12297 lt!648817)) (and (bvsge (index!51579 lt!648817) #b00000000000000000000000000000000) (bvslt (index!51579 lt!648817) (size!48585 lt!648661)))) (or (is-Undefined!12297 lt!648817) (is-Found!12297 lt!648817) (is-MissingZero!12297 lt!648817) (not (is-MissingVacant!12297 lt!648817)) (and (bvsge (index!51582 lt!648817) #b00000000000000000000000000000000) (bvslt (index!51582 lt!648817) (size!48585 lt!648661)))) (or (is-Undefined!12297 lt!648817) (ite (is-Found!12297 lt!648817) (= (select (arr!48034 lt!648661) (index!51580 lt!648817)) lt!648664) (ite (is-MissingZero!12297 lt!648817) (= (select (arr!48034 lt!648661) (index!51579 lt!648817)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12297 lt!648817) (= (select (arr!48034 lt!648661) (index!51582 lt!648817)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156531 (= lt!648817 e!833860)))

(declare-fun c!137437 () Bool)

(assert (=> d!156531 (= c!137437 (and (is-Intermediate!12297 lt!648816) (undefined!13109 lt!648816)))))

(assert (=> d!156531 (= lt!648816 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648664 mask!2687) lt!648664 lt!648661 mask!2687))))

(assert (=> d!156531 (validMask!0 mask!2687)))

(assert (=> d!156531 (= (seekEntryOrOpen!0 lt!648664 lt!648661 mask!2687) lt!648817)))

(assert (= (and d!156531 c!137437) b!1487542))

(assert (= (and d!156531 (not c!137437)) b!1487538))

(assert (= (and b!1487538 c!137439) b!1487540))

(assert (= (and b!1487538 (not c!137439)) b!1487539))

(assert (= (and b!1487539 c!137438) b!1487541))

(assert (= (and b!1487539 (not c!137438)) b!1487543))

(declare-fun m!1372229 () Bool)

(assert (=> b!1487538 m!1372229))

(declare-fun m!1372231 () Bool)

(assert (=> b!1487543 m!1372231))

(declare-fun m!1372233 () Bool)

(assert (=> d!156531 m!1372233))

(declare-fun m!1372235 () Bool)

(assert (=> d!156531 m!1372235))

(declare-fun m!1372237 () Bool)

(assert (=> d!156531 m!1372237))

(assert (=> d!156531 m!1371957))

(assert (=> d!156531 m!1371921))

(assert (=> d!156531 m!1371957))

(assert (=> d!156531 m!1371959))

(assert (=> b!1487131 d!156531))

(declare-fun b!1487596 () Bool)

(declare-fun e!833890 () SeekEntryResult!12297)

(assert (=> b!1487596 (= e!833890 (MissingVacant!12297 intermediateAfterIndex!19))))

(declare-fun b!1487597 () Bool)

(declare-fun e!833891 () SeekEntryResult!12297)

(assert (=> b!1487597 (= e!833891 (Found!12297 index!646))))

(declare-fun b!1487598 () Bool)

(assert (=> b!1487598 (= e!833890 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!648664 lt!648661 mask!2687))))

(declare-fun lt!648840 () SeekEntryResult!12297)

(declare-fun d!156535 () Bool)

(assert (=> d!156535 (and (or (is-Undefined!12297 lt!648840) (not (is-Found!12297 lt!648840)) (and (bvsge (index!51580 lt!648840) #b00000000000000000000000000000000) (bvslt (index!51580 lt!648840) (size!48585 lt!648661)))) (or (is-Undefined!12297 lt!648840) (is-Found!12297 lt!648840) (not (is-MissingVacant!12297 lt!648840)) (not (= (index!51582 lt!648840) intermediateAfterIndex!19)) (and (bvsge (index!51582 lt!648840) #b00000000000000000000000000000000) (bvslt (index!51582 lt!648840) (size!48585 lt!648661)))) (or (is-Undefined!12297 lt!648840) (ite (is-Found!12297 lt!648840) (= (select (arr!48034 lt!648661) (index!51580 lt!648840)) lt!648664) (and (is-MissingVacant!12297 lt!648840) (= (index!51582 lt!648840) intermediateAfterIndex!19) (= (select (arr!48034 lt!648661) (index!51582 lt!648840)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!833892 () SeekEntryResult!12297)

(assert (=> d!156535 (= lt!648840 e!833892)))

(declare-fun c!137459 () Bool)

(assert (=> d!156535 (= c!137459 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!648841 () (_ BitVec 64))

(assert (=> d!156535 (= lt!648841 (select (arr!48034 lt!648661) index!646))))

(assert (=> d!156535 (validMask!0 mask!2687)))

(assert (=> d!156535 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648664 lt!648661 mask!2687) lt!648840)))

(declare-fun b!1487599 () Bool)

(declare-fun c!137460 () Bool)

(assert (=> b!1487599 (= c!137460 (= lt!648841 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1487599 (= e!833891 e!833890)))

(declare-fun b!1487600 () Bool)

(assert (=> b!1487600 (= e!833892 e!833891)))

(declare-fun c!137461 () Bool)

(assert (=> b!1487600 (= c!137461 (= lt!648841 lt!648664))))

(declare-fun b!1487601 () Bool)

(assert (=> b!1487601 (= e!833892 Undefined!12297)))

(assert (= (and d!156535 c!137459) b!1487601))

(assert (= (and d!156535 (not c!137459)) b!1487600))

(assert (= (and b!1487600 c!137461) b!1487597))

(assert (= (and b!1487600 (not c!137461)) b!1487599))

(assert (= (and b!1487599 c!137460) b!1487596))

(assert (= (and b!1487599 (not c!137460)) b!1487598))

(assert (=> b!1487598 m!1371915))

(assert (=> b!1487598 m!1371915))

(declare-fun m!1372257 () Bool)

(assert (=> b!1487598 m!1372257))

(declare-fun m!1372259 () Bool)

(assert (=> d!156535 m!1372259))

(declare-fun m!1372261 () Bool)

(assert (=> d!156535 m!1372261))

(assert (=> d!156535 m!1372201))

(assert (=> d!156535 m!1371921))

(assert (=> b!1487131 d!156535))

(declare-fun d!156545 () Bool)

(declare-fun lt!648847 () (_ BitVec 32))

(assert (=> d!156545 (and (bvsge lt!648847 #b00000000000000000000000000000000) (bvslt lt!648847 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!156545 (= lt!648847 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!156545 (validMask!0 mask!2687)))

(assert (=> d!156545 (= (nextIndex!0 index!646 x!665 mask!2687) lt!648847)))

(declare-fun bs!42780 () Bool)

(assert (= bs!42780 d!156545))

(declare-fun m!1372265 () Bool)

(assert (=> bs!42780 m!1372265))

(assert (=> bs!42780 m!1371921))

(assert (=> b!1487125 d!156545))

(declare-fun d!156549 () Bool)

(assert (=> d!156549 (= (validKeyInArray!0 (select (arr!48034 a!2862) i!1006)) (and (not (= (select (arr!48034 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48034 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1487114 d!156549))

(declare-fun b!1487602 () Bool)

(declare-fun e!833893 () Bool)

(declare-fun e!833894 () Bool)

(assert (=> b!1487602 (= e!833893 e!833894)))

(declare-fun c!137462 () Bool)

(assert (=> b!1487602 (= c!137462 (validKeyInArray!0 (select (arr!48034 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!156551 () Bool)

(declare-fun res!1011733 () Bool)

(assert (=> d!156551 (=> res!1011733 e!833893)))

(assert (=> d!156551 (= res!1011733 (bvsge #b00000000000000000000000000000000 (size!48585 a!2862)))))

(assert (=> d!156551 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!833893)))

(declare-fun bm!67911 () Bool)

(declare-fun call!67914 () Bool)

(assert (=> bm!67911 (= call!67914 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1487603 () Bool)

(assert (=> b!1487603 (= e!833894 call!67914)))

(declare-fun b!1487604 () Bool)

(declare-fun e!833895 () Bool)

(assert (=> b!1487604 (= e!833895 call!67914)))

(declare-fun b!1487605 () Bool)

(assert (=> b!1487605 (= e!833894 e!833895)))

(declare-fun lt!648851 () (_ BitVec 64))

(assert (=> b!1487605 (= lt!648851 (select (arr!48034 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!648852 () Unit!49882)

(assert (=> b!1487605 (= lt!648852 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!648851 #b00000000000000000000000000000000))))

(assert (=> b!1487605 (arrayContainsKey!0 a!2862 lt!648851 #b00000000000000000000000000000000)))

(declare-fun lt!648850 () Unit!49882)

(assert (=> b!1487605 (= lt!648850 lt!648852)))

(declare-fun res!1011734 () Bool)

(assert (=> b!1487605 (= res!1011734 (= (seekEntryOrOpen!0 (select (arr!48034 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12297 #b00000000000000000000000000000000)))))

(assert (=> b!1487605 (=> (not res!1011734) (not e!833895))))

(assert (= (and d!156551 (not res!1011733)) b!1487602))

(assert (= (and b!1487602 c!137462) b!1487605))

(assert (= (and b!1487602 (not c!137462)) b!1487603))

(assert (= (and b!1487605 res!1011734) b!1487604))

(assert (= (or b!1487604 b!1487603) bm!67911))

(assert (=> b!1487602 m!1372213))

(assert (=> b!1487602 m!1372213))

(assert (=> b!1487602 m!1372217))

(declare-fun m!1372267 () Bool)

(assert (=> bm!67911 m!1372267))

(assert (=> b!1487605 m!1372213))

(declare-fun m!1372271 () Bool)

(assert (=> b!1487605 m!1372271))

(declare-fun m!1372273 () Bool)

(assert (=> b!1487605 m!1372273))

(assert (=> b!1487605 m!1372213))

(declare-fun m!1372275 () Bool)

(assert (=> b!1487605 m!1372275))

(assert (=> b!1487113 d!156551))

(declare-fun b!1487606 () Bool)

(declare-fun lt!648854 () SeekEntryResult!12297)

(assert (=> b!1487606 (and (bvsge (index!51581 lt!648854) #b00000000000000000000000000000000) (bvslt (index!51581 lt!648854) (size!48585 a!2862)))))

(declare-fun res!1011737 () Bool)

(assert (=> b!1487606 (= res!1011737 (= (select (arr!48034 a!2862) (index!51581 lt!648854)) (select (arr!48034 a!2862) j!93)))))

(declare-fun e!833899 () Bool)

(assert (=> b!1487606 (=> res!1011737 e!833899)))

(declare-fun e!833900 () Bool)

(assert (=> b!1487606 (= e!833900 e!833899)))

(declare-fun b!1487607 () Bool)

(declare-fun e!833898 () Bool)

(assert (=> b!1487607 (= e!833898 e!833900)))

(declare-fun res!1011735 () Bool)

(assert (=> b!1487607 (= res!1011735 (and (is-Intermediate!12297 lt!648854) (not (undefined!13109 lt!648854)) (bvslt (x!133164 lt!648854) #b01111111111111111111111111111110) (bvsge (x!133164 lt!648854) #b00000000000000000000000000000000) (bvsge (x!133164 lt!648854) (bvadd #b00000000000000000000000000000001 x!665))))))

(assert (=> b!1487607 (=> (not res!1011735) (not e!833900))))

(declare-fun b!1487608 () Bool)

(assert (=> b!1487608 (and (bvsge (index!51581 lt!648854) #b00000000000000000000000000000000) (bvslt (index!51581 lt!648854) (size!48585 a!2862)))))

(declare-fun res!1011736 () Bool)

(assert (=> b!1487608 (= res!1011736 (= (select (arr!48034 a!2862) (index!51581 lt!648854)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1487608 (=> res!1011736 e!833899)))

(declare-fun b!1487609 () Bool)

(assert (=> b!1487609 (= e!833898 (bvsge (x!133164 lt!648854) #b01111111111111111111111111111110))))

(declare-fun d!156555 () Bool)

(assert (=> d!156555 e!833898))

(declare-fun c!137465 () Bool)

(assert (=> d!156555 (= c!137465 (and (is-Intermediate!12297 lt!648854) (undefined!13109 lt!648854)))))

(declare-fun e!833896 () SeekEntryResult!12297)

(assert (=> d!156555 (= lt!648854 e!833896)))

(declare-fun c!137463 () Bool)

(assert (=> d!156555 (= c!137463 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(declare-fun lt!648855 () (_ BitVec 64))

(assert (=> d!156555 (= lt!648855 (select (arr!48034 a!2862) lt!648660))))

(assert (=> d!156555 (validMask!0 mask!2687)))

(assert (=> d!156555 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!648660 (select (arr!48034 a!2862) j!93) a!2862 mask!2687) lt!648854)))

(declare-fun b!1487610 () Bool)

(assert (=> b!1487610 (and (bvsge (index!51581 lt!648854) #b00000000000000000000000000000000) (bvslt (index!51581 lt!648854) (size!48585 a!2862)))))

(assert (=> b!1487610 (= e!833899 (= (select (arr!48034 a!2862) (index!51581 lt!648854)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1487611 () Bool)

(assert (=> b!1487611 (= e!833896 (Intermediate!12297 true lt!648660 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1487612 () Bool)

(declare-fun e!833897 () SeekEntryResult!12297)

(assert (=> b!1487612 (= e!833896 e!833897)))

(declare-fun c!137464 () Bool)

(assert (=> b!1487612 (= c!137464 (or (= lt!648855 (select (arr!48034 a!2862) j!93)) (= (bvadd lt!648855 lt!648855) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1487613 () Bool)

(assert (=> b!1487613 (= e!833897 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!648660 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) (select (arr!48034 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1487614 () Bool)

(assert (=> b!1487614 (= e!833897 (Intermediate!12297 false lt!648660 (bvadd #b00000000000000000000000000000001 x!665)))))

(assert (= (and d!156555 c!137463) b!1487611))

(assert (= (and d!156555 (not c!137463)) b!1487612))

(assert (= (and b!1487612 c!137464) b!1487614))

(assert (= (and b!1487612 (not c!137464)) b!1487613))

(assert (= (and d!156555 c!137465) b!1487609))

(assert (= (and d!156555 (not c!137465)) b!1487607))

(assert (= (and b!1487607 res!1011735) b!1487606))

(assert (= (and b!1487606 (not res!1011737)) b!1487608))

(assert (= (and b!1487608 (not res!1011736)) b!1487610))

(declare-fun m!1372277 () Bool)

(assert (=> b!1487610 m!1372277))

(declare-fun m!1372279 () Bool)

(assert (=> d!156555 m!1372279))

(assert (=> d!156555 m!1371921))

(assert (=> b!1487608 m!1372277))

(declare-fun m!1372281 () Bool)

(assert (=> b!1487613 m!1372281))

(assert (=> b!1487613 m!1372281))

(assert (=> b!1487613 m!1371933))

(declare-fun m!1372283 () Bool)

(assert (=> b!1487613 m!1372283))

(assert (=> b!1487606 m!1372277))

(assert (=> b!1487127 d!156555))

(declare-fun b!1487624 () Bool)

(declare-fun lt!648858 () SeekEntryResult!12297)

(assert (=> b!1487624 (and (bvsge (index!51581 lt!648858) #b00000000000000000000000000000000) (bvslt (index!51581 lt!648858) (size!48585 lt!648661)))))

(declare-fun res!1011743 () Bool)

(assert (=> b!1487624 (= res!1011743 (= (select (arr!48034 lt!648661) (index!51581 lt!648858)) lt!648664))))

(declare-fun e!833909 () Bool)

(assert (=> b!1487624 (=> res!1011743 e!833909)))

(declare-fun e!833910 () Bool)

(assert (=> b!1487624 (= e!833910 e!833909)))

(declare-fun b!1487625 () Bool)

(declare-fun e!833908 () Bool)

(assert (=> b!1487625 (= e!833908 e!833910)))

(declare-fun res!1011741 () Bool)

(assert (=> b!1487625 (= res!1011741 (and (is-Intermediate!12297 lt!648858) (not (undefined!13109 lt!648858)) (bvslt (x!133164 lt!648858) #b01111111111111111111111111111110) (bvsge (x!133164 lt!648858) #b00000000000000000000000000000000) (bvsge (x!133164 lt!648858) #b00000000000000000000000000000000)))))

(assert (=> b!1487625 (=> (not res!1011741) (not e!833910))))

(declare-fun b!1487626 () Bool)

(assert (=> b!1487626 (and (bvsge (index!51581 lt!648858) #b00000000000000000000000000000000) (bvslt (index!51581 lt!648858) (size!48585 lt!648661)))))

(declare-fun res!1011742 () Bool)

(assert (=> b!1487626 (= res!1011742 (= (select (arr!48034 lt!648661) (index!51581 lt!648858)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1487626 (=> res!1011742 e!833909)))

(declare-fun b!1487627 () Bool)

(assert (=> b!1487627 (= e!833908 (bvsge (x!133164 lt!648858) #b01111111111111111111111111111110))))

(declare-fun d!156559 () Bool)

(assert (=> d!156559 e!833908))

(declare-fun c!137471 () Bool)

(assert (=> d!156559 (= c!137471 (and (is-Intermediate!12297 lt!648858) (undefined!13109 lt!648858)))))

(declare-fun e!833906 () SeekEntryResult!12297)

(assert (=> d!156559 (= lt!648858 e!833906)))

(declare-fun c!137469 () Bool)

(assert (=> d!156559 (= c!137469 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!648859 () (_ BitVec 64))

(assert (=> d!156559 (= lt!648859 (select (arr!48034 lt!648661) (toIndex!0 lt!648664 mask!2687)))))

(assert (=> d!156559 (validMask!0 mask!2687)))

(assert (=> d!156559 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648664 mask!2687) lt!648664 lt!648661 mask!2687) lt!648858)))

(declare-fun b!1487628 () Bool)

(assert (=> b!1487628 (and (bvsge (index!51581 lt!648858) #b00000000000000000000000000000000) (bvslt (index!51581 lt!648858) (size!48585 lt!648661)))))

(assert (=> b!1487628 (= e!833909 (= (select (arr!48034 lt!648661) (index!51581 lt!648858)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1487629 () Bool)

(assert (=> b!1487629 (= e!833906 (Intermediate!12297 true (toIndex!0 lt!648664 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1487630 () Bool)

(declare-fun e!833907 () SeekEntryResult!12297)

(assert (=> b!1487630 (= e!833906 e!833907)))

(declare-fun c!137470 () Bool)

(assert (=> b!1487630 (= c!137470 (or (= lt!648859 lt!648664) (= (bvadd lt!648859 lt!648859) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1487631 () Bool)

(assert (=> b!1487631 (= e!833907 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!648664 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!648664 lt!648661 mask!2687))))

(declare-fun b!1487632 () Bool)

(assert (=> b!1487632 (= e!833907 (Intermediate!12297 false (toIndex!0 lt!648664 mask!2687) #b00000000000000000000000000000000))))

(assert (= (and d!156559 c!137469) b!1487629))

(assert (= (and d!156559 (not c!137469)) b!1487630))

(assert (= (and b!1487630 c!137470) b!1487632))

(assert (= (and b!1487630 (not c!137470)) b!1487631))

(assert (= (and d!156559 c!137471) b!1487627))

(assert (= (and d!156559 (not c!137471)) b!1487625))

(assert (= (and b!1487625 res!1011741) b!1487624))

(assert (= (and b!1487624 (not res!1011743)) b!1487626))

(assert (= (and b!1487626 (not res!1011742)) b!1487628))

(declare-fun m!1372293 () Bool)

(assert (=> b!1487628 m!1372293))

(assert (=> d!156559 m!1371957))

(declare-fun m!1372295 () Bool)

(assert (=> d!156559 m!1372295))

(assert (=> d!156559 m!1371921))

(assert (=> b!1487626 m!1372293))

(assert (=> b!1487631 m!1371957))

(declare-fun m!1372297 () Bool)

(assert (=> b!1487631 m!1372297))

(assert (=> b!1487631 m!1372297))

(declare-fun m!1372299 () Bool)

(assert (=> b!1487631 m!1372299))

(assert (=> b!1487624 m!1372293))

(assert (=> b!1487115 d!156559))

(declare-fun d!156563 () Bool)

(declare-fun lt!648871 () (_ BitVec 32))

(declare-fun lt!648870 () (_ BitVec 32))

(assert (=> d!156563 (= lt!648871 (bvmul (bvxor lt!648870 (bvlshr lt!648870 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156563 (= lt!648870 ((_ extract 31 0) (bvand (bvxor lt!648664 (bvlshr lt!648664 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156563 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1011747 (let ((h!36093 ((_ extract 31 0) (bvand (bvxor lt!648664 (bvlshr lt!648664 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133178 (bvmul (bvxor h!36093 (bvlshr h!36093 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133178 (bvlshr x!133178 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1011747 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1011747 #b00000000000000000000000000000000))))))

(assert (=> d!156563 (= (toIndex!0 lt!648664 mask!2687) (bvand (bvxor lt!648871 (bvlshr lt!648871 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1487115 d!156563))

(declare-fun d!156573 () Bool)

(assert (=> d!156573 (= (validKeyInArray!0 (select (arr!48034 a!2862) j!93)) (and (not (= (select (arr!48034 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48034 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1487130 d!156573))

(declare-fun b!1487651 () Bool)

(declare-fun lt!648872 () SeekEntryResult!12297)

(assert (=> b!1487651 (and (bvsge (index!51581 lt!648872) #b00000000000000000000000000000000) (bvslt (index!51581 lt!648872) (size!48585 a!2862)))))

(declare-fun res!1011753 () Bool)

(assert (=> b!1487651 (= res!1011753 (= (select (arr!48034 a!2862) (index!51581 lt!648872)) (select (arr!48034 a!2862) j!93)))))

(declare-fun e!833924 () Bool)

(assert (=> b!1487651 (=> res!1011753 e!833924)))

(declare-fun e!833925 () Bool)

(assert (=> b!1487651 (= e!833925 e!833924)))

(declare-fun b!1487652 () Bool)

(declare-fun e!833923 () Bool)

(assert (=> b!1487652 (= e!833923 e!833925)))

(declare-fun res!1011751 () Bool)

(assert (=> b!1487652 (= res!1011751 (and (is-Intermediate!12297 lt!648872) (not (undefined!13109 lt!648872)) (bvslt (x!133164 lt!648872) #b01111111111111111111111111111110) (bvsge (x!133164 lt!648872) #b00000000000000000000000000000000) (bvsge (x!133164 lt!648872) #b00000000000000000000000000000000)))))

(assert (=> b!1487652 (=> (not res!1011751) (not e!833925))))

(declare-fun b!1487653 () Bool)

(assert (=> b!1487653 (and (bvsge (index!51581 lt!648872) #b00000000000000000000000000000000) (bvslt (index!51581 lt!648872) (size!48585 a!2862)))))

(declare-fun res!1011752 () Bool)

(assert (=> b!1487653 (= res!1011752 (= (select (arr!48034 a!2862) (index!51581 lt!648872)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1487653 (=> res!1011752 e!833924)))

(declare-fun b!1487654 () Bool)

(assert (=> b!1487654 (= e!833923 (bvsge (x!133164 lt!648872) #b01111111111111111111111111111110))))

(declare-fun d!156575 () Bool)

(assert (=> d!156575 e!833923))

(declare-fun c!137480 () Bool)

(assert (=> d!156575 (= c!137480 (and (is-Intermediate!12297 lt!648872) (undefined!13109 lt!648872)))))

(declare-fun e!833921 () SeekEntryResult!12297)

(assert (=> d!156575 (= lt!648872 e!833921)))

(declare-fun c!137478 () Bool)

(assert (=> d!156575 (= c!137478 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!648873 () (_ BitVec 64))

(assert (=> d!156575 (= lt!648873 (select (arr!48034 a!2862) (toIndex!0 (select (arr!48034 a!2862) j!93) mask!2687)))))

(assert (=> d!156575 (validMask!0 mask!2687)))

(assert (=> d!156575 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48034 a!2862) j!93) mask!2687) (select (arr!48034 a!2862) j!93) a!2862 mask!2687) lt!648872)))

(declare-fun b!1487655 () Bool)

(assert (=> b!1487655 (and (bvsge (index!51581 lt!648872) #b00000000000000000000000000000000) (bvslt (index!51581 lt!648872) (size!48585 a!2862)))))

(assert (=> b!1487655 (= e!833924 (= (select (arr!48034 a!2862) (index!51581 lt!648872)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1487656 () Bool)

(assert (=> b!1487656 (= e!833921 (Intermediate!12297 true (toIndex!0 (select (arr!48034 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1487657 () Bool)

(declare-fun e!833922 () SeekEntryResult!12297)

(assert (=> b!1487657 (= e!833921 e!833922)))

(declare-fun c!137479 () Bool)

(assert (=> b!1487657 (= c!137479 (or (= lt!648873 (select (arr!48034 a!2862) j!93)) (= (bvadd lt!648873 lt!648873) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1487658 () Bool)

(assert (=> b!1487658 (= e!833922 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48034 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!48034 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1487659 () Bool)

(assert (=> b!1487659 (= e!833922 (Intermediate!12297 false (toIndex!0 (select (arr!48034 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(assert (= (and d!156575 c!137478) b!1487656))

(assert (= (and d!156575 (not c!137478)) b!1487657))

(assert (= (and b!1487657 c!137479) b!1487659))

(assert (= (and b!1487657 (not c!137479)) b!1487658))

(assert (= (and d!156575 c!137480) b!1487654))

(assert (= (and d!156575 (not c!137480)) b!1487652))

(assert (= (and b!1487652 res!1011751) b!1487651))

(assert (= (and b!1487651 (not res!1011753)) b!1487653))

(assert (= (and b!1487653 (not res!1011752)) b!1487655))

(declare-fun m!1372313 () Bool)

(assert (=> b!1487655 m!1372313))

(assert (=> d!156575 m!1371951))

(declare-fun m!1372315 () Bool)

(assert (=> d!156575 m!1372315))

(assert (=> d!156575 m!1371921))

(assert (=> b!1487653 m!1372313))

(assert (=> b!1487658 m!1371951))

(declare-fun m!1372317 () Bool)

(assert (=> b!1487658 m!1372317))

(assert (=> b!1487658 m!1372317))

(assert (=> b!1487658 m!1371933))

(declare-fun m!1372319 () Bool)

(assert (=> b!1487658 m!1372319))

(assert (=> b!1487651 m!1372313))

(assert (=> b!1487119 d!156575))

(declare-fun d!156577 () Bool)

(declare-fun lt!648875 () (_ BitVec 32))

(declare-fun lt!648874 () (_ BitVec 32))

(assert (=> d!156577 (= lt!648875 (bvmul (bvxor lt!648874 (bvlshr lt!648874 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156577 (= lt!648874 ((_ extract 31 0) (bvand (bvxor (select (arr!48034 a!2862) j!93) (bvlshr (select (arr!48034 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156577 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1011747 (let ((h!36093 ((_ extract 31 0) (bvand (bvxor (select (arr!48034 a!2862) j!93) (bvlshr (select (arr!48034 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133178 (bvmul (bvxor h!36093 (bvlshr h!36093 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133178 (bvlshr x!133178 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1011747 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1011747 #b00000000000000000000000000000000))))))

(assert (=> d!156577 (= (toIndex!0 (select (arr!48034 a!2862) j!93) mask!2687) (bvand (bvxor lt!648875 (bvlshr lt!648875 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1487119 d!156577))

(declare-fun d!156579 () Bool)

