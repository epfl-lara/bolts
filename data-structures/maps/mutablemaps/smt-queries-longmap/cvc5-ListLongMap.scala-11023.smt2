; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129016 () Bool)

(assert start!129016)

(declare-fun res!1032029 () Bool)

(declare-fun e!844088 () Bool)

(assert (=> start!129016 (=> (not res!1032029) (not e!844088))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129016 (= res!1032029 (validMask!0 mask!2512))))

(assert (=> start!129016 e!844088))

(assert (=> start!129016 true))

(declare-datatypes ((array!100785 0))(
  ( (array!100786 (arr!48625 (Array (_ BitVec 32) (_ BitVec 64))) (size!49176 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100785)

(declare-fun array_inv!37570 (array!100785) Bool)

(assert (=> start!129016 (array_inv!37570 a!2804)))

(declare-fun b!1512049 () Bool)

(declare-fun e!844086 () Bool)

(assert (=> b!1512049 (= e!844088 e!844086)))

(declare-fun res!1032025 () Bool)

(assert (=> b!1512049 (=> (not res!1032025) (not e!844086))))

(declare-datatypes ((SeekEntryResult!12817 0))(
  ( (MissingZero!12817 (index!53662 (_ BitVec 32))) (Found!12817 (index!53663 (_ BitVec 32))) (Intermediate!12817 (undefined!13629 Bool) (index!53664 (_ BitVec 32)) (x!135404 (_ BitVec 32))) (Undefined!12817) (MissingVacant!12817 (index!53665 (_ BitVec 32))) )
))
(declare-fun lt!655557 () SeekEntryResult!12817)

(declare-fun lt!655556 () SeekEntryResult!12817)

(assert (=> b!1512049 (= res!1032025 (= lt!655557 lt!655556))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1512049 (= lt!655556 (Intermediate!12817 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100785 (_ BitVec 32)) SeekEntryResult!12817)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512049 (= lt!655557 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48625 a!2804) j!70) mask!2512) (select (arr!48625 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512050 () Bool)

(assert (=> b!1512050 (= e!844086 (not true))))

(declare-fun e!844085 () Bool)

(assert (=> b!1512050 e!844085))

(declare-fun res!1032028 () Bool)

(assert (=> b!1512050 (=> (not res!1032028) (not e!844085))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100785 (_ BitVec 32)) Bool)

(assert (=> b!1512050 (= res!1032028 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50458 0))(
  ( (Unit!50459) )
))
(declare-fun lt!655558 () Unit!50458)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100785 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50458)

(assert (=> b!1512050 (= lt!655558 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1512051 () Bool)

(declare-fun res!1032036 () Bool)

(assert (=> b!1512051 (=> (not res!1032036) (not e!844086))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1512051 (= res!1032036 (= lt!655557 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48625 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48625 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100786 (store (arr!48625 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49176 a!2804)) mask!2512)))))

(declare-fun b!1512052 () Bool)

(declare-fun res!1032032 () Bool)

(assert (=> b!1512052 (=> (not res!1032032) (not e!844088))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1512052 (= res!1032032 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49176 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49176 a!2804))))))

(declare-fun b!1512053 () Bool)

(declare-fun e!844084 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100785 (_ BitVec 32)) SeekEntryResult!12817)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100785 (_ BitVec 32)) SeekEntryResult!12817)

