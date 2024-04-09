; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129056 () Bool)

(assert start!129056)

(declare-fun b!1512829 () Bool)

(declare-fun res!1032816 () Bool)

(declare-fun e!844397 () Bool)

(assert (=> b!1512829 (=> (not res!1032816) (not e!844397))))

(declare-datatypes ((array!100825 0))(
  ( (array!100826 (arr!48645 (Array (_ BitVec 32) (_ BitVec 64))) (size!49196 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100825)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100825 (_ BitVec 32)) Bool)

(assert (=> b!1512829 (= res!1032816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512830 () Bool)

(declare-fun res!1032806 () Bool)

(declare-fun e!844392 () Bool)

(assert (=> b!1512830 (=> (not res!1032806) (not e!844392))))

(declare-datatypes ((SeekEntryResult!12837 0))(
  ( (MissingZero!12837 (index!53742 (_ BitVec 32))) (Found!12837 (index!53743 (_ BitVec 32))) (Intermediate!12837 (undefined!13649 Bool) (index!53744 (_ BitVec 32)) (x!135472 (_ BitVec 32))) (Undefined!12837) (MissingVacant!12837 (index!53745 (_ BitVec 32))) )
))
(declare-fun lt!655746 () SeekEntryResult!12837)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100825 (_ BitVec 32)) SeekEntryResult!12837)

(assert (=> b!1512830 (= res!1032806 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48645 a!2804) j!70) a!2804 mask!2512) lt!655746))))

(declare-fun b!1512831 () Bool)

(declare-fun res!1032804 () Bool)

(assert (=> b!1512831 (=> (not res!1032804) (not e!844397))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1512831 (= res!1032804 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49196 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49196 a!2804))))))

(declare-fun b!1512832 () Bool)

(declare-fun res!1032811 () Bool)

(declare-fun e!844393 () Bool)

(assert (=> b!1512832 (=> (not res!1032811) (not e!844393))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100825 (_ BitVec 32)) SeekEntryResult!12837)

(assert (=> b!1512832 (= res!1032811 (= (seekEntry!0 (select (arr!48645 a!2804) j!70) a!2804 mask!2512) (Found!12837 j!70)))))

(declare-fun b!1512833 () Bool)

(declare-fun e!844394 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100825 (_ BitVec 32)) SeekEntryResult!12837)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100825 (_ BitVec 32)) SeekEntryResult!12837)

