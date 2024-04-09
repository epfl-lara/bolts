; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130108 () Bool)

(assert start!130108)

(declare-fun b!1526356 () Bool)

(declare-fun res!1044531 () Bool)

(declare-fun e!850811 () Bool)

(assert (=> b!1526356 (=> (not res!1044531) (not e!850811))))

(declare-datatypes ((array!101448 0))(
  ( (array!101449 (arr!48946 (Array (_ BitVec 32) (_ BitVec 64))) (size!49497 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101448)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526356 (= res!1044531 (validKeyInArray!0 (select (arr!48946 a!2804) j!70)))))

(declare-fun b!1526357 () Bool)

(declare-fun res!1044528 () Bool)

(assert (=> b!1526357 (=> (not res!1044528) (not e!850811))))

(declare-datatypes ((List!35609 0))(
  ( (Nil!35606) (Cons!35605 (h!37039 (_ BitVec 64)) (t!50310 List!35609)) )
))
(declare-fun arrayNoDuplicates!0 (array!101448 (_ BitVec 32) List!35609) Bool)

(assert (=> b!1526357 (= res!1044528 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35606))))

(declare-fun b!1526358 () Bool)

(declare-fun e!850809 () Bool)

(assert (=> b!1526358 (= e!850811 e!850809)))

(declare-fun res!1044538 () Bool)

(assert (=> b!1526358 (=> (not res!1044538) (not e!850809))))

(declare-datatypes ((SeekEntryResult!13132 0))(
  ( (MissingZero!13132 (index!54922 (_ BitVec 32))) (Found!13132 (index!54923 (_ BitVec 32))) (Intermediate!13132 (undefined!13944 Bool) (index!54924 (_ BitVec 32)) (x!136629 (_ BitVec 32))) (Undefined!13132) (MissingVacant!13132 (index!54925 (_ BitVec 32))) )
))
(declare-fun lt!661011 () SeekEntryResult!13132)

(declare-fun lt!661013 () SeekEntryResult!13132)

(assert (=> b!1526358 (= res!1044538 (= lt!661011 lt!661013))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1526358 (= lt!661013 (Intermediate!13132 false resIndex!21 resX!21))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101448 (_ BitVec 32)) SeekEntryResult!13132)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526358 (= lt!661011 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48946 a!2804) j!70) mask!2512) (select (arr!48946 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1526359 () Bool)

(declare-fun e!850805 () Bool)

(declare-fun e!850808 () Bool)

(assert (=> b!1526359 (= e!850805 e!850808)))

(declare-fun res!1044532 () Bool)

(assert (=> b!1526359 (=> res!1044532 e!850808)))

(declare-fun lt!661015 () (_ BitVec 64))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1526359 (= res!1044532 (or (not (= (select (arr!48946 a!2804) j!70) lt!661015)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48946 a!2804) index!487) (select (arr!48946 a!2804) j!70)) (not (= (select (arr!48946 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1526360 () Bool)

(declare-fun e!850807 () Bool)

(assert (=> b!1526360 (= e!850809 e!850807)))

(declare-fun res!1044533 () Bool)

(assert (=> b!1526360 (=> (not res!1044533) (not e!850807))))

(declare-fun lt!661012 () array!101448)

(assert (=> b!1526360 (= res!1044533 (= lt!661011 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661015 mask!2512) lt!661015 lt!661012 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1526360 (= lt!661015 (select (store (arr!48946 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526360 (= lt!661012 (array!101449 (store (arr!48946 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49497 a!2804)))))

(declare-fun b!1526361 () Bool)

(declare-fun e!850810 () Bool)

(assert (=> b!1526361 (= e!850808 e!850810)))

(declare-fun res!1044530 () Bool)

(assert (=> b!1526361 (=> (not res!1044530) (not e!850810))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101448 (_ BitVec 32)) SeekEntryResult!13132)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101448 (_ BitVec 32)) SeekEntryResult!13132)

(assert (=> b!1526361 (= res!1044530 (= (seekEntryOrOpen!0 (select (arr!48946 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48946 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1526362 () Bool)

(declare-fun res!1044534 () Bool)

(assert (=> b!1526362 (=> (not res!1044534) (not e!850811))))

(assert (=> b!1526362 (= res!1044534 (validKeyInArray!0 (select (arr!48946 a!2804) i!961)))))

(declare-fun b!1526363 () Bool)

(declare-fun res!1044540 () Bool)

(assert (=> b!1526363 (=> (not res!1044540) (not e!850811))))

(assert (=> b!1526363 (= res!1044540 (and (= (size!49497 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49497 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49497 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1526364 () Bool)

(assert (=> b!1526364 (= e!850810 (= (seekEntryOrOpen!0 lt!661015 lt!661012 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661015 lt!661012 mask!2512)))))

(declare-fun res!1044536 () Bool)

(assert (=> start!130108 (=> (not res!1044536) (not e!850811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130108 (= res!1044536 (validMask!0 mask!2512))))

(assert (=> start!130108 e!850811))

(assert (=> start!130108 true))

(declare-fun array_inv!37891 (array!101448) Bool)

(assert (=> start!130108 (array_inv!37891 a!2804)))

(declare-fun b!1526355 () Bool)

(declare-fun res!1044539 () Bool)

(assert (=> b!1526355 (=> (not res!1044539) (not e!850809))))

(assert (=> b!1526355 (= res!1044539 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48946 a!2804) j!70) a!2804 mask!2512) lt!661013))))

(declare-fun b!1526365 () Bool)

(declare-fun res!1044529 () Bool)

(assert (=> b!1526365 (=> (not res!1044529) (not e!850811))))

(assert (=> b!1526365 (= res!1044529 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49497 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49497 a!2804))))))

(declare-fun b!1526366 () Bool)

(declare-fun res!1044527 () Bool)

(assert (=> b!1526366 (=> (not res!1044527) (not e!850805))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101448 (_ BitVec 32)) SeekEntryResult!13132)

(assert (=> b!1526366 (= res!1044527 (= (seekEntry!0 (select (arr!48946 a!2804) j!70) a!2804 mask!2512) (Found!13132 j!70)))))

(declare-fun b!1526367 () Bool)

(declare-fun res!1044537 () Bool)

(assert (=> b!1526367 (=> (not res!1044537) (not e!850811))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101448 (_ BitVec 32)) Bool)

(assert (=> b!1526367 (= res!1044537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526368 () Bool)

(assert (=> b!1526368 (= e!850807 (not true))))

(assert (=> b!1526368 e!850805))

(declare-fun res!1044535 () Bool)

(assert (=> b!1526368 (=> (not res!1044535) (not e!850805))))

(assert (=> b!1526368 (= res!1044535 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51004 0))(
  ( (Unit!51005) )
))
(declare-fun lt!661014 () Unit!51004)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101448 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51004)

(assert (=> b!1526368 (= lt!661014 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!130108 res!1044536) b!1526363))

(assert (= (and b!1526363 res!1044540) b!1526362))

(assert (= (and b!1526362 res!1044534) b!1526356))

(assert (= (and b!1526356 res!1044531) b!1526367))

(assert (= (and b!1526367 res!1044537) b!1526357))

(assert (= (and b!1526357 res!1044528) b!1526365))

(assert (= (and b!1526365 res!1044529) b!1526358))

(assert (= (and b!1526358 res!1044538) b!1526355))

(assert (= (and b!1526355 res!1044539) b!1526360))

(assert (= (and b!1526360 res!1044533) b!1526368))

(assert (= (and b!1526368 res!1044535) b!1526366))

(assert (= (and b!1526366 res!1044527) b!1526359))

(assert (= (and b!1526359 (not res!1044532)) b!1526361))

(assert (= (and b!1526361 res!1044530) b!1526364))

(declare-fun m!1409211 () Bool)

(assert (=> b!1526358 m!1409211))

(assert (=> b!1526358 m!1409211))

(declare-fun m!1409213 () Bool)

(assert (=> b!1526358 m!1409213))

(assert (=> b!1526358 m!1409213))

(assert (=> b!1526358 m!1409211))

(declare-fun m!1409215 () Bool)

(assert (=> b!1526358 m!1409215))

(declare-fun m!1409217 () Bool)

(assert (=> b!1526368 m!1409217))

(declare-fun m!1409219 () Bool)

(assert (=> b!1526368 m!1409219))

(declare-fun m!1409221 () Bool)

(assert (=> b!1526360 m!1409221))

(assert (=> b!1526360 m!1409221))

(declare-fun m!1409223 () Bool)

(assert (=> b!1526360 m!1409223))

(declare-fun m!1409225 () Bool)

(assert (=> b!1526360 m!1409225))

(declare-fun m!1409227 () Bool)

(assert (=> b!1526360 m!1409227))

(assert (=> b!1526361 m!1409211))

(assert (=> b!1526361 m!1409211))

(declare-fun m!1409229 () Bool)

(assert (=> b!1526361 m!1409229))

(assert (=> b!1526361 m!1409211))

(declare-fun m!1409231 () Bool)

(assert (=> b!1526361 m!1409231))

(assert (=> b!1526359 m!1409211))

(declare-fun m!1409233 () Bool)

(assert (=> b!1526359 m!1409233))

(assert (=> b!1526366 m!1409211))

(assert (=> b!1526366 m!1409211))

(declare-fun m!1409235 () Bool)

(assert (=> b!1526366 m!1409235))

(declare-fun m!1409237 () Bool)

(assert (=> start!130108 m!1409237))

(declare-fun m!1409239 () Bool)

(assert (=> start!130108 m!1409239))

(declare-fun m!1409241 () Bool)

(assert (=> b!1526362 m!1409241))

(assert (=> b!1526362 m!1409241))

(declare-fun m!1409243 () Bool)

(assert (=> b!1526362 m!1409243))

(declare-fun m!1409245 () Bool)

(assert (=> b!1526357 m!1409245))

(declare-fun m!1409247 () Bool)

(assert (=> b!1526364 m!1409247))

(declare-fun m!1409249 () Bool)

(assert (=> b!1526364 m!1409249))

(declare-fun m!1409251 () Bool)

(assert (=> b!1526367 m!1409251))

(assert (=> b!1526355 m!1409211))

(assert (=> b!1526355 m!1409211))

(declare-fun m!1409253 () Bool)

(assert (=> b!1526355 m!1409253))

(assert (=> b!1526356 m!1409211))

(assert (=> b!1526356 m!1409211))

(declare-fun m!1409255 () Bool)

(assert (=> b!1526356 m!1409255))

(push 1)

