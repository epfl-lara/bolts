; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130304 () Bool)

(assert start!130304)

(declare-fun b!1529333 () Bool)

(declare-fun res!1047185 () Bool)

(declare-fun e!852296 () Bool)

(assert (=> b!1529333 (=> (not res!1047185) (not e!852296))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101581 0))(
  ( (array!101582 (arr!49011 (Array (_ BitVec 32) (_ BitVec 64))) (size!49562 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101581)

(declare-datatypes ((SeekEntryResult!13197 0))(
  ( (MissingZero!13197 (index!55182 (_ BitVec 32))) (Found!13197 (index!55183 (_ BitVec 32))) (Intermediate!13197 (undefined!14009 Bool) (index!55184 (_ BitVec 32)) (x!136871 (_ BitVec 32))) (Undefined!13197) (MissingVacant!13197 (index!55185 (_ BitVec 32))) )
))
(declare-fun lt!662364 () SeekEntryResult!13197)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101581 (_ BitVec 32)) SeekEntryResult!13197)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529333 (= res!1047185 (= lt!662364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49011 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49011 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101582 (store (arr!49011 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49562 a!2804)) mask!2512)))))

(declare-fun b!1529334 () Bool)

(declare-fun e!852295 () Bool)

(assert (=> b!1529334 (= e!852295 e!852296)))

(declare-fun res!1047184 () Bool)

(assert (=> b!1529334 (=> (not res!1047184) (not e!852296))))

(declare-fun lt!662365 () SeekEntryResult!13197)

(assert (=> b!1529334 (= res!1047184 (= lt!662364 lt!662365))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1529334 (= lt!662365 (Intermediate!13197 false resIndex!21 resX!21))))

(assert (=> b!1529334 (= lt!662364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49011 a!2804) j!70) mask!2512) (select (arr!49011 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529335 () Bool)

(declare-fun res!1047187 () Bool)

(assert (=> b!1529335 (=> (not res!1047187) (not e!852295))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1529335 (= res!1047187 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49562 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49562 a!2804))))))

(declare-fun b!1529336 () Bool)

(declare-fun e!852294 () Bool)

(assert (=> b!1529336 (= e!852294 true)))

(declare-fun lt!662363 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529336 (= lt!662363 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1529337 () Bool)

(declare-fun res!1047188 () Bool)

(assert (=> b!1529337 (=> (not res!1047188) (not e!852296))))

(assert (=> b!1529337 (= res!1047188 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49011 a!2804) j!70) a!2804 mask!2512) lt!662365))))

(declare-fun b!1529338 () Bool)

(assert (=> b!1529338 (= e!852296 (not e!852294))))

(declare-fun res!1047180 () Bool)

(assert (=> b!1529338 (=> res!1047180 e!852294)))

