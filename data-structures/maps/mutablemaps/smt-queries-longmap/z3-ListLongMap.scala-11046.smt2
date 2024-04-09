; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129156 () Bool)

(assert start!129156)

(declare-fun b!1514929 () Bool)

(declare-fun res!1034904 () Bool)

(declare-fun e!845447 () Bool)

(assert (=> b!1514929 (=> (not res!1034904) (not e!845447))))

(declare-datatypes ((array!100925 0))(
  ( (array!100926 (arr!48695 (Array (_ BitVec 32) (_ BitVec 64))) (size!49246 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100925)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514929 (= res!1034904 (validKeyInArray!0 (select (arr!48695 a!2804) j!70)))))

(declare-fun b!1514930 () Bool)

(declare-fun e!845441 () Bool)

(assert (=> b!1514930 (= e!845441 (not true))))

(declare-fun e!845442 () Bool)

(assert (=> b!1514930 e!845442))

(declare-fun res!1034908 () Bool)

(assert (=> b!1514930 (=> (not res!1034908) (not e!845442))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100925 (_ BitVec 32)) Bool)

(assert (=> b!1514930 (= res!1034908 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50598 0))(
  ( (Unit!50599) )
))
(declare-fun lt!656486 () Unit!50598)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100925 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50598)

(assert (=> b!1514930 (= lt!656486 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514931 () Bool)

(declare-fun res!1034903 () Bool)

(assert (=> b!1514931 (=> (not res!1034903) (not e!845447))))

(declare-datatypes ((List!35358 0))(
  ( (Nil!35355) (Cons!35354 (h!36767 (_ BitVec 64)) (t!50059 List!35358)) )
))
(declare-fun arrayNoDuplicates!0 (array!100925 (_ BitVec 32) List!35358) Bool)

(assert (=> b!1514931 (= res!1034903 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35355))))

(declare-fun b!1514932 () Bool)

(declare-fun res!1034915 () Bool)

(declare-fun e!845446 () Bool)

(assert (=> b!1514932 (=> (not res!1034915) (not e!845446))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12887 0))(
  ( (MissingZero!12887 (index!53942 (_ BitVec 32))) (Found!12887 (index!53943 (_ BitVec 32))) (Intermediate!12887 (undefined!13699 Bool) (index!53944 (_ BitVec 32)) (x!135658 (_ BitVec 32))) (Undefined!12887) (MissingVacant!12887 (index!53945 (_ BitVec 32))) )
))
(declare-fun lt!656484 () SeekEntryResult!12887)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100925 (_ BitVec 32)) SeekEntryResult!12887)

(assert (=> b!1514932 (= res!1034915 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48695 a!2804) j!70) a!2804 mask!2512) lt!656484))))

(declare-fun lt!656487 () (_ BitVec 64))

(declare-fun lt!656485 () array!100925)

(declare-fun b!1514933 () Bool)

(declare-fun e!845445 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100925 (_ BitVec 32)) SeekEntryResult!12887)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100925 (_ BitVec 32)) SeekEntryResult!12887)

(assert (=> b!1514933 (= e!845445 (= (seekEntryOrOpen!0 lt!656487 lt!656485 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656487 lt!656485 mask!2512)))))

(declare-fun b!1514934 () Bool)

(declare-fun res!1034905 () Bool)

