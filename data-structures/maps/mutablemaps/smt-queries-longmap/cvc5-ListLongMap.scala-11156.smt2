; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130330 () Bool)

(assert start!130330)

(declare-fun b!1529801 () Bool)

(declare-fun e!852491 () Bool)

(declare-fun e!852488 () Bool)

(assert (=> b!1529801 (= e!852491 (not e!852488))))

(declare-fun res!1047647 () Bool)

(assert (=> b!1529801 (=> res!1047647 e!852488)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!101607 0))(
  ( (array!101608 (arr!49024 (Array (_ BitVec 32) (_ BitVec 64))) (size!49575 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101607)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1529801 (= res!1047647 (or (not (= (select (arr!49024 a!2804) j!70) (select (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!852490 () Bool)

(assert (=> b!1529801 e!852490))

(declare-fun res!1047653 () Bool)

(assert (=> b!1529801 (=> (not res!1047653) (not e!852490))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101607 (_ BitVec 32)) Bool)

(assert (=> b!1529801 (= res!1047653 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51160 0))(
  ( (Unit!51161) )
))
(declare-fun lt!662521 () Unit!51160)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101607 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51160)

(assert (=> b!1529801 (= lt!662521 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529802 () Bool)

(declare-fun res!1047657 () Bool)

(declare-fun e!852487 () Bool)

(assert (=> b!1529802 (=> (not res!1047657) (not e!852487))))

(declare-datatypes ((List!35687 0))(
  ( (Nil!35684) (Cons!35683 (h!37120 (_ BitVec 64)) (t!50388 List!35687)) )
))
(declare-fun arrayNoDuplicates!0 (array!101607 (_ BitVec 32) List!35687) Bool)

(assert (=> b!1529802 (= res!1047657 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35684))))

(declare-fun b!1529803 () Bool)

(declare-fun res!1047654 () Bool)

(assert (=> b!1529803 (=> (not res!1047654) (not e!852491))))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13210 0))(
  ( (MissingZero!13210 (index!55234 (_ BitVec 32))) (Found!13210 (index!55235 (_ BitVec 32))) (Intermediate!13210 (undefined!14022 Bool) (index!55236 (_ BitVec 32)) (x!136924 (_ BitVec 32))) (Undefined!13210) (MissingVacant!13210 (index!55237 (_ BitVec 32))) )
))
(declare-fun lt!662520 () SeekEntryResult!13210)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101607 (_ BitVec 32)) SeekEntryResult!13210)

(assert (=> b!1529803 (= res!1047654 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49024 a!2804) j!70) a!2804 mask!2512) lt!662520))))

(declare-fun b!1529805 () Bool)

(assert (=> b!1529805 (= e!852487 e!852491)))

(declare-fun res!1047648 () Bool)

(assert (=> b!1529805 (=> (not res!1047648) (not e!852491))))

(declare-fun lt!662519 () SeekEntryResult!13210)

