; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125084 () Bool)

(assert start!125084)

(declare-fun b!1454944 () Bool)

(declare-fun res!985807 () Bool)

(declare-fun e!818781 () Bool)

(assert (=> b!1454944 (=> (not res!985807) (not e!818781))))

(declare-fun e!818774 () Bool)

(assert (=> b!1454944 (= res!985807 e!818774)))

(declare-fun c!134090 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1454944 (= c!134090 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!985792 () Bool)

(declare-fun e!818778 () Bool)

(assert (=> start!125084 (=> (not res!985792) (not e!818778))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125084 (= res!985792 (validMask!0 mask!2687))))

(assert (=> start!125084 e!818778))

(assert (=> start!125084 true))

(declare-datatypes ((array!98449 0))(
  ( (array!98450 (arr!47508 (Array (_ BitVec 32) (_ BitVec 64))) (size!48059 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98449)

(declare-fun array_inv!36453 (array!98449) Bool)

(assert (=> start!125084 (array_inv!36453 a!2862)))

(declare-fun b!1454945 () Bool)

(declare-fun res!985805 () Bool)

(assert (=> b!1454945 (=> (not res!985805) (not e!818778))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1454945 (= res!985805 (validKeyInArray!0 (select (arr!47508 a!2862) j!93)))))

(declare-fun lt!637742 () array!98449)

(declare-fun b!1454946 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!637747 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11783 0))(
  ( (MissingZero!11783 (index!49523 (_ BitVec 32))) (Found!11783 (index!49524 (_ BitVec 32))) (Intermediate!11783 (undefined!12595 Bool) (index!49525 (_ BitVec 32)) (x!131155 (_ BitVec 32))) (Undefined!11783) (MissingVacant!11783 (index!49526 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98449 (_ BitVec 32)) SeekEntryResult!11783)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98449 (_ BitVec 32)) SeekEntryResult!11783)

(assert (=> b!1454946 (= e!818774 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637747 lt!637742 mask!2687) (seekEntryOrOpen!0 lt!637747 lt!637742 mask!2687)))))

(declare-fun b!1454947 () Bool)

(declare-fun res!985793 () Bool)

(assert (=> b!1454947 (=> (not res!985793) (not e!818781))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1454947 (= res!985793 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1454948 () Bool)

(declare-fun res!985801 () Bool)

(assert (=> b!1454948 (=> (not res!985801) (not e!818778))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1454948 (= res!985801 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48059 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48059 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48059 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1454949 () Bool)

(declare-fun e!818779 () Bool)

(declare-fun e!818780 () Bool)

(assert (=> b!1454949 (= e!818779 e!818780)))

(declare-fun res!985806 () Bool)

(assert (=> b!1454949 (=> (not res!985806) (not e!818780))))

(declare-fun lt!637740 () SeekEntryResult!11783)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98449 (_ BitVec 32)) SeekEntryResult!11783)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454949 (= res!985806 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47508 a!2862) j!93) mask!2687) (select (arr!47508 a!2862) j!93) a!2862 mask!2687) lt!637740))))

(assert (=> b!1454949 (= lt!637740 (Intermediate!11783 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1454950 () Bool)

(declare-fun res!985809 () Bool)

(declare-fun e!818775 () Bool)

(assert (=> b!1454950 (=> res!985809 e!818775)))

(declare-fun lt!637741 () (_ BitVec 32))

(assert (=> b!1454950 (= res!985809 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637741 (select (arr!47508 a!2862) j!93) a!2862 mask!2687) lt!637740)))))

(declare-fun b!1454951 () Bool)

(declare-fun res!985803 () Bool)

(assert (=> b!1454951 (=> (not res!985803) (not e!818778))))

(assert (=> b!1454951 (= res!985803 (validKeyInArray!0 (select (arr!47508 a!2862) i!1006)))))

(declare-fun b!1454952 () Bool)

(assert (=> b!1454952 (= e!818775 true)))

(declare-fun lt!637745 () Bool)

(declare-fun e!818783 () Bool)

(assert (=> b!1454952 (= lt!637745 e!818783)))

(declare-fun c!134089 () Bool)

