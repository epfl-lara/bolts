; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130082 () Bool)

(assert start!130082)

(declare-fun b!1525809 () Bool)

(declare-fun res!1043988 () Bool)

(declare-fun e!850538 () Bool)

(assert (=> b!1525809 (=> (not res!1043988) (not e!850538))))

(declare-datatypes ((array!101422 0))(
  ( (array!101423 (arr!48933 (Array (_ BitVec 32) (_ BitVec 64))) (size!49484 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101422)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1525809 (= res!1043988 (validKeyInArray!0 (select (arr!48933 a!2804) i!961)))))

(declare-fun b!1525810 () Bool)

(declare-fun res!1043989 () Bool)

(assert (=> b!1525810 (=> (not res!1043989) (not e!850538))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1525810 (= res!1043989 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49484 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49484 a!2804))))))

(declare-fun b!1525811 () Bool)

(declare-fun res!1043994 () Bool)

(assert (=> b!1525811 (=> (not res!1043994) (not e!850538))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101422 (_ BitVec 32)) Bool)

(assert (=> b!1525811 (= res!1043994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1525812 () Bool)

(declare-fun res!1043986 () Bool)

(declare-fun e!850534 () Bool)

(assert (=> b!1525812 (=> (not res!1043986) (not e!850534))))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13119 0))(
  ( (MissingZero!13119 (index!54870 (_ BitVec 32))) (Found!13119 (index!54871 (_ BitVec 32))) (Intermediate!13119 (undefined!13931 Bool) (index!54872 (_ BitVec 32)) (x!136576 (_ BitVec 32))) (Undefined!13119) (MissingVacant!13119 (index!54873 (_ BitVec 32))) )
))
(declare-fun lt!660818 () SeekEntryResult!13119)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101422 (_ BitVec 32)) SeekEntryResult!13119)

(assert (=> b!1525812 (= res!1043986 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48933 a!2804) j!70) a!2804 mask!2512) lt!660818))))

(declare-fun b!1525813 () Bool)

(declare-fun res!1043984 () Bool)

(assert (=> b!1525813 (=> (not res!1043984) (not e!850538))))

(declare-datatypes ((List!35596 0))(
  ( (Nil!35593) (Cons!35592 (h!37026 (_ BitVec 64)) (t!50297 List!35596)) )
))
(declare-fun arrayNoDuplicates!0 (array!101422 (_ BitVec 32) List!35596) Bool)

(assert (=> b!1525813 (= res!1043984 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35593))))

(declare-fun res!1043985 () Bool)

(assert (=> start!130082 (=> (not res!1043985) (not e!850538))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130082 (= res!1043985 (validMask!0 mask!2512))))

(assert (=> start!130082 e!850538))

(assert (=> start!130082 true))

(declare-fun array_inv!37878 (array!101422) Bool)

(assert (=> start!130082 (array_inv!37878 a!2804)))

(declare-fun b!1525814 () Bool)

(declare-fun e!850533 () Bool)

(assert (=> b!1525814 (= e!850533 (not true))))

(declare-fun e!850535 () Bool)

(assert (=> b!1525814 e!850535))

(declare-fun res!1043990 () Bool)

(assert (=> b!1525814 (=> (not res!1043990) (not e!850535))))

(assert (=> b!1525814 (= res!1043990 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50978 0))(
  ( (Unit!50979) )
))
(declare-fun lt!660817 () Unit!50978)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101422 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50978)

