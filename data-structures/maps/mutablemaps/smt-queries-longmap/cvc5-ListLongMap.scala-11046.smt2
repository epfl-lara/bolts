; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129154 () Bool)

(assert start!129154)

(declare-fun b!1514886 () Bool)

(declare-fun res!1034868 () Bool)

(declare-fun e!845423 () Bool)

(assert (=> b!1514886 (=> (not res!1034868) (not e!845423))))

(declare-datatypes ((array!100923 0))(
  ( (array!100924 (arr!48694 (Array (_ BitVec 32) (_ BitVec 64))) (size!49245 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100923)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514886 (= res!1034868 (validKeyInArray!0 (select (arr!48694 a!2804) i!961)))))

(declare-fun b!1514887 () Bool)

(declare-fun e!845425 () Bool)

(declare-fun e!845424 () Bool)

(assert (=> b!1514887 (= e!845425 e!845424)))

(declare-fun res!1034870 () Bool)

(assert (=> b!1514887 (=> (not res!1034870) (not e!845424))))

(declare-fun lt!656472 () array!100923)

(declare-datatypes ((SeekEntryResult!12886 0))(
  ( (MissingZero!12886 (index!53938 (_ BitVec 32))) (Found!12886 (index!53939 (_ BitVec 32))) (Intermediate!12886 (undefined!13698 Bool) (index!53940 (_ BitVec 32)) (x!135657 (_ BitVec 32))) (Undefined!12886) (MissingVacant!12886 (index!53941 (_ BitVec 32))) )
))
(declare-fun lt!656470 () SeekEntryResult!12886)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!656471 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100923 (_ BitVec 32)) SeekEntryResult!12886)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514887 (= res!1034870 (= lt!656470 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656471 mask!2512) lt!656471 lt!656472 mask!2512)))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1514887 (= lt!656471 (select (store (arr!48694 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514887 (= lt!656472 (array!100924 (store (arr!48694 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49245 a!2804)))))

(declare-fun b!1514888 () Bool)

(declare-fun e!845426 () Bool)

(declare-fun e!845420 () Bool)

(assert (=> b!1514888 (= e!845426 e!845420)))

(declare-fun res!1034871 () Bool)

(assert (=> b!1514888 (=> (not res!1034871) (not e!845420))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100923 (_ BitVec 32)) SeekEntryResult!12886)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100923 (_ BitVec 32)) SeekEntryResult!12886)

(assert (=> b!1514888 (= res!1034871 (= (seekEntryOrOpen!0 (select (arr!48694 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48694 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1514889 () Bool)

(assert (=> b!1514889 (= e!845420 (= (seekEntryOrOpen!0 lt!656471 lt!656472 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656471 lt!656472 mask!2512)))))

(declare-fun b!1514890 () Bool)

(declare-fun e!845422 () Bool)

(assert (=> b!1514890 (= e!845422 e!845426)))

(declare-fun res!1034864 () Bool)

(assert (=> b!1514890 (=> res!1034864 e!845426)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1514890 (= res!1034864 (or (not (= (select (arr!48694 a!2804) j!70) lt!656471)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48694 a!2804) index!487) (select (arr!48694 a!2804) j!70)) (not (= (select (arr!48694 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1514891 () Bool)

(declare-fun res!1034866 () Bool)

(assert (=> b!1514891 (=> (not res!1034866) (not e!845423))))

(assert (=> b!1514891 (= res!1034866 (validKeyInArray!0 (select (arr!48694 a!2804) j!70)))))

(declare-fun b!1514892 () Bool)

(declare-fun res!1034865 () Bool)

(assert (=> b!1514892 (=> (not res!1034865) (not e!845423))))

(assert (=> b!1514892 (= res!1034865 (and (= (size!49245 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49245 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49245 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1514893 () Bool)

(declare-fun res!1034867 () Bool)

(assert (=> b!1514893 (=> (not res!1034867) (not e!845423))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100923 (_ BitVec 32)) Bool)

(assert (=> b!1514893 (= res!1034867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1514895 () Bool)

(assert (=> b!1514895 (= e!845423 e!845425)))

(declare-fun res!1034874 () Bool)

(assert (=> b!1514895 (=> (not res!1034874) (not e!845425))))

(declare-fun lt!656473 () SeekEntryResult!12886)

(assert (=> b!1514895 (= res!1034874 (= lt!656470 lt!656473))))

(assert (=> b!1514895 (= lt!656473 (Intermediate!12886 false resIndex!21 resX!21))))

(assert (=> b!1514895 (= lt!656470 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48694 a!2804) j!70) mask!2512) (select (arr!48694 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1514896 () Bool)

(declare-fun res!1034873 () Bool)

(assert (=> b!1514896 (=> (not res!1034873) (not e!845422))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100923 (_ BitVec 32)) SeekEntryResult!12886)

(assert (=> b!1514896 (= res!1034873 (= (seekEntry!0 (select (arr!48694 a!2804) j!70) a!2804 mask!2512) (Found!12886 j!70)))))

(declare-fun b!1514897 () Bool)

(declare-fun res!1034872 () Bool)

(assert (=> b!1514897 (=> (not res!1034872) (not e!845425))))

(assert (=> b!1514897 (= res!1034872 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48694 a!2804) j!70) a!2804 mask!2512) lt!656473))))

(declare-fun b!1514898 () Bool)

(declare-fun res!1034869 () Bool)

(assert (=> b!1514898 (=> (not res!1034869) (not e!845423))))

(declare-datatypes ((List!35357 0))(
  ( (Nil!35354) (Cons!35353 (h!36766 (_ BitVec 64)) (t!50058 List!35357)) )
))
(declare-fun arrayNoDuplicates!0 (array!100923 (_ BitVec 32) List!35357) Bool)

(assert (=> b!1514898 (= res!1034869 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35354))))

(declare-fun b!1514899 () Bool)

(assert (=> b!1514899 (= e!845424 (not true))))

(assert (=> b!1514899 e!845422))

(declare-fun res!1034862 () Bool)

(assert (=> b!1514899 (=> (not res!1034862) (not e!845422))))

(assert (=> b!1514899 (= res!1034862 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50596 0))(
  ( (Unit!50597) )
))
(declare-fun lt!656469 () Unit!50596)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100923 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50596)

(assert (=> b!1514899 (= lt!656469 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514894 () Bool)

(declare-fun res!1034861 () Bool)

(assert (=> b!1514894 (=> (not res!1034861) (not e!845423))))

(assert (=> b!1514894 (= res!1034861 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49245 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49245 a!2804))))))

(declare-fun res!1034863 () Bool)

(assert (=> start!129154 (=> (not res!1034863) (not e!845423))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129154 (= res!1034863 (validMask!0 mask!2512))))

(assert (=> start!129154 e!845423))

(assert (=> start!129154 true))

(declare-fun array_inv!37639 (array!100923) Bool)

(assert (=> start!129154 (array_inv!37639 a!2804)))

(assert (= (and start!129154 res!1034863) b!1514892))

(assert (= (and b!1514892 res!1034865) b!1514886))

(assert (= (and b!1514886 res!1034868) b!1514891))

(assert (= (and b!1514891 res!1034866) b!1514893))

(assert (= (and b!1514893 res!1034867) b!1514898))

(assert (= (and b!1514898 res!1034869) b!1514894))

(assert (= (and b!1514894 res!1034861) b!1514895))

(assert (= (and b!1514895 res!1034874) b!1514897))

(assert (= (and b!1514897 res!1034872) b!1514887))

(assert (= (and b!1514887 res!1034870) b!1514899))

(assert (= (and b!1514899 res!1034862) b!1514896))

(assert (= (and b!1514896 res!1034873) b!1514890))

(assert (= (and b!1514890 (not res!1034864)) b!1514888))

(assert (= (and b!1514888 res!1034871) b!1514889))

(declare-fun m!1397943 () Bool)

(assert (=> b!1514886 m!1397943))

(assert (=> b!1514886 m!1397943))

(declare-fun m!1397945 () Bool)

(assert (=> b!1514886 m!1397945))

(declare-fun m!1397947 () Bool)

(assert (=> b!1514896 m!1397947))

(assert (=> b!1514896 m!1397947))

(declare-fun m!1397949 () Bool)

(assert (=> b!1514896 m!1397949))

(declare-fun m!1397951 () Bool)

(assert (=> b!1514898 m!1397951))

(declare-fun m!1397953 () Bool)

(assert (=> b!1514893 m!1397953))

(assert (=> b!1514888 m!1397947))

(assert (=> b!1514888 m!1397947))

(declare-fun m!1397955 () Bool)

(assert (=> b!1514888 m!1397955))

(assert (=> b!1514888 m!1397947))

(declare-fun m!1397957 () Bool)

(assert (=> b!1514888 m!1397957))

(assert (=> b!1514890 m!1397947))

(declare-fun m!1397959 () Bool)

(assert (=> b!1514890 m!1397959))

(assert (=> b!1514895 m!1397947))

(assert (=> b!1514895 m!1397947))

(declare-fun m!1397961 () Bool)

(assert (=> b!1514895 m!1397961))

(assert (=> b!1514895 m!1397961))

(assert (=> b!1514895 m!1397947))

(declare-fun m!1397963 () Bool)

(assert (=> b!1514895 m!1397963))

(assert (=> b!1514891 m!1397947))

(assert (=> b!1514891 m!1397947))

(declare-fun m!1397965 () Bool)

(assert (=> b!1514891 m!1397965))

(declare-fun m!1397967 () Bool)

(assert (=> start!129154 m!1397967))

(declare-fun m!1397969 () Bool)

(assert (=> start!129154 m!1397969))

(declare-fun m!1397971 () Bool)

(assert (=> b!1514899 m!1397971))

(declare-fun m!1397973 () Bool)

(assert (=> b!1514899 m!1397973))

(declare-fun m!1397975 () Bool)

(assert (=> b!1514887 m!1397975))

(assert (=> b!1514887 m!1397975))

(declare-fun m!1397977 () Bool)

(assert (=> b!1514887 m!1397977))

(declare-fun m!1397979 () Bool)

(assert (=> b!1514887 m!1397979))

(declare-fun m!1397981 () Bool)

(assert (=> b!1514887 m!1397981))

(declare-fun m!1397983 () Bool)

(assert (=> b!1514889 m!1397983))

(declare-fun m!1397985 () Bool)

(assert (=> b!1514889 m!1397985))

(assert (=> b!1514897 m!1397947))

(assert (=> b!1514897 m!1397947))

(declare-fun m!1397987 () Bool)

(assert (=> b!1514897 m!1397987))

(push 1)