(assert (=> b!1529805 (= res!1047648 (= lt!662519 lt!662520))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1529805 (= lt!662520 (Intermediate!13210 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529805 (= lt!662519 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49024 a!2804) j!70) mask!2512) (select (arr!49024 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529806 () Bool)

(declare-fun res!1047646 () Bool)

(assert (=> b!1529806 (=> (not res!1047646) (not e!852487))))

(assert (=> b!1529806 (= res!1047646 (and (= (size!49575 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49575 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49575 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1529807 () Bool)

(declare-fun res!1047650 () Bool)

(assert (=> b!1529807 (=> (not res!1047650) (not e!852491))))

(assert (=> b!1529807 (= res!1047650 (= lt!662519 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101608 (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49575 a!2804)) mask!2512)))))

(declare-fun b!1529808 () Bool)

(declare-fun res!1047651 () Bool)

(assert (=> b!1529808 (=> (not res!1047651) (not e!852487))))

(assert (=> b!1529808 (= res!1047651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1047656 () Bool)

(assert (=> start!130330 (=> (not res!1047656) (not e!852487))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130330 (= res!1047656 (validMask!0 mask!2512))))

(assert (=> start!130330 e!852487))

(assert (=> start!130330 true))

(declare-fun array_inv!37969 (array!101607) Bool)

(assert (=> start!130330 (array_inv!37969 a!2804)))

(declare-fun b!1529804 () Bool)

(assert (=> b!1529804 (= e!852488 (and (bvsge (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110)))))

(declare-fun lt!662518 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529804 (= lt!662518 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1529809 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101607 (_ BitVec 32)) SeekEntryResult!13210)

(assert (=> b!1529809 (= e!852490 (= (seekEntry!0 (select (arr!49024 a!2804) j!70) a!2804 mask!2512) (Found!13210 j!70)))))

(declare-fun b!1529810 () Bool)

(declare-fun res!1047655 () Bool)

(assert (=> b!1529810 (=> (not res!1047655) (not e!852487))))

(assert (=> b!1529810 (= res!1047655 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49575 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49575 a!2804))))))

(declare-fun b!1529811 () Bool)

(declare-fun res!1047652 () Bool)

(assert (=> b!1529811 (=> (not res!1047652) (not e!852487))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529811 (= res!1047652 (validKeyInArray!0 (select (arr!49024 a!2804) i!961)))))

(declare-fun b!1529812 () Bool)

(declare-fun res!1047649 () Bool)

(assert (=> b!1529812 (=> (not res!1047649) (not e!852487))))

(assert (=> b!1529812 (= res!1047649 (validKeyInArray!0 (select (arr!49024 a!2804) j!70)))))

(assert (= (and start!130330 res!1047656) b!1529806))

(assert (= (and b!1529806 res!1047646) b!1529811))

(assert (= (and b!1529811 res!1047652) b!1529812))

(assert (= (and b!1529812 res!1047649) b!1529808))

(assert (= (and b!1529808 res!1047651) b!1529802))

(assert (= (and b!1529802 res!1047657) b!1529810))

(assert (= (and b!1529810 res!1047655) b!1529805))

(assert (= (and b!1529805 res!1047648) b!1529803))

(assert (= (and b!1529803 res!1047654) b!1529807))

(assert (= (and b!1529807 res!1047650) b!1529801))

(assert (= (and b!1529801 res!1047653) b!1529809))

(assert (= (and b!1529801 (not res!1047647)) b!1529804))

(declare-fun m!1412823 () Bool)

(assert (=> b!1529804 m!1412823))

(declare-fun m!1412825 () Bool)

(assert (=> b!1529802 m!1412825))

(declare-fun m!1412827 () Bool)

(assert (=> b!1529803 m!1412827))

(assert (=> b!1529803 m!1412827))

(declare-fun m!1412829 () Bool)

(assert (=> b!1529803 m!1412829))

(assert (=> b!1529809 m!1412827))

(assert (=> b!1529809 m!1412827))

(declare-fun m!1412831 () Bool)

(assert (=> b!1529809 m!1412831))

(declare-fun m!1412833 () Bool)

(assert (=> b!1529808 m!1412833))

(assert (=> b!1529812 m!1412827))

(assert (=> b!1529812 m!1412827))

(declare-fun m!1412835 () Bool)

(assert (=> b!1529812 m!1412835))

(declare-fun m!1412837 () Bool)

(assert (=> start!130330 m!1412837))

(declare-fun m!1412839 () Bool)

(assert (=> start!130330 m!1412839))

(declare-fun m!1412841 () Bool)

(assert (=> b!1529811 m!1412841))

(assert (=> b!1529811 m!1412841))

(declare-fun m!1412843 () Bool)

(assert (=> b!1529811 m!1412843))

(assert (=> b!1529801 m!1412827))

(declare-fun m!1412845 () Bool)

(assert (=> b!1529801 m!1412845))

(declare-fun m!1412847 () Bool)

(assert (=> b!1529801 m!1412847))

(declare-fun m!1412849 () Bool)

(assert (=> b!1529801 m!1412849))

(declare-fun m!1412851 () Bool)

(assert (=> b!1529801 m!1412851))

(assert (=> b!1529805 m!1412827))

(assert (=> b!1529805 m!1412827))

(declare-fun m!1412853 () Bool)

(assert (=> b!1529805 m!1412853))

(assert (=> b!1529805 m!1412853))

(assert (=> b!1529805 m!1412827))

(declare-fun m!1412855 () Bool)

(assert (=> b!1529805 m!1412855))

(assert (=> b!1529807 m!1412847))

(assert (=> b!1529807 m!1412849))

(assert (=> b!1529807 m!1412849))

(declare-fun m!1412857 () Bool)

(assert (=> b!1529807 m!1412857))

(assert (=> b!1529807 m!1412857))

(assert (=> b!1529807 m!1412849))

(declare-fun m!1412859 () Bool)

(assert (=> b!1529807 m!1412859))

(push 1)

(assert (not b!1529803))

(assert (not b!1529805))

(assert (not b!1529804))

(assert (not start!130330))

(assert (not b!1529808))

(assert (not b!1529807))

(assert (not b!1529801))

(assert (not b!1529812))

(assert (not b!1529802))

(assert (not b!1529809))

(assert (not b!1529811))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!159657 () Bool)

(declare-fun e!852545 () Bool)

(assert (=> d!159657 e!852545))

(declare-fun c!140643 () Bool)

(declare-fun lt!662563 () SeekEntryResult!13210)

(assert (=> d!159657 (= c!140643 (and (is-Intermediate!13210 lt!662563) (undefined!14022 lt!662563)))))

(declare-fun e!852544 () SeekEntryResult!13210)

(assert (=> d!159657 (= lt!662563 e!852544)))

(declare-fun c!140645 () Bool)

(assert (=> d!159657 (= c!140645 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!662562 () (_ BitVec 64))

(assert (=> d!159657 (= lt!662562 (select (arr!49024 (array!101608 (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49575 a!2804))) (toIndex!0 (select (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!159657 (validMask!0 mask!2512)))

(assert (=> d!159657 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101608 (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49575 a!2804)) mask!2512) lt!662563)))

(declare-fun b!1529915 () Bool)

(assert (=> b!1529915 (and (bvsge (index!55236 lt!662563) #b00000000000000000000000000000000) (bvslt (index!55236 lt!662563) (size!49575 (array!101608 (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49575 a!2804)))))))

(declare-fun res!1047742 () Bool)

(assert (=> b!1529915 (= res!1047742 (= (select (arr!49024 (array!101608 (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49575 a!2804))) (index!55236 lt!662563)) (select (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(declare-fun e!852541 () Bool)

(assert (=> b!1529915 (=> res!1047742 e!852541)))

(declare-fun e!852542 () Bool)

(assert (=> b!1529915 (= e!852542 e!852541)))

(declare-fun b!1529916 () Bool)

(declare-fun e!852543 () SeekEntryResult!13210)

(assert (=> b!1529916 (= e!852544 e!852543)))

(declare-fun c!140644 () Bool)

(assert (=> b!1529916 (= c!140644 (or (= lt!662562 (select (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!662562 lt!662562) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1529917 () Bool)

(assert (=> b!1529917 (= e!852543 (Intermediate!13210 false (toIndex!0 (select (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1529918 () Bool)

(assert (=> b!1529918 (= e!852545 e!852542)))

(declare-fun res!1047744 () Bool)

(assert (=> b!1529918 (= res!1047744 (and (is-Intermediate!13210 lt!662563) (not (undefined!14022 lt!662563)) (bvslt (x!136924 lt!662563) #b01111111111111111111111111111110) (bvsge (x!136924 lt!662563) #b00000000000000000000000000000000) (bvsge (x!136924 lt!662563) #b00000000000000000000000000000000)))))

(assert (=> b!1529918 (=> (not res!1047744) (not e!852542))))

(declare-fun b!1529919 () Bool)

(assert (=> b!1529919 (= e!852545 (bvsge (x!136924 lt!662563) #b01111111111111111111111111111110))))

(declare-fun b!1529920 () Bool)

(assert (=> b!1529920 (= e!852544 (Intermediate!13210 true (toIndex!0 (select (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1529921 () Bool)

(assert (=> b!1529921 (and (bvsge (index!55236 lt!662563) #b00000000000000000000000000000000) (bvslt (index!55236 lt!662563) (size!49575 (array!101608 (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49575 a!2804)))))))

(assert (=> b!1529921 (= e!852541 (= (select (arr!49024 (array!101608 (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49575 a!2804))) (index!55236 lt!662563)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1529922 () Bool)

(assert (=> b!1529922 (= e!852543 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101608 (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49575 a!2804)) mask!2512))))

(declare-fun b!1529923 () Bool)

(assert (=> b!1529923 (and (bvsge (index!55236 lt!662563) #b00000000000000000000000000000000) (bvslt (index!55236 lt!662563) (size!49575 (array!101608 (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49575 a!2804)))))))

(declare-fun res!1047743 () Bool)

(assert (=> b!1529923 (= res!1047743 (= (select (arr!49024 (array!101608 (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49575 a!2804))) (index!55236 lt!662563)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1529923 (=> res!1047743 e!852541)))

(assert (= (and d!159657 c!140645) b!1529920))

(assert (= (and d!159657 (not c!140645)) b!1529916))

(assert (= (and b!1529916 c!140644) b!1529917))

(assert (= (and b!1529916 (not c!140644)) b!1529922))

(assert (= (and d!159657 c!140643) b!1529919))

(assert (= (and d!159657 (not c!140643)) b!1529918))

(assert (= (and b!1529918 res!1047744) b!1529915))

(assert (= (and b!1529915 (not res!1047742)) b!1529923))

(assert (= (and b!1529923 (not res!1047743)) b!1529921))

(declare-fun m!1412951 () Bool)

(assert (=> b!1529921 m!1412951))

(assert (=> b!1529923 m!1412951))

(assert (=> b!1529922 m!1412857))

(declare-fun m!1412953 () Bool)

(assert (=> b!1529922 m!1412953))

(assert (=> b!1529922 m!1412953))

(assert (=> b!1529922 m!1412849))

(declare-fun m!1412955 () Bool)

(assert (=> b!1529922 m!1412955))

(assert (=> d!159657 m!1412857))

(declare-fun m!1412957 () Bool)

(assert (=> d!159657 m!1412957))

(assert (=> d!159657 m!1412837))

(assert (=> b!1529915 m!1412951))

(assert (=> b!1529807 d!159657))

(declare-fun d!159671 () Bool)

(declare-fun lt!662569 () (_ BitVec 32))

(declare-fun lt!662568 () (_ BitVec 32))

(assert (=> d!159671 (= lt!662569 (bvmul (bvxor lt!662568 (bvlshr lt!662568 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159671 (= lt!662568 ((_ extract 31 0) (bvand (bvxor (select (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159671 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1047745 (let ((h!37123 ((_ extract 31 0) (bvand (bvxor (select (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136929 (bvmul (bvxor h!37123 (bvlshr h!37123 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136929 (bvlshr x!136929 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1047745 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1047745 #b00000000000000000000000000000000))))))

(assert (=> d!159671 (= (toIndex!0 (select (store (arr!49024 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!662569 (bvlshr lt!662569 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1529807 d!159671))

(declare-fun d!159673 () Bool)

(declare-fun lt!662584 () (_ BitVec 32))

(assert (=> d!159673 (and (bvsge lt!662584 #b00000000000000000000000000000000) (bvslt lt!662584 (bvadd mask!2512 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!159673 (= lt!662584 (choose!52 index!487 x!534 mask!2512))))

(assert (=> d!159673 (validMask!0 mask!2512)))

(assert (=> d!159673 (= (nextIndex!0 index!487 x!534 mask!2512) lt!662584)))

(declare-fun bs!43863 () Bool)

(assert (= bs!43863 d!159673))

(declare-fun m!1412959 () Bool)

(assert (=> bs!43863 m!1412959))

(assert (=> bs!43863 m!1412837))

(assert (=> b!1529804 d!159673))

(declare-fun d!159675 () Bool)

(declare-fun e!852560 () Bool)

(assert (=> d!159675 e!852560))

(declare-fun c!140656 () Bool)

(declare-fun lt!662586 () SeekEntryResult!13210)

(assert (=> d!159675 (= c!140656 (and (is-Intermediate!13210 lt!662586) (undefined!14022 lt!662586)))))

(declare-fun e!852559 () SeekEntryResult!13210)

(assert (=> d!159675 (= lt!662586 e!852559)))

(declare-fun c!140658 () Bool)

(assert (=> d!159675 (= c!140658 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!662585 () (_ BitVec 64))

(assert (=> d!159675 (= lt!662585 (select (arr!49024 a!2804) (toIndex!0 (select (arr!49024 a!2804) j!70) mask!2512)))))

(assert (=> d!159675 (validMask!0 mask!2512)))

(assert (=> d!159675 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49024 a!2804) j!70) mask!2512) (select (arr!49024 a!2804) j!70) a!2804 mask!2512) lt!662586)))

(declare-fun b!1529946 () Bool)

(assert (=> b!1529946 (and (bvsge (index!55236 lt!662586) #b00000000000000000000000000000000) (bvslt (index!55236 lt!662586) (size!49575 a!2804)))))

(declare-fun res!1047746 () Bool)

(assert (=> b!1529946 (= res!1047746 (= (select (arr!49024 a!2804) (index!55236 lt!662586)) (select (arr!49024 a!2804) j!70)))))

(declare-fun e!852556 () Bool)

(assert (=> b!1529946 (=> res!1047746 e!852556)))

(declare-fun e!852557 () Bool)

(assert (=> b!1529946 (= e!852557 e!852556)))

(declare-fun b!1529947 () Bool)

(declare-fun e!852558 () SeekEntryResult!13210)

(assert (=> b!1529947 (= e!852559 e!852558)))

(declare-fun c!140657 () Bool)

(assert (=> b!1529947 (= c!140657 (or (= lt!662585 (select (arr!49024 a!2804) j!70)) (= (bvadd lt!662585 lt!662585) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1529948 () Bool)

(assert (=> b!1529948 (= e!852558 (Intermediate!13210 false (toIndex!0 (select (arr!49024 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1529949 () Bool)

(assert (=> b!1529949 (= e!852560 e!852557)))

(declare-fun res!1047748 () Bool)

(assert (=> b!1529949 (= res!1047748 (and (is-Intermediate!13210 lt!662586) (not (undefined!14022 lt!662586)) (bvslt (x!136924 lt!662586) #b01111111111111111111111111111110) (bvsge (x!136924 lt!662586) #b00000000000000000000000000000000) (bvsge (x!136924 lt!662586) #b00000000000000000000000000000000)))))

(assert (=> b!1529949 (=> (not res!1047748) (not e!852557))))

(declare-fun b!1529950 () Bool)

(assert (=> b!1529950 (= e!852560 (bvsge (x!136924 lt!662586) #b01111111111111111111111111111110))))

(declare-fun b!1529951 () Bool)

(assert (=> b!1529951 (= e!852559 (Intermediate!13210 true (toIndex!0 (select (arr!49024 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1529952 () Bool)

(assert (=> b!1529952 (and (bvsge (index!55236 lt!662586) #b00000000000000000000000000000000) (bvslt (index!55236 lt!662586) (size!49575 a!2804)))))

(assert (=> b!1529952 (= e!852556 (= (select (arr!49024 a!2804) (index!55236 lt!662586)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1529953 () Bool)

(assert (=> b!1529953 (= e!852558 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!49024 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!49024 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529954 () Bool)

(assert (=> b!1529954 (and (bvsge (index!55236 lt!662586) #b00000000000000000000000000000000) (bvslt (index!55236 lt!662586) (size!49575 a!2804)))))

(declare-fun res!1047747 () Bool)

(assert (=> b!1529954 (= res!1047747 (= (select (arr!49024 a!2804) (index!55236 lt!662586)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1529954 (=> res!1047747 e!852556)))

(assert (= (and d!159675 c!140658) b!1529951))

(assert (= (and d!159675 (not c!140658)) b!1529947))

(assert (= (and b!1529947 c!140657) b!1529948))

(assert (= (and b!1529947 (not c!140657)) b!1529953))

(assert (= (and d!159675 c!140656) b!1529950))

(assert (= (and d!159675 (not c!140656)) b!1529949))

(assert (= (and b!1529949 res!1047748) b!1529946))

(assert (= (and b!1529946 (not res!1047746)) b!1529954))

(assert (= (and b!1529954 (not res!1047747)) b!1529952))

(declare-fun m!1412961 () Bool)

(assert (=> b!1529952 m!1412961))

(assert (=> b!1529954 m!1412961))

(assert (=> b!1529953 m!1412853))

(declare-fun m!1412963 () Bool)

(assert (=> b!1529953 m!1412963))

(assert (=> b!1529953 m!1412963))

(assert (=> b!1529953 m!1412827))

(declare-fun m!1412965 () Bool)

(assert (=> b!1529953 m!1412965))

(assert (=> d!159675 m!1412853))

(declare-fun m!1412967 () Bool)

(assert (=> d!159675 m!1412967))

(assert (=> d!159675 m!1412837))

(assert (=> b!1529946 m!1412961))

(assert (=> b!1529805 d!159675))

(declare-fun d!159677 () Bool)

(declare-fun lt!662588 () (_ BitVec 32))

(declare-fun lt!662587 () (_ BitVec 32))

(assert (=> d!159677 (= lt!662588 (bvmul (bvxor lt!662587 (bvlshr lt!662587 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159677 (= lt!662587 ((_ extract 31 0) (bvand (bvxor (select (arr!49024 a!2804) j!70) (bvlshr (select (arr!49024 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159677 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1047745 (let ((h!37123 ((_ extract 31 0) (bvand (bvxor (select (arr!49024 a!2804) j!70) (bvlshr (select (arr!49024 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136929 (bvmul (bvxor h!37123 (bvlshr h!37123 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136929 (bvlshr x!136929 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1047745 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1047745 #b00000000000000000000000000000000))))))

(assert (=> d!159677 (= (toIndex!0 (select (arr!49024 a!2804) j!70) mask!2512) (bvand (bvxor lt!662588 (bvlshr lt!662588 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1529805 d!159677))

(declare-fun d!159679 () Bool)

(declare-fun e!852571 () Bool)

(assert (=> d!159679 e!852571))

(declare-fun c!140661 () Bool)

(declare-fun lt!662590 () SeekEntryResult!13210)

(assert (=> d!159679 (= c!140661 (and (is-Intermediate!13210 lt!662590) (undefined!14022 lt!662590)))))

(declare-fun e!852570 () SeekEntryResult!13210)

(assert (=> d!159679 (= lt!662590 e!852570)))

(declare-fun c!140663 () Bool)

(assert (=> d!159679 (= c!140663 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!662589 () (_ BitVec 64))

(assert (=> d!159679 (= lt!662589 (select (arr!49024 a!2804) index!487))))

(assert (=> d!159679 (validMask!0 mask!2512)))

(assert (=> d!159679 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49024 a!2804) j!70) a!2804 mask!2512) lt!662590)))

(declare-fun b!1529963 () Bool)

(assert (=> b!1529963 (and (bvsge (index!55236 lt!662590) #b00000000000000000000000000000000) (bvslt (index!55236 lt!662590) (size!49575 a!2804)))))

(declare-fun res!1047755 () Bool)

(assert (=> b!1529963 (= res!1047755 (= (select (arr!49024 a!2804) (index!55236 lt!662590)) (select (arr!49024 a!2804) j!70)))))

(declare-fun e!852567 () Bool)

(assert (=> b!1529963 (=> res!1047755 e!852567)))

(declare-fun e!852568 () Bool)

(assert (=> b!1529963 (= e!852568 e!852567)))

(declare-fun b!1529964 () Bool)

(declare-fun e!852569 () SeekEntryResult!13210)

(assert (=> b!1529964 (= e!852570 e!852569)))

(declare-fun c!140662 () Bool)

(assert (=> b!1529964 (= c!140662 (or (= lt!662589 (select (arr!49024 a!2804) j!70)) (= (bvadd lt!662589 lt!662589) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1529965 () Bool)

(assert (=> b!1529965 (= e!852569 (Intermediate!13210 false index!487 x!534))))

(declare-fun b!1529966 () Bool)

(assert (=> b!1529966 (= e!852571 e!852568)))

(declare-fun res!1047757 () Bool)

(assert (=> b!1529966 (= res!1047757 (and (is-Intermediate!13210 lt!662590) (not (undefined!14022 lt!662590)) (bvslt (x!136924 lt!662590) #b01111111111111111111111111111110) (bvsge (x!136924 lt!662590) #b00000000000000000000000000000000) (bvsge (x!136924 lt!662590) x!534)))))

(assert (=> b!1529966 (=> (not res!1047757) (not e!852568))))

(declare-fun b!1529967 () Bool)

(assert (=> b!1529967 (= e!852571 (bvsge (x!136924 lt!662590) #b01111111111111111111111111111110))))

(declare-fun b!1529968 () Bool)

(assert (=> b!1529968 (= e!852570 (Intermediate!13210 true index!487 x!534))))

(declare-fun b!1529969 () Bool)

(assert (=> b!1529969 (and (bvsge (index!55236 lt!662590) #b00000000000000000000000000000000) (bvslt (index!55236 lt!662590) (size!49575 a!2804)))))

(assert (=> b!1529969 (= e!852567 (= (select (arr!49024 a!2804) (index!55236 lt!662590)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1529970 () Bool)

(assert (=> b!1529970 (= e!852569 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!49024 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529971 () Bool)

(assert (=> b!1529971 (and (bvsge (index!55236 lt!662590) #b00000000000000000000000000000000) (bvslt (index!55236 lt!662590) (size!49575 a!2804)))))

(declare-fun res!1047756 () Bool)

(assert (=> b!1529971 (= res!1047756 (= (select (arr!49024 a!2804) (index!55236 lt!662590)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1529971 (=> res!1047756 e!852567)))

(assert (= (and d!159679 c!140663) b!1529968))

(assert (= (and d!159679 (not c!140663)) b!1529964))

(assert (= (and b!1529964 c!140662) b!1529965))

(assert (= (and b!1529964 (not c!140662)) b!1529970))

(assert (= (and d!159679 c!140661) b!1529967))

(assert (= (and d!159679 (not c!140661)) b!1529966))

(assert (= (and b!1529966 res!1047757) b!1529963))

(assert (= (and b!1529963 (not res!1047755)) b!1529971))

(assert (= (and b!1529971 (not res!1047756)) b!1529969))

(declare-fun m!1412969 () Bool)

(assert (=> b!1529969 m!1412969))

(assert (=> b!1529971 m!1412969))

(assert (=> b!1529970 m!1412823))

(assert (=> b!1529970 m!1412823))

(assert (=> b!1529970 m!1412827))

(declare-fun m!1412971 () Bool)

(assert (=> b!1529970 m!1412971))

(declare-fun m!1412973 () Bool)

(assert (=> d!159679 m!1412973))

(assert (=> d!159679 m!1412837))

(assert (=> b!1529963 m!1412969))

(assert (=> b!1529803 d!159679))

(declare-fun d!159681 () Bool)

(assert (=> d!159681 (= (validKeyInArray!0 (select (arr!49024 a!2804) j!70)) (and (not (= (select (arr!49024 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49024 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1529812 d!159681))

(declare-fun b!1529997 () Bool)

(declare-fun e!852591 () Bool)

(declare-fun call!68493 () Bool)

(assert (=> b!1529997 (= e!852591 call!68493)))

(declare-fun b!1529998 () Bool)

(declare-fun e!852588 () Bool)

(declare-fun e!852589 () Bool)

(assert (=> b!1529998 (= e!852588 e!852589)))

(declare-fun res!1047767 () Bool)

(assert (=> b!1529998 (=> (not res!1047767) (not e!852589))))

(declare-fun e!852590 () Bool)

(assert (=> b!1529998 (= res!1047767 (not e!852590))))

(declare-fun res!1047768 () Bool)

(assert (=> b!1529998 (=> (not res!1047768) (not e!852590))))

(assert (=> b!1529998 (= res!1047768 (validKeyInArray!0 (select (arr!49024 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1529999 () Bool)

(declare-fun contains!10011 (List!35687 (_ BitVec 64)) Bool)

(assert (=> b!1529999 (= e!852590 (contains!10011 Nil!35684 (select (arr!49024 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68490 () Bool)

(declare-fun c!140672 () Bool)

(assert (=> bm!68490 (= call!68493 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!140672 (Cons!35683 (select (arr!49024 a!2804) #b00000000000000000000000000000000) Nil!35684) Nil!35684)))))

(declare-fun b!1530001 () Bool)

(assert (=> b!1530001 (= e!852591 call!68493)))

(declare-fun b!1530000 () Bool)

(assert (=> b!1530000 (= e!852589 e!852591)))

(assert (=> b!1530000 (= c!140672 (validKeyInArray!0 (select (arr!49024 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!159683 () Bool)

(declare-fun res!1047769 () Bool)

(assert (=> d!159683 (=> res!1047769 e!852588)))

(assert (=> d!159683 (= res!1047769 (bvsge #b00000000000000000000000000000000 (size!49575 a!2804)))))

(assert (=> d!159683 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35684) e!852588)))

(assert (= (and d!159683 (not res!1047769)) b!1529998))

(assert (= (and b!1529998 res!1047768) b!1529999))

(assert (= (and b!1529998 res!1047767) b!1530000))

(assert (= (and b!1530000 c!140672) b!1530001))

(assert (= (and b!1530000 (not c!140672)) b!1529997))

(assert (= (or b!1530001 b!1529997) bm!68490))

(declare-fun m!1412987 () Bool)

(assert (=> b!1529998 m!1412987))

(assert (=> b!1529998 m!1412987))

(declare-fun m!1412989 () Bool)

(assert (=> b!1529998 m!1412989))

(assert (=> b!1529999 m!1412987))

(assert (=> b!1529999 m!1412987))

(declare-fun m!1412991 () Bool)

(assert (=> b!1529999 m!1412991))

(assert (=> bm!68490 m!1412987))

(declare-fun m!1412993 () Bool)

(assert (=> bm!68490 m!1412993))

(assert (=> b!1530000 m!1412987))

(assert (=> b!1530000 m!1412987))

(assert (=> b!1530000 m!1412989))

(assert (=> b!1529802 d!159683))

(declare-fun d!159691 () Bool)

(assert (=> d!159691 (= (validKeyInArray!0 (select (arr!49024 a!2804) i!961)) (and (not (= (select (arr!49024 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49024 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1529811 d!159691))

(declare-fun d!159693 () Bool)

(declare-fun res!1047785 () Bool)

(declare-fun e!852618 () Bool)

(assert (=> d!159693 (=> res!1047785 e!852618)))

(assert (=> d!159693 (= res!1047785 (bvsge j!70 (size!49575 a!2804)))))

(assert (=> d!159693 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!852618)))

(declare-fun b!1530040 () Bool)

(declare-fun e!852620 () Bool)

(declare-fun call!68500 () Bool)

(assert (=> b!1530040 (= e!852620 call!68500)))

(declare-fun b!1530041 () Bool)

(declare-fun e!852619 () Bool)

(assert (=> b!1530041 (= e!852619 e!852620)))

(declare-fun lt!662620 () (_ BitVec 64))

(assert (=> b!1530041 (= lt!662620 (select (arr!49024 a!2804) j!70))))

(declare-fun lt!662619 () Unit!51160)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101607 (_ BitVec 64) (_ BitVec 32)) Unit!51160)

(assert (=> b!1530041 (= lt!662619 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!662620 j!70))))

(declare-fun arrayContainsKey!0 (array!101607 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1530041 (arrayContainsKey!0 a!2804 lt!662620 #b00000000000000000000000000000000)))

(declare-fun lt!662621 () Unit!51160)

(assert (=> b!1530041 (= lt!662621 lt!662619)))

(declare-fun res!1047784 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101607 (_ BitVec 32)) SeekEntryResult!13210)

(assert (=> b!1530041 (= res!1047784 (= (seekEntryOrOpen!0 (select (arr!49024 a!2804) j!70) a!2804 mask!2512) (Found!13210 j!70)))))

(assert (=> b!1530041 (=> (not res!1047784) (not e!852620))))

(declare-fun b!1530042 () Bool)

(assert (=> b!1530042 (= e!852619 call!68500)))

(declare-fun bm!68497 () Bool)

(assert (=> bm!68497 (= call!68500 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1530043 () Bool)

(assert (=> b!1530043 (= e!852618 e!852619)))

(declare-fun c!140685 () Bool)

(assert (=> b!1530043 (= c!140685 (validKeyInArray!0 (select (arr!49024 a!2804) j!70)))))

(assert (= (and d!159693 (not res!1047785)) b!1530043))

(assert (= (and b!1530043 c!140685) b!1530041))

(assert (= (and b!1530043 (not c!140685)) b!1530042))

(assert (= (and b!1530041 res!1047784) b!1530040))

(assert (= (or b!1530040 b!1530042) bm!68497))

(assert (=> b!1530041 m!1412827))

(declare-fun m!1413015 () Bool)

(assert (=> b!1530041 m!1413015))

(declare-fun m!1413017 () Bool)

(assert (=> b!1530041 m!1413017))

(assert (=> b!1530041 m!1412827))

(declare-fun m!1413019 () Bool)

(assert (=> b!1530041 m!1413019))

(declare-fun m!1413021 () Bool)

(assert (=> bm!68497 m!1413021))

(assert (=> b!1530043 m!1412827))

(assert (=> b!1530043 m!1412827))

(assert (=> b!1530043 m!1412835))

(assert (=> b!1529801 d!159693))

(declare-fun d!159699 () Bool)

(assert (=> d!159699 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!662629 () Unit!51160)

(declare-fun choose!38 (array!101607 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51160)

(assert (=> d!159699 (= lt!662629 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159699 (validMask!0 mask!2512)))

(assert (=> d!159699 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!662629)))

(declare-fun bs!43865 () Bool)

(assert (= bs!43865 d!159699))

(assert (=> bs!43865 m!1412851))

(declare-fun m!1413033 () Bool)

(assert (=> bs!43865 m!1413033))

(assert (=> bs!43865 m!1412837))

(assert (=> b!1529801 d!159699))

(declare-fun d!159707 () Bool)

(declare-fun res!1047794 () Bool)

(declare-fun e!852628 () Bool)

(assert (=> d!159707 (=> res!1047794 e!852628)))

(assert (=> d!159707 (= res!1047794 (bvsge #b00000000000000000000000000000000 (size!49575 a!2804)))))

(assert (=> d!159707 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!852628)))

(declare-fun b!1530057 () Bool)

(declare-fun e!852630 () Bool)

(declare-fun call!68501 () Bool)

(assert (=> b!1530057 (= e!852630 call!68501)))

(declare-fun b!1530058 () Bool)

(declare-fun e!852629 () Bool)

(assert (=> b!1530058 (= e!852629 e!852630)))

(declare-fun lt!662631 () (_ BitVec 64))

(assert (=> b!1530058 (= lt!662631 (select (arr!49024 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!662630 () Unit!51160)

(assert (=> b!1530058 (= lt!662630 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!662631 #b00000000000000000000000000000000))))

(assert (=> b!1530058 (arrayContainsKey!0 a!2804 lt!662631 #b00000000000000000000000000000000)))

(declare-fun lt!662632 () Unit!51160)

(assert (=> b!1530058 (= lt!662632 lt!662630)))

(declare-fun res!1047793 () Bool)

(assert (=> b!1530058 (= res!1047793 (= (seekEntryOrOpen!0 (select (arr!49024 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13210 #b00000000000000000000000000000000)))))

(assert (=> b!1530058 (=> (not res!1047793) (not e!852630))))

(declare-fun b!1530059 () Bool)

(assert (=> b!1530059 (= e!852629 call!68501)))

(declare-fun bm!68498 () Bool)

(assert (=> bm!68498 (= call!68501 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1530060 () Bool)

(assert (=> b!1530060 (= e!852628 e!852629)))

(declare-fun c!140689 () Bool)

(assert (=> b!1530060 (= c!140689 (validKeyInArray!0 (select (arr!49024 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!159707 (not res!1047794)) b!1530060))

(assert (= (and b!1530060 c!140689) b!1530058))

(assert (= (and b!1530060 (not c!140689)) b!1530059))

(assert (= (and b!1530058 res!1047793) b!1530057))

(assert (= (or b!1530057 b!1530059) bm!68498))

(assert (=> b!1530058 m!1412987))

(declare-fun m!1413035 () Bool)

(assert (=> b!1530058 m!1413035))

(declare-fun m!1413037 () Bool)

(assert (=> b!1530058 m!1413037))

(assert (=> b!1530058 m!1412987))

(declare-fun m!1413039 () Bool)

(assert (=> b!1530058 m!1413039))

(declare-fun m!1413041 () Bool)

(assert (=> bm!68498 m!1413041))

(assert (=> b!1530060 m!1412987))

(assert (=> b!1530060 m!1412987))

(assert (=> b!1530060 m!1412989))

(assert (=> b!1529808 d!159707))

(declare-fun d!159709 () Bool)

(assert (=> d!159709 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!130330 d!159709))

(declare-fun d!159713 () Bool)

(assert (=> d!159713 (= (array_inv!37969 a!2804) (bvsge (size!49575 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!130330 d!159713))

(declare-fun b!1530137 () Bool)

(declare-fun c!140719 () Bool)

(declare-fun lt!662675 () (_ BitVec 64))

(assert (=> b!1530137 (= c!140719 (= lt!662675 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!852677 () SeekEntryResult!13210)

(declare-fun e!852676 () SeekEntryResult!13210)

(assert (=> b!1530137 (= e!852677 e!852676)))

(declare-fun b!1530138 () Bool)

(declare-fun e!852678 () SeekEntryResult!13210)

(assert (=> b!1530138 (= e!852678 e!852677)))

(declare-fun lt!662676 () SeekEntryResult!13210)

(assert (=> b!1530138 (= lt!662675 (select (arr!49024 a!2804) (index!55236 lt!662676)))))

(declare-fun c!140720 () Bool)

(assert (=> b!1530138 (= c!140720 (= lt!662675 (select (arr!49024 a!2804) j!70)))))

(declare-fun b!1530139 () Bool)

(declare-fun lt!662673 () SeekEntryResult!13210)

(assert (=> b!1530139 (= e!852676 (ite (is-MissingVacant!13210 lt!662673) (MissingZero!13210 (index!55237 lt!662673)) lt!662673))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101607 (_ BitVec 32)) SeekEntryResult!13210)

(assert (=> b!1530139 (= lt!662673 (seekKeyOrZeroReturnVacant!0 (x!136924 lt!662676) (index!55236 lt!662676) (index!55236 lt!662676) (select (arr!49024 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!159715 () Bool)

(declare-fun lt!662674 () SeekEntryResult!13210)

(assert (=> d!159715 (and (or (is-MissingVacant!13210 lt!662674) (not (is-Found!13210 lt!662674)) (and (bvsge (index!55235 lt!662674) #b00000000000000000000000000000000) (bvslt (index!55235 lt!662674) (size!49575 a!2804)))) (not (is-MissingVacant!13210 lt!662674)) (or (not (is-Found!13210 lt!662674)) (= (select (arr!49024 a!2804) (index!55235 lt!662674)) (select (arr!49024 a!2804) j!70))))))

(assert (=> d!159715 (= lt!662674 e!852678)))

(declare-fun c!140718 () Bool)

(assert (=> d!159715 (= c!140718 (and (is-Intermediate!13210 lt!662676) (undefined!14022 lt!662676)))))

(assert (=> d!159715 (= lt!662676 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49024 a!2804) j!70) mask!2512) (select (arr!49024 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159715 (validMask!0 mask!2512)))

(assert (=> d!159715 (= (seekEntry!0 (select (arr!49024 a!2804) j!70) a!2804 mask!2512) lt!662674)))

(declare-fun b!1530140 () Bool)

(assert (=> b!1530140 (= e!852678 Undefined!13210)))

(declare-fun b!1530141 () Bool)

(assert (=> b!1530141 (= e!852677 (Found!13210 (index!55236 lt!662676)))))

(declare-fun b!1530142 () Bool)

(assert (=> b!1530142 (= e!852676 (MissingZero!13210 (index!55236 lt!662676)))))

(assert (= (and d!159715 c!140718) b!1530140))

(assert (= (and d!159715 (not c!140718)) b!1530138))

(assert (= (and b!1530138 c!140720) b!1530141))

(assert (= (and b!1530138 (not c!140720)) b!1530137))

(assert (= (and b!1530137 c!140719) b!1530142))

(assert (= (and b!1530137 (not c!140719)) b!1530139))

(declare-fun m!1413085 () Bool)

(assert (=> b!1530138 m!1413085))

(assert (=> b!1530139 m!1412827))

(declare-fun m!1413087 () Bool)

(assert (=> b!1530139 m!1413087))

(declare-fun m!1413089 () Bool)

(assert (=> d!159715 m!1413089))

(assert (=> d!159715 m!1412827))

(assert (=> d!159715 m!1412853))

(assert (=> d!159715 m!1412853))

(assert (=> d!159715 m!1412827))

(assert (=> d!159715 m!1412855))

(assert (=> d!159715 m!1412837))

(assert (=> b!1529809 d!159715))

(push 1)

(assert (not b!1530139))

(assert (not d!159699))

(assert (not b!1530058))

(assert (not b!1529999))

(assert (not d!159657))

(assert (not b!1529922))

(assert (not b!1530000))

(assert (not bm!68490))

(assert (not b!1529970))

(assert (not bm!68498))

(assert (not b!1530060))

(assert (not bm!68497))

(assert (not d!159673))

(assert (not b!1530041))

(assert (not b!1529953))

(assert (not d!159715))

(assert (not d!159679))

(assert (not b!1529998))

(assert (not d!159675))

(assert (not b!1530043))

(check-sat)

(pop 1)

(push 1)

(check-sat)

