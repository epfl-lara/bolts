; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130308 () Bool)

(assert start!130308)

(declare-fun b!1529405 () Bool)

(declare-fun res!1047257 () Bool)

(declare-fun e!852325 () Bool)

(assert (=> b!1529405 (=> (not res!1047257) (not e!852325))))

(declare-datatypes ((array!101585 0))(
  ( (array!101586 (arr!49013 (Array (_ BitVec 32) (_ BitVec 64))) (size!49564 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101585)

(declare-datatypes ((List!35676 0))(
  ( (Nil!35673) (Cons!35672 (h!37109 (_ BitVec 64)) (t!50377 List!35676)) )
))
(declare-fun arrayNoDuplicates!0 (array!101585 (_ BitVec 32) List!35676) Bool)

(assert (=> b!1529405 (= res!1047257 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35673))))

(declare-fun b!1529406 () Bool)

(declare-fun e!852323 () Bool)

(assert (=> b!1529406 (= e!852323 true)))

(declare-fun lt!662387 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529406 (= lt!662387 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1529407 () Bool)

(declare-fun res!1047250 () Bool)

(assert (=> b!1529407 (=> (not res!1047250) (not e!852325))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529407 (= res!1047250 (validKeyInArray!0 (select (arr!49013 a!2804) i!961)))))

(declare-fun e!852322 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun b!1529408 () Bool)

(declare-datatypes ((SeekEntryResult!13199 0))(
  ( (MissingZero!13199 (index!55190 (_ BitVec 32))) (Found!13199 (index!55191 (_ BitVec 32))) (Intermediate!13199 (undefined!14011 Bool) (index!55192 (_ BitVec 32)) (x!136881 (_ BitVec 32))) (Undefined!13199) (MissingVacant!13199 (index!55193 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101585 (_ BitVec 32)) SeekEntryResult!13199)

(assert (=> b!1529408 (= e!852322 (= (seekEntry!0 (select (arr!49013 a!2804) j!70) a!2804 mask!2512) (Found!13199 j!70)))))

(declare-fun b!1529409 () Bool)

(declare-fun res!1047252 () Bool)

(declare-fun e!852326 () Bool)

(assert (=> b!1529409 (=> (not res!1047252) (not e!852326))))

(declare-fun lt!662389 () SeekEntryResult!13199)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101585 (_ BitVec 32)) SeekEntryResult!13199)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529409 (= res!1047252 (= lt!662389 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49013 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49013 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101586 (store (arr!49013 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49564 a!2804)) mask!2512)))))

(declare-fun b!1529410 () Bool)

(assert (=> b!1529410 (= e!852325 e!852326)))

(declare-fun res!1047254 () Bool)

(assert (=> b!1529410 (=> (not res!1047254) (not e!852326))))

(declare-fun lt!662388 () SeekEntryResult!13199)

(assert (=> b!1529410 (= res!1047254 (= lt!662389 lt!662388))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1529410 (= lt!662388 (Intermediate!13199 false resIndex!21 resX!21))))

(assert (=> b!1529410 (= lt!662389 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49013 a!2804) j!70) mask!2512) (select (arr!49013 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529411 () Bool)

(declare-fun res!1047256 () Bool)

(assert (=> b!1529411 (=> (not res!1047256) (not e!852326))))

(assert (=> b!1529411 (= res!1047256 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49013 a!2804) j!70) a!2804 mask!2512) lt!662388))))

(declare-fun res!1047251 () Bool)

(assert (=> start!130308 (=> (not res!1047251) (not e!852325))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130308 (= res!1047251 (validMask!0 mask!2512))))

(assert (=> start!130308 e!852325))

(assert (=> start!130308 true))

(declare-fun array_inv!37958 (array!101585) Bool)

(assert (=> start!130308 (array_inv!37958 a!2804)))

(declare-fun b!1529412 () Bool)

(declare-fun res!1047255 () Bool)

(assert (=> b!1529412 (=> (not res!1047255) (not e!852325))))

(assert (=> b!1529412 (= res!1047255 (validKeyInArray!0 (select (arr!49013 a!2804) j!70)))))

(declare-fun b!1529413 () Bool)

(assert (=> b!1529413 (= e!852326 (not e!852323))))

(declare-fun res!1047260 () Bool)

(assert (=> b!1529413 (=> res!1047260 e!852323)))

