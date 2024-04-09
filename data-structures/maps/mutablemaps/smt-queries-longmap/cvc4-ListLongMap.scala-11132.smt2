; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130124 () Bool)

(assert start!130124)

(declare-fun b!1526691 () Bool)

(declare-fun res!1044872 () Bool)

(declare-fun e!850977 () Bool)

(assert (=> b!1526691 (=> (not res!1044872) (not e!850977))))

(declare-datatypes ((array!101464 0))(
  ( (array!101465 (arr!48954 (Array (_ BitVec 32) (_ BitVec 64))) (size!49505 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101464)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526691 (= res!1044872 (validKeyInArray!0 (select (arr!48954 a!2804) i!961)))))

(declare-fun b!1526692 () Bool)

(declare-fun res!1044866 () Bool)

(assert (=> b!1526692 (=> (not res!1044866) (not e!850977))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1526692 (= res!1044866 (and (= (size!49505 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49505 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49505 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1526693 () Bool)

(declare-fun res!1044876 () Bool)

(assert (=> b!1526693 (=> (not res!1044876) (not e!850977))))

(assert (=> b!1526693 (= res!1044876 (validKeyInArray!0 (select (arr!48954 a!2804) j!70)))))

(declare-fun b!1526694 () Bool)

(declare-fun e!850978 () Bool)

(declare-fun e!850975 () Bool)

(assert (=> b!1526694 (= e!850978 e!850975)))

(declare-fun res!1044871 () Bool)

(assert (=> b!1526694 (=> (not res!1044871) (not e!850975))))

(declare-fun lt!661133 () (_ BitVec 64))

(declare-fun lt!661135 () array!101464)

(declare-datatypes ((SeekEntryResult!13140 0))(
  ( (MissingZero!13140 (index!54954 (_ BitVec 32))) (Found!13140 (index!54955 (_ BitVec 32))) (Intermediate!13140 (undefined!13952 Bool) (index!54956 (_ BitVec 32)) (x!136653 (_ BitVec 32))) (Undefined!13140) (MissingVacant!13140 (index!54957 (_ BitVec 32))) )
))
(declare-fun lt!661132 () SeekEntryResult!13140)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101464 (_ BitVec 32)) SeekEntryResult!13140)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526694 (= res!1044871 (= lt!661132 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661133 mask!2512) lt!661133 lt!661135 mask!2512)))))

(assert (=> b!1526694 (= lt!661133 (select (store (arr!48954 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526694 (= lt!661135 (array!101465 (store (arr!48954 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49505 a!2804)))))

(declare-fun b!1526695 () Bool)

(declare-fun e!850974 () Bool)

(declare-fun e!850976 () Bool)

(assert (=> b!1526695 (= e!850974 e!850976)))

(declare-fun res!1044869 () Bool)

(assert (=> b!1526695 (=> res!1044869 e!850976)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1526695 (= res!1044869 (or (not (= (select (arr!48954 a!2804) j!70) lt!661133)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48954 a!2804) index!487) (select (arr!48954 a!2804) j!70)) (not (= (select (arr!48954 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1526696 () Bool)

(declare-fun res!1044875 () Bool)

(assert (=> b!1526696 (=> (not res!1044875) (not e!850977))))

(assert (=> b!1526696 (= res!1044875 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49505 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49505 a!2804))))))

(declare-fun res!1044874 () Bool)

(assert (=> start!130124 (=> (not res!1044874) (not e!850977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130124 (= res!1044874 (validMask!0 mask!2512))))

(assert (=> start!130124 e!850977))

(assert (=> start!130124 true))

(declare-fun array_inv!37899 (array!101464) Bool)

(assert (=> start!130124 (array_inv!37899 a!2804)))

(declare-fun b!1526697 () Bool)

(assert (=> b!1526697 (= e!850977 e!850978)))

(declare-fun res!1044864 () Bool)

(assert (=> b!1526697 (=> (not res!1044864) (not e!850978))))

(declare-fun lt!661134 () SeekEntryResult!13140)

(assert (=> b!1526697 (= res!1044864 (= lt!661132 lt!661134))))

(assert (=> b!1526697 (= lt!661134 (Intermediate!13140 false resIndex!21 resX!21))))

(assert (=> b!1526697 (= lt!661132 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48954 a!2804) j!70) mask!2512) (select (arr!48954 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1526698 () Bool)

(declare-fun res!1044867 () Bool)

(assert (=> b!1526698 (=> (not res!1044867) (not e!850974))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101464 (_ BitVec 32)) SeekEntryResult!13140)

(assert (=> b!1526698 (= res!1044867 (= (seekEntry!0 (select (arr!48954 a!2804) j!70) a!2804 mask!2512) (Found!13140 j!70)))))

(declare-fun b!1526699 () Bool)

(declare-fun res!1044873 () Bool)

(assert (=> b!1526699 (=> (not res!1044873) (not e!850977))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101464 (_ BitVec 32)) Bool)

(assert (=> b!1526699 (= res!1044873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526700 () Bool)

(declare-fun e!850973 () Bool)

(assert (=> b!1526700 (= e!850976 e!850973)))

(declare-fun res!1044870 () Bool)

(assert (=> b!1526700 (=> (not res!1044870) (not e!850973))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101464 (_ BitVec 32)) SeekEntryResult!13140)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101464 (_ BitVec 32)) SeekEntryResult!13140)

(assert (=> b!1526700 (= res!1044870 (= (seekEntryOrOpen!0 (select (arr!48954 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48954 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1526701 () Bool)

(assert (=> b!1526701 (= e!850973 (= (seekEntryOrOpen!0 lt!661133 lt!661135 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661133 lt!661135 mask!2512)))))

(declare-fun b!1526702 () Bool)

(declare-fun res!1044868 () Bool)

(assert (=> b!1526702 (=> (not res!1044868) (not e!850977))))

(declare-datatypes ((List!35617 0))(
  ( (Nil!35614) (Cons!35613 (h!37047 (_ BitVec 64)) (t!50318 List!35617)) )
))
(declare-fun arrayNoDuplicates!0 (array!101464 (_ BitVec 32) List!35617) Bool)

(assert (=> b!1526702 (= res!1044868 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35614))))

(declare-fun b!1526703 () Bool)

(declare-fun res!1044865 () Bool)

(assert (=> b!1526703 (=> (not res!1044865) (not e!850978))))

(assert (=> b!1526703 (= res!1044865 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48954 a!2804) j!70) a!2804 mask!2512) lt!661134))))

(declare-fun b!1526704 () Bool)

(assert (=> b!1526704 (= e!850975 (not true))))

(assert (=> b!1526704 e!850974))

(declare-fun res!1044863 () Bool)

(assert (=> b!1526704 (=> (not res!1044863) (not e!850974))))

(assert (=> b!1526704 (= res!1044863 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51020 0))(
  ( (Unit!51021) )
))
(declare-fun lt!661131 () Unit!51020)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101464 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51020)

(assert (=> b!1526704 (= lt!661131 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!130124 res!1044874) b!1526692))

(assert (= (and b!1526692 res!1044866) b!1526691))

(assert (= (and b!1526691 res!1044872) b!1526693))

(assert (= (and b!1526693 res!1044876) b!1526699))

(assert (= (and b!1526699 res!1044873) b!1526702))

(assert (= (and b!1526702 res!1044868) b!1526696))

(assert (= (and b!1526696 res!1044875) b!1526697))

(assert (= (and b!1526697 res!1044864) b!1526703))

(assert (= (and b!1526703 res!1044865) b!1526694))

(assert (= (and b!1526694 res!1044871) b!1526704))

(assert (= (and b!1526704 res!1044863) b!1526698))

(assert (= (and b!1526698 res!1044867) b!1526695))

(assert (= (and b!1526695 (not res!1044869)) b!1526700))

(assert (= (and b!1526700 res!1044870) b!1526701))

(declare-fun m!1409579 () Bool)

(assert (=> b!1526699 m!1409579))

(declare-fun m!1409581 () Bool)

(assert (=> b!1526693 m!1409581))

(assert (=> b!1526693 m!1409581))

(declare-fun m!1409583 () Bool)

(assert (=> b!1526693 m!1409583))

(declare-fun m!1409585 () Bool)

(assert (=> start!130124 m!1409585))

(declare-fun m!1409587 () Bool)

(assert (=> start!130124 m!1409587))

(declare-fun m!1409589 () Bool)

(assert (=> b!1526702 m!1409589))

(assert (=> b!1526703 m!1409581))

(assert (=> b!1526703 m!1409581))

(declare-fun m!1409591 () Bool)

(assert (=> b!1526703 m!1409591))

(declare-fun m!1409593 () Bool)

(assert (=> b!1526701 m!1409593))

(declare-fun m!1409595 () Bool)

(assert (=> b!1526701 m!1409595))

(assert (=> b!1526695 m!1409581))

(declare-fun m!1409597 () Bool)

(assert (=> b!1526695 m!1409597))

(declare-fun m!1409599 () Bool)

(assert (=> b!1526694 m!1409599))

(assert (=> b!1526694 m!1409599))

(declare-fun m!1409601 () Bool)

(assert (=> b!1526694 m!1409601))

(declare-fun m!1409603 () Bool)

(assert (=> b!1526694 m!1409603))

(declare-fun m!1409605 () Bool)

(assert (=> b!1526694 m!1409605))

(assert (=> b!1526697 m!1409581))

(assert (=> b!1526697 m!1409581))

(declare-fun m!1409607 () Bool)

(assert (=> b!1526697 m!1409607))

(assert (=> b!1526697 m!1409607))

(assert (=> b!1526697 m!1409581))

(declare-fun m!1409609 () Bool)

(assert (=> b!1526697 m!1409609))

(declare-fun m!1409611 () Bool)

(assert (=> b!1526704 m!1409611))

(declare-fun m!1409613 () Bool)

(assert (=> b!1526704 m!1409613))

(assert (=> b!1526698 m!1409581))

(assert (=> b!1526698 m!1409581))

(declare-fun m!1409615 () Bool)

(assert (=> b!1526698 m!1409615))

(assert (=> b!1526700 m!1409581))

(assert (=> b!1526700 m!1409581))

(declare-fun m!1409617 () Bool)

(assert (=> b!1526700 m!1409617))

(assert (=> b!1526700 m!1409581))

(declare-fun m!1409619 () Bool)

(assert (=> b!1526700 m!1409619))

(declare-fun m!1409621 () Bool)

(assert (=> b!1526691 m!1409621))

(assert (=> b!1526691 m!1409621))

(declare-fun m!1409623 () Bool)

(assert (=> b!1526691 m!1409623))

(push 1)

