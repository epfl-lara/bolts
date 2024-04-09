; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126970 () Bool)

(assert start!126970)

(declare-fun b!1491782 () Bool)

(declare-fun res!1015014 () Bool)

(declare-fun e!835799 () Bool)

(assert (=> b!1491782 (=> (not res!1015014) (not e!835799))))

(declare-datatypes ((array!99660 0))(
  ( (array!99661 (arr!48097 (Array (_ BitVec 32) (_ BitVec 64))) (size!48648 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99660)

(declare-datatypes ((List!34778 0))(
  ( (Nil!34775) (Cons!34774 (h!36157 (_ BitVec 64)) (t!49479 List!34778)) )
))
(declare-fun arrayNoDuplicates!0 (array!99660 (_ BitVec 32) List!34778) Bool)

(assert (=> b!1491782 (= res!1015014 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34775))))

(declare-fun lt!650359 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!650362 () array!99660)

(declare-datatypes ((SeekEntryResult!12360 0))(
  ( (MissingZero!12360 (index!51831 (_ BitVec 32))) (Found!12360 (index!51832 (_ BitVec 32))) (Intermediate!12360 (undefined!13172 Bool) (index!51833 (_ BitVec 32)) (x!133419 (_ BitVec 32))) (Undefined!12360) (MissingVacant!12360 (index!51834 (_ BitVec 32))) )
))
(declare-fun lt!650357 () SeekEntryResult!12360)

(declare-fun b!1491783 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!835804 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99660 (_ BitVec 32)) SeekEntryResult!12360)

(assert (=> b!1491783 (= e!835804 (= lt!650357 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650359 lt!650362 mask!2687)))))

(declare-fun b!1491784 () Bool)

(declare-fun res!1015025 () Bool)

(assert (=> b!1491784 (=> (not res!1015025) (not e!835799))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1491784 (= res!1015025 (and (= (size!48648 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48648 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48648 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1491785 () Bool)

(declare-fun res!1015011 () Bool)

(declare-fun e!835802 () Bool)

(assert (=> b!1491785 (=> (not res!1015011) (not e!835802))))

(assert (=> b!1491785 (= res!1015011 e!835804)))

(declare-fun c!137915 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1491785 (= c!137915 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1491786 () Bool)

(declare-fun res!1015015 () Bool)

(declare-fun e!835798 () Bool)

(assert (=> b!1491786 (=> (not res!1015015) (not e!835798))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99660 (_ BitVec 32)) SeekEntryResult!12360)

(assert (=> b!1491786 (= res!1015015 (= (seekEntryOrOpen!0 (select (arr!48097 a!2862) j!93) a!2862 mask!2687) (Found!12360 j!93)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1491787 () Bool)

(assert (=> b!1491787 (= e!835798 (or (= (select (arr!48097 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48097 a!2862) intermediateBeforeIndex!19) (select (arr!48097 a!2862) j!93))))))

(declare-fun res!1015021 () Bool)

(assert (=> start!126970 (=> (not res!1015021) (not e!835799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126970 (= res!1015021 (validMask!0 mask!2687))))

(assert (=> start!126970 e!835799))

(assert (=> start!126970 true))

(declare-fun array_inv!37042 (array!99660) Bool)

(assert (=> start!126970 (array_inv!37042 a!2862)))

(declare-fun b!1491788 () Bool)

(declare-fun res!1015024 () Bool)

(assert (=> b!1491788 (=> (not res!1015024) (not e!835799))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1491788 (= res!1015024 (validKeyInArray!0 (select (arr!48097 a!2862) i!1006)))))

(declare-fun b!1491789 () Bool)

(declare-fun res!1015022 () Bool)

(assert (=> b!1491789 (=> (not res!1015022) (not e!835799))))

(assert (=> b!1491789 (= res!1015022 (validKeyInArray!0 (select (arr!48097 a!2862) j!93)))))

(declare-fun b!1491790 () Bool)

(declare-fun res!1015013 () Bool)

(assert (=> b!1491790 (=> (not res!1015013) (not e!835802))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1491790 (= res!1015013 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1491791 () Bool)

(declare-fun res!1015017 () Bool)

(assert (=> b!1491791 (=> (not res!1015017) (not e!835799))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99660 (_ BitVec 32)) Bool)

(assert (=> b!1491791 (= res!1015017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1491792 () Bool)

(declare-fun res!1015012 () Bool)

(declare-fun e!835800 () Bool)

(assert (=> b!1491792 (=> (not res!1015012) (not e!835800))))

(declare-fun lt!650361 () SeekEntryResult!12360)

(assert (=> b!1491792 (= res!1015012 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48097 a!2862) j!93) a!2862 mask!2687) lt!650361))))

(declare-fun b!1491793 () Bool)

(declare-fun e!835805 () Bool)

(assert (=> b!1491793 (= e!835802 (not e!835805))))

(declare-fun res!1015026 () Bool)

(assert (=> b!1491793 (=> res!1015026 e!835805)))

(assert (=> b!1491793 (= res!1015026 (or (and (= (select (arr!48097 a!2862) index!646) (select (store (arr!48097 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48097 a!2862) index!646) (select (arr!48097 a!2862) j!93))) (= (select (arr!48097 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1491793 e!835798))

(declare-fun res!1015020 () Bool)

(assert (=> b!1491793 (=> (not res!1015020) (not e!835798))))

(assert (=> b!1491793 (= res!1015020 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50008 0))(
  ( (Unit!50009) )
))
(declare-fun lt!650358 () Unit!50008)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99660 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50008)

(assert (=> b!1491793 (= lt!650358 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1491794 () Bool)

(declare-fun e!835803 () Bool)

(assert (=> b!1491794 (= e!835799 e!835803)))

(declare-fun res!1015016 () Bool)

(assert (=> b!1491794 (=> (not res!1015016) (not e!835803))))

(assert (=> b!1491794 (= res!1015016 (= (select (store (arr!48097 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1491794 (= lt!650362 (array!99661 (store (arr!48097 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48648 a!2862)))))

(declare-fun b!1491795 () Bool)

(declare-fun res!1015019 () Bool)

(assert (=> b!1491795 (=> (not res!1015019) (not e!835799))))

(assert (=> b!1491795 (= res!1015019 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48648 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48648 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48648 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1491796 () Bool)

(assert (=> b!1491796 (= e!835803 e!835800)))

(declare-fun res!1015018 () Bool)

(assert (=> b!1491796 (=> (not res!1015018) (not e!835800))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491796 (= res!1015018 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48097 a!2862) j!93) mask!2687) (select (arr!48097 a!2862) j!93) a!2862 mask!2687) lt!650361))))

(assert (=> b!1491796 (= lt!650361 (Intermediate!12360 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1491797 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99660 (_ BitVec 32)) SeekEntryResult!12360)

(assert (=> b!1491797 (= e!835804 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650359 lt!650362 mask!2687) (seekEntryOrOpen!0 lt!650359 lt!650362 mask!2687)))))

(declare-fun b!1491798 () Bool)

(assert (=> b!1491798 (= e!835800 e!835802)))

(declare-fun res!1015023 () Bool)

(assert (=> b!1491798 (=> (not res!1015023) (not e!835802))))

(assert (=> b!1491798 (= res!1015023 (= lt!650357 (Intermediate!12360 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1491798 (= lt!650357 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650359 mask!2687) lt!650359 lt!650362 mask!2687))))

(assert (=> b!1491798 (= lt!650359 (select (store (arr!48097 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1491799 () Bool)

(assert (=> b!1491799 (= e!835805 true)))

(declare-fun lt!650360 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491799 (= lt!650360 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (= (and start!126970 res!1015021) b!1491784))

(assert (= (and b!1491784 res!1015025) b!1491788))

(assert (= (and b!1491788 res!1015024) b!1491789))

(assert (= (and b!1491789 res!1015022) b!1491791))

(assert (= (and b!1491791 res!1015017) b!1491782))

(assert (= (and b!1491782 res!1015014) b!1491795))

(assert (= (and b!1491795 res!1015019) b!1491794))

(assert (= (and b!1491794 res!1015016) b!1491796))

(assert (= (and b!1491796 res!1015018) b!1491792))

(assert (= (and b!1491792 res!1015012) b!1491798))

(assert (= (and b!1491798 res!1015023) b!1491785))

(assert (= (and b!1491785 c!137915) b!1491783))

(assert (= (and b!1491785 (not c!137915)) b!1491797))

(assert (= (and b!1491785 res!1015011) b!1491790))

(assert (= (and b!1491790 res!1015013) b!1491793))

(assert (= (and b!1491793 res!1015020) b!1491786))

(assert (= (and b!1491786 res!1015015) b!1491787))

(assert (= (and b!1491793 (not res!1015026)) b!1491799))

(declare-fun m!1375947 () Bool)

(assert (=> b!1491797 m!1375947))

(declare-fun m!1375949 () Bool)

(assert (=> b!1491797 m!1375949))

(declare-fun m!1375951 () Bool)

(assert (=> b!1491798 m!1375951))

(assert (=> b!1491798 m!1375951))

(declare-fun m!1375953 () Bool)

(assert (=> b!1491798 m!1375953))

(declare-fun m!1375955 () Bool)

(assert (=> b!1491798 m!1375955))

(declare-fun m!1375957 () Bool)

(assert (=> b!1491798 m!1375957))

(declare-fun m!1375959 () Bool)

(assert (=> b!1491796 m!1375959))

(assert (=> b!1491796 m!1375959))

(declare-fun m!1375961 () Bool)

(assert (=> b!1491796 m!1375961))

(assert (=> b!1491796 m!1375961))

(assert (=> b!1491796 m!1375959))

(declare-fun m!1375963 () Bool)

(assert (=> b!1491796 m!1375963))

(declare-fun m!1375965 () Bool)

(assert (=> b!1491788 m!1375965))

(assert (=> b!1491788 m!1375965))

(declare-fun m!1375967 () Bool)

(assert (=> b!1491788 m!1375967))

(declare-fun m!1375969 () Bool)

(assert (=> b!1491793 m!1375969))

(assert (=> b!1491793 m!1375955))

(declare-fun m!1375971 () Bool)

(assert (=> b!1491793 m!1375971))

(declare-fun m!1375973 () Bool)

(assert (=> b!1491793 m!1375973))

(declare-fun m!1375975 () Bool)

(assert (=> b!1491793 m!1375975))

(assert (=> b!1491793 m!1375959))

(declare-fun m!1375977 () Bool)

(assert (=> b!1491791 m!1375977))

(assert (=> b!1491794 m!1375955))

(declare-fun m!1375979 () Bool)

(assert (=> b!1491794 m!1375979))

(declare-fun m!1375981 () Bool)

(assert (=> start!126970 m!1375981))

(declare-fun m!1375983 () Bool)

(assert (=> start!126970 m!1375983))

(assert (=> b!1491786 m!1375959))

(assert (=> b!1491786 m!1375959))

(declare-fun m!1375985 () Bool)

(assert (=> b!1491786 m!1375985))

(assert (=> b!1491789 m!1375959))

(assert (=> b!1491789 m!1375959))

(declare-fun m!1375987 () Bool)

(assert (=> b!1491789 m!1375987))

(assert (=> b!1491792 m!1375959))

(assert (=> b!1491792 m!1375959))

(declare-fun m!1375989 () Bool)

(assert (=> b!1491792 m!1375989))

(declare-fun m!1375991 () Bool)

(assert (=> b!1491787 m!1375991))

(assert (=> b!1491787 m!1375959))

(declare-fun m!1375993 () Bool)

(assert (=> b!1491782 m!1375993))

(declare-fun m!1375995 () Bool)

(assert (=> b!1491799 m!1375995))

(declare-fun m!1375997 () Bool)

(assert (=> b!1491783 m!1375997))

(push 1)

