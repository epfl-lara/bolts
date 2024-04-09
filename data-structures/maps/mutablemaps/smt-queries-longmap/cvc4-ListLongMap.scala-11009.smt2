; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128936 () Bool)

(assert start!128936)

(declare-fun b!1510644 () Bool)

(declare-fun res!1030621 () Bool)

(declare-fun e!843559 () Bool)

(assert (=> b!1510644 (=> (not res!1030621) (not e!843559))))

(declare-datatypes ((SeekEntryResult!12777 0))(
  ( (MissingZero!12777 (index!53502 (_ BitVec 32))) (Found!12777 (index!53503 (_ BitVec 32))) (Intermediate!12777 (undefined!13589 Bool) (index!53504 (_ BitVec 32)) (x!135252 (_ BitVec 32))) (Undefined!12777) (MissingVacant!12777 (index!53505 (_ BitVec 32))) )
))
(declare-fun lt!655196 () SeekEntryResult!12777)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((array!100705 0))(
  ( (array!100706 (arr!48585 (Array (_ BitVec 32) (_ BitVec 64))) (size!49136 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100705)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100705 (_ BitVec 32)) SeekEntryResult!12777)

(assert (=> b!1510644 (= res!1030621 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48585 a!2804) j!70) a!2804 mask!2512) lt!655196))))

(declare-fun b!1510645 () Bool)

(declare-fun res!1030619 () Bool)

(declare-fun e!843558 () Bool)

(assert (=> b!1510645 (=> (not res!1030619) (not e!843558))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100705 (_ BitVec 32)) Bool)

(assert (=> b!1510645 (= res!1030619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510646 () Bool)

(assert (=> b!1510646 (= e!843559 (not true))))

(declare-fun e!843560 () Bool)

(assert (=> b!1510646 e!843560))

(declare-fun res!1030627 () Bool)

(assert (=> b!1510646 (=> (not res!1030627) (not e!843560))))

(assert (=> b!1510646 (= res!1030627 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50378 0))(
  ( (Unit!50379) )
))
(declare-fun lt!655198 () Unit!50378)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100705 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50378)

(assert (=> b!1510646 (= lt!655198 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1030622 () Bool)

(assert (=> start!128936 (=> (not res!1030622) (not e!843558))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128936 (= res!1030622 (validMask!0 mask!2512))))

(assert (=> start!128936 e!843558))

(assert (=> start!128936 true))

(declare-fun array_inv!37530 (array!100705) Bool)

(assert (=> start!128936 (array_inv!37530 a!2804)))

(declare-fun b!1510647 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100705 (_ BitVec 32)) SeekEntryResult!12777)

(assert (=> b!1510647 (= e!843560 (= (seekEntry!0 (select (arr!48585 a!2804) j!70) a!2804 mask!2512) (Found!12777 j!70)))))

(declare-fun b!1510648 () Bool)

(declare-fun res!1030623 () Bool)

(assert (=> b!1510648 (=> (not res!1030623) (not e!843558))))

(declare-datatypes ((List!35248 0))(
  ( (Nil!35245) (Cons!35244 (h!36657 (_ BitVec 64)) (t!49949 List!35248)) )
))
(declare-fun arrayNoDuplicates!0 (array!100705 (_ BitVec 32) List!35248) Bool)

(assert (=> b!1510648 (= res!1030623 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35245))))

(declare-fun b!1510649 () Bool)

(declare-fun res!1030626 () Bool)

(assert (=> b!1510649 (=> (not res!1030626) (not e!843558))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1510649 (= res!1030626 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49136 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49136 a!2804))))))

(declare-fun b!1510650 () Bool)

(declare-fun res!1030624 () Bool)

(assert (=> b!1510650 (=> (not res!1030624) (not e!843558))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510650 (= res!1030624 (validKeyInArray!0 (select (arr!48585 a!2804) j!70)))))

(declare-fun b!1510651 () Bool)

(assert (=> b!1510651 (= e!843558 e!843559)))

(declare-fun res!1030628 () Bool)

(assert (=> b!1510651 (=> (not res!1030628) (not e!843559))))

(declare-fun lt!655197 () SeekEntryResult!12777)

