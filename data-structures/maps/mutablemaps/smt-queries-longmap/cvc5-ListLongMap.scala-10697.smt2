; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125362 () Bool)

(assert start!125362)

(declare-fun b!1463947 () Bool)

(declare-fun res!993209 () Bool)

(declare-fun e!822778 () Bool)

(assert (=> b!1463947 (=> (not res!993209) (not e!822778))))

(declare-datatypes ((array!98727 0))(
  ( (array!98728 (arr!47647 (Array (_ BitVec 32) (_ BitVec 64))) (size!48198 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98727)

(declare-datatypes ((List!34328 0))(
  ( (Nil!34325) (Cons!34324 (h!35674 (_ BitVec 64)) (t!49029 List!34328)) )
))
(declare-fun arrayNoDuplicates!0 (array!98727 (_ BitVec 32) List!34328) Bool)

(assert (=> b!1463947 (= res!993209 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34325))))

(declare-fun b!1463948 () Bool)

(declare-fun e!822776 () Bool)

(declare-fun e!822774 () Bool)

(assert (=> b!1463948 (= e!822776 e!822774)))

(declare-fun res!993213 () Bool)

(assert (=> b!1463948 (=> (not res!993213) (not e!822774))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11922 0))(
  ( (MissingZero!11922 (index!50079 (_ BitVec 32))) (Found!11922 (index!50080 (_ BitVec 32))) (Intermediate!11922 (undefined!12734 Bool) (index!50081 (_ BitVec 32)) (x!131670 (_ BitVec 32))) (Undefined!11922) (MissingVacant!11922 (index!50082 (_ BitVec 32))) )
))
(declare-fun lt!640900 () SeekEntryResult!11922)

(assert (=> b!1463948 (= res!993213 (= lt!640900 (Intermediate!11922 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!640897 () (_ BitVec 64))

(declare-fun lt!640899 () array!98727)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98727 (_ BitVec 32)) SeekEntryResult!11922)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463948 (= lt!640900 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640897 mask!2687) lt!640897 lt!640899 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1463948 (= lt!640897 (select (store (arr!47647 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1463949 () Bool)

(declare-fun res!993207 () Bool)

(assert (=> b!1463949 (=> (not res!993207) (not e!822778))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1463949 (= res!993207 (validKeyInArray!0 (select (arr!47647 a!2862) i!1006)))))

(declare-fun b!1463950 () Bool)

(declare-fun res!993211 () Bool)

(assert (=> b!1463950 (=> (not res!993211) (not e!822776))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!640895 () SeekEntryResult!11922)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1463950 (= res!993211 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47647 a!2862) j!93) a!2862 mask!2687) lt!640895))))

(declare-fun b!1463951 () Bool)

(declare-fun res!993204 () Bool)

(assert (=> b!1463951 (=> (not res!993204) (not e!822774))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1463951 (= res!993204 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1463952 () Bool)

(declare-fun e!822780 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98727 (_ BitVec 32)) SeekEntryResult!11922)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98727 (_ BitVec 32)) SeekEntryResult!11922)

(assert (=> b!1463952 (= e!822780 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640897 lt!640899 mask!2687) (seekEntryOrOpen!0 lt!640897 lt!640899 mask!2687)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1463953 () Bool)

(declare-fun e!822782 () Bool)

(assert (=> b!1463953 (= e!822782 (or (= (select (arr!47647 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47647 a!2862) intermediateBeforeIndex!19) (select (arr!47647 a!2862) j!93))))))

(declare-fun b!1463954 () Bool)

(declare-fun e!822777 () Bool)

(declare-fun e!822773 () Bool)

(assert (=> b!1463954 (= e!822777 e!822773)))

(declare-fun res!993200 () Bool)

(assert (=> b!1463954 (=> res!993200 e!822773)))

(declare-fun lt!640898 () (_ BitVec 32))

(assert (=> b!1463954 (= res!993200 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640898 #b00000000000000000000000000000000) (bvsge lt!640898 (size!48198 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463954 (= lt!640898 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1463955 () Bool)

(declare-fun res!993215 () Bool)

(assert (=> b!1463955 (=> (not res!993215) (not e!822778))))

(assert (=> b!1463955 (= res!993215 (and (= (size!48198 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48198 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48198 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1463956 () Bool)

(declare-fun res!993203 () Bool)

(assert (=> b!1463956 (=> (not res!993203) (not e!822782))))

(assert (=> b!1463956 (= res!993203 (= (seekEntryOrOpen!0 (select (arr!47647 a!2862) j!93) a!2862 mask!2687) (Found!11922 j!93)))))

(declare-fun b!1463957 () Bool)

(assert (=> b!1463957 (= e!822780 (= lt!640900 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640897 lt!640899 mask!2687)))))

(declare-fun res!993216 () Bool)

(assert (=> start!125362 (=> (not res!993216) (not e!822778))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125362 (= res!993216 (validMask!0 mask!2687))))

(assert (=> start!125362 e!822778))

(assert (=> start!125362 true))

(declare-fun array_inv!36592 (array!98727) Bool)

(assert (=> start!125362 (array_inv!36592 a!2862)))

(declare-fun b!1463958 () Bool)

(declare-fun res!993206 () Bool)

(assert (=> b!1463958 (=> (not res!993206) (not e!822778))))

(assert (=> b!1463958 (= res!993206 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48198 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48198 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48198 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1463959 () Bool)

(declare-fun e!822779 () Bool)

(assert (=> b!1463959 (= e!822778 e!822779)))

(declare-fun res!993212 () Bool)

(assert (=> b!1463959 (=> (not res!993212) (not e!822779))))

(assert (=> b!1463959 (= res!993212 (= (select (store (arr!47647 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1463959 (= lt!640899 (array!98728 (store (arr!47647 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48198 a!2862)))))

(declare-fun b!1463960 () Bool)

(declare-fun e!822781 () Bool)

(assert (=> b!1463960 (= e!822781 (not (= lt!640900 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640898 lt!640897 lt!640899 mask!2687))))))

(declare-fun b!1463961 () Bool)

(declare-fun res!993205 () Bool)

(assert (=> b!1463961 (=> (not res!993205) (not e!822778))))

(assert (=> b!1463961 (= res!993205 (validKeyInArray!0 (select (arr!47647 a!2862) j!93)))))

(declare-fun b!1463962 () Bool)

(assert (=> b!1463962 (= e!822781 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640898 intermediateAfterIndex!19 lt!640897 lt!640899 mask!2687) (seekEntryOrOpen!0 lt!640897 lt!640899 mask!2687))))))

(declare-fun b!1463963 () Bool)

(declare-fun res!993201 () Bool)

(assert (=> b!1463963 (=> (not res!993201) (not e!822774))))

(assert (=> b!1463963 (= res!993201 e!822780)))

(declare-fun c!134887 () Bool)

(assert (=> b!1463963 (= c!134887 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1463964 () Bool)

(assert (=> b!1463964 (= e!822774 (not e!822777))))

(declare-fun res!993210 () Bool)

(assert (=> b!1463964 (=> res!993210 e!822777)))

(assert (=> b!1463964 (= res!993210 (or (and (= (select (arr!47647 a!2862) index!646) (select (store (arr!47647 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47647 a!2862) index!646) (select (arr!47647 a!2862) j!93))) (= (select (arr!47647 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1463964 e!822782))

(declare-fun res!993199 () Bool)

(assert (=> b!1463964 (=> (not res!993199) (not e!822782))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98727 (_ BitVec 32)) Bool)

(assert (=> b!1463964 (= res!993199 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49288 0))(
  ( (Unit!49289) )
))
(declare-fun lt!640896 () Unit!49288)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98727 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49288)

(assert (=> b!1463964 (= lt!640896 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1463965 () Bool)

(assert (=> b!1463965 (= e!822779 e!822776)))

(declare-fun res!993202 () Bool)

(assert (=> b!1463965 (=> (not res!993202) (not e!822776))))

(assert (=> b!1463965 (= res!993202 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47647 a!2862) j!93) mask!2687) (select (arr!47647 a!2862) j!93) a!2862 mask!2687) lt!640895))))

(assert (=> b!1463965 (= lt!640895 (Intermediate!11922 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1463966 () Bool)

(assert (=> b!1463966 (= e!822773 true)))

(declare-fun lt!640894 () Bool)

(assert (=> b!1463966 (= lt!640894 e!822781)))

(declare-fun c!134888 () Bool)

(assert (=> b!1463966 (= c!134888 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1463967 () Bool)

(declare-fun res!993214 () Bool)

(assert (=> b!1463967 (=> res!993214 e!822773)))

(assert (=> b!1463967 (= res!993214 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640898 (select (arr!47647 a!2862) j!93) a!2862 mask!2687) lt!640895)))))

(declare-fun b!1463968 () Bool)

(declare-fun res!993208 () Bool)

(assert (=> b!1463968 (=> (not res!993208) (not e!822778))))

(assert (=> b!1463968 (= res!993208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125362 res!993216) b!1463955))

(assert (= (and b!1463955 res!993215) b!1463949))

(assert (= (and b!1463949 res!993207) b!1463961))

(assert (= (and b!1463961 res!993205) b!1463968))

(assert (= (and b!1463968 res!993208) b!1463947))

(assert (= (and b!1463947 res!993209) b!1463958))

(assert (= (and b!1463958 res!993206) b!1463959))

(assert (= (and b!1463959 res!993212) b!1463965))

(assert (= (and b!1463965 res!993202) b!1463950))

(assert (= (and b!1463950 res!993211) b!1463948))

(assert (= (and b!1463948 res!993213) b!1463963))

(assert (= (and b!1463963 c!134887) b!1463957))

(assert (= (and b!1463963 (not c!134887)) b!1463952))

(assert (= (and b!1463963 res!993201) b!1463951))

(assert (= (and b!1463951 res!993204) b!1463964))

(assert (= (and b!1463964 res!993199) b!1463956))

(assert (= (and b!1463956 res!993203) b!1463953))

(assert (= (and b!1463964 (not res!993210)) b!1463954))

(assert (= (and b!1463954 (not res!993200)) b!1463967))

(assert (= (and b!1463967 (not res!993214)) b!1463966))

(assert (= (and b!1463966 c!134888) b!1463960))

(assert (= (and b!1463966 (not c!134888)) b!1463962))

(declare-fun m!1351269 () Bool)

(assert (=> b!1463957 m!1351269))

(declare-fun m!1351271 () Bool)

(assert (=> b!1463952 m!1351271))

(declare-fun m!1351273 () Bool)

(assert (=> b!1463952 m!1351273))

(declare-fun m!1351275 () Bool)

(assert (=> b!1463965 m!1351275))

(assert (=> b!1463965 m!1351275))

(declare-fun m!1351277 () Bool)

(assert (=> b!1463965 m!1351277))

(assert (=> b!1463965 m!1351277))

(assert (=> b!1463965 m!1351275))

(declare-fun m!1351279 () Bool)

(assert (=> b!1463965 m!1351279))

(declare-fun m!1351281 () Bool)

(assert (=> b!1463968 m!1351281))

(declare-fun m!1351283 () Bool)

(assert (=> b!1463949 m!1351283))

(assert (=> b!1463949 m!1351283))

(declare-fun m!1351285 () Bool)

(assert (=> b!1463949 m!1351285))

(assert (=> b!1463961 m!1351275))

(assert (=> b!1463961 m!1351275))

(declare-fun m!1351287 () Bool)

(assert (=> b!1463961 m!1351287))

(declare-fun m!1351289 () Bool)

(assert (=> b!1463962 m!1351289))

(assert (=> b!1463962 m!1351273))

(declare-fun m!1351291 () Bool)

(assert (=> b!1463948 m!1351291))

(assert (=> b!1463948 m!1351291))

(declare-fun m!1351293 () Bool)

(assert (=> b!1463948 m!1351293))

(declare-fun m!1351295 () Bool)

(assert (=> b!1463948 m!1351295))

(declare-fun m!1351297 () Bool)

(assert (=> b!1463948 m!1351297))

(assert (=> b!1463959 m!1351295))

(declare-fun m!1351299 () Bool)

(assert (=> b!1463959 m!1351299))

(assert (=> b!1463967 m!1351275))

(assert (=> b!1463967 m!1351275))

(declare-fun m!1351301 () Bool)

(assert (=> b!1463967 m!1351301))

(assert (=> b!1463956 m!1351275))

(assert (=> b!1463956 m!1351275))

(declare-fun m!1351303 () Bool)

(assert (=> b!1463956 m!1351303))

(declare-fun m!1351305 () Bool)

(assert (=> b!1463960 m!1351305))

(declare-fun m!1351307 () Bool)

(assert (=> start!125362 m!1351307))

(declare-fun m!1351309 () Bool)

(assert (=> start!125362 m!1351309))

(declare-fun m!1351311 () Bool)

(assert (=> b!1463954 m!1351311))

(declare-fun m!1351313 () Bool)

(assert (=> b!1463953 m!1351313))

(assert (=> b!1463953 m!1351275))

(declare-fun m!1351315 () Bool)

(assert (=> b!1463964 m!1351315))

(assert (=> b!1463964 m!1351295))

(declare-fun m!1351317 () Bool)

(assert (=> b!1463964 m!1351317))

(declare-fun m!1351319 () Bool)

(assert (=> b!1463964 m!1351319))

(declare-fun m!1351321 () Bool)

(assert (=> b!1463964 m!1351321))

(assert (=> b!1463964 m!1351275))

(declare-fun m!1351323 () Bool)

(assert (=> b!1463947 m!1351323))

(assert (=> b!1463950 m!1351275))

(assert (=> b!1463950 m!1351275))

(declare-fun m!1351325 () Bool)

(assert (=> b!1463950 m!1351325))

(push 1)

