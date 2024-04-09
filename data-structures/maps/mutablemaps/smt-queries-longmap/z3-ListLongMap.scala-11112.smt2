; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129810 () Bool)

(assert start!129810)

(declare-fun b!1523187 () Bool)

(declare-fun res!1042237 () Bool)

(declare-fun e!849246 () Bool)

(assert (=> b!1523187 (=> (not res!1042237) (not e!849246))))

(declare-datatypes ((array!101333 0))(
  ( (array!101334 (arr!48893 (Array (_ BitVec 32) (_ BitVec 64))) (size!49444 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101333)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1523187 (= res!1042237 (validKeyInArray!0 (select (arr!48893 a!2804) i!961)))))

(declare-fun b!1523188 () Bool)

(declare-fun e!849248 () Bool)

(assert (=> b!1523188 (= e!849248 (not true))))

(declare-fun e!849245 () Bool)

(assert (=> b!1523188 e!849245))

(declare-fun res!1042236 () Bool)

(assert (=> b!1523188 (=> (not res!1042236) (not e!849245))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101333 (_ BitVec 32)) Bool)

(assert (=> b!1523188 (= res!1042236 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50898 0))(
  ( (Unit!50899) )
))
(declare-fun lt!659841 () Unit!50898)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101333 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50898)

(assert (=> b!1523188 (= lt!659841 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1523189 () Bool)

(declare-fun res!1042233 () Bool)

(assert (=> b!1523189 (=> (not res!1042233) (not e!849248))))

(declare-datatypes ((SeekEntryResult!13079 0))(
  ( (MissingZero!13079 (index!54710 (_ BitVec 32))) (Found!13079 (index!54711 (_ BitVec 32))) (Intermediate!13079 (undefined!13891 Bool) (index!54712 (_ BitVec 32)) (x!136408 (_ BitVec 32))) (Undefined!13079) (MissingVacant!13079 (index!54713 (_ BitVec 32))) )
))
(declare-fun lt!659842 () SeekEntryResult!13079)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101333 (_ BitVec 32)) SeekEntryResult!13079)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523189 (= res!1042233 (= lt!659842 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48893 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48893 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101334 (store (arr!48893 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49444 a!2804)) mask!2512)))))

(declare-fun res!1042238 () Bool)

(assert (=> start!129810 (=> (not res!1042238) (not e!849246))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129810 (= res!1042238 (validMask!0 mask!2512))))

(assert (=> start!129810 e!849246))

(assert (=> start!129810 true))

(declare-fun array_inv!37838 (array!101333) Bool)

(assert (=> start!129810 (array_inv!37838 a!2804)))

(declare-fun b!1523190 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101333 (_ BitVec 32)) SeekEntryResult!13079)

(assert (=> b!1523190 (= e!849245 (= (seekEntry!0 (select (arr!48893 a!2804) j!70) a!2804 mask!2512) (Found!13079 j!70)))))

(declare-fun b!1523191 () Bool)

(assert (=> b!1523191 (= e!849246 e!849248)))

(declare-fun res!1042234 () Bool)

(assert (=> b!1523191 (=> (not res!1042234) (not e!849248))))

(declare-fun lt!659840 () SeekEntryResult!13079)

(assert (=> b!1523191 (= res!1042234 (= lt!659842 lt!659840))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1523191 (= lt!659840 (Intermediate!13079 false resIndex!21 resX!21))))

(assert (=> b!1523191 (= lt!659842 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48893 a!2804) j!70) mask!2512) (select (arr!48893 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1523192 () Bool)

(declare-fun res!1042239 () Bool)

(assert (=> b!1523192 (=> (not res!1042239) (not e!849246))))

(assert (=> b!1523192 (= res!1042239 (validKeyInArray!0 (select (arr!48893 a!2804) j!70)))))

(declare-fun b!1523193 () Bool)

(declare-fun res!1042242 () Bool)

(assert (=> b!1523193 (=> (not res!1042242) (not e!849246))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1523193 (= res!1042242 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49444 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49444 a!2804))))))

(declare-fun b!1523194 () Bool)

(declare-fun res!1042240 () Bool)

(assert (=> b!1523194 (=> (not res!1042240) (not e!849246))))

