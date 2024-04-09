; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130130 () Bool)

(assert start!130130)

(declare-fun b!1526817 () Bool)

(declare-fun res!1044991 () Bool)

(declare-fun e!851040 () Bool)

(assert (=> b!1526817 (=> (not res!1044991) (not e!851040))))

(declare-datatypes ((array!101470 0))(
  ( (array!101471 (arr!48957 (Array (_ BitVec 32) (_ BitVec 64))) (size!49508 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101470)

(declare-datatypes ((List!35620 0))(
  ( (Nil!35617) (Cons!35616 (h!37050 (_ BitVec 64)) (t!50321 List!35620)) )
))
(declare-fun arrayNoDuplicates!0 (array!101470 (_ BitVec 32) List!35620) Bool)

(assert (=> b!1526817 (= res!1044991 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35617))))

(declare-fun b!1526818 () Bool)

(declare-fun e!851042 () Bool)

(declare-fun e!851037 () Bool)

(assert (=> b!1526818 (= e!851042 e!851037)))

(declare-fun res!1044994 () Bool)

(assert (=> b!1526818 (=> (not res!1044994) (not e!851037))))

(declare-fun lt!661177 () (_ BitVec 64))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!661179 () array!101470)

(declare-datatypes ((SeekEntryResult!13143 0))(
  ( (MissingZero!13143 (index!54966 (_ BitVec 32))) (Found!13143 (index!54967 (_ BitVec 32))) (Intermediate!13143 (undefined!13955 Bool) (index!54968 (_ BitVec 32)) (x!136664 (_ BitVec 32))) (Undefined!13143) (MissingVacant!13143 (index!54969 (_ BitVec 32))) )
))
(declare-fun lt!661176 () SeekEntryResult!13143)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101470 (_ BitVec 32)) SeekEntryResult!13143)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526818 (= res!1044994 (= lt!661176 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661177 mask!2512) lt!661177 lt!661179 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1526818 (= lt!661177 (select (store (arr!48957 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526818 (= lt!661179 (array!101471 (store (arr!48957 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49508 a!2804)))))

(declare-fun res!1045000 () Bool)

(assert (=> start!130130 (=> (not res!1045000) (not e!851040))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130130 (= res!1045000 (validMask!0 mask!2512))))

(assert (=> start!130130 e!851040))

(assert (=> start!130130 true))

(declare-fun array_inv!37902 (array!101470) Bool)

(assert (=> start!130130 (array_inv!37902 a!2804)))

(declare-fun b!1526819 () Bool)

(declare-fun res!1045001 () Bool)

(assert (=> b!1526819 (=> (not res!1045001) (not e!851042))))

(declare-fun lt!661180 () SeekEntryResult!13143)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1526819 (= res!1045001 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48957 a!2804) j!70) a!2804 mask!2512) lt!661180))))

(declare-fun e!851036 () Bool)

(declare-fun b!1526820 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101470 (_ BitVec 32)) SeekEntryResult!13143)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101470 (_ BitVec 32)) SeekEntryResult!13143)

(assert (=> b!1526820 (= e!851036 (= (seekEntryOrOpen!0 lt!661177 lt!661179 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661177 lt!661179 mask!2512)))))

(declare-fun b!1526821 () Bool)

(declare-fun res!1044992 () Bool)

(assert (=> b!1526821 (=> (not res!1044992) (not e!851040))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526821 (= res!1044992 (validKeyInArray!0 (select (arr!48957 a!2804) j!70)))))

(declare-fun b!1526822 () Bool)

(declare-fun res!1044999 () Bool)

(declare-fun e!851039 () Bool)

(assert (=> b!1526822 (=> (not res!1044999) (not e!851039))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101470 (_ BitVec 32)) SeekEntryResult!13143)

(assert (=> b!1526822 (= res!1044999 (= (seekEntry!0 (select (arr!48957 a!2804) j!70) a!2804 mask!2512) (Found!13143 j!70)))))

(declare-fun b!1526823 () Bool)

(declare-fun res!1044996 () Bool)

(assert (=> b!1526823 (=> (not res!1044996) (not e!851040))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1526823 (= res!1044996 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49508 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49508 a!2804))))))

(declare-fun b!1526824 () Bool)

(declare-fun res!1044995 () Bool)

(assert (=> b!1526824 (=> (not res!1044995) (not e!851040))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101470 (_ BitVec 32)) Bool)

