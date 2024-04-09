; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130306 () Bool)

(assert start!130306)

(declare-fun b!1529369 () Bool)

(declare-fun res!1047220 () Bool)

(declare-fun e!852309 () Bool)

(assert (=> b!1529369 (=> (not res!1047220) (not e!852309))))

(declare-datatypes ((array!101583 0))(
  ( (array!101584 (arr!49012 (Array (_ BitVec 32) (_ BitVec 64))) (size!49563 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101583)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529369 (= res!1047220 (validKeyInArray!0 (select (arr!49012 a!2804) i!961)))))

(declare-fun b!1529370 () Bool)

(declare-fun e!852310 () Bool)

(assert (=> b!1529370 (= e!852309 e!852310)))

(declare-fun res!1047214 () Bool)

(assert (=> b!1529370 (=> (not res!1047214) (not e!852310))))

(declare-datatypes ((SeekEntryResult!13198 0))(
  ( (MissingZero!13198 (index!55186 (_ BitVec 32))) (Found!13198 (index!55187 (_ BitVec 32))) (Intermediate!13198 (undefined!14010 Bool) (index!55188 (_ BitVec 32)) (x!136880 (_ BitVec 32))) (Undefined!13198) (MissingVacant!13198 (index!55189 (_ BitVec 32))) )
))
(declare-fun lt!662376 () SeekEntryResult!13198)

(declare-fun lt!662377 () SeekEntryResult!13198)

(assert (=> b!1529370 (= res!1047214 (= lt!662376 lt!662377))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1529370 (= lt!662377 (Intermediate!13198 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101583 (_ BitVec 32)) SeekEntryResult!13198)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529370 (= lt!662376 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49012 a!2804) j!70) mask!2512) (select (arr!49012 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529372 () Bool)

(declare-fun res!1047223 () Bool)

(assert (=> b!1529372 (=> (not res!1047223) (not e!852309))))

(declare-datatypes ((List!35675 0))(
  ( (Nil!35672) (Cons!35671 (h!37108 (_ BitVec 64)) (t!50376 List!35675)) )
))
(declare-fun arrayNoDuplicates!0 (array!101583 (_ BitVec 32) List!35675) Bool)

(assert (=> b!1529372 (= res!1047223 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35672))))

(declare-fun b!1529373 () Bool)

(declare-fun res!1047219 () Bool)

(assert (=> b!1529373 (=> (not res!1047219) (not e!852310))))

(assert (=> b!1529373 (= res!1047219 (= lt!662376 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49012 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49012 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101584 (store (arr!49012 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49563 a!2804)) mask!2512)))))

(declare-fun b!1529374 () Bool)

(declare-fun e!852307 () Bool)

(assert (=> b!1529374 (= e!852307 true)))

(declare-fun lt!662374 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529374 (= lt!662374 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1529375 () Bool)

(declare-fun res!1047216 () Bool)

(assert (=> b!1529375 (=> (not res!1047216) (not e!852309))))

(assert (=> b!1529375 (= res!1047216 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49563 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49563 a!2804))))))

(declare-fun b!1529376 () Bool)

(declare-fun e!852308 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101583 (_ BitVec 32)) SeekEntryResult!13198)

(assert (=> b!1529376 (= e!852308 (= (seekEntry!0 (select (arr!49012 a!2804) j!70) a!2804 mask!2512) (Found!13198 j!70)))))

(declare-fun b!1529377 () Bool)

(declare-fun res!1047225 () Bool)

(assert (=> b!1529377 (=> (not res!1047225) (not e!852310))))

(assert (=> b!1529377 (= res!1047225 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49012 a!2804) j!70) a!2804 mask!2512) lt!662377))))

(declare-fun b!1529378 () Bool)

(declare-fun res!1047218 () Bool)

(assert (=> b!1529378 (=> (not res!1047218) (not e!852309))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101583 (_ BitVec 32)) Bool)

