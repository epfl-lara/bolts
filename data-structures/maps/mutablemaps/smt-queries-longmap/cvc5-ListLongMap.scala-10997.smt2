; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128860 () Bool)

(assert start!128860)

(declare-fun b!1509397 () Bool)

(declare-fun res!1029377 () Bool)

(declare-fun e!843109 () Bool)

(assert (=> b!1509397 (=> (not res!1029377) (not e!843109))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100629 0))(
  ( (array!100630 (arr!48547 (Array (_ BitVec 32) (_ BitVec 64))) (size!49098 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100629)

(assert (=> b!1509397 (= res!1029377 (and (= (size!49098 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49098 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49098 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509398 () Bool)

(declare-fun e!843110 () Bool)

(assert (=> b!1509398 (= e!843110 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100629 (_ BitVec 32)) Bool)

(assert (=> b!1509398 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-datatypes ((Unit!50302 0))(
  ( (Unit!50303) )
))
(declare-fun lt!654854 () Unit!50302)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100629 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50302)

(assert (=> b!1509398 (= lt!654854 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1509399 () Bool)

(assert (=> b!1509399 (= e!843109 e!843110)))

(declare-fun res!1029374 () Bool)

(assert (=> b!1509399 (=> (not res!1029374) (not e!843110))))

(declare-datatypes ((SeekEntryResult!12739 0))(
  ( (MissingZero!12739 (index!53350 (_ BitVec 32))) (Found!12739 (index!53351 (_ BitVec 32))) (Intermediate!12739 (undefined!13551 Bool) (index!53352 (_ BitVec 32)) (x!135118 (_ BitVec 32))) (Undefined!12739) (MissingVacant!12739 (index!53353 (_ BitVec 32))) )
))
(declare-fun lt!654855 () SeekEntryResult!12739)

(declare-fun lt!654856 () SeekEntryResult!12739)

(assert (=> b!1509399 (= res!1029374 (= lt!654855 lt!654856))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1509399 (= lt!654856 (Intermediate!12739 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100629 (_ BitVec 32)) SeekEntryResult!12739)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509399 (= lt!654855 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48547 a!2804) j!70) mask!2512) (select (arr!48547 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1509400 () Bool)

(declare-fun res!1029380 () Bool)

(assert (=> b!1509400 (=> (not res!1029380) (not e!843109))))

(assert (=> b!1509400 (= res!1029380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1029381 () Bool)

(assert (=> start!128860 (=> (not res!1029381) (not e!843109))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128860 (= res!1029381 (validMask!0 mask!2512))))

(assert (=> start!128860 e!843109))

(assert (=> start!128860 true))

(declare-fun array_inv!37492 (array!100629) Bool)

(assert (=> start!128860 (array_inv!37492 a!2804)))

(declare-fun b!1509401 () Bool)

(declare-fun res!1029372 () Bool)

(assert (=> b!1509401 (=> (not res!1029372) (not e!843110))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1509401 (= res!1029372 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48547 a!2804) j!70) a!2804 mask!2512) lt!654856))))

(declare-fun b!1509402 () Bool)

(declare-fun res!1029373 () Bool)

(assert (=> b!1509402 (=> (not res!1029373) (not e!843110))))

(assert (=> b!1509402 (= res!1029373 (= lt!654855 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48547 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48547 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100630 (store (arr!48547 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49098 a!2804)) mask!2512)))))

(declare-fun b!1509403 () Bool)

(declare-fun res!1029379 () Bool)

(assert (=> b!1509403 (=> (not res!1029379) (not e!843109))))

(assert (=> b!1509403 (= res!1029379 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49098 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49098 a!2804))))))

(declare-fun b!1509404 () Bool)

(declare-fun res!1029375 () Bool)

(assert (=> b!1509404 (=> (not res!1029375) (not e!843109))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509404 (= res!1029375 (validKeyInArray!0 (select (arr!48547 a!2804) i!961)))))

(declare-fun b!1509405 () Bool)

(declare-fun res!1029378 () Bool)

(assert (=> b!1509405 (=> (not res!1029378) (not e!843109))))

(assert (=> b!1509405 (= res!1029378 (validKeyInArray!0 (select (arr!48547 a!2804) j!70)))))

(declare-fun b!1509406 () Bool)

(declare-fun res!1029376 () Bool)

(assert (=> b!1509406 (=> (not res!1029376) (not e!843109))))

(declare-datatypes ((List!35210 0))(
  ( (Nil!35207) (Cons!35206 (h!36619 (_ BitVec 64)) (t!49911 List!35210)) )
))
(declare-fun arrayNoDuplicates!0 (array!100629 (_ BitVec 32) List!35210) Bool)

(assert (=> b!1509406 (= res!1029376 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35207))))

(assert (= (and start!128860 res!1029381) b!1509397))

(assert (= (and b!1509397 res!1029377) b!1509404))

(assert (= (and b!1509404 res!1029375) b!1509405))

(assert (= (and b!1509405 res!1029378) b!1509400))

(assert (= (and b!1509400 res!1029380) b!1509406))

(assert (= (and b!1509406 res!1029376) b!1509403))

(assert (= (and b!1509403 res!1029379) b!1509399))

(assert (= (and b!1509399 res!1029374) b!1509401))

(assert (= (and b!1509401 res!1029372) b!1509402))

(assert (= (and b!1509402 res!1029373) b!1509398))

(declare-fun m!1391931 () Bool)

(assert (=> b!1509406 m!1391931))

(declare-fun m!1391933 () Bool)

(assert (=> b!1509398 m!1391933))

(declare-fun m!1391935 () Bool)

(assert (=> b!1509398 m!1391935))

(declare-fun m!1391937 () Bool)

(assert (=> b!1509401 m!1391937))

(assert (=> b!1509401 m!1391937))

(declare-fun m!1391939 () Bool)

(assert (=> b!1509401 m!1391939))

(assert (=> b!1509405 m!1391937))

(assert (=> b!1509405 m!1391937))

(declare-fun m!1391941 () Bool)

(assert (=> b!1509405 m!1391941))

(declare-fun m!1391943 () Bool)

(assert (=> start!128860 m!1391943))

(declare-fun m!1391945 () Bool)

(assert (=> start!128860 m!1391945))

(assert (=> b!1509399 m!1391937))

(assert (=> b!1509399 m!1391937))

(declare-fun m!1391947 () Bool)

(assert (=> b!1509399 m!1391947))

(assert (=> b!1509399 m!1391947))

(assert (=> b!1509399 m!1391937))

(declare-fun m!1391949 () Bool)

(assert (=> b!1509399 m!1391949))

(declare-fun m!1391951 () Bool)

(assert (=> b!1509404 m!1391951))

(assert (=> b!1509404 m!1391951))

(declare-fun m!1391953 () Bool)

(assert (=> b!1509404 m!1391953))

(declare-fun m!1391955 () Bool)

(assert (=> b!1509400 m!1391955))

(declare-fun m!1391957 () Bool)

(assert (=> b!1509402 m!1391957))

(declare-fun m!1391959 () Bool)

(assert (=> b!1509402 m!1391959))

(assert (=> b!1509402 m!1391959))

(declare-fun m!1391961 () Bool)

(assert (=> b!1509402 m!1391961))

(assert (=> b!1509402 m!1391961))

(assert (=> b!1509402 m!1391959))

(declare-fun m!1391963 () Bool)

(assert (=> b!1509402 m!1391963))

(push 1)

