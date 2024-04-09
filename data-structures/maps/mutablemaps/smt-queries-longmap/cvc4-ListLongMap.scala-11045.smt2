; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129152 () Bool)

(assert start!129152)

(declare-fun b!1514844 () Bool)

(declare-fun res!1034819 () Bool)

(declare-fun e!845402 () Bool)

(assert (=> b!1514844 (=> (not res!1034819) (not e!845402))))

(declare-datatypes ((array!100921 0))(
  ( (array!100922 (arr!48693 (Array (_ BitVec 32) (_ BitVec 64))) (size!49244 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100921)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100921 (_ BitVec 32)) Bool)

(assert (=> b!1514844 (= res!1034819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1514845 () Bool)

(declare-fun res!1034825 () Bool)

(declare-fun e!845401 () Bool)

(assert (=> b!1514845 (=> (not res!1034825) (not e!845401))))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12885 0))(
  ( (MissingZero!12885 (index!53934 (_ BitVec 32))) (Found!12885 (index!53935 (_ BitVec 32))) (Intermediate!12885 (undefined!13697 Bool) (index!53936 (_ BitVec 32)) (x!135648 (_ BitVec 32))) (Undefined!12885) (MissingVacant!12885 (index!53937 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100921 (_ BitVec 32)) SeekEntryResult!12885)

(assert (=> b!1514845 (= res!1034825 (= (seekEntry!0 (select (arr!48693 a!2804) j!70) a!2804 mask!2512) (Found!12885 j!70)))))

(declare-fun b!1514846 () Bool)

(declare-fun res!1034826 () Bool)

(assert (=> b!1514846 (=> (not res!1034826) (not e!845402))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514846 (= res!1034826 (validKeyInArray!0 (select (arr!48693 a!2804) j!70)))))

(declare-fun b!1514847 () Bool)

(declare-fun e!845404 () Bool)

(declare-fun e!845403 () Bool)

(assert (=> b!1514847 (= e!845404 e!845403)))

(declare-fun res!1034822 () Bool)

(assert (=> b!1514847 (=> (not res!1034822) (not e!845403))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100921 (_ BitVec 32)) SeekEntryResult!12885)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100921 (_ BitVec 32)) SeekEntryResult!12885)

(assert (=> b!1514847 (= res!1034822 (= (seekEntryOrOpen!0 (select (arr!48693 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48693 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun res!1034832 () Bool)

(assert (=> start!129152 (=> (not res!1034832) (not e!845402))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129152 (= res!1034832 (validMask!0 mask!2512))))

(assert (=> start!129152 e!845402))

(assert (=> start!129152 true))

(declare-fun array_inv!37638 (array!100921) Bool)

(assert (=> start!129152 (array_inv!37638 a!2804)))

(declare-fun b!1514848 () Bool)

(declare-fun res!1034830 () Bool)

(assert (=> b!1514848 (=> (not res!1034830) (not e!845402))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1514848 (= res!1034830 (and (= (size!49244 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49244 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49244 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1514849 () Bool)

(declare-fun res!1034821 () Bool)

(assert (=> b!1514849 (=> (not res!1034821) (not e!845402))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1514849 (= res!1034821 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49244 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49244 a!2804))))))

(declare-fun lt!656456 () array!100921)

(declare-fun b!1514850 () Bool)

(declare-fun lt!656454 () (_ BitVec 64))

(assert (=> b!1514850 (= e!845403 (= (seekEntryOrOpen!0 lt!656454 lt!656456 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656454 lt!656456 mask!2512)))))

(declare-fun b!1514851 () Bool)

(assert (=> b!1514851 (= e!845401 e!845404)))

(declare-fun res!1034828 () Bool)

(assert (=> b!1514851 (=> res!1034828 e!845404)))

(assert (=> b!1514851 (= res!1034828 (or (not (= (select (arr!48693 a!2804) j!70) lt!656454)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48693 a!2804) index!487) (select (arr!48693 a!2804) j!70)) (not (= (select (arr!48693 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1514852 () Bool)

(declare-fun e!845405 () Bool)

(assert (=> b!1514852 (= e!845402 e!845405)))

(declare-fun res!1034829 () Bool)

(assert (=> b!1514852 (=> (not res!1034829) (not e!845405))))

(declare-fun lt!656457 () SeekEntryResult!12885)

(declare-fun lt!656458 () SeekEntryResult!12885)

(assert (=> b!1514852 (= res!1034829 (= lt!656457 lt!656458))))

(assert (=> b!1514852 (= lt!656458 (Intermediate!12885 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100921 (_ BitVec 32)) SeekEntryResult!12885)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514852 (= lt!656457 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48693 a!2804) j!70) mask!2512) (select (arr!48693 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1514853 () Bool)

(declare-fun res!1034820 () Bool)

(assert (=> b!1514853 (=> (not res!1034820) (not e!845402))))

(declare-datatypes ((List!35356 0))(
  ( (Nil!35353) (Cons!35352 (h!36765 (_ BitVec 64)) (t!50057 List!35356)) )
))
(declare-fun arrayNoDuplicates!0 (array!100921 (_ BitVec 32) List!35356) Bool)

(assert (=> b!1514853 (= res!1034820 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35353))))

(declare-fun b!1514854 () Bool)

(declare-fun res!1034831 () Bool)

(assert (=> b!1514854 (=> (not res!1034831) (not e!845405))))

(assert (=> b!1514854 (= res!1034831 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48693 a!2804) j!70) a!2804 mask!2512) lt!656458))))

(declare-fun b!1514855 () Bool)

(declare-fun e!845399 () Bool)

(assert (=> b!1514855 (= e!845399 (not true))))

(assert (=> b!1514855 e!845401))

(declare-fun res!1034824 () Bool)

(assert (=> b!1514855 (=> (not res!1034824) (not e!845401))))

(assert (=> b!1514855 (= res!1034824 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50594 0))(
  ( (Unit!50595) )
))
(declare-fun lt!656455 () Unit!50594)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100921 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50594)

(assert (=> b!1514855 (= lt!656455 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514856 () Bool)

(assert (=> b!1514856 (= e!845405 e!845399)))

(declare-fun res!1034823 () Bool)

(assert (=> b!1514856 (=> (not res!1034823) (not e!845399))))

(assert (=> b!1514856 (= res!1034823 (= lt!656457 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656454 mask!2512) lt!656454 lt!656456 mask!2512)))))

(assert (=> b!1514856 (= lt!656454 (select (store (arr!48693 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514856 (= lt!656456 (array!100922 (store (arr!48693 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49244 a!2804)))))

(declare-fun b!1514857 () Bool)

(declare-fun res!1034827 () Bool)

(assert (=> b!1514857 (=> (not res!1034827) (not e!845402))))

(assert (=> b!1514857 (= res!1034827 (validKeyInArray!0 (select (arr!48693 a!2804) i!961)))))

(assert (= (and start!129152 res!1034832) b!1514848))

(assert (= (and b!1514848 res!1034830) b!1514857))

(assert (= (and b!1514857 res!1034827) b!1514846))

(assert (= (and b!1514846 res!1034826) b!1514844))

(assert (= (and b!1514844 res!1034819) b!1514853))

(assert (= (and b!1514853 res!1034820) b!1514849))

(assert (= (and b!1514849 res!1034821) b!1514852))

(assert (= (and b!1514852 res!1034829) b!1514854))

(assert (= (and b!1514854 res!1034831) b!1514856))

(assert (= (and b!1514856 res!1034823) b!1514855))

(assert (= (and b!1514855 res!1034824) b!1514845))

(assert (= (and b!1514845 res!1034825) b!1514851))

(assert (= (and b!1514851 (not res!1034828)) b!1514847))

(assert (= (and b!1514847 res!1034822) b!1514850))

(declare-fun m!1397897 () Bool)

(assert (=> b!1514846 m!1397897))

(assert (=> b!1514846 m!1397897))

(declare-fun m!1397899 () Bool)

(assert (=> b!1514846 m!1397899))

(assert (=> b!1514847 m!1397897))

(assert (=> b!1514847 m!1397897))

(declare-fun m!1397901 () Bool)

(assert (=> b!1514847 m!1397901))

(assert (=> b!1514847 m!1397897))

(declare-fun m!1397903 () Bool)

(assert (=> b!1514847 m!1397903))

(declare-fun m!1397905 () Bool)

(assert (=> b!1514855 m!1397905))

(declare-fun m!1397907 () Bool)

(assert (=> b!1514855 m!1397907))

(declare-fun m!1397909 () Bool)

(assert (=> b!1514844 m!1397909))

(assert (=> b!1514852 m!1397897))

(assert (=> b!1514852 m!1397897))

(declare-fun m!1397911 () Bool)

(assert (=> b!1514852 m!1397911))

(assert (=> b!1514852 m!1397911))

(assert (=> b!1514852 m!1397897))

(declare-fun m!1397913 () Bool)

(assert (=> b!1514852 m!1397913))

(declare-fun m!1397915 () Bool)

(assert (=> start!129152 m!1397915))

(declare-fun m!1397917 () Bool)

(assert (=> start!129152 m!1397917))

(assert (=> b!1514854 m!1397897))

(assert (=> b!1514854 m!1397897))

(declare-fun m!1397919 () Bool)

(assert (=> b!1514854 m!1397919))

(assert (=> b!1514851 m!1397897))

(declare-fun m!1397921 () Bool)

(assert (=> b!1514851 m!1397921))

(declare-fun m!1397923 () Bool)

(assert (=> b!1514856 m!1397923))

(assert (=> b!1514856 m!1397923))

(declare-fun m!1397925 () Bool)

(assert (=> b!1514856 m!1397925))

(declare-fun m!1397927 () Bool)

(assert (=> b!1514856 m!1397927))

(declare-fun m!1397929 () Bool)

(assert (=> b!1514856 m!1397929))

(declare-fun m!1397931 () Bool)

(assert (=> b!1514853 m!1397931))

(declare-fun m!1397933 () Bool)

(assert (=> b!1514850 m!1397933))

(declare-fun m!1397935 () Bool)

(assert (=> b!1514850 m!1397935))

(assert (=> b!1514845 m!1397897))

(assert (=> b!1514845 m!1397897))

(declare-fun m!1397937 () Bool)

(assert (=> b!1514845 m!1397937))

(declare-fun m!1397939 () Bool)

(assert (=> b!1514857 m!1397939))

(assert (=> b!1514857 m!1397939))

(declare-fun m!1397941 () Bool)

(assert (=> b!1514857 m!1397941))

(push 1)

