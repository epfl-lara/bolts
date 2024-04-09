; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129816 () Bool)

(assert start!129816)

(declare-fun b!1523286 () Bool)

(declare-fun res!1042337 () Bool)

(declare-fun e!849283 () Bool)

(assert (=> b!1523286 (=> (not res!1042337) (not e!849283))))

(declare-datatypes ((array!101339 0))(
  ( (array!101340 (arr!48896 (Array (_ BitVec 32) (_ BitVec 64))) (size!49447 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101339)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1523286 (= res!1042337 (validKeyInArray!0 (select (arr!48896 a!2804) j!70)))))

(declare-fun b!1523287 () Bool)

(declare-fun e!849282 () Bool)

(assert (=> b!1523287 (= e!849282 (not true))))

(declare-fun e!849281 () Bool)

(assert (=> b!1523287 e!849281))

(declare-fun res!1042335 () Bool)

(assert (=> b!1523287 (=> (not res!1042335) (not e!849281))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101339 (_ BitVec 32)) Bool)

(assert (=> b!1523287 (= res!1042335 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50904 0))(
  ( (Unit!50905) )
))
(declare-fun lt!659868 () Unit!50904)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101339 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50904)

(assert (=> b!1523287 (= lt!659868 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1523288 () Bool)

(declare-fun res!1042331 () Bool)

(assert (=> b!1523288 (=> (not res!1042331) (not e!849283))))

(declare-datatypes ((List!35559 0))(
  ( (Nil!35556) (Cons!35555 (h!36980 (_ BitVec 64)) (t!50260 List!35559)) )
))
(declare-fun arrayNoDuplicates!0 (array!101339 (_ BitVec 32) List!35559) Bool)

(assert (=> b!1523288 (= res!1042331 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35556))))

(declare-fun b!1523289 () Bool)

(declare-datatypes ((SeekEntryResult!13082 0))(
  ( (MissingZero!13082 (index!54722 (_ BitVec 32))) (Found!13082 (index!54723 (_ BitVec 32))) (Intermediate!13082 (undefined!13894 Bool) (index!54724 (_ BitVec 32)) (x!136419 (_ BitVec 32))) (Undefined!13082) (MissingVacant!13082 (index!54725 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101339 (_ BitVec 32)) SeekEntryResult!13082)

(assert (=> b!1523289 (= e!849281 (= (seekEntry!0 (select (arr!48896 a!2804) j!70) a!2804 mask!2512) (Found!13082 j!70)))))

(declare-fun b!1523290 () Bool)

(declare-fun res!1042333 () Bool)

(assert (=> b!1523290 (=> (not res!1042333) (not e!849282))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun lt!659869 () SeekEntryResult!13082)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101339 (_ BitVec 32)) SeekEntryResult!13082)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523290 (= res!1042333 (= lt!659869 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48896 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48896 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101340 (store (arr!48896 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49447 a!2804)) mask!2512)))))

(declare-fun b!1523291 () Bool)

(declare-fun res!1042339 () Bool)

(assert (=> b!1523291 (=> (not res!1042339) (not e!849283))))

(assert (=> b!1523291 (= res!1042339 (validKeyInArray!0 (select (arr!48896 a!2804) i!961)))))

(declare-fun b!1523292 () Bool)

(declare-fun res!1042338 () Bool)

(assert (=> b!1523292 (=> (not res!1042338) (not e!849283))))

(assert (=> b!1523292 (= res!1042338 (and (= (size!49447 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49447 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49447 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1042336 () Bool)

(assert (=> start!129816 (=> (not res!1042336) (not e!849283))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129816 (= res!1042336 (validMask!0 mask!2512))))

(assert (=> start!129816 e!849283))

(assert (=> start!129816 true))

(declare-fun array_inv!37841 (array!101339) Bool)

(assert (=> start!129816 (array_inv!37841 a!2804)))

(declare-fun b!1523293 () Bool)

(assert (=> b!1523293 (= e!849283 e!849282)))

(declare-fun res!1042334 () Bool)

(assert (=> b!1523293 (=> (not res!1042334) (not e!849282))))

(declare-fun lt!659867 () SeekEntryResult!13082)

(assert (=> b!1523293 (= res!1042334 (= lt!659869 lt!659867))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1523293 (= lt!659867 (Intermediate!13082 false resIndex!21 resX!21))))

(assert (=> b!1523293 (= lt!659869 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48896 a!2804) j!70) mask!2512) (select (arr!48896 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1523294 () Bool)

(declare-fun res!1042332 () Bool)

(assert (=> b!1523294 (=> (not res!1042332) (not e!849283))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1523294 (= res!1042332 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49447 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49447 a!2804))))))

(declare-fun b!1523295 () Bool)

(declare-fun res!1042341 () Bool)

(assert (=> b!1523295 (=> (not res!1042341) (not e!849282))))

(assert (=> b!1523295 (= res!1042341 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48896 a!2804) j!70) a!2804 mask!2512) lt!659867))))