(assert (=> b!1529413 (= res!1047260 (or (not (= (select (arr!49013 a!2804) j!70) (select (store (arr!49013 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1529413 e!852322))

(declare-fun res!1047259 () Bool)

(assert (=> b!1529413 (=> (not res!1047259) (not e!852322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101585 (_ BitVec 32)) Bool)

(assert (=> b!1529413 (= res!1047259 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51138 0))(
  ( (Unit!51139) )
))
(declare-fun lt!662386 () Unit!51138)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101585 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51138)

(assert (=> b!1529413 (= lt!662386 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529414 () Bool)

(declare-fun res!1047258 () Bool)

(assert (=> b!1529414 (=> (not res!1047258) (not e!852325))))

(assert (=> b!1529414 (= res!1047258 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49564 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49564 a!2804))))))

(declare-fun b!1529415 () Bool)

(declare-fun res!1047261 () Bool)

(assert (=> b!1529415 (=> (not res!1047261) (not e!852325))))

(assert (=> b!1529415 (= res!1047261 (and (= (size!49564 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49564 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49564 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1529416 () Bool)

(declare-fun res!1047253 () Bool)

(assert (=> b!1529416 (=> (not res!1047253) (not e!852325))))

(assert (=> b!1529416 (= res!1047253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!130308 res!1047251) b!1529415))

(assert (= (and b!1529415 res!1047261) b!1529407))

(assert (= (and b!1529407 res!1047250) b!1529412))

(assert (= (and b!1529412 res!1047255) b!1529416))

(assert (= (and b!1529416 res!1047253) b!1529405))

(assert (= (and b!1529405 res!1047257) b!1529414))

(assert (= (and b!1529414 res!1047258) b!1529410))

(assert (= (and b!1529410 res!1047254) b!1529411))

(assert (= (and b!1529411 res!1047256) b!1529409))

(assert (= (and b!1529409 res!1047252) b!1529413))

(assert (= (and b!1529413 res!1047259) b!1529408))

(assert (= (and b!1529413 (not res!1047260)) b!1529406))

(declare-fun m!1412405 () Bool)

(assert (=> b!1529411 m!1412405))

(assert (=> b!1529411 m!1412405))

(declare-fun m!1412407 () Bool)

(assert (=> b!1529411 m!1412407))

(declare-fun m!1412409 () Bool)

(assert (=> b!1529405 m!1412409))

(declare-fun m!1412411 () Bool)

(assert (=> b!1529407 m!1412411))

(assert (=> b!1529407 m!1412411))

(declare-fun m!1412413 () Bool)

(assert (=> b!1529407 m!1412413))

(declare-fun m!1412415 () Bool)

(assert (=> b!1529409 m!1412415))

(declare-fun m!1412417 () Bool)

(assert (=> b!1529409 m!1412417))

(assert (=> b!1529409 m!1412417))

(declare-fun m!1412419 () Bool)

(assert (=> b!1529409 m!1412419))

(assert (=> b!1529409 m!1412419))

(assert (=> b!1529409 m!1412417))

(declare-fun m!1412421 () Bool)

(assert (=> b!1529409 m!1412421))

(declare-fun m!1412423 () Bool)

(assert (=> b!1529406 m!1412423))

(assert (=> b!1529412 m!1412405))

(assert (=> b!1529412 m!1412405))

(declare-fun m!1412425 () Bool)

(assert (=> b!1529412 m!1412425))

(declare-fun m!1412427 () Bool)

(assert (=> b!1529416 m!1412427))

(assert (=> b!1529413 m!1412405))

(declare-fun m!1412429 () Bool)

(assert (=> b!1529413 m!1412429))

(assert (=> b!1529413 m!1412415))

(assert (=> b!1529413 m!1412417))

(declare-fun m!1412431 () Bool)

(assert (=> b!1529413 m!1412431))

(declare-fun m!1412433 () Bool)

(assert (=> start!130308 m!1412433))

(declare-fun m!1412435 () Bool)

(assert (=> start!130308 m!1412435))

(assert (=> b!1529408 m!1412405))

(assert (=> b!1529408 m!1412405))

(declare-fun m!1412437 () Bool)

(assert (=> b!1529408 m!1412437))

(assert (=> b!1529410 m!1412405))

(assert (=> b!1529410 m!1412405))

(declare-fun m!1412439 () Bool)

(assert (=> b!1529410 m!1412439))

(assert (=> b!1529410 m!1412439))

(assert (=> b!1529410 m!1412405))

(declare-fun m!1412441 () Bool)

(assert (=> b!1529410 m!1412441))

(check-sat (not b!1529416) (not b!1529413) (not start!130308) (not b!1529412) (not b!1529407) (not b!1529410) (not b!1529406) (not b!1529408) (not b!1529405) (not b!1529411) (not b!1529409))
(check-sat)
