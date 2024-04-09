; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128950 () Bool)

(assert start!128950)

(declare-fun b!1510875 () Bool)

(declare-fun res!1030853 () Bool)

(declare-fun e!843642 () Bool)

(assert (=> b!1510875 (=> (not res!1030853) (not e!843642))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12784 0))(
  ( (MissingZero!12784 (index!53530 (_ BitVec 32))) (Found!12784 (index!53531 (_ BitVec 32))) (Intermediate!12784 (undefined!13596 Bool) (index!53532 (_ BitVec 32)) (x!135283 (_ BitVec 32))) (Undefined!12784) (MissingVacant!12784 (index!53533 (_ BitVec 32))) )
))
(declare-fun lt!655260 () SeekEntryResult!12784)

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!100719 0))(
  ( (array!100720 (arr!48592 (Array (_ BitVec 32) (_ BitVec 64))) (size!49143 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100719)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100719 (_ BitVec 32)) SeekEntryResult!12784)

(assert (=> b!1510875 (= res!1030853 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48592 a!2804) j!70) a!2804 mask!2512) lt!655260))))

(declare-fun res!1030860 () Bool)

(declare-fun e!843641 () Bool)

(assert (=> start!128950 (=> (not res!1030860) (not e!843641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128950 (= res!1030860 (validMask!0 mask!2512))))

(assert (=> start!128950 e!843641))

(assert (=> start!128950 true))

(declare-fun array_inv!37537 (array!100719) Bool)

(assert (=> start!128950 (array_inv!37537 a!2804)))

(declare-fun b!1510876 () Bool)

(declare-fun res!1030858 () Bool)

(assert (=> b!1510876 (=> (not res!1030858) (not e!843642))))

(declare-fun lt!655261 () SeekEntryResult!12784)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510876 (= res!1030858 (= lt!655261 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48592 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48592 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100720 (store (arr!48592 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49143 a!2804)) mask!2512)))))

(declare-fun e!843644 () Bool)

(declare-fun b!1510877 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100719 (_ BitVec 32)) SeekEntryResult!12784)

(assert (=> b!1510877 (= e!843644 (= (seekEntry!0 (select (arr!48592 a!2804) j!70) a!2804 mask!2512) (Found!12784 j!70)))))

(declare-fun b!1510878 () Bool)

(declare-fun res!1030855 () Bool)

(assert (=> b!1510878 (=> (not res!1030855) (not e!843641))))

