; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125360 () Bool)

(assert start!125360)

(declare-fun b!1463881 () Bool)

(declare-fun e!822751 () Bool)

(declare-fun e!822749 () Bool)

(assert (=> b!1463881 (= e!822751 (not e!822749))))

(declare-fun res!993162 () Bool)

(assert (=> b!1463881 (=> res!993162 e!822749)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98725 0))(
  ( (array!98726 (arr!47646 (Array (_ BitVec 32) (_ BitVec 64))) (size!48197 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98725)

(assert (=> b!1463881 (= res!993162 (or (and (= (select (arr!47646 a!2862) index!646) (select (store (arr!47646 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47646 a!2862) index!646) (select (arr!47646 a!2862) j!93))) (= (select (arr!47646 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!822744 () Bool)

(assert (=> b!1463881 e!822744))

(declare-fun res!993158 () Bool)

(assert (=> b!1463881 (=> (not res!993158) (not e!822744))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98725 (_ BitVec 32)) Bool)

(assert (=> b!1463881 (= res!993158 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49286 0))(
  ( (Unit!49287) )
))
(declare-fun lt!640879 () Unit!49286)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98725 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49286)

(assert (=> b!1463881 (= lt!640879 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1463882 () Bool)

(declare-fun res!993145 () Bool)

(declare-fun e!822752 () Bool)

(assert (=> b!1463882 (=> (not res!993145) (not e!822752))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1463882 (= res!993145 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48197 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48197 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48197 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1463883 () Bool)

(declare-fun res!993155 () Bool)

(assert (=> b!1463883 (=> (not res!993155) (not e!822751))))

(assert (=> b!1463883 (= res!993155 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1463884 () Bool)

(declare-fun res!993148 () Bool)

(assert (=> b!1463884 (=> (not res!993148) (not e!822751))))

(declare-fun e!822745 () Bool)

(assert (=> b!1463884 (= res!993148 e!822745)))

(declare-fun c!134882 () Bool)

(assert (=> b!1463884 (= c!134882 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1463886 () Bool)

(declare-fun e!822743 () Bool)

(assert (=> b!1463886 (= e!822752 e!822743)))

(declare-fun res!993152 () Bool)

(assert (=> b!1463886 (=> (not res!993152) (not e!822743))))

(assert (=> b!1463886 (= res!993152 (= (select (store (arr!47646 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!640875 () array!98725)

(assert (=> b!1463886 (= lt!640875 (array!98726 (store (arr!47646 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48197 a!2862)))))

(declare-fun b!1463887 () Bool)

(declare-fun res!993151 () Bool)

(assert (=> b!1463887 (=> (not res!993151) (not e!822752))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1463887 (= res!993151 (validKeyInArray!0 (select (arr!47646 a!2862) j!93)))))

(declare-fun b!1463888 () Bool)

(declare-fun res!993153 () Bool)

(assert (=> b!1463888 (=> (not res!993153) (not e!822752))))

(assert (=> b!1463888 (= res!993153 (validKeyInArray!0 (select (arr!47646 a!2862) i!1006)))))

(declare-fun b!1463889 () Bool)

(declare-fun res!993161 () Bool)

(declare-fun e!822750 () Bool)

(assert (=> b!1463889 (=> res!993161 e!822750)))

(declare-datatypes ((SeekEntryResult!11921 0))(
  ( (MissingZero!11921 (index!50075 (_ BitVec 32))) (Found!11921 (index!50076 (_ BitVec 32))) (Intermediate!11921 (undefined!12733 Bool) (index!50077 (_ BitVec 32)) (x!131661 (_ BitVec 32))) (Undefined!11921) (MissingVacant!11921 (index!50078 (_ BitVec 32))) )
))
(declare-fun lt!640877 () SeekEntryResult!11921)

(declare-fun lt!640874 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98725 (_ BitVec 32)) SeekEntryResult!11921)

(assert (=> b!1463889 (= res!993161 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640874 (select (arr!47646 a!2862) j!93) a!2862 mask!2687) lt!640877)))))

(declare-fun b!1463890 () Bool)

(assert (=> b!1463890 (= e!822749 e!822750)))

(declare-fun res!993147 () Bool)

(assert (=> b!1463890 (=> res!993147 e!822750)))

(assert (=> b!1463890 (= res!993147 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640874 #b00000000000000000000000000000000) (bvsge lt!640874 (size!48197 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463890 (= lt!640874 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1463891 () Bool)

(declare-fun res!993157 () Bool)

(declare-fun e!822748 () Bool)

(assert (=> b!1463891 (=> (not res!993157) (not e!822748))))

(assert (=> b!1463891 (= res!993157 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47646 a!2862) j!93) a!2862 mask!2687) lt!640877))))

(declare-fun b!1463892 () Bool)

(declare-fun res!993150 () Bool)

(assert (=> b!1463892 (=> (not res!993150) (not e!822752))))

(assert (=> b!1463892 (= res!993150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun lt!640873 () (_ BitVec 64))

(declare-fun b!1463893 () Bool)

(declare-fun e!822746 () Bool)

(declare-fun lt!640878 () SeekEntryResult!11921)

(assert (=> b!1463893 (= e!822746 (not (= lt!640878 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640874 lt!640873 lt!640875 mask!2687))))))

(declare-fun b!1463894 () Bool)

(declare-fun res!993160 () Bool)

(assert (=> b!1463894 (=> (not res!993160) (not e!822752))))

(declare-datatypes ((List!34327 0))(
  ( (Nil!34324) (Cons!34323 (h!35673 (_ BitVec 64)) (t!49028 List!34327)) )
))
(declare-fun arrayNoDuplicates!0 (array!98725 (_ BitVec 32) List!34327) Bool)

(assert (=> b!1463894 (= res!993160 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34324))))

(declare-fun b!1463885 () Bool)

(assert (=> b!1463885 (= e!822744 (or (= (select (arr!47646 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47646 a!2862) intermediateBeforeIndex!19) (select (arr!47646 a!2862) j!93))))))

(declare-fun res!993154 () Bool)

(assert (=> start!125360 (=> (not res!993154) (not e!822752))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125360 (= res!993154 (validMask!0 mask!2687))))

(assert (=> start!125360 e!822752))

(assert (=> start!125360 true))

(declare-fun array_inv!36591 (array!98725) Bool)

(assert (=> start!125360 (array_inv!36591 a!2862)))

(declare-fun b!1463895 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98725 (_ BitVec 32)) SeekEntryResult!11921)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98725 (_ BitVec 32)) SeekEntryResult!11921)

(assert (=> b!1463895 (= e!822746 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640874 intermediateAfterIndex!19 lt!640873 lt!640875 mask!2687) (seekEntryOrOpen!0 lt!640873 lt!640875 mask!2687))))))

(declare-fun b!1463896 () Bool)

(declare-fun res!993156 () Bool)

(assert (=> b!1463896 (=> (not res!993156) (not e!822752))))

(assert (=> b!1463896 (= res!993156 (and (= (size!48197 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48197 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48197 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1463897 () Bool)

(assert (=> b!1463897 (= e!822750 true)))

(declare-fun lt!640876 () Bool)

(assert (=> b!1463897 (= lt!640876 e!822746)))

(declare-fun c!134881 () Bool)

(assert (=> b!1463897 (= c!134881 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1463898 () Bool)

(assert (=> b!1463898 (= e!822748 e!822751)))

(declare-fun res!993149 () Bool)

(assert (=> b!1463898 (=> (not res!993149) (not e!822751))))

(assert (=> b!1463898 (= res!993149 (= lt!640878 (Intermediate!11921 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463898 (= lt!640878 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640873 mask!2687) lt!640873 lt!640875 mask!2687))))

(assert (=> b!1463898 (= lt!640873 (select (store (arr!47646 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1463899 () Bool)

(assert (=> b!1463899 (= e!822745 (= lt!640878 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640873 lt!640875 mask!2687)))))

(declare-fun b!1463900 () Bool)

(assert (=> b!1463900 (= e!822745 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640873 lt!640875 mask!2687) (seekEntryOrOpen!0 lt!640873 lt!640875 mask!2687)))))

(declare-fun b!1463901 () Bool)

(assert (=> b!1463901 (= e!822743 e!822748)))

(declare-fun res!993146 () Bool)

(assert (=> b!1463901 (=> (not res!993146) (not e!822748))))

(assert (=> b!1463901 (= res!993146 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47646 a!2862) j!93) mask!2687) (select (arr!47646 a!2862) j!93) a!2862 mask!2687) lt!640877))))

(assert (=> b!1463901 (= lt!640877 (Intermediate!11921 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1463902 () Bool)

(declare-fun res!993159 () Bool)

(assert (=> b!1463902 (=> (not res!993159) (not e!822744))))

(assert (=> b!1463902 (= res!993159 (= (seekEntryOrOpen!0 (select (arr!47646 a!2862) j!93) a!2862 mask!2687) (Found!11921 j!93)))))

(assert (= (and start!125360 res!993154) b!1463896))

(assert (= (and b!1463896 res!993156) b!1463888))

(assert (= (and b!1463888 res!993153) b!1463887))

(assert (= (and b!1463887 res!993151) b!1463892))

(assert (= (and b!1463892 res!993150) b!1463894))

(assert (= (and b!1463894 res!993160) b!1463882))

(assert (= (and b!1463882 res!993145) b!1463886))

(assert (= (and b!1463886 res!993152) b!1463901))

(assert (= (and b!1463901 res!993146) b!1463891))

(assert (= (and b!1463891 res!993157) b!1463898))

(assert (= (and b!1463898 res!993149) b!1463884))

(assert (= (and b!1463884 c!134882) b!1463899))

(assert (= (and b!1463884 (not c!134882)) b!1463900))

(assert (= (and b!1463884 res!993148) b!1463883))

(assert (= (and b!1463883 res!993155) b!1463881))

(assert (= (and b!1463881 res!993158) b!1463902))

(assert (= (and b!1463902 res!993159) b!1463885))

(assert (= (and b!1463881 (not res!993162)) b!1463890))

(assert (= (and b!1463890 (not res!993147)) b!1463889))

(assert (= (and b!1463889 (not res!993161)) b!1463897))

(assert (= (and b!1463897 c!134881) b!1463893))

(assert (= (and b!1463897 (not c!134881)) b!1463895))

(declare-fun m!1351211 () Bool)

(assert (=> b!1463893 m!1351211))

(declare-fun m!1351213 () Bool)

(assert (=> b!1463889 m!1351213))

(assert (=> b!1463889 m!1351213))

(declare-fun m!1351215 () Bool)

(assert (=> b!1463889 m!1351215))

(declare-fun m!1351217 () Bool)

(assert (=> start!125360 m!1351217))

(declare-fun m!1351219 () Bool)

(assert (=> start!125360 m!1351219))

(assert (=> b!1463902 m!1351213))

(assert (=> b!1463902 m!1351213))

(declare-fun m!1351221 () Bool)

(assert (=> b!1463902 m!1351221))

(declare-fun m!1351223 () Bool)

(assert (=> b!1463892 m!1351223))

(declare-fun m!1351225 () Bool)

(assert (=> b!1463894 m!1351225))

(assert (=> b!1463887 m!1351213))

(assert (=> b!1463887 m!1351213))

(declare-fun m!1351227 () Bool)

(assert (=> b!1463887 m!1351227))

(declare-fun m!1351229 () Bool)

(assert (=> b!1463885 m!1351229))

(assert (=> b!1463885 m!1351213))

(declare-fun m!1351231 () Bool)

(assert (=> b!1463899 m!1351231))

(declare-fun m!1351233 () Bool)

(assert (=> b!1463890 m!1351233))

(declare-fun m!1351235 () Bool)

(assert (=> b!1463888 m!1351235))

(assert (=> b!1463888 m!1351235))

(declare-fun m!1351237 () Bool)

(assert (=> b!1463888 m!1351237))

(declare-fun m!1351239 () Bool)

(assert (=> b!1463898 m!1351239))

(assert (=> b!1463898 m!1351239))

(declare-fun m!1351241 () Bool)

(assert (=> b!1463898 m!1351241))

(declare-fun m!1351243 () Bool)

(assert (=> b!1463898 m!1351243))

(declare-fun m!1351245 () Bool)

(assert (=> b!1463898 m!1351245))

(assert (=> b!1463886 m!1351243))

(declare-fun m!1351247 () Bool)

(assert (=> b!1463886 m!1351247))

(assert (=> b!1463891 m!1351213))

(assert (=> b!1463891 m!1351213))

(declare-fun m!1351249 () Bool)

(assert (=> b!1463891 m!1351249))

(declare-fun m!1351251 () Bool)

(assert (=> b!1463900 m!1351251))

(declare-fun m!1351253 () Bool)

(assert (=> b!1463900 m!1351253))

(declare-fun m!1351255 () Bool)

(assert (=> b!1463881 m!1351255))

(assert (=> b!1463881 m!1351243))

(declare-fun m!1351257 () Bool)

(assert (=> b!1463881 m!1351257))

(declare-fun m!1351259 () Bool)

(assert (=> b!1463881 m!1351259))

(declare-fun m!1351261 () Bool)

(assert (=> b!1463881 m!1351261))

(assert (=> b!1463881 m!1351213))

(declare-fun m!1351263 () Bool)

(assert (=> b!1463895 m!1351263))

(assert (=> b!1463895 m!1351253))

(assert (=> b!1463901 m!1351213))

(assert (=> b!1463901 m!1351213))

(declare-fun m!1351265 () Bool)

(assert (=> b!1463901 m!1351265))

(assert (=> b!1463901 m!1351265))

(assert (=> b!1463901 m!1351213))

(declare-fun m!1351267 () Bool)

(assert (=> b!1463901 m!1351267))

(push 1)

