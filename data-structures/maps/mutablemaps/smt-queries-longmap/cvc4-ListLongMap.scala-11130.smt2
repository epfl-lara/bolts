; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130112 () Bool)

(assert start!130112)

(declare-fun b!1526439 () Bool)

(declare-fun e!850847 () Bool)

(declare-fun e!850850 () Bool)

(assert (=> b!1526439 (= e!850847 e!850850)))

(declare-fun res!1044622 () Bool)

(assert (=> b!1526439 (=> res!1044622 e!850850)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101452 0))(
  ( (array!101453 (arr!48948 (Array (_ BitVec 32) (_ BitVec 64))) (size!49499 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101452)

(declare-fun lt!661041 () (_ BitVec 64))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1526439 (= res!1044622 (or (not (= (select (arr!48948 a!2804) j!70) lt!661041)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48948 a!2804) index!487) (select (arr!48948 a!2804) j!70)) (not (= (select (arr!48948 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1526440 () Bool)

(declare-fun res!1044613 () Bool)

(declare-fun e!850853 () Bool)

(assert (=> b!1526440 (=> (not res!1044613) (not e!850853))))

(assert (=> b!1526440 (= res!1044613 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49499 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49499 a!2804))))))

(declare-fun b!1526441 () Bool)

(declare-fun res!1044618 () Bool)

(assert (=> b!1526441 (=> (not res!1044618) (not e!850853))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526441 (= res!1044618 (validKeyInArray!0 (select (arr!48948 a!2804) i!961)))))

(declare-fun b!1526442 () Bool)

(declare-fun e!850851 () Bool)

(assert (=> b!1526442 (= e!850850 e!850851)))

(declare-fun res!1044623 () Bool)

(assert (=> b!1526442 (=> (not res!1044623) (not e!850851))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13134 0))(
  ( (MissingZero!13134 (index!54930 (_ BitVec 32))) (Found!13134 (index!54931 (_ BitVec 32))) (Intermediate!13134 (undefined!13946 Bool) (index!54932 (_ BitVec 32)) (x!136631 (_ BitVec 32))) (Undefined!13134) (MissingVacant!13134 (index!54933 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101452 (_ BitVec 32)) SeekEntryResult!13134)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101452 (_ BitVec 32)) SeekEntryResult!13134)

(assert (=> b!1526442 (= res!1044623 (= (seekEntryOrOpen!0 (select (arr!48948 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48948 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1526444 () Bool)

(declare-fun res!1044614 () Bool)

(assert (=> b!1526444 (=> (not res!1044614) (not e!850853))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101452 (_ BitVec 32)) Bool)

(assert (=> b!1526444 (= res!1044614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526445 () Bool)

(declare-fun lt!661044 () array!101452)

(assert (=> b!1526445 (= e!850851 (= (seekEntryOrOpen!0 lt!661041 lt!661044 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661041 lt!661044 mask!2512)))))

(declare-fun b!1526446 () Bool)

(declare-fun res!1044611 () Bool)

(assert (=> b!1526446 (=> (not res!1044611) (not e!850853))))

(assert (=> b!1526446 (= res!1044611 (validKeyInArray!0 (select (arr!48948 a!2804) j!70)))))

(declare-fun b!1526447 () Bool)

(declare-fun e!850848 () Bool)

(assert (=> b!1526447 (= e!850853 e!850848)))

(declare-fun res!1044624 () Bool)

(assert (=> b!1526447 (=> (not res!1044624) (not e!850848))))

(declare-fun lt!661045 () SeekEntryResult!13134)

(declare-fun lt!661042 () SeekEntryResult!13134)

(assert (=> b!1526447 (= res!1044624 (= lt!661045 lt!661042))))

(assert (=> b!1526447 (= lt!661042 (Intermediate!13134 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101452 (_ BitVec 32)) SeekEntryResult!13134)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526447 (= lt!661045 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48948 a!2804) j!70) mask!2512) (select (arr!48948 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1526448 () Bool)

(declare-fun e!850849 () Bool)

(assert (=> b!1526448 (= e!850849 (not true))))

(assert (=> b!1526448 e!850847))

(declare-fun res!1044612 () Bool)

(assert (=> b!1526448 (=> (not res!1044612) (not e!850847))))

(assert (=> b!1526448 (= res!1044612 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51008 0))(
  ( (Unit!51009) )
))
(declare-fun lt!661043 () Unit!51008)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101452 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51008)

(assert (=> b!1526448 (= lt!661043 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1526443 () Bool)

(declare-fun res!1044617 () Bool)

(assert (=> b!1526443 (=> (not res!1044617) (not e!850853))))

(declare-datatypes ((List!35611 0))(
  ( (Nil!35608) (Cons!35607 (h!37041 (_ BitVec 64)) (t!50312 List!35611)) )
))
(declare-fun arrayNoDuplicates!0 (array!101452 (_ BitVec 32) List!35611) Bool)

(assert (=> b!1526443 (= res!1044617 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35608))))

(declare-fun res!1044616 () Bool)

(assert (=> start!130112 (=> (not res!1044616) (not e!850853))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130112 (= res!1044616 (validMask!0 mask!2512))))

(assert (=> start!130112 e!850853))

(assert (=> start!130112 true))

(declare-fun array_inv!37893 (array!101452) Bool)

(assert (=> start!130112 (array_inv!37893 a!2804)))

(declare-fun b!1526449 () Bool)

(declare-fun res!1044620 () Bool)

(assert (=> b!1526449 (=> (not res!1044620) (not e!850853))))

(assert (=> b!1526449 (= res!1044620 (and (= (size!49499 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49499 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49499 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1526450 () Bool)

(declare-fun res!1044619 () Bool)

(assert (=> b!1526450 (=> (not res!1044619) (not e!850848))))

(assert (=> b!1526450 (= res!1044619 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48948 a!2804) j!70) a!2804 mask!2512) lt!661042))))

(declare-fun b!1526451 () Bool)

(declare-fun res!1044621 () Bool)

(assert (=> b!1526451 (=> (not res!1044621) (not e!850847))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101452 (_ BitVec 32)) SeekEntryResult!13134)

(assert (=> b!1526451 (= res!1044621 (= (seekEntry!0 (select (arr!48948 a!2804) j!70) a!2804 mask!2512) (Found!13134 j!70)))))

(declare-fun b!1526452 () Bool)

(assert (=> b!1526452 (= e!850848 e!850849)))

(declare-fun res!1044615 () Bool)

(assert (=> b!1526452 (=> (not res!1044615) (not e!850849))))

(assert (=> b!1526452 (= res!1044615 (= lt!661045 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661041 mask!2512) lt!661041 lt!661044 mask!2512)))))

(assert (=> b!1526452 (= lt!661041 (select (store (arr!48948 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526452 (= lt!661044 (array!101453 (store (arr!48948 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49499 a!2804)))))

(assert (= (and start!130112 res!1044616) b!1526449))

(assert (= (and b!1526449 res!1044620) b!1526441))

(assert (= (and b!1526441 res!1044618) b!1526446))

(assert (= (and b!1526446 res!1044611) b!1526444))

(assert (= (and b!1526444 res!1044614) b!1526443))

(assert (= (and b!1526443 res!1044617) b!1526440))

(assert (= (and b!1526440 res!1044613) b!1526447))

(assert (= (and b!1526447 res!1044624) b!1526450))

(assert (= (and b!1526450 res!1044619) b!1526452))

(assert (= (and b!1526452 res!1044615) b!1526448))

(assert (= (and b!1526448 res!1044612) b!1526451))

(assert (= (and b!1526451 res!1044621) b!1526439))

(assert (= (and b!1526439 (not res!1044622)) b!1526442))

(assert (= (and b!1526442 res!1044623) b!1526445))

(declare-fun m!1409303 () Bool)

(assert (=> b!1526442 m!1409303))

(assert (=> b!1526442 m!1409303))

(declare-fun m!1409305 () Bool)

(assert (=> b!1526442 m!1409305))

(assert (=> b!1526442 m!1409303))

(declare-fun m!1409307 () Bool)

(assert (=> b!1526442 m!1409307))

(declare-fun m!1409309 () Bool)

(assert (=> b!1526443 m!1409309))

(assert (=> b!1526447 m!1409303))

(assert (=> b!1526447 m!1409303))

(declare-fun m!1409311 () Bool)

(assert (=> b!1526447 m!1409311))

(assert (=> b!1526447 m!1409311))

(assert (=> b!1526447 m!1409303))

(declare-fun m!1409313 () Bool)

(assert (=> b!1526447 m!1409313))

(assert (=> b!1526446 m!1409303))

(assert (=> b!1526446 m!1409303))

(declare-fun m!1409315 () Bool)

(assert (=> b!1526446 m!1409315))

(declare-fun m!1409317 () Bool)

(assert (=> b!1526445 m!1409317))

(declare-fun m!1409319 () Bool)

(assert (=> b!1526445 m!1409319))

(declare-fun m!1409321 () Bool)

(assert (=> b!1526441 m!1409321))

(assert (=> b!1526441 m!1409321))

(declare-fun m!1409323 () Bool)

(assert (=> b!1526441 m!1409323))

(declare-fun m!1409325 () Bool)

(assert (=> b!1526452 m!1409325))

(assert (=> b!1526452 m!1409325))

(declare-fun m!1409327 () Bool)

(assert (=> b!1526452 m!1409327))

(declare-fun m!1409329 () Bool)

(assert (=> b!1526452 m!1409329))

(declare-fun m!1409331 () Bool)

(assert (=> b!1526452 m!1409331))

(assert (=> b!1526439 m!1409303))

(declare-fun m!1409333 () Bool)

(assert (=> b!1526439 m!1409333))

(declare-fun m!1409335 () Bool)

(assert (=> b!1526448 m!1409335))

(declare-fun m!1409337 () Bool)

(assert (=> b!1526448 m!1409337))

(declare-fun m!1409339 () Bool)

(assert (=> b!1526444 m!1409339))

(assert (=> b!1526451 m!1409303))

(assert (=> b!1526451 m!1409303))

(declare-fun m!1409341 () Bool)

(assert (=> b!1526451 m!1409341))

(assert (=> b!1526450 m!1409303))

(assert (=> b!1526450 m!1409303))

(declare-fun m!1409343 () Bool)

(assert (=> b!1526450 m!1409343))

(declare-fun m!1409345 () Bool)

(assert (=> start!130112 m!1409345))

(declare-fun m!1409347 () Bool)

(assert (=> start!130112 m!1409347))

(push 1)

