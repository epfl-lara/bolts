; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130258 () Bool)

(assert start!130258)

(declare-fun b!1528498 () Bool)

(declare-fun e!851939 () Bool)

(declare-fun e!851933 () Bool)

(assert (=> b!1528498 (= e!851939 e!851933)))

(declare-fun res!1046352 () Bool)

(assert (=> b!1528498 (=> (not res!1046352) (not e!851933))))

(declare-datatypes ((SeekEntryResult!13174 0))(
  ( (MissingZero!13174 (index!55090 (_ BitVec 32))) (Found!13174 (index!55091 (_ BitVec 32))) (Intermediate!13174 (undefined!13986 Bool) (index!55092 (_ BitVec 32)) (x!136792 (_ BitVec 32))) (Undefined!13174) (MissingVacant!13174 (index!55093 (_ BitVec 32))) )
))
(declare-fun lt!662045 () SeekEntryResult!13174)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!662050 () (_ BitVec 64))

(declare-datatypes ((array!101535 0))(
  ( (array!101536 (arr!48988 (Array (_ BitVec 32) (_ BitVec 64))) (size!49539 (_ BitVec 32))) )
))
(declare-fun lt!662047 () array!101535)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101535 (_ BitVec 32)) SeekEntryResult!13174)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528498 (= res!1046352 (= lt!662045 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!662050 mask!2512) lt!662050 lt!662047 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun a!2804 () array!101535)

