; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125392 () Bool)

(assert start!125392)

(declare-fun b!1464937 () Bool)

(declare-fun e!823225 () Bool)

(declare-fun e!823230 () Bool)

(assert (=> b!1464937 (= e!823225 e!823230)))

(declare-fun res!994018 () Bool)

(assert (=> b!1464937 (=> res!994018 e!823230)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!641214 () (_ BitVec 32))

(declare-datatypes ((array!98757 0))(
  ( (array!98758 (arr!47662 (Array (_ BitVec 32) (_ BitVec 64))) (size!48213 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98757)

(assert (=> b!1464937 (= res!994018 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641214 #b00000000000000000000000000000000) (bvsge lt!641214 (size!48213 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464937 (= lt!641214 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1464938 () Bool)

(declare-fun res!994026 () Bool)

(declare-fun e!823232 () Bool)

(assert (=> b!1464938 (=> (not res!994026) (not e!823232))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1464938 (= res!994026 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48213 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48213 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48213 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!823228 () Bool)

(declare-fun b!1464939 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1464939 (= e!823228 (or (= (select (arr!47662 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47662 a!2862) intermediateBeforeIndex!19) (select (arr!47662 a!2862) j!93))))))

(declare-fun b!1464940 () Bool)

(assert (=> b!1464940 (= e!823230 true)))

(declare-fun lt!641212 () Bool)

(declare-fun e!823227 () Bool)

(assert (=> b!1464940 (= lt!641212 e!823227)))

(declare-fun c!134977 () Bool)

(assert (=> b!1464940 (= c!134977 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun lt!641210 () array!98757)

(declare-fun b!1464941 () Bool)

(declare-fun lt!641213 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11937 0))(
  ( (MissingZero!11937 (index!50139 (_ BitVec 32))) (Found!11937 (index!50140 (_ BitVec 32))) (Intermediate!11937 (undefined!12749 Bool) (index!50141 (_ BitVec 32)) (x!131725 (_ BitVec 32))) (Undefined!11937) (MissingVacant!11937 (index!50142 (_ BitVec 32))) )
))
(declare-fun lt!641215 () SeekEntryResult!11937)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98757 (_ BitVec 32)) SeekEntryResult!11937)

(assert (=> b!1464941 (= e!823227 (not (= lt!641215 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641214 lt!641213 lt!641210 mask!2687))))))

(declare-fun e!823231 () Bool)

(declare-fun b!1464943 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98757 (_ BitVec 32)) SeekEntryResult!11937)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98757 (_ BitVec 32)) SeekEntryResult!11937)

(assert (=> b!1464943 (= e!823231 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641213 lt!641210 mask!2687) (seekEntryOrOpen!0 lt!641213 lt!641210 mask!2687)))))

(declare-fun b!1464944 () Bool)

(declare-fun e!823223 () Bool)

(assert (=> b!1464944 (= e!823232 e!823223)))

(declare-fun res!994022 () Bool)

(assert (=> b!1464944 (=> (not res!994022) (not e!823223))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1464944 (= res!994022 (= (select (store (arr!47662 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1464944 (= lt!641210 (array!98758 (store (arr!47662 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48213 a!2862)))))

(declare-fun b!1464945 () Bool)

(declare-fun res!994009 () Bool)

(declare-fun e!823226 () Bool)

(assert (=> b!1464945 (=> (not res!994009) (not e!823226))))

(assert (=> b!1464945 (= res!994009 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1464946 () Bool)

(declare-fun res!994024 () Bool)

(assert (=> b!1464946 (=> res!994024 e!823230)))

(declare-fun lt!641209 () SeekEntryResult!11937)

(assert (=> b!1464946 (= res!994024 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641214 (select (arr!47662 a!2862) j!93) a!2862 mask!2687) lt!641209)))))

(declare-fun b!1464947 () Bool)

(declare-fun res!994020 () Bool)

(assert (=> b!1464947 (=> (not res!994020) (not e!823232))))

(declare-datatypes ((List!34343 0))(
  ( (Nil!34340) (Cons!34339 (h!35689 (_ BitVec 64)) (t!49044 List!34343)) )
))
(declare-fun arrayNoDuplicates!0 (array!98757 (_ BitVec 32) List!34343) Bool)

(assert (=> b!1464947 (= res!994020 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34340))))

(declare-fun b!1464948 () Bool)

(assert (=> b!1464948 (= e!823231 (= lt!641215 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641213 lt!641210 mask!2687)))))

(declare-fun b!1464949 () Bool)

(declare-fun res!994019 () Bool)

(assert (=> b!1464949 (=> (not res!994019) (not e!823232))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98757 (_ BitVec 32)) Bool)

(assert (=> b!1464949 (= res!994019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1464950 () Bool)

(assert (=> b!1464950 (= e!823227 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641214 intermediateAfterIndex!19 lt!641213 lt!641210 mask!2687) (seekEntryOrOpen!0 lt!641213 lt!641210 mask!2687))))))

(declare-fun b!1464951 () Bool)

(assert (=> b!1464951 (= e!823226 (not e!823225))))

(declare-fun res!994016 () Bool)

(assert (=> b!1464951 (=> res!994016 e!823225)))

(assert (=> b!1464951 (= res!994016 (or (and (= (select (arr!47662 a!2862) index!646) (select (store (arr!47662 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47662 a!2862) index!646) (select (arr!47662 a!2862) j!93))) (= (select (arr!47662 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1464951 e!823228))

(declare-fun res!994014 () Bool)

(assert (=> b!1464951 (=> (not res!994014) (not e!823228))))

(assert (=> b!1464951 (= res!994014 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49318 0))(
  ( (Unit!49319) )
))
(declare-fun lt!641211 () Unit!49318)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98757 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49318)

(assert (=> b!1464951 (= lt!641211 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1464952 () Bool)

(declare-fun e!823229 () Bool)

(assert (=> b!1464952 (= e!823229 e!823226)))

(declare-fun res!994012 () Bool)

(assert (=> b!1464952 (=> (not res!994012) (not e!823226))))

(assert (=> b!1464952 (= res!994012 (= lt!641215 (Intermediate!11937 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464952 (= lt!641215 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641213 mask!2687) lt!641213 lt!641210 mask!2687))))

(assert (=> b!1464952 (= lt!641213 (select (store (arr!47662 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1464953 () Bool)

(declare-fun res!994023 () Bool)

(assert (=> b!1464953 (=> (not res!994023) (not e!823232))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1464953 (= res!994023 (validKeyInArray!0 (select (arr!47662 a!2862) j!93)))))

(declare-fun b!1464954 () Bool)

(assert (=> b!1464954 (= e!823223 e!823229)))

(declare-fun res!994025 () Bool)

(assert (=> b!1464954 (=> (not res!994025) (not e!823229))))

(assert (=> b!1464954 (= res!994025 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47662 a!2862) j!93) mask!2687) (select (arr!47662 a!2862) j!93) a!2862 mask!2687) lt!641209))))

(assert (=> b!1464954 (= lt!641209 (Intermediate!11937 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!994021 () Bool)

(assert (=> start!125392 (=> (not res!994021) (not e!823232))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125392 (= res!994021 (validMask!0 mask!2687))))

(assert (=> start!125392 e!823232))

(assert (=> start!125392 true))

(declare-fun array_inv!36607 (array!98757) Bool)

(assert (=> start!125392 (array_inv!36607 a!2862)))

(declare-fun b!1464942 () Bool)

(declare-fun res!994015 () Bool)

(assert (=> b!1464942 (=> (not res!994015) (not e!823228))))

(assert (=> b!1464942 (= res!994015 (= (seekEntryOrOpen!0 (select (arr!47662 a!2862) j!93) a!2862 mask!2687) (Found!11937 j!93)))))

(declare-fun b!1464955 () Bool)

(declare-fun res!994010 () Bool)

(assert (=> b!1464955 (=> (not res!994010) (not e!823232))))

(assert (=> b!1464955 (= res!994010 (validKeyInArray!0 (select (arr!47662 a!2862) i!1006)))))

(declare-fun b!1464956 () Bool)

(declare-fun res!994013 () Bool)

(assert (=> b!1464956 (=> (not res!994013) (not e!823226))))

(assert (=> b!1464956 (= res!994013 e!823231)))

(declare-fun c!134978 () Bool)

(assert (=> b!1464956 (= c!134978 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1464957 () Bool)

(declare-fun res!994011 () Bool)

(assert (=> b!1464957 (=> (not res!994011) (not e!823232))))

(assert (=> b!1464957 (= res!994011 (and (= (size!48213 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48213 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48213 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1464958 () Bool)

(declare-fun res!994017 () Bool)

(assert (=> b!1464958 (=> (not res!994017) (not e!823229))))

(assert (=> b!1464958 (= res!994017 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47662 a!2862) j!93) a!2862 mask!2687) lt!641209))))

(assert (= (and start!125392 res!994021) b!1464957))

(assert (= (and b!1464957 res!994011) b!1464955))

(assert (= (and b!1464955 res!994010) b!1464953))

(assert (= (and b!1464953 res!994023) b!1464949))

(assert (= (and b!1464949 res!994019) b!1464947))

(assert (= (and b!1464947 res!994020) b!1464938))

(assert (= (and b!1464938 res!994026) b!1464944))

(assert (= (and b!1464944 res!994022) b!1464954))

(assert (= (and b!1464954 res!994025) b!1464958))

(assert (= (and b!1464958 res!994017) b!1464952))

(assert (= (and b!1464952 res!994012) b!1464956))

(assert (= (and b!1464956 c!134978) b!1464948))

(assert (= (and b!1464956 (not c!134978)) b!1464943))

(assert (= (and b!1464956 res!994013) b!1464945))

(assert (= (and b!1464945 res!994009) b!1464951))

(assert (= (and b!1464951 res!994014) b!1464942))

(assert (= (and b!1464942 res!994015) b!1464939))

(assert (= (and b!1464951 (not res!994016)) b!1464937))

(assert (= (and b!1464937 (not res!994018)) b!1464946))

(assert (= (and b!1464946 (not res!994024)) b!1464940))

(assert (= (and b!1464940 c!134977) b!1464941))

(assert (= (and b!1464940 (not c!134977)) b!1464950))

(declare-fun m!1352139 () Bool)

(assert (=> b!1464948 m!1352139))

(declare-fun m!1352141 () Bool)

(assert (=> b!1464958 m!1352141))

(assert (=> b!1464958 m!1352141))

(declare-fun m!1352143 () Bool)

(assert (=> b!1464958 m!1352143))

(declare-fun m!1352145 () Bool)

(assert (=> b!1464951 m!1352145))

(declare-fun m!1352147 () Bool)

(assert (=> b!1464951 m!1352147))

(declare-fun m!1352149 () Bool)

(assert (=> b!1464951 m!1352149))

(declare-fun m!1352151 () Bool)

(assert (=> b!1464951 m!1352151))

(declare-fun m!1352153 () Bool)

(assert (=> b!1464951 m!1352153))

(assert (=> b!1464951 m!1352141))

(declare-fun m!1352155 () Bool)

(assert (=> start!125392 m!1352155))

(declare-fun m!1352157 () Bool)

(assert (=> start!125392 m!1352157))

(declare-fun m!1352159 () Bool)

(assert (=> b!1464955 m!1352159))

(assert (=> b!1464955 m!1352159))

(declare-fun m!1352161 () Bool)

(assert (=> b!1464955 m!1352161))

(declare-fun m!1352163 () Bool)

(assert (=> b!1464950 m!1352163))

(declare-fun m!1352165 () Bool)

(assert (=> b!1464950 m!1352165))

(declare-fun m!1352167 () Bool)

(assert (=> b!1464939 m!1352167))

(assert (=> b!1464939 m!1352141))

(assert (=> b!1464946 m!1352141))

(assert (=> b!1464946 m!1352141))

(declare-fun m!1352169 () Bool)

(assert (=> b!1464946 m!1352169))

(declare-fun m!1352171 () Bool)

(assert (=> b!1464947 m!1352171))

(declare-fun m!1352173 () Bool)

(assert (=> b!1464943 m!1352173))

(assert (=> b!1464943 m!1352165))

(declare-fun m!1352175 () Bool)

(assert (=> b!1464941 m!1352175))

(assert (=> b!1464942 m!1352141))

(assert (=> b!1464942 m!1352141))

(declare-fun m!1352177 () Bool)

(assert (=> b!1464942 m!1352177))

(assert (=> b!1464944 m!1352147))

(declare-fun m!1352179 () Bool)

(assert (=> b!1464944 m!1352179))

(assert (=> b!1464953 m!1352141))

(assert (=> b!1464953 m!1352141))

(declare-fun m!1352181 () Bool)

(assert (=> b!1464953 m!1352181))

(declare-fun m!1352183 () Bool)

(assert (=> b!1464952 m!1352183))

(assert (=> b!1464952 m!1352183))

(declare-fun m!1352185 () Bool)

(assert (=> b!1464952 m!1352185))

(assert (=> b!1464952 m!1352147))

(declare-fun m!1352187 () Bool)

(assert (=> b!1464952 m!1352187))

(declare-fun m!1352189 () Bool)

(assert (=> b!1464937 m!1352189))

(assert (=> b!1464954 m!1352141))

(assert (=> b!1464954 m!1352141))

(declare-fun m!1352191 () Bool)

(assert (=> b!1464954 m!1352191))

(assert (=> b!1464954 m!1352191))

(assert (=> b!1464954 m!1352141))

(declare-fun m!1352193 () Bool)

(assert (=> b!1464954 m!1352193))

(declare-fun m!1352195 () Bool)

(assert (=> b!1464949 m!1352195))

(push 1)

