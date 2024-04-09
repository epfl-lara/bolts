; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129264 () Bool)

(assert start!129264)

(declare-fun b!1516975 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101033 0))(
  ( (array!101034 (arr!48749 (Array (_ BitVec 32) (_ BitVec 64))) (size!49300 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101033)

(declare-fun e!846430 () Bool)

(declare-datatypes ((SeekEntryResult!12941 0))(
  ( (MissingZero!12941 (index!54158 (_ BitVec 32))) (Found!12941 (index!54159 (_ BitVec 32))) (Intermediate!12941 (undefined!13753 Bool) (index!54160 (_ BitVec 32)) (x!135856 (_ BitVec 32))) (Undefined!12941) (MissingVacant!12941 (index!54161 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101033 (_ BitVec 32)) SeekEntryResult!12941)

(assert (=> b!1516975 (= e!846430 (= (seekEntry!0 (select (arr!48749 a!2804) j!70) a!2804 mask!2512) (Found!12941 j!70)))))

(declare-fun b!1516976 () Bool)

(declare-fun e!846427 () Bool)

(declare-fun e!846426 () Bool)

(assert (=> b!1516976 (= e!846427 (not e!846426))))

(declare-fun res!1036957 () Bool)

(assert (=> b!1516976 (=> res!1036957 e!846426)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1516976 (= res!1036957 (or (not (= (select (arr!48749 a!2804) j!70) (select (store (arr!48749 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1516976 e!846430))

(declare-fun res!1036951 () Bool)

(assert (=> b!1516976 (=> (not res!1036951) (not e!846430))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101033 (_ BitVec 32)) Bool)

(assert (=> b!1516976 (= res!1036951 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50706 0))(
  ( (Unit!50707) )
))
(declare-fun lt!657583 () Unit!50706)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101033 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50706)

(assert (=> b!1516976 (= lt!657583 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516977 () Bool)

(declare-fun e!846431 () Bool)

(assert (=> b!1516977 (= e!846426 e!846431)))

(declare-fun res!1036961 () Bool)

(assert (=> b!1516977 (=> res!1036961 e!846431)))

(declare-fun lt!657585 () (_ BitVec 32))

(assert (=> b!1516977 (= res!1036961 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657585 #b00000000000000000000000000000000) (bvsge lt!657585 (size!49300 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516977 (= lt!657585 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun res!1036952 () Bool)

(declare-fun e!846429 () Bool)

(assert (=> start!129264 (=> (not res!1036952) (not e!846429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129264 (= res!1036952 (validMask!0 mask!2512))))

(assert (=> start!129264 e!846429))

(assert (=> start!129264 true))

(declare-fun array_inv!37694 (array!101033) Bool)

(assert (=> start!129264 (array_inv!37694 a!2804)))

(declare-fun b!1516978 () Bool)

(declare-fun res!1036956 () Bool)

(assert (=> b!1516978 (=> (not res!1036956) (not e!846429))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516978 (= res!1036956 (validKeyInArray!0 (select (arr!48749 a!2804) i!961)))))

(declare-fun b!1516979 () Bool)

(declare-fun res!1036950 () Bool)

(assert (=> b!1516979 (=> (not res!1036950) (not e!846429))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1516979 (= res!1036950 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49300 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49300 a!2804))))))

(declare-fun b!1516980 () Bool)

(declare-fun res!1036955 () Bool)

(assert (=> b!1516980 (=> (not res!1036955) (not e!846429))))

(assert (=> b!1516980 (= res!1036955 (validKeyInArray!0 (select (arr!48749 a!2804) j!70)))))

(declare-fun b!1516981 () Bool)

(declare-fun res!1036959 () Bool)

(assert (=> b!1516981 (=> (not res!1036959) (not e!846429))))

(assert (=> b!1516981 (= res!1036959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516982 () Bool)

(declare-fun res!1036954 () Bool)

(assert (=> b!1516982 (=> (not res!1036954) (not e!846429))))

(assert (=> b!1516982 (= res!1036954 (and (= (size!49300 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49300 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49300 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516983 () Bool)

(assert (=> b!1516983 (= e!846431 true)))

(declare-fun lt!657586 () SeekEntryResult!12941)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101033 (_ BitVec 32)) SeekEntryResult!12941)

(assert (=> b!1516983 (= lt!657586 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657585 (select (arr!48749 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516984 () Bool)

(declare-fun res!1036962 () Bool)

(assert (=> b!1516984 (=> (not res!1036962) (not e!846427))))

(declare-fun lt!657582 () SeekEntryResult!12941)

(assert (=> b!1516984 (= res!1036962 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48749 a!2804) j!70) a!2804 mask!2512) lt!657582))))

(declare-fun b!1516985 () Bool)

(declare-fun res!1036958 () Bool)

(assert (=> b!1516985 (=> (not res!1036958) (not e!846429))))

(declare-datatypes ((List!35412 0))(
  ( (Nil!35409) (Cons!35408 (h!36821 (_ BitVec 64)) (t!50113 List!35412)) )
))
(declare-fun arrayNoDuplicates!0 (array!101033 (_ BitVec 32) List!35412) Bool)

(assert (=> b!1516985 (= res!1036958 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35409))))

(declare-fun b!1516986 () Bool)

(assert (=> b!1516986 (= e!846429 e!846427)))

(declare-fun res!1036953 () Bool)

(assert (=> b!1516986 (=> (not res!1036953) (not e!846427))))

(declare-fun lt!657584 () SeekEntryResult!12941)

(assert (=> b!1516986 (= res!1036953 (= lt!657584 lt!657582))))

(assert (=> b!1516986 (= lt!657582 (Intermediate!12941 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516986 (= lt!657584 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48749 a!2804) j!70) mask!2512) (select (arr!48749 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516987 () Bool)

(declare-fun res!1036960 () Bool)

(assert (=> b!1516987 (=> (not res!1036960) (not e!846427))))

(assert (=> b!1516987 (= res!1036960 (= lt!657584 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48749 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48749 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101034 (store (arr!48749 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49300 a!2804)) mask!2512)))))

(assert (= (and start!129264 res!1036952) b!1516982))

(assert (= (and b!1516982 res!1036954) b!1516978))

(assert (= (and b!1516978 res!1036956) b!1516980))

(assert (= (and b!1516980 res!1036955) b!1516981))

(assert (= (and b!1516981 res!1036959) b!1516985))

(assert (= (and b!1516985 res!1036958) b!1516979))

(assert (= (and b!1516979 res!1036950) b!1516986))

(assert (= (and b!1516986 res!1036953) b!1516984))

(assert (= (and b!1516984 res!1036962) b!1516987))

(assert (= (and b!1516987 res!1036960) b!1516976))

(assert (= (and b!1516976 res!1036951) b!1516975))

(assert (= (and b!1516976 (not res!1036957)) b!1516977))

(assert (= (and b!1516977 (not res!1036961)) b!1516983))

(declare-fun m!1400311 () Bool)

(assert (=> b!1516983 m!1400311))

(assert (=> b!1516983 m!1400311))

(declare-fun m!1400313 () Bool)

(assert (=> b!1516983 m!1400313))

(assert (=> b!1516976 m!1400311))

(declare-fun m!1400315 () Bool)

(assert (=> b!1516976 m!1400315))

(declare-fun m!1400317 () Bool)

(assert (=> b!1516976 m!1400317))

(declare-fun m!1400319 () Bool)

(assert (=> b!1516976 m!1400319))

(declare-fun m!1400321 () Bool)

(assert (=> b!1516976 m!1400321))

(assert (=> b!1516980 m!1400311))

(assert (=> b!1516980 m!1400311))

(declare-fun m!1400323 () Bool)

(assert (=> b!1516980 m!1400323))

(declare-fun m!1400325 () Bool)

(assert (=> b!1516978 m!1400325))

(assert (=> b!1516978 m!1400325))

(declare-fun m!1400327 () Bool)

(assert (=> b!1516978 m!1400327))

(declare-fun m!1400329 () Bool)

(assert (=> start!129264 m!1400329))

(declare-fun m!1400331 () Bool)

(assert (=> start!129264 m!1400331))

(declare-fun m!1400333 () Bool)

(assert (=> b!1516985 m!1400333))

(assert (=> b!1516984 m!1400311))

(assert (=> b!1516984 m!1400311))

(declare-fun m!1400335 () Bool)

(assert (=> b!1516984 m!1400335))

(declare-fun m!1400337 () Bool)

(assert (=> b!1516981 m!1400337))

(assert (=> b!1516986 m!1400311))

(assert (=> b!1516986 m!1400311))

(declare-fun m!1400339 () Bool)

(assert (=> b!1516986 m!1400339))

(assert (=> b!1516986 m!1400339))

(assert (=> b!1516986 m!1400311))

(declare-fun m!1400341 () Bool)

(assert (=> b!1516986 m!1400341))

(assert (=> b!1516975 m!1400311))

(assert (=> b!1516975 m!1400311))

(declare-fun m!1400343 () Bool)

(assert (=> b!1516975 m!1400343))

(declare-fun m!1400345 () Bool)

(assert (=> b!1516977 m!1400345))

(assert (=> b!1516987 m!1400317))

(assert (=> b!1516987 m!1400319))

(assert (=> b!1516987 m!1400319))

(declare-fun m!1400347 () Bool)

(assert (=> b!1516987 m!1400347))

(assert (=> b!1516987 m!1400347))

(assert (=> b!1516987 m!1400319))

(declare-fun m!1400349 () Bool)

(assert (=> b!1516987 m!1400349))

(check-sat (not b!1516984) (not b!1516980) (not b!1516985) (not b!1516976) (not b!1516975) (not b!1516986) (not start!129264) (not b!1516981) (not b!1516987) (not b!1516978) (not b!1516977) (not b!1516983))
(check-sat)
