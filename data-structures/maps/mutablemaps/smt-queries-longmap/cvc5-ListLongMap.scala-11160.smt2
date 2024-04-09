; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130474 () Bool)

(assert start!130474)

(declare-fun res!1048285 () Bool)

(declare-fun e!853017 () Bool)

(assert (=> start!130474 (=> (not res!1048285) (not e!853017))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130474 (= res!1048285 (validMask!0 mask!2512))))

(assert (=> start!130474 e!853017))

(assert (=> start!130474 true))

(declare-datatypes ((array!101637 0))(
  ( (array!101638 (arr!49036 (Array (_ BitVec 32) (_ BitVec 64))) (size!49587 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101637)

(declare-fun array_inv!37981 (array!101637) Bool)

(assert (=> start!130474 (array_inv!37981 a!2804)))

(declare-fun b!1530797 () Bool)

(declare-fun e!853016 () Bool)

(assert (=> b!1530797 (= e!853017 e!853016)))

(declare-fun res!1048278 () Bool)

(assert (=> b!1530797 (=> (not res!1048278) (not e!853016))))

(declare-datatypes ((SeekEntryResult!13222 0))(
  ( (MissingZero!13222 (index!55282 (_ BitVec 32))) (Found!13222 (index!55283 (_ BitVec 32))) (Intermediate!13222 (undefined!14034 Bool) (index!55284 (_ BitVec 32)) (x!136986 (_ BitVec 32))) (Undefined!13222) (MissingVacant!13222 (index!55285 (_ BitVec 32))) )
))
(declare-fun lt!662952 () SeekEntryResult!13222)

(declare-fun lt!662953 () SeekEntryResult!13222)

(assert (=> b!1530797 (= res!1048278 (= lt!662952 lt!662953))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1530797 (= lt!662953 (Intermediate!13222 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101637 (_ BitVec 32)) SeekEntryResult!13222)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530797 (= lt!662952 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49036 a!2804) j!70) mask!2512) (select (arr!49036 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530798 () Bool)

(declare-fun res!1048281 () Bool)

(assert (=> b!1530798 (=> (not res!1048281) (not e!853017))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101637 (_ BitVec 32)) Bool)

(assert (=> b!1530798 (= res!1048281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1530799 () Bool)

(declare-fun res!1048276 () Bool)

(assert (=> b!1530799 (=> (not res!1048276) (not e!853017))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1530799 (= res!1048276 (validKeyInArray!0 (select (arr!49036 a!2804) i!961)))))

(declare-fun b!1530800 () Bool)

(declare-fun res!1048287 () Bool)

(assert (=> b!1530800 (=> (not res!1048287) (not e!853017))))

(assert (=> b!1530800 (= res!1048287 (and (= (size!49587 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49587 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49587 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1530801 () Bool)

(declare-fun res!1048280 () Bool)

(assert (=> b!1530801 (=> (not res!1048280) (not e!853016))))

(assert (=> b!1530801 (= res!1048280 (= lt!662952 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49036 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49036 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101638 (store (arr!49036 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49587 a!2804)) mask!2512)))))

(declare-fun b!1530802 () Bool)

(declare-fun e!853015 () Bool)

(assert (=> b!1530802 (= e!853016 (not e!853015))))

(declare-fun res!1048283 () Bool)

(assert (=> b!1530802 (=> res!1048283 e!853015)))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1530802 (= res!1048283 (or (not (= (select (arr!49036 a!2804) j!70) (select (store (arr!49036 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!853018 () Bool)

(assert (=> b!1530802 e!853018))

(declare-fun res!1048277 () Bool)

(assert (=> b!1530802 (=> (not res!1048277) (not e!853018))))

(assert (=> b!1530802 (= res!1048277 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51184 0))(
  ( (Unit!51185) )
))
(declare-fun lt!662951 () Unit!51184)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101637 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51184)

(assert (=> b!1530802 (= lt!662951 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1530803 () Bool)

(declare-fun res!1048279 () Bool)

(assert (=> b!1530803 (=> (not res!1048279) (not e!853017))))

(assert (=> b!1530803 (= res!1048279 (validKeyInArray!0 (select (arr!49036 a!2804) j!70)))))

(declare-fun b!1530804 () Bool)

(declare-fun res!1048284 () Bool)

(assert (=> b!1530804 (=> (not res!1048284) (not e!853017))))

(declare-datatypes ((List!35699 0))(
  ( (Nil!35696) (Cons!35695 (h!37138 (_ BitVec 64)) (t!50400 List!35699)) )
))
(declare-fun arrayNoDuplicates!0 (array!101637 (_ BitVec 32) List!35699) Bool)

(assert (=> b!1530804 (= res!1048284 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35696))))

(declare-fun b!1530805 () Bool)

(declare-fun res!1048282 () Bool)

(assert (=> b!1530805 (=> (not res!1048282) (not e!853017))))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1530805 (= res!1048282 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49587 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49587 a!2804))))))

(declare-fun b!1530806 () Bool)

(assert (=> b!1530806 (= e!853015 true)))

(declare-fun lt!662950 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530806 (= lt!662950 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1530807 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101637 (_ BitVec 32)) SeekEntryResult!13222)

(assert (=> b!1530807 (= e!853018 (= (seekEntry!0 (select (arr!49036 a!2804) j!70) a!2804 mask!2512) (Found!13222 j!70)))))

(declare-fun b!1530808 () Bool)

(declare-fun res!1048286 () Bool)

(assert (=> b!1530808 (=> (not res!1048286) (not e!853016))))

(assert (=> b!1530808 (= res!1048286 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49036 a!2804) j!70) a!2804 mask!2512) lt!662953))))

(assert (= (and start!130474 res!1048285) b!1530800))

(assert (= (and b!1530800 res!1048287) b!1530799))

(assert (= (and b!1530799 res!1048276) b!1530803))

(assert (= (and b!1530803 res!1048279) b!1530798))

(assert (= (and b!1530798 res!1048281) b!1530804))

(assert (= (and b!1530804 res!1048284) b!1530805))

(assert (= (and b!1530805 res!1048282) b!1530797))

(assert (= (and b!1530797 res!1048278) b!1530808))

(assert (= (and b!1530808 res!1048286) b!1530801))

(assert (= (and b!1530801 res!1048280) b!1530802))

(assert (= (and b!1530802 res!1048277) b!1530807))

(assert (= (and b!1530802 (not res!1048283)) b!1530806))

(declare-fun m!1413615 () Bool)

(assert (=> b!1530802 m!1413615))

(declare-fun m!1413617 () Bool)

(assert (=> b!1530802 m!1413617))

(declare-fun m!1413619 () Bool)

(assert (=> b!1530802 m!1413619))

(declare-fun m!1413621 () Bool)

(assert (=> b!1530802 m!1413621))

(declare-fun m!1413623 () Bool)

(assert (=> b!1530802 m!1413623))

(assert (=> b!1530801 m!1413619))

(assert (=> b!1530801 m!1413621))

(assert (=> b!1530801 m!1413621))

(declare-fun m!1413625 () Bool)

(assert (=> b!1530801 m!1413625))

(assert (=> b!1530801 m!1413625))

(assert (=> b!1530801 m!1413621))

(declare-fun m!1413627 () Bool)

(assert (=> b!1530801 m!1413627))

(assert (=> b!1530797 m!1413615))

(assert (=> b!1530797 m!1413615))

(declare-fun m!1413629 () Bool)

(assert (=> b!1530797 m!1413629))

(assert (=> b!1530797 m!1413629))

(assert (=> b!1530797 m!1413615))

(declare-fun m!1413631 () Bool)

(assert (=> b!1530797 m!1413631))

(assert (=> b!1530803 m!1413615))

(assert (=> b!1530803 m!1413615))

(declare-fun m!1413633 () Bool)

(assert (=> b!1530803 m!1413633))

(declare-fun m!1413635 () Bool)

(assert (=> start!130474 m!1413635))

(declare-fun m!1413637 () Bool)

(assert (=> start!130474 m!1413637))

(declare-fun m!1413639 () Bool)

(assert (=> b!1530806 m!1413639))

(assert (=> b!1530808 m!1413615))

(assert (=> b!1530808 m!1413615))

(declare-fun m!1413641 () Bool)

(assert (=> b!1530808 m!1413641))

(assert (=> b!1530807 m!1413615))

(assert (=> b!1530807 m!1413615))

(declare-fun m!1413643 () Bool)

(assert (=> b!1530807 m!1413643))

(declare-fun m!1413645 () Bool)

(assert (=> b!1530799 m!1413645))

(assert (=> b!1530799 m!1413645))

(declare-fun m!1413647 () Bool)

(assert (=> b!1530799 m!1413647))

(declare-fun m!1413649 () Bool)

(assert (=> b!1530804 m!1413649))

(declare-fun m!1413651 () Bool)

(assert (=> b!1530798 m!1413651))

(push 1)

