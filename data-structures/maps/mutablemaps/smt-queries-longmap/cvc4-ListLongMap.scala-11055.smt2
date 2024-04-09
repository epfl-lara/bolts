; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129212 () Bool)

(assert start!129212)

(declare-fun res!1035996 () Bool)

(declare-fun e!846017 () Bool)

(assert (=> start!129212 (=> (not res!1035996) (not e!846017))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129212 (= res!1035996 (validMask!0 mask!2512))))

(assert (=> start!129212 e!846017))

(assert (=> start!129212 true))

(declare-datatypes ((array!100981 0))(
  ( (array!100982 (arr!48723 (Array (_ BitVec 32) (_ BitVec 64))) (size!49274 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100981)

(declare-fun array_inv!37668 (array!100981) Bool)

(assert (=> start!129212 (array_inv!37668 a!2804)))

(declare-fun b!1516017 () Bool)

(declare-fun res!1035997 () Bool)

(assert (=> b!1516017 (=> (not res!1035997) (not e!846017))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516017 (= res!1035997 (validKeyInArray!0 (select (arr!48723 a!2804) i!961)))))

(declare-fun b!1516018 () Bool)

(declare-fun res!1036000 () Bool)

(assert (=> b!1516018 (=> (not res!1036000) (not e!846017))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1516018 (= res!1036000 (validKeyInArray!0 (select (arr!48723 a!2804) j!70)))))

(declare-fun b!1516019 () Bool)

(declare-fun res!1035992 () Bool)

(declare-fun e!846016 () Bool)

(assert (=> b!1516019 (=> (not res!1035992) (not e!846016))))

(declare-datatypes ((SeekEntryResult!12915 0))(
  ( (MissingZero!12915 (index!54054 (_ BitVec 32))) (Found!12915 (index!54055 (_ BitVec 32))) (Intermediate!12915 (undefined!13727 Bool) (index!54056 (_ BitVec 32)) (x!135758 (_ BitVec 32))) (Undefined!12915) (MissingVacant!12915 (index!54057 (_ BitVec 32))) )
))
(declare-fun lt!657248 () SeekEntryResult!12915)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100981 (_ BitVec 32)) SeekEntryResult!12915)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516019 (= res!1035992 (= lt!657248 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48723 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48723 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100982 (store (arr!48723 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49274 a!2804)) mask!2512)))))

(declare-fun b!1516020 () Bool)

(declare-fun res!1036002 () Bool)

(assert (=> b!1516020 (=> (not res!1036002) (not e!846017))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1516020 (= res!1036002 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49274 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49274 a!2804))))))

(declare-fun b!1516021 () Bool)

(declare-fun res!1035993 () Bool)

(assert (=> b!1516021 (=> (not res!1035993) (not e!846017))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100981 (_ BitVec 32)) Bool)

(assert (=> b!1516021 (= res!1035993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516022 () Bool)

(declare-fun res!1035995 () Bool)

(assert (=> b!1516022 (=> (not res!1035995) (not e!846016))))

(declare-fun lt!657249 () SeekEntryResult!12915)

(assert (=> b!1516022 (= res!1035995 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48723 a!2804) j!70) a!2804 mask!2512) lt!657249))))

(declare-fun b!1516023 () Bool)

(assert (=> b!1516023 (= e!846016 (not true))))

(declare-fun e!846014 () Bool)

(assert (=> b!1516023 e!846014))

(declare-fun res!1036001 () Bool)

(assert (=> b!1516023 (=> (not res!1036001) (not e!846014))))

(assert (=> b!1516023 (= res!1036001 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50654 0))(
  ( (Unit!50655) )
))
(declare-fun lt!657250 () Unit!50654)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100981 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50654)

