; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128930 () Bool)

(assert start!128930)

(declare-fun b!1510545 () Bool)

(declare-fun res!1030527 () Bool)

(declare-fun e!843523 () Bool)

(assert (=> b!1510545 (=> (not res!1030527) (not e!843523))))

(declare-datatypes ((array!100699 0))(
  ( (array!100700 (arr!48582 (Array (_ BitVec 32) (_ BitVec 64))) (size!49133 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100699)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510545 (= res!1030527 (validKeyInArray!0 (select (arr!48582 a!2804) i!961)))))

(declare-fun b!1510546 () Bool)

(declare-fun res!1030523 () Bool)

(declare-fun e!843524 () Bool)

(assert (=> b!1510546 (=> (not res!1030523) (not e!843524))))

(declare-datatypes ((SeekEntryResult!12774 0))(
  ( (MissingZero!12774 (index!53490 (_ BitVec 32))) (Found!12774 (index!53491 (_ BitVec 32))) (Intermediate!12774 (undefined!13586 Bool) (index!53492 (_ BitVec 32)) (x!135241 (_ BitVec 32))) (Undefined!12774) (MissingVacant!12774 (index!53493 (_ BitVec 32))) )
))
(declare-fun lt!655171 () SeekEntryResult!12774)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100699 (_ BitVec 32)) SeekEntryResult!12774)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510546 (= res!1030523 (= lt!655171 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48582 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48582 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100700 (store (arr!48582 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49133 a!2804)) mask!2512)))))

(declare-fun b!1510547 () Bool)

(declare-fun res!1030520 () Bool)

(assert (=> b!1510547 (=> (not res!1030520) (not e!843523))))

(assert (=> b!1510547 (= res!1030520 (validKeyInArray!0 (select (arr!48582 a!2804) j!70)))))

(declare-fun e!843521 () Bool)

(declare-fun b!1510548 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100699 (_ BitVec 32)) SeekEntryResult!12774)

(assert (=> b!1510548 (= e!843521 (= (seekEntry!0 (select (arr!48582 a!2804) j!70) a!2804 mask!2512) (Found!12774 j!70)))))

(declare-fun b!1510549 () Bool)

(declare-fun res!1030526 () Bool)

(assert (=> b!1510549 (=> (not res!1030526) (not e!843523))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1510549 (= res!1030526 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49133 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49133 a!2804))))))

(declare-fun b!1510550 () Bool)

(declare-fun res!1030522 () Bool)

(assert (=> b!1510550 (=> (not res!1030522) (not e!843524))))

(declare-fun lt!655170 () SeekEntryResult!12774)

(assert (=> b!1510550 (= res!1030522 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48582 a!2804) j!70) a!2804 mask!2512) lt!655170))))

(declare-fun b!1510551 () Bool)

(declare-fun res!1030524 () Bool)

(assert (=> b!1510551 (=> (not res!1030524) (not e!843523))))

(declare-datatypes ((List!35245 0))(
  ( (Nil!35242) (Cons!35241 (h!36654 (_ BitVec 64)) (t!49946 List!35245)) )
))
(declare-fun arrayNoDuplicates!0 (array!100699 (_ BitVec 32) List!35245) Bool)

(assert (=> b!1510551 (= res!1030524 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35242))))

(declare-fun b!1510552 () Bool)

