; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130122 () Bool)

(assert start!130122)

(declare-fun b!1526649 () Bool)

(declare-fun res!1044830 () Bool)

(declare-fun e!850956 () Bool)

(assert (=> b!1526649 (=> (not res!1044830) (not e!850956))))

(declare-datatypes ((array!101462 0))(
  ( (array!101463 (arr!48953 (Array (_ BitVec 32) (_ BitVec 64))) (size!49504 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101462)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526649 (= res!1044830 (validKeyInArray!0 (select (arr!48953 a!2804) i!961)))))

(declare-fun b!1526650 () Bool)

(declare-fun e!850955 () Bool)

(declare-fun e!850958 () Bool)

(assert (=> b!1526650 (= e!850955 e!850958)))

(declare-fun res!1044831 () Bool)

(assert (=> b!1526650 (=> res!1044831 e!850958)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun lt!661116 () (_ BitVec 64))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1526650 (= res!1044831 (or (not (= (select (arr!48953 a!2804) j!70) lt!661116)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48953 a!2804) index!487) (select (arr!48953 a!2804) j!70)) (not (= (select (arr!48953 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1044826 () Bool)

(assert (=> start!130122 (=> (not res!1044826) (not e!850956))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130122 (= res!1044826 (validMask!0 mask!2512))))

(assert (=> start!130122 e!850956))

(assert (=> start!130122 true))

(declare-fun array_inv!37898 (array!101462) Bool)

(assert (=> start!130122 (array_inv!37898 a!2804)))

(declare-fun b!1526651 () Bool)

(declare-fun res!1044828 () Bool)

(assert (=> b!1526651 (=> (not res!1044828) (not e!850955))))

(declare-datatypes ((SeekEntryResult!13139 0))(
  ( (MissingZero!13139 (index!54950 (_ BitVec 32))) (Found!13139 (index!54951 (_ BitVec 32))) (Intermediate!13139 (undefined!13951 Bool) (index!54952 (_ BitVec 32)) (x!136652 (_ BitVec 32))) (Undefined!13139) (MissingVacant!13139 (index!54953 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101462 (_ BitVec 32)) SeekEntryResult!13139)

(assert (=> b!1526651 (= res!1044828 (= (seekEntry!0 (select (arr!48953 a!2804) j!70) a!2804 mask!2512) (Found!13139 j!70)))))

(declare-fun b!1526652 () Bool)

(declare-fun e!850953 () Bool)

(assert (=> b!1526652 (= e!850958 e!850953)))

(declare-fun res!1044829 () Bool)

(assert (=> b!1526652 (=> (not res!1044829) (not e!850953))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101462 (_ BitVec 32)) SeekEntryResult!13139)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101462 (_ BitVec 32)) SeekEntryResult!13139)

(assert (=> b!1526652 (= res!1044829 (= (seekEntryOrOpen!0 (select (arr!48953 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48953 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1526653 () Bool)

(declare-fun res!1044823 () Bool)

(assert (=> b!1526653 (=> (not res!1044823) (not e!850956))))

(assert (=> b!1526653 (= res!1044823 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49504 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49504 a!2804))))))

(declare-fun b!1526654 () Bool)

(declare-fun e!850957 () Bool)

(declare-fun e!850952 () Bool)

(assert (=> b!1526654 (= e!850957 e!850952)))

(declare-fun res!1044821 () Bool)

(assert (=> b!1526654 (=> (not res!1044821) (not e!850952))))

(declare-fun lt!661117 () array!101462)

(declare-fun lt!661119 () SeekEntryResult!13139)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101462 (_ BitVec 32)) SeekEntryResult!13139)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526654 (= res!1044821 (= lt!661119 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661116 mask!2512) lt!661116 lt!661117 mask!2512)))))

(assert (=> b!1526654 (= lt!661116 (select (store (arr!48953 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526654 (= lt!661117 (array!101463 (store (arr!48953 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49504 a!2804)))))

(declare-fun b!1526655 () Bool)

(assert (=> b!1526655 (= e!850956 e!850957)))

(declare-fun res!1044833 () Bool)

(assert (=> b!1526655 (=> (not res!1044833) (not e!850957))))

(declare-fun lt!661120 () SeekEntryResult!13139)

(assert (=> b!1526655 (= res!1044833 (= lt!661119 lt!661120))))

(assert (=> b!1526655 (= lt!661120 (Intermediate!13139 false resIndex!21 resX!21))))

(assert (=> b!1526655 (= lt!661119 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48953 a!2804) j!70) mask!2512) (select (arr!48953 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1526656 () Bool)

(declare-fun res!1044832 () Bool)

(assert (=> b!1526656 (=> (not res!1044832) (not e!850956))))

(declare-datatypes ((List!35616 0))(
  ( (Nil!35613) (Cons!35612 (h!37046 (_ BitVec 64)) (t!50317 List!35616)) )
))
(declare-fun arrayNoDuplicates!0 (array!101462 (_ BitVec 32) List!35616) Bool)

(assert (=> b!1526656 (= res!1044832 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35613))))

(declare-fun b!1526657 () Bool)

(declare-fun res!1044827 () Bool)

(assert (=> b!1526657 (=> (not res!1044827) (not e!850956))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101462 (_ BitVec 32)) Bool)

(assert (=> b!1526657 (= res!1044827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526658 () Bool)

(declare-fun res!1044825 () Bool)

(assert (=> b!1526658 (=> (not res!1044825) (not e!850957))))

(assert (=> b!1526658 (= res!1044825 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48953 a!2804) j!70) a!2804 mask!2512) lt!661120))))

(declare-fun b!1526659 () Bool)

(assert (=> b!1526659 (= e!850952 (not true))))

(assert (=> b!1526659 e!850955))

(declare-fun res!1044824 () Bool)

(assert (=> b!1526659 (=> (not res!1044824) (not e!850955))))

(assert (=> b!1526659 (= res!1044824 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51018 0))(
  ( (Unit!51019) )
))
(declare-fun lt!661118 () Unit!51018)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101462 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51018)

(assert (=> b!1526659 (= lt!661118 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1526660 () Bool)

(assert (=> b!1526660 (= e!850953 (= (seekEntryOrOpen!0 lt!661116 lt!661117 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661116 lt!661117 mask!2512)))))

(declare-fun b!1526661 () Bool)

(declare-fun res!1044834 () Bool)

(assert (=> b!1526661 (=> (not res!1044834) (not e!850956))))

(assert (=> b!1526661 (= res!1044834 (validKeyInArray!0 (select (arr!48953 a!2804) j!70)))))

(declare-fun b!1526662 () Bool)

(declare-fun res!1044822 () Bool)

(assert (=> b!1526662 (=> (not res!1044822) (not e!850956))))

(assert (=> b!1526662 (= res!1044822 (and (= (size!49504 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49504 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49504 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!130122 res!1044826) b!1526662))

(assert (= (and b!1526662 res!1044822) b!1526649))

(assert (= (and b!1526649 res!1044830) b!1526661))

(assert (= (and b!1526661 res!1044834) b!1526657))

(assert (= (and b!1526657 res!1044827) b!1526656))

(assert (= (and b!1526656 res!1044832) b!1526653))

(assert (= (and b!1526653 res!1044823) b!1526655))

(assert (= (and b!1526655 res!1044833) b!1526658))

(assert (= (and b!1526658 res!1044825) b!1526654))

(assert (= (and b!1526654 res!1044821) b!1526659))

(assert (= (and b!1526659 res!1044824) b!1526651))

(assert (= (and b!1526651 res!1044828) b!1526650))

(assert (= (and b!1526650 (not res!1044831)) b!1526652))

(assert (= (and b!1526652 res!1044829) b!1526660))

(declare-fun m!1409533 () Bool)

(assert (=> start!130122 m!1409533))

(declare-fun m!1409535 () Bool)

(assert (=> start!130122 m!1409535))

(declare-fun m!1409537 () Bool)

(assert (=> b!1526655 m!1409537))

(assert (=> b!1526655 m!1409537))

(declare-fun m!1409539 () Bool)

(assert (=> b!1526655 m!1409539))

(assert (=> b!1526655 m!1409539))

(assert (=> b!1526655 m!1409537))

(declare-fun m!1409541 () Bool)

(assert (=> b!1526655 m!1409541))

(declare-fun m!1409543 () Bool)

(assert (=> b!1526657 m!1409543))

(assert (=> b!1526658 m!1409537))

(assert (=> b!1526658 m!1409537))

(declare-fun m!1409545 () Bool)

(assert (=> b!1526658 m!1409545))

(assert (=> b!1526651 m!1409537))

(assert (=> b!1526651 m!1409537))

(declare-fun m!1409547 () Bool)

(assert (=> b!1526651 m!1409547))

(assert (=> b!1526661 m!1409537))

(assert (=> b!1526661 m!1409537))

(declare-fun m!1409549 () Bool)

(assert (=> b!1526661 m!1409549))

(declare-fun m!1409551 () Bool)

(assert (=> b!1526659 m!1409551))

(declare-fun m!1409553 () Bool)

(assert (=> b!1526659 m!1409553))

(assert (=> b!1526652 m!1409537))

(assert (=> b!1526652 m!1409537))

(declare-fun m!1409555 () Bool)

(assert (=> b!1526652 m!1409555))

(assert (=> b!1526652 m!1409537))

(declare-fun m!1409557 () Bool)

(assert (=> b!1526652 m!1409557))

(declare-fun m!1409559 () Bool)

(assert (=> b!1526649 m!1409559))

(assert (=> b!1526649 m!1409559))

(declare-fun m!1409561 () Bool)

(assert (=> b!1526649 m!1409561))

(assert (=> b!1526650 m!1409537))

(declare-fun m!1409563 () Bool)

(assert (=> b!1526650 m!1409563))

(declare-fun m!1409565 () Bool)

(assert (=> b!1526656 m!1409565))

(declare-fun m!1409567 () Bool)

(assert (=> b!1526660 m!1409567))

(declare-fun m!1409569 () Bool)

(assert (=> b!1526660 m!1409569))

(declare-fun m!1409571 () Bool)

(assert (=> b!1526654 m!1409571))

(assert (=> b!1526654 m!1409571))

(declare-fun m!1409573 () Bool)

(assert (=> b!1526654 m!1409573))

(declare-fun m!1409575 () Bool)

(assert (=> b!1526654 m!1409575))

(declare-fun m!1409577 () Bool)

(assert (=> b!1526654 m!1409577))

(check-sat (not b!1526657) (not b!1526660) (not start!130122) (not b!1526654) (not b!1526658) (not b!1526652) (not b!1526655) (not b!1526649) (not b!1526651) (not b!1526656) (not b!1526659) (not b!1526661))
(check-sat)