(assert (=> b!1516023 (= lt!657250 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516024 () Bool)

(assert (=> b!1516024 (= e!846017 e!846016)))

(declare-fun res!1035994 () Bool)

(assert (=> b!1516024 (=> (not res!1035994) (not e!846016))))

(assert (=> b!1516024 (= res!1035994 (= lt!657248 lt!657249))))

(assert (=> b!1516024 (= lt!657249 (Intermediate!12915 false resIndex!21 resX!21))))

(assert (=> b!1516024 (= lt!657248 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48723 a!2804) j!70) mask!2512) (select (arr!48723 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516025 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100981 (_ BitVec 32)) SeekEntryResult!12915)

(assert (=> b!1516025 (= e!846014 (= (seekEntry!0 (select (arr!48723 a!2804) j!70) a!2804 mask!2512) (Found!12915 j!70)))))

(declare-fun b!1516026 () Bool)

(declare-fun res!1035999 () Bool)

(assert (=> b!1516026 (=> (not res!1035999) (not e!846017))))

(assert (=> b!1516026 (= res!1035999 (and (= (size!49274 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49274 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49274 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516027 () Bool)

(declare-fun res!1035998 () Bool)

(assert (=> b!1516027 (=> (not res!1035998) (not e!846017))))

(declare-datatypes ((List!35386 0))(
  ( (Nil!35383) (Cons!35382 (h!36795 (_ BitVec 64)) (t!50087 List!35386)) )
))
(declare-fun arrayNoDuplicates!0 (array!100981 (_ BitVec 32) List!35386) Bool)

(assert (=> b!1516027 (= res!1035998 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35383))))

(assert (= (and start!129212 res!1035996) b!1516026))

(assert (= (and b!1516026 res!1035999) b!1516017))

(assert (= (and b!1516017 res!1035997) b!1516018))

(assert (= (and b!1516018 res!1036000) b!1516021))

(assert (= (and b!1516021 res!1035993) b!1516027))

(assert (= (and b!1516027 res!1035998) b!1516020))

(assert (= (and b!1516020 res!1036002) b!1516024))

(assert (= (and b!1516024 res!1035994) b!1516022))

(assert (= (and b!1516022 res!1035995) b!1516019))

(assert (= (and b!1516019 res!1035992) b!1516023))

(assert (= (and b!1516023 res!1036001) b!1516025))

(declare-fun m!1399311 () Bool)

(assert (=> b!1516025 m!1399311))

(assert (=> b!1516025 m!1399311))

(declare-fun m!1399313 () Bool)

(assert (=> b!1516025 m!1399313))

(declare-fun m!1399315 () Bool)

(assert (=> b!1516027 m!1399315))

(declare-fun m!1399317 () Bool)

(assert (=> start!129212 m!1399317))

(declare-fun m!1399319 () Bool)

(assert (=> start!129212 m!1399319))

(assert (=> b!1516022 m!1399311))

(assert (=> b!1516022 m!1399311))

(declare-fun m!1399321 () Bool)

(assert (=> b!1516022 m!1399321))

(assert (=> b!1516018 m!1399311))

(assert (=> b!1516018 m!1399311))

(declare-fun m!1399323 () Bool)

(assert (=> b!1516018 m!1399323))

(declare-fun m!1399325 () Bool)

(assert (=> b!1516017 m!1399325))

(assert (=> b!1516017 m!1399325))

(declare-fun m!1399327 () Bool)

(assert (=> b!1516017 m!1399327))

(declare-fun m!1399329 () Bool)

(assert (=> b!1516023 m!1399329))

(declare-fun m!1399331 () Bool)

(assert (=> b!1516023 m!1399331))

(declare-fun m!1399333 () Bool)

(assert (=> b!1516021 m!1399333))

(declare-fun m!1399335 () Bool)

(assert (=> b!1516019 m!1399335))

(declare-fun m!1399337 () Bool)

(assert (=> b!1516019 m!1399337))

(assert (=> b!1516019 m!1399337))

(declare-fun m!1399339 () Bool)

(assert (=> b!1516019 m!1399339))

(assert (=> b!1516019 m!1399339))

(assert (=> b!1516019 m!1399337))

(declare-fun m!1399341 () Bool)

(assert (=> b!1516019 m!1399341))

(assert (=> b!1516024 m!1399311))

(assert (=> b!1516024 m!1399311))

(declare-fun m!1399343 () Bool)

(assert (=> b!1516024 m!1399343))

(assert (=> b!1516024 m!1399343))

(assert (=> b!1516024 m!1399311))

(declare-fun m!1399345 () Bool)

(assert (=> b!1516024 m!1399345))

(push 1)

