; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125028 () Bool)

(assert start!125028)

(declare-fun b!1453140 () Bool)

(declare-fun res!984283 () Bool)

(declare-fun e!817964 () Bool)

(assert (=> b!1453140 (=> (not res!984283) (not e!817964))))

(declare-datatypes ((array!98393 0))(
  ( (array!98394 (arr!47480 (Array (_ BitVec 32) (_ BitVec 64))) (size!48031 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98393)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11755 0))(
  ( (MissingZero!11755 (index!49411 (_ BitVec 32))) (Found!11755 (index!49412 (_ BitVec 32))) (Intermediate!11755 (undefined!12567 Bool) (index!49413 (_ BitVec 32)) (x!131055 (_ BitVec 32))) (Undefined!11755) (MissingVacant!11755 (index!49414 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98393 (_ BitVec 32)) SeekEntryResult!11755)

(assert (=> b!1453140 (= res!984283 (= (seekEntryOrOpen!0 (select (arr!47480 a!2862) j!93) a!2862 mask!2687) (Found!11755 j!93)))))

(declare-fun b!1453141 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!817958 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1453141 (= e!817958 (not (or (and (= (select (arr!47480 a!2862) index!646) (select (store (arr!47480 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47480 a!2862) index!646) (select (arr!47480 a!2862) j!93))) (= (select (arr!47480 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(assert (=> b!1453141 e!817964))

(declare-fun res!984287 () Bool)

(assert (=> b!1453141 (=> (not res!984287) (not e!817964))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98393 (_ BitVec 32)) Bool)

(assert (=> b!1453141 (= res!984287 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48954 0))(
  ( (Unit!48955) )
))
(declare-fun lt!637114 () Unit!48954)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98393 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48954)

(assert (=> b!1453141 (= lt!637114 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1453142 () Bool)

(declare-fun res!984291 () Bool)

(declare-fun e!817963 () Bool)

(assert (=> b!1453142 (=> (not res!984291) (not e!817963))))

(declare-fun lt!637116 () SeekEntryResult!11755)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98393 (_ BitVec 32)) SeekEntryResult!11755)

(assert (=> b!1453142 (= res!984291 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47480 a!2862) j!93) a!2862 mask!2687) lt!637116))))

(declare-fun b!1453143 () Bool)

(declare-fun res!984282 () Bool)

(declare-fun e!817957 () Bool)

(assert (=> b!1453143 (=> (not res!984282) (not e!817957))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1453143 (= res!984282 (validKeyInArray!0 (select (arr!47480 a!2862) i!1006)))))

(declare-fun b!1453144 () Bool)

(declare-fun res!984295 () Bool)

(assert (=> b!1453144 (=> (not res!984295) (not e!817958))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1453144 (= res!984295 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1453145 () Bool)

(declare-fun res!984289 () Bool)

(assert (=> b!1453145 (=> (not res!984289) (not e!817958))))

(declare-fun e!817960 () Bool)

(assert (=> b!1453145 (= res!984289 e!817960)))

(declare-fun c!133943 () Bool)

(assert (=> b!1453145 (= c!133943 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1453146 () Bool)

(declare-fun lt!637115 () array!98393)

(declare-fun lt!637113 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98393 (_ BitVec 32)) SeekEntryResult!11755)

(assert (=> b!1453146 (= e!817960 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637113 lt!637115 mask!2687) (seekEntryOrOpen!0 lt!637113 lt!637115 mask!2687)))))

(declare-fun b!1453147 () Bool)

(declare-fun e!817962 () Bool)

(assert (=> b!1453147 (= e!817957 e!817962)))

(declare-fun res!984284 () Bool)

(assert (=> b!1453147 (=> (not res!984284) (not e!817962))))

(assert (=> b!1453147 (= res!984284 (= (select (store (arr!47480 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1453147 (= lt!637115 (array!98394 (store (arr!47480 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48031 a!2862)))))

(declare-fun b!1453148 () Bool)

(declare-fun res!984293 () Bool)

(assert (=> b!1453148 (=> (not res!984293) (not e!817957))))

(assert (=> b!1453148 (= res!984293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!984288 () Bool)

(assert (=> start!125028 (=> (not res!984288) (not e!817957))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125028 (= res!984288 (validMask!0 mask!2687))))

(assert (=> start!125028 e!817957))

(assert (=> start!125028 true))

(declare-fun array_inv!36425 (array!98393) Bool)

(assert (=> start!125028 (array_inv!36425 a!2862)))

(declare-fun b!1453149 () Bool)

(declare-fun res!984292 () Bool)

(assert (=> b!1453149 (=> (not res!984292) (not e!817957))))

(assert (=> b!1453149 (= res!984292 (validKeyInArray!0 (select (arr!47480 a!2862) j!93)))))

(declare-fun b!1453150 () Bool)

(declare-fun res!984286 () Bool)

(assert (=> b!1453150 (=> (not res!984286) (not e!817957))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1453150 (= res!984286 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48031 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48031 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48031 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1453151 () Bool)

(declare-fun res!984290 () Bool)

(assert (=> b!1453151 (=> (not res!984290) (not e!817957))))

(declare-datatypes ((List!34161 0))(
  ( (Nil!34158) (Cons!34157 (h!35507 (_ BitVec 64)) (t!48862 List!34161)) )
))
(declare-fun arrayNoDuplicates!0 (array!98393 (_ BitVec 32) List!34161) Bool)

(assert (=> b!1453151 (= res!984290 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34158))))

(declare-fun b!1453152 () Bool)

(declare-fun e!817956 () Bool)

(assert (=> b!1453152 (= e!817964 e!817956)))

(declare-fun res!984296 () Bool)

(assert (=> b!1453152 (=> res!984296 e!817956)))

(declare-fun lt!637117 () (_ BitVec 64))

(assert (=> b!1453152 (= res!984296 (or (and (= (select (arr!47480 a!2862) index!646) lt!637117) (= (select (arr!47480 a!2862) index!646) (select (arr!47480 a!2862) j!93))) (= (select (arr!47480 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1453152 (= lt!637117 (select (store (arr!47480 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1453153 () Bool)

(declare-fun res!984297 () Bool)

(assert (=> b!1453153 (=> (not res!984297) (not e!817964))))

(assert (=> b!1453153 (= res!984297 (or (= (select (arr!47480 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47480 a!2862) intermediateBeforeIndex!19) (select (arr!47480 a!2862) j!93))))))

(declare-fun e!817961 () Bool)

(declare-fun b!1453154 () Bool)

(assert (=> b!1453154 (= e!817961 (= (seekEntryOrOpen!0 lt!637113 lt!637115 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637113 lt!637115 mask!2687)))))

(declare-fun b!1453155 () Bool)

(assert (=> b!1453155 (= e!817956 e!817961)))

(declare-fun res!984294 () Bool)

(assert (=> b!1453155 (=> (not res!984294) (not e!817961))))

(assert (=> b!1453155 (= res!984294 (and (= index!646 intermediateAfterIndex!19) (= lt!637117 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1453156 () Bool)

(assert (=> b!1453156 (= e!817963 e!817958)))

(declare-fun res!984281 () Bool)

(assert (=> b!1453156 (=> (not res!984281) (not e!817958))))

(declare-fun lt!637112 () SeekEntryResult!11755)

(assert (=> b!1453156 (= res!984281 (= lt!637112 (Intermediate!11755 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453156 (= lt!637112 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637113 mask!2687) lt!637113 lt!637115 mask!2687))))

(assert (=> b!1453156 (= lt!637113 (select (store (arr!47480 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1453157 () Bool)

(assert (=> b!1453157 (= e!817962 e!817963)))

(declare-fun res!984285 () Bool)

(assert (=> b!1453157 (=> (not res!984285) (not e!817963))))

(assert (=> b!1453157 (= res!984285 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47480 a!2862) j!93) mask!2687) (select (arr!47480 a!2862) j!93) a!2862 mask!2687) lt!637116))))

(assert (=> b!1453157 (= lt!637116 (Intermediate!11755 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1453158 () Bool)

(declare-fun res!984280 () Bool)

(assert (=> b!1453158 (=> (not res!984280) (not e!817957))))

(assert (=> b!1453158 (= res!984280 (and (= (size!48031 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48031 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48031 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1453159 () Bool)

(assert (=> b!1453159 (= e!817960 (= lt!637112 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637113 lt!637115 mask!2687)))))

(assert (= (and start!125028 res!984288) b!1453158))

(assert (= (and b!1453158 res!984280) b!1453143))

(assert (= (and b!1453143 res!984282) b!1453149))

(assert (= (and b!1453149 res!984292) b!1453148))

(assert (= (and b!1453148 res!984293) b!1453151))

(assert (= (and b!1453151 res!984290) b!1453150))

(assert (= (and b!1453150 res!984286) b!1453147))

(assert (= (and b!1453147 res!984284) b!1453157))

(assert (= (and b!1453157 res!984285) b!1453142))

(assert (= (and b!1453142 res!984291) b!1453156))

(assert (= (and b!1453156 res!984281) b!1453145))

(assert (= (and b!1453145 c!133943) b!1453159))

(assert (= (and b!1453145 (not c!133943)) b!1453146))

(assert (= (and b!1453145 res!984289) b!1453144))

(assert (= (and b!1453144 res!984295) b!1453141))

(assert (= (and b!1453141 res!984287) b!1453140))

(assert (= (and b!1453140 res!984283) b!1453153))

(assert (= (and b!1453153 res!984297) b!1453152))

(assert (= (and b!1453152 (not res!984296)) b!1453155))

(assert (= (and b!1453155 res!984294) b!1453154))

(declare-fun m!1341713 () Bool)

(assert (=> b!1453149 m!1341713))

(assert (=> b!1453149 m!1341713))

(declare-fun m!1341715 () Bool)

(assert (=> b!1453149 m!1341715))

(declare-fun m!1341717 () Bool)

(assert (=> b!1453147 m!1341717))

(declare-fun m!1341719 () Bool)

(assert (=> b!1453147 m!1341719))

(assert (=> b!1453142 m!1341713))

(assert (=> b!1453142 m!1341713))

(declare-fun m!1341721 () Bool)

(assert (=> b!1453142 m!1341721))

(declare-fun m!1341723 () Bool)

(assert (=> b!1453152 m!1341723))

(assert (=> b!1453152 m!1341713))

(assert (=> b!1453152 m!1341717))

(declare-fun m!1341725 () Bool)

(assert (=> b!1453152 m!1341725))

(declare-fun m!1341727 () Bool)

(assert (=> b!1453154 m!1341727))

(declare-fun m!1341729 () Bool)

(assert (=> b!1453154 m!1341729))

(declare-fun m!1341731 () Bool)

(assert (=> b!1453143 m!1341731))

(assert (=> b!1453143 m!1341731))

(declare-fun m!1341733 () Bool)

(assert (=> b!1453143 m!1341733))

(declare-fun m!1341735 () Bool)

(assert (=> b!1453151 m!1341735))

(declare-fun m!1341737 () Bool)

(assert (=> b!1453156 m!1341737))

(assert (=> b!1453156 m!1341737))

(declare-fun m!1341739 () Bool)

(assert (=> b!1453156 m!1341739))

(assert (=> b!1453156 m!1341717))

(declare-fun m!1341741 () Bool)

(assert (=> b!1453156 m!1341741))

(declare-fun m!1341743 () Bool)

(assert (=> b!1453148 m!1341743))

(declare-fun m!1341745 () Bool)

(assert (=> b!1453159 m!1341745))

(declare-fun m!1341747 () Bool)

(assert (=> b!1453153 m!1341747))

(assert (=> b!1453153 m!1341713))

(assert (=> b!1453146 m!1341729))

(assert (=> b!1453146 m!1341727))

(declare-fun m!1341749 () Bool)

(assert (=> b!1453141 m!1341749))

(assert (=> b!1453141 m!1341717))

(assert (=> b!1453141 m!1341725))

(assert (=> b!1453141 m!1341723))

(declare-fun m!1341751 () Bool)

(assert (=> b!1453141 m!1341751))

(assert (=> b!1453141 m!1341713))

(declare-fun m!1341753 () Bool)

(assert (=> start!125028 m!1341753))

(declare-fun m!1341755 () Bool)

(assert (=> start!125028 m!1341755))

(assert (=> b!1453140 m!1341713))

(assert (=> b!1453140 m!1341713))

(declare-fun m!1341757 () Bool)

(assert (=> b!1453140 m!1341757))

(assert (=> b!1453157 m!1341713))

(assert (=> b!1453157 m!1341713))

(declare-fun m!1341759 () Bool)

(assert (=> b!1453157 m!1341759))

(assert (=> b!1453157 m!1341759))

(assert (=> b!1453157 m!1341713))

(declare-fun m!1341761 () Bool)

(assert (=> b!1453157 m!1341761))

(check-sat (not b!1453148) (not b!1453143) (not b!1453151) (not b!1453142) (not b!1453157) (not b!1453140) (not b!1453146) (not b!1453156) (not start!125028) (not b!1453159) (not b!1453154) (not b!1453141) (not b!1453149))
(check-sat)
