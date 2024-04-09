; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126974 () Bool)

(assert start!126974)

(declare-fun b!1491890 () Bool)

(declare-fun e!835850 () Bool)

(declare-fun e!835848 () Bool)

(assert (=> b!1491890 (= e!835850 e!835848)))

(declare-fun res!1015114 () Bool)

(assert (=> b!1491890 (=> (not res!1015114) (not e!835848))))

(declare-datatypes ((SeekEntryResult!12362 0))(
  ( (MissingZero!12362 (index!51839 (_ BitVec 32))) (Found!12362 (index!51840 (_ BitVec 32))) (Intermediate!12362 (undefined!13174 Bool) (index!51841 (_ BitVec 32)) (x!133421 (_ BitVec 32))) (Undefined!12362) (MissingVacant!12362 (index!51842 (_ BitVec 32))) )
))
(declare-fun lt!650394 () SeekEntryResult!12362)

(declare-datatypes ((array!99664 0))(
  ( (array!99665 (arr!48099 (Array (_ BitVec 32) (_ BitVec 64))) (size!48650 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99664)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99664 (_ BitVec 32)) SeekEntryResult!12362)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491890 (= res!1015114 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48099 a!2862) j!93) mask!2687) (select (arr!48099 a!2862) j!93) a!2862 mask!2687) lt!650394))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1491890 (= lt!650394 (Intermediate!12362 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1491891 () Bool)

(declare-fun res!1015111 () Bool)

(declare-fun e!835852 () Bool)

(assert (=> b!1491891 (=> (not res!1015111) (not e!835852))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1491891 (= res!1015111 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1491893 () Bool)

(declare-fun res!1015112 () Bool)

(declare-fun e!835853 () Bool)

(assert (=> b!1491893 (=> (not res!1015112) (not e!835853))))

(declare-datatypes ((List!34780 0))(
  ( (Nil!34777) (Cons!34776 (h!36159 (_ BitVec 64)) (t!49481 List!34780)) )
))
(declare-fun arrayNoDuplicates!0 (array!99664 (_ BitVec 32) List!34780) Bool)

(assert (=> b!1491893 (= res!1015112 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34777))))

(declare-fun b!1491894 () Bool)

(declare-fun res!1015119 () Bool)

(assert (=> b!1491894 (=> (not res!1015119) (not e!835853))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1491894 (= res!1015119 (validKeyInArray!0 (select (arr!48099 a!2862) i!1006)))))

(declare-fun e!835846 () Bool)

(declare-fun lt!650393 () SeekEntryResult!12362)

(declare-fun b!1491895 () Bool)

(declare-fun lt!650395 () array!99664)

(declare-fun lt!650398 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1491895 (= e!835846 (= lt!650393 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650398 lt!650395 mask!2687)))))

(declare-fun b!1491896 () Bool)

(declare-fun e!835851 () Bool)

(assert (=> b!1491896 (= e!835852 (not e!835851))))

(declare-fun res!1015108 () Bool)

