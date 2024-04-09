; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124696 () Bool)

(assert start!124696)

(declare-fun b!1444029 () Bool)

(declare-fun e!813679 () Bool)

(declare-fun e!813680 () Bool)

(assert (=> b!1444029 (= e!813679 e!813680)))

(declare-fun res!976174 () Bool)

(assert (=> b!1444029 (=> (not res!976174) (not e!813680))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98061 0))(
  ( (array!98062 (arr!47314 (Array (_ BitVec 32) (_ BitVec 64))) (size!47865 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98061)

(assert (=> b!1444029 (= res!976174 (= (select (store (arr!47314 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!634030 () array!98061)

(assert (=> b!1444029 (= lt!634030 (array!98062 (store (arr!47314 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47865 a!2862)))))

(declare-fun b!1444030 () Bool)

(declare-fun res!976167 () Bool)

(assert (=> b!1444030 (=> (not res!976167) (not e!813679))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1444030 (= res!976167 (and (= (size!47865 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47865 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47865 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1444031 () Bool)

(declare-fun e!813678 () Bool)

(declare-fun e!813683 () Bool)

(assert (=> b!1444031 (= e!813678 (not e!813683))))

(declare-fun res!976172 () Bool)

(assert (=> b!1444031 (=> res!976172 e!813683)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1444031 (= res!976172 (or (not (= (select (arr!47314 a!2862) index!646) (select (store (arr!47314 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47314 a!2862) index!646) (select (arr!47314 a!2862) j!93)))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11589 0))(
  ( (MissingZero!11589 (index!48747 (_ BitVec 32))) (Found!11589 (index!48748 (_ BitVec 32))) (Intermediate!11589 (undefined!12401 Bool) (index!48749 (_ BitVec 32)) (x!130449 (_ BitVec 32))) (Undefined!11589) (MissingVacant!11589 (index!48750 (_ BitVec 32))) )
))
(declare-fun lt!634026 () SeekEntryResult!11589)

(assert (=> b!1444031 (and (= lt!634026 (Found!11589 j!93)) (or (= (select (arr!47314 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47314 a!2862) intermediateBeforeIndex!19) (select (arr!47314 a!2862) j!93))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98061 (_ BitVec 32)) SeekEntryResult!11589)

(assert (=> b!1444031 (= lt!634026 (seekEntryOrOpen!0 (select (arr!47314 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98061 (_ BitVec 32)) Bool)

(assert (=> b!1444031 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48622 0))(
  ( (Unit!48623) )
))
(declare-fun lt!634027 () Unit!48622)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98061 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48622)

(assert (=> b!1444031 (= lt!634027 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1444032 () Bool)

(declare-fun res!976175 () Bool)

(assert (=> b!1444032 (=> (not res!976175) (not e!813678))))

(declare-fun e!813677 () Bool)

(assert (=> b!1444032 (= res!976175 e!813677)))

(declare-fun c!133445 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1444032 (= c!133445 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1444033 () Bool)

(declare-fun res!976166 () Bool)

(assert (=> b!1444033 (=> (not res!976166) (not e!813678))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1444033 (= res!976166 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1444034 () Bool)

(declare-fun e!813682 () Bool)

(assert (=> b!1444034 (= e!813680 e!813682)))

(declare-fun res!976170 () Bool)

(assert (=> b!1444034 (=> (not res!976170) (not e!813682))))

(declare-fun lt!634029 () SeekEntryResult!11589)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98061 (_ BitVec 32)) SeekEntryResult!11589)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1444034 (= res!976170 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47314 a!2862) j!93) mask!2687) (select (arr!47314 a!2862) j!93) a!2862 mask!2687) lt!634029))))

(assert (=> b!1444034 (= lt!634029 (Intermediate!11589 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1444035 () Bool)

(declare-fun res!976173 () Bool)

(assert (=> b!1444035 (=> (not res!976173) (not e!813679))))

(assert (=> b!1444035 (= res!976173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!976177 () Bool)

(assert (=> start!124696 (=> (not res!976177) (not e!813679))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124696 (= res!976177 (validMask!0 mask!2687))))

(assert (=> start!124696 e!813679))

(assert (=> start!124696 true))

(declare-fun array_inv!36259 (array!98061) Bool)

(assert (=> start!124696 (array_inv!36259 a!2862)))

(declare-fun b!1444036 () Bool)

(declare-fun res!976171 () Bool)

(assert (=> b!1444036 (=> (not res!976171) (not e!813682))))

(assert (=> b!1444036 (= res!976171 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47314 a!2862) j!93) a!2862 mask!2687) lt!634029))))

(declare-fun b!1444037 () Bool)

(declare-fun res!976168 () Bool)

(assert (=> b!1444037 (=> (not res!976168) (not e!813679))))

(declare-datatypes ((List!33995 0))(
  ( (Nil!33992) (Cons!33991 (h!35341 (_ BitVec 64)) (t!48696 List!33995)) )
))
(declare-fun arrayNoDuplicates!0 (array!98061 (_ BitVec 32) List!33995) Bool)

(assert (=> b!1444037 (= res!976168 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33992))))

(declare-fun b!1444038 () Bool)

(assert (=> b!1444038 (= e!813683 (bvsge mask!2687 #b00000000000000000000000000000000))))

(declare-fun b!1444039 () Bool)

(declare-fun res!976165 () Bool)

(assert (=> b!1444039 (=> (not res!976165) (not e!813679))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1444039 (= res!976165 (validKeyInArray!0 (select (arr!47314 a!2862) i!1006)))))

(declare-fun b!1444040 () Bool)

(declare-fun res!976178 () Bool)

(assert (=> b!1444040 (=> res!976178 e!813683)))

(declare-fun lt!634028 () (_ BitVec 64))

(assert (=> b!1444040 (= res!976178 (not (= lt!634026 (seekEntryOrOpen!0 lt!634028 lt!634030 mask!2687))))))

(declare-fun b!1444041 () Bool)

(declare-fun res!976169 () Bool)

(assert (=> b!1444041 (=> (not res!976169) (not e!813679))))

(assert (=> b!1444041 (= res!976169 (validKeyInArray!0 (select (arr!47314 a!2862) j!93)))))

(declare-fun b!1444042 () Bool)

(assert (=> b!1444042 (= e!813682 e!813678)))

(declare-fun res!976176 () Bool)

(assert (=> b!1444042 (=> (not res!976176) (not e!813678))))

(declare-fun lt!634025 () SeekEntryResult!11589)

(assert (=> b!1444042 (= res!976176 (= lt!634025 (Intermediate!11589 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1444042 (= lt!634025 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634028 mask!2687) lt!634028 lt!634030 mask!2687))))

(assert (=> b!1444042 (= lt!634028 (select (store (arr!47314 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1444043 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98061 (_ BitVec 32)) SeekEntryResult!11589)

(assert (=> b!1444043 (= e!813677 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634028 lt!634030 mask!2687) (seekEntryOrOpen!0 lt!634028 lt!634030 mask!2687)))))

(declare-fun b!1444044 () Bool)

(assert (=> b!1444044 (= e!813677 (= lt!634025 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634028 lt!634030 mask!2687)))))

(declare-fun b!1444045 () Bool)

(declare-fun res!976179 () Bool)

(assert (=> b!1444045 (=> (not res!976179) (not e!813679))))

(assert (=> b!1444045 (= res!976179 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47865 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47865 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47865 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!124696 res!976177) b!1444030))

(assert (= (and b!1444030 res!976167) b!1444039))

(assert (= (and b!1444039 res!976165) b!1444041))

(assert (= (and b!1444041 res!976169) b!1444035))

(assert (= (and b!1444035 res!976173) b!1444037))

(assert (= (and b!1444037 res!976168) b!1444045))

(assert (= (and b!1444045 res!976179) b!1444029))

(assert (= (and b!1444029 res!976174) b!1444034))

(assert (= (and b!1444034 res!976170) b!1444036))

(assert (= (and b!1444036 res!976171) b!1444042))

(assert (= (and b!1444042 res!976176) b!1444032))

(assert (= (and b!1444032 c!133445) b!1444044))

(assert (= (and b!1444032 (not c!133445)) b!1444043))

(assert (= (and b!1444032 res!976175) b!1444033))

(assert (= (and b!1444033 res!976166) b!1444031))

(assert (= (and b!1444031 (not res!976172)) b!1444040))

(assert (= (and b!1444040 (not res!976178)) b!1444038))

(declare-fun m!1333125 () Bool)

(assert (=> b!1444034 m!1333125))

(assert (=> b!1444034 m!1333125))

(declare-fun m!1333127 () Bool)

(assert (=> b!1444034 m!1333127))

(assert (=> b!1444034 m!1333127))

(assert (=> b!1444034 m!1333125))

(declare-fun m!1333129 () Bool)

(assert (=> b!1444034 m!1333129))

(declare-fun m!1333131 () Bool)

(assert (=> b!1444042 m!1333131))

(assert (=> b!1444042 m!1333131))

(declare-fun m!1333133 () Bool)

(assert (=> b!1444042 m!1333133))

(declare-fun m!1333135 () Bool)

(assert (=> b!1444042 m!1333135))

(declare-fun m!1333137 () Bool)

(assert (=> b!1444042 m!1333137))

(assert (=> b!1444029 m!1333135))

(declare-fun m!1333139 () Bool)

(assert (=> b!1444029 m!1333139))

(declare-fun m!1333141 () Bool)

(assert (=> b!1444037 m!1333141))

(declare-fun m!1333143 () Bool)

(assert (=> start!124696 m!1333143))

(declare-fun m!1333145 () Bool)

(assert (=> start!124696 m!1333145))

(declare-fun m!1333147 () Bool)

(assert (=> b!1444031 m!1333147))

(assert (=> b!1444031 m!1333135))

(declare-fun m!1333149 () Bool)

(assert (=> b!1444031 m!1333149))

(declare-fun m!1333151 () Bool)

(assert (=> b!1444031 m!1333151))

(declare-fun m!1333153 () Bool)

(assert (=> b!1444031 m!1333153))

(assert (=> b!1444031 m!1333125))

(declare-fun m!1333155 () Bool)

(assert (=> b!1444031 m!1333155))

(declare-fun m!1333157 () Bool)

(assert (=> b!1444031 m!1333157))

(assert (=> b!1444031 m!1333125))

(assert (=> b!1444041 m!1333125))

(assert (=> b!1444041 m!1333125))

(declare-fun m!1333159 () Bool)

(assert (=> b!1444041 m!1333159))

(assert (=> b!1444036 m!1333125))

(assert (=> b!1444036 m!1333125))

(declare-fun m!1333161 () Bool)

(assert (=> b!1444036 m!1333161))

(declare-fun m!1333163 () Bool)

(assert (=> b!1444043 m!1333163))

(declare-fun m!1333165 () Bool)

(assert (=> b!1444043 m!1333165))

(declare-fun m!1333167 () Bool)

(assert (=> b!1444039 m!1333167))

(assert (=> b!1444039 m!1333167))

(declare-fun m!1333169 () Bool)

(assert (=> b!1444039 m!1333169))

(declare-fun m!1333171 () Bool)

(assert (=> b!1444044 m!1333171))

(declare-fun m!1333173 () Bool)

(assert (=> b!1444035 m!1333173))

(assert (=> b!1444040 m!1333165))

(push 1)

