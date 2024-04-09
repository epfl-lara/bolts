; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125142 () Bool)

(assert start!125142)

(declare-fun b!1456858 () Bool)

(declare-fun res!987373 () Bool)

(declare-fun e!819649 () Bool)

(assert (=> b!1456858 (=> (not res!987373) (not e!819649))))

(declare-datatypes ((array!98507 0))(
  ( (array!98508 (arr!47537 (Array (_ BitVec 32) (_ BitVec 64))) (size!48088 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98507)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1456858 (= res!987373 (validKeyInArray!0 (select (arr!47537 a!2862) j!93)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun e!819648 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun b!1456859 () Bool)

(assert (=> b!1456859 (= e!819648 (and (or (= (select (arr!47537 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47537 a!2862) intermediateBeforeIndex!19) (select (arr!47537 a!2862) j!93))) (let ((bdg!53290 (select (store (arr!47537 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47537 a!2862) index!646) bdg!53290) (= (select (arr!47537 a!2862) index!646) (select (arr!47537 a!2862) j!93))) (= (select (arr!47537 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53290 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1456860 () Bool)

(declare-fun res!987372 () Bool)

(declare-fun e!819646 () Bool)

(assert (=> b!1456860 (=> (not res!987372) (not e!819646))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1456860 (= res!987372 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1456861 () Bool)

(declare-fun res!987358 () Bool)

(assert (=> b!1456861 (=> (not res!987358) (not e!819648))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11812 0))(
  ( (MissingZero!11812 (index!49639 (_ BitVec 32))) (Found!11812 (index!49640 (_ BitVec 32))) (Intermediate!11812 (undefined!12624 Bool) (index!49641 (_ BitVec 32)) (x!131264 (_ BitVec 32))) (Undefined!11812) (MissingVacant!11812 (index!49642 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98507 (_ BitVec 32)) SeekEntryResult!11812)

(assert (=> b!1456861 (= res!987358 (= (seekEntryOrOpen!0 (select (arr!47537 a!2862) j!93) a!2862 mask!2687) (Found!11812 j!93)))))

(declare-fun b!1456862 () Bool)

(declare-fun e!819652 () Bool)

(assert (=> b!1456862 (= e!819652 e!819646)))

(declare-fun res!987363 () Bool)

(assert (=> b!1456862 (=> (not res!987363) (not e!819646))))

(declare-fun lt!638442 () SeekEntryResult!11812)

(assert (=> b!1456862 (= res!987363 (= lt!638442 (Intermediate!11812 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!638436 () array!98507)

(declare-fun lt!638437 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98507 (_ BitVec 32)) SeekEntryResult!11812)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456862 (= lt!638442 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638437 mask!2687) lt!638437 lt!638436 mask!2687))))

(assert (=> b!1456862 (= lt!638437 (select (store (arr!47537 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1456863 () Bool)

(declare-fun res!987371 () Bool)

(assert (=> b!1456863 (=> (not res!987371) (not e!819649))))

(assert (=> b!1456863 (= res!987371 (validKeyInArray!0 (select (arr!47537 a!2862) i!1006)))))

(declare-fun b!1456864 () Bool)

(declare-fun res!987366 () Bool)

(assert (=> b!1456864 (=> (not res!987366) (not e!819652))))

(declare-fun lt!638439 () SeekEntryResult!11812)

(assert (=> b!1456864 (= res!987366 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47537 a!2862) j!93) a!2862 mask!2687) lt!638439))))

(declare-fun e!819650 () Bool)

(declare-fun b!1456865 () Bool)

(assert (=> b!1456865 (= e!819650 (= lt!638442 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638437 lt!638436 mask!2687)))))

(declare-fun b!1456866 () Bool)

(declare-fun res!987367 () Bool)

(assert (=> b!1456866 (=> (not res!987367) (not e!819646))))

(assert (=> b!1456866 (= res!987367 e!819650)))

(declare-fun c!134264 () Bool)

(assert (=> b!1456866 (= c!134264 (bvsle x!665 intermediateAfterX!19))))

(declare-fun lt!638441 () SeekEntryResult!11812)

(declare-fun e!819653 () Bool)

(declare-fun b!1456867 () Bool)

(declare-fun lt!638438 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98507 (_ BitVec 32)) SeekEntryResult!11812)

(assert (=> b!1456867 (= e!819653 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638438 intermediateAfterIndex!19 lt!638437 lt!638436 mask!2687) lt!638441)))))

(declare-fun b!1456868 () Bool)

(declare-fun res!987365 () Bool)

(assert (=> b!1456868 (=> (not res!987365) (not e!819649))))

(assert (=> b!1456868 (= res!987365 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48088 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48088 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48088 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1456869 () Bool)

(declare-fun res!987360 () Bool)

(assert (=> b!1456869 (=> (not res!987360) (not e!819649))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98507 (_ BitVec 32)) Bool)

(assert (=> b!1456869 (= res!987360 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!987374 () Bool)

(assert (=> start!125142 (=> (not res!987374) (not e!819649))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125142 (= res!987374 (validMask!0 mask!2687))))

(assert (=> start!125142 e!819649))

(assert (=> start!125142 true))

(declare-fun array_inv!36482 (array!98507) Bool)

(assert (=> start!125142 (array_inv!36482 a!2862)))

(declare-fun b!1456870 () Bool)

(declare-fun res!987362 () Bool)

(declare-fun e!819644 () Bool)

(assert (=> b!1456870 (=> res!987362 e!819644)))

(assert (=> b!1456870 (= res!987362 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638438 (select (arr!47537 a!2862) j!93) a!2862 mask!2687) lt!638439)))))

(declare-fun b!1456871 () Bool)

(assert (=> b!1456871 (= e!819650 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638437 lt!638436 mask!2687) (seekEntryOrOpen!0 lt!638437 lt!638436 mask!2687)))))

(declare-fun b!1456872 () Bool)

(declare-fun e!819645 () Bool)

(assert (=> b!1456872 (= e!819649 e!819645)))

(declare-fun res!987375 () Bool)

(assert (=> b!1456872 (=> (not res!987375) (not e!819645))))

(assert (=> b!1456872 (= res!987375 (= (select (store (arr!47537 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1456872 (= lt!638436 (array!98508 (store (arr!47537 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48088 a!2862)))))

(declare-fun b!1456873 () Bool)

(declare-fun res!987359 () Bool)

(assert (=> b!1456873 (=> (not res!987359) (not e!819649))))

(assert (=> b!1456873 (= res!987359 (and (= (size!48088 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48088 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48088 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1456874 () Bool)

(assert (=> b!1456874 (= e!819645 e!819652)))

(declare-fun res!987370 () Bool)

(assert (=> b!1456874 (=> (not res!987370) (not e!819652))))

(assert (=> b!1456874 (= res!987370 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47537 a!2862) j!93) mask!2687) (select (arr!47537 a!2862) j!93) a!2862 mask!2687) lt!638439))))

(assert (=> b!1456874 (= lt!638439 (Intermediate!11812 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1456875 () Bool)

(assert (=> b!1456875 (= e!819653 (not (= lt!638442 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638438 lt!638437 lt!638436 mask!2687))))))

(declare-fun b!1456876 () Bool)

(declare-fun res!987361 () Bool)

(assert (=> b!1456876 (=> (not res!987361) (not e!819649))))

(declare-datatypes ((List!34218 0))(
  ( (Nil!34215) (Cons!34214 (h!35564 (_ BitVec 64)) (t!48919 List!34218)) )
))
(declare-fun arrayNoDuplicates!0 (array!98507 (_ BitVec 32) List!34218) Bool)

(assert (=> b!1456876 (= res!987361 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34215))))

(declare-fun b!1456877 () Bool)

(declare-fun e!819651 () Bool)

(assert (=> b!1456877 (= e!819646 (not e!819651))))

(declare-fun res!987364 () Bool)

(assert (=> b!1456877 (=> res!987364 e!819651)))

(assert (=> b!1456877 (= res!987364 (or (and (= (select (arr!47537 a!2862) index!646) (select (store (arr!47537 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47537 a!2862) index!646) (select (arr!47537 a!2862) j!93))) (= (select (arr!47537 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1456877 e!819648))

(declare-fun res!987368 () Bool)

(assert (=> b!1456877 (=> (not res!987368) (not e!819648))))

(assert (=> b!1456877 (= res!987368 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49068 0))(
  ( (Unit!49069) )
))
(declare-fun lt!638443 () Unit!49068)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98507 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49068)

(assert (=> b!1456877 (= lt!638443 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1456878 () Bool)

(assert (=> b!1456878 (= e!819651 e!819644)))

(declare-fun res!987369 () Bool)

(assert (=> b!1456878 (=> res!987369 e!819644)))

(assert (=> b!1456878 (= res!987369 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638438 #b00000000000000000000000000000000) (bvsge lt!638438 (size!48088 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456878 (= lt!638438 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1456878 (= lt!638441 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638437 lt!638436 mask!2687))))

(assert (=> b!1456878 (= lt!638441 (seekEntryOrOpen!0 lt!638437 lt!638436 mask!2687))))

(declare-fun b!1456879 () Bool)

(assert (=> b!1456879 (= e!819644 true)))

(declare-fun lt!638440 () Bool)

(assert (=> b!1456879 (= lt!638440 e!819653)))

(declare-fun c!134263 () Bool)

(assert (=> b!1456879 (= c!134263 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(assert (= (and start!125142 res!987374) b!1456873))

(assert (= (and b!1456873 res!987359) b!1456863))

(assert (= (and b!1456863 res!987371) b!1456858))

(assert (= (and b!1456858 res!987373) b!1456869))

(assert (= (and b!1456869 res!987360) b!1456876))

(assert (= (and b!1456876 res!987361) b!1456868))

(assert (= (and b!1456868 res!987365) b!1456872))

(assert (= (and b!1456872 res!987375) b!1456874))

(assert (= (and b!1456874 res!987370) b!1456864))

(assert (= (and b!1456864 res!987366) b!1456862))

(assert (= (and b!1456862 res!987363) b!1456866))

(assert (= (and b!1456866 c!134264) b!1456865))

(assert (= (and b!1456866 (not c!134264)) b!1456871))

(assert (= (and b!1456866 res!987367) b!1456860))

(assert (= (and b!1456860 res!987372) b!1456877))

(assert (= (and b!1456877 res!987368) b!1456861))

(assert (= (and b!1456861 res!987358) b!1456859))

(assert (= (and b!1456877 (not res!987364)) b!1456878))

(assert (= (and b!1456878 (not res!987369)) b!1456870))

(assert (= (and b!1456870 (not res!987362)) b!1456879))

(assert (= (and b!1456879 c!134263) b!1456875))

(assert (= (and b!1456879 (not c!134263)) b!1456867))

(declare-fun m!1344955 () Bool)

(assert (=> b!1456874 m!1344955))

(assert (=> b!1456874 m!1344955))

(declare-fun m!1344957 () Bool)

(assert (=> b!1456874 m!1344957))

(assert (=> b!1456874 m!1344957))

(assert (=> b!1456874 m!1344955))

(declare-fun m!1344959 () Bool)

(assert (=> b!1456874 m!1344959))

(assert (=> b!1456870 m!1344955))

(assert (=> b!1456870 m!1344955))

(declare-fun m!1344961 () Bool)

(assert (=> b!1456870 m!1344961))

(declare-fun m!1344963 () Bool)

(assert (=> b!1456862 m!1344963))

(assert (=> b!1456862 m!1344963))

(declare-fun m!1344965 () Bool)

(assert (=> b!1456862 m!1344965))

(declare-fun m!1344967 () Bool)

(assert (=> b!1456862 m!1344967))

(declare-fun m!1344969 () Bool)

(assert (=> b!1456862 m!1344969))

(assert (=> b!1456864 m!1344955))

(assert (=> b!1456864 m!1344955))

(declare-fun m!1344971 () Bool)

(assert (=> b!1456864 m!1344971))

(assert (=> b!1456861 m!1344955))

(assert (=> b!1456861 m!1344955))

(declare-fun m!1344973 () Bool)

(assert (=> b!1456861 m!1344973))

(declare-fun m!1344975 () Bool)

(assert (=> b!1456867 m!1344975))

(declare-fun m!1344977 () Bool)

(assert (=> b!1456871 m!1344977))

(declare-fun m!1344979 () Bool)

(assert (=> b!1456871 m!1344979))

(declare-fun m!1344981 () Bool)

(assert (=> b!1456865 m!1344981))

(declare-fun m!1344983 () Bool)

(assert (=> b!1456877 m!1344983))

(assert (=> b!1456877 m!1344967))

(declare-fun m!1344985 () Bool)

(assert (=> b!1456877 m!1344985))

(declare-fun m!1344987 () Bool)

(assert (=> b!1456877 m!1344987))

(declare-fun m!1344989 () Bool)

(assert (=> b!1456877 m!1344989))

(assert (=> b!1456877 m!1344955))

(declare-fun m!1344991 () Bool)

(assert (=> b!1456876 m!1344991))

(declare-fun m!1344993 () Bool)

(assert (=> b!1456863 m!1344993))

(assert (=> b!1456863 m!1344993))

(declare-fun m!1344995 () Bool)

(assert (=> b!1456863 m!1344995))

(declare-fun m!1344997 () Bool)

(assert (=> b!1456869 m!1344997))

(assert (=> b!1456859 m!1344967))

(declare-fun m!1344999 () Bool)

(assert (=> b!1456859 m!1344999))

(assert (=> b!1456859 m!1344985))

(assert (=> b!1456859 m!1344987))

(assert (=> b!1456859 m!1344955))

(assert (=> b!1456872 m!1344967))

(declare-fun m!1345001 () Bool)

(assert (=> b!1456872 m!1345001))

(declare-fun m!1345003 () Bool)

(assert (=> b!1456875 m!1345003))

(assert (=> b!1456858 m!1344955))

(assert (=> b!1456858 m!1344955))

(declare-fun m!1345005 () Bool)

(assert (=> b!1456858 m!1345005))

(declare-fun m!1345007 () Bool)

(assert (=> b!1456878 m!1345007))

(assert (=> b!1456878 m!1344977))

(assert (=> b!1456878 m!1344979))

(declare-fun m!1345009 () Bool)

(assert (=> start!125142 m!1345009))

(declare-fun m!1345011 () Bool)

(assert (=> start!125142 m!1345011))

(check-sat (not b!1456874) (not b!1456865) (not b!1456871) (not start!125142) (not b!1456877) (not b!1456876) (not b!1456869) (not b!1456867) (not b!1456862) (not b!1456870) (not b!1456858) (not b!1456863) (not b!1456864) (not b!1456878) (not b!1456861) (not b!1456875))
