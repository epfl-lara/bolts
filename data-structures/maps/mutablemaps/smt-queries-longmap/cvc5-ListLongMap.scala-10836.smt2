; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126904 () Bool)

(assert start!126904)

(declare-fun b!1489972 () Bool)

(declare-fun res!1013414 () Bool)

(declare-fun e!835005 () Bool)

(assert (=> b!1489972 (=> (not res!1013414) (not e!835005))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99594 0))(
  ( (array!99595 (arr!48064 (Array (_ BitVec 32) (_ BitVec 64))) (size!48615 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99594)

(assert (=> b!1489972 (= res!1013414 (and (= (size!48615 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48615 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48615 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1489973 () Bool)

(declare-fun res!1013427 () Bool)

(declare-fun e!835006 () Bool)

(assert (=> b!1489973 (=> res!1013427 e!835006)))

(declare-fun e!835004 () Bool)

(assert (=> b!1489973 (= res!1013427 e!835004)))

(declare-fun c!137810 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1489973 (= c!137810 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1489974 () Bool)

(declare-fun e!834999 () Bool)

(assert (=> b!1489974 (= e!835005 e!834999)))

(declare-fun res!1013430 () Bool)

(assert (=> b!1489974 (=> (not res!1013430) (not e!834999))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1489974 (= res!1013430 (= (select (store (arr!48064 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!649747 () array!99594)

(assert (=> b!1489974 (= lt!649747 (array!99595 (store (arr!48064 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48615 a!2862)))))

(declare-fun b!1489975 () Bool)

(assert (=> b!1489975 (= e!835006 true)))

(declare-datatypes ((SeekEntryResult!12327 0))(
  ( (MissingZero!12327 (index!51699 (_ BitVec 32))) (Found!12327 (index!51700 (_ BitVec 32))) (Intermediate!12327 (undefined!13139 Bool) (index!51701 (_ BitVec 32)) (x!133298 (_ BitVec 32))) (Undefined!12327) (MissingVacant!12327 (index!51702 (_ BitVec 32))) )
))
(declare-fun lt!649743 () SeekEntryResult!12327)

(declare-fun lt!649745 () SeekEntryResult!12327)

(assert (=> b!1489975 (= lt!649743 lt!649745)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((Unit!49942 0))(
  ( (Unit!49943) )
))
(declare-fun lt!649749 () Unit!49942)

(declare-fun lt!649744 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99594 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49942)

(assert (=> b!1489975 (= lt!649749 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!649744 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun res!1013425 () Bool)

(assert (=> start!126904 (=> (not res!1013425) (not e!835005))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126904 (= res!1013425 (validMask!0 mask!2687))))

(assert (=> start!126904 e!835005))

(assert (=> start!126904 true))

(declare-fun array_inv!37009 (array!99594) Bool)

(assert (=> start!126904 (array_inv!37009 a!2862)))

(declare-fun b!1489976 () Bool)

(declare-fun e!835003 () Bool)

(declare-fun lt!649748 () SeekEntryResult!12327)

(declare-fun lt!649746 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99594 (_ BitVec 32)) SeekEntryResult!12327)

(assert (=> b!1489976 (= e!835003 (= lt!649748 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649746 lt!649747 mask!2687)))))

(declare-fun b!1489977 () Bool)

(declare-fun res!1013426 () Bool)

(assert (=> b!1489977 (=> res!1013426 e!835006)))

(declare-fun lt!649742 () SeekEntryResult!12327)

(assert (=> b!1489977 (= res!1013426 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649744 (select (arr!48064 a!2862) j!93) a!2862 mask!2687) lt!649742)))))

(declare-fun b!1489978 () Bool)

(declare-fun res!1013418 () Bool)

(declare-fun e!835002 () Bool)

(assert (=> b!1489978 (=> (not res!1013418) (not e!835002))))

(assert (=> b!1489978 (= res!1013418 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1489979 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99594 (_ BitVec 32)) SeekEntryResult!12327)

(assert (=> b!1489979 (= e!835004 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649744 intermediateAfterIndex!19 lt!649746 lt!649747 mask!2687) lt!649745)))))

(declare-fun b!1489980 () Bool)

(declare-fun res!1013421 () Bool)

(declare-fun e!835000 () Bool)

(assert (=> b!1489980 (=> (not res!1013421) (not e!835000))))

(assert (=> b!1489980 (= res!1013421 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48064 a!2862) j!93) a!2862 mask!2687) lt!649742))))

(declare-fun b!1489981 () Bool)

(declare-fun res!1013422 () Bool)

(assert (=> b!1489981 (=> (not res!1013422) (not e!835005))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1489981 (= res!1013422 (validKeyInArray!0 (select (arr!48064 a!2862) i!1006)))))

(declare-fun b!1489982 () Bool)

(declare-fun res!1013420 () Bool)

(assert (=> b!1489982 (=> (not res!1013420) (not e!835005))))

(assert (=> b!1489982 (= res!1013420 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48615 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48615 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48615 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1489983 () Bool)

(declare-fun res!1013429 () Bool)

(assert (=> b!1489983 (=> (not res!1013429) (not e!835005))))

(declare-datatypes ((List!34745 0))(
  ( (Nil!34742) (Cons!34741 (h!36124 (_ BitVec 64)) (t!49446 List!34745)) )
))
(declare-fun arrayNoDuplicates!0 (array!99594 (_ BitVec 32) List!34745) Bool)

(assert (=> b!1489983 (= res!1013429 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34742))))

(declare-fun b!1489984 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99594 (_ BitVec 32)) SeekEntryResult!12327)

(assert (=> b!1489984 (= e!835003 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649746 lt!649747 mask!2687) (seekEntryOrOpen!0 lt!649746 lt!649747 mask!2687)))))

(declare-fun b!1489985 () Bool)

(declare-fun res!1013416 () Bool)

(assert (=> b!1489985 (=> (not res!1013416) (not e!835005))))

(assert (=> b!1489985 (= res!1013416 (validKeyInArray!0 (select (arr!48064 a!2862) j!93)))))

(declare-fun b!1489986 () Bool)

(declare-fun res!1013413 () Bool)

(assert (=> b!1489986 (=> (not res!1013413) (not e!835002))))

(assert (=> b!1489986 (= res!1013413 e!835003)))

(declare-fun c!137809 () Bool)

(assert (=> b!1489986 (= c!137809 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1489987 () Bool)

(assert (=> b!1489987 (= e!834999 e!835000)))

(declare-fun res!1013417 () Bool)

(assert (=> b!1489987 (=> (not res!1013417) (not e!835000))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489987 (= res!1013417 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48064 a!2862) j!93) mask!2687) (select (arr!48064 a!2862) j!93) a!2862 mask!2687) lt!649742))))

(assert (=> b!1489987 (= lt!649742 (Intermediate!12327 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1489988 () Bool)

(declare-fun e!835007 () Bool)

(assert (=> b!1489988 (= e!835007 e!835006)))

(declare-fun res!1013415 () Bool)

(assert (=> b!1489988 (=> res!1013415 e!835006)))

(assert (=> b!1489988 (= res!1013415 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649744 #b00000000000000000000000000000000) (bvsge lt!649744 (size!48615 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489988 (= lt!649744 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1489988 (= lt!649745 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649746 lt!649747 mask!2687))))

(assert (=> b!1489988 (= lt!649745 (seekEntryOrOpen!0 lt!649746 lt!649747 mask!2687))))

(declare-fun b!1489989 () Bool)

(declare-fun res!1013423 () Bool)

(assert (=> b!1489989 (=> (not res!1013423) (not e!835005))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99594 (_ BitVec 32)) Bool)

(assert (=> b!1489989 (= res!1013423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1489990 () Bool)

(assert (=> b!1489990 (= e!835004 (not (= lt!649748 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649744 lt!649746 lt!649747 mask!2687))))))

(declare-fun b!1489991 () Bool)

(assert (=> b!1489991 (= e!835000 e!835002)))

(declare-fun res!1013428 () Bool)

(assert (=> b!1489991 (=> (not res!1013428) (not e!835002))))

(assert (=> b!1489991 (= res!1013428 (= lt!649748 (Intermediate!12327 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1489991 (= lt!649748 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649746 mask!2687) lt!649746 lt!649747 mask!2687))))

(assert (=> b!1489991 (= lt!649746 (select (store (arr!48064 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1489992 () Bool)

(declare-fun res!1013424 () Bool)

(assert (=> b!1489992 (=> res!1013424 e!835006)))

(assert (=> b!1489992 (= res!1013424 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1489993 () Bool)

(assert (=> b!1489993 (= e!835002 (not e!835007))))

(declare-fun res!1013419 () Bool)

(assert (=> b!1489993 (=> res!1013419 e!835007)))

(assert (=> b!1489993 (= res!1013419 (or (and (= (select (arr!48064 a!2862) index!646) (select (store (arr!48064 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48064 a!2862) index!646) (select (arr!48064 a!2862) j!93))) (= (select (arr!48064 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1489993 (and (= lt!649743 (Found!12327 j!93)) (or (= (select (arr!48064 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48064 a!2862) intermediateBeforeIndex!19) (select (arr!48064 a!2862) j!93))) (let ((bdg!54770 (select (store (arr!48064 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48064 a!2862) index!646) bdg!54770) (= (select (arr!48064 a!2862) index!646) (select (arr!48064 a!2862) j!93))) (= (select (arr!48064 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54770 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1489993 (= lt!649743 (seekEntryOrOpen!0 (select (arr!48064 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1489993 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!649750 () Unit!49942)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99594 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49942)

(assert (=> b!1489993 (= lt!649750 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!126904 res!1013425) b!1489972))

(assert (= (and b!1489972 res!1013414) b!1489981))

(assert (= (and b!1489981 res!1013422) b!1489985))

(assert (= (and b!1489985 res!1013416) b!1489989))

(assert (= (and b!1489989 res!1013423) b!1489983))

(assert (= (and b!1489983 res!1013429) b!1489982))

(assert (= (and b!1489982 res!1013420) b!1489974))

(assert (= (and b!1489974 res!1013430) b!1489987))

(assert (= (and b!1489987 res!1013417) b!1489980))

(assert (= (and b!1489980 res!1013421) b!1489991))

(assert (= (and b!1489991 res!1013428) b!1489986))

(assert (= (and b!1489986 c!137809) b!1489976))

(assert (= (and b!1489986 (not c!137809)) b!1489984))

(assert (= (and b!1489986 res!1013413) b!1489978))

(assert (= (and b!1489978 res!1013418) b!1489993))

(assert (= (and b!1489993 (not res!1013419)) b!1489988))

(assert (= (and b!1489988 (not res!1013415)) b!1489977))

(assert (= (and b!1489977 (not res!1013426)) b!1489973))

(assert (= (and b!1489973 c!137810) b!1489990))

(assert (= (and b!1489973 (not c!137810)) b!1489979))

(assert (= (and b!1489973 (not res!1013427)) b!1489992))

(assert (= (and b!1489992 (not res!1013424)) b!1489975))

(declare-fun m!1374207 () Bool)

(assert (=> b!1489981 m!1374207))

(assert (=> b!1489981 m!1374207))

(declare-fun m!1374209 () Bool)

(assert (=> b!1489981 m!1374209))

(declare-fun m!1374211 () Bool)

(assert (=> b!1489984 m!1374211))

(declare-fun m!1374213 () Bool)

(assert (=> b!1489984 m!1374213))

(declare-fun m!1374215 () Bool)

(assert (=> b!1489976 m!1374215))

(declare-fun m!1374217 () Bool)

(assert (=> b!1489985 m!1374217))

(assert (=> b!1489985 m!1374217))

(declare-fun m!1374219 () Bool)

(assert (=> b!1489985 m!1374219))

(assert (=> b!1489980 m!1374217))

(assert (=> b!1489980 m!1374217))

(declare-fun m!1374221 () Bool)

(assert (=> b!1489980 m!1374221))

(declare-fun m!1374223 () Bool)

(assert (=> b!1489974 m!1374223))

(declare-fun m!1374225 () Bool)

(assert (=> b!1489974 m!1374225))

(declare-fun m!1374227 () Bool)

(assert (=> b!1489983 m!1374227))

(declare-fun m!1374229 () Bool)

(assert (=> start!126904 m!1374229))

(declare-fun m!1374231 () Bool)

(assert (=> start!126904 m!1374231))

(assert (=> b!1489987 m!1374217))

(assert (=> b!1489987 m!1374217))

(declare-fun m!1374233 () Bool)

(assert (=> b!1489987 m!1374233))

(assert (=> b!1489987 m!1374233))

(assert (=> b!1489987 m!1374217))

(declare-fun m!1374235 () Bool)

(assert (=> b!1489987 m!1374235))

(assert (=> b!1489977 m!1374217))

(assert (=> b!1489977 m!1374217))

(declare-fun m!1374237 () Bool)

(assert (=> b!1489977 m!1374237))

(declare-fun m!1374239 () Bool)

(assert (=> b!1489990 m!1374239))

(declare-fun m!1374241 () Bool)

(assert (=> b!1489991 m!1374241))

(assert (=> b!1489991 m!1374241))

(declare-fun m!1374243 () Bool)

(assert (=> b!1489991 m!1374243))

(assert (=> b!1489991 m!1374223))

(declare-fun m!1374245 () Bool)

(assert (=> b!1489991 m!1374245))

(declare-fun m!1374247 () Bool)

(assert (=> b!1489993 m!1374247))

(assert (=> b!1489993 m!1374223))

(declare-fun m!1374249 () Bool)

(assert (=> b!1489993 m!1374249))

(declare-fun m!1374251 () Bool)

(assert (=> b!1489993 m!1374251))

(declare-fun m!1374253 () Bool)

(assert (=> b!1489993 m!1374253))

(assert (=> b!1489993 m!1374217))

(declare-fun m!1374255 () Bool)

(assert (=> b!1489993 m!1374255))

(declare-fun m!1374257 () Bool)

(assert (=> b!1489993 m!1374257))

(assert (=> b!1489993 m!1374217))

(declare-fun m!1374259 () Bool)

(assert (=> b!1489975 m!1374259))

(declare-fun m!1374261 () Bool)

(assert (=> b!1489989 m!1374261))

(declare-fun m!1374263 () Bool)

(assert (=> b!1489979 m!1374263))

(declare-fun m!1374265 () Bool)

(assert (=> b!1489988 m!1374265))

(assert (=> b!1489988 m!1374211))

(assert (=> b!1489988 m!1374213))

(push 1)

