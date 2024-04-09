; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125244 () Bool)

(assert start!125244)

(declare-fun b!1460208 () Bool)

(declare-fun e!821097 () Bool)

(declare-fun e!821096 () Bool)

(assert (=> b!1460208 (= e!821097 e!821096)))

(declare-fun res!990115 () Bool)

(assert (=> b!1460208 (=> (not res!990115) (not e!821096))))

(declare-datatypes ((SeekEntryResult!11863 0))(
  ( (MissingZero!11863 (index!49843 (_ BitVec 32))) (Found!11863 (index!49844 (_ BitVec 32))) (Intermediate!11863 (undefined!12675 Bool) (index!49845 (_ BitVec 32)) (x!131451 (_ BitVec 32))) (Undefined!11863) (MissingVacant!11863 (index!49846 (_ BitVec 32))) )
))
(declare-fun lt!639718 () SeekEntryResult!11863)

(declare-datatypes ((array!98609 0))(
  ( (array!98610 (arr!47588 (Array (_ BitVec 32) (_ BitVec 64))) (size!48139 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98609)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98609 (_ BitVec 32)) SeekEntryResult!11863)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460208 (= res!990115 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47588 a!2862) j!93) mask!2687) (select (arr!47588 a!2862) j!93) a!2862 mask!2687) lt!639718))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1460208 (= lt!639718 (Intermediate!11863 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1460209 () Bool)

(declare-fun res!990111 () Bool)

(declare-fun e!821100 () Bool)

(assert (=> b!1460209 (=> (not res!990111) (not e!821100))))

(declare-fun e!821101 () Bool)

(assert (=> b!1460209 (= res!990111 e!821101)))

(declare-fun c!134564 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1460209 (= c!134564 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1460210 () Bool)

(assert (=> b!1460210 (= e!821096 e!821100)))

(declare-fun res!990114 () Bool)

(assert (=> b!1460210 (=> (not res!990114) (not e!821100))))

(declare-fun lt!639717 () SeekEntryResult!11863)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1460210 (= res!990114 (= lt!639717 (Intermediate!11863 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!639719 () (_ BitVec 64))

(declare-fun lt!639720 () array!98609)

(assert (=> b!1460210 (= lt!639717 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639719 mask!2687) lt!639719 lt!639720 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1460210 (= lt!639719 (select (store (arr!47588 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1460211 () Bool)

(assert (=> b!1460211 (= e!821100 (not true))))

(declare-fun e!821098 () Bool)

(assert (=> b!1460211 e!821098))

(declare-fun res!990106 () Bool)

(assert (=> b!1460211 (=> (not res!990106) (not e!821098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98609 (_ BitVec 32)) Bool)

(assert (=> b!1460211 (= res!990106 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49170 0))(
  ( (Unit!49171) )
))
(declare-fun lt!639721 () Unit!49170)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98609 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49170)

(assert (=> b!1460211 (= lt!639721 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1460212 () Bool)

(declare-fun res!990120 () Bool)

(declare-fun e!821102 () Bool)

(assert (=> b!1460212 (=> (not res!990120) (not e!821102))))

(declare-datatypes ((List!34269 0))(
  ( (Nil!34266) (Cons!34265 (h!35615 (_ BitVec 64)) (t!48970 List!34269)) )
))
(declare-fun arrayNoDuplicates!0 (array!98609 (_ BitVec 32) List!34269) Bool)

(assert (=> b!1460212 (= res!990120 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34266))))

(declare-fun b!1460213 () Bool)

(assert (=> b!1460213 (= e!821098 (or (= (select (arr!47588 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47588 a!2862) intermediateBeforeIndex!19) (select (arr!47588 a!2862) j!93))))))

(declare-fun res!990107 () Bool)

(assert (=> start!125244 (=> (not res!990107) (not e!821102))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125244 (= res!990107 (validMask!0 mask!2687))))

(assert (=> start!125244 e!821102))

(assert (=> start!125244 true))

(declare-fun array_inv!36533 (array!98609) Bool)

(assert (=> start!125244 (array_inv!36533 a!2862)))

(declare-fun b!1460214 () Bool)

(assert (=> b!1460214 (= e!821102 e!821097)))

(declare-fun res!990118 () Bool)

(assert (=> b!1460214 (=> (not res!990118) (not e!821097))))

(assert (=> b!1460214 (= res!990118 (= (select (store (arr!47588 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1460214 (= lt!639720 (array!98610 (store (arr!47588 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48139 a!2862)))))

(declare-fun b!1460215 () Bool)

(declare-fun res!990117 () Bool)

(assert (=> b!1460215 (=> (not res!990117) (not e!821098))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98609 (_ BitVec 32)) SeekEntryResult!11863)

(assert (=> b!1460215 (= res!990117 (= (seekEntryOrOpen!0 (select (arr!47588 a!2862) j!93) a!2862 mask!2687) (Found!11863 j!93)))))

(declare-fun b!1460216 () Bool)

(declare-fun res!990112 () Bool)

(assert (=> b!1460216 (=> (not res!990112) (not e!821102))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1460216 (= res!990112 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48139 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48139 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48139 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1460217 () Bool)

(declare-fun res!990109 () Bool)

(assert (=> b!1460217 (=> (not res!990109) (not e!821102))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1460217 (= res!990109 (validKeyInArray!0 (select (arr!47588 a!2862) j!93)))))

(declare-fun b!1460218 () Bool)

(declare-fun res!990113 () Bool)

(assert (=> b!1460218 (=> (not res!990113) (not e!821096))))

(assert (=> b!1460218 (= res!990113 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47588 a!2862) j!93) a!2862 mask!2687) lt!639718))))

(declare-fun b!1460219 () Bool)

(declare-fun res!990108 () Bool)

(assert (=> b!1460219 (=> (not res!990108) (not e!821102))))

(assert (=> b!1460219 (= res!990108 (validKeyInArray!0 (select (arr!47588 a!2862) i!1006)))))

(declare-fun b!1460220 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98609 (_ BitVec 32)) SeekEntryResult!11863)

(assert (=> b!1460220 (= e!821101 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639719 lt!639720 mask!2687) (seekEntryOrOpen!0 lt!639719 lt!639720 mask!2687)))))

(declare-fun b!1460221 () Bool)

(declare-fun res!990119 () Bool)

(assert (=> b!1460221 (=> (not res!990119) (not e!821102))))

(assert (=> b!1460221 (= res!990119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1460222 () Bool)

(declare-fun res!990116 () Bool)

(assert (=> b!1460222 (=> (not res!990116) (not e!821100))))

(assert (=> b!1460222 (= res!990116 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1460223 () Bool)

(assert (=> b!1460223 (= e!821101 (= lt!639717 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639719 lt!639720 mask!2687)))))

(declare-fun b!1460224 () Bool)

(declare-fun res!990110 () Bool)

(assert (=> b!1460224 (=> (not res!990110) (not e!821102))))

(assert (=> b!1460224 (= res!990110 (and (= (size!48139 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48139 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48139 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125244 res!990107) b!1460224))

(assert (= (and b!1460224 res!990110) b!1460219))

(assert (= (and b!1460219 res!990108) b!1460217))

(assert (= (and b!1460217 res!990109) b!1460221))

(assert (= (and b!1460221 res!990119) b!1460212))

(assert (= (and b!1460212 res!990120) b!1460216))

(assert (= (and b!1460216 res!990112) b!1460214))

(assert (= (and b!1460214 res!990118) b!1460208))

(assert (= (and b!1460208 res!990115) b!1460218))

(assert (= (and b!1460218 res!990113) b!1460210))

(assert (= (and b!1460210 res!990114) b!1460209))

(assert (= (and b!1460209 c!134564) b!1460223))

(assert (= (and b!1460209 (not c!134564)) b!1460220))

(assert (= (and b!1460209 res!990111) b!1460222))

(assert (= (and b!1460222 res!990116) b!1460211))

(assert (= (and b!1460211 res!990106) b!1460215))

(assert (= (and b!1460215 res!990117) b!1460213))

(declare-fun m!1347955 () Bool)

(assert (=> b!1460210 m!1347955))

(assert (=> b!1460210 m!1347955))

(declare-fun m!1347957 () Bool)

(assert (=> b!1460210 m!1347957))

(declare-fun m!1347959 () Bool)

(assert (=> b!1460210 m!1347959))

(declare-fun m!1347961 () Bool)

(assert (=> b!1460210 m!1347961))

(declare-fun m!1347963 () Bool)

(assert (=> start!125244 m!1347963))

(declare-fun m!1347965 () Bool)

(assert (=> start!125244 m!1347965))

(declare-fun m!1347967 () Bool)

(assert (=> b!1460212 m!1347967))

(declare-fun m!1347969 () Bool)

(assert (=> b!1460213 m!1347969))

(declare-fun m!1347971 () Bool)

(assert (=> b!1460213 m!1347971))

(assert (=> b!1460218 m!1347971))

(assert (=> b!1460218 m!1347971))

(declare-fun m!1347973 () Bool)

(assert (=> b!1460218 m!1347973))

(declare-fun m!1347975 () Bool)

(assert (=> b!1460223 m!1347975))

(assert (=> b!1460208 m!1347971))

(assert (=> b!1460208 m!1347971))

(declare-fun m!1347977 () Bool)

(assert (=> b!1460208 m!1347977))

(assert (=> b!1460208 m!1347977))

(assert (=> b!1460208 m!1347971))

(declare-fun m!1347979 () Bool)

(assert (=> b!1460208 m!1347979))

(declare-fun m!1347981 () Bool)

(assert (=> b!1460219 m!1347981))

(assert (=> b!1460219 m!1347981))

(declare-fun m!1347983 () Bool)

(assert (=> b!1460219 m!1347983))

(declare-fun m!1347985 () Bool)

(assert (=> b!1460220 m!1347985))

(declare-fun m!1347987 () Bool)

(assert (=> b!1460220 m!1347987))

(declare-fun m!1347989 () Bool)

(assert (=> b!1460211 m!1347989))

(declare-fun m!1347991 () Bool)

(assert (=> b!1460211 m!1347991))

(assert (=> b!1460215 m!1347971))

(assert (=> b!1460215 m!1347971))

(declare-fun m!1347993 () Bool)

(assert (=> b!1460215 m!1347993))

(declare-fun m!1347995 () Bool)

(assert (=> b!1460221 m!1347995))

(assert (=> b!1460214 m!1347959))

(declare-fun m!1347997 () Bool)

(assert (=> b!1460214 m!1347997))

(assert (=> b!1460217 m!1347971))

(assert (=> b!1460217 m!1347971))

(declare-fun m!1347999 () Bool)

(assert (=> b!1460217 m!1347999))

(check-sat (not b!1460208) (not b!1460217) (not b!1460215) (not start!125244) (not b!1460219) (not b!1460218) (not b!1460210) (not b!1460221) (not b!1460220) (not b!1460212) (not b!1460211) (not b!1460223))
(check-sat)
