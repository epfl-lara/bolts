; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129192 () Bool)

(assert start!129192)

(declare-fun b!1515634 () Bool)

(declare-fun res!1035610 () Bool)

(declare-fun e!845822 () Bool)

(assert (=> b!1515634 (=> (not res!1035610) (not e!845822))))

(declare-datatypes ((array!100961 0))(
  ( (array!100962 (arr!48713 (Array (_ BitVec 32) (_ BitVec 64))) (size!49264 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100961)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515634 (= res!1035610 (validKeyInArray!0 (select (arr!48713 a!2804) i!961)))))

(declare-fun b!1515635 () Bool)

(declare-fun res!1035617 () Bool)

(declare-fun e!845825 () Bool)

(assert (=> b!1515635 (=> (not res!1035617) (not e!845825))))

(declare-datatypes ((SeekEntryResult!12905 0))(
  ( (MissingZero!12905 (index!54014 (_ BitVec 32))) (Found!12905 (index!54015 (_ BitVec 32))) (Intermediate!12905 (undefined!13717 Bool) (index!54016 (_ BitVec 32)) (x!135724 (_ BitVec 32))) (Undefined!12905) (MissingVacant!12905 (index!54017 (_ BitVec 32))) )
))
(declare-fun lt!657011 () SeekEntryResult!12905)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100961 (_ BitVec 32)) SeekEntryResult!12905)

(assert (=> b!1515635 (= res!1035617 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48713 a!2804) j!70) a!2804 mask!2512) lt!657011))))

(declare-fun b!1515636 () Bool)

(declare-fun e!845821 () Bool)

