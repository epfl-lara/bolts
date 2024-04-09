; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128752 () Bool)

(assert start!128752)

(declare-fun b!1508297 () Bool)

(declare-fun res!1028383 () Bool)

(declare-fun e!842679 () Bool)

(assert (=> b!1508297 (=> (not res!1028383) (not e!842679))))

(declare-datatypes ((array!100560 0))(
  ( (array!100561 (arr!48514 (Array (_ BitVec 32) (_ BitVec 64))) (size!49065 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100560)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508297 (= res!1028383 (validKeyInArray!0 (select (arr!48514 a!2804) j!70)))))

(declare-fun b!1508298 () Bool)

(declare-fun e!842680 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1508298 (= e!842680 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun lt!654571 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508298 (= lt!654571 (toIndex!0 (select (store (arr!48514 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun b!1508299 () Bool)

(declare-fun res!1028385 () Bool)

(assert (=> b!1508299 (=> (not res!1028385) (not e!842680))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12706 0))(
  ( (MissingZero!12706 (index!53218 (_ BitVec 32))) (Found!12706 (index!53219 (_ BitVec 32))) (Intermediate!12706 (undefined!13518 Bool) (index!53220 (_ BitVec 32)) (x!134991 (_ BitVec 32))) (Undefined!12706) (MissingVacant!12706 (index!53221 (_ BitVec 32))) )
))
(declare-fun lt!654570 () SeekEntryResult!12706)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100560 (_ BitVec 32)) SeekEntryResult!12706)

(assert (=> b!1508299 (= res!1028385 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48514 a!2804) j!70) a!2804 mask!2512) lt!654570))))

(declare-fun b!1508300 () Bool)

(declare-fun res!1028381 () Bool)

(assert (=> b!1508300 (=> (not res!1028381) (not e!842679))))

(assert (=> b!1508300 (= res!1028381 (validKeyInArray!0 (select (arr!48514 a!2804) i!961)))))

(declare-fun res!1028384 () Bool)

(assert (=> start!128752 (=> (not res!1028384) (not e!842679))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128752 (= res!1028384 (validMask!0 mask!2512))))

(assert (=> start!128752 e!842679))

(assert (=> start!128752 true))

(declare-fun array_inv!37459 (array!100560) Bool)

(assert (=> start!128752 (array_inv!37459 a!2804)))

(declare-fun b!1508301 () Bool)

(declare-fun res!1028377 () Bool)

(assert (=> b!1508301 (=> (not res!1028377) (not e!842679))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1508301 (= res!1028377 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49065 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49065 a!2804))))))

(declare-fun b!1508302 () Bool)

(declare-fun res!1028382 () Bool)

(assert (=> b!1508302 (=> (not res!1028382) (not e!842679))))

(assert (=> b!1508302 (= res!1028382 (and (= (size!49065 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49065 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49065 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1508303 () Bool)

(assert (=> b!1508303 (= e!842679 e!842680)))

(declare-fun res!1028378 () Bool)

(assert (=> b!1508303 (=> (not res!1028378) (not e!842680))))

(assert (=> b!1508303 (= res!1028378 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48514 a!2804) j!70) mask!2512) (select (arr!48514 a!2804) j!70) a!2804 mask!2512) lt!654570))))

(assert (=> b!1508303 (= lt!654570 (Intermediate!12706 false resIndex!21 resX!21))))

(declare-fun b!1508304 () Bool)

(declare-fun res!1028380 () Bool)

(assert (=> b!1508304 (=> (not res!1028380) (not e!842679))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100560 (_ BitVec 32)) Bool)

(assert (=> b!1508304 (= res!1028380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1508305 () Bool)

(declare-fun res!1028379 () Bool)

(assert (=> b!1508305 (=> (not res!1028379) (not e!842679))))

(declare-datatypes ((List!35177 0))(
  ( (Nil!35174) (Cons!35173 (h!36583 (_ BitVec 64)) (t!49878 List!35177)) )
))
(declare-fun arrayNoDuplicates!0 (array!100560 (_ BitVec 32) List!35177) Bool)

(assert (=> b!1508305 (= res!1028379 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35174))))

(assert (= (and start!128752 res!1028384) b!1508302))

(assert (= (and b!1508302 res!1028382) b!1508300))

(assert (= (and b!1508300 res!1028381) b!1508297))

(assert (= (and b!1508297 res!1028383) b!1508304))

(assert (= (and b!1508304 res!1028380) b!1508305))

(assert (= (and b!1508305 res!1028379) b!1508301))

(assert (= (and b!1508301 res!1028377) b!1508303))

(assert (= (and b!1508303 res!1028378) b!1508299))

(assert (= (and b!1508299 res!1028385) b!1508298))

(declare-fun m!1390857 () Bool)

(assert (=> b!1508303 m!1390857))

(assert (=> b!1508303 m!1390857))

(declare-fun m!1390859 () Bool)

(assert (=> b!1508303 m!1390859))

(assert (=> b!1508303 m!1390859))

(assert (=> b!1508303 m!1390857))

(declare-fun m!1390861 () Bool)

(assert (=> b!1508303 m!1390861))

(declare-fun m!1390863 () Bool)

(assert (=> start!128752 m!1390863))

(declare-fun m!1390865 () Bool)

(assert (=> start!128752 m!1390865))

(declare-fun m!1390867 () Bool)

(assert (=> b!1508300 m!1390867))

(assert (=> b!1508300 m!1390867))

(declare-fun m!1390869 () Bool)

(assert (=> b!1508300 m!1390869))

(declare-fun m!1390871 () Bool)

(assert (=> b!1508305 m!1390871))

(assert (=> b!1508297 m!1390857))

(assert (=> b!1508297 m!1390857))

(declare-fun m!1390873 () Bool)

(assert (=> b!1508297 m!1390873))

(declare-fun m!1390875 () Bool)

(assert (=> b!1508298 m!1390875))

(declare-fun m!1390877 () Bool)

(assert (=> b!1508298 m!1390877))

(assert (=> b!1508298 m!1390877))

(declare-fun m!1390879 () Bool)

(assert (=> b!1508298 m!1390879))

(declare-fun m!1390881 () Bool)

(assert (=> b!1508304 m!1390881))

(assert (=> b!1508299 m!1390857))

(assert (=> b!1508299 m!1390857))

(declare-fun m!1390883 () Bool)

(assert (=> b!1508299 m!1390883))

(push 1)

