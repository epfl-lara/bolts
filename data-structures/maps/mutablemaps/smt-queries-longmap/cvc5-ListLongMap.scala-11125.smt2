; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130078 () Bool)

(assert start!130078)

(declare-fun b!1525725 () Bool)

(declare-fun res!1043902 () Bool)

(declare-fun e!850496 () Bool)

(assert (=> b!1525725 (=> (not res!1043902) (not e!850496))))

(declare-datatypes ((array!101418 0))(
  ( (array!101419 (arr!48931 (Array (_ BitVec 32) (_ BitVec 64))) (size!49482 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101418)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101418 (_ BitVec 32)) Bool)

(assert (=> b!1525725 (= res!1043902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1525726 () Bool)

(declare-fun res!1043904 () Bool)

(declare-fun e!850491 () Bool)

(assert (=> b!1525726 (=> (not res!1043904) (not e!850491))))

(declare-datatypes ((SeekEntryResult!13117 0))(
  ( (MissingZero!13117 (index!54862 (_ BitVec 32))) (Found!13117 (index!54863 (_ BitVec 32))) (Intermediate!13117 (undefined!13929 Bool) (index!54864 (_ BitVec 32)) (x!136574 (_ BitVec 32))) (Undefined!13117) (MissingVacant!13117 (index!54865 (_ BitVec 32))) )
))
(declare-fun lt!660788 () SeekEntryResult!13117)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101418 (_ BitVec 32)) SeekEntryResult!13117)

(assert (=> b!1525726 (= res!1043904 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48931 a!2804) j!70) a!2804 mask!2512) lt!660788))))

(declare-fun b!1525727 () Bool)

(declare-fun e!850493 () Bool)

(assert (=> b!1525727 (= e!850491 e!850493)))

(declare-fun res!1043899 () Bool)

(assert (=> b!1525727 (=> (not res!1043899) (not e!850493))))

(declare-fun lt!660786 () SeekEntryResult!13117)

(declare-fun lt!660790 () array!101418)

