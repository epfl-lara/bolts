; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130318 () Bool)

(assert start!130318)

(declare-fun b!1529585 () Bool)

(declare-fun res!1047441 () Bool)

(declare-fun e!852399 () Bool)

(assert (=> b!1529585 (=> (not res!1047441) (not e!852399))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101595 0))(
  ( (array!101596 (arr!49018 (Array (_ BitVec 32) (_ BitVec 64))) (size!49569 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101595)

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13204 0))(
  ( (MissingZero!13204 (index!55210 (_ BitVec 32))) (Found!13204 (index!55211 (_ BitVec 32))) (Intermediate!13204 (undefined!14016 Bool) (index!55212 (_ BitVec 32)) (x!136902 (_ BitVec 32))) (Undefined!13204) (MissingVacant!13204 (index!55213 (_ BitVec 32))) )
))
(declare-fun lt!662448 () SeekEntryResult!13204)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101595 (_ BitVec 32)) SeekEntryResult!13204)

(assert (=> b!1529585 (= res!1047441 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49018 a!2804) j!70) a!2804 mask!2512) lt!662448))))

(declare-fun b!1529586 () Bool)

(declare-fun res!1047433 () Bool)

(declare-fun e!852401 () Bool)

(assert (=> b!1529586 (=> (not res!1047433) (not e!852401))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529586 (= res!1047433 (validKeyInArray!0 (select (arr!49018 a!2804) j!70)))))

(declare-fun b!1529587 () Bool)

(assert (=> b!1529587 (= e!852401 e!852399)))

(declare-fun res!1047437 () Bool)

(assert (=> b!1529587 (=> (not res!1047437) (not e!852399))))

(declare-fun lt!662447 () SeekEntryResult!13204)

