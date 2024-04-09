; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129116 () Bool)

(assert start!129116)

(declare-fun b!1514088 () Bool)

(declare-fun e!845026 () Bool)

(declare-fun e!845022 () Bool)

(assert (=> b!1514088 (= e!845026 e!845022)))

(declare-fun res!1034074 () Bool)

(assert (=> b!1514088 (=> (not res!1034074) (not e!845022))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100885 0))(
  ( (array!100886 (arr!48675 (Array (_ BitVec 32) (_ BitVec 64))) (size!49226 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100885)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12867 0))(
  ( (MissingZero!12867 (index!53862 (_ BitVec 32))) (Found!12867 (index!53863 (_ BitVec 32))) (Intermediate!12867 (undefined!13679 Bool) (index!53864 (_ BitVec 32)) (x!135582 (_ BitVec 32))) (Undefined!12867) (MissingVacant!12867 (index!53865 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100885 (_ BitVec 32)) SeekEntryResult!12867)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100885 (_ BitVec 32)) SeekEntryResult!12867)

(assert (=> b!1514088 (= res!1034074 (= (seekEntryOrOpen!0 (select (arr!48675 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48675 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun res!1034073 () Bool)

(declare-fun e!845024 () Bool)

(assert (=> start!129116 (=> (not res!1034073) (not e!845024))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129116 (= res!1034073 (validMask!0 mask!2512))))

(assert (=> start!129116 e!845024))

(assert (=> start!129116 true))

(declare-fun array_inv!37620 (array!100885) Bool)

(assert (=> start!129116 (array_inv!37620 a!2804)))

(declare-fun b!1514089 () Bool)

(declare-fun res!1034067 () Bool)

(declare-fun e!845025 () Bool)

(assert (=> b!1514089 (=> (not res!1034067) (not e!845025))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100885 (_ BitVec 32)) SeekEntryResult!12867)

(assert (=> b!1514089 (= res!1034067 (= (seekEntry!0 (select (arr!48675 a!2804) j!70) a!2804 mask!2512) (Found!12867 j!70)))))

(declare-fun b!1514090 () Bool)

(declare-fun e!845027 () Bool)

(declare-fun e!845023 () Bool)

(assert (=> b!1514090 (= e!845027 e!845023)))

(declare-fun res!1034075 () Bool)

(assert (=> b!1514090 (=> (not res!1034075) (not e!845023))))

(declare-fun lt!656184 () (_ BitVec 64))

(declare-fun lt!656186 () array!100885)

(declare-fun lt!656187 () SeekEntryResult!12867)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100885 (_ BitVec 32)) SeekEntryResult!12867)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514090 (= res!1034075 (= lt!656187 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656184 mask!2512) lt!656184 lt!656186 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1514090 (= lt!656184 (select (store (arr!48675 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514090 (= lt!656186 (array!100886 (store (arr!48675 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49226 a!2804)))))

(declare-fun b!1514091 () Bool)

(declare-fun res!1034063 () Bool)

(assert (=> b!1514091 (=> (not res!1034063) (not e!845024))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514091 (= res!1034063 (validKeyInArray!0 (select (arr!48675 a!2804) i!961)))))

(declare-fun b!1514092 () Bool)

(assert (=> b!1514092 (= e!845024 e!845027)))

(declare-fun res!1034064 () Bool)

(assert (=> b!1514092 (=> (not res!1034064) (not e!845027))))

(declare-fun lt!656188 () SeekEntryResult!12867)

(assert (=> b!1514092 (= res!1034064 (= lt!656187 lt!656188))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1514092 (= lt!656188 (Intermediate!12867 false resIndex!21 resX!21))))

(assert (=> b!1514092 (= lt!656187 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48675 a!2804) j!70) mask!2512) (select (arr!48675 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1514093 () Bool)

(declare-fun res!1034069 () Bool)

(assert (=> b!1514093 (=> (not res!1034069) (not e!845024))))

(declare-datatypes ((List!35338 0))(
  ( (Nil!35335) (Cons!35334 (h!36747 (_ BitVec 64)) (t!50039 List!35338)) )
))
(declare-fun arrayNoDuplicates!0 (array!100885 (_ BitVec 32) List!35338) Bool)

(assert (=> b!1514093 (= res!1034069 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35335))))

(declare-fun b!1514094 () Bool)

(declare-fun res!1034065 () Bool)

(assert (=> b!1514094 (=> (not res!1034065) (not e!845027))))

(assert (=> b!1514094 (= res!1034065 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48675 a!2804) j!70) a!2804 mask!2512) lt!656188))))

(declare-fun b!1514095 () Bool)

(declare-fun res!1034076 () Bool)

(assert (=> b!1514095 (=> (not res!1034076) (not e!845024))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100885 (_ BitVec 32)) Bool)

(assert (=> b!1514095 (= res!1034076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1514096 () Bool)

(assert (=> b!1514096 (= e!845022 (= (seekEntryOrOpen!0 lt!656184 lt!656186 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656184 lt!656186 mask!2512)))))

(declare-fun b!1514097 () Bool)

(declare-fun res!1034068 () Bool)

(assert (=> b!1514097 (=> (not res!1034068) (not e!845024))))

(assert (=> b!1514097 (= res!1034068 (validKeyInArray!0 (select (arr!48675 a!2804) j!70)))))

(declare-fun b!1514098 () Bool)

(declare-fun res!1034071 () Bool)

(assert (=> b!1514098 (=> (not res!1034071) (not e!845024))))

(assert (=> b!1514098 (= res!1034071 (and (= (size!49226 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49226 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49226 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1514099 () Bool)

(declare-fun res!1034072 () Bool)

(assert (=> b!1514099 (=> (not res!1034072) (not e!845024))))

(assert (=> b!1514099 (= res!1034072 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49226 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49226 a!2804))))))

(declare-fun b!1514100 () Bool)

(assert (=> b!1514100 (= e!845023 (not true))))

(assert (=> b!1514100 e!845025))

(declare-fun res!1034066 () Bool)

(assert (=> b!1514100 (=> (not res!1034066) (not e!845025))))

(assert (=> b!1514100 (= res!1034066 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50558 0))(
  ( (Unit!50559) )
))
(declare-fun lt!656185 () Unit!50558)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100885 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50558)

(assert (=> b!1514100 (= lt!656185 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514101 () Bool)

(assert (=> b!1514101 (= e!845025 e!845026)))

(declare-fun res!1034070 () Bool)

(assert (=> b!1514101 (=> res!1034070 e!845026)))

(assert (=> b!1514101 (= res!1034070 (or (not (= (select (arr!48675 a!2804) j!70) lt!656184)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48675 a!2804) index!487) (select (arr!48675 a!2804) j!70)) (not (= (select (arr!48675 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!129116 res!1034073) b!1514098))

(assert (= (and b!1514098 res!1034071) b!1514091))

(assert (= (and b!1514091 res!1034063) b!1514097))

(assert (= (and b!1514097 res!1034068) b!1514095))

(assert (= (and b!1514095 res!1034076) b!1514093))

(assert (= (and b!1514093 res!1034069) b!1514099))

(assert (= (and b!1514099 res!1034072) b!1514092))

(assert (= (and b!1514092 res!1034064) b!1514094))

(assert (= (and b!1514094 res!1034065) b!1514090))

(assert (= (and b!1514090 res!1034075) b!1514100))

(assert (= (and b!1514100 res!1034066) b!1514089))

(assert (= (and b!1514089 res!1034067) b!1514101))

(assert (= (and b!1514101 (not res!1034070)) b!1514088))

(assert (= (and b!1514088 res!1034074) b!1514096))

(declare-fun m!1397069 () Bool)

(assert (=> b!1514092 m!1397069))

(assert (=> b!1514092 m!1397069))

(declare-fun m!1397071 () Bool)

(assert (=> b!1514092 m!1397071))

(assert (=> b!1514092 m!1397071))

(assert (=> b!1514092 m!1397069))

(declare-fun m!1397073 () Bool)

(assert (=> b!1514092 m!1397073))

(declare-fun m!1397075 () Bool)

(assert (=> b!1514091 m!1397075))

(assert (=> b!1514091 m!1397075))

(declare-fun m!1397077 () Bool)

(assert (=> b!1514091 m!1397077))

(assert (=> b!1514097 m!1397069))

(assert (=> b!1514097 m!1397069))

(declare-fun m!1397079 () Bool)

(assert (=> b!1514097 m!1397079))

(assert (=> b!1514089 m!1397069))

(assert (=> b!1514089 m!1397069))

(declare-fun m!1397081 () Bool)

(assert (=> b!1514089 m!1397081))

(declare-fun m!1397083 () Bool)

(assert (=> b!1514100 m!1397083))

(declare-fun m!1397085 () Bool)

(assert (=> b!1514100 m!1397085))

(assert (=> b!1514101 m!1397069))

(declare-fun m!1397087 () Bool)

(assert (=> b!1514101 m!1397087))

(declare-fun m!1397089 () Bool)

(assert (=> start!129116 m!1397089))

(declare-fun m!1397091 () Bool)

(assert (=> start!129116 m!1397091))

(assert (=> b!1514094 m!1397069))

(assert (=> b!1514094 m!1397069))

(declare-fun m!1397093 () Bool)

(assert (=> b!1514094 m!1397093))

(declare-fun m!1397095 () Bool)

(assert (=> b!1514095 m!1397095))

(declare-fun m!1397097 () Bool)

(assert (=> b!1514093 m!1397097))

(declare-fun m!1397099 () Bool)

(assert (=> b!1514090 m!1397099))

(assert (=> b!1514090 m!1397099))

(declare-fun m!1397101 () Bool)

(assert (=> b!1514090 m!1397101))

(declare-fun m!1397103 () Bool)

(assert (=> b!1514090 m!1397103))

(declare-fun m!1397105 () Bool)

(assert (=> b!1514090 m!1397105))

(assert (=> b!1514088 m!1397069))

(assert (=> b!1514088 m!1397069))

(declare-fun m!1397107 () Bool)

(assert (=> b!1514088 m!1397107))

(assert (=> b!1514088 m!1397069))

(declare-fun m!1397109 () Bool)

(assert (=> b!1514088 m!1397109))

(declare-fun m!1397111 () Bool)

(assert (=> b!1514096 m!1397111))

(declare-fun m!1397113 () Bool)

(assert (=> b!1514096 m!1397113))

(push 1)

