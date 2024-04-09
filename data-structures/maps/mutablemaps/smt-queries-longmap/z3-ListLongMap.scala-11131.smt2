; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130116 () Bool)

(assert start!130116)

(declare-fun res!1044695 () Bool)

(declare-fun e!850894 () Bool)

(assert (=> start!130116 (=> (not res!1044695) (not e!850894))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130116 (= res!1044695 (validMask!0 mask!2512))))

(assert (=> start!130116 e!850894))

(assert (=> start!130116 true))

(declare-datatypes ((array!101456 0))(
  ( (array!101457 (arr!48950 (Array (_ BitVec 32) (_ BitVec 64))) (size!49501 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101456)

(declare-fun array_inv!37895 (array!101456) Bool)

(assert (=> start!130116 (array_inv!37895 a!2804)))

(declare-fun b!1526523 () Bool)

(declare-fun e!850892 () Bool)

(declare-fun e!850891 () Bool)

(assert (=> b!1526523 (= e!850892 e!850891)))

(declare-fun res!1044701 () Bool)

(assert (=> b!1526523 (=> res!1044701 e!850891)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun lt!661072 () (_ BitVec 64))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1526523 (= res!1044701 (or (not (= (select (arr!48950 a!2804) j!70) lt!661072)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48950 a!2804) index!487) (select (arr!48950 a!2804) j!70)) (not (= (select (arr!48950 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1526524 () Bool)

(declare-fun res!1044708 () Bool)

(assert (=> b!1526524 (=> (not res!1044708) (not e!850894))))

(assert (=> b!1526524 (= res!1044708 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49501 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49501 a!2804))))))

(declare-fun b!1526525 () Bool)

(declare-fun res!1044698 () Bool)

(declare-fun e!850895 () Bool)

(assert (=> b!1526525 (=> (not res!1044698) (not e!850895))))

(declare-datatypes ((SeekEntryResult!13136 0))(
  ( (MissingZero!13136 (index!54938 (_ BitVec 32))) (Found!13136 (index!54939 (_ BitVec 32))) (Intermediate!13136 (undefined!13948 Bool) (index!54940 (_ BitVec 32)) (x!136641 (_ BitVec 32))) (Undefined!13136) (MissingVacant!13136 (index!54941 (_ BitVec 32))) )
))
(declare-fun lt!661073 () SeekEntryResult!13136)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101456 (_ BitVec 32)) SeekEntryResult!13136)

(assert (=> b!1526525 (= res!1044698 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48950 a!2804) j!70) a!2804 mask!2512) lt!661073))))

(declare-fun b!1526526 () Bool)

(declare-fun res!1044704 () Bool)

(assert (=> b!1526526 (=> (not res!1044704) (not e!850894))))

(declare-datatypes ((List!35613 0))(
  ( (Nil!35610) (Cons!35609 (h!37043 (_ BitVec 64)) (t!50314 List!35613)) )
))
(declare-fun arrayNoDuplicates!0 (array!101456 (_ BitVec 32) List!35613) Bool)

(assert (=> b!1526526 (= res!1044704 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35610))))

(declare-fun b!1526527 () Bool)

(declare-fun e!850889 () Bool)

(assert (=> b!1526527 (= e!850895 e!850889)))

(declare-fun res!1044705 () Bool)

(assert (=> b!1526527 (=> (not res!1044705) (not e!850889))))

(declare-fun lt!661074 () SeekEntryResult!13136)

