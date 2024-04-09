; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124854 () Bool)

(assert start!124854)

(declare-fun b!1448284 () Bool)

(declare-fun res!979952 () Bool)

(declare-fun e!815660 () Bool)

(assert (=> b!1448284 (=> (not res!979952) (not e!815660))))

(declare-datatypes ((array!98219 0))(
  ( (array!98220 (arr!47393 (Array (_ BitVec 32) (_ BitVec 64))) (size!47944 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98219)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1448284 (= res!979952 (validKeyInArray!0 (select (arr!47393 a!2862) i!1006)))))

(declare-fun b!1448285 () Bool)

(declare-fun res!979961 () Bool)

(assert (=> b!1448285 (=> (not res!979961) (not e!815660))))

(declare-datatypes ((List!34074 0))(
  ( (Nil!34071) (Cons!34070 (h!35420 (_ BitVec 64)) (t!48775 List!34074)) )
))
(declare-fun arrayNoDuplicates!0 (array!98219 (_ BitVec 32) List!34074) Bool)

(assert (=> b!1448285 (= res!979961 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34071))))

(declare-fun b!1448286 () Bool)

(declare-fun res!979950 () Bool)

(assert (=> b!1448286 (=> (not res!979950) (not e!815660))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98219 (_ BitVec 32)) Bool)

(assert (=> b!1448286 (= res!979950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!635447 () (_ BitVec 64))

(declare-fun b!1448287 () Bool)

(declare-fun e!815663 () Bool)

(declare-fun lt!635446 () array!98219)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11668 0))(
  ( (MissingZero!11668 (index!49063 (_ BitVec 32))) (Found!11668 (index!49064 (_ BitVec 32))) (Intermediate!11668 (undefined!12480 Bool) (index!49065 (_ BitVec 32)) (x!130736 (_ BitVec 32))) (Undefined!11668) (MissingVacant!11668 (index!49066 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98219 (_ BitVec 32)) SeekEntryResult!11668)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98219 (_ BitVec 32)) SeekEntryResult!11668)

(assert (=> b!1448287 (= e!815663 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635447 lt!635446 mask!2687) (seekEntryOrOpen!0 lt!635447 lt!635446 mask!2687)))))

(declare-fun b!1448288 () Bool)

(declare-fun e!815662 () Bool)

(declare-fun e!815666 () Bool)

(assert (=> b!1448288 (= e!815662 e!815666)))

(declare-fun res!979962 () Bool)

