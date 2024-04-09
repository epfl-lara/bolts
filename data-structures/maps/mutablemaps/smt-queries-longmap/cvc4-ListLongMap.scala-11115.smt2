; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129830 () Bool)

(assert start!129830)

(declare-fun b!1523517 () Bool)

(declare-fun e!849367 () Bool)

(declare-fun e!849365 () Bool)

(assert (=> b!1523517 (= e!849367 e!849365)))

(declare-fun res!1042563 () Bool)

(assert (=> b!1523517 (=> (not res!1042563) (not e!849365))))

(declare-datatypes ((SeekEntryResult!13089 0))(
  ( (MissingZero!13089 (index!54750 (_ BitVec 32))) (Found!13089 (index!54751 (_ BitVec 32))) (Intermediate!13089 (undefined!13901 Bool) (index!54752 (_ BitVec 32)) (x!136442 (_ BitVec 32))) (Undefined!13089) (MissingVacant!13089 (index!54753 (_ BitVec 32))) )
))
(declare-fun lt!659931 () SeekEntryResult!13089)

(declare-fun lt!659930 () SeekEntryResult!13089)

(assert (=> b!1523517 (= res!1042563 (= lt!659931 lt!659930))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1523517 (= lt!659930 (Intermediate!13089 false resIndex!21 resX!21))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101353 0))(
  ( (array!101354 (arr!48903 (Array (_ BitVec 32) (_ BitVec 64))) (size!49454 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101353)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101353 (_ BitVec 32)) SeekEntryResult!13089)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523517 (= lt!659931 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48903 a!2804) j!70) mask!2512) (select (arr!48903 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1042568 () Bool)

(assert (=> start!129830 (=> (not res!1042568) (not e!849367))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129830 (= res!1042568 (validMask!0 mask!2512))))

(assert (=> start!129830 e!849367))

(assert (=> start!129830 true))

(declare-fun array_inv!37848 (array!101353) Bool)

(assert (=> start!129830 (array_inv!37848 a!2804)))

(declare-fun b!1523518 () Bool)

(declare-fun res!1042566 () Bool)

(assert (=> b!1523518 (=> (not res!1042566) (not e!849365))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1523518 (= res!1042566 (= lt!659931 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48903 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48903 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101354 (store (arr!48903 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49454 a!2804)) mask!2512)))))

(declare-fun b!1523519 () Bool)

(declare-fun res!1042567 () Bool)

(assert (=> b!1523519 (=> (not res!1042567) (not e!849365))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1523519 (= res!1042567 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48903 a!2804) j!70) a!2804 mask!2512) lt!659930))))

(declare-fun b!1523520 () Bool)

(declare-fun res!1042565 () Bool)

(assert (=> b!1523520 (=> (not res!1042565) (not e!849367))))

(declare-datatypes ((List!35566 0))(
  ( (Nil!35563) (Cons!35562 (h!36987 (_ BitVec 64)) (t!50267 List!35566)) )
))
(declare-fun arrayNoDuplicates!0 (array!101353 (_ BitVec 32) List!35566) Bool)

(assert (=> b!1523520 (= res!1042565 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35563))))

(declare-fun b!1523521 () Bool)

(declare-fun res!1042572 () Bool)

(assert (=> b!1523521 (=> (not res!1042572) (not e!849367))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101353 (_ BitVec 32)) Bool)

