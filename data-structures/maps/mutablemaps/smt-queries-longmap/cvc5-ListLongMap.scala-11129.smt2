; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130102 () Bool)

(assert start!130102)

(declare-fun b!1526229 () Bool)

(declare-fun res!1044401 () Bool)

(declare-fun e!850742 () Bool)

(assert (=> b!1526229 (=> (not res!1044401) (not e!850742))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101442 0))(
  ( (array!101443 (arr!48943 (Array (_ BitVec 32) (_ BitVec 64))) (size!49494 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101442)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1526229 (= res!1044401 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49494 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49494 a!2804))))))

(declare-fun b!1526230 () Bool)

(declare-fun res!1044406 () Bool)

(declare-fun e!850748 () Bool)

(assert (=> b!1526230 (=> (not res!1044406) (not e!850748))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13129 0))(
  ( (MissingZero!13129 (index!54910 (_ BitVec 32))) (Found!13129 (index!54911 (_ BitVec 32))) (Intermediate!13129 (undefined!13941 Bool) (index!54912 (_ BitVec 32)) (x!136618 (_ BitVec 32))) (Undefined!13129) (MissingVacant!13129 (index!54913 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101442 (_ BitVec 32)) SeekEntryResult!13129)

(assert (=> b!1526230 (= res!1044406 (= (seekEntry!0 (select (arr!48943 a!2804) j!70) a!2804 mask!2512) (Found!13129 j!70)))))

(declare-fun lt!660969 () (_ BitVec 64))

(declare-fun e!850746 () Bool)

(declare-fun b!1526231 () Bool)

(declare-fun lt!660967 () array!101442)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101442 (_ BitVec 32)) SeekEntryResult!13129)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101442 (_ BitVec 32)) SeekEntryResult!13129)

(assert (=> b!1526231 (= e!850746 (= (seekEntryOrOpen!0 lt!660969 lt!660967 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660969 lt!660967 mask!2512)))))

(declare-fun b!1526232 () Bool)

(declare-fun e!850744 () Bool)

(declare-fun e!850747 () Bool)

(assert (=> b!1526232 (= e!850744 e!850747)))

(declare-fun res!1044410 () Bool)

(assert (=> b!1526232 (=> (not res!1044410) (not e!850747))))