(assert (=> b!1512833 (= e!844394 (= (seekEntryOrOpen!0 (select (arr!48645 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48645 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512834 () Bool)

(declare-fun res!1032805 () Bool)

(assert (=> b!1512834 (=> (not res!1032805) (not e!844397))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1512834 (= res!1032805 (and (= (size!49196 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49196 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49196 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1512835 () Bool)

(declare-fun res!1032810 () Bool)

(assert (=> b!1512835 (=> (not res!1032810) (not e!844397))))

(declare-datatypes ((List!35308 0))(
  ( (Nil!35305) (Cons!35304 (h!36717 (_ BitVec 64)) (t!50009 List!35308)) )
))
(declare-fun arrayNoDuplicates!0 (array!100825 (_ BitVec 32) List!35308) Bool)

(assert (=> b!1512835 (= res!1032810 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35305))))

(declare-fun b!1512836 () Bool)

(declare-fun e!844396 () Bool)

(assert (=> b!1512836 (= e!844392 e!844396)))

(declare-fun res!1032807 () Bool)

(assert (=> b!1512836 (=> (not res!1032807) (not e!844396))))

(declare-fun lt!655744 () (_ BitVec 64))

(declare-fun lt!655745 () SeekEntryResult!12837)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512836 (= res!1032807 (= lt!655745 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!655744 mask!2512) lt!655744 (array!100826 (store (arr!48645 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49196 a!2804)) mask!2512)))))

(assert (=> b!1512836 (= lt!655744 (select (store (arr!48645 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(declare-fun b!1512837 () Bool)

(assert (=> b!1512837 (= e!844396 (not (or (not (= (select (arr!48645 a!2804) j!70) lt!655744)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48645 a!2804) index!487) (select (arr!48645 a!2804) j!70)) (not (= (select (arr!48645 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!2512 #b00000000000000000000000000000000) (bvsge index!487 (bvadd #b00000000000000000000000000000001 mask!2512)) (= (select (store (arr!48645 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1512837 e!844393))

(declare-fun res!1032815 () Bool)

(assert (=> b!1512837 (=> (not res!1032815) (not e!844393))))

(assert (=> b!1512837 (= res!1032815 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50498 0))(
  ( (Unit!50499) )
))
(declare-fun lt!655747 () Unit!50498)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100825 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50498)

(assert (=> b!1512837 (= lt!655747 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1032808 () Bool)

(assert (=> start!129056 (=> (not res!1032808) (not e!844397))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129056 (= res!1032808 (validMask!0 mask!2512))))

(assert (=> start!129056 e!844397))

(assert (=> start!129056 true))

(declare-fun array_inv!37590 (array!100825) Bool)

(assert (=> start!129056 (array_inv!37590 a!2804)))

(declare-fun b!1512838 () Bool)

(declare-fun res!1032814 () Bool)

(assert (=> b!1512838 (=> (not res!1032814) (not e!844397))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512838 (= res!1032814 (validKeyInArray!0 (select (arr!48645 a!2804) j!70)))))

(declare-fun b!1512839 () Bool)

(declare-fun res!1032809 () Bool)

(assert (=> b!1512839 (=> (not res!1032809) (not e!844397))))

(assert (=> b!1512839 (= res!1032809 (validKeyInArray!0 (select (arr!48645 a!2804) i!961)))))

(declare-fun b!1512840 () Bool)

(assert (=> b!1512840 (= e!844397 e!844392)))

(declare-fun res!1032812 () Bool)

(assert (=> b!1512840 (=> (not res!1032812) (not e!844392))))

(assert (=> b!1512840 (= res!1032812 (= lt!655745 lt!655746))))

(assert (=> b!1512840 (= lt!655746 (Intermediate!12837 false resIndex!21 resX!21))))

(assert (=> b!1512840 (= lt!655745 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48645 a!2804) j!70) mask!2512) (select (arr!48645 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512841 () Bool)

(assert (=> b!1512841 (= e!844393 e!844394)))

(declare-fun res!1032813 () Bool)

(assert (=> b!1512841 (=> res!1032813 e!844394)))

(assert (=> b!1512841 (= res!1032813 (or (not (= (select (arr!48645 a!2804) j!70) lt!655744)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48645 a!2804) index!487) (select (arr!48645 a!2804) j!70)) (not (= (select (arr!48645 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!129056 res!1032808) b!1512834))

(assert (= (and b!1512834 res!1032805) b!1512839))

(assert (= (and b!1512839 res!1032809) b!1512838))

(assert (= (and b!1512838 res!1032814) b!1512829))

(assert (= (and b!1512829 res!1032816) b!1512835))

(assert (= (and b!1512835 res!1032810) b!1512831))

(assert (= (and b!1512831 res!1032804) b!1512840))

(assert (= (and b!1512840 res!1032812) b!1512830))

(assert (= (and b!1512830 res!1032806) b!1512836))

(assert (= (and b!1512836 res!1032807) b!1512837))

(assert (= (and b!1512837 res!1032815) b!1512832))

(assert (= (and b!1512832 res!1032811) b!1512841))

(assert (= (and b!1512841 (not res!1032813)) b!1512833))

(declare-fun m!1395691 () Bool)

(assert (=> b!1512839 m!1395691))

(assert (=> b!1512839 m!1395691))

(declare-fun m!1395693 () Bool)

(assert (=> b!1512839 m!1395693))

(declare-fun m!1395695 () Bool)

(assert (=> start!129056 m!1395695))

(declare-fun m!1395697 () Bool)

(assert (=> start!129056 m!1395697))

(declare-fun m!1395699 () Bool)

(assert (=> b!1512836 m!1395699))

(declare-fun m!1395701 () Bool)

(assert (=> b!1512836 m!1395701))

(assert (=> b!1512836 m!1395699))

(declare-fun m!1395703 () Bool)

(assert (=> b!1512836 m!1395703))

(declare-fun m!1395705 () Bool)

(assert (=> b!1512836 m!1395705))

(declare-fun m!1395707 () Bool)

(assert (=> b!1512835 m!1395707))

(declare-fun m!1395709 () Bool)

(assert (=> b!1512837 m!1395709))

(declare-fun m!1395711 () Bool)

(assert (=> b!1512837 m!1395711))

(assert (=> b!1512837 m!1395701))

(declare-fun m!1395713 () Bool)

(assert (=> b!1512837 m!1395713))

(declare-fun m!1395715 () Bool)

(assert (=> b!1512837 m!1395715))

(declare-fun m!1395717 () Bool)

(assert (=> b!1512837 m!1395717))

(assert (=> b!1512840 m!1395709))

(assert (=> b!1512840 m!1395709))

(declare-fun m!1395719 () Bool)

(assert (=> b!1512840 m!1395719))

(assert (=> b!1512840 m!1395719))

(assert (=> b!1512840 m!1395709))

(declare-fun m!1395721 () Bool)

(assert (=> b!1512840 m!1395721))

(assert (=> b!1512830 m!1395709))

(assert (=> b!1512830 m!1395709))

(declare-fun m!1395723 () Bool)

(assert (=> b!1512830 m!1395723))

(declare-fun m!1395725 () Bool)

(assert (=> b!1512829 m!1395725))

(assert (=> b!1512832 m!1395709))

(assert (=> b!1512832 m!1395709))

(declare-fun m!1395727 () Bool)

(assert (=> b!1512832 m!1395727))

(assert (=> b!1512833 m!1395709))

(assert (=> b!1512833 m!1395709))

(declare-fun m!1395729 () Bool)

(assert (=> b!1512833 m!1395729))

(assert (=> b!1512833 m!1395709))

(declare-fun m!1395731 () Bool)

(assert (=> b!1512833 m!1395731))

(assert (=> b!1512838 m!1395709))

(assert (=> b!1512838 m!1395709))

(declare-fun m!1395733 () Bool)

(assert (=> b!1512838 m!1395733))

(assert (=> b!1512841 m!1395709))

(assert (=> b!1512841 m!1395713))

(push 1)

