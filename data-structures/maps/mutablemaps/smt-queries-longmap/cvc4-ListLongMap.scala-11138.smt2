; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130160 () Bool)

(assert start!130160)

(declare-fun b!1527447 () Bool)

(declare-fun e!851356 () Bool)

(declare-fun e!851352 () Bool)

(assert (=> b!1527447 (= e!851356 e!851352)))

(declare-fun res!1045620 () Bool)

(assert (=> b!1527447 (=> (not res!1045620) (not e!851352))))

(declare-datatypes ((array!101500 0))(
  ( (array!101501 (arr!48972 (Array (_ BitVec 32) (_ BitVec 64))) (size!49523 (_ BitVec 32))) )
))
(declare-fun lt!661403 () array!101500)

(declare-fun lt!661401 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!13158 0))(
  ( (MissingZero!13158 (index!55026 (_ BitVec 32))) (Found!13158 (index!55027 (_ BitVec 32))) (Intermediate!13158 (undefined!13970 Bool) (index!55028 (_ BitVec 32)) (x!136719 (_ BitVec 32))) (Undefined!13158) (MissingVacant!13158 (index!55029 (_ BitVec 32))) )
))
(declare-fun lt!661402 () SeekEntryResult!13158)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101500 (_ BitVec 32)) SeekEntryResult!13158)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1527447 (= res!1045620 (= lt!661402 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661401 mask!2512) lt!661401 lt!661403 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun a!2804 () array!101500)

