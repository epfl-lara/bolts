; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125738 () Bool)

(assert start!125738)

(declare-fun b!1470982 () Bool)

(declare-fun res!999146 () Bool)

(declare-fun e!825704 () Bool)

(assert (=> b!1470982 (=> (not res!999146) (not e!825704))))

(declare-datatypes ((array!99046 0))(
  ( (array!99047 (arr!47805 (Array (_ BitVec 32) (_ BitVec 64))) (size!48356 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99046)

(declare-datatypes ((List!34486 0))(
  ( (Nil!34483) (Cons!34482 (h!35835 (_ BitVec 64)) (t!49187 List!34486)) )
))
(declare-fun arrayNoDuplicates!0 (array!99046 (_ BitVec 32) List!34486) Bool)

(assert (=> b!1470982 (= res!999146 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34483))))

(declare-fun b!1470983 () Bool)

(declare-fun e!825699 () Bool)

(declare-fun e!825702 () Bool)

(assert (=> b!1470983 (= e!825699 e!825702)))

(declare-fun res!999148 () Bool)

(assert (=> b!1470983 (=> (not res!999148) (not e!825702))))

(declare-datatypes ((SeekEntryResult!12068 0))(
  ( (MissingZero!12068 (index!50663 (_ BitVec 32))) (Found!12068 (index!50664 (_ BitVec 32))) (Intermediate!12068 (undefined!12880 Bool) (index!50665 (_ BitVec 32)) (x!132241 (_ BitVec 32))) (Undefined!12068) (MissingVacant!12068 (index!50666 (_ BitVec 32))) )
))
(declare-fun lt!643060 () SeekEntryResult!12068)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99046 (_ BitVec 32)) SeekEntryResult!12068)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1470983 (= res!999148 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47805 a!2862) j!93) mask!2687) (select (arr!47805 a!2862) j!93) a!2862 mask!2687) lt!643060))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1470983 (= lt!643060 (Intermediate!12068 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1470984 () Bool)

(declare-fun res!999143 () Bool)

(assert (=> b!1470984 (=> (not res!999143) (not e!825702))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1470984 (= res!999143 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47805 a!2862) j!93) a!2862 mask!2687) lt!643060))))

(declare-fun b!1470986 () Bool)

(declare-fun res!999156 () Bool)

(declare-fun e!825703 () Bool)

(assert (=> b!1470986 (=> (not res!999156) (not e!825703))))

(declare-fun e!825698 () Bool)

(assert (=> b!1470986 (= res!999156 e!825698)))

