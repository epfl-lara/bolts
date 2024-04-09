; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130260 () Bool)

(assert start!130260)

(declare-fun b!1528537 () Bool)

(declare-fun e!851958 () Bool)

(declare-datatypes ((SeekEntryResult!13175 0))(
  ( (MissingZero!13175 (index!55094 (_ BitVec 32))) (Found!13175 (index!55095 (_ BitVec 32))) (Intermediate!13175 (undefined!13987 Bool) (index!55096 (_ BitVec 32)) (x!136793 (_ BitVec 32))) (Undefined!13175) (MissingVacant!13175 (index!55097 (_ BitVec 32))) )
))
(declare-fun lt!662079 () SeekEntryResult!13175)

(declare-fun lt!662082 () SeekEntryResult!13175)

(assert (=> b!1528537 (= e!851958 (= lt!662079 lt!662082))))

(declare-fun lt!662077 () SeekEntryResult!13175)

(declare-fun lt!662075 () SeekEntryResult!13175)

(assert (=> b!1528537 (= lt!662077 lt!662075)))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((Unit!51090 0))(
  ( (Unit!51091) )
))
(declare-fun lt!662081 () Unit!51090)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101537 0))(
  ( (array!101538 (arr!48989 (Array (_ BitVec 32) (_ BitVec 64))) (size!49540 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101537)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!101537 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51090)

(assert (=> b!1528537 (= lt!662081 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1528538 () Bool)

(declare-fun e!851954 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101537 (_ BitVec 32)) SeekEntryResult!13175)

(assert (=> b!1528538 (= e!851954 (= (seekEntry!0 (select (arr!48989 a!2804) j!70) a!2804 mask!2512) (Found!13175 j!70)))))

(declare-fun b!1528539 () Bool)

(declare-fun res!1046388 () Bool)

(declare-fun e!851956 () Bool)

(assert (=> b!1528539 (=> (not res!1046388) (not e!851956))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528539 (= res!1046388 (validKeyInArray!0 (select (arr!48989 a!2804) j!70)))))

(declare-fun b!1528540 () Bool)

(declare-fun res!1046393 () Bool)

(assert (=> b!1528540 (=> (not res!1046393) (not e!851956))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101537 (_ BitVec 32)) Bool)

(assert (=> b!1528540 (= res!1046393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528541 () Bool)

(declare-fun e!851955 () Bool)

(assert (=> b!1528541 (= e!851956 e!851955)))

(declare-fun res!1046386 () Bool)

(assert (=> b!1528541 (=> (not res!1046386) (not e!851955))))

(declare-fun lt!662076 () SeekEntryResult!13175)

(declare-fun lt!662083 () SeekEntryResult!13175)

(assert (=> b!1528541 (= res!1046386 (= lt!662076 lt!662083))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1528541 (= lt!662083 (Intermediate!13175 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101537 (_ BitVec 32)) SeekEntryResult!13175)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528541 (= lt!662076 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48989 a!2804) j!70) mask!2512) (select (arr!48989 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528542 () Bool)

(declare-fun res!1046382 () Bool)

(assert (=> b!1528542 (=> (not res!1046382) (not e!851955))))

(assert (=> b!1528542 (= res!1046382 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48989 a!2804) j!70) a!2804 mask!2512) lt!662083))))

(declare-fun b!1528543 () Bool)

(declare-fun res!1046384 () Bool)

(assert (=> b!1528543 (=> (not res!1046384) (not e!851956))))

(declare-datatypes ((List!35652 0))(
  ( (Nil!35649) (Cons!35648 (h!37085 (_ BitVec 64)) (t!50353 List!35652)) )
))
(declare-fun arrayNoDuplicates!0 (array!101537 (_ BitVec 32) List!35652) Bool)

(assert (=> b!1528543 (= res!1046384 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35649))))

(declare-fun b!1528544 () Bool)

(declare-fun e!851957 () Bool)

(assert (=> b!1528544 (= e!851955 e!851957)))

(declare-fun res!1046390 () Bool)

(assert (=> b!1528544 (=> (not res!1046390) (not e!851957))))

(declare-fun lt!662074 () array!101537)

(declare-fun lt!662080 () (_ BitVec 64))

(assert (=> b!1528544 (= res!1046390 (= lt!662076 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!662080 mask!2512) lt!662080 lt!662074 mask!2512)))))

