; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129144 () Bool)

(assert start!129144)

(declare-fun b!1514676 () Bool)

(declare-fun e!845316 () Bool)

(declare-fun e!845317 () Bool)

(assert (=> b!1514676 (= e!845316 e!845317)))

(declare-fun res!1034658 () Bool)

(assert (=> b!1514676 (=> res!1034658 e!845317)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun lt!656396 () (_ BitVec 64))

(declare-datatypes ((array!100913 0))(
  ( (array!100914 (arr!48689 (Array (_ BitVec 32) (_ BitVec 64))) (size!49240 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100913)

(assert (=> b!1514676 (= res!1034658 (or (not (= (select (arr!48689 a!2804) j!70) lt!656396)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48689 a!2804) index!487) (select (arr!48689 a!2804) j!70)) (not (= (select (arr!48689 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1514677 () Bool)

(declare-fun e!845320 () Bool)

(assert (=> b!1514677 (= e!845317 e!845320)))

(declare-fun res!1034660 () Bool)

(assert (=> b!1514677 (=> (not res!1034660) (not e!845320))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12881 0))(
  ( (MissingZero!12881 (index!53918 (_ BitVec 32))) (Found!12881 (index!53919 (_ BitVec 32))) (Intermediate!12881 (undefined!13693 Bool) (index!53920 (_ BitVec 32)) (x!135636 (_ BitVec 32))) (Undefined!12881) (MissingVacant!12881 (index!53921 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100913 (_ BitVec 32)) SeekEntryResult!12881)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100913 (_ BitVec 32)) SeekEntryResult!12881)

(assert (=> b!1514677 (= res!1034660 (= (seekEntryOrOpen!0 (select (arr!48689 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48689 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1514678 () Bool)

(declare-fun e!845318 () Bool)

(declare-fun e!845321 () Bool)

(assert (=> b!1514678 (= e!845318 e!845321)))

(declare-fun res!1034653 () Bool)

(assert (=> b!1514678 (=> (not res!1034653) (not e!845321))))

(declare-fun lt!656395 () SeekEntryResult!12881)

(declare-fun lt!656398 () array!100913)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100913 (_ BitVec 32)) SeekEntryResult!12881)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514678 (= res!1034653 (= lt!656395 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656396 mask!2512) lt!656396 lt!656398 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1514678 (= lt!656396 (select (store (arr!48689 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514678 (= lt!656398 (array!100914 (store (arr!48689 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49240 a!2804)))))

(declare-fun b!1514680 () Bool)

(assert (=> b!1514680 (= e!845321 (not true))))

(assert (=> b!1514680 e!845316))

(declare-fun res!1034655 () Bool)

(assert (=> b!1514680 (=> (not res!1034655) (not e!845316))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100913 (_ BitVec 32)) Bool)

(assert (=> b!1514680 (= res!1034655 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50586 0))(
  ( (Unit!50587) )
))
(declare-fun lt!656394 () Unit!50586)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100913 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50586)

(assert (=> b!1514680 (= lt!656394 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514681 () Bool)

(declare-fun res!1034651 () Bool)

(declare-fun e!845315 () Bool)

(assert (=> b!1514681 (=> (not res!1034651) (not e!845315))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514681 (= res!1034651 (validKeyInArray!0 (select (arr!48689 a!2804) j!70)))))

(declare-fun b!1514682 () Bool)

(declare-fun res!1034662 () Bool)

(assert (=> b!1514682 (=> (not res!1034662) (not e!845315))))

(declare-datatypes ((List!35352 0))(
  ( (Nil!35349) (Cons!35348 (h!36761 (_ BitVec 64)) (t!50053 List!35352)) )
))
(declare-fun arrayNoDuplicates!0 (array!100913 (_ BitVec 32) List!35352) Bool)

(assert (=> b!1514682 (= res!1034662 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35349))))

(declare-fun b!1514683 () Bool)

(assert (=> b!1514683 (= e!845320 (= (seekEntryOrOpen!0 lt!656396 lt!656398 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656396 lt!656398 mask!2512)))))

(declare-fun b!1514684 () Bool)

(assert (=> b!1514684 (= e!845315 e!845318)))

(declare-fun res!1034663 () Bool)

(assert (=> b!1514684 (=> (not res!1034663) (not e!845318))))

(declare-fun lt!656397 () SeekEntryResult!12881)

(assert (=> b!1514684 (= res!1034663 (= lt!656395 lt!656397))))

(assert (=> b!1514684 (= lt!656397 (Intermediate!12881 false resIndex!21 resX!21))))

(assert (=> b!1514684 (= lt!656395 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48689 a!2804) j!70) mask!2512) (select (arr!48689 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1514685 () Bool)

(declare-fun res!1034659 () Bool)

(assert (=> b!1514685 (=> (not res!1034659) (not e!845315))))

(assert (=> b!1514685 (= res!1034659 (and (= (size!49240 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49240 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49240 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1514686 () Bool)

(declare-fun res!1034661 () Bool)

(assert (=> b!1514686 (=> (not res!1034661) (not e!845316))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100913 (_ BitVec 32)) SeekEntryResult!12881)

(assert (=> b!1514686 (= res!1034661 (= (seekEntry!0 (select (arr!48689 a!2804) j!70) a!2804 mask!2512) (Found!12881 j!70)))))

(declare-fun b!1514687 () Bool)

(declare-fun res!1034652 () Bool)

(assert (=> b!1514687 (=> (not res!1034652) (not e!845318))))

(assert (=> b!1514687 (= res!1034652 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48689 a!2804) j!70) a!2804 mask!2512) lt!656397))))

(declare-fun b!1514679 () Bool)

(declare-fun res!1034664 () Bool)

(assert (=> b!1514679 (=> (not res!1034664) (not e!845315))))

(assert (=> b!1514679 (= res!1034664 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1034657 () Bool)

(assert (=> start!129144 (=> (not res!1034657) (not e!845315))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129144 (= res!1034657 (validMask!0 mask!2512))))

(assert (=> start!129144 e!845315))

(assert (=> start!129144 true))

(declare-fun array_inv!37634 (array!100913) Bool)

(assert (=> start!129144 (array_inv!37634 a!2804)))

(declare-fun b!1514688 () Bool)

(declare-fun res!1034654 () Bool)

(assert (=> b!1514688 (=> (not res!1034654) (not e!845315))))

(assert (=> b!1514688 (= res!1034654 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49240 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49240 a!2804))))))

(declare-fun b!1514689 () Bool)

(declare-fun res!1034656 () Bool)

(assert (=> b!1514689 (=> (not res!1034656) (not e!845315))))

(assert (=> b!1514689 (= res!1034656 (validKeyInArray!0 (select (arr!48689 a!2804) i!961)))))

(assert (= (and start!129144 res!1034657) b!1514685))

(assert (= (and b!1514685 res!1034659) b!1514689))

(assert (= (and b!1514689 res!1034656) b!1514681))

(assert (= (and b!1514681 res!1034651) b!1514679))

(assert (= (and b!1514679 res!1034664) b!1514682))

(assert (= (and b!1514682 res!1034662) b!1514688))

(assert (= (and b!1514688 res!1034654) b!1514684))

(assert (= (and b!1514684 res!1034663) b!1514687))

(assert (= (and b!1514687 res!1034652) b!1514678))

(assert (= (and b!1514678 res!1034653) b!1514680))

(assert (= (and b!1514680 res!1034655) b!1514686))

(assert (= (and b!1514686 res!1034661) b!1514676))

(assert (= (and b!1514676 (not res!1034658)) b!1514677))

(assert (= (and b!1514677 res!1034660) b!1514683))

(declare-fun m!1397713 () Bool)

(assert (=> b!1514682 m!1397713))

(declare-fun m!1397715 () Bool)

(assert (=> b!1514676 m!1397715))

(declare-fun m!1397717 () Bool)

(assert (=> b!1514676 m!1397717))

(declare-fun m!1397719 () Bool)

(assert (=> b!1514679 m!1397719))

(declare-fun m!1397721 () Bool)

(assert (=> b!1514683 m!1397721))

(declare-fun m!1397723 () Bool)

(assert (=> b!1514683 m!1397723))

(declare-fun m!1397725 () Bool)

(assert (=> start!129144 m!1397725))

(declare-fun m!1397727 () Bool)

(assert (=> start!129144 m!1397727))

(declare-fun m!1397729 () Bool)

(assert (=> b!1514689 m!1397729))

(assert (=> b!1514689 m!1397729))

(declare-fun m!1397731 () Bool)

(assert (=> b!1514689 m!1397731))

(assert (=> b!1514677 m!1397715))

(assert (=> b!1514677 m!1397715))

(declare-fun m!1397733 () Bool)

(assert (=> b!1514677 m!1397733))

(assert (=> b!1514677 m!1397715))

(declare-fun m!1397735 () Bool)

(assert (=> b!1514677 m!1397735))

(declare-fun m!1397737 () Bool)

(assert (=> b!1514680 m!1397737))

(declare-fun m!1397739 () Bool)

(assert (=> b!1514680 m!1397739))

(assert (=> b!1514684 m!1397715))

(assert (=> b!1514684 m!1397715))

(declare-fun m!1397741 () Bool)

(assert (=> b!1514684 m!1397741))

(assert (=> b!1514684 m!1397741))

(assert (=> b!1514684 m!1397715))

(declare-fun m!1397743 () Bool)

(assert (=> b!1514684 m!1397743))

(declare-fun m!1397745 () Bool)

(assert (=> b!1514678 m!1397745))

(assert (=> b!1514678 m!1397745))

(declare-fun m!1397747 () Bool)

(assert (=> b!1514678 m!1397747))

(declare-fun m!1397749 () Bool)

(assert (=> b!1514678 m!1397749))

(declare-fun m!1397751 () Bool)

(assert (=> b!1514678 m!1397751))

(assert (=> b!1514681 m!1397715))

(assert (=> b!1514681 m!1397715))

(declare-fun m!1397753 () Bool)

(assert (=> b!1514681 m!1397753))

(assert (=> b!1514686 m!1397715))

(assert (=> b!1514686 m!1397715))

(declare-fun m!1397755 () Bool)

(assert (=> b!1514686 m!1397755))

(assert (=> b!1514687 m!1397715))

(assert (=> b!1514687 m!1397715))

(declare-fun m!1397757 () Bool)

(assert (=> b!1514687 m!1397757))

(check-sat (not b!1514686) (not b!1514683) (not b!1514678) (not b!1514684) (not b!1514679) (not b!1514680) (not b!1514677) (not b!1514689) (not b!1514681) (not b!1514687) (not start!129144) (not b!1514682))
(check-sat)