(assert (=> b!1515636 (= e!845821 (bvsge mask!2512 #b00000000000000000000000000000000))))

(declare-fun lt!657013 () SeekEntryResult!12905)

(declare-fun lt!657005 () SeekEntryResult!12905)

(assert (=> b!1515636 (= lt!657013 lt!657005)))

(declare-datatypes ((Unit!50634 0))(
  ( (Unit!50635) )
))
(declare-fun lt!657008 () Unit!50634)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100961 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50634)

(assert (=> b!1515636 (= lt!657008 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1515637 () Bool)

(declare-fun res!1035613 () Bool)

(assert (=> b!1515637 (=> (not res!1035613) (not e!845822))))

(assert (=> b!1515637 (= res!1035613 (validKeyInArray!0 (select (arr!48713 a!2804) j!70)))))

(declare-fun res!1035620 () Bool)

(assert (=> start!129192 (=> (not res!1035620) (not e!845822))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129192 (= res!1035620 (validMask!0 mask!2512))))

(assert (=> start!129192 e!845822))

(assert (=> start!129192 true))

(declare-fun array_inv!37658 (array!100961) Bool)

(assert (=> start!129192 (array_inv!37658 a!2804)))

(declare-fun b!1515638 () Bool)

(declare-fun res!1035616 () Bool)

(assert (=> b!1515638 (=> (not res!1035616) (not e!845822))))

(declare-datatypes ((List!35376 0))(
  ( (Nil!35373) (Cons!35372 (h!36785 (_ BitVec 64)) (t!50077 List!35376)) )
))
(declare-fun arrayNoDuplicates!0 (array!100961 (_ BitVec 32) List!35376) Bool)

(assert (=> b!1515638 (= res!1035616 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35373))))

(declare-fun b!1515639 () Bool)

(declare-fun res!1035614 () Bool)

(assert (=> b!1515639 (=> (not res!1035614) (not e!845822))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1515639 (= res!1035614 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49264 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49264 a!2804))))))

(declare-fun b!1515640 () Bool)

(declare-fun e!845820 () Bool)

(declare-fun e!845823 () Bool)

(assert (=> b!1515640 (= e!845820 (not e!845823))))

(declare-fun res!1035621 () Bool)

(assert (=> b!1515640 (=> res!1035621 e!845823)))

(declare-fun lt!657012 () (_ BitVec 64))

(assert (=> b!1515640 (= res!1035621 (or (not (= (select (arr!48713 a!2804) j!70) lt!657012)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48713 a!2804) index!487) (select (arr!48713 a!2804) j!70)) (not (= (select (arr!48713 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!845819 () Bool)

(assert (=> b!1515640 e!845819))

(declare-fun res!1035611 () Bool)

(assert (=> b!1515640 (=> (not res!1035611) (not e!845819))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100961 (_ BitVec 32)) Bool)

(assert (=> b!1515640 (= res!1035611 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!657007 () Unit!50634)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100961 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50634)

(assert (=> b!1515640 (= lt!657007 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1515641 () Bool)

(assert (=> b!1515641 (= e!845822 e!845825)))

(declare-fun res!1035618 () Bool)

(assert (=> b!1515641 (=> (not res!1035618) (not e!845825))))

(declare-fun lt!657009 () SeekEntryResult!12905)

(assert (=> b!1515641 (= res!1035618 (= lt!657009 lt!657011))))

(assert (=> b!1515641 (= lt!657011 (Intermediate!12905 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515641 (= lt!657009 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48713 a!2804) j!70) mask!2512) (select (arr!48713 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515642 () Bool)

(assert (=> b!1515642 (= e!845825 e!845820)))

(declare-fun res!1035619 () Bool)

(assert (=> b!1515642 (=> (not res!1035619) (not e!845820))))

(declare-fun lt!657004 () array!100961)

(assert (=> b!1515642 (= res!1035619 (= lt!657009 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!657012 mask!2512) lt!657012 lt!657004 mask!2512)))))

(assert (=> b!1515642 (= lt!657012 (select (store (arr!48713 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515642 (= lt!657004 (array!100962 (store (arr!48713 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49264 a!2804)))))

(declare-fun b!1515643 () Bool)

(assert (=> b!1515643 (= e!845823 e!845821)))

(declare-fun res!1035609 () Bool)

(assert (=> b!1515643 (=> res!1035609 e!845821)))

(assert (=> b!1515643 (= res!1035609 (not (= lt!657005 (Found!12905 j!70))))))

(declare-fun lt!657006 () SeekEntryResult!12905)

(assert (=> b!1515643 (= lt!657006 lt!657013)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100961 (_ BitVec 32)) SeekEntryResult!12905)

(assert (=> b!1515643 (= lt!657013 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!657012 lt!657004 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100961 (_ BitVec 32)) SeekEntryResult!12905)

(assert (=> b!1515643 (= lt!657006 (seekEntryOrOpen!0 lt!657012 lt!657004 mask!2512))))

(declare-fun lt!657010 () SeekEntryResult!12905)

(assert (=> b!1515643 (= lt!657010 lt!657005)))

(assert (=> b!1515643 (= lt!657005 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48713 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515643 (= lt!657010 (seekEntryOrOpen!0 (select (arr!48713 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515644 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100961 (_ BitVec 32)) SeekEntryResult!12905)

(assert (=> b!1515644 (= e!845819 (= (seekEntry!0 (select (arr!48713 a!2804) j!70) a!2804 mask!2512) (Found!12905 j!70)))))

(declare-fun b!1515645 () Bool)

(declare-fun res!1035615 () Bool)

(assert (=> b!1515645 (=> (not res!1035615) (not e!845822))))

(assert (=> b!1515645 (= res!1035615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1515646 () Bool)

(declare-fun res!1035612 () Bool)

(assert (=> b!1515646 (=> (not res!1035612) (not e!845822))))

(assert (=> b!1515646 (= res!1035612 (and (= (size!49264 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49264 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49264 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129192 res!1035620) b!1515646))

(assert (= (and b!1515646 res!1035612) b!1515634))

(assert (= (and b!1515634 res!1035610) b!1515637))

(assert (= (and b!1515637 res!1035613) b!1515645))

(assert (= (and b!1515645 res!1035615) b!1515638))

(assert (= (and b!1515638 res!1035616) b!1515639))

(assert (= (and b!1515639 res!1035614) b!1515641))

(assert (= (and b!1515641 res!1035618) b!1515635))

(assert (= (and b!1515635 res!1035617) b!1515642))

(assert (= (and b!1515642 res!1035619) b!1515640))

(assert (= (and b!1515640 res!1035611) b!1515644))

(assert (= (and b!1515640 (not res!1035621)) b!1515643))

(assert (= (and b!1515643 (not res!1035609)) b!1515636))

(declare-fun m!1398849 () Bool)

(assert (=> b!1515641 m!1398849))

(assert (=> b!1515641 m!1398849))

(declare-fun m!1398851 () Bool)

(assert (=> b!1515641 m!1398851))

(assert (=> b!1515641 m!1398851))

(assert (=> b!1515641 m!1398849))

(declare-fun m!1398853 () Bool)

(assert (=> b!1515641 m!1398853))

(declare-fun m!1398855 () Bool)

(assert (=> start!129192 m!1398855))

(declare-fun m!1398857 () Bool)

(assert (=> start!129192 m!1398857))

(declare-fun m!1398859 () Bool)

(assert (=> b!1515634 m!1398859))

(assert (=> b!1515634 m!1398859))

(declare-fun m!1398861 () Bool)

(assert (=> b!1515634 m!1398861))

(declare-fun m!1398863 () Bool)

(assert (=> b!1515642 m!1398863))

(assert (=> b!1515642 m!1398863))

(declare-fun m!1398865 () Bool)

(assert (=> b!1515642 m!1398865))

(declare-fun m!1398867 () Bool)

(assert (=> b!1515642 m!1398867))

(declare-fun m!1398869 () Bool)

(assert (=> b!1515642 m!1398869))

(declare-fun m!1398871 () Bool)

(assert (=> b!1515638 m!1398871))

(declare-fun m!1398873 () Bool)

(assert (=> b!1515645 m!1398873))

(assert (=> b!1515640 m!1398849))

(declare-fun m!1398875 () Bool)

(assert (=> b!1515640 m!1398875))

(declare-fun m!1398877 () Bool)

(assert (=> b!1515640 m!1398877))

(declare-fun m!1398879 () Bool)

(assert (=> b!1515640 m!1398879))

(assert (=> b!1515637 m!1398849))

(assert (=> b!1515637 m!1398849))

(declare-fun m!1398881 () Bool)

(assert (=> b!1515637 m!1398881))

(declare-fun m!1398883 () Bool)

(assert (=> b!1515636 m!1398883))

(assert (=> b!1515635 m!1398849))

(assert (=> b!1515635 m!1398849))

(declare-fun m!1398885 () Bool)

(assert (=> b!1515635 m!1398885))

(assert (=> b!1515644 m!1398849))

(assert (=> b!1515644 m!1398849))

(declare-fun m!1398887 () Bool)

(assert (=> b!1515644 m!1398887))

(assert (=> b!1515643 m!1398849))

(declare-fun m!1398889 () Bool)

(assert (=> b!1515643 m!1398889))

(assert (=> b!1515643 m!1398849))

(declare-fun m!1398891 () Bool)

(assert (=> b!1515643 m!1398891))

(declare-fun m!1398893 () Bool)

(assert (=> b!1515643 m!1398893))

(assert (=> b!1515643 m!1398849))

(declare-fun m!1398895 () Bool)

(assert (=> b!1515643 m!1398895))

(check-sat (not b!1515634) (not b!1515644) (not b!1515641) (not b!1515637) (not b!1515643) (not b!1515645) (not b!1515635) (not b!1515642) (not b!1515638) (not start!129192) (not b!1515636) (not b!1515640))
(check-sat)