(assert (=> b!1528544 (= lt!662080 (select (store (arr!48989 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1528544 (= lt!662074 (array!101538 (store (arr!48989 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49540 a!2804)))))

(declare-fun b!1528545 () Bool)

(declare-fun e!851960 () Bool)

(assert (=> b!1528545 (= e!851957 (not e!851960))))

(declare-fun res!1046383 () Bool)

(assert (=> b!1528545 (=> res!1046383 e!851960)))

(assert (=> b!1528545 (= res!1046383 (or (not (= (select (arr!48989 a!2804) j!70) lt!662080)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48989 a!2804) index!487) (select (arr!48989 a!2804) j!70)) (not (= (select (arr!48989 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1528545 e!851954))

(declare-fun res!1046392 () Bool)

(assert (=> b!1528545 (=> (not res!1046392) (not e!851954))))

(assert (=> b!1528545 (= res!1046392 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!662078 () Unit!51090)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101537 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51090)

(assert (=> b!1528545 (= lt!662078 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1046394 () Bool)

(assert (=> start!130260 (=> (not res!1046394) (not e!851956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130260 (= res!1046394 (validMask!0 mask!2512))))

(assert (=> start!130260 e!851956))

(assert (=> start!130260 true))

(declare-fun array_inv!37934 (array!101537) Bool)

(assert (=> start!130260 (array_inv!37934 a!2804)))

(declare-fun b!1528546 () Bool)

(assert (=> b!1528546 (= e!851960 e!851958)))

(declare-fun res!1046391 () Bool)

(assert (=> b!1528546 (=> res!1046391 e!851958)))

(assert (=> b!1528546 (= res!1046391 (not (= lt!662075 (Found!13175 j!70))))))

(assert (=> b!1528546 (= lt!662082 lt!662077)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101537 (_ BitVec 32)) SeekEntryResult!13175)

(assert (=> b!1528546 (= lt!662077 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!662080 lt!662074 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101537 (_ BitVec 32)) SeekEntryResult!13175)

(assert (=> b!1528546 (= lt!662082 (seekEntryOrOpen!0 lt!662080 lt!662074 mask!2512))))

(assert (=> b!1528546 (= lt!662079 lt!662075)))

(assert (=> b!1528546 (= lt!662075 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48989 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1528546 (= lt!662079 (seekEntryOrOpen!0 (select (arr!48989 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528547 () Bool)

(declare-fun res!1046385 () Bool)

(assert (=> b!1528547 (=> (not res!1046385) (not e!851956))))

(assert (=> b!1528547 (= res!1046385 (and (= (size!49540 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49540 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49540 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528548 () Bool)

(declare-fun res!1046387 () Bool)

(assert (=> b!1528548 (=> (not res!1046387) (not e!851956))))

(assert (=> b!1528548 (= res!1046387 (validKeyInArray!0 (select (arr!48989 a!2804) i!961)))))

(declare-fun b!1528549 () Bool)

(declare-fun res!1046389 () Bool)

(assert (=> b!1528549 (=> (not res!1046389) (not e!851956))))

(assert (=> b!1528549 (= res!1046389 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49540 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49540 a!2804))))))

(assert (= (and start!130260 res!1046394) b!1528547))

(assert (= (and b!1528547 res!1046385) b!1528548))

(assert (= (and b!1528548 res!1046387) b!1528539))

(assert (= (and b!1528539 res!1046388) b!1528540))

(assert (= (and b!1528540 res!1046393) b!1528543))

(assert (= (and b!1528543 res!1046384) b!1528549))

(assert (= (and b!1528549 res!1046389) b!1528541))

(assert (= (and b!1528541 res!1046386) b!1528542))

(assert (= (and b!1528542 res!1046382) b!1528544))

(assert (= (and b!1528544 res!1046390) b!1528545))

(assert (= (and b!1528545 res!1046392) b!1528538))

(assert (= (and b!1528545 (not res!1046383)) b!1528546))

(assert (= (and b!1528546 (not res!1046391)) b!1528537))

(declare-fun m!1411473 () Bool)

(assert (=> b!1528541 m!1411473))

(assert (=> b!1528541 m!1411473))

(declare-fun m!1411475 () Bool)

(assert (=> b!1528541 m!1411475))

(assert (=> b!1528541 m!1411475))

(assert (=> b!1528541 m!1411473))

(declare-fun m!1411477 () Bool)

(assert (=> b!1528541 m!1411477))

(assert (=> b!1528545 m!1411473))

(declare-fun m!1411479 () Bool)

(assert (=> b!1528545 m!1411479))

(declare-fun m!1411481 () Bool)

(assert (=> b!1528545 m!1411481))

(declare-fun m!1411483 () Bool)

(assert (=> b!1528545 m!1411483))

(assert (=> b!1528546 m!1411473))

(declare-fun m!1411485 () Bool)

(assert (=> b!1528546 m!1411485))

(assert (=> b!1528546 m!1411473))

(declare-fun m!1411487 () Bool)

(assert (=> b!1528546 m!1411487))

(declare-fun m!1411489 () Bool)

(assert (=> b!1528546 m!1411489))

(assert (=> b!1528546 m!1411473))

(declare-fun m!1411491 () Bool)

(assert (=> b!1528546 m!1411491))

(declare-fun m!1411493 () Bool)

(assert (=> start!130260 m!1411493))

(declare-fun m!1411495 () Bool)

(assert (=> start!130260 m!1411495))

(assert (=> b!1528539 m!1411473))

(assert (=> b!1528539 m!1411473))

(declare-fun m!1411497 () Bool)

(assert (=> b!1528539 m!1411497))

(assert (=> b!1528538 m!1411473))

(assert (=> b!1528538 m!1411473))

(declare-fun m!1411499 () Bool)

(assert (=> b!1528538 m!1411499))

(declare-fun m!1411501 () Bool)

(assert (=> b!1528543 m!1411501))

(declare-fun m!1411503 () Bool)

(assert (=> b!1528548 m!1411503))

(assert (=> b!1528548 m!1411503))

(declare-fun m!1411505 () Bool)

(assert (=> b!1528548 m!1411505))

(assert (=> b!1528542 m!1411473))

(assert (=> b!1528542 m!1411473))

(declare-fun m!1411507 () Bool)

(assert (=> b!1528542 m!1411507))

(declare-fun m!1411509 () Bool)

(assert (=> b!1528537 m!1411509))

(declare-fun m!1411511 () Bool)

(assert (=> b!1528544 m!1411511))

(assert (=> b!1528544 m!1411511))

(declare-fun m!1411513 () Bool)

(assert (=> b!1528544 m!1411513))

(declare-fun m!1411515 () Bool)

(assert (=> b!1528544 m!1411515))

(declare-fun m!1411517 () Bool)

(assert (=> b!1528544 m!1411517))

(declare-fun m!1411519 () Bool)

(assert (=> b!1528540 m!1411519))

(check-sat (not b!1528543) (not b!1528538) (not b!1528542) (not start!130260) (not b!1528544) (not b!1528541) (not b!1528546) (not b!1528545) (not b!1528540) (not b!1528548) (not b!1528539) (not b!1528537))
(check-sat)
