; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125206 () Bool)

(assert start!125206)

(declare-fun b!1458970 () Bool)

(declare-fun e!820584 () Bool)

(declare-fun e!820590 () Bool)

(assert (=> b!1458970 (= e!820584 e!820590)))

(declare-fun res!989102 () Bool)

(assert (=> b!1458970 (=> res!989102 e!820590)))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!98571 0))(
  ( (array!98572 (arr!47569 (Array (_ BitVec 32) (_ BitVec 64))) (size!48120 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98571)

(declare-fun lt!639224 () (_ BitVec 32))

(assert (=> b!1458970 (= res!989102 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639224 #b00000000000000000000000000000000) (bvsge lt!639224 (size!48120 a!2862))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458970 (= lt!639224 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!639232 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11844 0))(
  ( (MissingZero!11844 (index!49767 (_ BitVec 32))) (Found!11844 (index!49768 (_ BitVec 32))) (Intermediate!11844 (undefined!12656 Bool) (index!49769 (_ BitVec 32)) (x!131384 (_ BitVec 32))) (Undefined!11844) (MissingVacant!11844 (index!49770 (_ BitVec 32))) )
))
(declare-fun lt!639225 () SeekEntryResult!11844)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!639231 () array!98571)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98571 (_ BitVec 32)) SeekEntryResult!11844)

(assert (=> b!1458970 (= lt!639225 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639232 lt!639231 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98571 (_ BitVec 32)) SeekEntryResult!11844)

(assert (=> b!1458970 (= lt!639225 (seekEntryOrOpen!0 lt!639232 lt!639231 mask!2687))))

(declare-fun res!989090 () Bool)

(declare-fun e!820591 () Bool)

(assert (=> start!125206 (=> (not res!989090) (not e!820591))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125206 (= res!989090 (validMask!0 mask!2687))))

(assert (=> start!125206 e!820591))

(assert (=> start!125206 true))

(declare-fun array_inv!36514 (array!98571) Bool)

(assert (=> start!125206 (array_inv!36514 a!2862)))

(declare-fun b!1458971 () Bool)

(declare-fun e!820586 () Bool)

(assert (=> b!1458971 (= e!820586 (not e!820584))))

(declare-fun res!989093 () Bool)

(assert (=> b!1458971 (=> res!989093 e!820584)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1458971 (= res!989093 (or (and (= (select (arr!47569 a!2862) index!646) (select (store (arr!47569 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47569 a!2862) index!646) (select (arr!47569 a!2862) j!93))) (= (select (arr!47569 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!639228 () SeekEntryResult!11844)

(assert (=> b!1458971 (and (= lt!639228 (Found!11844 j!93)) (or (= (select (arr!47569 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47569 a!2862) intermediateBeforeIndex!19) (select (arr!47569 a!2862) j!93))) (let ((bdg!53481 (select (store (arr!47569 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47569 a!2862) index!646) bdg!53481) (= (select (arr!47569 a!2862) index!646) (select (arr!47569 a!2862) j!93))) (= (select (arr!47569 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53481 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1458971 (= lt!639228 (seekEntryOrOpen!0 (select (arr!47569 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98571 (_ BitVec 32)) Bool)

(assert (=> b!1458971 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49132 0))(
  ( (Unit!49133) )
))
(declare-fun lt!639229 () Unit!49132)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98571 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49132)

(assert (=> b!1458971 (= lt!639229 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1458972 () Bool)

(declare-fun res!989089 () Bool)

(assert (=> b!1458972 (=> (not res!989089) (not e!820591))))

(assert (=> b!1458972 (= res!989089 (and (= (size!48120 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48120 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48120 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1458973 () Bool)

(declare-fun res!989100 () Bool)

(assert (=> b!1458973 (=> res!989100 e!820590)))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1458973 (= res!989100 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1458974 () Bool)

(assert (=> b!1458974 (= e!820590 true)))

(assert (=> b!1458974 (= lt!639228 lt!639225)))

(declare-fun lt!639227 () Unit!49132)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98571 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49132)

(assert (=> b!1458974 (= lt!639227 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639224 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1458975 () Bool)

(declare-fun res!989098 () Bool)

(assert (=> b!1458975 (=> (not res!989098) (not e!820591))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1458975 (= res!989098 (validKeyInArray!0 (select (arr!47569 a!2862) i!1006)))))

(declare-fun b!1458976 () Bool)

(declare-fun res!989103 () Bool)

(assert (=> b!1458976 (=> (not res!989103) (not e!820591))))

(declare-datatypes ((List!34250 0))(
  ( (Nil!34247) (Cons!34246 (h!35596 (_ BitVec 64)) (t!48951 List!34250)) )
))
(declare-fun arrayNoDuplicates!0 (array!98571 (_ BitVec 32) List!34250) Bool)

(assert (=> b!1458976 (= res!989103 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34247))))

(declare-fun e!820592 () Bool)

(declare-fun b!1458977 () Bool)

(declare-fun lt!639226 () SeekEntryResult!11844)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98571 (_ BitVec 32)) SeekEntryResult!11844)

(assert (=> b!1458977 (= e!820592 (not (= lt!639226 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639224 lt!639232 lt!639231 mask!2687))))))

(declare-fun b!1458978 () Bool)

(assert (=> b!1458978 (= e!820592 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639224 intermediateAfterIndex!19 lt!639232 lt!639231 mask!2687) lt!639225)))))

(declare-fun b!1458979 () Bool)

(declare-fun res!989096 () Bool)

(declare-fun e!820588 () Bool)

(assert (=> b!1458979 (=> (not res!989096) (not e!820588))))

(declare-fun lt!639230 () SeekEntryResult!11844)

(assert (=> b!1458979 (= res!989096 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47569 a!2862) j!93) a!2862 mask!2687) lt!639230))))

(declare-fun b!1458980 () Bool)

(declare-fun e!820585 () Bool)

(assert (=> b!1458980 (= e!820585 (= lt!639226 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639232 lt!639231 mask!2687)))))

(declare-fun b!1458981 () Bool)

(declare-fun e!820587 () Bool)

(assert (=> b!1458981 (= e!820587 e!820588)))

(declare-fun res!989092 () Bool)

(assert (=> b!1458981 (=> (not res!989092) (not e!820588))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458981 (= res!989092 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47569 a!2862) j!93) mask!2687) (select (arr!47569 a!2862) j!93) a!2862 mask!2687) lt!639230))))

(assert (=> b!1458981 (= lt!639230 (Intermediate!11844 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1458982 () Bool)

(declare-fun res!989088 () Bool)

(assert (=> b!1458982 (=> (not res!989088) (not e!820591))))

(assert (=> b!1458982 (= res!989088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1458983 () Bool)

(declare-fun res!989091 () Bool)

(assert (=> b!1458983 (=> (not res!989091) (not e!820586))))

(assert (=> b!1458983 (= res!989091 e!820585)))

(declare-fun c!134455 () Bool)

(assert (=> b!1458983 (= c!134455 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1458984 () Bool)

(assert (=> b!1458984 (= e!820585 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639232 lt!639231 mask!2687) (seekEntryOrOpen!0 lt!639232 lt!639231 mask!2687)))))

(declare-fun b!1458985 () Bool)

(declare-fun res!989101 () Bool)

(assert (=> b!1458985 (=> res!989101 e!820590)))

(assert (=> b!1458985 (= res!989101 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639224 (select (arr!47569 a!2862) j!93) a!2862 mask!2687) lt!639230)))))

(declare-fun b!1458986 () Bool)

(declare-fun res!989094 () Bool)

(assert (=> b!1458986 (=> (not res!989094) (not e!820586))))

(assert (=> b!1458986 (= res!989094 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1458987 () Bool)

(assert (=> b!1458987 (= e!820591 e!820587)))

(declare-fun res!989099 () Bool)

(assert (=> b!1458987 (=> (not res!989099) (not e!820587))))

(assert (=> b!1458987 (= res!989099 (= (select (store (arr!47569 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1458987 (= lt!639231 (array!98572 (store (arr!47569 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48120 a!2862)))))

(declare-fun b!1458988 () Bool)

(declare-fun res!989097 () Bool)

(assert (=> b!1458988 (=> res!989097 e!820590)))

(assert (=> b!1458988 (= res!989097 e!820592)))

(declare-fun c!134456 () Bool)

(assert (=> b!1458988 (= c!134456 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1458989 () Bool)

(declare-fun res!989095 () Bool)

(assert (=> b!1458989 (=> (not res!989095) (not e!820591))))

(assert (=> b!1458989 (= res!989095 (validKeyInArray!0 (select (arr!47569 a!2862) j!93)))))

(declare-fun b!1458990 () Bool)

(assert (=> b!1458990 (= e!820588 e!820586)))

(declare-fun res!989087 () Bool)

(assert (=> b!1458990 (=> (not res!989087) (not e!820586))))

(assert (=> b!1458990 (= res!989087 (= lt!639226 (Intermediate!11844 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1458990 (= lt!639226 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639232 mask!2687) lt!639232 lt!639231 mask!2687))))

(assert (=> b!1458990 (= lt!639232 (select (store (arr!47569 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1458991 () Bool)

(declare-fun res!989086 () Bool)

(assert (=> b!1458991 (=> (not res!989086) (not e!820591))))

(assert (=> b!1458991 (= res!989086 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48120 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48120 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48120 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!125206 res!989090) b!1458972))

(assert (= (and b!1458972 res!989089) b!1458975))

(assert (= (and b!1458975 res!989098) b!1458989))

(assert (= (and b!1458989 res!989095) b!1458982))

(assert (= (and b!1458982 res!989088) b!1458976))

(assert (= (and b!1458976 res!989103) b!1458991))

(assert (= (and b!1458991 res!989086) b!1458987))

(assert (= (and b!1458987 res!989099) b!1458981))

(assert (= (and b!1458981 res!989092) b!1458979))

(assert (= (and b!1458979 res!989096) b!1458990))

(assert (= (and b!1458990 res!989087) b!1458983))

(assert (= (and b!1458983 c!134455) b!1458980))

(assert (= (and b!1458983 (not c!134455)) b!1458984))

(assert (= (and b!1458983 res!989091) b!1458986))

(assert (= (and b!1458986 res!989094) b!1458971))

(assert (= (and b!1458971 (not res!989093)) b!1458970))

(assert (= (and b!1458970 (not res!989102)) b!1458985))

(assert (= (and b!1458985 (not res!989101)) b!1458988))

(assert (= (and b!1458988 c!134456) b!1458977))

(assert (= (and b!1458988 (not c!134456)) b!1458978))

(assert (= (and b!1458988 (not res!989097)) b!1458973))

(assert (= (and b!1458973 (not res!989100)) b!1458974))

(declare-fun m!1346823 () Bool)

(assert (=> b!1458982 m!1346823))

(declare-fun m!1346825 () Bool)

(assert (=> b!1458985 m!1346825))

(assert (=> b!1458985 m!1346825))

(declare-fun m!1346827 () Bool)

(assert (=> b!1458985 m!1346827))

(declare-fun m!1346829 () Bool)

(assert (=> b!1458975 m!1346829))

(assert (=> b!1458975 m!1346829))

(declare-fun m!1346831 () Bool)

(assert (=> b!1458975 m!1346831))

(declare-fun m!1346833 () Bool)

(assert (=> b!1458971 m!1346833))

(declare-fun m!1346835 () Bool)

(assert (=> b!1458971 m!1346835))

(declare-fun m!1346837 () Bool)

(assert (=> b!1458971 m!1346837))

(declare-fun m!1346839 () Bool)

(assert (=> b!1458971 m!1346839))

(declare-fun m!1346841 () Bool)

(assert (=> b!1458971 m!1346841))

(assert (=> b!1458971 m!1346825))

(declare-fun m!1346843 () Bool)

(assert (=> b!1458971 m!1346843))

(declare-fun m!1346845 () Bool)

(assert (=> b!1458971 m!1346845))

(assert (=> b!1458971 m!1346825))

(assert (=> b!1458979 m!1346825))

(assert (=> b!1458979 m!1346825))

(declare-fun m!1346847 () Bool)

(assert (=> b!1458979 m!1346847))

(assert (=> b!1458989 m!1346825))

(assert (=> b!1458989 m!1346825))

(declare-fun m!1346849 () Bool)

(assert (=> b!1458989 m!1346849))

(declare-fun m!1346851 () Bool)

(assert (=> b!1458984 m!1346851))

(declare-fun m!1346853 () Bool)

(assert (=> b!1458984 m!1346853))

(declare-fun m!1346855 () Bool)

(assert (=> b!1458990 m!1346855))

(assert (=> b!1458990 m!1346855))

(declare-fun m!1346857 () Bool)

(assert (=> b!1458990 m!1346857))

(assert (=> b!1458990 m!1346835))

(declare-fun m!1346859 () Bool)

(assert (=> b!1458990 m!1346859))

(declare-fun m!1346861 () Bool)

(assert (=> b!1458974 m!1346861))

(assert (=> b!1458987 m!1346835))

(declare-fun m!1346863 () Bool)

(assert (=> b!1458987 m!1346863))

(declare-fun m!1346865 () Bool)

(assert (=> b!1458977 m!1346865))

(declare-fun m!1346867 () Bool)

(assert (=> b!1458978 m!1346867))

(declare-fun m!1346869 () Bool)

(assert (=> b!1458980 m!1346869))

(declare-fun m!1346871 () Bool)

(assert (=> b!1458976 m!1346871))

(declare-fun m!1346873 () Bool)

(assert (=> b!1458970 m!1346873))

(assert (=> b!1458970 m!1346851))

(assert (=> b!1458970 m!1346853))

(declare-fun m!1346875 () Bool)

(assert (=> start!125206 m!1346875))

(declare-fun m!1346877 () Bool)

(assert (=> start!125206 m!1346877))

(assert (=> b!1458981 m!1346825))

(assert (=> b!1458981 m!1346825))

(declare-fun m!1346879 () Bool)

(assert (=> b!1458981 m!1346879))

(assert (=> b!1458981 m!1346879))

(assert (=> b!1458981 m!1346825))

(declare-fun m!1346881 () Bool)

(assert (=> b!1458981 m!1346881))

(push 1)