(assert (=> b!1510552 (= e!843524 (not (or (not (= (select (arr!48582 a!2804) j!70) (select (store (arr!48582 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48582 a!2804) index!487) (select (arr!48582 a!2804) j!70)) (not (= (select (arr!48582 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!2512 #b00000000000000000000000000000000))))))

(assert (=> b!1510552 e!843521))

(declare-fun res!1030528 () Bool)

(assert (=> b!1510552 (=> (not res!1030528) (not e!843521))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100699 (_ BitVec 32)) Bool)

(assert (=> b!1510552 (= res!1030528 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50372 0))(
  ( (Unit!50373) )
))
(declare-fun lt!655169 () Unit!50372)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100699 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50372)

(assert (=> b!1510552 (= lt!655169 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1030530 () Bool)

(assert (=> start!128930 (=> (not res!1030530) (not e!843523))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128930 (= res!1030530 (validMask!0 mask!2512))))

(assert (=> start!128930 e!843523))

(assert (=> start!128930 true))

(declare-fun array_inv!37527 (array!100699) Bool)

(assert (=> start!128930 (array_inv!37527 a!2804)))

(declare-fun b!1510553 () Bool)

(declare-fun res!1030521 () Bool)

(assert (=> b!1510553 (=> (not res!1030521) (not e!843523))))

(assert (=> b!1510553 (= res!1030521 (and (= (size!49133 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49133 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49133 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510554 () Bool)

(declare-fun res!1030529 () Bool)

(assert (=> b!1510554 (=> (not res!1030529) (not e!843523))))

(assert (=> b!1510554 (= res!1030529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510555 () Bool)

(assert (=> b!1510555 (= e!843523 e!843524)))

(declare-fun res!1030525 () Bool)

(assert (=> b!1510555 (=> (not res!1030525) (not e!843524))))

(assert (=> b!1510555 (= res!1030525 (= lt!655171 lt!655170))))

(assert (=> b!1510555 (= lt!655170 (Intermediate!12774 false resIndex!21 resX!21))))

(assert (=> b!1510555 (= lt!655171 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48582 a!2804) j!70) mask!2512) (select (arr!48582 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!128930 res!1030530) b!1510553))

(assert (= (and b!1510553 res!1030521) b!1510545))

(assert (= (and b!1510545 res!1030527) b!1510547))

(assert (= (and b!1510547 res!1030520) b!1510554))

(assert (= (and b!1510554 res!1030529) b!1510551))

(assert (= (and b!1510551 res!1030524) b!1510549))

(assert (= (and b!1510549 res!1030526) b!1510555))

(assert (= (and b!1510555 res!1030525) b!1510550))

(assert (= (and b!1510550 res!1030522) b!1510546))

(assert (= (and b!1510546 res!1030523) b!1510552))

(assert (= (and b!1510552 res!1030528) b!1510548))

(declare-fun m!1393207 () Bool)

(assert (=> b!1510545 m!1393207))

(assert (=> b!1510545 m!1393207))

(declare-fun m!1393209 () Bool)

(assert (=> b!1510545 m!1393209))

(declare-fun m!1393211 () Bool)

(assert (=> b!1510546 m!1393211))

(declare-fun m!1393213 () Bool)

(assert (=> b!1510546 m!1393213))

(assert (=> b!1510546 m!1393213))

(declare-fun m!1393215 () Bool)

(assert (=> b!1510546 m!1393215))

(assert (=> b!1510546 m!1393215))

(assert (=> b!1510546 m!1393213))

(declare-fun m!1393217 () Bool)

(assert (=> b!1510546 m!1393217))

(declare-fun m!1393219 () Bool)

(assert (=> b!1510555 m!1393219))

(assert (=> b!1510555 m!1393219))

(declare-fun m!1393221 () Bool)

(assert (=> b!1510555 m!1393221))

(assert (=> b!1510555 m!1393221))

(assert (=> b!1510555 m!1393219))

(declare-fun m!1393223 () Bool)

(assert (=> b!1510555 m!1393223))

(assert (=> b!1510547 m!1393219))

(assert (=> b!1510547 m!1393219))

(declare-fun m!1393225 () Bool)

(assert (=> b!1510547 m!1393225))

(declare-fun m!1393227 () Bool)

(assert (=> start!128930 m!1393227))

(declare-fun m!1393229 () Bool)

(assert (=> start!128930 m!1393229))

(declare-fun m!1393231 () Bool)

(assert (=> b!1510554 m!1393231))

(declare-fun m!1393233 () Bool)

(assert (=> b!1510551 m!1393233))

(assert (=> b!1510548 m!1393219))

(assert (=> b!1510548 m!1393219))

(declare-fun m!1393235 () Bool)

(assert (=> b!1510548 m!1393235))

(assert (=> b!1510550 m!1393219))

(assert (=> b!1510550 m!1393219))

(declare-fun m!1393237 () Bool)

(assert (=> b!1510550 m!1393237))

(assert (=> b!1510552 m!1393219))

(declare-fun m!1393239 () Bool)

(assert (=> b!1510552 m!1393239))

(assert (=> b!1510552 m!1393211))

(declare-fun m!1393241 () Bool)

(assert (=> b!1510552 m!1393241))

(assert (=> b!1510552 m!1393213))

(declare-fun m!1393243 () Bool)

(assert (=> b!1510552 m!1393243))

(push 1)

(assert (not b!1510545))

(assert (not start!128930))

(assert (not b!1510550))

(assert (not b!1510554))

(assert (not b!1510547))

(assert (not b!1510555))