(assert (=> b!1526824 (= res!1044995 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526825 () Bool)

(declare-fun res!1044998 () Bool)

(assert (=> b!1526825 (=> (not res!1044998) (not e!851040))))

(assert (=> b!1526825 (= res!1044998 (validKeyInArray!0 (select (arr!48957 a!2804) i!961)))))

(declare-fun b!1526826 () Bool)

(declare-fun e!851041 () Bool)

(assert (=> b!1526826 (= e!851041 e!851036)))

(declare-fun res!1044989 () Bool)

(assert (=> b!1526826 (=> (not res!1044989) (not e!851036))))

(assert (=> b!1526826 (= res!1044989 (= (seekEntryOrOpen!0 (select (arr!48957 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48957 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1526827 () Bool)

(declare-fun res!1044997 () Bool)

(assert (=> b!1526827 (=> (not res!1044997) (not e!851040))))

(assert (=> b!1526827 (= res!1044997 (and (= (size!49508 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49508 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49508 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1526828 () Bool)

(assert (=> b!1526828 (= e!851040 e!851042)))

(declare-fun res!1044993 () Bool)

(assert (=> b!1526828 (=> (not res!1044993) (not e!851042))))

(assert (=> b!1526828 (= res!1044993 (= lt!661176 lt!661180))))

(assert (=> b!1526828 (= lt!661180 (Intermediate!13143 false resIndex!21 resX!21))))

(assert (=> b!1526828 (= lt!661176 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48957 a!2804) j!70) mask!2512) (select (arr!48957 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1526829 () Bool)

(assert (=> b!1526829 (= e!851039 e!851041)))

(declare-fun res!1044990 () Bool)

(assert (=> b!1526829 (=> res!1044990 e!851041)))

(assert (=> b!1526829 (= res!1044990 (or (not (= (select (arr!48957 a!2804) j!70) lt!661177)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48957 a!2804) index!487) (select (arr!48957 a!2804) j!70)) (not (= (select (arr!48957 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1526830 () Bool)

(assert (=> b!1526830 (= e!851037 (not true))))

(assert (=> b!1526830 e!851039))

(declare-fun res!1045002 () Bool)

(assert (=> b!1526830 (=> (not res!1045002) (not e!851039))))

(assert (=> b!1526830 (= res!1045002 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51026 0))(
  ( (Unit!51027) )
))
(declare-fun lt!661178 () Unit!51026)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101470 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51026)

(assert (=> b!1526830 (= lt!661178 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!130130 res!1045000) b!1526827))

(assert (= (and b!1526827 res!1044997) b!1526825))

(assert (= (and b!1526825 res!1044998) b!1526821))

(assert (= (and b!1526821 res!1044992) b!1526824))

(assert (= (and b!1526824 res!1044995) b!1526817))

(assert (= (and b!1526817 res!1044991) b!1526823))

(assert (= (and b!1526823 res!1044996) b!1526828))

(assert (= (and b!1526828 res!1044993) b!1526819))

(assert (= (and b!1526819 res!1045001) b!1526818))

(assert (= (and b!1526818 res!1044994) b!1526830))

(assert (= (and b!1526830 res!1045002) b!1526822))

(assert (= (and b!1526822 res!1044999) b!1526829))

(assert (= (and b!1526829 (not res!1044990)) b!1526826))

(assert (= (and b!1526826 res!1044989) b!1526820))

(declare-fun m!1409717 () Bool)

(assert (=> b!1526822 m!1409717))

(assert (=> b!1526822 m!1409717))

(declare-fun m!1409719 () Bool)

(assert (=> b!1526822 m!1409719))

(declare-fun m!1409721 () Bool)

(assert (=> b!1526824 m!1409721))

(declare-fun m!1409723 () Bool)

(assert (=> b!1526818 m!1409723))

(assert (=> b!1526818 m!1409723))

(declare-fun m!1409725 () Bool)

(assert (=> b!1526818 m!1409725))

(declare-fun m!1409727 () Bool)

(assert (=> b!1526818 m!1409727))

(declare-fun m!1409729 () Bool)

(assert (=> b!1526818 m!1409729))

(declare-fun m!1409731 () Bool)

(assert (=> start!130130 m!1409731))

(declare-fun m!1409733 () Bool)

(assert (=> start!130130 m!1409733))

(assert (=> b!1526819 m!1409717))

(assert (=> b!1526819 m!1409717))

(declare-fun m!1409735 () Bool)

(assert (=> b!1526819 m!1409735))

(declare-fun m!1409737 () Bool)

(assert (=> b!1526830 m!1409737))

(declare-fun m!1409739 () Bool)

(assert (=> b!1526830 m!1409739))

(declare-fun m!1409741 () Bool)

(assert (=> b!1526817 m!1409741))

(assert (=> b!1526828 m!1409717))

(assert (=> b!1526828 m!1409717))

(declare-fun m!1409743 () Bool)

(assert (=> b!1526828 m!1409743))

(assert (=> b!1526828 m!1409743))

(assert (=> b!1526828 m!1409717))

(declare-fun m!1409745 () Bool)

(assert (=> b!1526828 m!1409745))

(declare-fun m!1409747 () Bool)

(assert (=> b!1526825 m!1409747))

(assert (=> b!1526825 m!1409747))

(declare-fun m!1409749 () Bool)

(assert (=> b!1526825 m!1409749))

(assert (=> b!1526821 m!1409717))

(assert (=> b!1526821 m!1409717))

(declare-fun m!1409751 () Bool)

(assert (=> b!1526821 m!1409751))

(assert (=> b!1526826 m!1409717))

(assert (=> b!1526826 m!1409717))

(declare-fun m!1409753 () Bool)

(assert (=> b!1526826 m!1409753))

(assert (=> b!1526826 m!1409717))

(declare-fun m!1409755 () Bool)

(assert (=> b!1526826 m!1409755))

(declare-fun m!1409757 () Bool)

(assert (=> b!1526820 m!1409757))

(declare-fun m!1409759 () Bool)

(assert (=> b!1526820 m!1409759))

(assert (=> b!1526829 m!1409717))

(declare-fun m!1409761 () Bool)

(assert (=> b!1526829 m!1409761))

(push 1)

