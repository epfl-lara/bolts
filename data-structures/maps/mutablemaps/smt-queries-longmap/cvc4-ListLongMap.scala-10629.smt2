; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124958 () Bool)

(assert start!124958)

(declare-fun b!1451295 () Bool)

(declare-fun res!982659 () Bool)

(declare-fun e!817181 () Bool)

(assert (=> b!1451295 (=> (not res!982659) (not e!817181))))

(declare-datatypes ((array!98323 0))(
  ( (array!98324 (arr!47445 (Array (_ BitVec 32) (_ BitVec 64))) (size!47996 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98323)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1451295 (= res!982659 (validKeyInArray!0 (select (arr!47445 a!2862) i!1006)))))

(declare-fun e!817175 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1451296 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1451296 (= e!817175 (and (or (= (select (arr!47445 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47445 a!2862) intermediateBeforeIndex!19) (select (arr!47445 a!2862) j!93))) (or (and (= (select (arr!47445 a!2862) index!646) (select (store (arr!47445 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47445 a!2862) index!646) (select (arr!47445 a!2862) j!93))) (= (select (arr!47445 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47445 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((SeekEntryResult!11720 0))(
  ( (MissingZero!11720 (index!49271 (_ BitVec 32))) (Found!11720 (index!49272 (_ BitVec 32))) (Intermediate!11720 (undefined!12532 Bool) (index!49273 (_ BitVec 32)) (x!130924 (_ BitVec 32))) (Undefined!11720) (MissingVacant!11720 (index!49274 (_ BitVec 32))) )
))
(declare-fun lt!636575 () SeekEntryResult!11720)

(declare-fun b!1451297 () Bool)

(declare-fun e!817180 () Bool)

(declare-fun lt!636573 () (_ BitVec 64))

(declare-fun lt!636576 () array!98323)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98323 (_ BitVec 32)) SeekEntryResult!11720)

(assert (=> b!1451297 (= e!817180 (= lt!636575 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636573 lt!636576 mask!2687)))))

(declare-fun b!1451298 () Bool)

(declare-fun e!817179 () Bool)

(declare-fun e!817178 () Bool)

(assert (=> b!1451298 (= e!817179 e!817178)))

(declare-fun res!982655 () Bool)

(assert (=> b!1451298 (=> (not res!982655) (not e!817178))))

(assert (=> b!1451298 (= res!982655 (= lt!636575 (Intermediate!11720 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1451298 (= lt!636575 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636573 mask!2687) lt!636573 lt!636576 mask!2687))))

(assert (=> b!1451298 (= lt!636573 (select (store (arr!47445 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1451300 () Bool)

(declare-fun res!982649 () Bool)

(assert (=> b!1451300 (=> (not res!982649) (not e!817181))))

(assert (=> b!1451300 (= res!982649 (and (= (size!47996 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47996 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47996 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1451301 () Bool)

(declare-fun res!982653 () Bool)

(assert (=> b!1451301 (=> (not res!982653) (not e!817181))))

(declare-datatypes ((List!34126 0))(
  ( (Nil!34123) (Cons!34122 (h!35472 (_ BitVec 64)) (t!48827 List!34126)) )
))
(declare-fun arrayNoDuplicates!0 (array!98323 (_ BitVec 32) List!34126) Bool)

(assert (=> b!1451301 (= res!982653 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34123))))

(declare-fun b!1451302 () Bool)

(declare-fun res!982646 () Bool)

(assert (=> b!1451302 (=> (not res!982646) (not e!817175))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98323 (_ BitVec 32)) SeekEntryResult!11720)

(assert (=> b!1451302 (= res!982646 (= (seekEntryOrOpen!0 (select (arr!47445 a!2862) j!93) a!2862 mask!2687) (Found!11720 j!93)))))

(declare-fun b!1451303 () Bool)

(declare-fun res!982652 () Bool)

(assert (=> b!1451303 (=> (not res!982652) (not e!817181))))

(assert (=> b!1451303 (= res!982652 (validKeyInArray!0 (select (arr!47445 a!2862) j!93)))))

(declare-fun b!1451304 () Bool)

(declare-fun res!982658 () Bool)

(assert (=> b!1451304 (=> (not res!982658) (not e!817181))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98323 (_ BitVec 32)) Bool)

(assert (=> b!1451304 (= res!982658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1451305 () Bool)

(declare-fun e!817177 () Bool)

(assert (=> b!1451305 (= e!817181 e!817177)))

(declare-fun res!982650 () Bool)

(assert (=> b!1451305 (=> (not res!982650) (not e!817177))))

(assert (=> b!1451305 (= res!982650 (= (select (store (arr!47445 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1451305 (= lt!636576 (array!98324 (store (arr!47445 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47996 a!2862)))))

(declare-fun b!1451306 () Bool)

(declare-fun res!982648 () Bool)

(assert (=> b!1451306 (=> (not res!982648) (not e!817181))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1451306 (= res!982648 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47996 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47996 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47996 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1451307 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98323 (_ BitVec 32)) SeekEntryResult!11720)

(assert (=> b!1451307 (= e!817180 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636573 lt!636576 mask!2687) (seekEntryOrOpen!0 lt!636573 lt!636576 mask!2687)))))

(declare-fun res!982654 () Bool)

(assert (=> start!124958 (=> (not res!982654) (not e!817181))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124958 (= res!982654 (validMask!0 mask!2687))))

(assert (=> start!124958 e!817181))

(assert (=> start!124958 true))

(declare-fun array_inv!36390 (array!98323) Bool)

(assert (=> start!124958 (array_inv!36390 a!2862)))

(declare-fun b!1451299 () Bool)

(declare-fun res!982645 () Bool)

(assert (=> b!1451299 (=> (not res!982645) (not e!817178))))

(assert (=> b!1451299 (= res!982645 e!817180)))

(declare-fun c!133838 () Bool)

(assert (=> b!1451299 (= c!133838 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1451308 () Bool)

(assert (=> b!1451308 (= e!817178 (not (or (and (= (select (arr!47445 a!2862) index!646) (select (store (arr!47445 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47445 a!2862) index!646) (select (arr!47445 a!2862) j!93))) (= (select (arr!47445 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(assert (=> b!1451308 e!817175))

(declare-fun res!982647 () Bool)

(assert (=> b!1451308 (=> (not res!982647) (not e!817175))))

(assert (=> b!1451308 (= res!982647 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48884 0))(
  ( (Unit!48885) )
))
(declare-fun lt!636574 () Unit!48884)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98323 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48884)

(assert (=> b!1451308 (= lt!636574 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1451309 () Bool)

(assert (=> b!1451309 (= e!817177 e!817179)))

(declare-fun res!982656 () Bool)

(assert (=> b!1451309 (=> (not res!982656) (not e!817179))))

(declare-fun lt!636577 () SeekEntryResult!11720)

(assert (=> b!1451309 (= res!982656 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47445 a!2862) j!93) mask!2687) (select (arr!47445 a!2862) j!93) a!2862 mask!2687) lt!636577))))

(assert (=> b!1451309 (= lt!636577 (Intermediate!11720 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1451310 () Bool)

(declare-fun res!982657 () Bool)

(assert (=> b!1451310 (=> (not res!982657) (not e!817178))))

(assert (=> b!1451310 (= res!982657 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1451311 () Bool)

(declare-fun res!982651 () Bool)

(assert (=> b!1451311 (=> (not res!982651) (not e!817179))))

(assert (=> b!1451311 (= res!982651 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47445 a!2862) j!93) a!2862 mask!2687) lt!636577))))

(assert (= (and start!124958 res!982654) b!1451300))

(assert (= (and b!1451300 res!982649) b!1451295))

(assert (= (and b!1451295 res!982659) b!1451303))

(assert (= (and b!1451303 res!982652) b!1451304))

(assert (= (and b!1451304 res!982658) b!1451301))

(assert (= (and b!1451301 res!982653) b!1451306))

(assert (= (and b!1451306 res!982648) b!1451305))

(assert (= (and b!1451305 res!982650) b!1451309))

(assert (= (and b!1451309 res!982656) b!1451311))

(assert (= (and b!1451311 res!982651) b!1451298))

(assert (= (and b!1451298 res!982655) b!1451299))

(assert (= (and b!1451299 c!133838) b!1451297))

(assert (= (and b!1451299 (not c!133838)) b!1451307))

(assert (= (and b!1451299 res!982645) b!1451310))

(assert (= (and b!1451310 res!982657) b!1451308))

(assert (= (and b!1451308 res!982647) b!1451302))

(assert (= (and b!1451302 res!982646) b!1451296))

(declare-fun m!1339951 () Bool)

(assert (=> b!1451308 m!1339951))

(declare-fun m!1339953 () Bool)

(assert (=> b!1451308 m!1339953))

(declare-fun m!1339955 () Bool)

(assert (=> b!1451308 m!1339955))

(declare-fun m!1339957 () Bool)

(assert (=> b!1451308 m!1339957))

(declare-fun m!1339959 () Bool)

(assert (=> b!1451308 m!1339959))

(declare-fun m!1339961 () Bool)

(assert (=> b!1451308 m!1339961))

(declare-fun m!1339963 () Bool)

(assert (=> b!1451295 m!1339963))

(assert (=> b!1451295 m!1339963))

(declare-fun m!1339965 () Bool)

(assert (=> b!1451295 m!1339965))

(declare-fun m!1339967 () Bool)

(assert (=> b!1451297 m!1339967))

(assert (=> b!1451309 m!1339961))

(assert (=> b!1451309 m!1339961))

(declare-fun m!1339969 () Bool)

(assert (=> b!1451309 m!1339969))

(assert (=> b!1451309 m!1339969))

(assert (=> b!1451309 m!1339961))

(declare-fun m!1339971 () Bool)

(assert (=> b!1451309 m!1339971))

(assert (=> b!1451302 m!1339961))

(assert (=> b!1451302 m!1339961))

(declare-fun m!1339973 () Bool)

(assert (=> b!1451302 m!1339973))

(declare-fun m!1339975 () Bool)

(assert (=> b!1451307 m!1339975))

(declare-fun m!1339977 () Bool)

(assert (=> b!1451307 m!1339977))

(declare-fun m!1339979 () Bool)

(assert (=> b!1451298 m!1339979))

(assert (=> b!1451298 m!1339979))

(declare-fun m!1339981 () Bool)

(assert (=> b!1451298 m!1339981))

(assert (=> b!1451298 m!1339953))

(declare-fun m!1339983 () Bool)

(assert (=> b!1451298 m!1339983))

(declare-fun m!1339985 () Bool)

(assert (=> b!1451304 m!1339985))

(assert (=> b!1451311 m!1339961))

(assert (=> b!1451311 m!1339961))

(declare-fun m!1339987 () Bool)

(assert (=> b!1451311 m!1339987))

(assert (=> b!1451305 m!1339953))

(declare-fun m!1339989 () Bool)

(assert (=> b!1451305 m!1339989))

(assert (=> b!1451303 m!1339961))

(assert (=> b!1451303 m!1339961))

(declare-fun m!1339991 () Bool)

(assert (=> b!1451303 m!1339991))

(assert (=> b!1451296 m!1339953))

(declare-fun m!1339993 () Bool)

(assert (=> b!1451296 m!1339993))

(assert (=> b!1451296 m!1339955))

(assert (=> b!1451296 m!1339957))

(assert (=> b!1451296 m!1339961))

(declare-fun m!1339995 () Bool)

(assert (=> start!124958 m!1339995))

(declare-fun m!1339997 () Bool)

(assert (=> start!124958 m!1339997))

(declare-fun m!1339999 () Bool)

(assert (=> b!1451301 m!1339999))

(push 1)

(assert (not b!1451301))

(assert (not b!1451308))

(assert (not b!1451304))

(assert (not b!1451295))

(assert (not b!1451309))

(assert (not b!1451297))

(assert (not b!1451298))

(assert (not b!1451303))

(assert (not start!124958))

(assert (not b!1451307))