(assert (=> b!1510651 (= res!1030628 (= lt!655197 lt!655196))))

(assert (=> b!1510651 (= lt!655196 (Intermediate!12777 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510651 (= lt!655197 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48585 a!2804) j!70) mask!2512) (select (arr!48585 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510652 () Bool)

(declare-fun res!1030629 () Bool)

(assert (=> b!1510652 (=> (not res!1030629) (not e!843558))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1510652 (= res!1030629 (validKeyInArray!0 (select (arr!48585 a!2804) i!961)))))

(declare-fun b!1510653 () Bool)

(declare-fun res!1030625 () Bool)

(assert (=> b!1510653 (=> (not res!1030625) (not e!843559))))

(assert (=> b!1510653 (= res!1030625 (= lt!655197 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48585 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48585 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100706 (store (arr!48585 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49136 a!2804)) mask!2512)))))

(declare-fun b!1510654 () Bool)

(declare-fun res!1030620 () Bool)

(assert (=> b!1510654 (=> (not res!1030620) (not e!843558))))

(assert (=> b!1510654 (= res!1030620 (and (= (size!49136 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49136 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49136 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!128936 res!1030622) b!1510654))

(assert (= (and b!1510654 res!1030620) b!1510652))

(assert (= (and b!1510652 res!1030629) b!1510650))

(assert (= (and b!1510650 res!1030624) b!1510645))

(assert (= (and b!1510645 res!1030619) b!1510648))

(assert (= (and b!1510648 res!1030623) b!1510649))

(assert (= (and b!1510649 res!1030626) b!1510651))

(assert (= (and b!1510651 res!1030628) b!1510644))

(assert (= (and b!1510644 res!1030621) b!1510653))

(assert (= (and b!1510653 res!1030625) b!1510646))

(assert (= (and b!1510646 res!1030627) b!1510647))

(declare-fun m!1393317 () Bool)

(assert (=> b!1510650 m!1393317))

(assert (=> b!1510650 m!1393317))

(declare-fun m!1393319 () Bool)

(assert (=> b!1510650 m!1393319))

(declare-fun m!1393321 () Bool)

(assert (=> b!1510648 m!1393321))

(declare-fun m!1393323 () Bool)

(assert (=> start!128936 m!1393323))

(declare-fun m!1393325 () Bool)

(assert (=> start!128936 m!1393325))

(declare-fun m!1393327 () Bool)

(assert (=> b!1510646 m!1393327))

(declare-fun m!1393329 () Bool)

(assert (=> b!1510646 m!1393329))

(assert (=> b!1510651 m!1393317))

(assert (=> b!1510651 m!1393317))

(declare-fun m!1393331 () Bool)

(assert (=> b!1510651 m!1393331))

(assert (=> b!1510651 m!1393331))

(assert (=> b!1510651 m!1393317))

(declare-fun m!1393333 () Bool)

(assert (=> b!1510651 m!1393333))

(assert (=> b!1510647 m!1393317))

(assert (=> b!1510647 m!1393317))

(declare-fun m!1393335 () Bool)

(assert (=> b!1510647 m!1393335))

(declare-fun m!1393337 () Bool)

(assert (=> b!1510653 m!1393337))

(declare-fun m!1393339 () Bool)

(assert (=> b!1510653 m!1393339))

(assert (=> b!1510653 m!1393339))

(declare-fun m!1393341 () Bool)

(assert (=> b!1510653 m!1393341))

(assert (=> b!1510653 m!1393341))

(assert (=> b!1510653 m!1393339))

(declare-fun m!1393343 () Bool)

(assert (=> b!1510653 m!1393343))

(assert (=> b!1510644 m!1393317))

(assert (=> b!1510644 m!1393317))

(declare-fun m!1393345 () Bool)

(assert (=> b!1510644 m!1393345))

(declare-fun m!1393347 () Bool)

(assert (=> b!1510652 m!1393347))

(assert (=> b!1510652 m!1393347))

(declare-fun m!1393349 () Bool)

(assert (=> b!1510652 m!1393349))

(declare-fun m!1393351 () Bool)

(assert (=> b!1510645 m!1393351))

(push 1)

(assert (not b!1510644))

