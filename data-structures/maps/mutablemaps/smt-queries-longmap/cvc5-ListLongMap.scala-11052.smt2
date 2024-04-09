; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129190 () Bool)

(assert start!129190)

(declare-fun b!1515595 () Bool)

(declare-fun res!1035572 () Bool)

(declare-fun e!845799 () Bool)

(assert (=> b!1515595 (=> (not res!1035572) (not e!845799))))

(declare-datatypes ((array!100959 0))(
  ( (array!100960 (arr!48712 (Array (_ BitVec 32) (_ BitVec 64))) (size!49263 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100959)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100959 (_ BitVec 32)) Bool)

(assert (=> b!1515595 (= res!1035572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1515596 () Bool)

(declare-fun e!845801 () Bool)

(assert (=> b!1515596 (= e!845799 e!845801)))

(declare-fun res!1035579 () Bool)

(assert (=> b!1515596 (=> (not res!1035579) (not e!845801))))

(declare-datatypes ((SeekEntryResult!12904 0))(
  ( (MissingZero!12904 (index!54010 (_ BitVec 32))) (Found!12904 (index!54011 (_ BitVec 32))) (Intermediate!12904 (undefined!13716 Bool) (index!54012 (_ BitVec 32)) (x!135723 (_ BitVec 32))) (Undefined!12904) (MissingVacant!12904 (index!54013 (_ BitVec 32))) )
))
(declare-fun lt!656978 () SeekEntryResult!12904)

(declare-fun lt!656980 () SeekEntryResult!12904)

(assert (=> b!1515596 (= res!1035579 (= lt!656978 lt!656980))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1515596 (= lt!656980 (Intermediate!12904 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100959 (_ BitVec 32)) SeekEntryResult!12904)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515596 (= lt!656978 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48712 a!2804) j!70) mask!2512) (select (arr!48712 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515597 () Bool)

(declare-fun res!1035576 () Bool)

(assert (=> b!1515597 (=> (not res!1035576) (not e!845799))))

(declare-datatypes ((List!35375 0))(
  ( (Nil!35372) (Cons!35371 (h!36784 (_ BitVec 64)) (t!50076 List!35375)) )
))
(declare-fun arrayNoDuplicates!0 (array!100959 (_ BitVec 32) List!35375) Bool)

(assert (=> b!1515597 (= res!1035576 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35372))))

(declare-fun b!1515598 () Bool)

(declare-fun e!845798 () Bool)

(declare-fun e!845803 () Bool)

(assert (=> b!1515598 (= e!845798 e!845803)))

(declare-fun res!1035577 () Bool)

(assert (=> b!1515598 (=> res!1035577 e!845803)))

(declare-fun lt!656977 () SeekEntryResult!12904)

(assert (=> b!1515598 (= res!1035577 (not (= lt!656977 (Found!12904 j!70))))))

(declare-fun lt!656983 () SeekEntryResult!12904)

(declare-fun lt!656975 () SeekEntryResult!12904)

(assert (=> b!1515598 (= lt!656983 lt!656975)))

(declare-fun lt!656982 () (_ BitVec 64))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!656979 () array!100959)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100959 (_ BitVec 32)) SeekEntryResult!12904)

(assert (=> b!1515598 (= lt!656975 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656982 lt!656979 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100959 (_ BitVec 32)) SeekEntryResult!12904)

(assert (=> b!1515598 (= lt!656983 (seekEntryOrOpen!0 lt!656982 lt!656979 mask!2512))))

(declare-fun lt!656976 () SeekEntryResult!12904)

(assert (=> b!1515598 (= lt!656976 lt!656977)))

(assert (=> b!1515598 (= lt!656977 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48712 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515598 (= lt!656976 (seekEntryOrOpen!0 (select (arr!48712 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1035580 () Bool)

(assert (=> start!129190 (=> (not res!1035580) (not e!845799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129190 (= res!1035580 (validMask!0 mask!2512))))

(assert (=> start!129190 e!845799))

(assert (=> start!129190 true))

(declare-fun array_inv!37657 (array!100959) Bool)

(assert (=> start!129190 (array_inv!37657 a!2804)))

(declare-fun b!1515599 () Bool)

(declare-fun res!1035581 () Bool)

(assert (=> b!1515599 (=> (not res!1035581) (not e!845799))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515599 (= res!1035581 (validKeyInArray!0 (select (arr!48712 a!2804) j!70)))))

(declare-fun b!1515600 () Bool)

(declare-fun e!845802 () Bool)

(assert (=> b!1515600 (= e!845801 e!845802)))

(declare-fun res!1035570 () Bool)

(assert (=> b!1515600 (=> (not res!1035570) (not e!845802))))

(assert (=> b!1515600 (= res!1035570 (= lt!656978 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656982 mask!2512) lt!656982 lt!656979 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1515600 (= lt!656982 (select (store (arr!48712 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515600 (= lt!656979 (array!100960 (store (arr!48712 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49263 a!2804)))))

(declare-fun b!1515601 () Bool)

(declare-fun res!1035582 () Bool)

(assert (=> b!1515601 (=> (not res!1035582) (not e!845799))))

(assert (=> b!1515601 (= res!1035582 (validKeyInArray!0 (select (arr!48712 a!2804) i!961)))))

(declare-fun e!845800 () Bool)

(declare-fun b!1515602 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100959 (_ BitVec 32)) SeekEntryResult!12904)

(assert (=> b!1515602 (= e!845800 (= (seekEntry!0 (select (arr!48712 a!2804) j!70) a!2804 mask!2512) (Found!12904 j!70)))))

(declare-fun b!1515603 () Bool)

(declare-fun res!1035575 () Bool)

(assert (=> b!1515603 (=> (not res!1035575) (not e!845799))))

(assert (=> b!1515603 (= res!1035575 (and (= (size!49263 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49263 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49263 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515604 () Bool)

(declare-fun res!1035573 () Bool)

(assert (=> b!1515604 (=> (not res!1035573) (not e!845799))))

(assert (=> b!1515604 (= res!1035573 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49263 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49263 a!2804))))))

(declare-fun b!1515605 () Bool)

(declare-fun res!1035571 () Bool)

(assert (=> b!1515605 (=> (not res!1035571) (not e!845801))))

(assert (=> b!1515605 (= res!1035571 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48712 a!2804) j!70) a!2804 mask!2512) lt!656980))))

(declare-fun b!1515606 () Bool)

(assert (=> b!1515606 (= e!845803 (bvsge mask!2512 #b00000000000000000000000000000000))))

(assert (=> b!1515606 (= lt!656975 lt!656977)))

(declare-datatypes ((Unit!50632 0))(
  ( (Unit!50633) )
))
(declare-fun lt!656974 () Unit!50632)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100959 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50632)

(assert (=> b!1515606 (= lt!656974 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1515607 () Bool)

(assert (=> b!1515607 (= e!845802 (not e!845798))))

(declare-fun res!1035574 () Bool)

(assert (=> b!1515607 (=> res!1035574 e!845798)))

(assert (=> b!1515607 (= res!1035574 (or (not (= (select (arr!48712 a!2804) j!70) lt!656982)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48712 a!2804) index!487) (select (arr!48712 a!2804) j!70)) (not (= (select (arr!48712 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1515607 e!845800))

(declare-fun res!1035578 () Bool)

(assert (=> b!1515607 (=> (not res!1035578) (not e!845800))))

(assert (=> b!1515607 (= res!1035578 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!656981 () Unit!50632)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100959 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50632)

(assert (=> b!1515607 (= lt!656981 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129190 res!1035580) b!1515603))

(assert (= (and b!1515603 res!1035575) b!1515601))

(assert (= (and b!1515601 res!1035582) b!1515599))

(assert (= (and b!1515599 res!1035581) b!1515595))

(assert (= (and b!1515595 res!1035572) b!1515597))

(assert (= (and b!1515597 res!1035576) b!1515604))

(assert (= (and b!1515604 res!1035573) b!1515596))

(assert (= (and b!1515596 res!1035579) b!1515605))

(assert (= (and b!1515605 res!1035571) b!1515600))

(assert (= (and b!1515600 res!1035570) b!1515607))

(assert (= (and b!1515607 res!1035578) b!1515602))

(assert (= (and b!1515607 (not res!1035574)) b!1515598))

(assert (= (and b!1515598 (not res!1035577)) b!1515606))

(declare-fun m!1398801 () Bool)

(assert (=> b!1515600 m!1398801))

(assert (=> b!1515600 m!1398801))

(declare-fun m!1398803 () Bool)

(assert (=> b!1515600 m!1398803))

(declare-fun m!1398805 () Bool)

(assert (=> b!1515600 m!1398805))

(declare-fun m!1398807 () Bool)

(assert (=> b!1515600 m!1398807))

(declare-fun m!1398809 () Bool)

(assert (=> b!1515606 m!1398809))

(declare-fun m!1398811 () Bool)

(assert (=> b!1515602 m!1398811))

(assert (=> b!1515602 m!1398811))

(declare-fun m!1398813 () Bool)

(assert (=> b!1515602 m!1398813))

(assert (=> b!1515607 m!1398811))

(declare-fun m!1398815 () Bool)

(assert (=> b!1515607 m!1398815))

(declare-fun m!1398817 () Bool)

(assert (=> b!1515607 m!1398817))

(declare-fun m!1398819 () Bool)

(assert (=> b!1515607 m!1398819))

(declare-fun m!1398821 () Bool)

(assert (=> b!1515597 m!1398821))

(assert (=> b!1515605 m!1398811))

(assert (=> b!1515605 m!1398811))

(declare-fun m!1398823 () Bool)

(assert (=> b!1515605 m!1398823))

(declare-fun m!1398825 () Bool)

(assert (=> b!1515601 m!1398825))

(assert (=> b!1515601 m!1398825))

(declare-fun m!1398827 () Bool)

(assert (=> b!1515601 m!1398827))

(assert (=> b!1515596 m!1398811))

(assert (=> b!1515596 m!1398811))

(declare-fun m!1398829 () Bool)

(assert (=> b!1515596 m!1398829))

(assert (=> b!1515596 m!1398829))

(assert (=> b!1515596 m!1398811))

(declare-fun m!1398831 () Bool)

(assert (=> b!1515596 m!1398831))

(declare-fun m!1398833 () Bool)

(assert (=> b!1515595 m!1398833))

(assert (=> b!1515599 m!1398811))

(assert (=> b!1515599 m!1398811))

(declare-fun m!1398835 () Bool)

(assert (=> b!1515599 m!1398835))

(declare-fun m!1398837 () Bool)

(assert (=> start!129190 m!1398837))

(declare-fun m!1398839 () Bool)

(assert (=> start!129190 m!1398839))

(assert (=> b!1515598 m!1398811))

(declare-fun m!1398841 () Bool)

(assert (=> b!1515598 m!1398841))

(assert (=> b!1515598 m!1398811))

(declare-fun m!1398843 () Bool)

(assert (=> b!1515598 m!1398843))

(assert (=> b!1515598 m!1398811))

(declare-fun m!1398845 () Bool)

(assert (=> b!1515598 m!1398845))

(declare-fun m!1398847 () Bool)

(assert (=> b!1515598 m!1398847))

(push 1)

