; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125454 () Bool)

(assert start!125454)

(declare-fun b!1466983 () Bool)

(declare-fun res!995689 () Bool)

(declare-fun e!824102 () Bool)

(assert (=> b!1466983 (=> (not res!995689) (not e!824102))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11968 0))(
  ( (MissingZero!11968 (index!50263 (_ BitVec 32))) (Found!11968 (index!50264 (_ BitVec 32))) (Intermediate!11968 (undefined!12780 Bool) (index!50265 (_ BitVec 32)) (x!131836 (_ BitVec 32))) (Undefined!11968) (MissingVacant!11968 (index!50266 (_ BitVec 32))) )
))
(declare-fun lt!641922 () SeekEntryResult!11968)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98819 0))(
  ( (array!98820 (arr!47693 (Array (_ BitVec 32) (_ BitVec 64))) (size!48244 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98819)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98819 (_ BitVec 32)) SeekEntryResult!11968)

(assert (=> b!1466983 (= res!995689 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47693 a!2862) j!93) a!2862 mask!2687) lt!641922))))

(declare-fun b!1466984 () Bool)

(declare-fun res!995696 () Bool)

(declare-fun e!824100 () Bool)

(assert (=> b!1466984 (=> res!995696 e!824100)))

(declare-fun lt!641923 () (_ BitVec 32))

(assert (=> b!1466984 (= res!995696 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641923 (select (arr!47693 a!2862) j!93) a!2862 mask!2687) lt!641922)))))

(declare-fun res!995685 () Bool)

(declare-fun e!824099 () Bool)

(assert (=> start!125454 (=> (not res!995685) (not e!824099))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125454 (= res!995685 (validMask!0 mask!2687))))

(assert (=> start!125454 e!824099))

(assert (=> start!125454 true))

(declare-fun array_inv!36638 (array!98819) Bool)

(assert (=> start!125454 (array_inv!36638 a!2862)))

(declare-fun b!1466985 () Bool)

(declare-fun e!824095 () Bool)

(declare-fun lt!641919 () (_ BitVec 64))

(declare-fun lt!641920 () array!98819)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98819 (_ BitVec 32)) SeekEntryResult!11968)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98819 (_ BitVec 32)) SeekEntryResult!11968)

(assert (=> b!1466985 (= e!824095 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641919 lt!641920 mask!2687) (seekEntryOrOpen!0 lt!641919 lt!641920 mask!2687)))))

(declare-fun b!1466986 () Bool)

(declare-fun res!995697 () Bool)

(assert (=> b!1466986 (=> res!995697 e!824100)))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1466986 (= res!995697 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1466987 () Bool)

(declare-fun res!995695 () Bool)

