; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129146 () Bool)

(assert start!129146)

(declare-fun b!1514718 () Bool)

(declare-fun res!1034701 () Bool)

(declare-fun e!845338 () Bool)

(assert (=> b!1514718 (=> (not res!1034701) (not e!845338))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100915 0))(
  ( (array!100916 (arr!48690 (Array (_ BitVec 32) (_ BitVec 64))) (size!49241 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100915)

(assert (=> b!1514718 (= res!1034701 (and (= (size!49241 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49241 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49241 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1514719 () Bool)

(declare-fun res!1034697 () Bool)

(declare-fun e!845337 () Bool)

(assert (=> b!1514719 (=> (not res!1034697) (not e!845337))))

(declare-datatypes ((SeekEntryResult!12882 0))(
  ( (MissingZero!12882 (index!53922 (_ BitVec 32))) (Found!12882 (index!53923 (_ BitVec 32))) (Intermediate!12882 (undefined!13694 Bool) (index!53924 (_ BitVec 32)) (x!135637 (_ BitVec 32))) (Undefined!12882) (MissingVacant!12882 (index!53925 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100915 (_ BitVec 32)) SeekEntryResult!12882)

(assert (=> b!1514719 (= res!1034697 (= (seekEntry!0 (select (arr!48690 a!2804) j!70) a!2804 mask!2512) (Found!12882 j!70)))))

(declare-fun b!1514720 () Bool)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun lt!656409 () array!100915)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!656410 () (_ BitVec 64))

(declare-fun e!845342 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100915 (_ BitVec 32)) SeekEntryResult!12882)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100915 (_ BitVec 32)) SeekEntryResult!12882)

(assert (=> b!1514720 (= e!845342 (= (seekEntryOrOpen!0 lt!656410 lt!656409 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656410 lt!656409 mask!2512)))))

(declare-fun b!1514721 () Bool)

(declare-fun e!845339 () Bool)

(assert (=> b!1514721 (= e!845337 e!845339)))

(declare-fun res!1034705 () Bool)

(assert (=> b!1514721 (=> res!1034705 e!845339)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1514721 (= res!1034705 (or (not (= (select (arr!48690 a!2804) j!70) lt!656410)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48690 a!2804) index!487) (select (arr!48690 a!2804) j!70)) (not (= (select (arr!48690 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1514722 () Bool)

(declare-fun res!1034704 () Bool)

(declare-fun e!845336 () Bool)

(assert (=> b!1514722 (=> (not res!1034704) (not e!845336))))

(declare-fun lt!656411 () SeekEntryResult!12882)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100915 (_ BitVec 32)) SeekEntryResult!12882)

(assert (=> b!1514722 (= res!1034704 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48690 a!2804) j!70) a!2804 mask!2512) lt!656411))))

(declare-fun b!1514724 () Bool)

(assert (=> b!1514724 (= e!845338 e!845336)))

(declare-fun res!1034694 () Bool)

(assert (=> b!1514724 (=> (not res!1034694) (not e!845336))))

(declare-fun lt!656413 () SeekEntryResult!12882)

(assert (=> b!1514724 (= res!1034694 (= lt!656413 lt!656411))))

(assert (=> b!1514724 (= lt!656411 (Intermediate!12882 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514724 (= lt!656413 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48690 a!2804) j!70) mask!2512) (select (arr!48690 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1514725 () Bool)

(declare-fun res!1034702 () Bool)

(assert (=> b!1514725 (=> (not res!1034702) (not e!845338))))

(declare-datatypes ((List!35353 0))(
  ( (Nil!35350) (Cons!35349 (h!36762 (_ BitVec 64)) (t!50054 List!35353)) )
))
(declare-fun arrayNoDuplicates!0 (array!100915 (_ BitVec 32) List!35353) Bool)

(assert (=> b!1514725 (= res!1034702 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35350))))

(declare-fun b!1514726 () Bool)

(declare-fun res!1034706 () Bool)

(assert (=> b!1514726 (=> (not res!1034706) (not e!845338))))

(assert (=> b!1514726 (= res!1034706 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49241 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49241 a!2804))))))

(declare-fun b!1514727 () Bool)

(declare-fun res!1034703 () Bool)

(assert (=> b!1514727 (=> (not res!1034703) (not e!845338))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514727 (= res!1034703 (validKeyInArray!0 (select (arr!48690 a!2804) j!70)))))

(declare-fun b!1514728 () Bool)

(declare-fun e!845340 () Bool)

(assert (=> b!1514728 (= e!845336 e!845340)))

(declare-fun res!1034698 () Bool)

(assert (=> b!1514728 (=> (not res!1034698) (not e!845340))))

(assert (=> b!1514728 (= res!1034698 (= lt!656413 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656410 mask!2512) lt!656410 lt!656409 mask!2512)))))

(assert (=> b!1514728 (= lt!656410 (select (store (arr!48690 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514728 (= lt!656409 (array!100916 (store (arr!48690 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49241 a!2804)))))

(declare-fun b!1514729 () Bool)

(declare-fun res!1034695 () Bool)

(assert (=> b!1514729 (=> (not res!1034695) (not e!845338))))

(assert (=> b!1514729 (= res!1034695 (validKeyInArray!0 (select (arr!48690 a!2804) i!961)))))

(declare-fun res!1034699 () Bool)

(assert (=> start!129146 (=> (not res!1034699) (not e!845338))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129146 (= res!1034699 (validMask!0 mask!2512))))

(assert (=> start!129146 e!845338))

(assert (=> start!129146 true))

(declare-fun array_inv!37635 (array!100915) Bool)

(assert (=> start!129146 (array_inv!37635 a!2804)))

(declare-fun b!1514723 () Bool)

(assert (=> b!1514723 (= e!845339 e!845342)))

(declare-fun res!1034700 () Bool)

(assert (=> b!1514723 (=> (not res!1034700) (not e!845342))))

(assert (=> b!1514723 (= res!1034700 (= (seekEntryOrOpen!0 (select (arr!48690 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48690 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1514730 () Bool)

(declare-fun res!1034693 () Bool)

(assert (=> b!1514730 (=> (not res!1034693) (not e!845338))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100915 (_ BitVec 32)) Bool)

(assert (=> b!1514730 (= res!1034693 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1514731 () Bool)

(assert (=> b!1514731 (= e!845340 (not true))))

(assert (=> b!1514731 e!845337))

(declare-fun res!1034696 () Bool)

(assert (=> b!1514731 (=> (not res!1034696) (not e!845337))))

(assert (=> b!1514731 (= res!1034696 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50588 0))(
  ( (Unit!50589) )
))
(declare-fun lt!656412 () Unit!50588)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100915 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50588)

(assert (=> b!1514731 (= lt!656412 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129146 res!1034699) b!1514718))

(assert (= (and b!1514718 res!1034701) b!1514729))

(assert (= (and b!1514729 res!1034695) b!1514727))

(assert (= (and b!1514727 res!1034703) b!1514730))

(assert (= (and b!1514730 res!1034693) b!1514725))

(assert (= (and b!1514725 res!1034702) b!1514726))

(assert (= (and b!1514726 res!1034706) b!1514724))

(assert (= (and b!1514724 res!1034694) b!1514722))

(assert (= (and b!1514722 res!1034704) b!1514728))

(assert (= (and b!1514728 res!1034698) b!1514731))

(assert (= (and b!1514731 res!1034696) b!1514719))

(assert (= (and b!1514719 res!1034697) b!1514721))

(assert (= (and b!1514721 (not res!1034705)) b!1514723))

(assert (= (and b!1514723 res!1034700) b!1514720))

(declare-fun m!1397759 () Bool)

(assert (=> b!1514720 m!1397759))

(declare-fun m!1397761 () Bool)

(assert (=> b!1514720 m!1397761))

(declare-fun m!1397763 () Bool)

(assert (=> b!1514727 m!1397763))

(assert (=> b!1514727 m!1397763))

(declare-fun m!1397765 () Bool)

(assert (=> b!1514727 m!1397765))

(declare-fun m!1397767 () Bool)

(assert (=> b!1514731 m!1397767))

(declare-fun m!1397769 () Bool)

(assert (=> b!1514731 m!1397769))

(assert (=> b!1514722 m!1397763))

(assert (=> b!1514722 m!1397763))

(declare-fun m!1397771 () Bool)

(assert (=> b!1514722 m!1397771))

(declare-fun m!1397773 () Bool)

(assert (=> b!1514729 m!1397773))

(assert (=> b!1514729 m!1397773))

(declare-fun m!1397775 () Bool)

(assert (=> b!1514729 m!1397775))

(declare-fun m!1397777 () Bool)

(assert (=> b!1514725 m!1397777))

(declare-fun m!1397779 () Bool)

(assert (=> start!129146 m!1397779))

(declare-fun m!1397781 () Bool)

(assert (=> start!129146 m!1397781))

(assert (=> b!1514721 m!1397763))

(declare-fun m!1397783 () Bool)

(assert (=> b!1514721 m!1397783))

(declare-fun m!1397785 () Bool)

(assert (=> b!1514730 m!1397785))

(assert (=> b!1514719 m!1397763))

(assert (=> b!1514719 m!1397763))

(declare-fun m!1397787 () Bool)

(assert (=> b!1514719 m!1397787))

(assert (=> b!1514724 m!1397763))

(assert (=> b!1514724 m!1397763))

(declare-fun m!1397789 () Bool)

(assert (=> b!1514724 m!1397789))

(assert (=> b!1514724 m!1397789))

(assert (=> b!1514724 m!1397763))

(declare-fun m!1397791 () Bool)

(assert (=> b!1514724 m!1397791))

(declare-fun m!1397793 () Bool)

(assert (=> b!1514728 m!1397793))

(assert (=> b!1514728 m!1397793))

(declare-fun m!1397795 () Bool)

(assert (=> b!1514728 m!1397795))

(declare-fun m!1397797 () Bool)

(assert (=> b!1514728 m!1397797))

(declare-fun m!1397799 () Bool)

(assert (=> b!1514728 m!1397799))

(assert (=> b!1514723 m!1397763))

(assert (=> b!1514723 m!1397763))

(declare-fun m!1397801 () Bool)

(assert (=> b!1514723 m!1397801))

(assert (=> b!1514723 m!1397763))

(declare-fun m!1397803 () Bool)

(assert (=> b!1514723 m!1397803))

(push 1)

