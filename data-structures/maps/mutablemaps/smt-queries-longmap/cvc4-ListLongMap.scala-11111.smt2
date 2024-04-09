; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129806 () Bool)

(assert start!129806)

(declare-fun b!1523121 () Bool)

(declare-fun res!1042171 () Bool)

(declare-fun e!849223 () Bool)

(assert (=> b!1523121 (=> (not res!1042171) (not e!849223))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101329 0))(
  ( (array!101330 (arr!48891 (Array (_ BitVec 32) (_ BitVec 64))) (size!49442 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101329)

(assert (=> b!1523121 (= res!1042171 (and (= (size!49442 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49442 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49442 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1523122 () Bool)

(declare-fun res!1042173 () Bool)

(declare-fun e!849222 () Bool)

(assert (=> b!1523122 (=> (not res!1042173) (not e!849222))))

(declare-datatypes ((SeekEntryResult!13077 0))(
  ( (MissingZero!13077 (index!54702 (_ BitVec 32))) (Found!13077 (index!54703 (_ BitVec 32))) (Intermediate!13077 (undefined!13889 Bool) (index!54704 (_ BitVec 32)) (x!136398 (_ BitVec 32))) (Undefined!13077) (MissingVacant!13077 (index!54705 (_ BitVec 32))) )
))
(declare-fun lt!659824 () SeekEntryResult!13077)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101329 (_ BitVec 32)) SeekEntryResult!13077)

(assert (=> b!1523122 (= res!1042173 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48891 a!2804) j!70) a!2804 mask!2512) lt!659824))))

(declare-fun b!1523123 () Bool)

(declare-fun res!1042175 () Bool)

(assert (=> b!1523123 (=> (not res!1042175) (not e!849223))))

(declare-datatypes ((List!35554 0))(
  ( (Nil!35551) (Cons!35550 (h!36975 (_ BitVec 64)) (t!50255 List!35554)) )
))
(declare-fun arrayNoDuplicates!0 (array!101329 (_ BitVec 32) List!35554) Bool)

(assert (=> b!1523123 (= res!1042175 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35551))))

(declare-fun b!1523124 () Bool)

(assert (=> b!1523124 (= e!849223 e!849222)))

(declare-fun res!1042167 () Bool)

(assert (=> b!1523124 (=> (not res!1042167) (not e!849222))))

(declare-fun lt!659823 () SeekEntryResult!13077)

(assert (=> b!1523124 (= res!1042167 (= lt!659823 lt!659824))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1523124 (= lt!659824 (Intermediate!13077 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523124 (= lt!659823 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48891 a!2804) j!70) mask!2512) (select (arr!48891 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1523125 () Bool)

(declare-fun res!1042172 () Bool)

(assert (=> b!1523125 (=> (not res!1042172) (not e!849223))))

(assert (=> b!1523125 (= res!1042172 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49442 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49442 a!2804))))))

(declare-fun b!1523126 () Bool)

(declare-fun res!1042166 () Bool)

(assert (=> b!1523126 (=> (not res!1042166) (not e!849223))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1523126 (= res!1042166 (validKeyInArray!0 (select (arr!48891 a!2804) i!961)))))

(declare-fun res!1042176 () Bool)

(assert (=> start!129806 (=> (not res!1042176) (not e!849223))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129806 (= res!1042176 (validMask!0 mask!2512))))

(assert (=> start!129806 e!849223))

(assert (=> start!129806 true))

(declare-fun array_inv!37836 (array!101329) Bool)

(assert (=> start!129806 (array_inv!37836 a!2804)))

(declare-fun e!849224 () Bool)

(declare-fun b!1523127 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101329 (_ BitVec 32)) SeekEntryResult!13077)

(assert (=> b!1523127 (= e!849224 (= (seekEntry!0 (select (arr!48891 a!2804) j!70) a!2804 mask!2512) (Found!13077 j!70)))))

(declare-fun b!1523128 () Bool)

(declare-fun res!1042168 () Bool)

(assert (=> b!1523128 (=> (not res!1042168) (not e!849223))))

(assert (=> b!1523128 (= res!1042168 (validKeyInArray!0 (select (arr!48891 a!2804) j!70)))))