(assert (=> b!1514934 (=> (not res!1034905) (not e!845447))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1514934 (= res!1034905 (and (= (size!49246 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49246 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49246 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1514935 () Bool)

(assert (=> b!1514935 (= e!845446 e!845441)))

(declare-fun res!1034910 () Bool)

(assert (=> b!1514935 (=> (not res!1034910) (not e!845441))))

(declare-fun lt!656488 () SeekEntryResult!12887)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514935 (= res!1034910 (= lt!656488 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656487 mask!2512) lt!656487 lt!656485 mask!2512)))))

(assert (=> b!1514935 (= lt!656487 (select (store (arr!48695 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514935 (= lt!656485 (array!100926 (store (arr!48695 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49246 a!2804)))))

(declare-fun b!1514936 () Bool)

(declare-fun e!845444 () Bool)

(assert (=> b!1514936 (= e!845442 e!845444)))

(declare-fun res!1034913 () Bool)

(assert (=> b!1514936 (=> res!1034913 e!845444)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1514936 (= res!1034913 (or (not (= (select (arr!48695 a!2804) j!70) lt!656487)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48695 a!2804) index!487) (select (arr!48695 a!2804) j!70)) (not (= (select (arr!48695 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1514937 () Bool)

(assert (=> b!1514937 (= e!845447 e!845446)))

(declare-fun res!1034907 () Bool)

(assert (=> b!1514937 (=> (not res!1034907) (not e!845446))))

(assert (=> b!1514937 (= res!1034907 (= lt!656488 lt!656484))))

(assert (=> b!1514937 (= lt!656484 (Intermediate!12887 false resIndex!21 resX!21))))

(assert (=> b!1514937 (= lt!656488 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48695 a!2804) j!70) mask!2512) (select (arr!48695 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1034911 () Bool)

(assert (=> start!129156 (=> (not res!1034911) (not e!845447))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129156 (= res!1034911 (validMask!0 mask!2512))))

(assert (=> start!129156 e!845447))

(assert (=> start!129156 true))

(declare-fun array_inv!37640 (array!100925) Bool)

(assert (=> start!129156 (array_inv!37640 a!2804)))

(declare-fun b!1514928 () Bool)

(declare-fun res!1034906 () Bool)

(assert (=> b!1514928 (=> (not res!1034906) (not e!845442))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100925 (_ BitVec 32)) SeekEntryResult!12887)

(assert (=> b!1514928 (= res!1034906 (= (seekEntry!0 (select (arr!48695 a!2804) j!70) a!2804 mask!2512) (Found!12887 j!70)))))

(declare-fun b!1514938 () Bool)

(declare-fun res!1034909 () Bool)

(assert (=> b!1514938 (=> (not res!1034909) (not e!845447))))

(assert (=> b!1514938 (= res!1034909 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49246 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49246 a!2804))))))

(declare-fun b!1514939 () Bool)

(declare-fun res!1034914 () Bool)

(assert (=> b!1514939 (=> (not res!1034914) (not e!845447))))

(assert (=> b!1514939 (= res!1034914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1514940 () Bool)

(declare-fun res!1034916 () Bool)

(assert (=> b!1514940 (=> (not res!1034916) (not e!845447))))

(assert (=> b!1514940 (= res!1034916 (validKeyInArray!0 (select (arr!48695 a!2804) i!961)))))

(declare-fun b!1514941 () Bool)

(assert (=> b!1514941 (= e!845444 e!845445)))

(declare-fun res!1034912 () Bool)

(assert (=> b!1514941 (=> (not res!1034912) (not e!845445))))

(assert (=> b!1514941 (= res!1034912 (= (seekEntryOrOpen!0 (select (arr!48695 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48695 a!2804) j!70) a!2804 mask!2512)))))

(assert (= (and start!129156 res!1034911) b!1514934))

(assert (= (and b!1514934 res!1034905) b!1514940))

(assert (= (and b!1514940 res!1034916) b!1514929))

(assert (= (and b!1514929 res!1034904) b!1514939))

(assert (= (and b!1514939 res!1034914) b!1514931))

(assert (= (and b!1514931 res!1034903) b!1514938))

(assert (= (and b!1514938 res!1034909) b!1514937))

(assert (= (and b!1514937 res!1034907) b!1514932))

(assert (= (and b!1514932 res!1034915) b!1514935))

(assert (= (and b!1514935 res!1034910) b!1514930))

(assert (= (and b!1514930 res!1034908) b!1514928))

(assert (= (and b!1514928 res!1034906) b!1514936))

(assert (= (and b!1514936 (not res!1034913)) b!1514941))

(assert (= (and b!1514941 res!1034912) b!1514933))

(declare-fun m!1397989 () Bool)

(assert (=> b!1514931 m!1397989))

(declare-fun m!1397991 () Bool)

(assert (=> b!1514930 m!1397991))

(declare-fun m!1397993 () Bool)

(assert (=> b!1514930 m!1397993))

(declare-fun m!1397995 () Bool)

(assert (=> b!1514932 m!1397995))

(assert (=> b!1514932 m!1397995))

(declare-fun m!1397997 () Bool)

(assert (=> b!1514932 m!1397997))

(assert (=> b!1514936 m!1397995))

(declare-fun m!1397999 () Bool)

(assert (=> b!1514936 m!1397999))

(declare-fun m!1398001 () Bool)

(assert (=> b!1514940 m!1398001))

(assert (=> b!1514940 m!1398001))

(declare-fun m!1398003 () Bool)

(assert (=> b!1514940 m!1398003))

(assert (=> b!1514937 m!1397995))

(assert (=> b!1514937 m!1397995))

(declare-fun m!1398005 () Bool)

(assert (=> b!1514937 m!1398005))

(assert (=> b!1514937 m!1398005))

(assert (=> b!1514937 m!1397995))

(declare-fun m!1398007 () Bool)

(assert (=> b!1514937 m!1398007))

(declare-fun m!1398009 () Bool)

(assert (=> b!1514939 m!1398009))

(assert (=> b!1514941 m!1397995))

(assert (=> b!1514941 m!1397995))

(declare-fun m!1398011 () Bool)

(assert (=> b!1514941 m!1398011))

(assert (=> b!1514941 m!1397995))

(declare-fun m!1398013 () Bool)

(assert (=> b!1514941 m!1398013))

(assert (=> b!1514928 m!1397995))

(assert (=> b!1514928 m!1397995))

(declare-fun m!1398015 () Bool)

(assert (=> b!1514928 m!1398015))

(assert (=> b!1514929 m!1397995))

(assert (=> b!1514929 m!1397995))

(declare-fun m!1398017 () Bool)

(assert (=> b!1514929 m!1398017))

(declare-fun m!1398019 () Bool)

(assert (=> start!129156 m!1398019))

(declare-fun m!1398021 () Bool)

(assert (=> start!129156 m!1398021))

(declare-fun m!1398023 () Bool)

(assert (=> b!1514933 m!1398023))

(declare-fun m!1398025 () Bool)

(assert (=> b!1514933 m!1398025))

(declare-fun m!1398027 () Bool)

(assert (=> b!1514935 m!1398027))

(assert (=> b!1514935 m!1398027))

(declare-fun m!1398029 () Bool)

(assert (=> b!1514935 m!1398029))

(declare-fun m!1398031 () Bool)

(assert (=> b!1514935 m!1398031))

(declare-fun m!1398033 () Bool)

(assert (=> b!1514935 m!1398033))

(check-sat (not b!1514928) (not b!1514939) (not b!1514937) (not b!1514929) (not b!1514931) (not b!1514935) (not b!1514933) (not start!129156) (not b!1514940) (not b!1514941) (not b!1514930) (not b!1514932))
(check-sat)
