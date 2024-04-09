; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129062 () Bool)

(assert start!129062)

(declare-fun b!1512954 () Bool)

(declare-fun e!844457 () Bool)

(declare-fun e!844458 () Bool)

(assert (=> b!1512954 (= e!844457 e!844458)))

(declare-fun res!1032929 () Bool)

(assert (=> b!1512954 (=> (not res!1032929) (not e!844458))))

(declare-datatypes ((SeekEntryResult!12840 0))(
  ( (MissingZero!12840 (index!53754 (_ BitVec 32))) (Found!12840 (index!53755 (_ BitVec 32))) (Intermediate!12840 (undefined!13652 Bool) (index!53756 (_ BitVec 32)) (x!135483 (_ BitVec 32))) (Undefined!12840) (MissingVacant!12840 (index!53757 (_ BitVec 32))) )
))
(declare-fun lt!655780 () SeekEntryResult!12840)

(declare-fun lt!655783 () SeekEntryResult!12840)

(assert (=> b!1512954 (= res!1032929 (= lt!655780 lt!655783))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1512954 (= lt!655783 (Intermediate!12840 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100831 0))(
  ( (array!100832 (arr!48648 (Array (_ BitVec 32) (_ BitVec 64))) (size!49199 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100831)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100831 (_ BitVec 32)) SeekEntryResult!12840)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512954 (= lt!655780 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48648 a!2804) j!70) mask!2512) (select (arr!48648 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512955 () Bool)

(declare-fun res!1032931 () Bool)

(declare-fun e!844456 () Bool)

(assert (=> b!1512955 (=> (not res!1032931) (not e!844456))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100831 (_ BitVec 32)) SeekEntryResult!12840)

(assert (=> b!1512955 (= res!1032931 (= (seekEntry!0 (select (arr!48648 a!2804) j!70) a!2804 mask!2512) (Found!12840 j!70)))))

(declare-fun b!1512956 () Bool)

(declare-fun e!844460 () Bool)

(declare-fun e!844455 () Bool)

(assert (=> b!1512956 (= e!844460 (not e!844455))))

(declare-fun res!1032941 () Bool)

(assert (=> b!1512956 (=> res!1032941 e!844455)))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!655782 () (_ BitVec 64))

(assert (=> b!1512956 (= res!1032941 (or (not (= (select (arr!48648 a!2804) j!70) lt!655782)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48648 a!2804) index!487) (select (arr!48648 a!2804) j!70)) (not (= (select (arr!48648 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!2512 #b00000000000000000000000000000000) (bvsge index!487 (bvadd #b00000000000000000000000000000001 mask!2512)) (not (= (select (store (arr!48648 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1512956 e!844456))

(declare-fun res!1032938 () Bool)

(assert (=> b!1512956 (=> (not res!1032938) (not e!844456))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100831 (_ BitVec 32)) Bool)

(assert (=> b!1512956 (= res!1032938 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50504 0))(
  ( (Unit!50505) )
))
(declare-fun lt!655781 () Unit!50504)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100831 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50504)

(assert (=> b!1512956 (= lt!655781 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1512957 () Bool)

(declare-fun res!1032932 () Bool)

(assert (=> b!1512957 (=> (not res!1032932) (not e!844457))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512957 (= res!1032932 (validKeyInArray!0 (select (arr!48648 a!2804) i!961)))))

(declare-fun res!1032936 () Bool)

(assert (=> start!129062 (=> (not res!1032936) (not e!844457))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129062 (= res!1032936 (validMask!0 mask!2512))))

(assert (=> start!129062 e!844457))

(assert (=> start!129062 true))

(declare-fun array_inv!37593 (array!100831) Bool)

(assert (=> start!129062 (array_inv!37593 a!2804)))

(declare-fun b!1512958 () Bool)

(declare-fun res!1032940 () Bool)

(assert (=> b!1512958 (=> (not res!1032940) (not e!844457))))

(assert (=> b!1512958 (= res!1032940 (and (= (size!49199 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49199 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49199 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1512959 () Bool)

(declare-fun res!1032935 () Bool)

(assert (=> b!1512959 (=> (not res!1032935) (not e!844457))))

(declare-datatypes ((List!35311 0))(
  ( (Nil!35308) (Cons!35307 (h!36720 (_ BitVec 64)) (t!50012 List!35311)) )
))
(declare-fun arrayNoDuplicates!0 (array!100831 (_ BitVec 32) List!35311) Bool)

(assert (=> b!1512959 (= res!1032935 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35308))))

(declare-fun b!1512960 () Bool)

(declare-fun e!844459 () Bool)

(assert (=> b!1512960 (= e!844456 e!844459)))

(declare-fun res!1032939 () Bool)

(assert (=> b!1512960 (=> res!1032939 e!844459)))

(assert (=> b!1512960 (= res!1032939 (or (not (= (select (arr!48648 a!2804) j!70) lt!655782)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48648 a!2804) index!487) (select (arr!48648 a!2804) j!70)) (not (= (select (arr!48648 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512961 () Bool)

(assert (=> b!1512961 (= e!844455 (validKeyInArray!0 lt!655782))))

(declare-fun b!1512962 () Bool)

(declare-fun res!1032934 () Bool)

(assert (=> b!1512962 (=> (not res!1032934) (not e!844457))))

(assert (=> b!1512962 (= res!1032934 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49199 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49199 a!2804))))))

(declare-fun b!1512963 () Bool)

(declare-fun res!1032933 () Bool)

(assert (=> b!1512963 (=> (not res!1032933) (not e!844457))))

(assert (=> b!1512963 (= res!1032933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512964 () Bool)

(assert (=> b!1512964 (= e!844458 e!844460)))

(declare-fun res!1032930 () Bool)

(assert (=> b!1512964 (=> (not res!1032930) (not e!844460))))

(assert (=> b!1512964 (= res!1032930 (= lt!655780 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!655782 mask!2512) lt!655782 (array!100832 (store (arr!48648 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49199 a!2804)) mask!2512)))))

(assert (=> b!1512964 (= lt!655782 (select (store (arr!48648 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(declare-fun b!1512965 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100831 (_ BitVec 32)) SeekEntryResult!12840)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100831 (_ BitVec 32)) SeekEntryResult!12840)

(assert (=> b!1512965 (= e!844459 (= (seekEntryOrOpen!0 (select (arr!48648 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48648 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512966 () Bool)

(declare-fun res!1032942 () Bool)

(assert (=> b!1512966 (=> (not res!1032942) (not e!844457))))

(assert (=> b!1512966 (= res!1032942 (validKeyInArray!0 (select (arr!48648 a!2804) j!70)))))

(declare-fun b!1512967 () Bool)

(declare-fun res!1032937 () Bool)

(assert (=> b!1512967 (=> (not res!1032937) (not e!844458))))

(assert (=> b!1512967 (= res!1032937 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48648 a!2804) j!70) a!2804 mask!2512) lt!655783))))

(assert (= (and start!129062 res!1032936) b!1512958))

(assert (= (and b!1512958 res!1032940) b!1512957))

(assert (= (and b!1512957 res!1032932) b!1512966))

(assert (= (and b!1512966 res!1032942) b!1512963))

(assert (= (and b!1512963 res!1032933) b!1512959))

(assert (= (and b!1512959 res!1032935) b!1512962))

(assert (= (and b!1512962 res!1032934) b!1512954))

(assert (= (and b!1512954 res!1032929) b!1512967))

(assert (= (and b!1512967 res!1032937) b!1512964))

(assert (= (and b!1512964 res!1032930) b!1512956))

(assert (= (and b!1512956 res!1032938) b!1512955))

(assert (= (and b!1512955 res!1032931) b!1512960))

(assert (= (and b!1512960 (not res!1032939)) b!1512965))

(assert (= (and b!1512956 (not res!1032941)) b!1512961))

(declare-fun m!1395827 () Bool)

(assert (=> b!1512966 m!1395827))

(assert (=> b!1512966 m!1395827))

(declare-fun m!1395829 () Bool)

(assert (=> b!1512966 m!1395829))

(declare-fun m!1395831 () Bool)

(assert (=> b!1512963 m!1395831))

(assert (=> b!1512960 m!1395827))

(declare-fun m!1395833 () Bool)

(assert (=> b!1512960 m!1395833))

(declare-fun m!1395835 () Bool)

(assert (=> b!1512964 m!1395835))

(declare-fun m!1395837 () Bool)

(assert (=> b!1512964 m!1395837))

(assert (=> b!1512964 m!1395835))

(declare-fun m!1395839 () Bool)

(assert (=> b!1512964 m!1395839))

(declare-fun m!1395841 () Bool)

(assert (=> b!1512964 m!1395841))

(declare-fun m!1395843 () Bool)

(assert (=> b!1512959 m!1395843))

(assert (=> b!1512956 m!1395827))

(declare-fun m!1395845 () Bool)

(assert (=> b!1512956 m!1395845))

(assert (=> b!1512956 m!1395837))

(assert (=> b!1512956 m!1395833))

(declare-fun m!1395847 () Bool)

(assert (=> b!1512956 m!1395847))

(declare-fun m!1395849 () Bool)

(assert (=> b!1512956 m!1395849))

(assert (=> b!1512967 m!1395827))

(assert (=> b!1512967 m!1395827))

(declare-fun m!1395851 () Bool)

(assert (=> b!1512967 m!1395851))

(declare-fun m!1395853 () Bool)

(assert (=> b!1512957 m!1395853))

(assert (=> b!1512957 m!1395853))

(declare-fun m!1395855 () Bool)

(assert (=> b!1512957 m!1395855))

(declare-fun m!1395857 () Bool)

(assert (=> start!129062 m!1395857))

(declare-fun m!1395859 () Bool)

(assert (=> start!129062 m!1395859))

(assert (=> b!1512954 m!1395827))

(assert (=> b!1512954 m!1395827))

(declare-fun m!1395861 () Bool)

(assert (=> b!1512954 m!1395861))

(assert (=> b!1512954 m!1395861))

(assert (=> b!1512954 m!1395827))

(declare-fun m!1395863 () Bool)

(assert (=> b!1512954 m!1395863))

(declare-fun m!1395865 () Bool)

(assert (=> b!1512961 m!1395865))

(assert (=> b!1512955 m!1395827))

(assert (=> b!1512955 m!1395827))

(declare-fun m!1395867 () Bool)

(assert (=> b!1512955 m!1395867))

(assert (=> b!1512965 m!1395827))

(assert (=> b!1512965 m!1395827))

(declare-fun m!1395869 () Bool)

(assert (=> b!1512965 m!1395869))

(assert (=> b!1512965 m!1395827))

(declare-fun m!1395871 () Bool)

(assert (=> b!1512965 m!1395871))

(push 1)

(assert (not start!129062))

(assert (not b!1512967))

(assert (not b!1512966))

(assert (not b!1512957))

(assert (not b!1512954))

(assert (not b!1512959))

(assert (not b!1512964))

(assert (not b!1512955))

(assert (not b!1512963))

(assert (not b!1512965))

(assert (not b!1512961))

(assert (not b!1512956))

(check-sat)

