; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129054 () Bool)

(assert start!129054)

(declare-fun b!1512790 () Bool)

(declare-fun res!1032770 () Bool)

(declare-fun e!844377 () Bool)

(assert (=> b!1512790 (=> (not res!1032770) (not e!844377))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100823 0))(
  ( (array!100824 (arr!48644 (Array (_ BitVec 32) (_ BitVec 64))) (size!49195 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100823)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1512790 (= res!1032770 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49195 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49195 a!2804))))))

(declare-fun b!1512791 () Bool)

(declare-fun res!1032768 () Bool)

(assert (=> b!1512791 (=> (not res!1032768) (not e!844377))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512791 (= res!1032768 (validKeyInArray!0 (select (arr!48644 a!2804) j!70)))))

(declare-fun b!1512792 () Bool)

(declare-fun e!844379 () Bool)

(declare-fun e!844378 () Bool)

(assert (=> b!1512792 (= e!844379 e!844378)))

(declare-fun res!1032767 () Bool)

(assert (=> b!1512792 (=> res!1032767 e!844378)))

(declare-fun lt!655733 () (_ BitVec 64))

(assert (=> b!1512792 (= res!1032767 (or (not (= (select (arr!48644 a!2804) j!70) lt!655733)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48644 a!2804) index!487) (select (arr!48644 a!2804) j!70)) (not (= (select (arr!48644 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512793 () Bool)

(declare-fun res!1032774 () Bool)

(assert (=> b!1512793 (=> (not res!1032774) (not e!844377))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1512793 (= res!1032774 (validKeyInArray!0 (select (arr!48644 a!2804) i!961)))))

(declare-fun b!1512794 () Bool)

(declare-fun res!1032776 () Bool)

(assert (=> b!1512794 (=> (not res!1032776) (not e!844377))))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1512794 (= res!1032776 (and (= (size!49195 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49195 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49195 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1032775 () Bool)

(assert (=> start!129054 (=> (not res!1032775) (not e!844377))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129054 (= res!1032775 (validMask!0 mask!2512))))

(assert (=> start!129054 e!844377))

(assert (=> start!129054 true))

(declare-fun array_inv!37589 (array!100823) Bool)

(assert (=> start!129054 (array_inv!37589 a!2804)))

(declare-fun b!1512795 () Bool)

(declare-fun e!844376 () Bool)

(assert (=> b!1512795 (= e!844377 e!844376)))

(declare-fun res!1032773 () Bool)

(assert (=> b!1512795 (=> (not res!1032773) (not e!844376))))

(declare-datatypes ((SeekEntryResult!12836 0))(
  ( (MissingZero!12836 (index!53738 (_ BitVec 32))) (Found!12836 (index!53739 (_ BitVec 32))) (Intermediate!12836 (undefined!13648 Bool) (index!53740 (_ BitVec 32)) (x!135471 (_ BitVec 32))) (Undefined!12836) (MissingVacant!12836 (index!53741 (_ BitVec 32))) )
))
(declare-fun lt!655734 () SeekEntryResult!12836)

(declare-fun lt!655735 () SeekEntryResult!12836)

(assert (=> b!1512795 (= res!1032773 (= lt!655734 lt!655735))))

(assert (=> b!1512795 (= lt!655735 (Intermediate!12836 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100823 (_ BitVec 32)) SeekEntryResult!12836)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512795 (= lt!655734 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48644 a!2804) j!70) mask!2512) (select (arr!48644 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512796 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100823 (_ BitVec 32)) SeekEntryResult!12836)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100823 (_ BitVec 32)) SeekEntryResult!12836)

(assert (=> b!1512796 (= e!844378 (= (seekEntryOrOpen!0 (select (arr!48644 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48644 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512797 () Bool)

(declare-fun res!1032772 () Bool)

(assert (=> b!1512797 (=> (not res!1032772) (not e!844377))))

(declare-datatypes ((List!35307 0))(
  ( (Nil!35304) (Cons!35303 (h!36716 (_ BitVec 64)) (t!50008 List!35307)) )
))
(declare-fun arrayNoDuplicates!0 (array!100823 (_ BitVec 32) List!35307) Bool)

(assert (=> b!1512797 (= res!1032772 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35304))))

(declare-fun b!1512798 () Bool)

(declare-fun res!1032771 () Bool)

(assert (=> b!1512798 (=> (not res!1032771) (not e!844377))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100823 (_ BitVec 32)) Bool)

(assert (=> b!1512798 (= res!1032771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512799 () Bool)

(declare-fun res!1032777 () Bool)

(assert (=> b!1512799 (=> (not res!1032777) (not e!844379))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100823 (_ BitVec 32)) SeekEntryResult!12836)

(assert (=> b!1512799 (= res!1032777 (= (seekEntry!0 (select (arr!48644 a!2804) j!70) a!2804 mask!2512) (Found!12836 j!70)))))

(declare-fun b!1512800 () Bool)

(declare-fun e!844375 () Bool)

(assert (=> b!1512800 (= e!844376 e!844375)))

(declare-fun res!1032769 () Bool)

(assert (=> b!1512800 (=> (not res!1032769) (not e!844375))))

(assert (=> b!1512800 (= res!1032769 (= lt!655734 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!655733 mask!2512) lt!655733 (array!100824 (store (arr!48644 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49195 a!2804)) mask!2512)))))

(assert (=> b!1512800 (= lt!655733 (select (store (arr!48644 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(declare-fun b!1512801 () Bool)

(assert (=> b!1512801 (= e!844375 (not (or (not (= (select (arr!48644 a!2804) j!70) lt!655733)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48644 a!2804) index!487) (select (arr!48644 a!2804) j!70)) (not (= (select (arr!48644 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!2512 #b00000000000000000000000000000000) (bvsge index!487 (bvadd #b00000000000000000000000000000001 mask!2512)) (= (select (store (arr!48644 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1512801 e!844379))

(declare-fun res!1032766 () Bool)

(assert (=> b!1512801 (=> (not res!1032766) (not e!844379))))

(assert (=> b!1512801 (= res!1032766 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50496 0))(
  ( (Unit!50497) )
))
(declare-fun lt!655732 () Unit!50496)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100823 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50496)

(assert (=> b!1512801 (= lt!655732 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1512802 () Bool)

(declare-fun res!1032765 () Bool)

(assert (=> b!1512802 (=> (not res!1032765) (not e!844376))))

(assert (=> b!1512802 (= res!1032765 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48644 a!2804) j!70) a!2804 mask!2512) lt!655735))))

(assert (= (and start!129054 res!1032775) b!1512794))

(assert (= (and b!1512794 res!1032776) b!1512793))

(assert (= (and b!1512793 res!1032774) b!1512791))

(assert (= (and b!1512791 res!1032768) b!1512798))

(assert (= (and b!1512798 res!1032771) b!1512797))

(assert (= (and b!1512797 res!1032772) b!1512790))

(assert (= (and b!1512790 res!1032770) b!1512795))

(assert (= (and b!1512795 res!1032773) b!1512802))

(assert (= (and b!1512802 res!1032765) b!1512800))

(assert (= (and b!1512800 res!1032769) b!1512801))

(assert (= (and b!1512801 res!1032766) b!1512799))

(assert (= (and b!1512799 res!1032777) b!1512792))

(assert (= (and b!1512792 (not res!1032767)) b!1512796))

(declare-fun m!1395647 () Bool)

(assert (=> b!1512799 m!1395647))

(assert (=> b!1512799 m!1395647))

(declare-fun m!1395649 () Bool)

(assert (=> b!1512799 m!1395649))

(declare-fun m!1395651 () Bool)

(assert (=> b!1512798 m!1395651))

(assert (=> b!1512802 m!1395647))

(assert (=> b!1512802 m!1395647))

(declare-fun m!1395653 () Bool)

(assert (=> b!1512802 m!1395653))

(declare-fun m!1395655 () Bool)

(assert (=> start!129054 m!1395655))

(declare-fun m!1395657 () Bool)

(assert (=> start!129054 m!1395657))

(assert (=> b!1512791 m!1395647))

(assert (=> b!1512791 m!1395647))

(declare-fun m!1395659 () Bool)

(assert (=> b!1512791 m!1395659))

(declare-fun m!1395661 () Bool)

(assert (=> b!1512797 m!1395661))

(assert (=> b!1512795 m!1395647))

(assert (=> b!1512795 m!1395647))

(declare-fun m!1395663 () Bool)

(assert (=> b!1512795 m!1395663))

(assert (=> b!1512795 m!1395663))

(assert (=> b!1512795 m!1395647))

(declare-fun m!1395665 () Bool)

(assert (=> b!1512795 m!1395665))

(declare-fun m!1395667 () Bool)

(assert (=> b!1512800 m!1395667))

(declare-fun m!1395669 () Bool)

(assert (=> b!1512800 m!1395669))

(assert (=> b!1512800 m!1395667))

(declare-fun m!1395671 () Bool)

(assert (=> b!1512800 m!1395671))

(declare-fun m!1395673 () Bool)

(assert (=> b!1512800 m!1395673))

(assert (=> b!1512792 m!1395647))

(declare-fun m!1395675 () Bool)

(assert (=> b!1512792 m!1395675))

(declare-fun m!1395677 () Bool)

(assert (=> b!1512793 m!1395677))

(assert (=> b!1512793 m!1395677))

(declare-fun m!1395679 () Bool)

(assert (=> b!1512793 m!1395679))

(assert (=> b!1512801 m!1395647))

(declare-fun m!1395681 () Bool)

(assert (=> b!1512801 m!1395681))

(assert (=> b!1512801 m!1395669))

(assert (=> b!1512801 m!1395675))

(declare-fun m!1395683 () Bool)

(assert (=> b!1512801 m!1395683))

(declare-fun m!1395685 () Bool)

(assert (=> b!1512801 m!1395685))

(assert (=> b!1512796 m!1395647))

(assert (=> b!1512796 m!1395647))

(declare-fun m!1395687 () Bool)

(assert (=> b!1512796 m!1395687))

(assert (=> b!1512796 m!1395647))

(declare-fun m!1395689 () Bool)

(assert (=> b!1512796 m!1395689))

(check-sat (not b!1512793) (not b!1512796) (not b!1512799) (not b!1512800) (not b!1512795) (not b!1512797) (not b!1512801) (not b!1512791) (not b!1512802) (not b!1512798) (not start!129054))
(check-sat)