(assert (=> b!1525814 (= lt!660817 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1525815 () Bool)

(declare-fun e!850537 () Bool)

(assert (=> b!1525815 (= e!850535 e!850537)))

(declare-fun res!1043982 () Bool)

(assert (=> b!1525815 (=> res!1043982 e!850537)))

(declare-fun lt!660816 () (_ BitVec 64))

(assert (=> b!1525815 (= res!1043982 (or (not (= (select (arr!48933 a!2804) j!70) lt!660816)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48933 a!2804) index!487) (select (arr!48933 a!2804) j!70)) (not (= (select (arr!48933 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1525816 () Bool)

(declare-fun res!1043983 () Bool)

(assert (=> b!1525816 (=> (not res!1043983) (not e!850538))))

(assert (=> b!1525816 (= res!1043983 (and (= (size!49484 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49484 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49484 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1525817 () Bool)

(declare-fun res!1043987 () Bool)

(assert (=> b!1525817 (=> (not res!1043987) (not e!850538))))

(assert (=> b!1525817 (= res!1043987 (validKeyInArray!0 (select (arr!48933 a!2804) j!70)))))

(declare-fun b!1525818 () Bool)

(assert (=> b!1525818 (= e!850538 e!850534)))

(declare-fun res!1043981 () Bool)

(assert (=> b!1525818 (=> (not res!1043981) (not e!850534))))

(declare-fun lt!660820 () SeekEntryResult!13119)

(assert (=> b!1525818 (= res!1043981 (= lt!660820 lt!660818))))

(assert (=> b!1525818 (= lt!660818 (Intermediate!13119 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1525818 (= lt!660820 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48933 a!2804) j!70) mask!2512) (select (arr!48933 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1525819 () Bool)

(declare-fun e!850536 () Bool)

(assert (=> b!1525819 (= e!850537 e!850536)))

(declare-fun res!1043991 () Bool)

(assert (=> b!1525819 (=> (not res!1043991) (not e!850536))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101422 (_ BitVec 32)) SeekEntryResult!13119)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101422 (_ BitVec 32)) SeekEntryResult!13119)

(assert (=> b!1525819 (= res!1043991 (= (seekEntryOrOpen!0 (select (arr!48933 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48933 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1525820 () Bool)

(assert (=> b!1525820 (= e!850534 e!850533)))

(declare-fun res!1043992 () Bool)

(assert (=> b!1525820 (=> (not res!1043992) (not e!850533))))

(declare-fun lt!660819 () array!101422)

(assert (=> b!1525820 (= res!1043992 (= lt!660820 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660816 mask!2512) lt!660816 lt!660819 mask!2512)))))

(assert (=> b!1525820 (= lt!660816 (select (store (arr!48933 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1525820 (= lt!660819 (array!101423 (store (arr!48933 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49484 a!2804)))))

(declare-fun b!1525821 () Bool)

(assert (=> b!1525821 (= e!850536 (= (seekEntryOrOpen!0 lt!660816 lt!660819 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660816 lt!660819 mask!2512)))))

(declare-fun b!1525822 () Bool)

(declare-fun res!1043993 () Bool)

(assert (=> b!1525822 (=> (not res!1043993) (not e!850535))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101422 (_ BitVec 32)) SeekEntryResult!13119)

(assert (=> b!1525822 (= res!1043993 (= (seekEntry!0 (select (arr!48933 a!2804) j!70) a!2804 mask!2512) (Found!13119 j!70)))))

(assert (= (and start!130082 res!1043985) b!1525816))

(assert (= (and b!1525816 res!1043983) b!1525809))

(assert (= (and b!1525809 res!1043988) b!1525817))

(assert (= (and b!1525817 res!1043987) b!1525811))

(assert (= (and b!1525811 res!1043994) b!1525813))

(assert (= (and b!1525813 res!1043984) b!1525810))

(assert (= (and b!1525810 res!1043989) b!1525818))

(assert (= (and b!1525818 res!1043981) b!1525812))

(assert (= (and b!1525812 res!1043986) b!1525820))

(assert (= (and b!1525820 res!1043992) b!1525814))

(assert (= (and b!1525814 res!1043990) b!1525822))

(assert (= (and b!1525822 res!1043993) b!1525815))

(assert (= (and b!1525815 (not res!1043982)) b!1525819))

(assert (= (and b!1525819 res!1043991) b!1525821))

(declare-fun m!1408613 () Bool)

(assert (=> b!1525820 m!1408613))

(assert (=> b!1525820 m!1408613))

(declare-fun m!1408615 () Bool)

(assert (=> b!1525820 m!1408615))

(declare-fun m!1408617 () Bool)

(assert (=> b!1525820 m!1408617))

(declare-fun m!1408619 () Bool)

(assert (=> b!1525820 m!1408619))

(declare-fun m!1408621 () Bool)

(assert (=> b!1525811 m!1408621))

(declare-fun m!1408623 () Bool)

(assert (=> b!1525818 m!1408623))

(assert (=> b!1525818 m!1408623))

(declare-fun m!1408625 () Bool)

(assert (=> b!1525818 m!1408625))

(assert (=> b!1525818 m!1408625))

(assert (=> b!1525818 m!1408623))

(declare-fun m!1408627 () Bool)

(assert (=> b!1525818 m!1408627))

(assert (=> b!1525822 m!1408623))

(assert (=> b!1525822 m!1408623))

(declare-fun m!1408629 () Bool)

(assert (=> b!1525822 m!1408629))

(assert (=> b!1525817 m!1408623))

(assert (=> b!1525817 m!1408623))

(declare-fun m!1408631 () Bool)

(assert (=> b!1525817 m!1408631))

(assert (=> b!1525812 m!1408623))

(assert (=> b!1525812 m!1408623))

(declare-fun m!1408633 () Bool)

(assert (=> b!1525812 m!1408633))

(assert (=> b!1525819 m!1408623))

(assert (=> b!1525819 m!1408623))

(declare-fun m!1408635 () Bool)

(assert (=> b!1525819 m!1408635))

(assert (=> b!1525819 m!1408623))

(declare-fun m!1408637 () Bool)

(assert (=> b!1525819 m!1408637))

(declare-fun m!1408639 () Bool)

(assert (=> b!1525821 m!1408639))

(declare-fun m!1408641 () Bool)

(assert (=> b!1525821 m!1408641))

(declare-fun m!1408643 () Bool)

(assert (=> b!1525813 m!1408643))

(assert (=> b!1525815 m!1408623))

(declare-fun m!1408645 () Bool)

(assert (=> b!1525815 m!1408645))

(declare-fun m!1408647 () Bool)

(assert (=> b!1525809 m!1408647))

(assert (=> b!1525809 m!1408647))

(declare-fun m!1408649 () Bool)

(assert (=> b!1525809 m!1408649))

(declare-fun m!1408651 () Bool)

(assert (=> start!130082 m!1408651))

(declare-fun m!1408653 () Bool)

(assert (=> start!130082 m!1408653))

(declare-fun m!1408655 () Bool)

(assert (=> b!1525814 m!1408655))

(declare-fun m!1408657 () Bool)

(assert (=> b!1525814 m!1408657))

(push 1)