(assert (=> b!1527447 (= lt!661401 (select (store (arr!48972 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1527447 (= lt!661403 (array!101501 (store (arr!48972 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49523 a!2804)))))

(declare-fun b!1527448 () Bool)

(declare-fun e!851353 () Bool)

(declare-fun e!851354 () Bool)

(assert (=> b!1527448 (= e!851353 e!851354)))

(declare-fun res!1045631 () Bool)

(assert (=> b!1527448 (=> res!1045631 e!851354)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1527448 (= res!1045631 (or (not (= (select (arr!48972 a!2804) j!70) lt!661401)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48972 a!2804) index!487) (select (arr!48972 a!2804) j!70)) (not (= (select (arr!48972 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1527449 () Bool)

(declare-fun res!1045623 () Bool)

(assert (=> b!1527449 (=> (not res!1045623) (not e!851356))))

(declare-fun lt!661404 () SeekEntryResult!13158)

(assert (=> b!1527449 (= res!1045623 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48972 a!2804) j!70) a!2804 mask!2512) lt!661404))))

(declare-fun b!1527450 () Bool)

(declare-fun res!1045625 () Bool)

(declare-fun e!851351 () Bool)

(assert (=> b!1527450 (=> (not res!1045625) (not e!851351))))

(assert (=> b!1527450 (= res!1045625 (and (= (size!49523 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49523 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49523 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1527451 () Bool)

(declare-fun res!1045627 () Bool)

(assert (=> b!1527451 (=> (not res!1045627) (not e!851351))))

(assert (=> b!1527451 (= res!1045627 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49523 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49523 a!2804))))))

(declare-fun res!1045621 () Bool)

(assert (=> start!130160 (=> (not res!1045621) (not e!851351))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130160 (= res!1045621 (validMask!0 mask!2512))))

(assert (=> start!130160 e!851351))

(assert (=> start!130160 true))

(declare-fun array_inv!37917 (array!101500) Bool)

(assert (=> start!130160 (array_inv!37917 a!2804)))

(declare-fun e!851357 () Bool)

(declare-fun b!1527452 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101500 (_ BitVec 32)) SeekEntryResult!13158)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101500 (_ BitVec 32)) SeekEntryResult!13158)

(assert (=> b!1527452 (= e!851357 (= (seekEntryOrOpen!0 lt!661401 lt!661403 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661401 lt!661403 mask!2512)))))

(declare-fun b!1527453 () Bool)

(declare-fun res!1045629 () Bool)

(assert (=> b!1527453 (=> (not res!1045629) (not e!851351))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1527453 (= res!1045629 (validKeyInArray!0 (select (arr!48972 a!2804) j!70)))))

(declare-fun b!1527454 () Bool)

(declare-fun res!1045630 () Bool)

(assert (=> b!1527454 (=> (not res!1045630) (not e!851351))))

(declare-datatypes ((List!35635 0))(
  ( (Nil!35632) (Cons!35631 (h!37065 (_ BitVec 64)) (t!50336 List!35635)) )
))
(declare-fun arrayNoDuplicates!0 (array!101500 (_ BitVec 32) List!35635) Bool)

(assert (=> b!1527454 (= res!1045630 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35632))))

(declare-fun b!1527455 () Bool)

(declare-fun res!1045628 () Bool)

(assert (=> b!1527455 (=> (not res!1045628) (not e!851353))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101500 (_ BitVec 32)) SeekEntryResult!13158)

(assert (=> b!1527455 (= res!1045628 (= (seekEntry!0 (select (arr!48972 a!2804) j!70) a!2804 mask!2512) (Found!13158 j!70)))))

(declare-fun b!1527456 () Bool)

(assert (=> b!1527456 (= e!851351 e!851356)))

(declare-fun res!1045622 () Bool)

(assert (=> b!1527456 (=> (not res!1045622) (not e!851356))))

(assert (=> b!1527456 (= res!1045622 (= lt!661402 lt!661404))))

(assert (=> b!1527456 (= lt!661404 (Intermediate!13158 false resIndex!21 resX!21))))

(assert (=> b!1527456 (= lt!661402 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48972 a!2804) j!70) mask!2512) (select (arr!48972 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527457 () Bool)

(assert (=> b!1527457 (= e!851352 (not true))))

(assert (=> b!1527457 e!851353))

(declare-fun res!1045632 () Bool)

(assert (=> b!1527457 (=> (not res!1045632) (not e!851353))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101500 (_ BitVec 32)) Bool)

(assert (=> b!1527457 (= res!1045632 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51056 0))(
  ( (Unit!51057) )
))
(declare-fun lt!661405 () Unit!51056)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101500 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51056)

(assert (=> b!1527457 (= lt!661405 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1527458 () Bool)

(assert (=> b!1527458 (= e!851354 e!851357)))

(declare-fun res!1045624 () Bool)

(assert (=> b!1527458 (=> (not res!1045624) (not e!851357))))

(assert (=> b!1527458 (= res!1045624 (= (seekEntryOrOpen!0 (select (arr!48972 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48972 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1527459 () Bool)

(declare-fun res!1045619 () Bool)

(assert (=> b!1527459 (=> (not res!1045619) (not e!851351))))

(assert (=> b!1527459 (= res!1045619 (validKeyInArray!0 (select (arr!48972 a!2804) i!961)))))

(declare-fun b!1527460 () Bool)

(declare-fun res!1045626 () Bool)

(assert (=> b!1527460 (=> (not res!1045626) (not e!851351))))

(assert (=> b!1527460 (= res!1045626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!130160 res!1045621) b!1527450))

(assert (= (and b!1527450 res!1045625) b!1527459))

(assert (= (and b!1527459 res!1045619) b!1527453))

(assert (= (and b!1527453 res!1045629) b!1527460))

(assert (= (and b!1527460 res!1045626) b!1527454))

(assert (= (and b!1527454 res!1045630) b!1527451))

(assert (= (and b!1527451 res!1045627) b!1527456))

(assert (= (and b!1527456 res!1045622) b!1527449))

(assert (= (and b!1527449 res!1045623) b!1527447))

(assert (= (and b!1527447 res!1045620) b!1527457))

(assert (= (and b!1527457 res!1045632) b!1527455))

(assert (= (and b!1527455 res!1045628) b!1527448))

(assert (= (and b!1527448 (not res!1045631)) b!1527458))

(assert (= (and b!1527458 res!1045624) b!1527452))

(declare-fun m!1410407 () Bool)

(assert (=> b!1527452 m!1410407))

(declare-fun m!1410409 () Bool)

(assert (=> b!1527452 m!1410409))

(declare-fun m!1410411 () Bool)

(assert (=> b!1527447 m!1410411))

(assert (=> b!1527447 m!1410411))

(declare-fun m!1410413 () Bool)

(assert (=> b!1527447 m!1410413))

(declare-fun m!1410415 () Bool)

(assert (=> b!1527447 m!1410415))

(declare-fun m!1410417 () Bool)

(assert (=> b!1527447 m!1410417))

(declare-fun m!1410419 () Bool)

(assert (=> b!1527460 m!1410419))

(declare-fun m!1410421 () Bool)

(assert (=> b!1527459 m!1410421))

(assert (=> b!1527459 m!1410421))

(declare-fun m!1410423 () Bool)

(assert (=> b!1527459 m!1410423))

(declare-fun m!1410425 () Bool)

(assert (=> b!1527456 m!1410425))

(assert (=> b!1527456 m!1410425))

(declare-fun m!1410427 () Bool)

(assert (=> b!1527456 m!1410427))

(assert (=> b!1527456 m!1410427))

(assert (=> b!1527456 m!1410425))

(declare-fun m!1410429 () Bool)

(assert (=> b!1527456 m!1410429))

(declare-fun m!1410431 () Bool)

(assert (=> b!1527454 m!1410431))

(assert (=> b!1527458 m!1410425))

(assert (=> b!1527458 m!1410425))

(declare-fun m!1410433 () Bool)

(assert (=> b!1527458 m!1410433))

(assert (=> b!1527458 m!1410425))

(declare-fun m!1410435 () Bool)

(assert (=> b!1527458 m!1410435))

(assert (=> b!1527453 m!1410425))

(assert (=> b!1527453 m!1410425))

(declare-fun m!1410437 () Bool)

(assert (=> b!1527453 m!1410437))

(assert (=> b!1527448 m!1410425))

(declare-fun m!1410439 () Bool)

(assert (=> b!1527448 m!1410439))

(declare-fun m!1410441 () Bool)

(assert (=> b!1527457 m!1410441))

(declare-fun m!1410443 () Bool)

(assert (=> b!1527457 m!1410443))

(assert (=> b!1527449 m!1410425))

(assert (=> b!1527449 m!1410425))

(declare-fun m!1410445 () Bool)

(assert (=> b!1527449 m!1410445))

(declare-fun m!1410447 () Bool)

(assert (=> start!130160 m!1410447))

(declare-fun m!1410449 () Bool)

(assert (=> start!130160 m!1410449))

(assert (=> b!1527455 m!1410425))

(assert (=> b!1527455 m!1410425))

(declare-fun m!1410451 () Bool)

(assert (=> b!1527455 m!1410451))

(push 1)