(assert (=> b!1512053 (= e!844084 (= (seekEntryOrOpen!0 (select (arr!48625 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48625 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512054 () Bool)

(declare-fun res!1032033 () Bool)

(assert (=> b!1512054 (=> (not res!1032033) (not e!844088))))

(declare-datatypes ((List!35288 0))(
  ( (Nil!35285) (Cons!35284 (h!36697 (_ BitVec 64)) (t!49989 List!35288)) )
))
(declare-fun arrayNoDuplicates!0 (array!100785 (_ BitVec 32) List!35288) Bool)

(assert (=> b!1512054 (= res!1032033 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35285))))

(declare-fun b!1512055 () Bool)

(declare-fun res!1032034 () Bool)

(assert (=> b!1512055 (=> (not res!1032034) (not e!844088))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512055 (= res!1032034 (validKeyInArray!0 (select (arr!48625 a!2804) i!961)))))

(declare-fun b!1512056 () Bool)

(declare-fun res!1032031 () Bool)

(assert (=> b!1512056 (=> (not res!1032031) (not e!844088))))

(assert (=> b!1512056 (= res!1032031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512057 () Bool)

(declare-fun res!1032030 () Bool)

(assert (=> b!1512057 (=> (not res!1032030) (not e!844088))))

(assert (=> b!1512057 (= res!1032030 (and (= (size!49176 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49176 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49176 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1512058 () Bool)

(declare-fun res!1032027 () Bool)

(assert (=> b!1512058 (=> (not res!1032027) (not e!844086))))

(assert (=> b!1512058 (= res!1032027 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48625 a!2804) j!70) a!2804 mask!2512) lt!655556))))

(declare-fun b!1512059 () Bool)

(declare-fun res!1032035 () Bool)

(assert (=> b!1512059 (=> (not res!1032035) (not e!844085))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100785 (_ BitVec 32)) SeekEntryResult!12817)

(assert (=> b!1512059 (= res!1032035 (= (seekEntry!0 (select (arr!48625 a!2804) j!70) a!2804 mask!2512) (Found!12817 j!70)))))

(declare-fun b!1512060 () Bool)

(assert (=> b!1512060 (= e!844085 e!844084)))

(declare-fun res!1032024 () Bool)

(assert (=> b!1512060 (=> res!1032024 e!844084)))

(assert (=> b!1512060 (= res!1032024 (or (not (= (select (arr!48625 a!2804) j!70) (select (store (arr!48625 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48625 a!2804) index!487) (select (arr!48625 a!2804) j!70)) (not (= (select (arr!48625 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512061 () Bool)

(declare-fun res!1032026 () Bool)

(assert (=> b!1512061 (=> (not res!1032026) (not e!844088))))

(assert (=> b!1512061 (= res!1032026 (validKeyInArray!0 (select (arr!48625 a!2804) j!70)))))

(assert (= (and start!129016 res!1032029) b!1512057))

(assert (= (and b!1512057 res!1032030) b!1512055))

(assert (= (and b!1512055 res!1032034) b!1512061))

(assert (= (and b!1512061 res!1032026) b!1512056))

(assert (= (and b!1512056 res!1032031) b!1512054))

(assert (= (and b!1512054 res!1032033) b!1512052))

(assert (= (and b!1512052 res!1032032) b!1512049))

(assert (= (and b!1512049 res!1032025) b!1512058))

(assert (= (and b!1512058 res!1032027) b!1512051))

(assert (= (and b!1512051 res!1032036) b!1512050))

(assert (= (and b!1512050 res!1032028) b!1512059))

(assert (= (and b!1512059 res!1032035) b!1512060))

(assert (= (and b!1512060 (not res!1032024)) b!1512053))

(declare-fun m!1394847 () Bool)

(assert (=> b!1512059 m!1394847))

(assert (=> b!1512059 m!1394847))

(declare-fun m!1394849 () Bool)

(assert (=> b!1512059 m!1394849))

(assert (=> b!1512053 m!1394847))

(assert (=> b!1512053 m!1394847))

(declare-fun m!1394851 () Bool)

(assert (=> b!1512053 m!1394851))

(assert (=> b!1512053 m!1394847))

(declare-fun m!1394853 () Bool)

(assert (=> b!1512053 m!1394853))

(declare-fun m!1394855 () Bool)

(assert (=> b!1512056 m!1394855))

(declare-fun m!1394857 () Bool)

(assert (=> b!1512055 m!1394857))

(assert (=> b!1512055 m!1394857))

(declare-fun m!1394859 () Bool)

(assert (=> b!1512055 m!1394859))

(declare-fun m!1394861 () Bool)

(assert (=> b!1512050 m!1394861))

(declare-fun m!1394863 () Bool)

(assert (=> b!1512050 m!1394863))

(declare-fun m!1394865 () Bool)

(assert (=> start!129016 m!1394865))

(declare-fun m!1394867 () Bool)

(assert (=> start!129016 m!1394867))

(declare-fun m!1394869 () Bool)

(assert (=> b!1512054 m!1394869))

(assert (=> b!1512061 m!1394847))

(assert (=> b!1512061 m!1394847))

(declare-fun m!1394871 () Bool)

(assert (=> b!1512061 m!1394871))

(assert (=> b!1512060 m!1394847))

(declare-fun m!1394873 () Bool)

(assert (=> b!1512060 m!1394873))

(declare-fun m!1394875 () Bool)

(assert (=> b!1512060 m!1394875))

(declare-fun m!1394877 () Bool)

(assert (=> b!1512060 m!1394877))

(assert (=> b!1512049 m!1394847))

(assert (=> b!1512049 m!1394847))

(declare-fun m!1394879 () Bool)

(assert (=> b!1512049 m!1394879))

(assert (=> b!1512049 m!1394879))

(assert (=> b!1512049 m!1394847))

(declare-fun m!1394881 () Bool)

(assert (=> b!1512049 m!1394881))

(assert (=> b!1512051 m!1394873))

(assert (=> b!1512051 m!1394875))

(assert (=> b!1512051 m!1394875))

(declare-fun m!1394883 () Bool)

(assert (=> b!1512051 m!1394883))

(assert (=> b!1512051 m!1394883))

(assert (=> b!1512051 m!1394875))

(declare-fun m!1394885 () Bool)

(assert (=> b!1512051 m!1394885))

(assert (=> b!1512058 m!1394847))

(assert (=> b!1512058 m!1394847))

(declare-fun m!1394887 () Bool)

(assert (=> b!1512058 m!1394887))

(push 1)

