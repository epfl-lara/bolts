; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129254 () Bool)

(assert start!129254)

(declare-fun b!1516780 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101023 0))(
  ( (array!101024 (arr!48744 (Array (_ BitVec 32) (_ BitVec 64))) (size!49295 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101023)

(declare-fun e!846336 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12936 0))(
  ( (MissingZero!12936 (index!54138 (_ BitVec 32))) (Found!12936 (index!54139 (_ BitVec 32))) (Intermediate!12936 (undefined!13748 Bool) (index!54140 (_ BitVec 32)) (x!135835 (_ BitVec 32))) (Undefined!12936) (MissingVacant!12936 (index!54141 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101023 (_ BitVec 32)) SeekEntryResult!12936)

(assert (=> b!1516780 (= e!846336 (= (seekEntry!0 (select (arr!48744 a!2804) j!70) a!2804 mask!2512) (Found!12936 j!70)))))

(declare-fun b!1516781 () Bool)

(declare-fun res!1036767 () Bool)

(declare-fun e!846339 () Bool)

(assert (=> b!1516781 (=> (not res!1036767) (not e!846339))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101023 (_ BitVec 32)) Bool)

(assert (=> b!1516781 (= res!1036767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516782 () Bool)

(declare-fun res!1036755 () Bool)

(assert (=> b!1516782 (=> (not res!1036755) (not e!846339))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516782 (= res!1036755 (validKeyInArray!0 (select (arr!48744 a!2804) i!961)))))

(declare-fun b!1516783 () Bool)

(declare-fun res!1036765 () Bool)

(declare-fun e!846338 () Bool)

(assert (=> b!1516783 (=> (not res!1036765) (not e!846338))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!657509 () SeekEntryResult!12936)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101023 (_ BitVec 32)) SeekEntryResult!12936)

(assert (=> b!1516783 (= res!1036765 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48744 a!2804) j!70) a!2804 mask!2512) lt!657509))))

(declare-fun b!1516784 () Bool)

(assert (=> b!1516784 (= e!846339 e!846338)))

(declare-fun res!1036760 () Bool)

(assert (=> b!1516784 (=> (not res!1036760) (not e!846338))))

(declare-fun lt!657507 () SeekEntryResult!12936)

(assert (=> b!1516784 (= res!1036760 (= lt!657507 lt!657509))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1516784 (= lt!657509 (Intermediate!12936 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516784 (= lt!657507 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48744 a!2804) j!70) mask!2512) (select (arr!48744 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516785 () Bool)

(declare-fun res!1036764 () Bool)

(assert (=> b!1516785 (=> (not res!1036764) (not e!846339))))

(assert (=> b!1516785 (= res!1036764 (and (= (size!49295 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49295 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49295 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516787 () Bool)

(declare-fun e!846340 () Bool)

(assert (=> b!1516787 (= e!846340 true)))

(declare-fun lt!657510 () (_ BitVec 32))

(declare-fun lt!657508 () SeekEntryResult!12936)

(assert (=> b!1516787 (= lt!657508 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657510 (select (arr!48744 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516788 () Bool)

(declare-fun e!846341 () Bool)

(assert (=> b!1516788 (= e!846341 e!846340)))

(declare-fun res!1036761 () Bool)

(assert (=> b!1516788 (=> res!1036761 e!846340)))

(assert (=> b!1516788 (= res!1036761 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657510 #b00000000000000000000000000000000) (bvsge lt!657510 (size!49295 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516788 (= lt!657510 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1516789 () Bool)

(declare-fun res!1036762 () Bool)

(assert (=> b!1516789 (=> (not res!1036762) (not e!846339))))

(declare-datatypes ((List!35407 0))(
  ( (Nil!35404) (Cons!35403 (h!36816 (_ BitVec 64)) (t!50108 List!35407)) )
))
(declare-fun arrayNoDuplicates!0 (array!101023 (_ BitVec 32) List!35407) Bool)

(assert (=> b!1516789 (= res!1036762 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35404))))

(declare-fun b!1516790 () Bool)

(declare-fun res!1036766 () Bool)

(assert (=> b!1516790 (=> (not res!1036766) (not e!846338))))

(assert (=> b!1516790 (= res!1036766 (= lt!657507 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48744 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48744 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101024 (store (arr!48744 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49295 a!2804)) mask!2512)))))

(declare-fun b!1516786 () Bool)

(assert (=> b!1516786 (= e!846338 (not e!846341))))

(declare-fun res!1036763 () Bool)

(assert (=> b!1516786 (=> res!1036763 e!846341)))

(assert (=> b!1516786 (= res!1036763 (or (not (= (select (arr!48744 a!2804) j!70) (select (store (arr!48744 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1516786 e!846336))

(declare-fun res!1036759 () Bool)

(assert (=> b!1516786 (=> (not res!1036759) (not e!846336))))

(assert (=> b!1516786 (= res!1036759 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50696 0))(
  ( (Unit!50697) )
))
(declare-fun lt!657511 () Unit!50696)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101023 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50696)

(assert (=> b!1516786 (= lt!657511 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1036756 () Bool)

(assert (=> start!129254 (=> (not res!1036756) (not e!846339))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129254 (= res!1036756 (validMask!0 mask!2512))))

(assert (=> start!129254 e!846339))

(assert (=> start!129254 true))

(declare-fun array_inv!37689 (array!101023) Bool)

(assert (=> start!129254 (array_inv!37689 a!2804)))

(declare-fun b!1516791 () Bool)

(declare-fun res!1036757 () Bool)

(assert (=> b!1516791 (=> (not res!1036757) (not e!846339))))

(assert (=> b!1516791 (= res!1036757 (validKeyInArray!0 (select (arr!48744 a!2804) j!70)))))

(declare-fun b!1516792 () Bool)

(declare-fun res!1036758 () Bool)

(assert (=> b!1516792 (=> (not res!1036758) (not e!846339))))

(assert (=> b!1516792 (= res!1036758 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49295 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49295 a!2804))))))

(assert (= (and start!129254 res!1036756) b!1516785))

(assert (= (and b!1516785 res!1036764) b!1516782))

(assert (= (and b!1516782 res!1036755) b!1516791))

(assert (= (and b!1516791 res!1036757) b!1516781))

(assert (= (and b!1516781 res!1036767) b!1516789))

(assert (= (and b!1516789 res!1036762) b!1516792))

(assert (= (and b!1516792 res!1036758) b!1516784))

(assert (= (and b!1516784 res!1036760) b!1516783))

(assert (= (and b!1516783 res!1036765) b!1516790))

(assert (= (and b!1516790 res!1036766) b!1516786))

(assert (= (and b!1516786 res!1036759) b!1516780))

(assert (= (and b!1516786 (not res!1036763)) b!1516788))

(assert (= (and b!1516788 (not res!1036761)) b!1516787))

(declare-fun m!1400111 () Bool)

(assert (=> b!1516781 m!1400111))

(declare-fun m!1400113 () Bool)

(assert (=> b!1516782 m!1400113))

(assert (=> b!1516782 m!1400113))

(declare-fun m!1400115 () Bool)

(assert (=> b!1516782 m!1400115))

(declare-fun m!1400117 () Bool)

(assert (=> start!129254 m!1400117))

(declare-fun m!1400119 () Bool)

(assert (=> start!129254 m!1400119))

(declare-fun m!1400121 () Bool)

(assert (=> b!1516791 m!1400121))

(assert (=> b!1516791 m!1400121))

(declare-fun m!1400123 () Bool)

(assert (=> b!1516791 m!1400123))

(assert (=> b!1516783 m!1400121))

(assert (=> b!1516783 m!1400121))

(declare-fun m!1400125 () Bool)

(assert (=> b!1516783 m!1400125))

(assert (=> b!1516784 m!1400121))

(assert (=> b!1516784 m!1400121))

(declare-fun m!1400127 () Bool)

(assert (=> b!1516784 m!1400127))

(assert (=> b!1516784 m!1400127))

(assert (=> b!1516784 m!1400121))

(declare-fun m!1400129 () Bool)

(assert (=> b!1516784 m!1400129))

(declare-fun m!1400131 () Bool)

(assert (=> b!1516790 m!1400131))

(declare-fun m!1400133 () Bool)

(assert (=> b!1516790 m!1400133))

(assert (=> b!1516790 m!1400133))

(declare-fun m!1400135 () Bool)

(assert (=> b!1516790 m!1400135))

(assert (=> b!1516790 m!1400135))

(assert (=> b!1516790 m!1400133))

(declare-fun m!1400137 () Bool)

(assert (=> b!1516790 m!1400137))

(declare-fun m!1400139 () Bool)

(assert (=> b!1516789 m!1400139))

(declare-fun m!1400141 () Bool)

(assert (=> b!1516788 m!1400141))

(assert (=> b!1516786 m!1400121))

(declare-fun m!1400143 () Bool)

(assert (=> b!1516786 m!1400143))

(assert (=> b!1516786 m!1400131))

(assert (=> b!1516786 m!1400133))

(declare-fun m!1400145 () Bool)

(assert (=> b!1516786 m!1400145))

(assert (=> b!1516787 m!1400121))

(assert (=> b!1516787 m!1400121))

(declare-fun m!1400147 () Bool)

(assert (=> b!1516787 m!1400147))

(assert (=> b!1516780 m!1400121))

(assert (=> b!1516780 m!1400121))

(declare-fun m!1400149 () Bool)

(assert (=> b!1516780 m!1400149))

(push 1)

(assert (not b!1516789))