(assert (=> b!1454952 (= c!134089 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1454953 () Bool)

(declare-fun res!985802 () Bool)

(declare-fun e!818777 () Bool)

(assert (=> b!1454953 (=> (not res!985802) (not e!818777))))

(assert (=> b!1454953 (= res!985802 (= (seekEntryOrOpen!0 (select (arr!47508 a!2862) j!93) a!2862 mask!2687) (Found!11783 j!93)))))

(declare-fun b!1454954 () Bool)

(declare-fun res!985798 () Bool)

(assert (=> b!1454954 (=> (not res!985798) (not e!818778))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98449 (_ BitVec 32)) Bool)

(assert (=> b!1454954 (= res!985798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1454955 () Bool)

(declare-fun e!818776 () Bool)

(assert (=> b!1454955 (= e!818781 (not e!818776))))

(declare-fun res!985799 () Bool)

(assert (=> b!1454955 (=> res!985799 e!818776)))

(assert (=> b!1454955 (= res!985799 (or (and (= (select (arr!47508 a!2862) index!646) (select (store (arr!47508 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47508 a!2862) index!646) (select (arr!47508 a!2862) j!93))) (= (select (arr!47508 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1454955 e!818777))

(declare-fun res!985796 () Bool)

(assert (=> b!1454955 (=> (not res!985796) (not e!818777))))

(assert (=> b!1454955 (= res!985796 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49010 0))(
  ( (Unit!49011) )
))
(declare-fun lt!637746 () Unit!49010)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98449 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49010)

(assert (=> b!1454955 (= lt!637746 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1454956 () Bool)

(declare-fun res!985795 () Bool)

(assert (=> b!1454956 (=> (not res!985795) (not e!818780))))

(assert (=> b!1454956 (= res!985795 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47508 a!2862) j!93) a!2862 mask!2687) lt!637740))))

(declare-fun b!1454957 () Bool)

(assert (=> b!1454957 (= e!818776 e!818775)))

(declare-fun res!985797 () Bool)

(assert (=> b!1454957 (=> res!985797 e!818775)))

(assert (=> b!1454957 (= res!985797 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637741 #b00000000000000000000000000000000) (bvsge lt!637741 (size!48059 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454957 (= lt!637741 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!637744 () SeekEntryResult!11783)

(assert (=> b!1454957 (= lt!637744 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637747 lt!637742 mask!2687))))

(assert (=> b!1454957 (= lt!637744 (seekEntryOrOpen!0 lt!637747 lt!637742 mask!2687))))

(declare-fun b!1454958 () Bool)

(assert (=> b!1454958 (= e!818778 e!818779)))

(declare-fun res!985808 () Bool)

(assert (=> b!1454958 (=> (not res!985808) (not e!818779))))

(assert (=> b!1454958 (= res!985808 (= (select (store (arr!47508 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1454958 (= lt!637742 (array!98450 (store (arr!47508 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48059 a!2862)))))

(declare-fun b!1454959 () Bool)

(declare-fun res!985800 () Bool)

(assert (=> b!1454959 (=> (not res!985800) (not e!818778))))

(assert (=> b!1454959 (= res!985800 (and (= (size!48059 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48059 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48059 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1454960 () Bool)

(declare-fun lt!637743 () SeekEntryResult!11783)

(assert (=> b!1454960 (= e!818774 (= lt!637743 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637747 lt!637742 mask!2687)))))

(declare-fun b!1454961 () Bool)

(assert (=> b!1454961 (= e!818783 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637741 intermediateAfterIndex!19 lt!637747 lt!637742 mask!2687) lt!637744)))))

(declare-fun b!1454962 () Bool)

(assert (=> b!1454962 (= e!818783 (not (= lt!637743 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637741 lt!637747 lt!637742 mask!2687))))))

(declare-fun b!1454963 () Bool)

(declare-fun res!985804 () Bool)

(assert (=> b!1454963 (=> (not res!985804) (not e!818778))))

(declare-datatypes ((List!34189 0))(
  ( (Nil!34186) (Cons!34185 (h!35535 (_ BitVec 64)) (t!48890 List!34189)) )
))
(declare-fun arrayNoDuplicates!0 (array!98449 (_ BitVec 32) List!34189) Bool)

(assert (=> b!1454963 (= res!985804 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34186))))

(declare-fun b!1454964 () Bool)

(assert (=> b!1454964 (= e!818777 (and (or (= (select (arr!47508 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47508 a!2862) intermediateBeforeIndex!19) (select (arr!47508 a!2862) j!93))) (let ((bdg!53113 (select (store (arr!47508 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47508 a!2862) index!646) bdg!53113) (= (select (arr!47508 a!2862) index!646) (select (arr!47508 a!2862) j!93))) (= (select (arr!47508 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53113 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1454965 () Bool)

(assert (=> b!1454965 (= e!818780 e!818781)))

(declare-fun res!985794 () Bool)

(assert (=> b!1454965 (=> (not res!985794) (not e!818781))))

(assert (=> b!1454965 (= res!985794 (= lt!637743 (Intermediate!11783 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1454965 (= lt!637743 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637747 mask!2687) lt!637747 lt!637742 mask!2687))))

(assert (=> b!1454965 (= lt!637747 (select (store (arr!47508 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!125084 res!985792) b!1454959))

(assert (= (and b!1454959 res!985800) b!1454951))

(assert (= (and b!1454951 res!985803) b!1454945))

(assert (= (and b!1454945 res!985805) b!1454954))

(assert (= (and b!1454954 res!985798) b!1454963))

(assert (= (and b!1454963 res!985804) b!1454948))

(assert (= (and b!1454948 res!985801) b!1454958))

(assert (= (and b!1454958 res!985808) b!1454949))

(assert (= (and b!1454949 res!985806) b!1454956))

(assert (= (and b!1454956 res!985795) b!1454965))

(assert (= (and b!1454965 res!985794) b!1454944))

(assert (= (and b!1454944 c!134090) b!1454960))

(assert (= (and b!1454944 (not c!134090)) b!1454946))

(assert (= (and b!1454944 res!985807) b!1454947))

(assert (= (and b!1454947 res!985793) b!1454955))

(assert (= (and b!1454955 res!985796) b!1454953))

(assert (= (and b!1454953 res!985802) b!1454964))

(assert (= (and b!1454955 (not res!985799)) b!1454957))

(assert (= (and b!1454957 (not res!985797)) b!1454950))

(assert (= (and b!1454950 (not res!985809)) b!1454952))

(assert (= (and b!1454952 c!134089) b!1454962))

(assert (= (and b!1454952 (not c!134089)) b!1454961))

(declare-fun m!1343273 () Bool)

(assert (=> b!1454965 m!1343273))

(assert (=> b!1454965 m!1343273))

(declare-fun m!1343275 () Bool)

(assert (=> b!1454965 m!1343275))

(declare-fun m!1343277 () Bool)

(assert (=> b!1454965 m!1343277))

(declare-fun m!1343279 () Bool)

(assert (=> b!1454965 m!1343279))

(declare-fun m!1343281 () Bool)

(assert (=> b!1454957 m!1343281))

(declare-fun m!1343283 () Bool)

(assert (=> b!1454957 m!1343283))

(declare-fun m!1343285 () Bool)

(assert (=> b!1454957 m!1343285))

(assert (=> b!1454958 m!1343277))

(declare-fun m!1343287 () Bool)

(assert (=> b!1454958 m!1343287))

(declare-fun m!1343289 () Bool)

(assert (=> b!1454962 m!1343289))

(declare-fun m!1343291 () Bool)

(assert (=> b!1454956 m!1343291))

(assert (=> b!1454956 m!1343291))

(declare-fun m!1343293 () Bool)

(assert (=> b!1454956 m!1343293))

(assert (=> b!1454949 m!1343291))

(assert (=> b!1454949 m!1343291))

(declare-fun m!1343295 () Bool)

(assert (=> b!1454949 m!1343295))

(assert (=> b!1454949 m!1343295))

(assert (=> b!1454949 m!1343291))

(declare-fun m!1343297 () Bool)

(assert (=> b!1454949 m!1343297))

(assert (=> b!1454945 m!1343291))

(assert (=> b!1454945 m!1343291))

(declare-fun m!1343299 () Bool)

(assert (=> b!1454945 m!1343299))

(assert (=> b!1454950 m!1343291))

(assert (=> b!1454950 m!1343291))

(declare-fun m!1343301 () Bool)

(assert (=> b!1454950 m!1343301))

(declare-fun m!1343303 () Bool)

(assert (=> b!1454954 m!1343303))

(assert (=> b!1454946 m!1343283))

(assert (=> b!1454946 m!1343285))

(declare-fun m!1343305 () Bool)

(assert (=> b!1454951 m!1343305))

(assert (=> b!1454951 m!1343305))

(declare-fun m!1343307 () Bool)

(assert (=> b!1454951 m!1343307))

(declare-fun m!1343309 () Bool)

(assert (=> b!1454960 m!1343309))

(assert (=> b!1454953 m!1343291))

(assert (=> b!1454953 m!1343291))

(declare-fun m!1343311 () Bool)

(assert (=> b!1454953 m!1343311))

(declare-fun m!1343313 () Bool)

(assert (=> b!1454963 m!1343313))

(declare-fun m!1343315 () Bool)

(assert (=> b!1454955 m!1343315))

(assert (=> b!1454955 m!1343277))

(declare-fun m!1343317 () Bool)

(assert (=> b!1454955 m!1343317))

(declare-fun m!1343319 () Bool)

(assert (=> b!1454955 m!1343319))

(declare-fun m!1343321 () Bool)

(assert (=> b!1454955 m!1343321))

(assert (=> b!1454955 m!1343291))

(declare-fun m!1343323 () Bool)

(assert (=> b!1454961 m!1343323))

(assert (=> b!1454964 m!1343277))

(declare-fun m!1343325 () Bool)

(assert (=> b!1454964 m!1343325))

(assert (=> b!1454964 m!1343317))

(assert (=> b!1454964 m!1343319))

(assert (=> b!1454964 m!1343291))

(declare-fun m!1343327 () Bool)

(assert (=> start!125084 m!1343327))

(declare-fun m!1343329 () Bool)

(assert (=> start!125084 m!1343329))

(push 1)

