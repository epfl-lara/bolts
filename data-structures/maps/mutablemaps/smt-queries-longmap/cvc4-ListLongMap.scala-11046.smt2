; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129158 () Bool)

(assert start!129158)

(declare-fun b!1514970 () Bool)

(declare-fun e!845464 () Bool)

(declare-fun e!845466 () Bool)

(assert (=> b!1514970 (= e!845464 e!845466)))

(declare-fun res!1034955 () Bool)

(assert (=> b!1514970 (=> (not res!1034955) (not e!845466))))

(declare-datatypes ((array!100927 0))(
  ( (array!100928 (arr!48696 (Array (_ BitVec 32) (_ BitVec 64))) (size!49247 (_ BitVec 32))) )
))
(declare-fun lt!656501 () array!100927)

(declare-fun lt!656499 () (_ BitVec 64))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12888 0))(
  ( (MissingZero!12888 (index!53946 (_ BitVec 32))) (Found!12888 (index!53947 (_ BitVec 32))) (Intermediate!12888 (undefined!13700 Bool) (index!53948 (_ BitVec 32)) (x!135659 (_ BitVec 32))) (Undefined!12888) (MissingVacant!12888 (index!53949 (_ BitVec 32))) )
))
(declare-fun lt!656500 () SeekEntryResult!12888)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100927 (_ BitVec 32)) SeekEntryResult!12888)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514970 (= res!1034955 (= lt!656500 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656499 mask!2512) lt!656499 lt!656501 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun a!2804 () array!100927)

(assert (=> b!1514970 (= lt!656499 (select (store (arr!48696 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514970 (= lt!656501 (array!100928 (store (arr!48696 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49247 a!2804)))))

(declare-fun b!1514971 () Bool)

(declare-fun res!1034945 () Bool)

(declare-fun e!845468 () Bool)

(assert (=> b!1514971 (=> (not res!1034945) (not e!845468))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514971 (= res!1034945 (validKeyInArray!0 (select (arr!48696 a!2804) j!70)))))

(declare-fun b!1514972 () Bool)

(declare-fun res!1034946 () Bool)

(assert (=> b!1514972 (=> (not res!1034946) (not e!845464))))

(declare-fun lt!656502 () SeekEntryResult!12888)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1514972 (= res!1034946 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48696 a!2804) j!70) a!2804 mask!2512) lt!656502))))

(declare-fun b!1514973 () Bool)

(declare-fun res!1034954 () Bool)

(assert (=> b!1514973 (=> (not res!1034954) (not e!845468))))

