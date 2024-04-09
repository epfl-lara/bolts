; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129280 () Bool)

(assert start!129280)

(declare-fun b!1517287 () Bool)

(declare-fun e!846573 () Bool)

(declare-fun e!846575 () Bool)

(assert (=> b!1517287 (= e!846573 e!846575)))

(declare-fun res!1037272 () Bool)

(assert (=> b!1517287 (=> res!1037272 e!846575)))

(declare-fun lt!657702 () (_ BitVec 32))

(declare-datatypes ((array!101049 0))(
  ( (array!101050 (arr!48757 (Array (_ BitVec 32) (_ BitVec 64))) (size!49308 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101049)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1517287 (= res!1037272 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657702 #b00000000000000000000000000000000) (bvsge lt!657702 (size!49308 a!2804))))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517287 (= lt!657702 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517288 () Bool)

(declare-fun res!1037271 () Bool)

(declare-fun e!846570 () Bool)

(assert (=> b!1517288 (=> (not res!1037271) (not e!846570))))

(declare-datatypes ((SeekEntryResult!12949 0))(
  ( (MissingZero!12949 (index!54190 (_ BitVec 32))) (Found!12949 (index!54191 (_ BitVec 32))) (Intermediate!12949 (undefined!13761 Bool) (index!54192 (_ BitVec 32)) (x!135888 (_ BitVec 32))) (Undefined!12949) (MissingVacant!12949 (index!54193 (_ BitVec 32))) )
))
(declare-fun lt!657704 () SeekEntryResult!12949)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101049 (_ BitVec 32)) SeekEntryResult!12949)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517288 (= res!1037271 (= lt!657704 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48757 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48757 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101050 (store (arr!48757 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49308 a!2804)) mask!2512)))))

(declare-fun b!1517290 () Bool)

(declare-fun res!1037262 () Bool)

(declare-fun e!846572 () Bool)

(assert (=> b!1517290 (=> (not res!1037262) (not e!846572))))