(assert (=> b!1491896 (=> res!1015108 e!835851)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1491896 (= res!1015108 (or (and (= (select (arr!48099 a!2862) index!646) (select (store (arr!48099 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48099 a!2862) index!646) (select (arr!48099 a!2862) j!93))) (= (select (arr!48099 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!835847 () Bool)

(assert (=> b!1491896 e!835847))

(declare-fun res!1015121 () Bool)

(assert (=> b!1491896 (=> (not res!1015121) (not e!835847))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99664 (_ BitVec 32)) Bool)

(assert (=> b!1491896 (= res!1015121 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50012 0))(
  ( (Unit!50013) )
))
(declare-fun lt!650397 () Unit!50012)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99664 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50012)

(assert (=> b!1491896 (= lt!650397 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1491897 () Bool)

(declare-fun res!1015116 () Bool)

(assert (=> b!1491897 (=> (not res!1015116) (not e!835848))))

(assert (=> b!1491897 (= res!1015116 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48099 a!2862) j!93) a!2862 mask!2687) lt!650394))))

(declare-fun b!1491898 () Bool)

(declare-fun res!1015122 () Bool)

(assert (=> b!1491898 (=> (not res!1015122) (not e!835853))))

(assert (=> b!1491898 (= res!1015122 (validKeyInArray!0 (select (arr!48099 a!2862) j!93)))))

(declare-fun b!1491899 () Bool)

(declare-fun res!1015120 () Bool)

(assert (=> b!1491899 (=> (not res!1015120) (not e!835852))))

(assert (=> b!1491899 (= res!1015120 e!835846)))

(declare-fun c!137921 () Bool)

(assert (=> b!1491899 (= c!137921 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1491900 () Bool)

(declare-fun res!1015118 () Bool)

(assert (=> b!1491900 (=> (not res!1015118) (not e!835847))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99664 (_ BitVec 32)) SeekEntryResult!12362)

(assert (=> b!1491900 (= res!1015118 (= (seekEntryOrOpen!0 (select (arr!48099 a!2862) j!93) a!2862 mask!2687) (Found!12362 j!93)))))

(declare-fun b!1491901 () Bool)

(assert (=> b!1491901 (= e!835853 e!835850)))

(declare-fun res!1015113 () Bool)

(assert (=> b!1491901 (=> (not res!1015113) (not e!835850))))

(assert (=> b!1491901 (= res!1015113 (= (select (store (arr!48099 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1491901 (= lt!650395 (array!99665 (store (arr!48099 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48650 a!2862)))))

(declare-fun b!1491902 () Bool)

(declare-fun res!1015110 () Bool)

(assert (=> b!1491902 (=> (not res!1015110) (not e!835853))))

(assert (=> b!1491902 (= res!1015110 (and (= (size!48650 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48650 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48650 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1491903 () Bool)

(declare-fun res!1015115 () Bool)

(assert (=> b!1491903 (=> (not res!1015115) (not e!835853))))

(assert (=> b!1491903 (= res!1015115 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48650 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48650 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48650 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1491904 () Bool)

(assert (=> b!1491904 (= e!835851 true)))

(declare-fun lt!650396 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491904 (= lt!650396 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun res!1015107 () Bool)

(assert (=> start!126974 (=> (not res!1015107) (not e!835853))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126974 (= res!1015107 (validMask!0 mask!2687))))

(assert (=> start!126974 e!835853))

(assert (=> start!126974 true))

(declare-fun array_inv!37044 (array!99664) Bool)

(assert (=> start!126974 (array_inv!37044 a!2862)))

(declare-fun b!1491892 () Bool)

(declare-fun res!1015117 () Bool)

(assert (=> b!1491892 (=> (not res!1015117) (not e!835853))))

(assert (=> b!1491892 (= res!1015117 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1491905 () Bool)

(assert (=> b!1491905 (= e!835848 e!835852)))

(declare-fun res!1015109 () Bool)

(assert (=> b!1491905 (=> (not res!1015109) (not e!835852))))

(assert (=> b!1491905 (= res!1015109 (= lt!650393 (Intermediate!12362 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1491905 (= lt!650393 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650398 mask!2687) lt!650398 lt!650395 mask!2687))))

(assert (=> b!1491905 (= lt!650398 (select (store (arr!48099 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1491906 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99664 (_ BitVec 32)) SeekEntryResult!12362)

(assert (=> b!1491906 (= e!835846 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650398 lt!650395 mask!2687) (seekEntryOrOpen!0 lt!650398 lt!650395 mask!2687)))))

(declare-fun b!1491907 () Bool)

(assert (=> b!1491907 (= e!835847 (or (= (select (arr!48099 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48099 a!2862) intermediateBeforeIndex!19) (select (arr!48099 a!2862) j!93))))))

(assert (= (and start!126974 res!1015107) b!1491902))

(assert (= (and b!1491902 res!1015110) b!1491894))

(assert (= (and b!1491894 res!1015119) b!1491898))

(assert (= (and b!1491898 res!1015122) b!1491892))

(assert (= (and b!1491892 res!1015117) b!1491893))

(assert (= (and b!1491893 res!1015112) b!1491903))

(assert (= (and b!1491903 res!1015115) b!1491901))

(assert (= (and b!1491901 res!1015113) b!1491890))

(assert (= (and b!1491890 res!1015114) b!1491897))

(assert (= (and b!1491897 res!1015116) b!1491905))

(assert (= (and b!1491905 res!1015109) b!1491899))

(assert (= (and b!1491899 c!137921) b!1491895))

(assert (= (and b!1491899 (not c!137921)) b!1491906))

(assert (= (and b!1491899 res!1015120) b!1491891))

(assert (= (and b!1491891 res!1015111) b!1491896))

(assert (= (and b!1491896 res!1015121) b!1491900))

(assert (= (and b!1491900 res!1015118) b!1491907))

(assert (= (and b!1491896 (not res!1015108)) b!1491904))

(declare-fun m!1376051 () Bool)

(assert (=> b!1491892 m!1376051))

(declare-fun m!1376053 () Bool)

(assert (=> b!1491905 m!1376053))

(assert (=> b!1491905 m!1376053))

(declare-fun m!1376055 () Bool)

(assert (=> b!1491905 m!1376055))

(declare-fun m!1376057 () Bool)

(assert (=> b!1491905 m!1376057))

(declare-fun m!1376059 () Bool)

(assert (=> b!1491905 m!1376059))

(declare-fun m!1376061 () Bool)

(assert (=> b!1491893 m!1376061))

(assert (=> b!1491901 m!1376057))

(declare-fun m!1376063 () Bool)

(assert (=> b!1491901 m!1376063))

(declare-fun m!1376065 () Bool)

(assert (=> b!1491904 m!1376065))

(declare-fun m!1376067 () Bool)

(assert (=> start!126974 m!1376067))

(declare-fun m!1376069 () Bool)

(assert (=> start!126974 m!1376069))

(declare-fun m!1376071 () Bool)

(assert (=> b!1491897 m!1376071))

(assert (=> b!1491897 m!1376071))

(declare-fun m!1376073 () Bool)

(assert (=> b!1491897 m!1376073))

(assert (=> b!1491900 m!1376071))

(assert (=> b!1491900 m!1376071))

(declare-fun m!1376075 () Bool)

(assert (=> b!1491900 m!1376075))

(declare-fun m!1376077 () Bool)

(assert (=> b!1491906 m!1376077))

(declare-fun m!1376079 () Bool)

(assert (=> b!1491906 m!1376079))

(declare-fun m!1376081 () Bool)

(assert (=> b!1491895 m!1376081))

(assert (=> b!1491890 m!1376071))

(assert (=> b!1491890 m!1376071))

(declare-fun m!1376083 () Bool)

(assert (=> b!1491890 m!1376083))

(assert (=> b!1491890 m!1376083))

(assert (=> b!1491890 m!1376071))

(declare-fun m!1376085 () Bool)

(assert (=> b!1491890 m!1376085))

(declare-fun m!1376087 () Bool)

(assert (=> b!1491896 m!1376087))

(assert (=> b!1491896 m!1376057))

(declare-fun m!1376089 () Bool)

(assert (=> b!1491896 m!1376089))

(declare-fun m!1376091 () Bool)

(assert (=> b!1491896 m!1376091))

(declare-fun m!1376093 () Bool)

(assert (=> b!1491896 m!1376093))

(assert (=> b!1491896 m!1376071))

(assert (=> b!1491898 m!1376071))

(assert (=> b!1491898 m!1376071))

(declare-fun m!1376095 () Bool)

(assert (=> b!1491898 m!1376095))

(declare-fun m!1376097 () Bool)

(assert (=> b!1491907 m!1376097))

(assert (=> b!1491907 m!1376071))

(declare-fun m!1376099 () Bool)

(assert (=> b!1491894 m!1376099))

(assert (=> b!1491894 m!1376099))

(declare-fun m!1376101 () Bool)

(assert (=> b!1491894 m!1376101))

(push 1)

