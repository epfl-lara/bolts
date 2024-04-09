; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129010 () Bool)

(assert start!129010)

(declare-fun b!1511925 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((array!100779 0))(
  ( (array!100780 (arr!48622 (Array (_ BitVec 32) (_ BitVec 64))) (size!49173 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100779)

(declare-fun e!844036 () Bool)

(declare-datatypes ((SeekEntryResult!12814 0))(
  ( (MissingZero!12814 (index!53650 (_ BitVec 32))) (Found!12814 (index!53651 (_ BitVec 32))) (Intermediate!12814 (undefined!13626 Bool) (index!53652 (_ BitVec 32)) (x!135393 (_ BitVec 32))) (Undefined!12814) (MissingVacant!12814 (index!53653 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100779 (_ BitVec 32)) SeekEntryResult!12814)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100779 (_ BitVec 32)) SeekEntryResult!12814)

(assert (=> b!1511925 (= e!844036 (= (seekEntryOrOpen!0 (select (arr!48622 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48622 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1511926 () Bool)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun e!844034 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511926 (= e!844034 (validKeyInArray!0 (select (store (arr!48622 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(declare-fun b!1511927 () Bool)

(declare-fun e!844037 () Bool)

(assert (=> b!1511927 (= e!844037 e!844036)))

(declare-fun res!1031901 () Bool)

(assert (=> b!1511927 (=> res!1031901 e!844036)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1511927 (= res!1031901 (or (not (= (select (arr!48622 a!2804) j!70) (select (store (arr!48622 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48622 a!2804) index!487) (select (arr!48622 a!2804) j!70)) (not (= (select (arr!48622 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1511928 () Bool)

(declare-fun res!1031906 () Bool)

(declare-fun e!844033 () Bool)

(assert (=> b!1511928 (=> (not res!1031906) (not e!844033))))

(assert (=> b!1511928 (= res!1031906 (and (= (size!49173 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49173 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49173 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511929 () Bool)

(declare-fun res!1031913 () Bool)

(assert (=> b!1511929 (=> (not res!1031913) (not e!844037))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100779 (_ BitVec 32)) SeekEntryResult!12814)

(assert (=> b!1511929 (= res!1031913 (= (seekEntry!0 (select (arr!48622 a!2804) j!70) a!2804 mask!2512) (Found!12814 j!70)))))

(declare-fun b!1511930 () Bool)

(declare-fun e!844032 () Bool)

(assert (=> b!1511930 (= e!844033 e!844032)))

(declare-fun res!1031903 () Bool)

(assert (=> b!1511930 (=> (not res!1031903) (not e!844032))))

(declare-fun lt!655529 () SeekEntryResult!12814)

(declare-fun lt!655530 () SeekEntryResult!12814)

(assert (=> b!1511930 (= res!1031903 (= lt!655529 lt!655530))))

(assert (=> b!1511930 (= lt!655530 (Intermediate!12814 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100779 (_ BitVec 32)) SeekEntryResult!12814)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511930 (= lt!655529 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48622 a!2804) j!70) mask!2512) (select (arr!48622 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1031910 () Bool)

(assert (=> start!129010 (=> (not res!1031910) (not e!844033))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129010 (= res!1031910 (validMask!0 mask!2512))))

(assert (=> start!129010 e!844033))

(assert (=> start!129010 true))

(declare-fun array_inv!37567 (array!100779) Bool)

(assert (=> start!129010 (array_inv!37567 a!2804)))

(declare-fun b!1511931 () Bool)

(declare-fun res!1031909 () Bool)

(assert (=> b!1511931 (=> (not res!1031909) (not e!844032))))

(assert (=> b!1511931 (= res!1031909 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48622 a!2804) j!70) a!2804 mask!2512) lt!655530))))

(declare-fun b!1511932 () Bool)

(declare-fun res!1031904 () Bool)

(assert (=> b!1511932 (=> (not res!1031904) (not e!844032))))

(assert (=> b!1511932 (= res!1031904 (= lt!655529 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48622 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48622 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100780 (store (arr!48622 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49173 a!2804)) mask!2512)))))

(declare-fun b!1511933 () Bool)

(declare-fun res!1031907 () Bool)

(assert (=> b!1511933 (=> (not res!1031907) (not e!844033))))

(assert (=> b!1511933 (= res!1031907 (validKeyInArray!0 (select (arr!48622 a!2804) j!70)))))

(declare-fun b!1511934 () Bool)

(declare-fun res!1031911 () Bool)

(assert (=> b!1511934 (=> (not res!1031911) (not e!844033))))

(assert (=> b!1511934 (= res!1031911 (validKeyInArray!0 (select (arr!48622 a!2804) i!961)))))

(declare-fun b!1511935 () Bool)

(declare-fun res!1031912 () Bool)

(assert (=> b!1511935 (=> (not res!1031912) (not e!844033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100779 (_ BitVec 32)) Bool)

(assert (=> b!1511935 (= res!1031912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511936 () Bool)

(assert (=> b!1511936 (= e!844032 (not e!844034))))

(declare-fun res!1031905 () Bool)

(assert (=> b!1511936 (=> res!1031905 e!844034)))

(assert (=> b!1511936 (= res!1031905 (or (not (= (select (arr!48622 a!2804) j!70) (select (store (arr!48622 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48622 a!2804) index!487) (select (arr!48622 a!2804) j!70)) (not (= (select (arr!48622 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!2512 #b00000000000000000000000000000000)))))

(assert (=> b!1511936 e!844037))

(declare-fun res!1031908 () Bool)

(assert (=> b!1511936 (=> (not res!1031908) (not e!844037))))

(assert (=> b!1511936 (= res!1031908 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50452 0))(
  ( (Unit!50453) )
))
(declare-fun lt!655531 () Unit!50452)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100779 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50452)

(assert (=> b!1511936 (= lt!655531 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1511937 () Bool)

(declare-fun res!1031902 () Bool)

(assert (=> b!1511937 (=> (not res!1031902) (not e!844033))))

(assert (=> b!1511937 (= res!1031902 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49173 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49173 a!2804))))))

(declare-fun b!1511938 () Bool)

(declare-fun res!1031900 () Bool)

(assert (=> b!1511938 (=> (not res!1031900) (not e!844033))))

(declare-datatypes ((List!35285 0))(
  ( (Nil!35282) (Cons!35281 (h!36694 (_ BitVec 64)) (t!49986 List!35285)) )
))
(declare-fun arrayNoDuplicates!0 (array!100779 (_ BitVec 32) List!35285) Bool)

(assert (=> b!1511938 (= res!1031900 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35282))))

(assert (= (and start!129010 res!1031910) b!1511928))

(assert (= (and b!1511928 res!1031906) b!1511934))

(assert (= (and b!1511934 res!1031911) b!1511933))

(assert (= (and b!1511933 res!1031907) b!1511935))

(assert (= (and b!1511935 res!1031912) b!1511938))

(assert (= (and b!1511938 res!1031900) b!1511937))

(assert (= (and b!1511937 res!1031902) b!1511930))

(assert (= (and b!1511930 res!1031903) b!1511931))

(assert (= (and b!1511931 res!1031909) b!1511932))

(assert (= (and b!1511932 res!1031904) b!1511936))

(assert (= (and b!1511936 res!1031908) b!1511929))

(assert (= (and b!1511929 res!1031913) b!1511927))

(assert (= (and b!1511927 (not res!1031901)) b!1511925))

(assert (= (and b!1511936 (not res!1031905)) b!1511926))

(declare-fun m!1394715 () Bool)

(assert (=> b!1511929 m!1394715))

(assert (=> b!1511929 m!1394715))

(declare-fun m!1394717 () Bool)

(assert (=> b!1511929 m!1394717))

(assert (=> b!1511925 m!1394715))

(assert (=> b!1511925 m!1394715))

(declare-fun m!1394719 () Bool)

(assert (=> b!1511925 m!1394719))

(assert (=> b!1511925 m!1394715))

(declare-fun m!1394721 () Bool)

(assert (=> b!1511925 m!1394721))

(declare-fun m!1394723 () Bool)

(assert (=> start!129010 m!1394723))

(declare-fun m!1394725 () Bool)

(assert (=> start!129010 m!1394725))

(declare-fun m!1394727 () Bool)

(assert (=> b!1511935 m!1394727))

(declare-fun m!1394729 () Bool)

(assert (=> b!1511926 m!1394729))

(declare-fun m!1394731 () Bool)

(assert (=> b!1511926 m!1394731))

(assert (=> b!1511926 m!1394731))

(declare-fun m!1394733 () Bool)

(assert (=> b!1511926 m!1394733))

(declare-fun m!1394735 () Bool)

(assert (=> b!1511934 m!1394735))

(assert (=> b!1511934 m!1394735))

(declare-fun m!1394737 () Bool)

(assert (=> b!1511934 m!1394737))

(declare-fun m!1394739 () Bool)

(assert (=> b!1511938 m!1394739))

(assert (=> b!1511933 m!1394715))

(assert (=> b!1511933 m!1394715))

(declare-fun m!1394741 () Bool)

(assert (=> b!1511933 m!1394741))

(assert (=> b!1511936 m!1394715))

(declare-fun m!1394743 () Bool)

(assert (=> b!1511936 m!1394743))

(assert (=> b!1511936 m!1394729))

(declare-fun m!1394745 () Bool)

(assert (=> b!1511936 m!1394745))

(assert (=> b!1511936 m!1394731))

(declare-fun m!1394747 () Bool)

(assert (=> b!1511936 m!1394747))

(assert (=> b!1511932 m!1394729))

(assert (=> b!1511932 m!1394731))

(assert (=> b!1511932 m!1394731))

(declare-fun m!1394749 () Bool)

(assert (=> b!1511932 m!1394749))

(assert (=> b!1511932 m!1394749))

(assert (=> b!1511932 m!1394731))

(declare-fun m!1394751 () Bool)

(assert (=> b!1511932 m!1394751))

(assert (=> b!1511927 m!1394715))

(assert (=> b!1511927 m!1394729))

(assert (=> b!1511927 m!1394731))

(assert (=> b!1511927 m!1394745))

(assert (=> b!1511930 m!1394715))

(assert (=> b!1511930 m!1394715))

(declare-fun m!1394753 () Bool)

(assert (=> b!1511930 m!1394753))

(assert (=> b!1511930 m!1394753))

(assert (=> b!1511930 m!1394715))

(declare-fun m!1394755 () Bool)

(assert (=> b!1511930 m!1394755))

(assert (=> b!1511931 m!1394715))

(assert (=> b!1511931 m!1394715))

(declare-fun m!1394757 () Bool)

(assert (=> b!1511931 m!1394757))

(push 1)

