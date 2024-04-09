; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130144 () Bool)

(assert start!130144)

(declare-fun res!1045284 () Bool)

(declare-fun e!851184 () Bool)

(assert (=> start!130144 (=> (not res!1045284) (not e!851184))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130144 (= res!1045284 (validMask!0 mask!2512))))

(assert (=> start!130144 e!851184))

(assert (=> start!130144 true))

(declare-datatypes ((array!101484 0))(
  ( (array!101485 (arr!48964 (Array (_ BitVec 32) (_ BitVec 64))) (size!49515 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101484)

(declare-fun array_inv!37909 (array!101484) Bool)

(assert (=> start!130144 (array_inv!37909 a!2804)))

(declare-fun b!1527111 () Bool)

(declare-fun res!1045290 () Bool)

(assert (=> b!1527111 (=> (not res!1045290) (not e!851184))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1527111 (= res!1045290 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49515 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49515 a!2804))))))

(declare-fun b!1527112 () Bool)

(declare-fun res!1045283 () Bool)

(assert (=> b!1527112 (=> (not res!1045283) (not e!851184))))

(declare-datatypes ((List!35627 0))(
  ( (Nil!35624) (Cons!35623 (h!37057 (_ BitVec 64)) (t!50328 List!35627)) )
))
(declare-fun arrayNoDuplicates!0 (array!101484 (_ BitVec 32) List!35627) Bool)

(assert (=> b!1527112 (= res!1045283 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35624))))

(declare-fun b!1527113 () Bool)

(declare-fun e!851185 () Bool)

(assert (=> b!1527113 (= e!851185 (not true))))

(declare-fun e!851183 () Bool)

(assert (=> b!1527113 e!851183))

(declare-fun res!1045289 () Bool)

(assert (=> b!1527113 (=> (not res!1045289) (not e!851183))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101484 (_ BitVec 32)) Bool)

(assert (=> b!1527113 (= res!1045289 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51040 0))(
  ( (Unit!51041) )
))
(declare-fun lt!661283 () Unit!51040)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101484 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51040)

(assert (=> b!1527113 (= lt!661283 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1527114 () Bool)

(declare-fun res!1045288 () Bool)

(assert (=> b!1527114 (=> (not res!1045288) (not e!851184))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1527114 (= res!1045288 (validKeyInArray!0 (select (arr!48964 a!2804) i!961)))))

(declare-fun lt!661281 () array!101484)

(declare-fun b!1527115 () Bool)

(declare-fun e!851186 () Bool)

(declare-fun lt!661282 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!13150 0))(
  ( (MissingZero!13150 (index!54994 (_ BitVec 32))) (Found!13150 (index!54995 (_ BitVec 32))) (Intermediate!13150 (undefined!13962 Bool) (index!54996 (_ BitVec 32)) (x!136695 (_ BitVec 32))) (Undefined!13150) (MissingVacant!13150 (index!54997 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101484 (_ BitVec 32)) SeekEntryResult!13150)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101484 (_ BitVec 32)) SeekEntryResult!13150)

(assert (=> b!1527115 (= e!851186 (= (seekEntryOrOpen!0 lt!661282 lt!661281 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661282 lt!661281 mask!2512)))))

(declare-fun b!1527116 () Bool)

(declare-fun e!851188 () Bool)

(assert (=> b!1527116 (= e!851184 e!851188)))

(declare-fun res!1045291 () Bool)

(assert (=> b!1527116 (=> (not res!1045291) (not e!851188))))

(declare-fun lt!661284 () SeekEntryResult!13150)

(declare-fun lt!661285 () SeekEntryResult!13150)

(assert (=> b!1527116 (= res!1045291 (= lt!661284 lt!661285))))

(assert (=> b!1527116 (= lt!661285 (Intermediate!13150 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101484 (_ BitVec 32)) SeekEntryResult!13150)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1527116 (= lt!661284 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48964 a!2804) j!70) mask!2512) (select (arr!48964 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527117 () Bool)

(declare-fun res!1045286 () Bool)

(assert (=> b!1527117 (=> (not res!1045286) (not e!851184))))

(assert (=> b!1527117 (= res!1045286 (validKeyInArray!0 (select (arr!48964 a!2804) j!70)))))

(declare-fun b!1527118 () Bool)

(declare-fun res!1045294 () Bool)

(assert (=> b!1527118 (=> (not res!1045294) (not e!851188))))

(assert (=> b!1527118 (= res!1045294 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48964 a!2804) j!70) a!2804 mask!2512) lt!661285))))

(declare-fun b!1527119 () Bool)

(declare-fun res!1045287 () Bool)

(assert (=> b!1527119 (=> (not res!1045287) (not e!851183))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101484 (_ BitVec 32)) SeekEntryResult!13150)

(assert (=> b!1527119 (= res!1045287 (= (seekEntry!0 (select (arr!48964 a!2804) j!70) a!2804 mask!2512) (Found!13150 j!70)))))

(declare-fun b!1527120 () Bool)

(declare-fun res!1045285 () Bool)

(assert (=> b!1527120 (=> (not res!1045285) (not e!851184))))

