; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126930 () Bool)

(assert start!126930)

(declare-fun b!1490702 () Bool)

(declare-fun e!835318 () Bool)

(declare-fun e!835323 () Bool)

(assert (=> b!1490702 (= e!835318 (not e!835323))))

(declare-fun res!1014056 () Bool)

(assert (=> b!1490702 (=> res!1014056 e!835323)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99620 0))(
  ( (array!99621 (arr!48077 (Array (_ BitVec 32) (_ BitVec 64))) (size!48628 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99620)

(assert (=> b!1490702 (= res!1014056 (or (and (= (select (arr!48077 a!2862) index!646) (select (store (arr!48077 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48077 a!2862) index!646) (select (arr!48077 a!2862) j!93))) (= (select (arr!48077 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!835319 () Bool)

(assert (=> b!1490702 e!835319))

(declare-fun res!1014060 () Bool)

(assert (=> b!1490702 (=> (not res!1014060) (not e!835319))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99620 (_ BitVec 32)) Bool)

(assert (=> b!1490702 (= res!1014060 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49968 0))(
  ( (Unit!49969) )
))
(declare-fun lt!649997 () Unit!49968)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99620 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49968)

(assert (=> b!1490702 (= lt!649997 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1490703 () Bool)

(declare-fun res!1014054 () Bool)

(declare-fun e!835321 () Bool)

(assert (=> b!1490703 (=> (not res!1014054) (not e!835321))))

(declare-datatypes ((List!34758 0))(
  ( (Nil!34755) (Cons!34754 (h!36137 (_ BitVec 64)) (t!49459 List!34758)) )
))
(declare-fun arrayNoDuplicates!0 (array!99620 (_ BitVec 32) List!34758) Bool)

(assert (=> b!1490703 (= res!1014054 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34755))))

(declare-fun b!1490704 () Bool)

(declare-fun e!835320 () Bool)

(assert (=> b!1490704 (= e!835320 e!835318)))

(declare-fun res!1014064 () Bool)

(assert (=> b!1490704 (=> (not res!1014064) (not e!835318))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12340 0))(
  ( (MissingZero!12340 (index!51751 (_ BitVec 32))) (Found!12340 (index!51752 (_ BitVec 32))) (Intermediate!12340 (undefined!13152 Bool) (index!51753 (_ BitVec 32)) (x!133343 (_ BitVec 32))) (Undefined!12340) (MissingVacant!12340 (index!51754 (_ BitVec 32))) )
))
(declare-fun lt!650000 () SeekEntryResult!12340)

(assert (=> b!1490704 (= res!1014064 (= lt!650000 (Intermediate!12340 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!650001 () array!99620)

(declare-fun lt!649998 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99620 (_ BitVec 32)) SeekEntryResult!12340)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490704 (= lt!650000 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649998 mask!2687) lt!649998 lt!650001 mask!2687))))

(assert (=> b!1490704 (= lt!649998 (select (store (arr!48077 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1490705 () Bool)

(declare-fun res!1014057 () Bool)

(assert (=> b!1490705 (=> (not res!1014057) (not e!835320))))

(declare-fun lt!650002 () SeekEntryResult!12340)

(assert (=> b!1490705 (= res!1014057 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48077 a!2862) j!93) a!2862 mask!2687) lt!650002))))

(declare-fun b!1490706 () Bool)

(declare-fun res!1014063 () Bool)

(assert (=> b!1490706 (=> (not res!1014063) (not e!835321))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1490706 (= res!1014063 (validKeyInArray!0 (select (arr!48077 a!2862) j!93)))))

(declare-fun b!1490707 () Bool)

(declare-fun res!1014062 () Bool)

(assert (=> b!1490707 (=> (not res!1014062) (not e!835321))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1490707 (= res!1014062 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48628 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48628 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48628 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1490708 () Bool)

(assert (=> b!1490708 (= e!835323 true)))

(declare-fun lt!649999 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490708 (= lt!649999 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun e!835324 () Bool)

(declare-fun b!1490709 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99620 (_ BitVec 32)) SeekEntryResult!12340)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99620 (_ BitVec 32)) SeekEntryResult!12340)

(assert (=> b!1490709 (= e!835324 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649998 lt!650001 mask!2687) (seekEntryOrOpen!0 lt!649998 lt!650001 mask!2687)))))

(declare-fun b!1490710 () Bool)

(assert (=> b!1490710 (= e!835324 (= lt!650000 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649998 lt!650001 mask!2687)))))

(declare-fun b!1490711 () Bool)

(declare-fun res!1014059 () Bool)

(assert (=> b!1490711 (=> (not res!1014059) (not e!835321))))

(assert (=> b!1490711 (= res!1014059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1490712 () Bool)

(declare-fun res!1014058 () Bool)

(assert (=> b!1490712 (=> (not res!1014058) (not e!835319))))

(assert (=> b!1490712 (= res!1014058 (= (seekEntryOrOpen!0 (select (arr!48077 a!2862) j!93) a!2862 mask!2687) (Found!12340 j!93)))))

(declare-fun b!1490713 () Bool)

(declare-fun res!1014066 () Bool)

(assert (=> b!1490713 (=> (not res!1014066) (not e!835318))))

(assert (=> b!1490713 (= res!1014066 e!835324)))

(declare-fun c!137855 () Bool)

(assert (=> b!1490713 (= c!137855 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1490714 () Bool)

(declare-fun e!835325 () Bool)

(assert (=> b!1490714 (= e!835325 e!835320)))

(declare-fun res!1014055 () Bool)

(assert (=> b!1490714 (=> (not res!1014055) (not e!835320))))

(assert (=> b!1490714 (= res!1014055 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48077 a!2862) j!93) mask!2687) (select (arr!48077 a!2862) j!93) a!2862 mask!2687) lt!650002))))

(assert (=> b!1490714 (= lt!650002 (Intermediate!12340 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1490715 () Bool)

(assert (=> b!1490715 (= e!835319 (or (= (select (arr!48077 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48077 a!2862) intermediateBeforeIndex!19) (select (arr!48077 a!2862) j!93))))))

(declare-fun res!1014061 () Bool)

(assert (=> start!126930 (=> (not res!1014061) (not e!835321))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126930 (= res!1014061 (validMask!0 mask!2687))))

(assert (=> start!126930 e!835321))

(assert (=> start!126930 true))

(declare-fun array_inv!37022 (array!99620) Bool)

(assert (=> start!126930 (array_inv!37022 a!2862)))

(declare-fun b!1490716 () Bool)

(assert (=> b!1490716 (= e!835321 e!835325)))

(declare-fun res!1014053 () Bool)

(assert (=> b!1490716 (=> (not res!1014053) (not e!835325))))

(assert (=> b!1490716 (= res!1014053 (= (select (store (arr!48077 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1490716 (= lt!650001 (array!99621 (store (arr!48077 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48628 a!2862)))))

(declare-fun b!1490717 () Bool)

(declare-fun res!1014065 () Bool)

(assert (=> b!1490717 (=> (not res!1014065) (not e!835321))))

(assert (=> b!1490717 (= res!1014065 (validKeyInArray!0 (select (arr!48077 a!2862) i!1006)))))

(declare-fun b!1490718 () Bool)

(declare-fun res!1014051 () Bool)

(assert (=> b!1490718 (=> (not res!1014051) (not e!835321))))

(assert (=> b!1490718 (= res!1014051 (and (= (size!48628 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48628 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48628 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1490719 () Bool)

(declare-fun res!1014052 () Bool)

(assert (=> b!1490719 (=> (not res!1014052) (not e!835318))))

(assert (=> b!1490719 (= res!1014052 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!126930 res!1014061) b!1490718))

(assert (= (and b!1490718 res!1014051) b!1490717))

(assert (= (and b!1490717 res!1014065) b!1490706))

(assert (= (and b!1490706 res!1014063) b!1490711))

(assert (= (and b!1490711 res!1014059) b!1490703))

(assert (= (and b!1490703 res!1014054) b!1490707))

(assert (= (and b!1490707 res!1014062) b!1490716))

(assert (= (and b!1490716 res!1014053) b!1490714))

(assert (= (and b!1490714 res!1014055) b!1490705))

(assert (= (and b!1490705 res!1014057) b!1490704))

(assert (= (and b!1490704 res!1014064) b!1490713))

(assert (= (and b!1490713 c!137855) b!1490710))

(assert (= (and b!1490713 (not c!137855)) b!1490709))

(assert (= (and b!1490713 res!1014066) b!1490719))

(assert (= (and b!1490719 res!1014052) b!1490702))

(assert (= (and b!1490702 res!1014060) b!1490712))

(assert (= (and b!1490712 res!1014058) b!1490715))

(assert (= (and b!1490702 (not res!1014056)) b!1490708))

(declare-fun m!1374907 () Bool)

(assert (=> b!1490704 m!1374907))

(assert (=> b!1490704 m!1374907))

(declare-fun m!1374909 () Bool)

(assert (=> b!1490704 m!1374909))

(declare-fun m!1374911 () Bool)

(assert (=> b!1490704 m!1374911))

(declare-fun m!1374913 () Bool)

(assert (=> b!1490704 m!1374913))

(declare-fun m!1374915 () Bool)

(assert (=> b!1490708 m!1374915))

(declare-fun m!1374917 () Bool)

(assert (=> b!1490717 m!1374917))

(assert (=> b!1490717 m!1374917))

(declare-fun m!1374919 () Bool)

(assert (=> b!1490717 m!1374919))

(declare-fun m!1374921 () Bool)

(assert (=> b!1490705 m!1374921))

(assert (=> b!1490705 m!1374921))

(declare-fun m!1374923 () Bool)

(assert (=> b!1490705 m!1374923))

(declare-fun m!1374925 () Bool)

(assert (=> b!1490709 m!1374925))

(declare-fun m!1374927 () Bool)

(assert (=> b!1490709 m!1374927))

(declare-fun m!1374929 () Bool)

(assert (=> b!1490702 m!1374929))

(assert (=> b!1490702 m!1374911))

(declare-fun m!1374931 () Bool)

(assert (=> b!1490702 m!1374931))

(declare-fun m!1374933 () Bool)

(assert (=> b!1490702 m!1374933))

(declare-fun m!1374935 () Bool)

(assert (=> b!1490702 m!1374935))

(assert (=> b!1490702 m!1374921))

(assert (=> b!1490706 m!1374921))

(assert (=> b!1490706 m!1374921))

(declare-fun m!1374937 () Bool)

(assert (=> b!1490706 m!1374937))

(declare-fun m!1374939 () Bool)

(assert (=> b!1490711 m!1374939))

(declare-fun m!1374941 () Bool)

(assert (=> b!1490715 m!1374941))

(assert (=> b!1490715 m!1374921))

(assert (=> b!1490714 m!1374921))

(assert (=> b!1490714 m!1374921))

(declare-fun m!1374943 () Bool)

(assert (=> b!1490714 m!1374943))

(assert (=> b!1490714 m!1374943))

(assert (=> b!1490714 m!1374921))

(declare-fun m!1374945 () Bool)

(assert (=> b!1490714 m!1374945))

(declare-fun m!1374947 () Bool)

(assert (=> start!126930 m!1374947))

(declare-fun m!1374949 () Bool)

(assert (=> start!126930 m!1374949))

(assert (=> b!1490712 m!1374921))

(assert (=> b!1490712 m!1374921))

(declare-fun m!1374951 () Bool)

(assert (=> b!1490712 m!1374951))

(declare-fun m!1374953 () Bool)

(assert (=> b!1490703 m!1374953))

(declare-fun m!1374955 () Bool)

(assert (=> b!1490710 m!1374955))

(assert (=> b!1490716 m!1374911))

(declare-fun m!1374957 () Bool)

(assert (=> b!1490716 m!1374957))

(check-sat (not b!1490711) (not b!1490704) (not b!1490708) (not b!1490710) (not b!1490717) (not b!1490702) (not b!1490703) (not b!1490706) (not b!1490705) (not b!1490709) (not b!1490714) (not start!126930) (not b!1490712))
