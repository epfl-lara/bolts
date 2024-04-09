; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128830 () Bool)

(assert start!128830)

(declare-fun b!1508981 () Bool)

(declare-fun res!1028957 () Bool)

(declare-fun e!842975 () Bool)

(assert (=> b!1508981 (=> (not res!1028957) (not e!842975))))

(declare-datatypes ((array!100599 0))(
  ( (array!100600 (arr!48532 (Array (_ BitVec 32) (_ BitVec 64))) (size!49083 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100599)

(declare-datatypes ((List!35195 0))(
  ( (Nil!35192) (Cons!35191 (h!36604 (_ BitVec 64)) (t!49896 List!35195)) )
))
(declare-fun arrayNoDuplicates!0 (array!100599 (_ BitVec 32) List!35195) Bool)

(assert (=> b!1508981 (= res!1028957 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35192))))

(declare-fun b!1508982 () Bool)

(declare-fun res!1028964 () Bool)

(assert (=> b!1508982 (=> (not res!1028964) (not e!842975))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508982 (= res!1028964 (validKeyInArray!0 (select (arr!48532 a!2804) j!70)))))

(declare-fun b!1508983 () Bool)

(declare-fun res!1028963 () Bool)

(assert (=> b!1508983 (=> (not res!1028963) (not e!842975))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1508983 (= res!1028963 (and (= (size!49083 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49083 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49083 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1508984 () Bool)

(declare-fun res!1028956 () Bool)

(assert (=> b!1508984 (=> (not res!1028956) (not e!842975))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1508984 (= res!1028956 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49083 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49083 a!2804))))))

(declare-fun b!1508985 () Bool)

(declare-fun e!842974 () Bool)

(assert (=> b!1508985 (= e!842975 e!842974)))

(declare-fun res!1028960 () Bool)

(assert (=> b!1508985 (=> (not res!1028960) (not e!842974))))

(declare-datatypes ((SeekEntryResult!12724 0))(
  ( (MissingZero!12724 (index!53290 (_ BitVec 32))) (Found!12724 (index!53291 (_ BitVec 32))) (Intermediate!12724 (undefined!13536 Bool) (index!53292 (_ BitVec 32)) (x!135063 (_ BitVec 32))) (Undefined!12724) (MissingVacant!12724 (index!53293 (_ BitVec 32))) )
))
(declare-fun lt!654753 () SeekEntryResult!12724)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100599 (_ BitVec 32)) SeekEntryResult!12724)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508985 (= res!1028960 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48532 a!2804) j!70) mask!2512) (select (arr!48532 a!2804) j!70) a!2804 mask!2512) lt!654753))))

(assert (=> b!1508985 (= lt!654753 (Intermediate!12724 false resIndex!21 resX!21))))

(declare-fun b!1508986 () Bool)

(declare-fun res!1028962 () Bool)

(assert (=> b!1508986 (=> (not res!1028962) (not e!842974))))

(assert (=> b!1508986 (= res!1028962 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48532 a!2804) j!70) a!2804 mask!2512) lt!654753))))

(declare-fun b!1508987 () Bool)

(declare-fun res!1028959 () Bool)

(assert (=> b!1508987 (=> (not res!1028959) (not e!842975))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100599 (_ BitVec 32)) Bool)

(assert (=> b!1508987 (= res!1028959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1028958 () Bool)

(assert (=> start!128830 (=> (not res!1028958) (not e!842975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128830 (= res!1028958 (validMask!0 mask!2512))))

(assert (=> start!128830 e!842975))

(assert (=> start!128830 true))

(declare-fun array_inv!37477 (array!100599) Bool)

(assert (=> start!128830 (array_inv!37477 a!2804)))

(declare-fun b!1508988 () Bool)

(assert (=> b!1508988 (= e!842974 false)))

(declare-fun lt!654754 () SeekEntryResult!12724)

(assert (=> b!1508988 (= lt!654754 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48532 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48532 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100600 (store (arr!48532 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49083 a!2804)) mask!2512))))

(declare-fun b!1508989 () Bool)

(declare-fun res!1028961 () Bool)

(assert (=> b!1508989 (=> (not res!1028961) (not e!842975))))

(assert (=> b!1508989 (= res!1028961 (validKeyInArray!0 (select (arr!48532 a!2804) i!961)))))

(assert (= (and start!128830 res!1028958) b!1508983))

(assert (= (and b!1508983 res!1028963) b!1508989))

(assert (= (and b!1508989 res!1028961) b!1508982))

(assert (= (and b!1508982 res!1028964) b!1508987))

(assert (= (and b!1508987 res!1028959) b!1508981))

(assert (= (and b!1508981 res!1028957) b!1508984))

(assert (= (and b!1508984 res!1028956) b!1508985))

(assert (= (and b!1508985 res!1028960) b!1508986))

(assert (= (and b!1508986 res!1028962) b!1508988))

(declare-fun m!1391469 () Bool)

(assert (=> b!1508986 m!1391469))

(assert (=> b!1508986 m!1391469))

(declare-fun m!1391471 () Bool)

(assert (=> b!1508986 m!1391471))

(assert (=> b!1508985 m!1391469))

(assert (=> b!1508985 m!1391469))

(declare-fun m!1391473 () Bool)

(assert (=> b!1508985 m!1391473))

(assert (=> b!1508985 m!1391473))

(assert (=> b!1508985 m!1391469))

(declare-fun m!1391475 () Bool)

(assert (=> b!1508985 m!1391475))

(assert (=> b!1508982 m!1391469))

(assert (=> b!1508982 m!1391469))

(declare-fun m!1391477 () Bool)

(assert (=> b!1508982 m!1391477))

(declare-fun m!1391479 () Bool)

(assert (=> b!1508981 m!1391479))

(declare-fun m!1391481 () Bool)

(assert (=> b!1508987 m!1391481))

(declare-fun m!1391483 () Bool)

(assert (=> start!128830 m!1391483))

(declare-fun m!1391485 () Bool)

(assert (=> start!128830 m!1391485))

(declare-fun m!1391487 () Bool)

(assert (=> b!1508989 m!1391487))

(assert (=> b!1508989 m!1391487))

(declare-fun m!1391489 () Bool)

(assert (=> b!1508989 m!1391489))

(declare-fun m!1391491 () Bool)

(assert (=> b!1508988 m!1391491))

(declare-fun m!1391493 () Bool)

(assert (=> b!1508988 m!1391493))

(assert (=> b!1508988 m!1391493))

(declare-fun m!1391495 () Bool)

(assert (=> b!1508988 m!1391495))

(assert (=> b!1508988 m!1391495))

(assert (=> b!1508988 m!1391493))

(declare-fun m!1391497 () Bool)

(assert (=> b!1508988 m!1391497))

(push 1)

