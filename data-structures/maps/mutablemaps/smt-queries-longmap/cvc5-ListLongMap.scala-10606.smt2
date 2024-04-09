; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124816 () Bool)

(assert start!124816)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun e!815088 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1447201 () Bool)

(assert (=> b!1447201 (= e!815088 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1447202 () Bool)

(declare-fun res!978982 () Bool)

(declare-fun e!815096 () Bool)

(assert (=> b!1447202 (=> (not res!978982) (not e!815096))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((array!98181 0))(
  ( (array!98182 (arr!47374 (Array (_ BitVec 32) (_ BitVec 64))) (size!47925 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98181)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1447202 (= res!978982 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47925 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47925 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47925 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun lt!635045 () array!98181)

(declare-fun e!815095 () Bool)

(declare-fun b!1447203 () Bool)

(declare-fun lt!635048 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11649 0))(
  ( (MissingZero!11649 (index!48987 (_ BitVec 32))) (Found!11649 (index!48988 (_ BitVec 32))) (Intermediate!11649 (undefined!12461 Bool) (index!48989 (_ BitVec 32)) (x!130669 (_ BitVec 32))) (Undefined!11649) (MissingVacant!11649 (index!48990 (_ BitVec 32))) )
))
(declare-fun lt!635046 () SeekEntryResult!11649)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98181 (_ BitVec 32)) SeekEntryResult!11649)

(assert (=> b!1447203 (= e!815095 (= lt!635046 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635048 lt!635045 mask!2687)))))

(declare-fun b!1447204 () Bool)

(declare-fun res!978989 () Bool)

(assert (=> b!1447204 (=> (not res!978989) (not e!815096))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1447204 (= res!978989 (validKeyInArray!0 (select (arr!47374 a!2862) j!93)))))

(declare-fun b!1447205 () Bool)

(declare-fun res!978983 () Bool)

(declare-fun e!815090 () Bool)

(assert (=> b!1447205 (=> (not res!978983) (not e!815090))))

(declare-fun lt!635050 () SeekEntryResult!11649)

(assert (=> b!1447205 (= res!978983 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47374 a!2862) j!93) a!2862 mask!2687) lt!635050))))

(declare-fun b!1447206 () Bool)

(declare-fun res!978986 () Bool)

(assert (=> b!1447206 (=> (not res!978986) (not e!815096))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1447206 (= res!978986 (validKeyInArray!0 (select (arr!47374 a!2862) i!1006)))))

(declare-fun b!1447207 () Bool)

(declare-fun e!815087 () Bool)

(assert (=> b!1447207 (= e!815090 e!815087)))

(declare-fun res!978985 () Bool)

(assert (=> b!1447207 (=> (not res!978985) (not e!815087))))