(assert (=> b!1523194 (= res!1042240 (and (= (size!49444 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49444 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49444 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1523195 () Bool)

(declare-fun res!1042241 () Bool)

(assert (=> b!1523195 (=> (not res!1042241) (not e!849248))))

(assert (=> b!1523195 (= res!1042241 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48893 a!2804) j!70) a!2804 mask!2512) lt!659840))))

(declare-fun b!1523196 () Bool)

(declare-fun res!1042235 () Bool)

(assert (=> b!1523196 (=> (not res!1042235) (not e!849246))))

(declare-datatypes ((List!35556 0))(
  ( (Nil!35553) (Cons!35552 (h!36977 (_ BitVec 64)) (t!50257 List!35556)) )
))
(declare-fun arrayNoDuplicates!0 (array!101333 (_ BitVec 32) List!35556) Bool)

(assert (=> b!1523196 (= res!1042235 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35553))))

(declare-fun b!1523197 () Bool)

(declare-fun res!1042232 () Bool)

(assert (=> b!1523197 (=> (not res!1042232) (not e!849246))))

(assert (=> b!1523197 (= res!1042232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!129810 res!1042238) b!1523194))

(assert (= (and b!1523194 res!1042240) b!1523187))

(assert (= (and b!1523187 res!1042237) b!1523192))

(assert (= (and b!1523192 res!1042239) b!1523197))

(assert (= (and b!1523197 res!1042232) b!1523196))

(assert (= (and b!1523196 res!1042235) b!1523193))

(assert (= (and b!1523193 res!1042242) b!1523191))

(assert (= (and b!1523191 res!1042234) b!1523195))

(assert (= (and b!1523195 res!1042241) b!1523189))

(assert (= (and b!1523189 res!1042233) b!1523188))

(assert (= (and b!1523188 res!1042236) b!1523190))

(declare-fun m!1406343 () Bool)

(assert (=> b!1523188 m!1406343))

(declare-fun m!1406345 () Bool)

(assert (=> b!1523188 m!1406345))

(declare-fun m!1406347 () Bool)

(assert (=> b!1523195 m!1406347))

(assert (=> b!1523195 m!1406347))

(declare-fun m!1406349 () Bool)

(assert (=> b!1523195 m!1406349))

(assert (=> b!1523192 m!1406347))

(assert (=> b!1523192 m!1406347))

(declare-fun m!1406351 () Bool)

(assert (=> b!1523192 m!1406351))

(declare-fun m!1406353 () Bool)

(assert (=> b!1523197 m!1406353))

(declare-fun m!1406355 () Bool)

(assert (=> b!1523189 m!1406355))

(declare-fun m!1406357 () Bool)

(assert (=> b!1523189 m!1406357))

(assert (=> b!1523189 m!1406357))

(declare-fun m!1406359 () Bool)

(assert (=> b!1523189 m!1406359))

(assert (=> b!1523189 m!1406359))

(assert (=> b!1523189 m!1406357))

(declare-fun m!1406361 () Bool)

(assert (=> b!1523189 m!1406361))

(assert (=> b!1523190 m!1406347))

(assert (=> b!1523190 m!1406347))

(declare-fun m!1406363 () Bool)

(assert (=> b!1523190 m!1406363))

(declare-fun m!1406365 () Bool)

(assert (=> b!1523187 m!1406365))

(assert (=> b!1523187 m!1406365))

(declare-fun m!1406367 () Bool)

(assert (=> b!1523187 m!1406367))

(declare-fun m!1406369 () Bool)

(assert (=> b!1523196 m!1406369))

(assert (=> b!1523191 m!1406347))

(assert (=> b!1523191 m!1406347))

(declare-fun m!1406371 () Bool)

(assert (=> b!1523191 m!1406371))

(assert (=> b!1523191 m!1406371))

(assert (=> b!1523191 m!1406347))

(declare-fun m!1406373 () Bool)

(assert (=> b!1523191 m!1406373))

(declare-fun m!1406375 () Bool)

(assert (=> start!129810 m!1406375))

(declare-fun m!1406377 () Bool)

(assert (=> start!129810 m!1406377))

(check-sat (not start!129810) (not b!1523189) (not b!1523190) (not b!1523196) (not b!1523188) (not b!1523191) (not b!1523192) (not b!1523195) (not b!1523197) (not b!1523187))
(check-sat)