(assert (=> b!1510878 (= res!1030855 (and (= (size!49143 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49143 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49143 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510879 () Bool)

(declare-fun res!1030852 () Bool)

(assert (=> b!1510879 (=> (not res!1030852) (not e!843641))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510879 (= res!1030852 (validKeyInArray!0 (select (arr!48592 a!2804) j!70)))))

(declare-fun b!1510880 () Bool)

(assert (=> b!1510880 (= e!843641 e!843642)))

(declare-fun res!1030856 () Bool)

(assert (=> b!1510880 (=> (not res!1030856) (not e!843642))))

(assert (=> b!1510880 (= res!1030856 (= lt!655261 lt!655260))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1510880 (= lt!655260 (Intermediate!12784 false resIndex!21 resX!21))))

(assert (=> b!1510880 (= lt!655261 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48592 a!2804) j!70) mask!2512) (select (arr!48592 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510881 () Bool)

(declare-fun res!1030851 () Bool)

(assert (=> b!1510881 (=> (not res!1030851) (not e!843641))))

(assert (=> b!1510881 (= res!1030851 (validKeyInArray!0 (select (arr!48592 a!2804) i!961)))))

(declare-fun b!1510882 () Bool)

(declare-fun res!1030854 () Bool)

(assert (=> b!1510882 (=> (not res!1030854) (not e!843641))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100719 (_ BitVec 32)) Bool)

(assert (=> b!1510882 (= res!1030854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510883 () Bool)

(assert (=> b!1510883 (= e!843642 (not (or (not (= (select (arr!48592 a!2804) j!70) (select (store (arr!48592 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48592 a!2804) index!487) (select (arr!48592 a!2804) j!70)) (not (= (select (arr!48592 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!2512 #b00000000000000000000000000000000))))))

(assert (=> b!1510883 e!843644))

(declare-fun res!1030859 () Bool)

(assert (=> b!1510883 (=> (not res!1030859) (not e!843644))))

(assert (=> b!1510883 (= res!1030859 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50392 0))(
  ( (Unit!50393) )
))
(declare-fun lt!655259 () Unit!50392)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100719 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50392)

(assert (=> b!1510883 (= lt!655259 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510884 () Bool)

(declare-fun res!1030857 () Bool)

(assert (=> b!1510884 (=> (not res!1030857) (not e!843641))))

(declare-datatypes ((List!35255 0))(
  ( (Nil!35252) (Cons!35251 (h!36664 (_ BitVec 64)) (t!49956 List!35255)) )
))
(declare-fun arrayNoDuplicates!0 (array!100719 (_ BitVec 32) List!35255) Bool)

(assert (=> b!1510884 (= res!1030857 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35252))))

(declare-fun b!1510885 () Bool)

(declare-fun res!1030850 () Bool)

(assert (=> b!1510885 (=> (not res!1030850) (not e!843641))))

(assert (=> b!1510885 (= res!1030850 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49143 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49143 a!2804))))))

(assert (= (and start!128950 res!1030860) b!1510878))

(assert (= (and b!1510878 res!1030855) b!1510881))

(assert (= (and b!1510881 res!1030851) b!1510879))

(assert (= (and b!1510879 res!1030852) b!1510882))

(assert (= (and b!1510882 res!1030854) b!1510884))

(assert (= (and b!1510884 res!1030857) b!1510885))

(assert (= (and b!1510885 res!1030850) b!1510880))

(assert (= (and b!1510880 res!1030856) b!1510875))

(assert (= (and b!1510875 res!1030853) b!1510876))

(assert (= (and b!1510876 res!1030858) b!1510883))

(assert (= (and b!1510883 res!1030859) b!1510877))

(declare-fun m!1393569 () Bool)

(assert (=> b!1510880 m!1393569))

(assert (=> b!1510880 m!1393569))

(declare-fun m!1393571 () Bool)

(assert (=> b!1510880 m!1393571))

(assert (=> b!1510880 m!1393571))

(assert (=> b!1510880 m!1393569))

(declare-fun m!1393573 () Bool)

(assert (=> b!1510880 m!1393573))

(assert (=> b!1510883 m!1393569))

(declare-fun m!1393575 () Bool)

(assert (=> b!1510883 m!1393575))

(declare-fun m!1393577 () Bool)

(assert (=> b!1510883 m!1393577))

(declare-fun m!1393579 () Bool)

(assert (=> b!1510883 m!1393579))

(declare-fun m!1393581 () Bool)

(assert (=> b!1510883 m!1393581))

(declare-fun m!1393583 () Bool)

(assert (=> b!1510883 m!1393583))

(assert (=> b!1510875 m!1393569))

(assert (=> b!1510875 m!1393569))

(declare-fun m!1393585 () Bool)

(assert (=> b!1510875 m!1393585))

(declare-fun m!1393587 () Bool)

(assert (=> b!1510882 m!1393587))

(declare-fun m!1393589 () Bool)

(assert (=> b!1510881 m!1393589))

(assert (=> b!1510881 m!1393589))

(declare-fun m!1393591 () Bool)

(assert (=> b!1510881 m!1393591))

(assert (=> b!1510876 m!1393577))

(assert (=> b!1510876 m!1393581))

(assert (=> b!1510876 m!1393581))

(declare-fun m!1393593 () Bool)

(assert (=> b!1510876 m!1393593))

(assert (=> b!1510876 m!1393593))

(assert (=> b!1510876 m!1393581))

(declare-fun m!1393595 () Bool)

(assert (=> b!1510876 m!1393595))

(assert (=> b!1510877 m!1393569))

(assert (=> b!1510877 m!1393569))

(declare-fun m!1393597 () Bool)

(assert (=> b!1510877 m!1393597))

(declare-fun m!1393599 () Bool)

(assert (=> start!128950 m!1393599))

(declare-fun m!1393601 () Bool)

(assert (=> start!128950 m!1393601))

(declare-fun m!1393603 () Bool)

(assert (=> b!1510884 m!1393603))

(assert (=> b!1510879 m!1393569))

(assert (=> b!1510879 m!1393569))

(declare-fun m!1393605 () Bool)

(assert (=> b!1510879 m!1393605))

(push 1)

