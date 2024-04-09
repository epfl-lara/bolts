; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130476 () Bool)

(assert start!130476)

(declare-fun res!1048317 () Bool)

(declare-fun e!853033 () Bool)

(assert (=> start!130476 (=> (not res!1048317) (not e!853033))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130476 (= res!1048317 (validMask!0 mask!2512))))

(assert (=> start!130476 e!853033))

(assert (=> start!130476 true))

(declare-datatypes ((array!101639 0))(
  ( (array!101640 (arr!49037 (Array (_ BitVec 32) (_ BitVec 64))) (size!49588 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101639)

(declare-fun array_inv!37982 (array!101639) Bool)

(assert (=> start!130476 (array_inv!37982 a!2804)))

(declare-fun b!1530833 () Bool)

(declare-fun res!1048312 () Bool)

(assert (=> b!1530833 (=> (not res!1048312) (not e!853033))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1530833 (= res!1048312 (validKeyInArray!0 (select (arr!49037 a!2804) i!961)))))

(declare-fun b!1530834 () Bool)

(declare-fun res!1048323 () Bool)

(declare-fun e!853032 () Bool)

(assert (=> b!1530834 (=> (not res!1048323) (not e!853032))))

(declare-datatypes ((SeekEntryResult!13223 0))(
  ( (MissingZero!13223 (index!55286 (_ BitVec 32))) (Found!13223 (index!55287 (_ BitVec 32))) (Intermediate!13223 (undefined!14035 Bool) (index!55288 (_ BitVec 32)) (x!136987 (_ BitVec 32))) (Undefined!13223) (MissingVacant!13223 (index!55289 (_ BitVec 32))) )
))
(declare-fun lt!662963 () SeekEntryResult!13223)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101639 (_ BitVec 32)) SeekEntryResult!13223)

(assert (=> b!1530834 (= res!1048323 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49037 a!2804) j!70) a!2804 mask!2512) lt!662963))))

(declare-fun b!1530835 () Bool)

(declare-fun res!1048315 () Bool)

(assert (=> b!1530835 (=> (not res!1048315) (not e!853033))))

