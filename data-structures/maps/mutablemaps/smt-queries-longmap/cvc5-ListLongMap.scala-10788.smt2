; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126268 () Bool)

(assert start!126268)

(declare-fun b!1478996 () Bool)

(declare-fun res!1005053 () Bool)

(declare-fun e!829651 () Bool)

(assert (=> b!1478996 (=> (not res!1005053) (not e!829651))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99291 0))(
  ( (array!99292 (arr!47920 (Array (_ BitVec 32) (_ BitVec 64))) (size!48471 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99291)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1478996 (= res!1005053 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48471 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48471 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48471 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1478997 () Bool)

(declare-fun res!1005054 () Bool)

(declare-fun e!829655 () Bool)

(assert (=> b!1478997 (=> (not res!1005054) (not e!829655))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1478997 (= res!1005054 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1478998 () Bool)

(declare-fun res!1005050 () Bool)

(assert (=> b!1478998 (=> (not res!1005050) (not e!829651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1478998 (= res!1005050 (validKeyInArray!0 (select (arr!47920 a!2862) i!1006)))))

(declare-fun b!1478999 () Bool)

(declare-fun res!1005048 () Bool)

(assert (=> b!1478999 (=> (not res!1005048) (not e!829651))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1478999 (= res!1005048 (and (= (size!48471 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48471 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48471 a!2862)) (not (= i!1006 j!93))))))

(declare-fun e!829649 () Bool)

(declare-fun b!1479000 () Bool)

(declare-fun lt!645838 () array!99291)

(declare-fun lt!645833 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12183 0))(
  ( (MissingZero!12183 (index!51123 (_ BitVec 32))) (Found!12183 (index!51124 (_ BitVec 32))) (Intermediate!12183 (undefined!12995 Bool) (index!51125 (_ BitVec 32)) (x!132713 (_ BitVec 32))) (Undefined!12183) (MissingVacant!12183 (index!51126 (_ BitVec 32))) )
))
(declare-fun lt!645836 () SeekEntryResult!12183)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99291 (_ BitVec 32)) SeekEntryResult!12183)

(assert (=> b!1479000 (= e!829649 (= lt!645836 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645833 lt!645838 mask!2687)))))

(declare-fun b!1479001 () Bool)

(declare-fun res!1005063 () Bool)

(assert (=> b!1479001 (=> (not res!1005063) (not e!829651))))

(declare-datatypes ((List!34601 0))(
  ( (Nil!34598) (Cons!34597 (h!35965 (_ BitVec 64)) (t!49302 List!34601)) )
))
(declare-fun arrayNoDuplicates!0 (array!99291 (_ BitVec 32) List!34601) Bool)

(assert (=> b!1479001 (= res!1005063 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34598))))

(declare-fun b!1479002 () Bool)

(declare-fun res!1005052 () Bool)

(assert (=> b!1479002 (=> (not res!1005052) (not e!829651))))

(assert (=> b!1479002 (= res!1005052 (validKeyInArray!0 (select (arr!47920 a!2862) j!93)))))

(declare-fun b!1479003 () Bool)

(assert (=> b!1479003 (= e!829655 (not true))))

(declare-fun e!829652 () Bool)

(assert (=> b!1479003 e!829652))

(declare-fun res!1005055 () Bool)

(assert (=> b!1479003 (=> (not res!1005055) (not e!829652))))

(declare-fun lt!645834 () SeekEntryResult!12183)

(assert (=> b!1479003 (= res!1005055 (and (= lt!645834 (Found!12183 j!93)) (or (= (select (arr!47920 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47920 a!2862) intermediateBeforeIndex!19) (select (arr!47920 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99291 (_ BitVec 32)) SeekEntryResult!12183)

(assert (=> b!1479003 (= lt!645834 (seekEntryOrOpen!0 (select (arr!47920 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99291 (_ BitVec 32)) Bool)

(assert (=> b!1479003 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49654 0))(
  ( (Unit!49655) )
))
(declare-fun lt!645837 () Unit!49654)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99291 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49654)

(assert (=> b!1479003 (= lt!645837 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1479004 () Bool)

(declare-fun e!829648 () Bool)

(assert (=> b!1479004 (= e!829652 e!829648)))

(declare-fun res!1005058 () Bool)

(assert (=> b!1479004 (=> res!1005058 e!829648)))

(assert (=> b!1479004 (= res!1005058 (or (and (= (select (arr!47920 a!2862) index!646) (select (store (arr!47920 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47920 a!2862) index!646) (select (arr!47920 a!2862) j!93))) (not (= (select (arr!47920 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1479005 () Bool)

(declare-fun e!829654 () Bool)

(assert (=> b!1479005 (= e!829648 e!829654)))

(declare-fun res!1005049 () Bool)

(assert (=> b!1479005 (=> (not res!1005049) (not e!829654))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99291 (_ BitVec 32)) SeekEntryResult!12183)

(assert (=> b!1479005 (= res!1005049 (= lt!645834 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47920 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1479006 () Bool)

(declare-fun res!1005057 () Bool)

(assert (=> b!1479006 (=> (not res!1005057) (not e!829651))))

(assert (=> b!1479006 (= res!1005057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!1005060 () Bool)

(assert (=> start!126268 (=> (not res!1005060) (not e!829651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126268 (= res!1005060 (validMask!0 mask!2687))))

(assert (=> start!126268 e!829651))

(assert (=> start!126268 true))

(declare-fun array_inv!36865 (array!99291) Bool)

(assert (=> start!126268 (array_inv!36865 a!2862)))

(declare-fun b!1479007 () Bool)

(declare-fun res!1005059 () Bool)

(assert (=> b!1479007 (=> (not res!1005059) (not e!829655))))

(assert (=> b!1479007 (= res!1005059 e!829649)))

(declare-fun c!136496 () Bool)

(assert (=> b!1479007 (= c!136496 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1479008 () Bool)

(assert (=> b!1479008 (= e!829649 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645833 lt!645838 mask!2687) (seekEntryOrOpen!0 lt!645833 lt!645838 mask!2687)))))

(declare-fun b!1479009 () Bool)

(assert (=> b!1479009 (= e!829654 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1479010 () Bool)

(declare-fun e!829650 () Bool)

(assert (=> b!1479010 (= e!829650 e!829655)))

(declare-fun res!1005062 () Bool)

(assert (=> b!1479010 (=> (not res!1005062) (not e!829655))))

(assert (=> b!1479010 (= res!1005062 (= lt!645836 (Intermediate!12183 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1479010 (= lt!645836 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645833 mask!2687) lt!645833 lt!645838 mask!2687))))

(assert (=> b!1479010 (= lt!645833 (select (store (arr!47920 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1479011 () Bool)

(declare-fun res!1005051 () Bool)

(assert (=> b!1479011 (=> (not res!1005051) (not e!829650))))

(declare-fun lt!645835 () SeekEntryResult!12183)

(assert (=> b!1479011 (= res!1005051 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47920 a!2862) j!93) a!2862 mask!2687) lt!645835))))

(declare-fun b!1479012 () Bool)

(declare-fun e!829653 () Bool)

(assert (=> b!1479012 (= e!829653 e!829650)))

(declare-fun res!1005061 () Bool)

(assert (=> b!1479012 (=> (not res!1005061) (not e!829650))))

(assert (=> b!1479012 (= res!1005061 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47920 a!2862) j!93) mask!2687) (select (arr!47920 a!2862) j!93) a!2862 mask!2687) lt!645835))))

(assert (=> b!1479012 (= lt!645835 (Intermediate!12183 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1479013 () Bool)

(assert (=> b!1479013 (= e!829651 e!829653)))

(declare-fun res!1005056 () Bool)

(assert (=> b!1479013 (=> (not res!1005056) (not e!829653))))

(assert (=> b!1479013 (= res!1005056 (= (select (store (arr!47920 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1479013 (= lt!645838 (array!99292 (store (arr!47920 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48471 a!2862)))))

(assert (= (and start!126268 res!1005060) b!1478999))

(assert (= (and b!1478999 res!1005048) b!1478998))

(assert (= (and b!1478998 res!1005050) b!1479002))

(assert (= (and b!1479002 res!1005052) b!1479006))

(assert (= (and b!1479006 res!1005057) b!1479001))

(assert (= (and b!1479001 res!1005063) b!1478996))

(assert (= (and b!1478996 res!1005053) b!1479013))

(assert (= (and b!1479013 res!1005056) b!1479012))

(assert (= (and b!1479012 res!1005061) b!1479011))

(assert (= (and b!1479011 res!1005051) b!1479010))

(assert (= (and b!1479010 res!1005062) b!1479007))

(assert (= (and b!1479007 c!136496) b!1479000))

(assert (= (and b!1479007 (not c!136496)) b!1479008))

(assert (= (and b!1479007 res!1005059) b!1478997))

(assert (= (and b!1478997 res!1005054) b!1479003))

(assert (= (and b!1479003 res!1005055) b!1479004))

(assert (= (and b!1479004 (not res!1005058)) b!1479005))

(assert (= (and b!1479005 res!1005049) b!1479009))

(declare-fun m!1364943 () Bool)

(assert (=> b!1479000 m!1364943))

(declare-fun m!1364945 () Bool)

(assert (=> b!1479008 m!1364945))

(declare-fun m!1364947 () Bool)

(assert (=> b!1479008 m!1364947))

(declare-fun m!1364949 () Bool)

(assert (=> b!1479010 m!1364949))

(assert (=> b!1479010 m!1364949))

(declare-fun m!1364951 () Bool)

(assert (=> b!1479010 m!1364951))

(declare-fun m!1364953 () Bool)

(assert (=> b!1479010 m!1364953))

(declare-fun m!1364955 () Bool)

(assert (=> b!1479010 m!1364955))

(declare-fun m!1364957 () Bool)

(assert (=> b!1479006 m!1364957))

(declare-fun m!1364959 () Bool)

(assert (=> b!1479005 m!1364959))

(assert (=> b!1479005 m!1364959))

(declare-fun m!1364961 () Bool)

(assert (=> b!1479005 m!1364961))

(declare-fun m!1364963 () Bool)

(assert (=> b!1479001 m!1364963))

(declare-fun m!1364965 () Bool)

(assert (=> start!126268 m!1364965))

(declare-fun m!1364967 () Bool)

(assert (=> start!126268 m!1364967))

(assert (=> b!1479012 m!1364959))

(assert (=> b!1479012 m!1364959))

(declare-fun m!1364969 () Bool)

(assert (=> b!1479012 m!1364969))

(assert (=> b!1479012 m!1364969))

(assert (=> b!1479012 m!1364959))

(declare-fun m!1364971 () Bool)

(assert (=> b!1479012 m!1364971))

(declare-fun m!1364973 () Bool)

(assert (=> b!1478998 m!1364973))

(assert (=> b!1478998 m!1364973))

(declare-fun m!1364975 () Bool)

(assert (=> b!1478998 m!1364975))

(declare-fun m!1364977 () Bool)

(assert (=> b!1479004 m!1364977))

(assert (=> b!1479004 m!1364953))

(declare-fun m!1364979 () Bool)

(assert (=> b!1479004 m!1364979))

(assert (=> b!1479004 m!1364959))

(assert (=> b!1479011 m!1364959))

(assert (=> b!1479011 m!1364959))

(declare-fun m!1364981 () Bool)

(assert (=> b!1479011 m!1364981))

(assert (=> b!1479013 m!1364953))

(declare-fun m!1364983 () Bool)

(assert (=> b!1479013 m!1364983))

(assert (=> b!1479002 m!1364959))

(assert (=> b!1479002 m!1364959))

(declare-fun m!1364985 () Bool)

(assert (=> b!1479002 m!1364985))

(declare-fun m!1364987 () Bool)

(assert (=> b!1479003 m!1364987))

(declare-fun m!1364989 () Bool)

(assert (=> b!1479003 m!1364989))

(assert (=> b!1479003 m!1364959))

(declare-fun m!1364991 () Bool)

(assert (=> b!1479003 m!1364991))

(declare-fun m!1364993 () Bool)

(assert (=> b!1479003 m!1364993))

(assert (=> b!1479003 m!1364959))

(push 1)