(declare-fun lt!660789 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1525727 (= res!1043899 (= lt!660786 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660789 mask!2512) lt!660789 lt!660790 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1525727 (= lt!660789 (select (store (arr!48931 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1525727 (= lt!660790 (array!101419 (store (arr!48931 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49482 a!2804)))))

(declare-fun res!1043898 () Bool)

(assert (=> start!130078 (=> (not res!1043898) (not e!850496))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130078 (= res!1043898 (validMask!0 mask!2512))))

(assert (=> start!130078 e!850496))

(assert (=> start!130078 true))

(declare-fun array_inv!37876 (array!101418) Bool)

(assert (=> start!130078 (array_inv!37876 a!2804)))

(declare-fun b!1525728 () Bool)

(assert (=> b!1525728 (= e!850496 e!850491)))

(declare-fun res!1043910 () Bool)

(assert (=> b!1525728 (=> (not res!1043910) (not e!850491))))

(assert (=> b!1525728 (= res!1043910 (= lt!660786 lt!660788))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1525728 (= lt!660788 (Intermediate!13117 false resIndex!21 resX!21))))

(assert (=> b!1525728 (= lt!660786 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48931 a!2804) j!70) mask!2512) (select (arr!48931 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1525729 () Bool)

(assert (=> b!1525729 (= e!850493 (not true))))

(declare-fun e!850494 () Bool)

(assert (=> b!1525729 e!850494))

(declare-fun res!1043901 () Bool)

(assert (=> b!1525729 (=> (not res!1043901) (not e!850494))))

(assert (=> b!1525729 (= res!1043901 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50974 0))(
  ( (Unit!50975) )
))
(declare-fun lt!660787 () Unit!50974)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101418 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50974)

(assert (=> b!1525729 (= lt!660787 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1525730 () Bool)

(declare-fun res!1043906 () Bool)

(assert (=> b!1525730 (=> (not res!1043906) (not e!850496))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1525730 (= res!1043906 (validKeyInArray!0 (select (arr!48931 a!2804) i!961)))))

(declare-fun e!850490 () Bool)

(declare-fun b!1525731 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101418 (_ BitVec 32)) SeekEntryResult!13117)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101418 (_ BitVec 32)) SeekEntryResult!13117)

(assert (=> b!1525731 (= e!850490 (= (seekEntryOrOpen!0 lt!660789 lt!660790 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660789 lt!660790 mask!2512)))))

(declare-fun b!1525732 () Bool)

(declare-fun res!1043900 () Bool)

(assert (=> b!1525732 (=> (not res!1043900) (not e!850496))))

(assert (=> b!1525732 (= res!1043900 (validKeyInArray!0 (select (arr!48931 a!2804) j!70)))))

(declare-fun b!1525733 () Bool)

(declare-fun res!1043907 () Bool)

(assert (=> b!1525733 (=> (not res!1043907) (not e!850496))))

(declare-datatypes ((List!35594 0))(
  ( (Nil!35591) (Cons!35590 (h!37024 (_ BitVec 64)) (t!50295 List!35594)) )
))
(declare-fun arrayNoDuplicates!0 (array!101418 (_ BitVec 32) List!35594) Bool)

(assert (=> b!1525733 (= res!1043907 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35591))))

(declare-fun b!1525734 () Bool)

(declare-fun res!1043908 () Bool)

(assert (=> b!1525734 (=> (not res!1043908) (not e!850496))))

(assert (=> b!1525734 (= res!1043908 (and (= (size!49482 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49482 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49482 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1525735 () Bool)

(declare-fun e!850492 () Bool)

(assert (=> b!1525735 (= e!850494 e!850492)))

(declare-fun res!1043909 () Bool)

(assert (=> b!1525735 (=> res!1043909 e!850492)))

(assert (=> b!1525735 (= res!1043909 (or (not (= (select (arr!48931 a!2804) j!70) lt!660789)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48931 a!2804) index!487) (select (arr!48931 a!2804) j!70)) (not (= (select (arr!48931 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1525736 () Bool)

(declare-fun res!1043897 () Bool)

(assert (=> b!1525736 (=> (not res!1043897) (not e!850496))))

(assert (=> b!1525736 (= res!1043897 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49482 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49482 a!2804))))))

(declare-fun b!1525737 () Bool)

(declare-fun res!1043905 () Bool)

(assert (=> b!1525737 (=> (not res!1043905) (not e!850494))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101418 (_ BitVec 32)) SeekEntryResult!13117)

(assert (=> b!1525737 (= res!1043905 (= (seekEntry!0 (select (arr!48931 a!2804) j!70) a!2804 mask!2512) (Found!13117 j!70)))))

(declare-fun b!1525738 () Bool)

(assert (=> b!1525738 (= e!850492 e!850490)))

(declare-fun res!1043903 () Bool)

(assert (=> b!1525738 (=> (not res!1043903) (not e!850490))))

(assert (=> b!1525738 (= res!1043903 (= (seekEntryOrOpen!0 (select (arr!48931 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48931 a!2804) j!70) a!2804 mask!2512)))))

(assert (= (and start!130078 res!1043898) b!1525734))

(assert (= (and b!1525734 res!1043908) b!1525730))

(assert (= (and b!1525730 res!1043906) b!1525732))

(assert (= (and b!1525732 res!1043900) b!1525725))

(assert (= (and b!1525725 res!1043902) b!1525733))

(assert (= (and b!1525733 res!1043907) b!1525736))

(assert (= (and b!1525736 res!1043897) b!1525728))

(assert (= (and b!1525728 res!1043910) b!1525726))

(assert (= (and b!1525726 res!1043904) b!1525727))

(assert (= (and b!1525727 res!1043899) b!1525729))

(assert (= (and b!1525729 res!1043901) b!1525737))

(assert (= (and b!1525737 res!1043905) b!1525735))

(assert (= (and b!1525735 (not res!1043909)) b!1525738))

(assert (= (and b!1525738 res!1043903) b!1525731))

(declare-fun m!1408521 () Bool)

(assert (=> b!1525731 m!1408521))

(declare-fun m!1408523 () Bool)

(assert (=> b!1525731 m!1408523))

(declare-fun m!1408525 () Bool)

(assert (=> b!1525727 m!1408525))

(assert (=> b!1525727 m!1408525))

(declare-fun m!1408527 () Bool)

(assert (=> b!1525727 m!1408527))

(declare-fun m!1408529 () Bool)

(assert (=> b!1525727 m!1408529))

(declare-fun m!1408531 () Bool)

(assert (=> b!1525727 m!1408531))

(declare-fun m!1408533 () Bool)

(assert (=> b!1525725 m!1408533))

(declare-fun m!1408535 () Bool)

(assert (=> b!1525738 m!1408535))

(assert (=> b!1525738 m!1408535))

(declare-fun m!1408537 () Bool)

(assert (=> b!1525738 m!1408537))

(assert (=> b!1525738 m!1408535))

(declare-fun m!1408539 () Bool)

(assert (=> b!1525738 m!1408539))

(assert (=> b!1525732 m!1408535))

(assert (=> b!1525732 m!1408535))

(declare-fun m!1408541 () Bool)

(assert (=> b!1525732 m!1408541))

(declare-fun m!1408543 () Bool)

(assert (=> b!1525730 m!1408543))

(assert (=> b!1525730 m!1408543))

(declare-fun m!1408545 () Bool)

(assert (=> b!1525730 m!1408545))

(assert (=> b!1525726 m!1408535))

(assert (=> b!1525726 m!1408535))

(declare-fun m!1408547 () Bool)

(assert (=> b!1525726 m!1408547))

(assert (=> b!1525737 m!1408535))

(assert (=> b!1525737 m!1408535))

(declare-fun m!1408549 () Bool)

(assert (=> b!1525737 m!1408549))

(assert (=> b!1525735 m!1408535))

(declare-fun m!1408551 () Bool)

(assert (=> b!1525735 m!1408551))

(assert (=> b!1525728 m!1408535))

(assert (=> b!1525728 m!1408535))

(declare-fun m!1408553 () Bool)

(assert (=> b!1525728 m!1408553))

(assert (=> b!1525728 m!1408553))

(assert (=> b!1525728 m!1408535))

(declare-fun m!1408555 () Bool)

(assert (=> b!1525728 m!1408555))

(declare-fun m!1408557 () Bool)

(assert (=> b!1525733 m!1408557))

(declare-fun m!1408559 () Bool)

(assert (=> start!130078 m!1408559))

(declare-fun m!1408561 () Bool)

(assert (=> start!130078 m!1408561))

(declare-fun m!1408563 () Bool)

(assert (=> b!1525729 m!1408563))

(declare-fun m!1408565 () Bool)

(assert (=> b!1525729 m!1408565))

(push 1)