(declare-fun b!1523296 () Bool)

(declare-fun res!1042340 () Bool)

(assert (=> b!1523296 (=> (not res!1042340) (not e!849283))))

(assert (=> b!1523296 (= res!1042340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!129816 res!1042336) b!1523292))

(assert (= (and b!1523292 res!1042338) b!1523291))

(assert (= (and b!1523291 res!1042339) b!1523286))

(assert (= (and b!1523286 res!1042337) b!1523296))

(assert (= (and b!1523296 res!1042340) b!1523288))

(assert (= (and b!1523288 res!1042331) b!1523294))

(assert (= (and b!1523294 res!1042332) b!1523293))

(assert (= (and b!1523293 res!1042334) b!1523295))

(assert (= (and b!1523295 res!1042341) b!1523290))

(assert (= (and b!1523290 res!1042333) b!1523287))

(assert (= (and b!1523287 res!1042335) b!1523289))

(declare-fun m!1406451 () Bool)

(assert (=> b!1523296 m!1406451))

(declare-fun m!1406453 () Bool)

(assert (=> start!129816 m!1406453))

(declare-fun m!1406455 () Bool)

(assert (=> start!129816 m!1406455))

(declare-fun m!1406457 () Bool)

(assert (=> b!1523293 m!1406457))

(assert (=> b!1523293 m!1406457))

(declare-fun m!1406459 () Bool)

(assert (=> b!1523293 m!1406459))

(assert (=> b!1523293 m!1406459))

(assert (=> b!1523293 m!1406457))

(declare-fun m!1406461 () Bool)

(assert (=> b!1523293 m!1406461))

(declare-fun m!1406463 () Bool)

(assert (=> b!1523290 m!1406463))

(declare-fun m!1406465 () Bool)

(assert (=> b!1523290 m!1406465))

(assert (=> b!1523290 m!1406465))

(declare-fun m!1406467 () Bool)

(assert (=> b!1523290 m!1406467))

(assert (=> b!1523290 m!1406467))

(assert (=> b!1523290 m!1406465))

(declare-fun m!1406469 () Bool)

(assert (=> b!1523290 m!1406469))

(assert (=> b!1523286 m!1406457))

(assert (=> b!1523286 m!1406457))

(declare-fun m!1406471 () Bool)

(assert (=> b!1523286 m!1406471))

(declare-fun m!1406473 () Bool)

(assert (=> b!1523288 m!1406473))

(assert (=> b!1523295 m!1406457))

(assert (=> b!1523295 m!1406457))

(declare-fun m!1406475 () Bool)

(assert (=> b!1523295 m!1406475))

(declare-fun m!1406477 () Bool)

(assert (=> b!1523287 m!1406477))

(declare-fun m!1406479 () Bool)

(assert (=> b!1523287 m!1406479))

(declare-fun m!1406481 () Bool)

(assert (=> b!1523291 m!1406481))

(assert (=> b!1523291 m!1406481))

(declare-fun m!1406483 () Bool)

(assert (=> b!1523291 m!1406483))

(assert (=> b!1523289 m!1406457))

(assert (=> b!1523289 m!1406457))

(declare-fun m!1406485 () Bool)

(assert (=> b!1523289 m!1406485))

(check-sat (not b!1523287) (not b!1523286) (not b!1523288) (not start!129816) (not b!1523289) (not b!1523291) (not b!1523293) (not b!1523295) (not b!1523296) (not b!1523290))
(check-sat)