(declare-fun b!1523129 () Bool)

(assert (=> b!1523129 (= e!849222 (not true))))

(assert (=> b!1523129 e!849224))

(declare-fun res!1042169 () Bool)

(assert (=> b!1523129 (=> (not res!1042169) (not e!849224))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101329 (_ BitVec 32)) Bool)

(assert (=> b!1523129 (= res!1042169 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50894 0))(
  ( (Unit!50895) )
))
(declare-fun lt!659822 () Unit!50894)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101329 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50894)

(assert (=> b!1523129 (= lt!659822 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1523130 () Bool)

(declare-fun res!1042170 () Bool)

(assert (=> b!1523130 (=> (not res!1042170) (not e!849223))))

(assert (=> b!1523130 (= res!1042170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1523131 () Bool)

(declare-fun res!1042174 () Bool)

(assert (=> b!1523131 (=> (not res!1042174) (not e!849222))))

(assert (=> b!1523131 (= res!1042174 (= lt!659823 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48891 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48891 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101330 (store (arr!48891 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49442 a!2804)) mask!2512)))))

(assert (= (and start!129806 res!1042176) b!1523121))

(assert (= (and b!1523121 res!1042171) b!1523126))

(assert (= (and b!1523126 res!1042166) b!1523128))

(assert (= (and b!1523128 res!1042168) b!1523130))

(assert (= (and b!1523130 res!1042170) b!1523123))

(assert (= (and b!1523123 res!1042175) b!1523125))

(assert (= (and b!1523125 res!1042172) b!1523124))

(assert (= (and b!1523124 res!1042167) b!1523122))

(assert (= (and b!1523122 res!1042173) b!1523131))

(assert (= (and b!1523131 res!1042174) b!1523129))

(assert (= (and b!1523129 res!1042169) b!1523127))

(declare-fun m!1406271 () Bool)

(assert (=> b!1523124 m!1406271))

(assert (=> b!1523124 m!1406271))

(declare-fun m!1406273 () Bool)

(assert (=> b!1523124 m!1406273))

(assert (=> b!1523124 m!1406273))

(assert (=> b!1523124 m!1406271))

(declare-fun m!1406275 () Bool)

(assert (=> b!1523124 m!1406275))

(declare-fun m!1406277 () Bool)

(assert (=> b!1523131 m!1406277))

(declare-fun m!1406279 () Bool)

(assert (=> b!1523131 m!1406279))

(assert (=> b!1523131 m!1406279))

(declare-fun m!1406281 () Bool)

(assert (=> b!1523131 m!1406281))

(assert (=> b!1523131 m!1406281))

(assert (=> b!1523131 m!1406279))

(declare-fun m!1406283 () Bool)

(assert (=> b!1523131 m!1406283))

(assert (=> b!1523122 m!1406271))

(assert (=> b!1523122 m!1406271))

(declare-fun m!1406285 () Bool)

(assert (=> b!1523122 m!1406285))

(declare-fun m!1406287 () Bool)

(assert (=> b!1523126 m!1406287))

(assert (=> b!1523126 m!1406287))

(declare-fun m!1406289 () Bool)

(assert (=> b!1523126 m!1406289))

(assert (=> b!1523128 m!1406271))

(assert (=> b!1523128 m!1406271))

(declare-fun m!1406291 () Bool)

(assert (=> b!1523128 m!1406291))

(assert (=> b!1523127 m!1406271))

(assert (=> b!1523127 m!1406271))

(declare-fun m!1406293 () Bool)

(assert (=> b!1523127 m!1406293))

(declare-fun m!1406295 () Bool)

(assert (=> b!1523123 m!1406295))

(declare-fun m!1406297 () Bool)

(assert (=> b!1523130 m!1406297))

(declare-fun m!1406299 () Bool)

(assert (=> b!1523129 m!1406299))

(declare-fun m!1406301 () Bool)

(assert (=> b!1523129 m!1406301))

(declare-fun m!1406303 () Bool)

(assert (=> start!129806 m!1406303))

(declare-fun m!1406305 () Bool)

(assert (=> start!129806 m!1406305))

(push 1)

(assert (not b!1523130))

(assert (not b!1523131))