(assert (=> b!1529378 (= res!1047218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1529379 () Bool)

(declare-fun res!1047224 () Bool)

(assert (=> b!1529379 (=> (not res!1047224) (not e!852309))))

(assert (=> b!1529379 (= res!1047224 (validKeyInArray!0 (select (arr!49012 a!2804) j!70)))))

(declare-fun b!1529380 () Bool)

(declare-fun res!1047215 () Bool)

(assert (=> b!1529380 (=> (not res!1047215) (not e!852309))))

(assert (=> b!1529380 (= res!1047215 (and (= (size!49563 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49563 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49563 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1047221 () Bool)

(assert (=> start!130306 (=> (not res!1047221) (not e!852309))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130306 (= res!1047221 (validMask!0 mask!2512))))

(assert (=> start!130306 e!852309))

(assert (=> start!130306 true))

(declare-fun array_inv!37957 (array!101583) Bool)

(assert (=> start!130306 (array_inv!37957 a!2804)))

(declare-fun b!1529371 () Bool)

(assert (=> b!1529371 (= e!852310 (not e!852307))))

(declare-fun res!1047217 () Bool)

(assert (=> b!1529371 (=> res!1047217 e!852307)))

(assert (=> b!1529371 (= res!1047217 (or (not (= (select (arr!49012 a!2804) j!70) (select (store (arr!49012 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1529371 e!852308))

(declare-fun res!1047222 () Bool)

(assert (=> b!1529371 (=> (not res!1047222) (not e!852308))))

(assert (=> b!1529371 (= res!1047222 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51136 0))(
  ( (Unit!51137) )
))
(declare-fun lt!662375 () Unit!51136)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101583 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51136)

(assert (=> b!1529371 (= lt!662375 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!130306 res!1047221) b!1529380))

(assert (= (and b!1529380 res!1047215) b!1529369))

(assert (= (and b!1529369 res!1047220) b!1529379))

(assert (= (and b!1529379 res!1047224) b!1529378))

(assert (= (and b!1529378 res!1047218) b!1529372))

(assert (= (and b!1529372 res!1047223) b!1529375))

(assert (= (and b!1529375 res!1047216) b!1529370))

(assert (= (and b!1529370 res!1047214) b!1529377))

(assert (= (and b!1529377 res!1047225) b!1529373))

(assert (= (and b!1529373 res!1047219) b!1529371))

(assert (= (and b!1529371 res!1047222) b!1529376))

(assert (= (and b!1529371 (not res!1047217)) b!1529374))

(declare-fun m!1412367 () Bool)

(assert (=> b!1529376 m!1412367))

(assert (=> b!1529376 m!1412367))

(declare-fun m!1412369 () Bool)

(assert (=> b!1529376 m!1412369))

(assert (=> b!1529377 m!1412367))

(assert (=> b!1529377 m!1412367))

(declare-fun m!1412371 () Bool)

(assert (=> b!1529377 m!1412371))

(assert (=> b!1529379 m!1412367))

(assert (=> b!1529379 m!1412367))

(declare-fun m!1412373 () Bool)

(assert (=> b!1529379 m!1412373))

(declare-fun m!1412375 () Bool)

(assert (=> b!1529374 m!1412375))

(declare-fun m!1412377 () Bool)

(assert (=> start!130306 m!1412377))

(declare-fun m!1412379 () Bool)

(assert (=> start!130306 m!1412379))

(declare-fun m!1412381 () Bool)

(assert (=> b!1529369 m!1412381))

(assert (=> b!1529369 m!1412381))

(declare-fun m!1412383 () Bool)

(assert (=> b!1529369 m!1412383))

(declare-fun m!1412385 () Bool)

(assert (=> b!1529378 m!1412385))

(declare-fun m!1412387 () Bool)

(assert (=> b!1529373 m!1412387))

(declare-fun m!1412389 () Bool)

(assert (=> b!1529373 m!1412389))

(assert (=> b!1529373 m!1412389))

(declare-fun m!1412391 () Bool)

(assert (=> b!1529373 m!1412391))

(assert (=> b!1529373 m!1412391))

(assert (=> b!1529373 m!1412389))

(declare-fun m!1412393 () Bool)

(assert (=> b!1529373 m!1412393))

(declare-fun m!1412395 () Bool)

(assert (=> b!1529372 m!1412395))

(assert (=> b!1529370 m!1412367))

(assert (=> b!1529370 m!1412367))

(declare-fun m!1412397 () Bool)

(assert (=> b!1529370 m!1412397))

(assert (=> b!1529370 m!1412397))

(assert (=> b!1529370 m!1412367))

(declare-fun m!1412399 () Bool)

(assert (=> b!1529370 m!1412399))

(assert (=> b!1529371 m!1412367))

(declare-fun m!1412401 () Bool)

(assert (=> b!1529371 m!1412401))

(assert (=> b!1529371 m!1412387))

(assert (=> b!1529371 m!1412389))

(declare-fun m!1412403 () Bool)

(assert (=> b!1529371 m!1412403))

(push 1)