(assert (=> b!1517290 (= res!1037262 (and (= (size!49308 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49308 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49308 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517291 () Bool)

(declare-fun res!1037269 () Bool)

(assert (=> b!1517291 (=> (not res!1037269) (not e!846572))))

(declare-datatypes ((List!35420 0))(
  ( (Nil!35417) (Cons!35416 (h!36829 (_ BitVec 64)) (t!50121 List!35420)) )
))
(declare-fun arrayNoDuplicates!0 (array!101049 (_ BitVec 32) List!35420) Bool)

(assert (=> b!1517291 (= res!1037269 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35417))))

(declare-fun b!1517292 () Bool)

(assert (=> b!1517292 (= e!846572 e!846570)))

(declare-fun res!1037267 () Bool)

(assert (=> b!1517292 (=> (not res!1037267) (not e!846570))))

(declare-fun lt!657703 () SeekEntryResult!12949)

(assert (=> b!1517292 (= res!1037267 (= lt!657704 lt!657703))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1517292 (= lt!657703 (Intermediate!12949 false resIndex!21 resX!21))))

(assert (=> b!1517292 (= lt!657704 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48757 a!2804) j!70) mask!2512) (select (arr!48757 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517293 () Bool)

(declare-fun res!1037263 () Bool)

(assert (=> b!1517293 (=> (not res!1037263) (not e!846572))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101049 (_ BitVec 32)) Bool)

(assert (=> b!1517293 (= res!1037263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517294 () Bool)

(assert (=> b!1517294 (= e!846570 (not e!846573))))

(declare-fun res!1037265 () Bool)

(assert (=> b!1517294 (=> res!1037265 e!846573)))

(assert (=> b!1517294 (= res!1037265 (or (not (= (select (arr!48757 a!2804) j!70) (select (store (arr!48757 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846571 () Bool)

(assert (=> b!1517294 e!846571))

(declare-fun res!1037270 () Bool)

(assert (=> b!1517294 (=> (not res!1037270) (not e!846571))))

(assert (=> b!1517294 (= res!1037270 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50722 0))(
  ( (Unit!50723) )
))
(declare-fun lt!657706 () Unit!50722)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101049 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50722)

(assert (=> b!1517294 (= lt!657706 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1037273 () Bool)

(assert (=> start!129280 (=> (not res!1037273) (not e!846572))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129280 (= res!1037273 (validMask!0 mask!2512))))

(assert (=> start!129280 e!846572))

(assert (=> start!129280 true))

(declare-fun array_inv!37702 (array!101049) Bool)

(assert (=> start!129280 (array_inv!37702 a!2804)))

(declare-fun b!1517289 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101049 (_ BitVec 32)) SeekEntryResult!12949)

(assert (=> b!1517289 (= e!846571 (= (seekEntry!0 (select (arr!48757 a!2804) j!70) a!2804 mask!2512) (Found!12949 j!70)))))

(declare-fun b!1517295 () Bool)

(declare-fun res!1037266 () Bool)

(assert (=> b!1517295 (=> (not res!1037266) (not e!846572))))

(assert (=> b!1517295 (= res!1037266 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49308 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49308 a!2804))))))

(declare-fun b!1517296 () Bool)

(declare-fun res!1037274 () Bool)

(assert (=> b!1517296 (=> (not res!1037274) (not e!846572))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517296 (= res!1037274 (validKeyInArray!0 (select (arr!48757 a!2804) i!961)))))

(declare-fun b!1517297 () Bool)

(declare-fun res!1037268 () Bool)

(assert (=> b!1517297 (=> (not res!1037268) (not e!846570))))

(assert (=> b!1517297 (= res!1037268 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48757 a!2804) j!70) a!2804 mask!2512) lt!657703))))

(declare-fun b!1517298 () Bool)

(declare-fun res!1037264 () Bool)

(assert (=> b!1517298 (=> (not res!1037264) (not e!846572))))

(assert (=> b!1517298 (= res!1037264 (validKeyInArray!0 (select (arr!48757 a!2804) j!70)))))

(declare-fun b!1517299 () Bool)

(assert (=> b!1517299 (= e!846575 true)))

(declare-fun lt!657705 () SeekEntryResult!12949)

(assert (=> b!1517299 (= lt!657705 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657702 (select (arr!48757 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!129280 res!1037273) b!1517290))

(assert (= (and b!1517290 res!1037262) b!1517296))

(assert (= (and b!1517296 res!1037274) b!1517298))

(assert (= (and b!1517298 res!1037264) b!1517293))

(assert (= (and b!1517293 res!1037263) b!1517291))

(assert (= (and b!1517291 res!1037269) b!1517295))

(assert (= (and b!1517295 res!1037266) b!1517292))

(assert (= (and b!1517292 res!1037267) b!1517297))

(assert (= (and b!1517297 res!1037268) b!1517288))

(assert (= (and b!1517288 res!1037271) b!1517294))

(assert (= (and b!1517294 res!1037270) b!1517289))

(assert (= (and b!1517294 (not res!1037265)) b!1517287))

(assert (= (and b!1517287 (not res!1037272)) b!1517299))

(declare-fun m!1400631 () Bool)

(assert (=> b!1517291 m!1400631))

(declare-fun m!1400633 () Bool)

(assert (=> b!1517292 m!1400633))

(assert (=> b!1517292 m!1400633))

(declare-fun m!1400635 () Bool)

(assert (=> b!1517292 m!1400635))

(assert (=> b!1517292 m!1400635))

(assert (=> b!1517292 m!1400633))

(declare-fun m!1400637 () Bool)

(assert (=> b!1517292 m!1400637))

(assert (=> b!1517299 m!1400633))

(assert (=> b!1517299 m!1400633))

(declare-fun m!1400639 () Bool)

(assert (=> b!1517299 m!1400639))

(declare-fun m!1400641 () Bool)

(assert (=> b!1517288 m!1400641))

(declare-fun m!1400643 () Bool)

(assert (=> b!1517288 m!1400643))

(assert (=> b!1517288 m!1400643))

(declare-fun m!1400645 () Bool)

(assert (=> b!1517288 m!1400645))

(assert (=> b!1517288 m!1400645))

(assert (=> b!1517288 m!1400643))

(declare-fun m!1400647 () Bool)

(assert (=> b!1517288 m!1400647))

(assert (=> b!1517294 m!1400633))

(declare-fun m!1400649 () Bool)

(assert (=> b!1517294 m!1400649))

(assert (=> b!1517294 m!1400641))

(assert (=> b!1517294 m!1400643))

(declare-fun m!1400651 () Bool)

(assert (=> b!1517294 m!1400651))

(declare-fun m!1400653 () Bool)

(assert (=> b!1517293 m!1400653))

(declare-fun m!1400655 () Bool)

(assert (=> start!129280 m!1400655))

(declare-fun m!1400657 () Bool)

(assert (=> start!129280 m!1400657))

(assert (=> b!1517298 m!1400633))

(assert (=> b!1517298 m!1400633))

(declare-fun m!1400659 () Bool)

(assert (=> b!1517298 m!1400659))

(declare-fun m!1400661 () Bool)

(assert (=> b!1517296 m!1400661))

(assert (=> b!1517296 m!1400661))

(declare-fun m!1400663 () Bool)

(assert (=> b!1517296 m!1400663))

(assert (=> b!1517289 m!1400633))

(assert (=> b!1517289 m!1400633))

(declare-fun m!1400665 () Bool)

(assert (=> b!1517289 m!1400665))

(assert (=> b!1517297 m!1400633))

(assert (=> b!1517297 m!1400633))

(declare-fun m!1400667 () Bool)

(assert (=> b!1517297 m!1400667))

(declare-fun m!1400669 () Bool)

(assert (=> b!1517287 m!1400669))

(push 1)