(assert (=> b!1529587 (= res!1047437 (= lt!662447 lt!662448))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1529587 (= lt!662448 (Intermediate!13204 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529587 (= lt!662447 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49018 a!2804) j!70) mask!2512) (select (arr!49018 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529588 () Bool)

(declare-fun e!852398 () Bool)

(assert (=> b!1529588 (= e!852398 true)))

(declare-fun lt!662446 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529588 (= lt!662446 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun e!852397 () Bool)

(declare-fun b!1529589 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101595 (_ BitVec 32)) SeekEntryResult!13204)

(assert (=> b!1529589 (= e!852397 (= (seekEntry!0 (select (arr!49018 a!2804) j!70) a!2804 mask!2512) (Found!13204 j!70)))))

(declare-fun res!1047430 () Bool)

(assert (=> start!130318 (=> (not res!1047430) (not e!852401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130318 (= res!1047430 (validMask!0 mask!2512))))

(assert (=> start!130318 e!852401))

(assert (=> start!130318 true))

(declare-fun array_inv!37963 (array!101595) Bool)

(assert (=> start!130318 (array_inv!37963 a!2804)))

(declare-fun b!1529590 () Bool)

(declare-fun res!1047434 () Bool)

(assert (=> b!1529590 (=> (not res!1047434) (not e!852401))))

(declare-datatypes ((List!35681 0))(
  ( (Nil!35678) (Cons!35677 (h!37114 (_ BitVec 64)) (t!50382 List!35681)) )
))
(declare-fun arrayNoDuplicates!0 (array!101595 (_ BitVec 32) List!35681) Bool)

(assert (=> b!1529590 (= res!1047434 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35678))))

(declare-fun b!1529591 () Bool)

(declare-fun res!1047432 () Bool)

(assert (=> b!1529591 (=> (not res!1047432) (not e!852401))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101595 (_ BitVec 32)) Bool)

(assert (=> b!1529591 (= res!1047432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1529592 () Bool)

(declare-fun res!1047435 () Bool)

(assert (=> b!1529592 (=> (not res!1047435) (not e!852401))))

(assert (=> b!1529592 (= res!1047435 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49569 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49569 a!2804))))))

(declare-fun b!1529593 () Bool)

(declare-fun res!1047440 () Bool)

(assert (=> b!1529593 (=> (not res!1047440) (not e!852399))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1529593 (= res!1047440 (= lt!662447 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49018 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49018 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101596 (store (arr!49018 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49569 a!2804)) mask!2512)))))

(declare-fun b!1529594 () Bool)

(declare-fun res!1047431 () Bool)

(assert (=> b!1529594 (=> (not res!1047431) (not e!852401))))

(assert (=> b!1529594 (= res!1047431 (validKeyInArray!0 (select (arr!49018 a!2804) i!961)))))

(declare-fun b!1529595 () Bool)

(assert (=> b!1529595 (= e!852399 (not e!852398))))

(declare-fun res!1047438 () Bool)

(assert (=> b!1529595 (=> res!1047438 e!852398)))

(assert (=> b!1529595 (= res!1047438 (or (not (= (select (arr!49018 a!2804) j!70) (select (store (arr!49018 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1529595 e!852397))

(declare-fun res!1047436 () Bool)

(assert (=> b!1529595 (=> (not res!1047436) (not e!852397))))

(assert (=> b!1529595 (= res!1047436 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51148 0))(
  ( (Unit!51149) )
))
(declare-fun lt!662449 () Unit!51148)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101595 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51148)

(assert (=> b!1529595 (= lt!662449 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529596 () Bool)

(declare-fun res!1047439 () Bool)

(assert (=> b!1529596 (=> (not res!1047439) (not e!852401))))

(assert (=> b!1529596 (= res!1047439 (and (= (size!49569 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49569 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49569 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!130318 res!1047430) b!1529596))

(assert (= (and b!1529596 res!1047439) b!1529594))

(assert (= (and b!1529594 res!1047431) b!1529586))

(assert (= (and b!1529586 res!1047433) b!1529591))

(assert (= (and b!1529591 res!1047432) b!1529590))

(assert (= (and b!1529590 res!1047434) b!1529592))

(assert (= (and b!1529592 res!1047435) b!1529587))

(assert (= (and b!1529587 res!1047437) b!1529585))

(assert (= (and b!1529585 res!1047441) b!1529593))

(assert (= (and b!1529593 res!1047440) b!1529595))

(assert (= (and b!1529595 res!1047436) b!1529589))

(assert (= (and b!1529595 (not res!1047438)) b!1529588))

(declare-fun m!1412595 () Bool)

(assert (=> b!1529595 m!1412595))

(declare-fun m!1412597 () Bool)

(assert (=> b!1529595 m!1412597))

(declare-fun m!1412599 () Bool)

(assert (=> b!1529595 m!1412599))

(declare-fun m!1412601 () Bool)

(assert (=> b!1529595 m!1412601))

(declare-fun m!1412603 () Bool)

(assert (=> b!1529595 m!1412603))

(assert (=> b!1529589 m!1412595))

(assert (=> b!1529589 m!1412595))

(declare-fun m!1412605 () Bool)

(assert (=> b!1529589 m!1412605))

(assert (=> b!1529586 m!1412595))

(assert (=> b!1529586 m!1412595))

(declare-fun m!1412607 () Bool)

(assert (=> b!1529586 m!1412607))

(assert (=> b!1529593 m!1412599))

(assert (=> b!1529593 m!1412601))

(assert (=> b!1529593 m!1412601))

(declare-fun m!1412609 () Bool)

(assert (=> b!1529593 m!1412609))

(assert (=> b!1529593 m!1412609))

(assert (=> b!1529593 m!1412601))

(declare-fun m!1412611 () Bool)

(assert (=> b!1529593 m!1412611))

(assert (=> b!1529587 m!1412595))

(assert (=> b!1529587 m!1412595))

(declare-fun m!1412613 () Bool)

(assert (=> b!1529587 m!1412613))

(assert (=> b!1529587 m!1412613))

(assert (=> b!1529587 m!1412595))

(declare-fun m!1412615 () Bool)

(assert (=> b!1529587 m!1412615))

(declare-fun m!1412617 () Bool)

(assert (=> b!1529594 m!1412617))

(assert (=> b!1529594 m!1412617))

(declare-fun m!1412619 () Bool)

(assert (=> b!1529594 m!1412619))

(declare-fun m!1412621 () Bool)

(assert (=> start!130318 m!1412621))

(declare-fun m!1412623 () Bool)

(assert (=> start!130318 m!1412623))

(declare-fun m!1412625 () Bool)

(assert (=> b!1529590 m!1412625))

(declare-fun m!1412627 () Bool)

(assert (=> b!1529591 m!1412627))

(declare-fun m!1412629 () Bool)

(assert (=> b!1529588 m!1412629))

(assert (=> b!1529585 m!1412595))

(assert (=> b!1529585 m!1412595))

(declare-fun m!1412631 () Bool)

(assert (=> b!1529585 m!1412631))

(push 1)