(declare-fun lt!661071 () array!101456)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526527 (= res!1044705 (= lt!661074 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661072 mask!2512) lt!661072 lt!661071 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1526527 (= lt!661072 (select (store (arr!48950 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526527 (= lt!661071 (array!101457 (store (arr!48950 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49501 a!2804)))))

(declare-fun b!1526528 () Bool)

(declare-fun e!850893 () Bool)

(assert (=> b!1526528 (= e!850891 e!850893)))

(declare-fun res!1044699 () Bool)

(assert (=> b!1526528 (=> (not res!1044699) (not e!850893))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101456 (_ BitVec 32)) SeekEntryResult!13136)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101456 (_ BitVec 32)) SeekEntryResult!13136)

(assert (=> b!1526528 (= res!1044699 (= (seekEntryOrOpen!0 (select (arr!48950 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48950 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1526529 () Bool)

(declare-fun res!1044697 () Bool)

(assert (=> b!1526529 (=> (not res!1044697) (not e!850894))))

(assert (=> b!1526529 (= res!1044697 (and (= (size!49501 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49501 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49501 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1526530 () Bool)

(declare-fun res!1044703 () Bool)

(assert (=> b!1526530 (=> (not res!1044703) (not e!850894))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101456 (_ BitVec 32)) Bool)

(assert (=> b!1526530 (= res!1044703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526531 () Bool)

(declare-fun res!1044696 () Bool)

(assert (=> b!1526531 (=> (not res!1044696) (not e!850892))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101456 (_ BitVec 32)) SeekEntryResult!13136)

(assert (=> b!1526531 (= res!1044696 (= (seekEntry!0 (select (arr!48950 a!2804) j!70) a!2804 mask!2512) (Found!13136 j!70)))))

(declare-fun b!1526532 () Bool)

(assert (=> b!1526532 (= e!850893 (= (seekEntryOrOpen!0 lt!661072 lt!661071 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661072 lt!661071 mask!2512)))))

(declare-fun b!1526533 () Bool)

(declare-fun res!1044707 () Bool)

(assert (=> b!1526533 (=> (not res!1044707) (not e!850894))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526533 (= res!1044707 (validKeyInArray!0 (select (arr!48950 a!2804) i!961)))))

(declare-fun b!1526534 () Bool)

(assert (=> b!1526534 (= e!850889 (not true))))

(assert (=> b!1526534 e!850892))

(declare-fun res!1044702 () Bool)

(assert (=> b!1526534 (=> (not res!1044702) (not e!850892))))

(assert (=> b!1526534 (= res!1044702 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51012 0))(
  ( (Unit!51013) )
))
(declare-fun lt!661075 () Unit!51012)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101456 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51012)

(assert (=> b!1526534 (= lt!661075 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1526535 () Bool)

(declare-fun res!1044700 () Bool)

(assert (=> b!1526535 (=> (not res!1044700) (not e!850894))))

(assert (=> b!1526535 (= res!1044700 (validKeyInArray!0 (select (arr!48950 a!2804) j!70)))))

(declare-fun b!1526536 () Bool)

(assert (=> b!1526536 (= e!850894 e!850895)))

(declare-fun res!1044706 () Bool)

(assert (=> b!1526536 (=> (not res!1044706) (not e!850895))))

(assert (=> b!1526536 (= res!1044706 (= lt!661074 lt!661073))))

(assert (=> b!1526536 (= lt!661073 (Intermediate!13136 false resIndex!21 resX!21))))

(assert (=> b!1526536 (= lt!661074 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48950 a!2804) j!70) mask!2512) (select (arr!48950 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!130116 res!1044695) b!1526529))

(assert (= (and b!1526529 res!1044697) b!1526533))

(assert (= (and b!1526533 res!1044707) b!1526535))

(assert (= (and b!1526535 res!1044700) b!1526530))

(assert (= (and b!1526530 res!1044703) b!1526526))

(assert (= (and b!1526526 res!1044704) b!1526524))

(assert (= (and b!1526524 res!1044708) b!1526536))

(assert (= (and b!1526536 res!1044706) b!1526525))

(assert (= (and b!1526525 res!1044698) b!1526527))

(assert (= (and b!1526527 res!1044705) b!1526534))

(assert (= (and b!1526534 res!1044702) b!1526531))

(assert (= (and b!1526531 res!1044696) b!1526523))

(assert (= (and b!1526523 (not res!1044701)) b!1526528))

(assert (= (and b!1526528 res!1044699) b!1526532))

(declare-fun m!1409395 () Bool)

(assert (=> b!1526528 m!1409395))

(assert (=> b!1526528 m!1409395))

(declare-fun m!1409397 () Bool)

(assert (=> b!1526528 m!1409397))

(assert (=> b!1526528 m!1409395))

(declare-fun m!1409399 () Bool)

(assert (=> b!1526528 m!1409399))

(assert (=> b!1526535 m!1409395))

(assert (=> b!1526535 m!1409395))

(declare-fun m!1409401 () Bool)

(assert (=> b!1526535 m!1409401))

(declare-fun m!1409403 () Bool)

(assert (=> b!1526530 m!1409403))

(assert (=> b!1526523 m!1409395))

(declare-fun m!1409405 () Bool)

(assert (=> b!1526523 m!1409405))

(assert (=> b!1526536 m!1409395))

(assert (=> b!1526536 m!1409395))

(declare-fun m!1409407 () Bool)

(assert (=> b!1526536 m!1409407))

(assert (=> b!1526536 m!1409407))

(assert (=> b!1526536 m!1409395))

(declare-fun m!1409409 () Bool)

(assert (=> b!1526536 m!1409409))

(assert (=> b!1526525 m!1409395))

(assert (=> b!1526525 m!1409395))

(declare-fun m!1409411 () Bool)

(assert (=> b!1526525 m!1409411))

(declare-fun m!1409413 () Bool)

(assert (=> b!1526533 m!1409413))

(assert (=> b!1526533 m!1409413))

(declare-fun m!1409415 () Bool)

(assert (=> b!1526533 m!1409415))

(declare-fun m!1409417 () Bool)

(assert (=> b!1526534 m!1409417))

(declare-fun m!1409419 () Bool)

(assert (=> b!1526534 m!1409419))

(declare-fun m!1409421 () Bool)

(assert (=> b!1526527 m!1409421))

(assert (=> b!1526527 m!1409421))

(declare-fun m!1409423 () Bool)

(assert (=> b!1526527 m!1409423))

(declare-fun m!1409425 () Bool)

(assert (=> b!1526527 m!1409425))

(declare-fun m!1409427 () Bool)

(assert (=> b!1526527 m!1409427))

(declare-fun m!1409429 () Bool)

(assert (=> b!1526526 m!1409429))

(declare-fun m!1409431 () Bool)

(assert (=> b!1526532 m!1409431))

(declare-fun m!1409433 () Bool)

(assert (=> b!1526532 m!1409433))

(assert (=> b!1526531 m!1409395))

(assert (=> b!1526531 m!1409395))

(declare-fun m!1409435 () Bool)

(assert (=> b!1526531 m!1409435))

(declare-fun m!1409437 () Bool)

(assert (=> start!130116 m!1409437))

(declare-fun m!1409439 () Bool)

(assert (=> start!130116 m!1409439))

(check-sat (not b!1526534) (not b!1526528) (not start!130116) (not b!1526530) (not b!1526531) (not b!1526536) (not b!1526532) (not b!1526526) (not b!1526535) (not b!1526527) (not b!1526533) (not b!1526525))
(check-sat)