(assert (=> b!1523521 (= res!1042572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1523522 () Bool)

(declare-fun res!1042569 () Bool)

(assert (=> b!1523522 (=> (not res!1042569) (not e!849367))))

(assert (=> b!1523522 (= res!1042569 (and (= (size!49454 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49454 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49454 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1523523 () Bool)

(declare-fun res!1042562 () Bool)

(assert (=> b!1523523 (=> (not res!1042562) (not e!849367))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1523523 (= res!1042562 (validKeyInArray!0 (select (arr!48903 a!2804) j!70)))))

(declare-fun b!1523524 () Bool)

(assert (=> b!1523524 (= e!849365 (not true))))

(declare-fun e!849368 () Bool)

(assert (=> b!1523524 e!849368))

(declare-fun res!1042570 () Bool)

(assert (=> b!1523524 (=> (not res!1042570) (not e!849368))))

(assert (=> b!1523524 (= res!1042570 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50918 0))(
  ( (Unit!50919) )
))
(declare-fun lt!659932 () Unit!50918)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101353 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50918)

(assert (=> b!1523524 (= lt!659932 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1523525 () Bool)

(declare-fun res!1042564 () Bool)

(assert (=> b!1523525 (=> (not res!1042564) (not e!849367))))

(assert (=> b!1523525 (= res!1042564 (validKeyInArray!0 (select (arr!48903 a!2804) i!961)))))

(declare-fun b!1523526 () Bool)

(declare-fun res!1042571 () Bool)

(assert (=> b!1523526 (=> (not res!1042571) (not e!849367))))

(assert (=> b!1523526 (= res!1042571 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49454 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49454 a!2804))))))

(declare-fun b!1523527 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101353 (_ BitVec 32)) SeekEntryResult!13089)

(assert (=> b!1523527 (= e!849368 (= (seekEntry!0 (select (arr!48903 a!2804) j!70) a!2804 mask!2512) (Found!13089 j!70)))))

(assert (= (and start!129830 res!1042568) b!1523522))

(assert (= (and b!1523522 res!1042569) b!1523525))

(assert (= (and b!1523525 res!1042564) b!1523523))

(assert (= (and b!1523523 res!1042562) b!1523521))

(assert (= (and b!1523521 res!1042572) b!1523520))

(assert (= (and b!1523520 res!1042565) b!1523526))

(assert (= (and b!1523526 res!1042571) b!1523517))

(assert (= (and b!1523517 res!1042563) b!1523519))

(assert (= (and b!1523519 res!1042567) b!1523518))

(assert (= (and b!1523518 res!1042566) b!1523524))

(assert (= (and b!1523524 res!1042570) b!1523527))

(declare-fun m!1406703 () Bool)

(assert (=> b!1523524 m!1406703))

(declare-fun m!1406705 () Bool)

(assert (=> b!1523524 m!1406705))

(declare-fun m!1406707 () Bool)

(assert (=> b!1523519 m!1406707))

(assert (=> b!1523519 m!1406707))

(declare-fun m!1406709 () Bool)

(assert (=> b!1523519 m!1406709))

(declare-fun m!1406711 () Bool)

(assert (=> b!1523521 m!1406711))

(assert (=> b!1523523 m!1406707))

(assert (=> b!1523523 m!1406707))

(declare-fun m!1406713 () Bool)

(assert (=> b!1523523 m!1406713))

(assert (=> b!1523517 m!1406707))

(assert (=> b!1523517 m!1406707))

(declare-fun m!1406715 () Bool)

(assert (=> b!1523517 m!1406715))

(assert (=> b!1523517 m!1406715))

(assert (=> b!1523517 m!1406707))

(declare-fun m!1406717 () Bool)

(assert (=> b!1523517 m!1406717))

(declare-fun m!1406719 () Bool)

(assert (=> b!1523525 m!1406719))

(assert (=> b!1523525 m!1406719))

(declare-fun m!1406721 () Bool)

(assert (=> b!1523525 m!1406721))

(assert (=> b!1523527 m!1406707))

(assert (=> b!1523527 m!1406707))

(declare-fun m!1406723 () Bool)

(assert (=> b!1523527 m!1406723))

(declare-fun m!1406725 () Bool)

(assert (=> start!129830 m!1406725))

(declare-fun m!1406727 () Bool)

(assert (=> start!129830 m!1406727))

(declare-fun m!1406729 () Bool)

(assert (=> b!1523520 m!1406729))

(declare-fun m!1406731 () Bool)

(assert (=> b!1523518 m!1406731))

(declare-fun m!1406733 () Bool)

(assert (=> b!1523518 m!1406733))

(assert (=> b!1523518 m!1406733))

(declare-fun m!1406735 () Bool)

(assert (=> b!1523518 m!1406735))

(assert (=> b!1523518 m!1406735))

(assert (=> b!1523518 m!1406733))

(declare-fun m!1406737 () Bool)

(assert (=> b!1523518 m!1406737))

(push 1)

(assert (not b!1523520))

(assert (not b!1523518))

(assert (not b!1523519))