(assert (=> b!1527120 (= res!1045285 (and (= (size!49515 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49515 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49515 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1527121 () Bool)

(declare-fun e!851189 () Bool)

(assert (=> b!1527121 (= e!851183 e!851189)))

(declare-fun res!1045296 () Bool)

(assert (=> b!1527121 (=> res!1045296 e!851189)))

(assert (=> b!1527121 (= res!1045296 (or (not (= (select (arr!48964 a!2804) j!70) lt!661282)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48964 a!2804) index!487) (select (arr!48964 a!2804) j!70)) (not (= (select (arr!48964 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1527122 () Bool)

(assert (=> b!1527122 (= e!851189 e!851186)))

(declare-fun res!1045295 () Bool)

(assert (=> b!1527122 (=> (not res!1045295) (not e!851186))))

(assert (=> b!1527122 (= res!1045295 (= (seekEntryOrOpen!0 (select (arr!48964 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48964 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1527123 () Bool)

(declare-fun res!1045292 () Bool)

(assert (=> b!1527123 (=> (not res!1045292) (not e!851184))))

(assert (=> b!1527123 (= res!1045292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1527124 () Bool)

(assert (=> b!1527124 (= e!851188 e!851185)))

(declare-fun res!1045293 () Bool)

(assert (=> b!1527124 (=> (not res!1045293) (not e!851185))))

(assert (=> b!1527124 (= res!1045293 (= lt!661284 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661282 mask!2512) lt!661282 lt!661281 mask!2512)))))

(assert (=> b!1527124 (= lt!661282 (select (store (arr!48964 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1527124 (= lt!661281 (array!101485 (store (arr!48964 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49515 a!2804)))))

(assert (= (and start!130144 res!1045284) b!1527120))

(assert (= (and b!1527120 res!1045285) b!1527114))

(assert (= (and b!1527114 res!1045288) b!1527117))

(assert (= (and b!1527117 res!1045286) b!1527123))

(assert (= (and b!1527123 res!1045292) b!1527112))

(assert (= (and b!1527112 res!1045283) b!1527111))

(assert (= (and b!1527111 res!1045290) b!1527116))

(assert (= (and b!1527116 res!1045291) b!1527118))

(assert (= (and b!1527118 res!1045294) b!1527124))

(assert (= (and b!1527124 res!1045293) b!1527113))

(assert (= (and b!1527113 res!1045289) b!1527119))

(assert (= (and b!1527119 res!1045287) b!1527121))

(assert (= (and b!1527121 (not res!1045296)) b!1527122))

(assert (= (and b!1527122 res!1045295) b!1527115))

(declare-fun m!1410039 () Bool)

(assert (=> b!1527121 m!1410039))

(declare-fun m!1410041 () Bool)

(assert (=> b!1527121 m!1410041))

(declare-fun m!1410043 () Bool)

(assert (=> b!1527124 m!1410043))

(assert (=> b!1527124 m!1410043))

(declare-fun m!1410045 () Bool)

(assert (=> b!1527124 m!1410045))

(declare-fun m!1410047 () Bool)

(assert (=> b!1527124 m!1410047))

(declare-fun m!1410049 () Bool)

(assert (=> b!1527124 m!1410049))

(declare-fun m!1410051 () Bool)

(assert (=> start!130144 m!1410051))

(declare-fun m!1410053 () Bool)

(assert (=> start!130144 m!1410053))

(declare-fun m!1410055 () Bool)

(assert (=> b!1527113 m!1410055))

(declare-fun m!1410057 () Bool)

(assert (=> b!1527113 m!1410057))

(declare-fun m!1410059 () Bool)

(assert (=> b!1527114 m!1410059))

(assert (=> b!1527114 m!1410059))

(declare-fun m!1410061 () Bool)

(assert (=> b!1527114 m!1410061))

(assert (=> b!1527119 m!1410039))

(assert (=> b!1527119 m!1410039))

(declare-fun m!1410063 () Bool)

(assert (=> b!1527119 m!1410063))

(assert (=> b!1527118 m!1410039))

(assert (=> b!1527118 m!1410039))

(declare-fun m!1410065 () Bool)

(assert (=> b!1527118 m!1410065))

(declare-fun m!1410067 () Bool)

(assert (=> b!1527115 m!1410067))

(declare-fun m!1410069 () Bool)

(assert (=> b!1527115 m!1410069))

(assert (=> b!1527122 m!1410039))

(assert (=> b!1527122 m!1410039))

(declare-fun m!1410071 () Bool)

(assert (=> b!1527122 m!1410071))

(assert (=> b!1527122 m!1410039))

(declare-fun m!1410073 () Bool)

(assert (=> b!1527122 m!1410073))

(declare-fun m!1410075 () Bool)

(assert (=> b!1527123 m!1410075))

(declare-fun m!1410077 () Bool)

(assert (=> b!1527112 m!1410077))

(assert (=> b!1527117 m!1410039))

(assert (=> b!1527117 m!1410039))

(declare-fun m!1410079 () Bool)

(assert (=> b!1527117 m!1410079))

(assert (=> b!1527116 m!1410039))

(assert (=> b!1527116 m!1410039))

(declare-fun m!1410081 () Bool)

(assert (=> b!1527116 m!1410081))

(assert (=> b!1527116 m!1410081))

(assert (=> b!1527116 m!1410039))

(declare-fun m!1410083 () Bool)

(assert (=> b!1527116 m!1410083))

(push 1)