(assert (=> b!1447207 (= res!978985 (= lt!635046 (Intermediate!11649 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1447207 (= lt!635046 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635048 mask!2687) lt!635048 lt!635045 mask!2687))))

(assert (=> b!1447207 (= lt!635048 (select (store (arr!47374 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1447208 () Bool)

(declare-fun res!978981 () Bool)

(assert (=> b!1447208 (=> (not res!978981) (not e!815087))))

(assert (=> b!1447208 (= res!978981 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1447209 () Bool)

(declare-fun res!978991 () Bool)

(assert (=> b!1447209 (=> (not res!978991) (not e!815096))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98181 (_ BitVec 32)) Bool)

(assert (=> b!1447209 (= res!978991 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1447210 () Bool)

(declare-fun e!815092 () Bool)

(assert (=> b!1447210 (= e!815092 true)))

(declare-fun lt!635044 () SeekEntryResult!11649)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98181 (_ BitVec 32)) SeekEntryResult!11649)

(assert (=> b!1447210 (= lt!635044 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47374 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1447211 () Bool)

(declare-fun e!815093 () Bool)

(assert (=> b!1447211 (= e!815093 e!815090)))

(declare-fun res!978988 () Bool)

(assert (=> b!1447211 (=> (not res!978988) (not e!815090))))

(assert (=> b!1447211 (= res!978988 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47374 a!2862) j!93) mask!2687) (select (arr!47374 a!2862) j!93) a!2862 mask!2687) lt!635050))))

(assert (=> b!1447211 (= lt!635050 (Intermediate!11649 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1447212 () Bool)

(assert (=> b!1447212 (= e!815087 (not e!815092))))

(declare-fun res!978992 () Bool)

(assert (=> b!1447212 (=> res!978992 e!815092)))

(assert (=> b!1447212 (= res!978992 (or (and (= (select (arr!47374 a!2862) index!646) (select (store (arr!47374 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47374 a!2862) index!646) (select (arr!47374 a!2862) j!93))) (not (= (select (arr!47374 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47374 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!815091 () Bool)

(assert (=> b!1447212 e!815091))

(declare-fun res!978993 () Bool)

(assert (=> b!1447212 (=> (not res!978993) (not e!815091))))

(declare-fun lt!635049 () SeekEntryResult!11649)

(assert (=> b!1447212 (= res!978993 (and (= lt!635049 (Found!11649 j!93)) (or (= (select (arr!47374 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47374 a!2862) intermediateBeforeIndex!19) (select (arr!47374 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98181 (_ BitVec 32)) SeekEntryResult!11649)

(assert (=> b!1447212 (= lt!635049 (seekEntryOrOpen!0 (select (arr!47374 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1447212 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48742 0))(
  ( (Unit!48743) )
))
(declare-fun lt!635047 () Unit!48742)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98181 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48742)

(assert (=> b!1447212 (= lt!635047 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!978980 () Bool)

(assert (=> start!124816 (=> (not res!978980) (not e!815096))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124816 (= res!978980 (validMask!0 mask!2687))))

(assert (=> start!124816 e!815096))

(assert (=> start!124816 true))

(declare-fun array_inv!36319 (array!98181) Bool)

(assert (=> start!124816 (array_inv!36319 a!2862)))

(declare-fun b!1447213 () Bool)

(declare-fun e!815089 () Bool)

(assert (=> b!1447213 (= e!815091 e!815089)))

(declare-fun res!978978 () Bool)

(assert (=> b!1447213 (=> res!978978 e!815089)))

(assert (=> b!1447213 (= res!978978 (or (and (= (select (arr!47374 a!2862) index!646) (select (store (arr!47374 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47374 a!2862) index!646) (select (arr!47374 a!2862) j!93))) (not (= (select (arr!47374 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1447214 () Bool)

(assert (=> b!1447214 (= e!815095 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635048 lt!635045 mask!2687) (seekEntryOrOpen!0 lt!635048 lt!635045 mask!2687)))))

(declare-fun b!1447215 () Bool)

(assert (=> b!1447215 (= e!815096 e!815093)))

(declare-fun res!978990 () Bool)

(assert (=> b!1447215 (=> (not res!978990) (not e!815093))))

(assert (=> b!1447215 (= res!978990 (= (select (store (arr!47374 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1447215 (= lt!635045 (array!98182 (store (arr!47374 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47925 a!2862)))))

(declare-fun b!1447216 () Bool)

(declare-fun res!978984 () Bool)

(assert (=> b!1447216 (=> (not res!978984) (not e!815087))))

(assert (=> b!1447216 (= res!978984 e!815095)))

(declare-fun c!133625 () Bool)

(assert (=> b!1447216 (= c!133625 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1447217 () Bool)

(declare-fun res!978977 () Bool)

(assert (=> b!1447217 (=> (not res!978977) (not e!815096))))

(declare-datatypes ((List!34055 0))(
  ( (Nil!34052) (Cons!34051 (h!35401 (_ BitVec 64)) (t!48756 List!34055)) )
))
(declare-fun arrayNoDuplicates!0 (array!98181 (_ BitVec 32) List!34055) Bool)

(assert (=> b!1447217 (= res!978977 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34052))))

(declare-fun b!1447218 () Bool)

(declare-fun res!978979 () Bool)

(assert (=> b!1447218 (=> (not res!978979) (not e!815096))))

(assert (=> b!1447218 (= res!978979 (and (= (size!47925 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47925 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47925 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1447219 () Bool)

(assert (=> b!1447219 (= e!815089 e!815088)))

(declare-fun res!978987 () Bool)

(assert (=> b!1447219 (=> (not res!978987) (not e!815088))))

(assert (=> b!1447219 (= res!978987 (= lt!635049 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47374 a!2862) j!93) a!2862 mask!2687)))))

(assert (= (and start!124816 res!978980) b!1447218))

(assert (= (and b!1447218 res!978979) b!1447206))

(assert (= (and b!1447206 res!978986) b!1447204))

(assert (= (and b!1447204 res!978989) b!1447209))

(assert (= (and b!1447209 res!978991) b!1447217))

(assert (= (and b!1447217 res!978977) b!1447202))

(assert (= (and b!1447202 res!978982) b!1447215))

(assert (= (and b!1447215 res!978990) b!1447211))

(assert (= (and b!1447211 res!978988) b!1447205))

(assert (= (and b!1447205 res!978983) b!1447207))

(assert (= (and b!1447207 res!978985) b!1447216))

(assert (= (and b!1447216 c!133625) b!1447203))

(assert (= (and b!1447216 (not c!133625)) b!1447214))

(assert (= (and b!1447216 res!978984) b!1447208))

(assert (= (and b!1447208 res!978981) b!1447212))

(assert (= (and b!1447212 res!978993) b!1447213))

(assert (= (and b!1447213 (not res!978978)) b!1447219))

(assert (= (and b!1447219 res!978987) b!1447201))

(assert (= (and b!1447212 (not res!978992)) b!1447210))

(declare-fun m!1336083 () Bool)

(assert (=> b!1447209 m!1336083))

(declare-fun m!1336085 () Bool)

(assert (=> b!1447215 m!1336085))

(declare-fun m!1336087 () Bool)

(assert (=> b!1447215 m!1336087))

(declare-fun m!1336089 () Bool)

(assert (=> b!1447217 m!1336089))

(declare-fun m!1336091 () Bool)

(assert (=> start!124816 m!1336091))

(declare-fun m!1336093 () Bool)

(assert (=> start!124816 m!1336093))

(declare-fun m!1336095 () Bool)

(assert (=> b!1447204 m!1336095))

(assert (=> b!1447204 m!1336095))

(declare-fun m!1336097 () Bool)

(assert (=> b!1447204 m!1336097))

(assert (=> b!1447205 m!1336095))

(assert (=> b!1447205 m!1336095))

(declare-fun m!1336099 () Bool)

(assert (=> b!1447205 m!1336099))

(assert (=> b!1447219 m!1336095))

(assert (=> b!1447219 m!1336095))

(declare-fun m!1336101 () Bool)

(assert (=> b!1447219 m!1336101))

(declare-fun m!1336103 () Bool)

(assert (=> b!1447207 m!1336103))

(assert (=> b!1447207 m!1336103))

(declare-fun m!1336105 () Bool)

(assert (=> b!1447207 m!1336105))

(assert (=> b!1447207 m!1336085))

(declare-fun m!1336107 () Bool)

(assert (=> b!1447207 m!1336107))

(declare-fun m!1336109 () Bool)

(assert (=> b!1447214 m!1336109))

(declare-fun m!1336111 () Bool)

(assert (=> b!1447214 m!1336111))

(assert (=> b!1447211 m!1336095))

(assert (=> b!1447211 m!1336095))

(declare-fun m!1336113 () Bool)

(assert (=> b!1447211 m!1336113))

(assert (=> b!1447211 m!1336113))

(assert (=> b!1447211 m!1336095))

(declare-fun m!1336115 () Bool)

(assert (=> b!1447211 m!1336115))

(assert (=> b!1447210 m!1336095))

(assert (=> b!1447210 m!1336095))

(declare-fun m!1336117 () Bool)

(assert (=> b!1447210 m!1336117))

(declare-fun m!1336119 () Bool)

(assert (=> b!1447206 m!1336119))

(assert (=> b!1447206 m!1336119))

(declare-fun m!1336121 () Bool)

(assert (=> b!1447206 m!1336121))

(declare-fun m!1336123 () Bool)

(assert (=> b!1447212 m!1336123))

(assert (=> b!1447212 m!1336085))

(declare-fun m!1336125 () Bool)

(assert (=> b!1447212 m!1336125))

(declare-fun m!1336127 () Bool)

(assert (=> b!1447212 m!1336127))

(declare-fun m!1336129 () Bool)

(assert (=> b!1447212 m!1336129))

(assert (=> b!1447212 m!1336095))

(declare-fun m!1336131 () Bool)

(assert (=> b!1447212 m!1336131))

(declare-fun m!1336133 () Bool)

(assert (=> b!1447212 m!1336133))

(assert (=> b!1447212 m!1336095))

(declare-fun m!1336135 () Bool)

(assert (=> b!1447203 m!1336135))

(assert (=> b!1447213 m!1336129))

(assert (=> b!1447213 m!1336085))

(assert (=> b!1447213 m!1336127))

(assert (=> b!1447213 m!1336095))

(push 1)

