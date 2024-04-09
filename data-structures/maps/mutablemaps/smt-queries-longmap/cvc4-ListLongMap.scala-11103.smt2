; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129676 () Bool)

(assert start!129676)

(declare-fun b!1521892 () Bool)

(declare-fun res!1041257 () Bool)

(declare-fun e!848669 () Bool)

(assert (=> b!1521892 (=> (not res!1041257) (not e!848669))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101278 0))(
  ( (array!101279 (arr!48867 (Array (_ BitVec 32) (_ BitVec 64))) (size!49418 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101278)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1521892 (= res!1041257 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49418 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49418 a!2804))))))

(declare-fun b!1521893 () Bool)

(declare-fun e!848667 () Bool)

(assert (=> b!1521893 (= e!848669 e!848667)))

(declare-fun res!1041258 () Bool)

(assert (=> b!1521893 (=> (not res!1041258) (not e!848667))))

(declare-datatypes ((SeekEntryResult!13053 0))(
  ( (MissingZero!13053 (index!54606 (_ BitVec 32))) (Found!13053 (index!54607 (_ BitVec 32))) (Intermediate!13053 (undefined!13865 Bool) (index!54608 (_ BitVec 32)) (x!136300 (_ BitVec 32))) (Undefined!13053) (MissingVacant!13053 (index!54609 (_ BitVec 32))) )
))
(declare-fun lt!659398 () SeekEntryResult!13053)

(declare-fun lt!659397 () SeekEntryResult!13053)

(assert (=> b!1521893 (= res!1041258 (= lt!659398 lt!659397))))

(assert (=> b!1521893 (= lt!659397 (Intermediate!13053 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101278 (_ BitVec 32)) SeekEntryResult!13053)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521893 (= lt!659398 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48867 a!2804) j!70) mask!2512) (select (arr!48867 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1521895 () Bool)

(declare-fun res!1041259 () Bool)

(assert (=> b!1521895 (=> (not res!1041259) (not e!848669))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101278 (_ BitVec 32)) Bool)

(assert (=> b!1521895 (= res!1041259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521896 () Bool)

(declare-fun res!1041261 () Bool)

(assert (=> b!1521896 (=> (not res!1041261) (not e!848669))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1521896 (= res!1041261 (and (= (size!49418 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49418 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49418 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521897 () Bool)

(assert (=> b!1521897 (= e!848667 (and (bvsle #b00000000000000000000000000000000 (size!49418 a!2804)) (bvsgt j!70 (size!49418 a!2804))))))

(declare-fun b!1521898 () Bool)

(declare-fun res!1041256 () Bool)

(assert (=> b!1521898 (=> (not res!1041256) (not e!848669))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521898 (= res!1041256 (validKeyInArray!0 (select (arr!48867 a!2804) i!961)))))

(declare-fun b!1521899 () Bool)

(declare-fun res!1041260 () Bool)

(assert (=> b!1521899 (=> (not res!1041260) (not e!848669))))

(assert (=> b!1521899 (= res!1041260 (validKeyInArray!0 (select (arr!48867 a!2804) j!70)))))

(declare-fun b!1521894 () Bool)

(declare-fun res!1041252 () Bool)

(assert (=> b!1521894 (=> (not res!1041252) (not e!848669))))

(declare-datatypes ((List!35530 0))(
  ( (Nil!35527) (Cons!35526 (h!36948 (_ BitVec 64)) (t!50231 List!35530)) )
))
(declare-fun arrayNoDuplicates!0 (array!101278 (_ BitVec 32) List!35530) Bool)

(assert (=> b!1521894 (= res!1041252 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35527))))

(declare-fun res!1041255 () Bool)

(assert (=> start!129676 (=> (not res!1041255) (not e!848669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129676 (= res!1041255 (validMask!0 mask!2512))))

(assert (=> start!129676 e!848669))

(assert (=> start!129676 true))

(declare-fun array_inv!37812 (array!101278) Bool)

(assert (=> start!129676 (array_inv!37812 a!2804)))

(declare-fun b!1521900 () Bool)

(declare-fun res!1041253 () Bool)

(assert (=> b!1521900 (=> (not res!1041253) (not e!848667))))

(assert (=> b!1521900 (= res!1041253 (= lt!659398 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48867 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48867 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101279 (store (arr!48867 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49418 a!2804)) mask!2512)))))

(declare-fun b!1521901 () Bool)

(declare-fun res!1041254 () Bool)

(assert (=> b!1521901 (=> (not res!1041254) (not e!848667))))

(assert (=> b!1521901 (= res!1041254 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48867 a!2804) j!70) a!2804 mask!2512) lt!659397))))

(assert (= (and start!129676 res!1041255) b!1521896))

(assert (= (and b!1521896 res!1041261) b!1521898))

(assert (= (and b!1521898 res!1041256) b!1521899))

(assert (= (and b!1521899 res!1041260) b!1521895))

(assert (= (and b!1521895 res!1041259) b!1521894))

(assert (= (and b!1521894 res!1041252) b!1521892))

(assert (= (and b!1521892 res!1041257) b!1521893))

(assert (= (and b!1521893 res!1041258) b!1521901))

(assert (= (and b!1521901 res!1041254) b!1521900))

(assert (= (and b!1521900 res!1041253) b!1521897))

(declare-fun m!1405061 () Bool)

(assert (=> b!1521899 m!1405061))

(assert (=> b!1521899 m!1405061))

(declare-fun m!1405063 () Bool)

(assert (=> b!1521899 m!1405063))

(declare-fun m!1405065 () Bool)

(assert (=> b!1521894 m!1405065))

(assert (=> b!1521901 m!1405061))

(assert (=> b!1521901 m!1405061))

(declare-fun m!1405067 () Bool)

(assert (=> b!1521901 m!1405067))

(assert (=> b!1521893 m!1405061))

(assert (=> b!1521893 m!1405061))

(declare-fun m!1405069 () Bool)

(assert (=> b!1521893 m!1405069))

(assert (=> b!1521893 m!1405069))

(assert (=> b!1521893 m!1405061))

(declare-fun m!1405071 () Bool)

(assert (=> b!1521893 m!1405071))

(declare-fun m!1405073 () Bool)

(assert (=> b!1521898 m!1405073))

(assert (=> b!1521898 m!1405073))

(declare-fun m!1405075 () Bool)

(assert (=> b!1521898 m!1405075))

(declare-fun m!1405077 () Bool)

(assert (=> b!1521895 m!1405077))

(declare-fun m!1405079 () Bool)

(assert (=> start!129676 m!1405079))

(declare-fun m!1405081 () Bool)

(assert (=> start!129676 m!1405081))

(declare-fun m!1405083 () Bool)

(assert (=> b!1521900 m!1405083))

(declare-fun m!1405085 () Bool)

(assert (=> b!1521900 m!1405085))

(assert (=> b!1521900 m!1405085))

(declare-fun m!1405087 () Bool)

(assert (=> b!1521900 m!1405087))

(assert (=> b!1521900 m!1405087))

(assert (=> b!1521900 m!1405085))

(declare-fun m!1405089 () Bool)

(assert (=> b!1521900 m!1405089))

(push 1)

(assert (not b!1521898))

(assert (not b!1521894))

(assert (not start!129676))

(assert (not b!1521895))

(assert (not b!1521899))

(assert (not b!1521893))

(assert (not b!1521900))

(assert (not b!1521901))

(check-sat)

(pop 1)

(push 1)

(check-sat)