(declare-fun lt!660968 () SeekEntryResult!13129)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101442 (_ BitVec 32)) SeekEntryResult!13129)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526232 (= res!1044410 (= lt!660968 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660969 mask!2512) lt!660969 lt!660967 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1526232 (= lt!660969 (select (store (arr!48943 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526232 (= lt!660967 (array!101443 (store (arr!48943 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49494 a!2804)))))

(declare-fun res!1044407 () Bool)

(assert (=> start!130102 (=> (not res!1044407) (not e!850742))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130102 (= res!1044407 (validMask!0 mask!2512))))

(assert (=> start!130102 e!850742))

(assert (=> start!130102 true))

(declare-fun array_inv!37888 (array!101442) Bool)

(assert (=> start!130102 (array_inv!37888 a!2804)))

(declare-fun b!1526233 () Bool)

(declare-fun res!1044408 () Bool)

(assert (=> b!1526233 (=> (not res!1044408) (not e!850742))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526233 (= res!1044408 (validKeyInArray!0 (select (arr!48943 a!2804) j!70)))))

(declare-fun b!1526234 () Bool)

(assert (=> b!1526234 (= e!850742 e!850744)))

(declare-fun res!1044405 () Bool)

(assert (=> b!1526234 (=> (not res!1044405) (not e!850744))))

(declare-fun lt!660970 () SeekEntryResult!13129)

(assert (=> b!1526234 (= res!1044405 (= lt!660968 lt!660970))))

(assert (=> b!1526234 (= lt!660970 (Intermediate!13129 false resIndex!21 resX!21))))

(assert (=> b!1526234 (= lt!660968 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48943 a!2804) j!70) mask!2512) (select (arr!48943 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1526235 () Bool)

(declare-fun res!1044412 () Bool)

(assert (=> b!1526235 (=> (not res!1044412) (not e!850742))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101442 (_ BitVec 32)) Bool)

(assert (=> b!1526235 (= res!1044412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526236 () Bool)

(declare-fun e!850745 () Bool)

(assert (=> b!1526236 (= e!850748 e!850745)))

(declare-fun res!1044404 () Bool)

(assert (=> b!1526236 (=> res!1044404 e!850745)))

(assert (=> b!1526236 (= res!1044404 (or (not (= (select (arr!48943 a!2804) j!70) lt!660969)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48943 a!2804) index!487) (select (arr!48943 a!2804) j!70)) (not (= (select (arr!48943 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1526237 () Bool)

(declare-fun res!1044403 () Bool)

(assert (=> b!1526237 (=> (not res!1044403) (not e!850742))))

(assert (=> b!1526237 (= res!1044403 (validKeyInArray!0 (select (arr!48943 a!2804) i!961)))))

(declare-fun b!1526238 () Bool)

(assert (=> b!1526238 (= e!850745 e!850746)))

(declare-fun res!1044414 () Bool)

(assert (=> b!1526238 (=> (not res!1044414) (not e!850746))))

(assert (=> b!1526238 (= res!1044414 (= (seekEntryOrOpen!0 (select (arr!48943 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48943 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1526239 () Bool)

(declare-fun res!1044411 () Bool)

(assert (=> b!1526239 (=> (not res!1044411) (not e!850744))))

(assert (=> b!1526239 (= res!1044411 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48943 a!2804) j!70) a!2804 mask!2512) lt!660970))))

(declare-fun b!1526240 () Bool)

(declare-fun res!1044413 () Bool)

(assert (=> b!1526240 (=> (not res!1044413) (not e!850742))))

(declare-datatypes ((List!35606 0))(
  ( (Nil!35603) (Cons!35602 (h!37036 (_ BitVec 64)) (t!50307 List!35606)) )
))
(declare-fun arrayNoDuplicates!0 (array!101442 (_ BitVec 32) List!35606) Bool)

(assert (=> b!1526240 (= res!1044413 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35603))))

(declare-fun b!1526241 () Bool)

(assert (=> b!1526241 (= e!850747 (not true))))

(assert (=> b!1526241 e!850748))

(declare-fun res!1044409 () Bool)

(assert (=> b!1526241 (=> (not res!1044409) (not e!850748))))

(assert (=> b!1526241 (= res!1044409 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50998 0))(
  ( (Unit!50999) )
))
(declare-fun lt!660966 () Unit!50998)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101442 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50998)

(assert (=> b!1526241 (= lt!660966 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1526242 () Bool)

(declare-fun res!1044402 () Bool)

(assert (=> b!1526242 (=> (not res!1044402) (not e!850742))))

(assert (=> b!1526242 (= res!1044402 (and (= (size!49494 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49494 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49494 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!130102 res!1044407) b!1526242))

(assert (= (and b!1526242 res!1044402) b!1526237))

(assert (= (and b!1526237 res!1044403) b!1526233))

(assert (= (and b!1526233 res!1044408) b!1526235))

(assert (= (and b!1526235 res!1044412) b!1526240))

(assert (= (and b!1526240 res!1044413) b!1526229))

(assert (= (and b!1526229 res!1044401) b!1526234))

(assert (= (and b!1526234 res!1044405) b!1526239))

(assert (= (and b!1526239 res!1044411) b!1526232))

(assert (= (and b!1526232 res!1044410) b!1526241))

(assert (= (and b!1526241 res!1044409) b!1526230))

(assert (= (and b!1526230 res!1044406) b!1526236))

(assert (= (and b!1526236 (not res!1044404)) b!1526238))

(assert (= (and b!1526238 res!1044414) b!1526231))

(declare-fun m!1409073 () Bool)

(assert (=> b!1526236 m!1409073))

(declare-fun m!1409075 () Bool)

(assert (=> b!1526236 m!1409075))

(declare-fun m!1409077 () Bool)

(assert (=> start!130102 m!1409077))

(declare-fun m!1409079 () Bool)

(assert (=> start!130102 m!1409079))

(assert (=> b!1526238 m!1409073))

(assert (=> b!1526238 m!1409073))

(declare-fun m!1409081 () Bool)

(assert (=> b!1526238 m!1409081))

(assert (=> b!1526238 m!1409073))

(declare-fun m!1409083 () Bool)

(assert (=> b!1526238 m!1409083))

(declare-fun m!1409085 () Bool)

(assert (=> b!1526232 m!1409085))

(assert (=> b!1526232 m!1409085))

(declare-fun m!1409087 () Bool)

(assert (=> b!1526232 m!1409087))

(declare-fun m!1409089 () Bool)

(assert (=> b!1526232 m!1409089))

(declare-fun m!1409091 () Bool)

(assert (=> b!1526232 m!1409091))

(assert (=> b!1526233 m!1409073))

(assert (=> b!1526233 m!1409073))

(declare-fun m!1409093 () Bool)

(assert (=> b!1526233 m!1409093))

(declare-fun m!1409095 () Bool)

(assert (=> b!1526241 m!1409095))

(declare-fun m!1409097 () Bool)

(assert (=> b!1526241 m!1409097))

(assert (=> b!1526239 m!1409073))

(assert (=> b!1526239 m!1409073))

(declare-fun m!1409099 () Bool)

(assert (=> b!1526239 m!1409099))

(declare-fun m!1409101 () Bool)

(assert (=> b!1526231 m!1409101))

(declare-fun m!1409103 () Bool)

(assert (=> b!1526231 m!1409103))

(declare-fun m!1409105 () Bool)

(assert (=> b!1526235 m!1409105))

(declare-fun m!1409107 () Bool)

(assert (=> b!1526237 m!1409107))

(assert (=> b!1526237 m!1409107))

(declare-fun m!1409109 () Bool)

(assert (=> b!1526237 m!1409109))

(assert (=> b!1526230 m!1409073))

(assert (=> b!1526230 m!1409073))

(declare-fun m!1409111 () Bool)

(assert (=> b!1526230 m!1409111))

(assert (=> b!1526234 m!1409073))

(assert (=> b!1526234 m!1409073))

(declare-fun m!1409113 () Bool)

(assert (=> b!1526234 m!1409113))

(assert (=> b!1526234 m!1409113))

(assert (=> b!1526234 m!1409073))

(declare-fun m!1409115 () Bool)

(assert (=> b!1526234 m!1409115))

(declare-fun m!1409117 () Bool)

(assert (=> b!1526240 m!1409117))

(push 1)