(declare-fun c!135434 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1470986 (= c!135434 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1470987 () Bool)

(assert (=> b!1470987 (= e!825704 e!825699)))

(declare-fun res!999152 () Bool)

(assert (=> b!1470987 (=> (not res!999152) (not e!825699))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1470987 (= res!999152 (= (select (store (arr!47805 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!643061 () array!99046)

(assert (=> b!1470987 (= lt!643061 (array!99047 (store (arr!47805 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48356 a!2862)))))

(declare-fun b!1470988 () Bool)

(declare-fun e!825701 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99046 (_ BitVec 32)) SeekEntryResult!12068)

(assert (=> b!1470988 (= e!825701 (= (seekEntryOrOpen!0 (select (arr!47805 a!2862) j!93) a!2862 mask!2687) (Found!12068 j!93)))))

(declare-fun b!1470989 () Bool)

(declare-fun res!999155 () Bool)

(assert (=> b!1470989 (=> (not res!999155) (not e!825703))))

(assert (=> b!1470989 (= res!999155 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1470990 () Bool)

(declare-fun lt!643063 () (_ BitVec 64))

(declare-fun lt!643059 () SeekEntryResult!12068)

(assert (=> b!1470990 (= e!825698 (= lt!643059 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643063 lt!643061 mask!2687)))))

(declare-fun b!1470991 () Bool)

(declare-fun res!999149 () Bool)

(assert (=> b!1470991 (=> (not res!999149) (not e!825704))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99046 (_ BitVec 32)) Bool)

(assert (=> b!1470991 (= res!999149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1470992 () Bool)

(declare-fun res!999153 () Bool)

(assert (=> b!1470992 (=> (not res!999153) (not e!825704))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1470992 (= res!999153 (validKeyInArray!0 (select (arr!47805 a!2862) i!1006)))))

(declare-fun b!1470993 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99046 (_ BitVec 32)) SeekEntryResult!12068)

(assert (=> b!1470993 (= e!825698 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643063 lt!643061 mask!2687) (seekEntryOrOpen!0 lt!643063 lt!643061 mask!2687)))))

(declare-fun b!1470994 () Bool)

(declare-fun res!999151 () Bool)

(assert (=> b!1470994 (=> (not res!999151) (not e!825704))))

(assert (=> b!1470994 (= res!999151 (and (= (size!48356 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48356 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48356 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1470995 () Bool)

(declare-fun res!999144 () Bool)

(assert (=> b!1470995 (=> (not res!999144) (not e!825704))))

(assert (=> b!1470995 (= res!999144 (validKeyInArray!0 (select (arr!47805 a!2862) j!93)))))

(declare-fun b!1470985 () Bool)

(declare-fun res!999145 () Bool)

(assert (=> b!1470985 (=> (not res!999145) (not e!825704))))

(assert (=> b!1470985 (= res!999145 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48356 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48356 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48356 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!999150 () Bool)

(assert (=> start!125738 (=> (not res!999150) (not e!825704))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125738 (= res!999150 (validMask!0 mask!2687))))

(assert (=> start!125738 e!825704))

(assert (=> start!125738 true))

(declare-fun array_inv!36750 (array!99046) Bool)

(assert (=> start!125738 (array_inv!36750 a!2862)))

(declare-fun b!1470996 () Bool)

(assert (=> b!1470996 (= e!825702 e!825703)))

(declare-fun res!999154 () Bool)

(assert (=> b!1470996 (=> (not res!999154) (not e!825703))))

(assert (=> b!1470996 (= res!999154 (= lt!643059 (Intermediate!12068 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1470996 (= lt!643059 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643063 mask!2687) lt!643063 lt!643061 mask!2687))))

(assert (=> b!1470996 (= lt!643063 (select (store (arr!47805 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1470997 () Bool)

(assert (=> b!1470997 (= e!825703 (not (or (= (select (arr!47805 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47805 a!2862) intermediateBeforeIndex!19) (select (arr!47805 a!2862) j!93)))))))

(assert (=> b!1470997 e!825701))

(declare-fun res!999147 () Bool)

(assert (=> b!1470997 (=> (not res!999147) (not e!825701))))

(assert (=> b!1470997 (= res!999147 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49424 0))(
  ( (Unit!49425) )
))
(declare-fun lt!643062 () Unit!49424)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99046 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49424)

(assert (=> b!1470997 (= lt!643062 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!125738 res!999150) b!1470994))

(assert (= (and b!1470994 res!999151) b!1470992))

(assert (= (and b!1470992 res!999153) b!1470995))

(assert (= (and b!1470995 res!999144) b!1470991))

(assert (= (and b!1470991 res!999149) b!1470982))

(assert (= (and b!1470982 res!999146) b!1470985))

(assert (= (and b!1470985 res!999145) b!1470987))

(assert (= (and b!1470987 res!999152) b!1470983))

(assert (= (and b!1470983 res!999148) b!1470984))

(assert (= (and b!1470984 res!999143) b!1470996))

(assert (= (and b!1470996 res!999154) b!1470986))

(assert (= (and b!1470986 c!135434) b!1470990))

(assert (= (and b!1470986 (not c!135434)) b!1470993))

(assert (= (and b!1470986 res!999156) b!1470989))

(assert (= (and b!1470989 res!999155) b!1470997))

(assert (= (and b!1470997 res!999147) b!1470988))

(declare-fun m!1357991 () Bool)

(assert (=> b!1470997 m!1357991))

(declare-fun m!1357993 () Bool)

(assert (=> b!1470997 m!1357993))

(declare-fun m!1357995 () Bool)

(assert (=> b!1470997 m!1357995))

(declare-fun m!1357997 () Bool)

(assert (=> b!1470997 m!1357997))

(assert (=> b!1470984 m!1357993))

(assert (=> b!1470984 m!1357993))

(declare-fun m!1357999 () Bool)

(assert (=> b!1470984 m!1357999))

(declare-fun m!1358001 () Bool)

(assert (=> b!1470987 m!1358001))

(declare-fun m!1358003 () Bool)

(assert (=> b!1470987 m!1358003))

(declare-fun m!1358005 () Bool)

(assert (=> b!1470982 m!1358005))

(assert (=> b!1470995 m!1357993))

(assert (=> b!1470995 m!1357993))

(declare-fun m!1358007 () Bool)

(assert (=> b!1470995 m!1358007))

(declare-fun m!1358009 () Bool)

(assert (=> b!1470992 m!1358009))

(assert (=> b!1470992 m!1358009))

(declare-fun m!1358011 () Bool)

(assert (=> b!1470992 m!1358011))

(declare-fun m!1358013 () Bool)

(assert (=> b!1470991 m!1358013))

(declare-fun m!1358015 () Bool)

(assert (=> b!1470993 m!1358015))

(declare-fun m!1358017 () Bool)

(assert (=> b!1470993 m!1358017))

(assert (=> b!1470988 m!1357993))

(assert (=> b!1470988 m!1357993))

(declare-fun m!1358019 () Bool)

(assert (=> b!1470988 m!1358019))

(declare-fun m!1358021 () Bool)

(assert (=> b!1470996 m!1358021))

(assert (=> b!1470996 m!1358021))

(declare-fun m!1358023 () Bool)

(assert (=> b!1470996 m!1358023))

(assert (=> b!1470996 m!1358001))

(declare-fun m!1358025 () Bool)

(assert (=> b!1470996 m!1358025))

(declare-fun m!1358027 () Bool)

(assert (=> start!125738 m!1358027))

(declare-fun m!1358029 () Bool)

(assert (=> start!125738 m!1358029))

(assert (=> b!1470983 m!1357993))

(assert (=> b!1470983 m!1357993))

(declare-fun m!1358031 () Bool)

(assert (=> b!1470983 m!1358031))

(assert (=> b!1470983 m!1358031))

(assert (=> b!1470983 m!1357993))

(declare-fun m!1358033 () Bool)

(assert (=> b!1470983 m!1358033))

(declare-fun m!1358035 () Bool)

(assert (=> b!1470990 m!1358035))

(push 1)

(assert (not b!1470992))

(assert (not b!1470995))

(assert (not b!1470982))

(assert (not b!1470983))

(assert (not b!1470984))

(assert (not b!1470997))

(assert (not b!1470993))

(assert (not b!1470988))

(assert (not b!1470996))

(assert (not b!1470990))

(assert (not start!125738))

(assert (not b!1470991))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!155365 () Bool)

(assert (=> d!155365 (= (validKeyInArray!0 (select (arr!47805 a!2862) i!1006)) (and (not (= (select (arr!47805 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47805 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1470992 d!155365))

(declare-fun b!1471056 () Bool)

(declare-fun e!825745 () Bool)

(declare-fun call!67722 () Bool)

(assert (=> b!1471056 (= e!825745 call!67722)))

(declare-fun b!1471057 () Bool)

(declare-fun e!825743 () Bool)

(declare-fun contains!9910 (List!34486 (_ BitVec 64)) Bool)

(assert (=> b!1471057 (= e!825743 (contains!9910 Nil!34483 (select (arr!47805 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!155367 () Bool)

(declare-fun res!999182 () Bool)

(declare-fun e!825744 () Bool)

(assert (=> d!155367 (=> res!999182 e!825744)))

(assert (=> d!155367 (= res!999182 (bvsge #b00000000000000000000000000000000 (size!48356 a!2862)))))

(assert (=> d!155367 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34483) e!825744)))

(declare-fun bm!67719 () Bool)

(declare-fun c!135452 () Bool)

(assert (=> bm!67719 (= call!67722 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!135452 (Cons!34482 (select (arr!47805 a!2862) #b00000000000000000000000000000000) Nil!34483) Nil!34483)))))

(declare-fun b!1471058 () Bool)

(declare-fun e!825742 () Bool)

(assert (=> b!1471058 (= e!825744 e!825742)))

(declare-fun res!999183 () Bool)

(assert (=> b!1471058 (=> (not res!999183) (not e!825742))))

(assert (=> b!1471058 (= res!999183 (not e!825743))))

(declare-fun res!999184 () Bool)

(assert (=> b!1471058 (=> (not res!999184) (not e!825743))))

(assert (=> b!1471058 (= res!999184 (validKeyInArray!0 (select (arr!47805 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1471059 () Bool)

(assert (=> b!1471059 (= e!825742 e!825745)))

(assert (=> b!1471059 (= c!135452 (validKeyInArray!0 (select (arr!47805 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1471060 () Bool)

(assert (=> b!1471060 (= e!825745 call!67722)))

(assert (= (and d!155367 (not res!999182)) b!1471058))

(assert (= (and b!1471058 res!999184) b!1471057))

(assert (= (and b!1471058 res!999183) b!1471059))

(assert (= (and b!1471059 c!135452) b!1471056))

(assert (= (and b!1471059 (not c!135452)) b!1471060))

(assert (= (or b!1471056 b!1471060) bm!67719))

(declare-fun m!1358061 () Bool)

(assert (=> b!1471057 m!1358061))

(assert (=> b!1471057 m!1358061))

(declare-fun m!1358063 () Bool)

(assert (=> b!1471057 m!1358063))

(assert (=> bm!67719 m!1358061))

(declare-fun m!1358065 () Bool)

(assert (=> bm!67719 m!1358065))

(assert (=> b!1471058 m!1358061))

(assert (=> b!1471058 m!1358061))

(declare-fun m!1358067 () Bool)

(assert (=> b!1471058 m!1358067))

(assert (=> b!1471059 m!1358061))

(assert (=> b!1471059 m!1358061))

(assert (=> b!1471059 m!1358067))

(assert (=> b!1470982 d!155367))

(declare-fun b!1471109 () Bool)

(declare-fun e!825771 () SeekEntryResult!12068)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1471109 (= e!825771 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!643063 lt!643061 mask!2687))))

(declare-fun lt!643107 () SeekEntryResult!12068)

(declare-fun d!155373 () Bool)

(assert (=> d!155373 (and (or (is-Undefined!12068 lt!643107) (not (is-Found!12068 lt!643107)) (and (bvsge (index!50664 lt!643107) #b00000000000000000000000000000000) (bvslt (index!50664 lt!643107) (size!48356 lt!643061)))) (or (is-Undefined!12068 lt!643107) (is-Found!12068 lt!643107) (not (is-MissingVacant!12068 lt!643107)) (not (= (index!50666 lt!643107) intermediateAfterIndex!19)) (and (bvsge (index!50666 lt!643107) #b00000000000000000000000000000000) (bvslt (index!50666 lt!643107) (size!48356 lt!643061)))) (or (is-Undefined!12068 lt!643107) (ite (is-Found!12068 lt!643107) (= (select (arr!47805 lt!643061) (index!50664 lt!643107)) lt!643063) (and (is-MissingVacant!12068 lt!643107) (= (index!50666 lt!643107) intermediateAfterIndex!19) (= (select (arr!47805 lt!643061) (index!50666 lt!643107)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!825770 () SeekEntryResult!12068)

(assert (=> d!155373 (= lt!643107 e!825770)))

(declare-fun c!135478 () Bool)

(assert (=> d!155373 (= c!135478 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!643106 () (_ BitVec 64))

(assert (=> d!155373 (= lt!643106 (select (arr!47805 lt!643061) index!646))))

(assert (=> d!155373 (validMask!0 mask!2687)))

(assert (=> d!155373 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643063 lt!643061 mask!2687) lt!643107)))

(declare-fun b!1471110 () Bool)

(declare-fun e!825772 () SeekEntryResult!12068)

(assert (=> b!1471110 (= e!825772 (Found!12068 index!646))))

(declare-fun b!1471111 () Bool)

(declare-fun c!135479 () Bool)

(assert (=> b!1471111 (= c!135479 (= lt!643106 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1471111 (= e!825772 e!825771)))

(declare-fun b!1471112 () Bool)

(assert (=> b!1471112 (= e!825771 (MissingVacant!12068 intermediateAfterIndex!19))))

(declare-fun b!1471113 () Bool)

(assert (=> b!1471113 (= e!825770 e!825772)))

(declare-fun c!135477 () Bool)

(assert (=> b!1471113 (= c!135477 (= lt!643106 lt!643063))))

(declare-fun b!1471114 () Bool)

(assert (=> b!1471114 (= e!825770 Undefined!12068)))

(assert (= (and d!155373 c!135478) b!1471114))

(assert (= (and d!155373 (not c!135478)) b!1471113))

(assert (= (and b!1471113 c!135477) b!1471110))

(assert (= (and b!1471113 (not c!135477)) b!1471111))

(assert (= (and b!1471111 c!135479) b!1471112))

(assert (= (and b!1471111 (not c!135479)) b!1471109))

(declare-fun m!1358085 () Bool)

(assert (=> b!1471109 m!1358085))

(assert (=> b!1471109 m!1358085))

(declare-fun m!1358087 () Bool)

(assert (=> b!1471109 m!1358087))

(declare-fun m!1358089 () Bool)

(assert (=> d!155373 m!1358089))

(declare-fun m!1358091 () Bool)

(assert (=> d!155373 m!1358091))

(declare-fun m!1358093 () Bool)

(assert (=> d!155373 m!1358093))

(assert (=> d!155373 m!1358027))

(assert (=> b!1470993 d!155373))

(declare-fun b!1471180 () Bool)

(declare-fun e!825812 () SeekEntryResult!12068)

(declare-fun e!825808 () SeekEntryResult!12068)

(assert (=> b!1471180 (= e!825812 e!825808)))

(declare-fun lt!643141 () (_ BitVec 64))

(declare-fun lt!643145 () SeekEntryResult!12068)

(assert (=> b!1471180 (= lt!643141 (select (arr!47805 lt!643061) (index!50665 lt!643145)))))

(declare-fun c!135512 () Bool)

(assert (=> b!1471180 (= c!135512 (= lt!643141 lt!643063))))

(declare-fun b!1471182 () Bool)

(assert (=> b!1471182 (= e!825808 (Found!12068 (index!50665 lt!643145)))))

(declare-fun b!1471186 () Bool)

(declare-fun c!135510 () Bool)

(assert (=> b!1471186 (= c!135510 (= lt!643141 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!825810 () SeekEntryResult!12068)

(assert (=> b!1471186 (= e!825808 e!825810)))

(declare-fun b!1471188 () Bool)

(assert (=> b!1471188 (= e!825810 (MissingZero!12068 (index!50665 lt!643145)))))

(declare-fun b!1471189 () Bool)

(assert (=> b!1471189 (= e!825812 Undefined!12068)))

(declare-fun d!155379 () Bool)

(declare-fun lt!643140 () SeekEntryResult!12068)

(assert (=> d!155379 (and (or (is-Undefined!12068 lt!643140) (not (is-Found!12068 lt!643140)) (and (bvsge (index!50664 lt!643140) #b00000000000000000000000000000000) (bvslt (index!50664 lt!643140) (size!48356 lt!643061)))) (or (is-Undefined!12068 lt!643140) (is-Found!12068 lt!643140) (not (is-MissingZero!12068 lt!643140)) (and (bvsge (index!50663 lt!643140) #b00000000000000000000000000000000) (bvslt (index!50663 lt!643140) (size!48356 lt!643061)))) (or (is-Undefined!12068 lt!643140) (is-Found!12068 lt!643140) (is-MissingZero!12068 lt!643140) (not (is-MissingVacant!12068 lt!643140)) (and (bvsge (index!50666 lt!643140) #b00000000000000000000000000000000) (bvslt (index!50666 lt!643140) (size!48356 lt!643061)))) (or (is-Undefined!12068 lt!643140) (ite (is-Found!12068 lt!643140) (= (select (arr!47805 lt!643061) (index!50664 lt!643140)) lt!643063) (ite (is-MissingZero!12068 lt!643140) (= (select (arr!47805 lt!643061) (index!50663 lt!643140)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12068 lt!643140) (= (select (arr!47805 lt!643061) (index!50666 lt!643140)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!155379 (= lt!643140 e!825812)))

(declare-fun c!135511 () Bool)

(assert (=> d!155379 (= c!135511 (and (is-Intermediate!12068 lt!643145) (undefined!12880 lt!643145)))))

(assert (=> d!155379 (= lt!643145 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643063 mask!2687) lt!643063 lt!643061 mask!2687))))

(assert (=> d!155379 (validMask!0 mask!2687)))

(assert (=> d!155379 (= (seekEntryOrOpen!0 lt!643063 lt!643061 mask!2687) lt!643140)))

(declare-fun b!1471184 () Bool)

(assert (=> b!1471184 (= e!825810 (seekKeyOrZeroReturnVacant!0 (x!132241 lt!643145) (index!50665 lt!643145) (index!50665 lt!643145) lt!643063 lt!643061 mask!2687))))

(assert (= (and d!155379 c!135511) b!1471189))

(assert (= (and d!155379 (not c!135511)) b!1471180))

(assert (= (and b!1471180 c!135512) b!1471182))

(assert (= (and b!1471180 (not c!135512)) b!1471186))

(assert (= (and b!1471186 c!135510) b!1471188))

(assert (= (and b!1471186 (not c!135510)) b!1471184))

(declare-fun m!1358127 () Bool)

(assert (=> b!1471180 m!1358127))

(declare-fun m!1358131 () Bool)

(assert (=> d!155379 m!1358131))

(assert (=> d!155379 m!1358021))

(assert (=> d!155379 m!1358023))

(assert (=> d!155379 m!1358021))

(assert (=> d!155379 m!1358027))

(declare-fun m!1358133 () Bool)

(assert (=> d!155379 m!1358133))

(declare-fun m!1358135 () Bool)

(assert (=> d!155379 m!1358135))

(declare-fun m!1358137 () Bool)

(assert (=> b!1471184 m!1358137))

(assert (=> b!1470993 d!155379))

(declare-fun e!825851 () SeekEntryResult!12068)

(declare-fun b!1471246 () Bool)

(assert (=> b!1471246 (= e!825851 (Intermediate!12068 false (toIndex!0 (select (arr!47805 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun e!825853 () SeekEntryResult!12068)

(declare-fun b!1471247 () Bool)

(assert (=> b!1471247 (= e!825853 (Intermediate!12068 true (toIndex!0 (select (arr!47805 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1471249 () Bool)

(assert (=> b!1471249 (= e!825853 e!825851)))

(declare-fun lt!643166 () (_ BitVec 64))

(declare-fun c!135531 () Bool)

(assert (=> b!1471249 (= c!135531 (or (= lt!643166 (select (arr!47805 a!2862) j!93)) (= (bvadd lt!643166 lt!643166) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1471250 () Bool)

(declare-fun e!825850 () Bool)

(declare-fun e!825852 () Bool)

(assert (=> b!1471250 (= e!825850 e!825852)))

(declare-fun res!999216 () Bool)

(declare-fun lt!643167 () SeekEntryResult!12068)

(assert (=> b!1471250 (= res!999216 (and (is-Intermediate!12068 lt!643167) (not (undefined!12880 lt!643167)) (bvslt (x!132241 lt!643167) #b01111111111111111111111111111110) (bvsge (x!132241 lt!643167) #b00000000000000000000000000000000) (bvsge (x!132241 lt!643167) #b00000000000000000000000000000000)))))

(assert (=> b!1471250 (=> (not res!999216) (not e!825852))))

(declare-fun b!1471251 () Bool)

(assert (=> b!1471251 (and (bvsge (index!50665 lt!643167) #b00000000000000000000000000000000) (bvslt (index!50665 lt!643167) (size!48356 a!2862)))))

(declare-fun e!825854 () Bool)

(assert (=> b!1471251 (= e!825854 (= (select (arr!47805 a!2862) (index!50665 lt!643167)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1471252 () Bool)

(assert (=> b!1471252 (and (bvsge (index!50665 lt!643167) #b00000000000000000000000000000000) (bvslt (index!50665 lt!643167) (size!48356 a!2862)))))

(declare-fun res!999218 () Bool)

(assert (=> b!1471252 (= res!999218 (= (select (arr!47805 a!2862) (index!50665 lt!643167)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1471252 (=> res!999218 e!825854)))

(declare-fun b!1471253 () Bool)

(assert (=> b!1471253 (and (bvsge (index!50665 lt!643167) #b00000000000000000000000000000000) (bvslt (index!50665 lt!643167) (size!48356 a!2862)))))

(declare-fun res!999217 () Bool)

(assert (=> b!1471253 (= res!999217 (= (select (arr!47805 a!2862) (index!50665 lt!643167)) (select (arr!47805 a!2862) j!93)))))

(assert (=> b!1471253 (=> res!999217 e!825854)))

(assert (=> b!1471253 (= e!825852 e!825854)))

(declare-fun b!1471254 () Bool)

(assert (=> b!1471254 (= e!825851 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47805 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47805 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1471248 () Bool)

(assert (=> b!1471248 (= e!825850 (bvsge (x!132241 lt!643167) #b01111111111111111111111111111110))))

(declare-fun d!155393 () Bool)

(assert (=> d!155393 e!825850))

(declare-fun c!135530 () Bool)

(assert (=> d!155393 (= c!135530 (and (is-Intermediate!12068 lt!643167) (undefined!12880 lt!643167)))))

(assert (=> d!155393 (= lt!643167 e!825853)))

(declare-fun c!135532 () Bool)

(assert (=> d!155393 (= c!135532 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!155393 (= lt!643166 (select (arr!47805 a!2862) (toIndex!0 (select (arr!47805 a!2862) j!93) mask!2687)))))

(assert (=> d!155393 (validMask!0 mask!2687)))

(assert (=> d!155393 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47805 a!2862) j!93) mask!2687) (select (arr!47805 a!2862) j!93) a!2862 mask!2687) lt!643167)))

(assert (= (and d!155393 c!135532) b!1471247))

(assert (= (and d!155393 (not c!135532)) b!1471249))

(assert (= (and b!1471249 c!135531) b!1471246))

(assert (= (and b!1471249 (not c!135531)) b!1471254))

(assert (= (and d!155393 c!135530) b!1471248))

(assert (= (and d!155393 (not c!135530)) b!1471250))

(assert (= (and b!1471250 res!999216) b!1471253))

(assert (= (and b!1471253 (not res!999217)) b!1471252))

(assert (= (and b!1471252 (not res!999218)) b!1471251))

(declare-fun m!1358183 () Bool)

(assert (=> b!1471251 m!1358183))

(assert (=> b!1471252 m!1358183))

(assert (=> d!155393 m!1358031))

(declare-fun m!1358187 () Bool)

(assert (=> d!155393 m!1358187))

(assert (=> d!155393 m!1358027))

(assert (=> b!1471253 m!1358183))

(assert (=> b!1471254 m!1358031))

(declare-fun m!1358189 () Bool)

(assert (=> b!1471254 m!1358189))

(assert (=> b!1471254 m!1358189))

(assert (=> b!1471254 m!1357993))

(declare-fun m!1358191 () Bool)

(assert (=> b!1471254 m!1358191))

(assert (=> b!1470983 d!155393))

(declare-fun d!155413 () Bool)

(declare-fun lt!643177 () (_ BitVec 32))

(declare-fun lt!643176 () (_ BitVec 32))

(assert (=> d!155413 (= lt!643177 (bvmul (bvxor lt!643176 (bvlshr lt!643176 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155413 (= lt!643176 ((_ extract 31 0) (bvand (bvxor (select (arr!47805 a!2862) j!93) (bvlshr (select (arr!47805 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155413 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!999219 (let ((h!35837 ((_ extract 31 0) (bvand (bvxor (select (arr!47805 a!2862) j!93) (bvlshr (select (arr!47805 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132249 (bvmul (bvxor h!35837 (bvlshr h!35837 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132249 (bvlshr x!132249 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!999219 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!999219 #b00000000000000000000000000000000))))))

(assert (=> d!155413 (= (toIndex!0 (select (arr!47805 a!2862) j!93) mask!2687) (bvand (bvxor lt!643177 (bvlshr lt!643177 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1470983 d!155413))

(declare-fun b!1471282 () Bool)

(declare-fun e!825871 () SeekEntryResult!12068)

(assert (=> b!1471282 (= e!825871 (Intermediate!12068 false index!646 x!665))))

(declare-fun b!1471283 () Bool)

(declare-fun e!825873 () SeekEntryResult!12068)

(assert (=> b!1471283 (= e!825873 (Intermediate!12068 true index!646 x!665))))

(declare-fun b!1471285 () Bool)

(assert (=> b!1471285 (= e!825873 e!825871)))

(declare-fun c!135543 () Bool)

(declare-fun lt!643180 () (_ BitVec 64))

(assert (=> b!1471285 (= c!135543 (or (= lt!643180 (select (arr!47805 a!2862) j!93)) (= (bvadd lt!643180 lt!643180) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1471286 () Bool)

(declare-fun e!825870 () Bool)

(declare-fun e!825872 () Bool)

(assert (=> b!1471286 (= e!825870 e!825872)))

(declare-fun res!999229 () Bool)

(declare-fun lt!643181 () SeekEntryResult!12068)

(assert (=> b!1471286 (= res!999229 (and (is-Intermediate!12068 lt!643181) (not (undefined!12880 lt!643181)) (bvslt (x!132241 lt!643181) #b01111111111111111111111111111110) (bvsge (x!132241 lt!643181) #b00000000000000000000000000000000) (bvsge (x!132241 lt!643181) x!665)))))

(assert (=> b!1471286 (=> (not res!999229) (not e!825872))))

(declare-fun b!1471287 () Bool)

(assert (=> b!1471287 (and (bvsge (index!50665 lt!643181) #b00000000000000000000000000000000) (bvslt (index!50665 lt!643181) (size!48356 a!2862)))))

(declare-fun e!825874 () Bool)

(assert (=> b!1471287 (= e!825874 (= (select (arr!47805 a!2862) (index!50665 lt!643181)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1471288 () Bool)

(assert (=> b!1471288 (and (bvsge (index!50665 lt!643181) #b00000000000000000000000000000000) (bvslt (index!50665 lt!643181) (size!48356 a!2862)))))

(declare-fun res!999231 () Bool)

(assert (=> b!1471288 (= res!999231 (= (select (arr!47805 a!2862) (index!50665 lt!643181)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1471288 (=> res!999231 e!825874)))

(declare-fun b!1471289 () Bool)

(assert (=> b!1471289 (and (bvsge (index!50665 lt!643181) #b00000000000000000000000000000000) (bvslt (index!50665 lt!643181) (size!48356 a!2862)))))

(declare-fun res!999230 () Bool)

(assert (=> b!1471289 (= res!999230 (= (select (arr!47805 a!2862) (index!50665 lt!643181)) (select (arr!47805 a!2862) j!93)))))

(assert (=> b!1471289 (=> res!999230 e!825874)))

(assert (=> b!1471289 (= e!825872 e!825874)))

(declare-fun b!1471290 () Bool)

(assert (=> b!1471290 (= e!825871 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47805 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1471284 () Bool)

(assert (=> b!1471284 (= e!825870 (bvsge (x!132241 lt!643181) #b01111111111111111111111111111110))))

(declare-fun d!155415 () Bool)

(assert (=> d!155415 e!825870))

(declare-fun c!135542 () Bool)

(assert (=> d!155415 (= c!135542 (and (is-Intermediate!12068 lt!643181) (undefined!12880 lt!643181)))))

(assert (=> d!155415 (= lt!643181 e!825873)))

(declare-fun c!135544 () Bool)

(assert (=> d!155415 (= c!135544 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155415 (= lt!643180 (select (arr!47805 a!2862) index!646))))

(assert (=> d!155415 (validMask!0 mask!2687)))

(assert (=> d!155415 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47805 a!2862) j!93) a!2862 mask!2687) lt!643181)))

(assert (= (and d!155415 c!135544) b!1471283))

(assert (= (and d!155415 (not c!135544)) b!1471285))

(assert (= (and b!1471285 c!135543) b!1471282))

(assert (= (and b!1471285 (not c!135543)) b!1471290))

(assert (= (and d!155415 c!135542) b!1471284))

(assert (= (and d!155415 (not c!135542)) b!1471286))

(assert (= (and b!1471286 res!999229) b!1471289))

(assert (= (and b!1471289 (not res!999230)) b!1471288))

(assert (= (and b!1471288 (not res!999231)) b!1471287))

(declare-fun m!1358199 () Bool)

(assert (=> b!1471287 m!1358199))

(assert (=> b!1471288 m!1358199))

(declare-fun m!1358201 () Bool)

(assert (=> d!155415 m!1358201))

(assert (=> d!155415 m!1358027))

(assert (=> b!1471289 m!1358199))

(assert (=> b!1471290 m!1358085))

(assert (=> b!1471290 m!1358085))

(assert (=> b!1471290 m!1357993))

(declare-fun m!1358203 () Bool)

(assert (=> b!1471290 m!1358203))

(assert (=> b!1470984 d!155415))

(declare-fun d!155419 () Bool)

(assert (=> d!155419 (= (validKeyInArray!0 (select (arr!47805 a!2862) j!93)) (and (not (= (select (arr!47805 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47805 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1470995 d!155419))

(declare-fun d!155421 () Bool)

(assert (=> d!155421 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!125738 d!155421))

(declare-fun d!155427 () Bool)

(assert (=> d!155427 (= (array_inv!36750 a!2862) (bvsge (size!48356 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!125738 d!155427))

(declare-fun b!1471310 () Bool)

(declare-fun e!825889 () SeekEntryResult!12068)

(assert (=> b!1471310 (= e!825889 (Intermediate!12068 false (toIndex!0 lt!643063 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1471311 () Bool)

(declare-fun e!825891 () SeekEntryResult!12068)

(assert (=> b!1471311 (= e!825891 (Intermediate!12068 true (toIndex!0 lt!643063 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1471313 () Bool)

(assert (=> b!1471313 (= e!825891 e!825889)))

(declare-fun c!135551 () Bool)

(declare-fun lt!643190 () (_ BitVec 64))

(assert (=> b!1471313 (= c!135551 (or (= lt!643190 lt!643063) (= (bvadd lt!643190 lt!643190) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1471314 () Bool)

(declare-fun e!825888 () Bool)

(declare-fun e!825890 () Bool)

(assert (=> b!1471314 (= e!825888 e!825890)))

(declare-fun res!999242 () Bool)

(declare-fun lt!643191 () SeekEntryResult!12068)

(assert (=> b!1471314 (= res!999242 (and (is-Intermediate!12068 lt!643191) (not (undefined!12880 lt!643191)) (bvslt (x!132241 lt!643191) #b01111111111111111111111111111110) (bvsge (x!132241 lt!643191) #b00000000000000000000000000000000) (bvsge (x!132241 lt!643191) #b00000000000000000000000000000000)))))

(assert (=> b!1471314 (=> (not res!999242) (not e!825890))))

(declare-fun b!1471315 () Bool)

(assert (=> b!1471315 (and (bvsge (index!50665 lt!643191) #b00000000000000000000000000000000) (bvslt (index!50665 lt!643191) (size!48356 lt!643061)))))

(declare-fun e!825892 () Bool)

(assert (=> b!1471315 (= e!825892 (= (select (arr!47805 lt!643061) (index!50665 lt!643191)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1471316 () Bool)

(assert (=> b!1471316 (and (bvsge (index!50665 lt!643191) #b00000000000000000000000000000000) (bvslt (index!50665 lt!643191) (size!48356 lt!643061)))))

(declare-fun res!999244 () Bool)

(assert (=> b!1471316 (= res!999244 (= (select (arr!47805 lt!643061) (index!50665 lt!643191)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1471316 (=> res!999244 e!825892)))

(declare-fun b!1471317 () Bool)

(assert (=> b!1471317 (and (bvsge (index!50665 lt!643191) #b00000000000000000000000000000000) (bvslt (index!50665 lt!643191) (size!48356 lt!643061)))))

(declare-fun res!999243 () Bool)

(assert (=> b!1471317 (= res!999243 (= (select (arr!47805 lt!643061) (index!50665 lt!643191)) lt!643063))))

(assert (=> b!1471317 (=> res!999243 e!825892)))

(assert (=> b!1471317 (= e!825890 e!825892)))

(declare-fun b!1471318 () Bool)

(assert (=> b!1471318 (= e!825889 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!643063 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!643063 lt!643061 mask!2687))))

(declare-fun b!1471312 () Bool)

(assert (=> b!1471312 (= e!825888 (bvsge (x!132241 lt!643191) #b01111111111111111111111111111110))))

(declare-fun d!155429 () Bool)

(assert (=> d!155429 e!825888))

(declare-fun c!135550 () Bool)

(assert (=> d!155429 (= c!135550 (and (is-Intermediate!12068 lt!643191) (undefined!12880 lt!643191)))))

(assert (=> d!155429 (= lt!643191 e!825891)))

(declare-fun c!135552 () Bool)

(assert (=> d!155429 (= c!135552 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!155429 (= lt!643190 (select (arr!47805 lt!643061) (toIndex!0 lt!643063 mask!2687)))))

(assert (=> d!155429 (validMask!0 mask!2687)))

(assert (=> d!155429 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643063 mask!2687) lt!643063 lt!643061 mask!2687) lt!643191)))

(assert (= (and d!155429 c!135552) b!1471311))

(assert (= (and d!155429 (not c!135552)) b!1471313))

(assert (= (and b!1471313 c!135551) b!1471310))

(assert (= (and b!1471313 (not c!135551)) b!1471318))

(assert (= (and d!155429 c!135550) b!1471312))

(assert (= (and d!155429 (not c!135550)) b!1471314))

(assert (= (and b!1471314 res!999242) b!1471317))

(assert (= (and b!1471317 (not res!999243)) b!1471316))

(assert (= (and b!1471316 (not res!999244)) b!1471315))

(declare-fun m!1358213 () Bool)

(assert (=> b!1471315 m!1358213))

(assert (=> b!1471316 m!1358213))

(assert (=> d!155429 m!1358021))

(declare-fun m!1358215 () Bool)

(assert (=> d!155429 m!1358215))

(assert (=> d!155429 m!1358027))

(assert (=> b!1471317 m!1358213))

(assert (=> b!1471318 m!1358021))

(declare-fun m!1358217 () Bool)

(assert (=> b!1471318 m!1358217))

(assert (=> b!1471318 m!1358217))

(declare-fun m!1358219 () Bool)

(assert (=> b!1471318 m!1358219))

(assert (=> b!1470996 d!155429))

(declare-fun d!155431 () Bool)

(declare-fun lt!643193 () (_ BitVec 32))

(declare-fun lt!643192 () (_ BitVec 32))

(assert (=> d!155431 (= lt!643193 (bvmul (bvxor lt!643192 (bvlshr lt!643192 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155431 (= lt!643192 ((_ extract 31 0) (bvand (bvxor lt!643063 (bvlshr lt!643063 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155431 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!999219 (let ((h!35837 ((_ extract 31 0) (bvand (bvxor lt!643063 (bvlshr lt!643063 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132249 (bvmul (bvxor h!35837 (bvlshr h!35837 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132249 (bvlshr x!132249 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!999219 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!999219 #b00000000000000000000000000000000))))))

(assert (=> d!155431 (= (toIndex!0 lt!643063 mask!2687) (bvand (bvxor lt!643193 (bvlshr lt!643193 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1470996 d!155431))

(declare-fun b!1471341 () Bool)

(declare-fun e!825908 () Bool)

(declare-fun e!825909 () Bool)

(assert (=> b!1471341 (= e!825908 e!825909)))

(declare-fun lt!643203 () (_ BitVec 64))

(assert (=> b!1471341 (= lt!643203 (select (arr!47805 a!2862) j!93))))

(declare-fun lt!643202 () Unit!49424)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99046 (_ BitVec 64) (_ BitVec 32)) Unit!49424)

(assert (=> b!1471341 (= lt!643202 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!643203 j!93))))

(declare-fun arrayContainsKey!0 (array!99046 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1471341 (arrayContainsKey!0 a!2862 lt!643203 #b00000000000000000000000000000000)))

(declare-fun lt!643204 () Unit!49424)

(assert (=> b!1471341 (= lt!643204 lt!643202)))

(declare-fun res!999255 () Bool)

(assert (=> b!1471341 (= res!999255 (= (seekEntryOrOpen!0 (select (arr!47805 a!2862) j!93) a!2862 mask!2687) (Found!12068 j!93)))))

(assert (=> b!1471341 (=> (not res!999255) (not e!825909))))

(declare-fun call!67736 () Bool)

(declare-fun bm!67733 () Bool)

(assert (=> bm!67733 (= call!67736 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1471342 () Bool)

(declare-fun e!825910 () Bool)

(assert (=> b!1471342 (= e!825910 e!825908)))

(declare-fun c!135559 () Bool)

(assert (=> b!1471342 (= c!135559 (validKeyInArray!0 (select (arr!47805 a!2862) j!93)))))

(declare-fun d!155433 () Bool)

(declare-fun res!999256 () Bool)

(assert (=> d!155433 (=> res!999256 e!825910)))

(assert (=> d!155433 (= res!999256 (bvsge j!93 (size!48356 a!2862)))))

(assert (=> d!155433 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!825910)))

(declare-fun b!1471343 () Bool)

(assert (=> b!1471343 (= e!825909 call!67736)))

(declare-fun b!1471344 () Bool)

(assert (=> b!1471344 (= e!825908 call!67736)))

(assert (= (and d!155433 (not res!999256)) b!1471342))

(assert (= (and b!1471342 c!135559) b!1471341))

(assert (= (and b!1471342 (not c!135559)) b!1471344))

(assert (= (and b!1471341 res!999255) b!1471343))

(assert (= (or b!1471343 b!1471344) bm!67733))

(assert (=> b!1471341 m!1357993))

(declare-fun m!1358229 () Bool)

(assert (=> b!1471341 m!1358229))

(declare-fun m!1358231 () Bool)

(assert (=> b!1471341 m!1358231))

(assert (=> b!1471341 m!1357993))

(assert (=> b!1471341 m!1358019))

(declare-fun m!1358233 () Bool)

(assert (=> bm!67733 m!1358233))

(assert (=> b!1471342 m!1357993))

(assert (=> b!1471342 m!1357993))

(assert (=> b!1471342 m!1358007))

(assert (=> b!1470997 d!155433))

(declare-fun d!155439 () Bool)

(assert (=> d!155439 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!643209 () Unit!49424)

(declare-fun choose!38 (array!99046 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49424)

(assert (=> d!155439 (= lt!643209 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!155439 (validMask!0 mask!2687)))

(assert (=> d!155439 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!643209)))

(declare-fun bs!42502 () Bool)

(assert (= bs!42502 d!155439))

(assert (=> bs!42502 m!1357995))

(declare-fun m!1358243 () Bool)

(assert (=> bs!42502 m!1358243))

(assert (=> bs!42502 m!1358027))

(assert (=> b!1470997 d!155439))

(declare-fun b!1471354 () Bool)

(declare-fun e!825919 () SeekEntryResult!12068)

(declare-fun e!825916 () SeekEntryResult!12068)

(assert (=> b!1471354 (= e!825919 e!825916)))

(declare-fun lt!643213 () (_ BitVec 64))

(declare-fun lt!643215 () SeekEntryResult!12068)

(assert (=> b!1471354 (= lt!643213 (select (arr!47805 a!2862) (index!50665 lt!643215)))))

(declare-fun c!135566 () Bool)