(assert (=> b!1528498 (= lt!662050 (select (store (arr!48988 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1528498 (= lt!662047 (array!101536 (store (arr!48988 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49539 a!2804)))))

(declare-fun b!1528499 () Bool)

(declare-fun res!1046348 () Bool)

(declare-fun e!851935 () Bool)

(assert (=> b!1528499 (=> (not res!1046348) (not e!851935))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528499 (= res!1046348 (validKeyInArray!0 (select (arr!48988 a!2804) j!70)))))

(declare-fun e!851937 () Bool)

(declare-fun b!1528500 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101535 (_ BitVec 32)) SeekEntryResult!13174)

(assert (=> b!1528500 (= e!851937 (= (seekEntry!0 (select (arr!48988 a!2804) j!70) a!2804 mask!2512) (Found!13174 j!70)))))

(declare-fun b!1528501 () Bool)

(declare-fun res!1046351 () Bool)

(assert (=> b!1528501 (=> (not res!1046351) (not e!851935))))

(assert (=> b!1528501 (= res!1046351 (validKeyInArray!0 (select (arr!48988 a!2804) i!961)))))

(declare-fun res!1046355 () Bool)

(assert (=> start!130258 (=> (not res!1046355) (not e!851935))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130258 (= res!1046355 (validMask!0 mask!2512))))

(assert (=> start!130258 e!851935))

(assert (=> start!130258 true))

(declare-fun array_inv!37933 (array!101535) Bool)

(assert (=> start!130258 (array_inv!37933 a!2804)))

(declare-fun b!1528502 () Bool)

(declare-fun e!851938 () Bool)

(declare-fun e!851934 () Bool)

(assert (=> b!1528502 (= e!851938 e!851934)))

(declare-fun res!1046346 () Bool)

(assert (=> b!1528502 (=> res!1046346 e!851934)))

(declare-fun lt!662044 () SeekEntryResult!13174)

(assert (=> b!1528502 (= res!1046346 (not (= lt!662044 (Found!13174 j!70))))))

(declare-fun lt!662053 () SeekEntryResult!13174)

(declare-fun lt!662051 () SeekEntryResult!13174)

(assert (=> b!1528502 (= lt!662053 lt!662051)))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101535 (_ BitVec 32)) SeekEntryResult!13174)

(assert (=> b!1528502 (= lt!662051 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!662050 lt!662047 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101535 (_ BitVec 32)) SeekEntryResult!13174)

(assert (=> b!1528502 (= lt!662053 (seekEntryOrOpen!0 lt!662050 lt!662047 mask!2512))))

(declare-fun lt!662052 () SeekEntryResult!13174)

(assert (=> b!1528502 (= lt!662052 lt!662044)))

(assert (=> b!1528502 (= lt!662044 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48988 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1528502 (= lt!662052 (seekEntryOrOpen!0 (select (arr!48988 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528503 () Bool)

(declare-fun res!1046345 () Bool)

(assert (=> b!1528503 (=> (not res!1046345) (not e!851935))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101535 (_ BitVec 32)) Bool)

(assert (=> b!1528503 (= res!1046345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528504 () Bool)

(declare-fun res!1046350 () Bool)

(assert (=> b!1528504 (=> (not res!1046350) (not e!851935))))

(declare-datatypes ((List!35651 0))(
  ( (Nil!35648) (Cons!35647 (h!37084 (_ BitVec 64)) (t!50352 List!35651)) )
))
(declare-fun arrayNoDuplicates!0 (array!101535 (_ BitVec 32) List!35651) Bool)

(assert (=> b!1528504 (= res!1046350 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35648))))

(declare-fun b!1528505 () Bool)

(assert (=> b!1528505 (= e!851934 (= lt!662052 lt!662053))))

(assert (=> b!1528505 (= lt!662051 lt!662044)))

(declare-datatypes ((Unit!51088 0))(
  ( (Unit!51089) )
))
(declare-fun lt!662046 () Unit!51088)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!101535 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51088)

(assert (=> b!1528505 (= lt!662046 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1528506 () Bool)

(declare-fun res!1046354 () Bool)

(assert (=> b!1528506 (=> (not res!1046354) (not e!851935))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1528506 (= res!1046354 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49539 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49539 a!2804))))))

(declare-fun b!1528507 () Bool)

(declare-fun res!1046344 () Bool)

(assert (=> b!1528507 (=> (not res!1046344) (not e!851939))))

(declare-fun lt!662048 () SeekEntryResult!13174)

(assert (=> b!1528507 (= res!1046344 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48988 a!2804) j!70) a!2804 mask!2512) lt!662048))))

(declare-fun b!1528508 () Bool)

(declare-fun res!1046347 () Bool)

(assert (=> b!1528508 (=> (not res!1046347) (not e!851935))))

(assert (=> b!1528508 (= res!1046347 (and (= (size!49539 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49539 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49539 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528509 () Bool)

(assert (=> b!1528509 (= e!851933 (not e!851938))))

(declare-fun res!1046343 () Bool)

(assert (=> b!1528509 (=> res!1046343 e!851938)))

(assert (=> b!1528509 (= res!1046343 (or (not (= (select (arr!48988 a!2804) j!70) lt!662050)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48988 a!2804) index!487) (select (arr!48988 a!2804) j!70)) (not (= (select (arr!48988 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1528509 e!851937))

(declare-fun res!1046349 () Bool)

(assert (=> b!1528509 (=> (not res!1046349) (not e!851937))))

(assert (=> b!1528509 (= res!1046349 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!662049 () Unit!51088)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101535 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51088)

(assert (=> b!1528509 (= lt!662049 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1528510 () Bool)

(assert (=> b!1528510 (= e!851935 e!851939)))

(declare-fun res!1046353 () Bool)

(assert (=> b!1528510 (=> (not res!1046353) (not e!851939))))

(assert (=> b!1528510 (= res!1046353 (= lt!662045 lt!662048))))

(assert (=> b!1528510 (= lt!662048 (Intermediate!13174 false resIndex!21 resX!21))))

(assert (=> b!1528510 (= lt!662045 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48988 a!2804) j!70) mask!2512) (select (arr!48988 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!130258 res!1046355) b!1528508))

(assert (= (and b!1528508 res!1046347) b!1528501))

(assert (= (and b!1528501 res!1046351) b!1528499))

(assert (= (and b!1528499 res!1046348) b!1528503))

(assert (= (and b!1528503 res!1046345) b!1528504))

(assert (= (and b!1528504 res!1046350) b!1528506))

(assert (= (and b!1528506 res!1046354) b!1528510))

(assert (= (and b!1528510 res!1046353) b!1528507))

(assert (= (and b!1528507 res!1046344) b!1528498))

(assert (= (and b!1528498 res!1046352) b!1528509))

(assert (= (and b!1528509 res!1046349) b!1528500))

(assert (= (and b!1528509 (not res!1046343)) b!1528502))

(assert (= (and b!1528502 (not res!1046346)) b!1528505))

(declare-fun m!1411425 () Bool)

(assert (=> start!130258 m!1411425))

(declare-fun m!1411427 () Bool)

(assert (=> start!130258 m!1411427))

(declare-fun m!1411429 () Bool)

(assert (=> b!1528505 m!1411429))

(declare-fun m!1411431 () Bool)

(assert (=> b!1528510 m!1411431))

(assert (=> b!1528510 m!1411431))

(declare-fun m!1411433 () Bool)

(assert (=> b!1528510 m!1411433))

(assert (=> b!1528510 m!1411433))

(assert (=> b!1528510 m!1411431))

(declare-fun m!1411435 () Bool)

(assert (=> b!1528510 m!1411435))

(declare-fun m!1411437 () Bool)

(assert (=> b!1528502 m!1411437))

(assert (=> b!1528502 m!1411431))

(declare-fun m!1411439 () Bool)

(assert (=> b!1528502 m!1411439))

(assert (=> b!1528502 m!1411431))

(assert (=> b!1528502 m!1411431))

(declare-fun m!1411441 () Bool)

(assert (=> b!1528502 m!1411441))

(declare-fun m!1411443 () Bool)

(assert (=> b!1528502 m!1411443))

(assert (=> b!1528507 m!1411431))

(assert (=> b!1528507 m!1411431))

(declare-fun m!1411445 () Bool)

(assert (=> b!1528507 m!1411445))

(declare-fun m!1411447 () Bool)

(assert (=> b!1528503 m!1411447))

(declare-fun m!1411449 () Bool)

(assert (=> b!1528504 m!1411449))

(assert (=> b!1528500 m!1411431))

(assert (=> b!1528500 m!1411431))

(declare-fun m!1411451 () Bool)

(assert (=> b!1528500 m!1411451))

(assert (=> b!1528499 m!1411431))

(assert (=> b!1528499 m!1411431))

(declare-fun m!1411453 () Bool)

(assert (=> b!1528499 m!1411453))

(assert (=> b!1528509 m!1411431))

(declare-fun m!1411455 () Bool)

(assert (=> b!1528509 m!1411455))

(declare-fun m!1411457 () Bool)

(assert (=> b!1528509 m!1411457))

(declare-fun m!1411459 () Bool)

(assert (=> b!1528509 m!1411459))

(declare-fun m!1411461 () Bool)

(assert (=> b!1528501 m!1411461))

(assert (=> b!1528501 m!1411461))

(declare-fun m!1411463 () Bool)

(assert (=> b!1528501 m!1411463))

(declare-fun m!1411465 () Bool)

(assert (=> b!1528498 m!1411465))

(assert (=> b!1528498 m!1411465))

(declare-fun m!1411467 () Bool)

(assert (=> b!1528498 m!1411467))

(declare-fun m!1411469 () Bool)

(assert (=> b!1528498 m!1411469))

(declare-fun m!1411471 () Bool)

(assert (=> b!1528498 m!1411471))

(push 1)

