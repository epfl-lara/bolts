; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129148 () Bool)

(assert start!129148)

(declare-fun b!1514760 () Bool)

(declare-fun res!1034746 () Bool)

(declare-fun e!845363 () Bool)

(assert (=> b!1514760 (=> (not res!1034746) (not e!845363))))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12883 0))(
  ( (MissingZero!12883 (index!53926 (_ BitVec 32))) (Found!12883 (index!53927 (_ BitVec 32))) (Intermediate!12883 (undefined!13695 Bool) (index!53928 (_ BitVec 32)) (x!135646 (_ BitVec 32))) (Undefined!12883) (MissingVacant!12883 (index!53929 (_ BitVec 32))) )
))
(declare-fun lt!656425 () SeekEntryResult!12883)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100917 0))(
  ( (array!100918 (arr!48691 (Array (_ BitVec 32) (_ BitVec 64))) (size!49242 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100917)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100917 (_ BitVec 32)) SeekEntryResult!12883)

(assert (=> b!1514760 (= res!1034746 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48691 a!2804) j!70) a!2804 mask!2512) lt!656425))))

(declare-fun b!1514761 () Bool)

(declare-fun res!1034744 () Bool)

(declare-fun e!845361 () Bool)

(assert (=> b!1514761 (=> (not res!1034744) (not e!845361))))

(declare-datatypes ((List!35354 0))(
  ( (Nil!35351) (Cons!35350 (h!36763 (_ BitVec 64)) (t!50055 List!35354)) )
))
(declare-fun arrayNoDuplicates!0 (array!100917 (_ BitVec 32) List!35354) Bool)

(assert (=> b!1514761 (= res!1034744 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35351))))

(declare-fun b!1514762 () Bool)

(declare-fun e!845362 () Bool)

(assert (=> b!1514762 (= e!845363 e!845362)))

(declare-fun res!1034740 () Bool)

(assert (=> b!1514762 (=> (not res!1034740) (not e!845362))))

(declare-fun lt!656428 () (_ BitVec 64))

(declare-fun lt!656426 () SeekEntryResult!12883)

