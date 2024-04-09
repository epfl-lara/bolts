; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130110 () Bool)

(assert start!130110)

(declare-fun b!1526397 () Bool)

(declare-fun res!1044572 () Bool)

(declare-fun e!850829 () Bool)

(assert (=> b!1526397 (=> (not res!1044572) (not e!850829))))

(declare-datatypes ((array!101450 0))(
  ( (array!101451 (arr!48947 (Array (_ BitVec 32) (_ BitVec 64))) (size!49498 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101450)

(declare-datatypes ((List!35610 0))(
  ( (Nil!35607) (Cons!35606 (h!37040 (_ BitVec 64)) (t!50311 List!35610)) )
))
(declare-fun arrayNoDuplicates!0 (array!101450 (_ BitVec 32) List!35610) Bool)

(assert (=> b!1526397 (= res!1044572 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35607))))

(declare-fun b!1526398 () Bool)

(declare-fun e!850831 () Bool)

(declare-fun e!850828 () Bool)

(assert (=> b!1526398 (= e!850831 e!850828)))

(declare-fun res!1044574 () Bool)

(assert (=> b!1526398 (=> (not res!1044574) (not e!850828))))

(declare-fun lt!661029 () array!101450)

(declare-fun lt!661028 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!13133 0))(
  ( (MissingZero!13133 (index!54926 (_ BitVec 32))) (Found!13133 (index!54927 (_ BitVec 32))) (Intermediate!13133 (undefined!13945 Bool) (index!54928 (_ BitVec 32)) (x!136630 (_ BitVec 32))) (Undefined!13133) (MissingVacant!13133 (index!54929 (_ BitVec 32))) )
))
(declare-fun lt!661026 () SeekEntryResult!13133)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101450 (_ BitVec 32)) SeekEntryResult!13133)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526398 (= res!1044574 (= lt!661026 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661028 mask!2512) lt!661028 lt!661029 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1526398 (= lt!661028 (select (store (arr!48947 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526398 (= lt!661029 (array!101451 (store (arr!48947 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49498 a!2804)))))

(declare-fun res!1044576 () Bool)

(assert (=> start!130110 (=> (not res!1044576) (not e!850829))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130110 (= res!1044576 (validMask!0 mask!2512))))

(assert (=> start!130110 e!850829))

(assert (=> start!130110 true))

(declare-fun array_inv!37892 (array!101450) Bool)

(assert (=> start!130110 (array_inv!37892 a!2804)))

(declare-fun b!1526399 () Bool)

(declare-fun e!850826 () Bool)

(declare-fun e!850827 () Bool)

(assert (=> b!1526399 (= e!850826 e!850827)))

(declare-fun res!1044577 () Bool)

(assert (=> b!1526399 (=> res!1044577 e!850827)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1526399 (= res!1044577 (or (not (= (select (arr!48947 a!2804) j!70) lt!661028)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48947 a!2804) index!487) (select (arr!48947 a!2804) j!70)) (not (= (select (arr!48947 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1526400 () Bool)

(assert (=> b!1526400 (= e!850829 e!850831)))

(declare-fun res!1044575 () Bool)

(assert (=> b!1526400 (=> (not res!1044575) (not e!850831))))

(declare-fun lt!661030 () SeekEntryResult!13133)

(assert (=> b!1526400 (= res!1044575 (= lt!661026 lt!661030))))

(assert (=> b!1526400 (= lt!661030 (Intermediate!13133 false resIndex!21 resX!21))))

(assert (=> b!1526400 (= lt!661026 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48947 a!2804) j!70) mask!2512) (select (arr!48947 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1526401 () Bool)

(declare-fun res!1044573 () Bool)

(assert (=> b!1526401 (=> (not res!1044573) (not e!850826))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101450 (_ BitVec 32)) SeekEntryResult!13133)

(assert (=> b!1526401 (= res!1044573 (= (seekEntry!0 (select (arr!48947 a!2804) j!70) a!2804 mask!2512) (Found!13133 j!70)))))

(declare-fun b!1526402 () Bool)

(declare-fun e!850832 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101450 (_ BitVec 32)) SeekEntryResult!13133)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101450 (_ BitVec 32)) SeekEntryResult!13133)

(assert (=> b!1526402 (= e!850832 (= (seekEntryOrOpen!0 lt!661028 lt!661029 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661028 lt!661029 mask!2512)))))

(declare-fun b!1526403 () Bool)

(declare-fun res!1044578 () Bool)

(assert (=> b!1526403 (=> (not res!1044578) (not e!850831))))

(assert (=> b!1526403 (= res!1044578 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48947 a!2804) j!70) a!2804 mask!2512) lt!661030))))

(declare-fun b!1526404 () Bool)

(assert (=> b!1526404 (= e!850828 (not true))))

(assert (=> b!1526404 e!850826))

(declare-fun res!1044570 () Bool)

(assert (=> b!1526404 (=> (not res!1044570) (not e!850826))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101450 (_ BitVec 32)) Bool)

(assert (=> b!1526404 (= res!1044570 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51006 0))(
  ( (Unit!51007) )
))
(declare-fun lt!661027 () Unit!51006)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101450 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51006)

(assert (=> b!1526404 (= lt!661027 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1526405 () Bool)

(declare-fun res!1044569 () Bool)

(assert (=> b!1526405 (=> (not res!1044569) (not e!850829))))

(assert (=> b!1526405 (= res!1044569 (and (= (size!49498 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49498 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49498 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1526406 () Bool)

(declare-fun res!1044579 () Bool)

(assert (=> b!1526406 (=> (not res!1044579) (not e!850829))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526406 (= res!1044579 (validKeyInArray!0 (select (arr!48947 a!2804) i!961)))))

(declare-fun b!1526407 () Bool)

(declare-fun res!1044580 () Bool)

(assert (=> b!1526407 (=> (not res!1044580) (not e!850829))))

(assert (=> b!1526407 (= res!1044580 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49498 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49498 a!2804))))))

(declare-fun b!1526408 () Bool)

(declare-fun res!1044581 () Bool)

(assert (=> b!1526408 (=> (not res!1044581) (not e!850829))))

(assert (=> b!1526408 (= res!1044581 (validKeyInArray!0 (select (arr!48947 a!2804) j!70)))))

(declare-fun b!1526409 () Bool)

(declare-fun res!1044582 () Bool)

(assert (=> b!1526409 (=> (not res!1044582) (not e!850829))))

(assert (=> b!1526409 (= res!1044582 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526410 () Bool)

(assert (=> b!1526410 (= e!850827 e!850832)))

(declare-fun res!1044571 () Bool)

(assert (=> b!1526410 (=> (not res!1044571) (not e!850832))))

(assert (=> b!1526410 (= res!1044571 (= (seekEntryOrOpen!0 (select (arr!48947 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48947 a!2804) j!70) a!2804 mask!2512)))))

(assert (= (and start!130110 res!1044576) b!1526405))

(assert (= (and b!1526405 res!1044569) b!1526406))

(assert (= (and b!1526406 res!1044579) b!1526408))

(assert (= (and b!1526408 res!1044581) b!1526409))

(assert (= (and b!1526409 res!1044582) b!1526397))

(assert (= (and b!1526397 res!1044572) b!1526407))

(assert (= (and b!1526407 res!1044580) b!1526400))

(assert (= (and b!1526400 res!1044575) b!1526403))

(assert (= (and b!1526403 res!1044578) b!1526398))

(assert (= (and b!1526398 res!1044574) b!1526404))

(assert (= (and b!1526404 res!1044570) b!1526401))

(assert (= (and b!1526401 res!1044573) b!1526399))

(assert (= (and b!1526399 (not res!1044577)) b!1526410))

(assert (= (and b!1526410 res!1044571) b!1526402))

(declare-fun m!1409257 () Bool)

(assert (=> b!1526397 m!1409257))

(declare-fun m!1409259 () Bool)

(assert (=> b!1526398 m!1409259))

(assert (=> b!1526398 m!1409259))

(declare-fun m!1409261 () Bool)

(assert (=> b!1526398 m!1409261))

(declare-fun m!1409263 () Bool)

(assert (=> b!1526398 m!1409263))

(declare-fun m!1409265 () Bool)

(assert (=> b!1526398 m!1409265))

(declare-fun m!1409267 () Bool)

(assert (=> b!1526404 m!1409267))

(declare-fun m!1409269 () Bool)

(assert (=> b!1526404 m!1409269))

(declare-fun m!1409271 () Bool)

(assert (=> b!1526401 m!1409271))

(assert (=> b!1526401 m!1409271))

(declare-fun m!1409273 () Bool)

(assert (=> b!1526401 m!1409273))

(assert (=> b!1526403 m!1409271))

(assert (=> b!1526403 m!1409271))

(declare-fun m!1409275 () Bool)

(assert (=> b!1526403 m!1409275))

(assert (=> b!1526408 m!1409271))

(assert (=> b!1526408 m!1409271))

(declare-fun m!1409277 () Bool)

(assert (=> b!1526408 m!1409277))

(assert (=> b!1526399 m!1409271))

(declare-fun m!1409279 () Bool)

(assert (=> b!1526399 m!1409279))

(declare-fun m!1409281 () Bool)

(assert (=> b!1526402 m!1409281))

(declare-fun m!1409283 () Bool)

(assert (=> b!1526402 m!1409283))

(declare-fun m!1409285 () Bool)

(assert (=> b!1526409 m!1409285))

(assert (=> b!1526400 m!1409271))

(assert (=> b!1526400 m!1409271))

(declare-fun m!1409287 () Bool)

(assert (=> b!1526400 m!1409287))

(assert (=> b!1526400 m!1409287))

(assert (=> b!1526400 m!1409271))

(declare-fun m!1409289 () Bool)

(assert (=> b!1526400 m!1409289))

(declare-fun m!1409291 () Bool)

(assert (=> start!130110 m!1409291))

(declare-fun m!1409293 () Bool)

(assert (=> start!130110 m!1409293))

(declare-fun m!1409295 () Bool)

(assert (=> b!1526406 m!1409295))

(assert (=> b!1526406 m!1409295))

(declare-fun m!1409297 () Bool)

(assert (=> b!1526406 m!1409297))

(assert (=> b!1526410 m!1409271))

(assert (=> b!1526410 m!1409271))

(declare-fun m!1409299 () Bool)

(assert (=> b!1526410 m!1409299))

(assert (=> b!1526410 m!1409271))

(declare-fun m!1409301 () Bool)

(assert (=> b!1526410 m!1409301))

(check-sat (not b!1526402) (not b!1526409) (not b!1526404) (not b!1526400) (not b!1526406) (not start!130110) (not b!1526403) (not b!1526401) (not b!1526397) (not b!1526398) (not b!1526408) (not b!1526410))
(check-sat)