(assert (=> b!1466987 (=> (not res!995695) (not e!824099))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1466987 (= res!995695 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48244 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48244 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48244 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1466988 () Bool)

(declare-fun e!824098 () Bool)

(assert (=> b!1466988 (= e!824099 e!824098)))

(declare-fun res!995698 () Bool)

(assert (=> b!1466988 (=> (not res!995698) (not e!824098))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1466988 (= res!995698 (= (select (store (arr!47693 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1466988 (= lt!641920 (array!98820 (store (arr!47693 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48244 a!2862)))))

(declare-fun b!1466989 () Bool)

(declare-fun res!995686 () Bool)

(assert (=> b!1466989 (=> (not res!995686) (not e!824099))))

(declare-datatypes ((List!34374 0))(
  ( (Nil!34371) (Cons!34370 (h!35720 (_ BitVec 64)) (t!49075 List!34374)) )
))
(declare-fun arrayNoDuplicates!0 (array!98819 (_ BitVec 32) List!34374) Bool)

(assert (=> b!1466989 (= res!995686 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34371))))

(declare-fun b!1466990 () Bool)

(declare-fun res!995691 () Bool)

(assert (=> b!1466990 (=> (not res!995691) (not e!824099))))

(assert (=> b!1466990 (= res!995691 (and (= (size!48244 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48244 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48244 a!2862)) (not (= i!1006 j!93))))))

(declare-fun lt!641924 () SeekEntryResult!11968)

(declare-fun b!1466991 () Bool)

(assert (=> b!1466991 (= e!824095 (= lt!641924 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641919 lt!641920 mask!2687)))))

(declare-fun b!1466992 () Bool)

(declare-fun e!824096 () Bool)

(assert (=> b!1466992 (= e!824102 e!824096)))

(declare-fun res!995687 () Bool)

(assert (=> b!1466992 (=> (not res!995687) (not e!824096))))

(assert (=> b!1466992 (= res!995687 (= lt!641924 (Intermediate!11968 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466992 (= lt!641924 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641919 mask!2687) lt!641919 lt!641920 mask!2687))))

(assert (=> b!1466992 (= lt!641919 (select (store (arr!47693 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1466993 () Bool)

(declare-fun res!995683 () Bool)

(assert (=> b!1466993 (=> res!995683 e!824100)))

(declare-fun e!824097 () Bool)

(assert (=> b!1466993 (= res!995683 e!824097)))

(declare-fun c!135164 () Bool)

(assert (=> b!1466993 (= c!135164 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1466994 () Bool)

(declare-fun e!824094 () Bool)

(assert (=> b!1466994 (= e!824096 (not e!824094))))

(declare-fun res!995699 () Bool)

(assert (=> b!1466994 (=> res!995699 e!824094)))

(assert (=> b!1466994 (= res!995699 (or (and (= (select (arr!47693 a!2862) index!646) (select (store (arr!47693 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47693 a!2862) index!646) (select (arr!47693 a!2862) j!93))) (= (select (arr!47693 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun lt!641926 () SeekEntryResult!11968)

(assert (=> b!1466994 (and (= lt!641926 (Found!11968 j!93)) (or (= (select (arr!47693 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47693 a!2862) intermediateBeforeIndex!19) (select (arr!47693 a!2862) j!93))))))

(assert (=> b!1466994 (= lt!641926 (seekEntryOrOpen!0 (select (arr!47693 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98819 (_ BitVec 32)) Bool)

(assert (=> b!1466994 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49380 0))(
  ( (Unit!49381) )
))
(declare-fun lt!641925 () Unit!49380)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98819 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49380)

(assert (=> b!1466994 (= lt!641925 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1466995 () Bool)

(declare-fun res!995694 () Bool)

(assert (=> b!1466995 (=> (not res!995694) (not e!824096))))

(assert (=> b!1466995 (= res!995694 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1466996 () Bool)

(assert (=> b!1466996 (= e!824100 true)))

(assert (=> b!1466996 (= lt!641926 (seekEntryOrOpen!0 lt!641919 lt!641920 mask!2687))))

(declare-fun lt!641921 () Unit!49380)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98819 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49380)

(assert (=> b!1466996 (= lt!641921 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641923 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1466997 () Bool)

(assert (=> b!1466997 (= e!824094 e!824100)))

(declare-fun res!995700 () Bool)

(assert (=> b!1466997 (=> res!995700 e!824100)))

(assert (=> b!1466997 (= res!995700 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641923 #b00000000000000000000000000000000) (bvsge lt!641923 (size!48244 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466997 (= lt!641923 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1466998 () Bool)

(declare-fun res!995684 () Bool)

(assert (=> b!1466998 (=> (not res!995684) (not e!824099))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1466998 (= res!995684 (validKeyInArray!0 (select (arr!47693 a!2862) i!1006)))))

(declare-fun b!1466999 () Bool)

(assert (=> b!1466999 (= e!824097 (not (= lt!641924 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641923 lt!641919 lt!641920 mask!2687))))))

(declare-fun b!1467000 () Bool)

(declare-fun res!995688 () Bool)

(assert (=> b!1467000 (=> (not res!995688) (not e!824096))))

(assert (=> b!1467000 (= res!995688 e!824095)))

(declare-fun c!135163 () Bool)

(assert (=> b!1467000 (= c!135163 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1467001 () Bool)

(assert (=> b!1467001 (= e!824098 e!824102)))

(declare-fun res!995692 () Bool)

(assert (=> b!1467001 (=> (not res!995692) (not e!824102))))

(assert (=> b!1467001 (= res!995692 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47693 a!2862) j!93) mask!2687) (select (arr!47693 a!2862) j!93) a!2862 mask!2687) lt!641922))))

(assert (=> b!1467001 (= lt!641922 (Intermediate!11968 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1467002 () Bool)

(declare-fun res!995693 () Bool)

(assert (=> b!1467002 (=> (not res!995693) (not e!824099))))

(assert (=> b!1467002 (= res!995693 (validKeyInArray!0 (select (arr!47693 a!2862) j!93)))))

(declare-fun b!1467003 () Bool)

(assert (=> b!1467003 (= e!824097 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641923 intermediateAfterIndex!19 lt!641919 lt!641920 mask!2687) (seekEntryOrOpen!0 lt!641919 lt!641920 mask!2687))))))

(declare-fun b!1467004 () Bool)

(declare-fun res!995690 () Bool)

(assert (=> b!1467004 (=> (not res!995690) (not e!824099))))

(assert (=> b!1467004 (= res!995690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125454 res!995685) b!1466990))

(assert (= (and b!1466990 res!995691) b!1466998))

(assert (= (and b!1466998 res!995684) b!1467002))

(assert (= (and b!1467002 res!995693) b!1467004))

(assert (= (and b!1467004 res!995690) b!1466989))

(assert (= (and b!1466989 res!995686) b!1466987))

(assert (= (and b!1466987 res!995695) b!1466988))

(assert (= (and b!1466988 res!995698) b!1467001))

(assert (= (and b!1467001 res!995692) b!1466983))

(assert (= (and b!1466983 res!995689) b!1466992))

(assert (= (and b!1466992 res!995687) b!1467000))

(assert (= (and b!1467000 c!135163) b!1466991))

(assert (= (and b!1467000 (not c!135163)) b!1466985))

(assert (= (and b!1467000 res!995688) b!1466995))

(assert (= (and b!1466995 res!995694) b!1466994))

(assert (= (and b!1466994 (not res!995699)) b!1466997))

(assert (= (and b!1466997 (not res!995700)) b!1466984))

(assert (= (and b!1466984 (not res!995696)) b!1466993))

(assert (= (and b!1466993 c!135164) b!1466999))

(assert (= (and b!1466993 (not c!135164)) b!1467003))

(assert (= (and b!1466993 (not res!995683)) b!1466986))

(assert (= (and b!1466986 (not res!995697)) b!1466996))

(declare-fun m!1353975 () Bool)

(assert (=> b!1466999 m!1353975))

(declare-fun m!1353977 () Bool)

(assert (=> b!1466997 m!1353977))

(declare-fun m!1353979 () Bool)

(assert (=> b!1467001 m!1353979))

(assert (=> b!1467001 m!1353979))

(declare-fun m!1353981 () Bool)

(assert (=> b!1467001 m!1353981))

(assert (=> b!1467001 m!1353981))

(assert (=> b!1467001 m!1353979))

(declare-fun m!1353983 () Bool)

(assert (=> b!1467001 m!1353983))

(declare-fun m!1353985 () Bool)

(assert (=> b!1466992 m!1353985))

(assert (=> b!1466992 m!1353985))

(declare-fun m!1353987 () Bool)

(assert (=> b!1466992 m!1353987))

(declare-fun m!1353989 () Bool)

(assert (=> b!1466992 m!1353989))

(declare-fun m!1353991 () Bool)

(assert (=> b!1466992 m!1353991))

(declare-fun m!1353993 () Bool)

(assert (=> b!1467004 m!1353993))

(declare-fun m!1353995 () Bool)

(assert (=> b!1466991 m!1353995))

(assert (=> b!1466988 m!1353989))

(declare-fun m!1353997 () Bool)

(assert (=> b!1466988 m!1353997))

(declare-fun m!1353999 () Bool)

(assert (=> b!1466998 m!1353999))

(assert (=> b!1466998 m!1353999))

(declare-fun m!1354001 () Bool)

(assert (=> b!1466998 m!1354001))

(declare-fun m!1354003 () Bool)

(assert (=> b!1466989 m!1354003))

(declare-fun m!1354005 () Bool)

(assert (=> start!125454 m!1354005))

(declare-fun m!1354007 () Bool)

(assert (=> start!125454 m!1354007))

(assert (=> b!1466983 m!1353979))

(assert (=> b!1466983 m!1353979))

(declare-fun m!1354009 () Bool)

(assert (=> b!1466983 m!1354009))

(declare-fun m!1354011 () Bool)

(assert (=> b!1467003 m!1354011))

(declare-fun m!1354013 () Bool)

(assert (=> b!1467003 m!1354013))

(assert (=> b!1466996 m!1354013))

(declare-fun m!1354015 () Bool)

(assert (=> b!1466996 m!1354015))

(declare-fun m!1354017 () Bool)

(assert (=> b!1466985 m!1354017))

(assert (=> b!1466985 m!1354013))

(declare-fun m!1354019 () Bool)

(assert (=> b!1466994 m!1354019))

(assert (=> b!1466994 m!1353989))

(declare-fun m!1354021 () Bool)

(assert (=> b!1466994 m!1354021))

(declare-fun m!1354023 () Bool)

(assert (=> b!1466994 m!1354023))

(declare-fun m!1354025 () Bool)

(assert (=> b!1466994 m!1354025))

(assert (=> b!1466994 m!1353979))

(declare-fun m!1354027 () Bool)

(assert (=> b!1466994 m!1354027))

(declare-fun m!1354029 () Bool)

(assert (=> b!1466994 m!1354029))

(assert (=> b!1466994 m!1353979))

(assert (=> b!1467002 m!1353979))

(assert (=> b!1467002 m!1353979))

(declare-fun m!1354031 () Bool)

(assert (=> b!1467002 m!1354031))

(assert (=> b!1466984 m!1353979))

(assert (=> b!1466984 m!1353979))

(declare-fun m!1354033 () Bool)

(assert (=> b!1466984 m!1354033))

(check-sat (not b!1466983) (not b!1467002) (not start!125454) (not b!1466998) (not b!1466994) (not b!1466991) (not b!1466989) (not b!1467001) (not b!1466997) (not b!1467003) (not b!1466999) (not b!1467004) (not b!1466985) (not b!1466984) (not b!1466996) (not b!1466992))
(check-sat)