(declare-fun lt!656427 () array!100917)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514762 (= res!1034740 (= lt!656426 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656428 mask!2512) lt!656428 lt!656427 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1514762 (= lt!656428 (select (store (arr!48691 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514762 (= lt!656427 (array!100918 (store (arr!48691 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49242 a!2804)))))

(declare-fun b!1514763 () Bool)

(assert (=> b!1514763 (= e!845361 e!845363)))

(declare-fun res!1034748 () Bool)

(assert (=> b!1514763 (=> (not res!1034748) (not e!845363))))

(assert (=> b!1514763 (= res!1034748 (= lt!656426 lt!656425))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1514763 (= lt!656425 (Intermediate!12883 false resIndex!21 resX!21))))

(assert (=> b!1514763 (= lt!656426 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48691 a!2804) j!70) mask!2512) (select (arr!48691 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1034743 () Bool)

(assert (=> start!129148 (=> (not res!1034743) (not e!845361))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129148 (= res!1034743 (validMask!0 mask!2512))))

(assert (=> start!129148 e!845361))

(assert (=> start!129148 true))

(declare-fun array_inv!37636 (array!100917) Bool)

(assert (=> start!129148 (array_inv!37636 a!2804)))

(declare-fun b!1514764 () Bool)

(declare-fun res!1034742 () Bool)

(assert (=> b!1514764 (=> (not res!1034742) (not e!845361))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100917 (_ BitVec 32)) Bool)

(assert (=> b!1514764 (= res!1034742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun e!845359 () Bool)

(declare-fun b!1514765 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100917 (_ BitVec 32)) SeekEntryResult!12883)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100917 (_ BitVec 32)) SeekEntryResult!12883)

(assert (=> b!1514765 (= e!845359 (= (seekEntryOrOpen!0 lt!656428 lt!656427 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656428 lt!656427 mask!2512)))))

(declare-fun b!1514766 () Bool)

(declare-fun res!1034735 () Bool)

(declare-fun e!845360 () Bool)

(assert (=> b!1514766 (=> (not res!1034735) (not e!845360))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100917 (_ BitVec 32)) SeekEntryResult!12883)

(assert (=> b!1514766 (= res!1034735 (= (seekEntry!0 (select (arr!48691 a!2804) j!70) a!2804 mask!2512) (Found!12883 j!70)))))

(declare-fun b!1514767 () Bool)

(declare-fun res!1034739 () Bool)

(assert (=> b!1514767 (=> (not res!1034739) (not e!845361))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514767 (= res!1034739 (validKeyInArray!0 (select (arr!48691 a!2804) j!70)))))

(declare-fun b!1514768 () Bool)

(declare-fun res!1034738 () Bool)

(assert (=> b!1514768 (=> (not res!1034738) (not e!845361))))

(assert (=> b!1514768 (= res!1034738 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49242 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49242 a!2804))))))

(declare-fun b!1514769 () Bool)

(declare-fun e!845358 () Bool)

(assert (=> b!1514769 (= e!845358 e!845359)))

(declare-fun res!1034741 () Bool)

(assert (=> b!1514769 (=> (not res!1034741) (not e!845359))))

(assert (=> b!1514769 (= res!1034741 (= (seekEntryOrOpen!0 (select (arr!48691 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48691 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1514770 () Bool)

(declare-fun res!1034736 () Bool)

(assert (=> b!1514770 (=> (not res!1034736) (not e!845361))))

(assert (=> b!1514770 (= res!1034736 (and (= (size!49242 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49242 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49242 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1514771 () Bool)

(assert (=> b!1514771 (= e!845362 (not true))))

(assert (=> b!1514771 e!845360))

(declare-fun res!1034745 () Bool)

(assert (=> b!1514771 (=> (not res!1034745) (not e!845360))))

(assert (=> b!1514771 (= res!1034745 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50590 0))(
  ( (Unit!50591) )
))
(declare-fun lt!656424 () Unit!50590)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100917 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50590)

(assert (=> b!1514771 (= lt!656424 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514772 () Bool)

(declare-fun res!1034737 () Bool)

(assert (=> b!1514772 (=> (not res!1034737) (not e!845361))))

(assert (=> b!1514772 (= res!1034737 (validKeyInArray!0 (select (arr!48691 a!2804) i!961)))))

(declare-fun b!1514773 () Bool)

(assert (=> b!1514773 (= e!845360 e!845358)))

(declare-fun res!1034747 () Bool)

(assert (=> b!1514773 (=> res!1034747 e!845358)))

(assert (=> b!1514773 (= res!1034747 (or (not (= (select (arr!48691 a!2804) j!70) lt!656428)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48691 a!2804) index!487) (select (arr!48691 a!2804) j!70)) (not (= (select (arr!48691 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!129148 res!1034743) b!1514770))

(assert (= (and b!1514770 res!1034736) b!1514772))

(assert (= (and b!1514772 res!1034737) b!1514767))

(assert (= (and b!1514767 res!1034739) b!1514764))

(assert (= (and b!1514764 res!1034742) b!1514761))

(assert (= (and b!1514761 res!1034744) b!1514768))

(assert (= (and b!1514768 res!1034738) b!1514763))

(assert (= (and b!1514763 res!1034748) b!1514760))

(assert (= (and b!1514760 res!1034746) b!1514762))

(assert (= (and b!1514762 res!1034740) b!1514771))

(assert (= (and b!1514771 res!1034745) b!1514766))

(assert (= (and b!1514766 res!1034735) b!1514773))

(assert (= (and b!1514773 (not res!1034747)) b!1514769))

(assert (= (and b!1514769 res!1034741) b!1514765))

(declare-fun m!1397805 () Bool)

(assert (=> b!1514766 m!1397805))

(assert (=> b!1514766 m!1397805))

(declare-fun m!1397807 () Bool)

(assert (=> b!1514766 m!1397807))

(declare-fun m!1397809 () Bool)

(assert (=> b!1514765 m!1397809))

(declare-fun m!1397811 () Bool)

(assert (=> b!1514765 m!1397811))

(assert (=> b!1514773 m!1397805))

(declare-fun m!1397813 () Bool)

(assert (=> b!1514773 m!1397813))

(declare-fun m!1397815 () Bool)

(assert (=> b!1514771 m!1397815))

(declare-fun m!1397817 () Bool)

(assert (=> b!1514771 m!1397817))

(assert (=> b!1514760 m!1397805))

(assert (=> b!1514760 m!1397805))

(declare-fun m!1397819 () Bool)

(assert (=> b!1514760 m!1397819))

(declare-fun m!1397821 () Bool)

(assert (=> b!1514761 m!1397821))

(assert (=> b!1514769 m!1397805))

(assert (=> b!1514769 m!1397805))

(declare-fun m!1397823 () Bool)

(assert (=> b!1514769 m!1397823))

(assert (=> b!1514769 m!1397805))

(declare-fun m!1397825 () Bool)

(assert (=> b!1514769 m!1397825))

(declare-fun m!1397827 () Bool)

(assert (=> b!1514764 m!1397827))

(declare-fun m!1397829 () Bool)

(assert (=> b!1514772 m!1397829))

(assert (=> b!1514772 m!1397829))

(declare-fun m!1397831 () Bool)

(assert (=> b!1514772 m!1397831))

(assert (=> b!1514763 m!1397805))

(assert (=> b!1514763 m!1397805))

(declare-fun m!1397833 () Bool)

(assert (=> b!1514763 m!1397833))

(assert (=> b!1514763 m!1397833))

(assert (=> b!1514763 m!1397805))

(declare-fun m!1397835 () Bool)

(assert (=> b!1514763 m!1397835))

(declare-fun m!1397837 () Bool)

(assert (=> start!129148 m!1397837))

(declare-fun m!1397839 () Bool)

(assert (=> start!129148 m!1397839))

(declare-fun m!1397841 () Bool)

(assert (=> b!1514762 m!1397841))

(assert (=> b!1514762 m!1397841))

(declare-fun m!1397843 () Bool)

(assert (=> b!1514762 m!1397843))

(declare-fun m!1397845 () Bool)

(assert (=> b!1514762 m!1397845))

(declare-fun m!1397847 () Bool)

(assert (=> b!1514762 m!1397847))

(assert (=> b!1514767 m!1397805))

(assert (=> b!1514767 m!1397805))

(declare-fun m!1397849 () Bool)

(assert (=> b!1514767 m!1397849))

(push 1)