(assert (=> b!1529338 (= res!1047180 (or (not (= (select (arr!49011 a!2804) j!70) (select (store (arr!49011 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!852292 () Bool)

(assert (=> b!1529338 e!852292))

(declare-fun res!1047186 () Bool)

(assert (=> b!1529338 (=> (not res!1047186) (not e!852292))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101581 (_ BitVec 32)) Bool)

(assert (=> b!1529338 (= res!1047186 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51134 0))(
  ( (Unit!51135) )
))
(declare-fun lt!662362 () Unit!51134)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101581 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51134)

(assert (=> b!1529338 (= lt!662362 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529339 () Bool)

(declare-fun res!1047178 () Bool)

(assert (=> b!1529339 (=> (not res!1047178) (not e!852295))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529339 (= res!1047178 (validKeyInArray!0 (select (arr!49011 a!2804) j!70)))))

(declare-fun b!1529340 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101581 (_ BitVec 32)) SeekEntryResult!13197)

(assert (=> b!1529340 (= e!852292 (= (seekEntry!0 (select (arr!49011 a!2804) j!70) a!2804 mask!2512) (Found!13197 j!70)))))

(declare-fun b!1529341 () Bool)

(declare-fun res!1047189 () Bool)

(assert (=> b!1529341 (=> (not res!1047189) (not e!852295))))

(declare-datatypes ((List!35674 0))(
  ( (Nil!35671) (Cons!35670 (h!37107 (_ BitVec 64)) (t!50375 List!35674)) )
))
(declare-fun arrayNoDuplicates!0 (array!101581 (_ BitVec 32) List!35674) Bool)

(assert (=> b!1529341 (= res!1047189 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35671))))

(declare-fun b!1529343 () Bool)

(declare-fun res!1047183 () Bool)

(assert (=> b!1529343 (=> (not res!1047183) (not e!852295))))

(assert (=> b!1529343 (= res!1047183 (and (= (size!49562 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49562 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49562 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1529344 () Bool)

(declare-fun res!1047181 () Bool)

(assert (=> b!1529344 (=> (not res!1047181) (not e!852295))))

(assert (=> b!1529344 (= res!1047181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1529342 () Bool)

(declare-fun res!1047179 () Bool)

(assert (=> b!1529342 (=> (not res!1047179) (not e!852295))))

(assert (=> b!1529342 (= res!1047179 (validKeyInArray!0 (select (arr!49011 a!2804) i!961)))))

(declare-fun res!1047182 () Bool)

(assert (=> start!130304 (=> (not res!1047182) (not e!852295))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130304 (= res!1047182 (validMask!0 mask!2512))))

(assert (=> start!130304 e!852295))

(assert (=> start!130304 true))

(declare-fun array_inv!37956 (array!101581) Bool)

(assert (=> start!130304 (array_inv!37956 a!2804)))

(assert (= (and start!130304 res!1047182) b!1529343))

(assert (= (and b!1529343 res!1047183) b!1529342))

(assert (= (and b!1529342 res!1047179) b!1529339))

(assert (= (and b!1529339 res!1047178) b!1529344))

(assert (= (and b!1529344 res!1047181) b!1529341))

(assert (= (and b!1529341 res!1047189) b!1529335))

(assert (= (and b!1529335 res!1047187) b!1529334))

(assert (= (and b!1529334 res!1047184) b!1529337))

(assert (= (and b!1529337 res!1047188) b!1529333))

(assert (= (and b!1529333 res!1047185) b!1529338))

(assert (= (and b!1529338 res!1047186) b!1529340))

(assert (= (and b!1529338 (not res!1047180)) b!1529336))

(declare-fun m!1412329 () Bool)

(assert (=> b!1529339 m!1412329))

(assert (=> b!1529339 m!1412329))

(declare-fun m!1412331 () Bool)

(assert (=> b!1529339 m!1412331))

(assert (=> b!1529337 m!1412329))

(assert (=> b!1529337 m!1412329))

(declare-fun m!1412333 () Bool)

(assert (=> b!1529337 m!1412333))

(declare-fun m!1412335 () Bool)

(assert (=> b!1529344 m!1412335))

(assert (=> b!1529338 m!1412329))

(declare-fun m!1412337 () Bool)

(assert (=> b!1529338 m!1412337))

(declare-fun m!1412339 () Bool)

(assert (=> b!1529338 m!1412339))

(declare-fun m!1412341 () Bool)

(assert (=> b!1529338 m!1412341))

(declare-fun m!1412343 () Bool)

(assert (=> b!1529338 m!1412343))

(declare-fun m!1412345 () Bool)

(assert (=> start!130304 m!1412345))

(declare-fun m!1412347 () Bool)

(assert (=> start!130304 m!1412347))

(declare-fun m!1412349 () Bool)

(assert (=> b!1529341 m!1412349))

(assert (=> b!1529334 m!1412329))

(assert (=> b!1529334 m!1412329))

(declare-fun m!1412351 () Bool)

(assert (=> b!1529334 m!1412351))

(assert (=> b!1529334 m!1412351))

(assert (=> b!1529334 m!1412329))

(declare-fun m!1412353 () Bool)

(assert (=> b!1529334 m!1412353))

(assert (=> b!1529333 m!1412339))

(assert (=> b!1529333 m!1412341))

(assert (=> b!1529333 m!1412341))

(declare-fun m!1412355 () Bool)

(assert (=> b!1529333 m!1412355))

(assert (=> b!1529333 m!1412355))

(assert (=> b!1529333 m!1412341))

(declare-fun m!1412357 () Bool)

(assert (=> b!1529333 m!1412357))

(declare-fun m!1412359 () Bool)

(assert (=> b!1529336 m!1412359))

(assert (=> b!1529340 m!1412329))

(assert (=> b!1529340 m!1412329))

(declare-fun m!1412361 () Bool)

(assert (=> b!1529340 m!1412361))

(declare-fun m!1412363 () Bool)

(assert (=> b!1529342 m!1412363))

(assert (=> b!1529342 m!1412363))

(declare-fun m!1412365 () Bool)

(assert (=> b!1529342 m!1412365))

(push 1)