(assert (=> b!1448288 (=> res!979962 e!815666)))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1448288 (= res!979962 (or (and (= (select (arr!47393 a!2862) index!646) (select (store (arr!47393 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47393 a!2862) index!646) (select (arr!47393 a!2862) j!93))) (not (= (select (arr!47393 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1448289 () Bool)

(declare-fun e!815657 () Bool)

(declare-fun e!815659 () Bool)

(assert (=> b!1448289 (= e!815657 e!815659)))

(declare-fun res!979951 () Bool)

(assert (=> b!1448289 (=> (not res!979951) (not e!815659))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!635449 () SeekEntryResult!11668)

(assert (=> b!1448289 (= res!979951 (= lt!635449 (Intermediate!11668 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98219 (_ BitVec 32)) SeekEntryResult!11668)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1448289 (= lt!635449 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635447 mask!2687) lt!635447 lt!635446 mask!2687))))

(assert (=> b!1448289 (= lt!635447 (select (store (arr!47393 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1448290 () Bool)

(declare-fun e!815665 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1448290 (= e!815665 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1448292 () Bool)

(declare-fun e!815658 () Bool)

(assert (=> b!1448292 (= e!815658 true)))

(declare-fun lt!635445 () SeekEntryResult!11668)

(assert (=> b!1448292 (= lt!635445 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47393 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1448293 () Bool)

(declare-fun res!979946 () Bool)

(assert (=> b!1448293 (=> (not res!979946) (not e!815660))))

(assert (=> b!1448293 (= res!979946 (validKeyInArray!0 (select (arr!47393 a!2862) j!93)))))

(declare-fun b!1448294 () Bool)

(declare-fun res!979953 () Bool)

(assert (=> b!1448294 (=> (not res!979953) (not e!815659))))

(assert (=> b!1448294 (= res!979953 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1448295 () Bool)

(declare-fun res!979959 () Bool)

(assert (=> b!1448295 (=> (not res!979959) (not e!815660))))

(assert (=> b!1448295 (= res!979959 (and (= (size!47944 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47944 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47944 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1448296 () Bool)

(declare-fun e!815661 () Bool)

(assert (=> b!1448296 (= e!815660 e!815661)))

(declare-fun res!979955 () Bool)

(assert (=> b!1448296 (=> (not res!979955) (not e!815661))))

(assert (=> b!1448296 (= res!979955 (= (select (store (arr!47393 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1448296 (= lt!635446 (array!98220 (store (arr!47393 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47944 a!2862)))))

(declare-fun b!1448297 () Bool)

(declare-fun res!979956 () Bool)

(assert (=> b!1448297 (=> (not res!979956) (not e!815657))))

(declare-fun lt!635443 () SeekEntryResult!11668)

(assert (=> b!1448297 (= res!979956 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47393 a!2862) j!93) a!2862 mask!2687) lt!635443))))

(declare-fun b!1448298 () Bool)

(assert (=> b!1448298 (= e!815666 e!815665)))

(declare-fun res!979947 () Bool)

(assert (=> b!1448298 (=> (not res!979947) (not e!815665))))

(declare-fun lt!635448 () SeekEntryResult!11668)

(assert (=> b!1448298 (= res!979947 (= lt!635448 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47393 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1448299 () Bool)

(assert (=> b!1448299 (= e!815663 (= lt!635449 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635447 lt!635446 mask!2687)))))

(declare-fun b!1448300 () Bool)

(assert (=> b!1448300 (= e!815659 (not e!815658))))

(declare-fun res!979948 () Bool)

(assert (=> b!1448300 (=> res!979948 e!815658)))

(assert (=> b!1448300 (= res!979948 (or (and (= (select (arr!47393 a!2862) index!646) (select (store (arr!47393 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47393 a!2862) index!646) (select (arr!47393 a!2862) j!93))) (not (= (select (arr!47393 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47393 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1448300 e!815662))

(declare-fun res!979957 () Bool)

(assert (=> b!1448300 (=> (not res!979957) (not e!815662))))

(assert (=> b!1448300 (= res!979957 (and (= lt!635448 (Found!11668 j!93)) (or (= (select (arr!47393 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47393 a!2862) intermediateBeforeIndex!19) (select (arr!47393 a!2862) j!93)))))))

(assert (=> b!1448300 (= lt!635448 (seekEntryOrOpen!0 (select (arr!47393 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1448300 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48780 0))(
  ( (Unit!48781) )
))
(declare-fun lt!635444 () Unit!48780)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98219 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48780)

(assert (=> b!1448300 (= lt!635444 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1448301 () Bool)

(declare-fun res!979954 () Bool)

(assert (=> b!1448301 (=> (not res!979954) (not e!815659))))

(assert (=> b!1448301 (= res!979954 e!815663)))

(declare-fun c!133682 () Bool)

(assert (=> b!1448301 (= c!133682 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1448302 () Bool)

(declare-fun res!979949 () Bool)

(assert (=> b!1448302 (=> (not res!979949) (not e!815660))))

(assert (=> b!1448302 (= res!979949 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47944 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47944 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47944 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!979958 () Bool)

(assert (=> start!124854 (=> (not res!979958) (not e!815660))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124854 (= res!979958 (validMask!0 mask!2687))))

(assert (=> start!124854 e!815660))

(assert (=> start!124854 true))

(declare-fun array_inv!36338 (array!98219) Bool)

(assert (=> start!124854 (array_inv!36338 a!2862)))

(declare-fun b!1448291 () Bool)

(assert (=> b!1448291 (= e!815661 e!815657)))

(declare-fun res!979960 () Bool)

(assert (=> b!1448291 (=> (not res!979960) (not e!815657))))

(assert (=> b!1448291 (= res!979960 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47393 a!2862) j!93) mask!2687) (select (arr!47393 a!2862) j!93) a!2862 mask!2687) lt!635443))))

(assert (=> b!1448291 (= lt!635443 (Intermediate!11668 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124854 res!979958) b!1448295))

(assert (= (and b!1448295 res!979959) b!1448284))

(assert (= (and b!1448284 res!979952) b!1448293))

(assert (= (and b!1448293 res!979946) b!1448286))

(assert (= (and b!1448286 res!979950) b!1448285))

(assert (= (and b!1448285 res!979961) b!1448302))

(assert (= (and b!1448302 res!979949) b!1448296))

(assert (= (and b!1448296 res!979955) b!1448291))

(assert (= (and b!1448291 res!979960) b!1448297))

(assert (= (and b!1448297 res!979956) b!1448289))

(assert (= (and b!1448289 res!979951) b!1448301))

(assert (= (and b!1448301 c!133682) b!1448299))

(assert (= (and b!1448301 (not c!133682)) b!1448287))

(assert (= (and b!1448301 res!979954) b!1448294))

(assert (= (and b!1448294 res!979953) b!1448300))

(assert (= (and b!1448300 res!979957) b!1448288))

(assert (= (and b!1448288 (not res!979962)) b!1448298))

(assert (= (and b!1448298 res!979947) b!1448290))

(assert (= (and b!1448300 (not res!979948)) b!1448292))

(declare-fun m!1337109 () Bool)

(assert (=> b!1448289 m!1337109))

(assert (=> b!1448289 m!1337109))

(declare-fun m!1337111 () Bool)

(assert (=> b!1448289 m!1337111))

(declare-fun m!1337113 () Bool)

(assert (=> b!1448289 m!1337113))

(declare-fun m!1337115 () Bool)

(assert (=> b!1448289 m!1337115))

(declare-fun m!1337117 () Bool)

(assert (=> start!124854 m!1337117))

(declare-fun m!1337119 () Bool)

(assert (=> start!124854 m!1337119))

(declare-fun m!1337121 () Bool)

(assert (=> b!1448288 m!1337121))

(assert (=> b!1448288 m!1337113))

(declare-fun m!1337123 () Bool)

(assert (=> b!1448288 m!1337123))

(declare-fun m!1337125 () Bool)

(assert (=> b!1448288 m!1337125))

(declare-fun m!1337127 () Bool)

(assert (=> b!1448299 m!1337127))

(declare-fun m!1337129 () Bool)

(assert (=> b!1448285 m!1337129))

(declare-fun m!1337131 () Bool)

(assert (=> b!1448284 m!1337131))

(assert (=> b!1448284 m!1337131))

(declare-fun m!1337133 () Bool)

(assert (=> b!1448284 m!1337133))

(assert (=> b!1448298 m!1337125))

(assert (=> b!1448298 m!1337125))

(declare-fun m!1337135 () Bool)

(assert (=> b!1448298 m!1337135))

(assert (=> b!1448292 m!1337125))

(assert (=> b!1448292 m!1337125))

(declare-fun m!1337137 () Bool)

(assert (=> b!1448292 m!1337137))

(declare-fun m!1337139 () Bool)

(assert (=> b!1448300 m!1337139))

(assert (=> b!1448300 m!1337113))

(declare-fun m!1337141 () Bool)

(assert (=> b!1448300 m!1337141))

(assert (=> b!1448300 m!1337123))

(assert (=> b!1448300 m!1337121))

(assert (=> b!1448300 m!1337125))

(declare-fun m!1337143 () Bool)

(assert (=> b!1448300 m!1337143))

(declare-fun m!1337145 () Bool)

(assert (=> b!1448300 m!1337145))

(assert (=> b!1448300 m!1337125))

(assert (=> b!1448291 m!1337125))

(assert (=> b!1448291 m!1337125))

(declare-fun m!1337147 () Bool)

(assert (=> b!1448291 m!1337147))

(assert (=> b!1448291 m!1337147))

(assert (=> b!1448291 m!1337125))

(declare-fun m!1337149 () Bool)

(assert (=> b!1448291 m!1337149))

(declare-fun m!1337151 () Bool)

(assert (=> b!1448287 m!1337151))

(declare-fun m!1337153 () Bool)

(assert (=> b!1448287 m!1337153))

(declare-fun m!1337155 () Bool)

(assert (=> b!1448286 m!1337155))

(assert (=> b!1448293 m!1337125))

(assert (=> b!1448293 m!1337125))

(declare-fun m!1337157 () Bool)

(assert (=> b!1448293 m!1337157))

(assert (=> b!1448296 m!1337113))

(declare-fun m!1337159 () Bool)

(assert (=> b!1448296 m!1337159))

(assert (=> b!1448297 m!1337125))

(assert (=> b!1448297 m!1337125))

(declare-fun m!1337161 () Bool)

(assert (=> b!1448297 m!1337161))

(check-sat (not b!1448285) (not b!1448297) (not b!1448284) (not b!1448286) (not b!1448287) (not b!1448298) (not b!1448293) (not b!1448299) (not b!1448292) (not b!1448291) (not start!124854) (not b!1448300) (not b!1448289))
(check-sat)