(assert (=> b!1530835 (= res!1048315 (and (= (size!49588 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49588 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49588 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1530836 () Bool)

(declare-fun res!1048320 () Bool)

(assert (=> b!1530836 (=> (not res!1048320) (not e!853033))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1530836 (= res!1048320 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49588 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49588 a!2804))))))

(declare-fun b!1530837 () Bool)

(declare-fun e!853034 () Bool)

(assert (=> b!1530837 (= e!853032 (not e!853034))))

(declare-fun res!1048313 () Bool)

(assert (=> b!1530837 (=> res!1048313 e!853034)))

(assert (=> b!1530837 (= res!1048313 (or (not (= (select (arr!49037 a!2804) j!70) (select (store (arr!49037 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!853031 () Bool)

(assert (=> b!1530837 e!853031))

(declare-fun res!1048316 () Bool)

(assert (=> b!1530837 (=> (not res!1048316) (not e!853031))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101639 (_ BitVec 32)) Bool)

(assert (=> b!1530837 (= res!1048316 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51186 0))(
  ( (Unit!51187) )
))
(declare-fun lt!662964 () Unit!51186)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101639 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51186)

(assert (=> b!1530837 (= lt!662964 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1530838 () Bool)

(declare-fun res!1048314 () Bool)

(assert (=> b!1530838 (=> (not res!1048314) (not e!853033))))

(assert (=> b!1530838 (= res!1048314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1530839 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101639 (_ BitVec 32)) SeekEntryResult!13223)

(assert (=> b!1530839 (= e!853031 (= (seekEntry!0 (select (arr!49037 a!2804) j!70) a!2804 mask!2512) (Found!13223 j!70)))))

(declare-fun b!1530840 () Bool)

(assert (=> b!1530840 (= e!853033 e!853032)))

(declare-fun res!1048321 () Bool)

(assert (=> b!1530840 (=> (not res!1048321) (not e!853032))))

(declare-fun lt!662962 () SeekEntryResult!13223)

(assert (=> b!1530840 (= res!1048321 (= lt!662962 lt!662963))))

(assert (=> b!1530840 (= lt!662963 (Intermediate!13223 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530840 (= lt!662962 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49037 a!2804) j!70) mask!2512) (select (arr!49037 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530841 () Bool)

(declare-fun res!1048319 () Bool)

(assert (=> b!1530841 (=> (not res!1048319) (not e!853033))))

(assert (=> b!1530841 (= res!1048319 (validKeyInArray!0 (select (arr!49037 a!2804) j!70)))))

(declare-fun b!1530842 () Bool)

(assert (=> b!1530842 (= e!853034 true)))

(declare-fun lt!662965 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530842 (= lt!662965 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1530843 () Bool)

(declare-fun res!1048318 () Bool)

(assert (=> b!1530843 (=> (not res!1048318) (not e!853032))))

(assert (=> b!1530843 (= res!1048318 (= lt!662962 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49037 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49037 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101640 (store (arr!49037 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49588 a!2804)) mask!2512)))))

(declare-fun b!1530844 () Bool)

(declare-fun res!1048322 () Bool)

(assert (=> b!1530844 (=> (not res!1048322) (not e!853033))))

(declare-datatypes ((List!35700 0))(
  ( (Nil!35697) (Cons!35696 (h!37139 (_ BitVec 64)) (t!50401 List!35700)) )
))
(declare-fun arrayNoDuplicates!0 (array!101639 (_ BitVec 32) List!35700) Bool)

(assert (=> b!1530844 (= res!1048322 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35697))))

(assert (= (and start!130476 res!1048317) b!1530835))

(assert (= (and b!1530835 res!1048315) b!1530833))

(assert (= (and b!1530833 res!1048312) b!1530841))

(assert (= (and b!1530841 res!1048319) b!1530838))

(assert (= (and b!1530838 res!1048314) b!1530844))

(assert (= (and b!1530844 res!1048322) b!1530836))

(assert (= (and b!1530836 res!1048320) b!1530840))

(assert (= (and b!1530840 res!1048321) b!1530834))

(assert (= (and b!1530834 res!1048323) b!1530843))

(assert (= (and b!1530843 res!1048318) b!1530837))

(assert (= (and b!1530837 res!1048316) b!1530839))

(assert (= (and b!1530837 (not res!1048313)) b!1530842))

(declare-fun m!1413653 () Bool)

(assert (=> b!1530837 m!1413653))

(declare-fun m!1413655 () Bool)

(assert (=> b!1530837 m!1413655))

(declare-fun m!1413657 () Bool)

(assert (=> b!1530837 m!1413657))

(declare-fun m!1413659 () Bool)

(assert (=> b!1530837 m!1413659))

(declare-fun m!1413661 () Bool)

(assert (=> b!1530837 m!1413661))

(assert (=> b!1530840 m!1413653))

(assert (=> b!1530840 m!1413653))

(declare-fun m!1413663 () Bool)

(assert (=> b!1530840 m!1413663))

(assert (=> b!1530840 m!1413663))

(assert (=> b!1530840 m!1413653))

(declare-fun m!1413665 () Bool)

(assert (=> b!1530840 m!1413665))

(assert (=> b!1530843 m!1413657))

(assert (=> b!1530843 m!1413659))

(assert (=> b!1530843 m!1413659))

(declare-fun m!1413667 () Bool)

(assert (=> b!1530843 m!1413667))

(assert (=> b!1530843 m!1413667))

(assert (=> b!1530843 m!1413659))

(declare-fun m!1413669 () Bool)

(assert (=> b!1530843 m!1413669))

(declare-fun m!1413671 () Bool)

(assert (=> b!1530833 m!1413671))

(assert (=> b!1530833 m!1413671))

(declare-fun m!1413673 () Bool)

(assert (=> b!1530833 m!1413673))

(assert (=> b!1530839 m!1413653))

(assert (=> b!1530839 m!1413653))

(declare-fun m!1413675 () Bool)

(assert (=> b!1530839 m!1413675))

(declare-fun m!1413677 () Bool)

(assert (=> b!1530838 m!1413677))

(declare-fun m!1413679 () Bool)

(assert (=> b!1530844 m!1413679))

(declare-fun m!1413681 () Bool)

(assert (=> b!1530842 m!1413681))

(assert (=> b!1530841 m!1413653))

(assert (=> b!1530841 m!1413653))

(declare-fun m!1413683 () Bool)

(assert (=> b!1530841 m!1413683))

(declare-fun m!1413685 () Bool)

(assert (=> start!130476 m!1413685))

(declare-fun m!1413687 () Bool)

(assert (=> start!130476 m!1413687))

(assert (=> b!1530834 m!1413653))

(assert (=> b!1530834 m!1413653))

(declare-fun m!1413689 () Bool)

(assert (=> b!1530834 m!1413689))

(check-sat (not b!1530833) (not b!1530841) (not b!1530843) (not b!1530842) (not b!1530837) (not b!1530838) (not b!1530844) (not start!130476) (not b!1530840) (not b!1530834) (not b!1530839))
(check-sat)