(assert (=> b!1514973 (= res!1034954 (and (= (size!49247 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49247 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49247 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1514974 () Bool)

(declare-fun res!1034949 () Bool)

(assert (=> b!1514974 (=> (not res!1034949) (not e!845468))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1514974 (= res!1034949 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49247 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49247 a!2804))))))

(declare-fun b!1514975 () Bool)

(declare-fun res!1034956 () Bool)

(assert (=> b!1514975 (=> (not res!1034956) (not e!845468))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100927 (_ BitVec 32)) Bool)

(assert (=> b!1514975 (= res!1034956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1514976 () Bool)

(declare-fun e!845463 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100927 (_ BitVec 32)) SeekEntryResult!12888)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100927 (_ BitVec 32)) SeekEntryResult!12888)

(assert (=> b!1514976 (= e!845463 (= (seekEntryOrOpen!0 lt!656499 lt!656501 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656499 lt!656501 mask!2512)))))

(declare-fun b!1514977 () Bool)

(declare-fun res!1034948 () Bool)

(declare-fun e!845465 () Bool)

(assert (=> b!1514977 (=> (not res!1034948) (not e!845465))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100927 (_ BitVec 32)) SeekEntryResult!12888)

(assert (=> b!1514977 (= res!1034948 (= (seekEntry!0 (select (arr!48696 a!2804) j!70) a!2804 mask!2512) (Found!12888 j!70)))))

(declare-fun b!1514978 () Bool)

(declare-fun e!845467 () Bool)

(assert (=> b!1514978 (= e!845465 e!845467)))

(declare-fun res!1034950 () Bool)

(assert (=> b!1514978 (=> res!1034950 e!845467)))

(assert (=> b!1514978 (= res!1034950 (or (not (= (select (arr!48696 a!2804) j!70) lt!656499)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48696 a!2804) index!487) (select (arr!48696 a!2804) j!70)) (not (= (select (arr!48696 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1514979 () Bool)

(assert (=> b!1514979 (= e!845468 e!845464)))

(declare-fun res!1034951 () Bool)

(assert (=> b!1514979 (=> (not res!1034951) (not e!845464))))

(assert (=> b!1514979 (= res!1034951 (= lt!656500 lt!656502))))

(assert (=> b!1514979 (= lt!656502 (Intermediate!12888 false resIndex!21 resX!21))))

(assert (=> b!1514979 (= lt!656500 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48696 a!2804) j!70) mask!2512) (select (arr!48696 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1514980 () Bool)

(declare-fun res!1034947 () Bool)

(assert (=> b!1514980 (=> (not res!1034947) (not e!845468))))

(assert (=> b!1514980 (= res!1034947 (validKeyInArray!0 (select (arr!48696 a!2804) i!961)))))

(declare-fun b!1514981 () Bool)

(assert (=> b!1514981 (= e!845466 (not true))))

(assert (=> b!1514981 e!845465))

(declare-fun res!1034958 () Bool)

(assert (=> b!1514981 (=> (not res!1034958) (not e!845465))))

(assert (=> b!1514981 (= res!1034958 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50600 0))(
  ( (Unit!50601) )
))
(declare-fun lt!656503 () Unit!50600)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100927 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50600)

(assert (=> b!1514981 (= lt!656503 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514982 () Bool)

(declare-fun res!1034952 () Bool)

(assert (=> b!1514982 (=> (not res!1034952) (not e!845468))))

(declare-datatypes ((List!35359 0))(
  ( (Nil!35356) (Cons!35355 (h!36768 (_ BitVec 64)) (t!50060 List!35359)) )
))
(declare-fun arrayNoDuplicates!0 (array!100927 (_ BitVec 32) List!35359) Bool)

(assert (=> b!1514982 (= res!1034952 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35356))))

(declare-fun res!1034957 () Bool)

(assert (=> start!129158 (=> (not res!1034957) (not e!845468))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129158 (= res!1034957 (validMask!0 mask!2512))))

(assert (=> start!129158 e!845468))

(assert (=> start!129158 true))

(declare-fun array_inv!37641 (array!100927) Bool)

(assert (=> start!129158 (array_inv!37641 a!2804)))

(declare-fun b!1514983 () Bool)

(assert (=> b!1514983 (= e!845467 e!845463)))

(declare-fun res!1034953 () Bool)

(assert (=> b!1514983 (=> (not res!1034953) (not e!845463))))

(assert (=> b!1514983 (= res!1034953 (= (seekEntryOrOpen!0 (select (arr!48696 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48696 a!2804) j!70) a!2804 mask!2512)))))

(assert (= (and start!129158 res!1034957) b!1514973))

(assert (= (and b!1514973 res!1034954) b!1514980))

(assert (= (and b!1514980 res!1034947) b!1514971))

(assert (= (and b!1514971 res!1034945) b!1514975))

(assert (= (and b!1514975 res!1034956) b!1514982))

(assert (= (and b!1514982 res!1034952) b!1514974))

(assert (= (and b!1514974 res!1034949) b!1514979))

(assert (= (and b!1514979 res!1034951) b!1514972))

(assert (= (and b!1514972 res!1034946) b!1514970))

(assert (= (and b!1514970 res!1034955) b!1514981))

(assert (= (and b!1514981 res!1034958) b!1514977))

(assert (= (and b!1514977 res!1034948) b!1514978))

(assert (= (and b!1514978 (not res!1034950)) b!1514983))

(assert (= (and b!1514983 res!1034953) b!1514976))

(declare-fun m!1398035 () Bool)

(assert (=> start!129158 m!1398035))

(declare-fun m!1398037 () Bool)

(assert (=> start!129158 m!1398037))

(declare-fun m!1398039 () Bool)

(assert (=> b!1514980 m!1398039))

(assert (=> b!1514980 m!1398039))

(declare-fun m!1398041 () Bool)

(assert (=> b!1514980 m!1398041))

(declare-fun m!1398043 () Bool)

(assert (=> b!1514979 m!1398043))

(assert (=> b!1514979 m!1398043))

(declare-fun m!1398045 () Bool)

(assert (=> b!1514979 m!1398045))

(assert (=> b!1514979 m!1398045))

(assert (=> b!1514979 m!1398043))

(declare-fun m!1398047 () Bool)

(assert (=> b!1514979 m!1398047))

(declare-fun m!1398049 () Bool)

(assert (=> b!1514970 m!1398049))

(assert (=> b!1514970 m!1398049))

(declare-fun m!1398051 () Bool)

(assert (=> b!1514970 m!1398051))

(declare-fun m!1398053 () Bool)

(assert (=> b!1514970 m!1398053))

(declare-fun m!1398055 () Bool)

(assert (=> b!1514970 m!1398055))

(declare-fun m!1398057 () Bool)

(assert (=> b!1514975 m!1398057))

(assert (=> b!1514977 m!1398043))

(assert (=> b!1514977 m!1398043))

(declare-fun m!1398059 () Bool)

(assert (=> b!1514977 m!1398059))

(declare-fun m!1398061 () Bool)

(assert (=> b!1514976 m!1398061))

(declare-fun m!1398063 () Bool)

(assert (=> b!1514976 m!1398063))

(assert (=> b!1514972 m!1398043))

(assert (=> b!1514972 m!1398043))

(declare-fun m!1398065 () Bool)

(assert (=> b!1514972 m!1398065))

(declare-fun m!1398067 () Bool)

(assert (=> b!1514982 m!1398067))

(assert (=> b!1514983 m!1398043))

(assert (=> b!1514983 m!1398043))

(declare-fun m!1398069 () Bool)

(assert (=> b!1514983 m!1398069))

(assert (=> b!1514983 m!1398043))

(declare-fun m!1398071 () Bool)

(assert (=> b!1514983 m!1398071))

(assert (=> b!1514971 m!1398043))

(assert (=> b!1514971 m!1398043))

(declare-fun m!1398073 () Bool)

(assert (=> b!1514971 m!1398073))

(declare-fun m!1398075 () Bool)

(assert (=> b!1514981 m!1398075))

(declare-fun m!1398077 () Bool)

(assert (=> b!1514981 m!1398077))

(assert (=> b!1514978 m!1398043))

(declare-fun m!1398079 () Bool)

(assert (=> b!1514978 m!1398079))

(push 1)

