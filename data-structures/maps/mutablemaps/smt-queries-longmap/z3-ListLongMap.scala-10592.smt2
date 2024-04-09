; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124734 () Bool)

(assert start!124734)

(declare-fun b!1445016 () Bool)

(declare-fun res!977046 () Bool)

(declare-fun e!814091 () Bool)

(assert (=> b!1445016 (=> (not res!977046) (not e!814091))))

(declare-datatypes ((array!98099 0))(
  ( (array!98100 (arr!47333 (Array (_ BitVec 32) (_ BitVec 64))) (size!47884 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98099)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11608 0))(
  ( (MissingZero!11608 (index!48823 (_ BitVec 32))) (Found!11608 (index!48824 (_ BitVec 32))) (Intermediate!11608 (undefined!12420 Bool) (index!48825 (_ BitVec 32)) (x!130516 (_ BitVec 32))) (Undefined!11608) (MissingVacant!11608 (index!48826 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98099 (_ BitVec 32)) SeekEntryResult!11608)

(assert (=> b!1445016 (= res!977046 (= (seekEntryOrOpen!0 (select (arr!47333 a!2862) j!93) a!2862 mask!2687) (Found!11608 j!93)))))

(declare-fun b!1445017 () Bool)

(declare-fun res!977052 () Bool)

(declare-fun e!814088 () Bool)

(assert (=> b!1445017 (=> (not res!977052) (not e!814088))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1445017 (= res!977052 (and (= (size!47884 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47884 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47884 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1445018 () Bool)

(declare-fun e!814089 () Bool)

(assert (=> b!1445018 (= e!814089 (not true))))

(assert (=> b!1445018 e!814091))

(declare-fun res!977041 () Bool)

(assert (=> b!1445018 (=> (not res!977041) (not e!814091))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98099 (_ BitVec 32)) Bool)

(assert (=> b!1445018 (= res!977041 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48660 0))(
  ( (Unit!48661) )
))
(declare-fun lt!634335 () Unit!48660)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98099 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48660)

(assert (=> b!1445018 (= lt!634335 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1445019 () Bool)

(declare-fun res!977039 () Bool)

(assert (=> b!1445019 (=> (not res!977039) (not e!814088))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1445019 (= res!977039 (validKeyInArray!0 (select (arr!47333 a!2862) j!93)))))

(declare-fun res!977044 () Bool)

(assert (=> start!124734 (=> (not res!977044) (not e!814088))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124734 (= res!977044 (validMask!0 mask!2687))))

(assert (=> start!124734 e!814088))

(assert (=> start!124734 true))

(declare-fun array_inv!36278 (array!98099) Bool)

(assert (=> start!124734 (array_inv!36278 a!2862)))

(declare-fun b!1445020 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1445020 (= e!814091 (or (= (select (arr!47333 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47333 a!2862) intermediateBeforeIndex!19) (select (arr!47333 a!2862) j!93))))))

(declare-fun b!1445021 () Bool)

(declare-fun res!977050 () Bool)

(assert (=> b!1445021 (=> (not res!977050) (not e!814089))))

(declare-fun e!814087 () Bool)

(assert (=> b!1445021 (= res!977050 e!814087)))

(declare-fun c!133502 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1445021 (= c!133502 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1445022 () Bool)

(declare-fun res!977042 () Bool)

(assert (=> b!1445022 (=> (not res!977042) (not e!814088))))

(assert (=> b!1445022 (= res!977042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1445023 () Bool)

(declare-fun res!977047 () Bool)

(declare-fun e!814090 () Bool)

(assert (=> b!1445023 (=> (not res!977047) (not e!814090))))

(declare-fun lt!634336 () SeekEntryResult!11608)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98099 (_ BitVec 32)) SeekEntryResult!11608)

(assert (=> b!1445023 (= res!977047 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47333 a!2862) j!93) a!2862 mask!2687) lt!634336))))

(declare-fun b!1445024 () Bool)

(declare-fun res!977038 () Bool)

(assert (=> b!1445024 (=> (not res!977038) (not e!814088))))

(declare-datatypes ((List!34014 0))(
  ( (Nil!34011) (Cons!34010 (h!35360 (_ BitVec 64)) (t!48715 List!34014)) )
))
(declare-fun arrayNoDuplicates!0 (array!98099 (_ BitVec 32) List!34014) Bool)

(assert (=> b!1445024 (= res!977038 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34011))))

(declare-fun b!1445025 () Bool)

(declare-fun e!814085 () Bool)

(assert (=> b!1445025 (= e!814088 e!814085)))

(declare-fun res!977045 () Bool)

(assert (=> b!1445025 (=> (not res!977045) (not e!814085))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1445025 (= res!977045 (= (select (store (arr!47333 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!634339 () array!98099)

(assert (=> b!1445025 (= lt!634339 (array!98100 (store (arr!47333 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47884 a!2862)))))

(declare-fun b!1445026 () Bool)

(assert (=> b!1445026 (= e!814085 e!814090)))

(declare-fun res!977040 () Bool)

(assert (=> b!1445026 (=> (not res!977040) (not e!814090))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1445026 (= res!977040 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47333 a!2862) j!93) mask!2687) (select (arr!47333 a!2862) j!93) a!2862 mask!2687) lt!634336))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1445026 (= lt!634336 (Intermediate!11608 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1445027 () Bool)

(declare-fun res!977043 () Bool)

(assert (=> b!1445027 (=> (not res!977043) (not e!814089))))

(assert (=> b!1445027 (= res!977043 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1445028 () Bool)

(assert (=> b!1445028 (= e!814090 e!814089)))

(declare-fun res!977051 () Bool)

(assert (=> b!1445028 (=> (not res!977051) (not e!814089))))

(declare-fun lt!634337 () SeekEntryResult!11608)

(assert (=> b!1445028 (= res!977051 (= lt!634337 (Intermediate!11608 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!634338 () (_ BitVec 64))

(assert (=> b!1445028 (= lt!634337 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634338 mask!2687) lt!634338 lt!634339 mask!2687))))

(assert (=> b!1445028 (= lt!634338 (select (store (arr!47333 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1445029 () Bool)

(assert (=> b!1445029 (= e!814087 (= lt!634337 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634338 lt!634339 mask!2687)))))

(declare-fun b!1445030 () Bool)

(declare-fun res!977049 () Bool)

(assert (=> b!1445030 (=> (not res!977049) (not e!814088))))

(assert (=> b!1445030 (= res!977049 (validKeyInArray!0 (select (arr!47333 a!2862) i!1006)))))

(declare-fun b!1445031 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98099 (_ BitVec 32)) SeekEntryResult!11608)

(assert (=> b!1445031 (= e!814087 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634338 lt!634339 mask!2687) (seekEntryOrOpen!0 lt!634338 lt!634339 mask!2687)))))

(declare-fun b!1445032 () Bool)

(declare-fun res!977048 () Bool)

(assert (=> b!1445032 (=> (not res!977048) (not e!814088))))

(assert (=> b!1445032 (= res!977048 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47884 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47884 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47884 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!124734 res!977044) b!1445017))

(assert (= (and b!1445017 res!977052) b!1445030))

(assert (= (and b!1445030 res!977049) b!1445019))

(assert (= (and b!1445019 res!977039) b!1445022))

(assert (= (and b!1445022 res!977042) b!1445024))

(assert (= (and b!1445024 res!977038) b!1445032))

(assert (= (and b!1445032 res!977048) b!1445025))

(assert (= (and b!1445025 res!977045) b!1445026))

(assert (= (and b!1445026 res!977040) b!1445023))

(assert (= (and b!1445023 res!977047) b!1445028))

(assert (= (and b!1445028 res!977051) b!1445021))

(assert (= (and b!1445021 c!133502) b!1445029))

(assert (= (and b!1445021 (not c!133502)) b!1445031))

(assert (= (and b!1445021 res!977050) b!1445027))

(assert (= (and b!1445027 res!977043) b!1445018))

(assert (= (and b!1445018 res!977041) b!1445016))

(assert (= (and b!1445016 res!977046) b!1445020))

(declare-fun m!1334053 () Bool)

(assert (=> b!1445025 m!1334053))

(declare-fun m!1334055 () Bool)

(assert (=> b!1445025 m!1334055))

(declare-fun m!1334057 () Bool)

(assert (=> b!1445020 m!1334057))

(declare-fun m!1334059 () Bool)

(assert (=> b!1445020 m!1334059))

(declare-fun m!1334061 () Bool)

(assert (=> b!1445022 m!1334061))

(declare-fun m!1334063 () Bool)

(assert (=> b!1445024 m!1334063))

(declare-fun m!1334065 () Bool)

(assert (=> b!1445029 m!1334065))

(declare-fun m!1334067 () Bool)

(assert (=> b!1445028 m!1334067))

(assert (=> b!1445028 m!1334067))

(declare-fun m!1334069 () Bool)

(assert (=> b!1445028 m!1334069))

(assert (=> b!1445028 m!1334053))

(declare-fun m!1334071 () Bool)

(assert (=> b!1445028 m!1334071))

(assert (=> b!1445023 m!1334059))

(assert (=> b!1445023 m!1334059))

(declare-fun m!1334073 () Bool)

(assert (=> b!1445023 m!1334073))

(declare-fun m!1334075 () Bool)

(assert (=> start!124734 m!1334075))

(declare-fun m!1334077 () Bool)

(assert (=> start!124734 m!1334077))

(assert (=> b!1445019 m!1334059))

(assert (=> b!1445019 m!1334059))

(declare-fun m!1334079 () Bool)

(assert (=> b!1445019 m!1334079))

(declare-fun m!1334081 () Bool)

(assert (=> b!1445030 m!1334081))

(assert (=> b!1445030 m!1334081))

(declare-fun m!1334083 () Bool)

(assert (=> b!1445030 m!1334083))

(assert (=> b!1445016 m!1334059))

(assert (=> b!1445016 m!1334059))

(declare-fun m!1334085 () Bool)

(assert (=> b!1445016 m!1334085))

(assert (=> b!1445026 m!1334059))

(assert (=> b!1445026 m!1334059))

(declare-fun m!1334087 () Bool)

(assert (=> b!1445026 m!1334087))

(assert (=> b!1445026 m!1334087))

(assert (=> b!1445026 m!1334059))

(declare-fun m!1334089 () Bool)

(assert (=> b!1445026 m!1334089))

(declare-fun m!1334091 () Bool)

(assert (=> b!1445031 m!1334091))

(declare-fun m!1334093 () Bool)

(assert (=> b!1445031 m!1334093))

(declare-fun m!1334095 () Bool)

(assert (=> b!1445018 m!1334095))

(declare-fun m!1334097 () Bool)

(assert (=> b!1445018 m!1334097))

(check-sat (not b!1445029) (not b!1445028) (not b!1445030) (not b!1445022) (not b!1445018) (not start!124734) (not b!1445023) (not b!1445019) (not b!1445026) (not b!1445024) (not b!1445016) (not b!1445031))
(check-sat)
