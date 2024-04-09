; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129792 () Bool)

(assert start!129792)

(declare-fun b!1522890 () Bool)

(declare-fun res!1041943 () Bool)

(declare-fun e!849137 () Bool)

(assert (=> b!1522890 (=> (not res!1041943) (not e!849137))))

(declare-datatypes ((SeekEntryResult!13070 0))(
  ( (MissingZero!13070 (index!54674 (_ BitVec 32))) (Found!13070 (index!54675 (_ BitVec 32))) (Intermediate!13070 (undefined!13882 Bool) (index!54676 (_ BitVec 32)) (x!136375 (_ BitVec 32))) (Undefined!13070) (MissingVacant!13070 (index!54677 (_ BitVec 32))) )
))
(declare-fun lt!659759 () SeekEntryResult!13070)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101315 0))(
  ( (array!101316 (arr!48884 (Array (_ BitVec 32) (_ BitVec 64))) (size!49435 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101315)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101315 (_ BitVec 32)) SeekEntryResult!13070)

(assert (=> b!1522890 (= res!1041943 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48884 a!2804) j!70) a!2804 mask!2512) lt!659759))))

(declare-fun b!1522891 () Bool)

(assert (=> b!1522891 (= e!849137 (not true))))

(declare-fun e!849138 () Bool)

(assert (=> b!1522891 e!849138))

(declare-fun res!1041936 () Bool)

(assert (=> b!1522891 (=> (not res!1041936) (not e!849138))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101315 (_ BitVec 32)) Bool)

(assert (=> b!1522891 (= res!1041936 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50880 0))(
  ( (Unit!50881) )
))
(declare-fun lt!659760 () Unit!50880)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101315 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50880)

(assert (=> b!1522891 (= lt!659760 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1522892 () Bool)

(declare-fun res!1041935 () Bool)

(declare-fun e!849140 () Bool)

(assert (=> b!1522892 (=> (not res!1041935) (not e!849140))))

(assert (=> b!1522892 (= res!1041935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1522893 () Bool)

(declare-fun res!1041942 () Bool)

(assert (=> b!1522893 (=> (not res!1041942) (not e!849140))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1522893 (= res!1041942 (validKeyInArray!0 (select (arr!48884 a!2804) i!961)))))

(declare-fun b!1522894 () Bool)

(declare-fun res!1041941 () Bool)

(assert (=> b!1522894 (=> (not res!1041941) (not e!849140))))

(assert (=> b!1522894 (= res!1041941 (and (= (size!49435 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49435 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49435 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1522895 () Bool)

(declare-fun res!1041944 () Bool)

(assert (=> b!1522895 (=> (not res!1041944) (not e!849140))))

(assert (=> b!1522895 (= res!1041944 (validKeyInArray!0 (select (arr!48884 a!2804) j!70)))))

(declare-fun b!1522896 () Bool)

(assert (=> b!1522896 (= e!849140 e!849137)))

(declare-fun res!1041940 () Bool)

(assert (=> b!1522896 (=> (not res!1041940) (not e!849137))))

(declare-fun lt!659761 () SeekEntryResult!13070)

(assert (=> b!1522896 (= res!1041940 (= lt!659761 lt!659759))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1522896 (= lt!659759 (Intermediate!13070 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1522896 (= lt!659761 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48884 a!2804) j!70) mask!2512) (select (arr!48884 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522898 () Bool)

(declare-fun res!1041945 () Bool)

(assert (=> b!1522898 (=> (not res!1041945) (not e!849140))))

(declare-datatypes ((List!35547 0))(
  ( (Nil!35544) (Cons!35543 (h!36968 (_ BitVec 64)) (t!50248 List!35547)) )
))
(declare-fun arrayNoDuplicates!0 (array!101315 (_ BitVec 32) List!35547) Bool)

(assert (=> b!1522898 (= res!1041945 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35544))))

(declare-fun b!1522899 () Bool)

(declare-fun res!1041939 () Bool)

(assert (=> b!1522899 (=> (not res!1041939) (not e!849137))))

(assert (=> b!1522899 (= res!1041939 (= lt!659761 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48884 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48884 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101316 (store (arr!48884 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49435 a!2804)) mask!2512)))))

(declare-fun b!1522900 () Bool)

(declare-fun res!1041938 () Bool)

(assert (=> b!1522900 (=> (not res!1041938) (not e!849140))))

(assert (=> b!1522900 (= res!1041938 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49435 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49435 a!2804))))))

(declare-fun b!1522897 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101315 (_ BitVec 32)) SeekEntryResult!13070)

(assert (=> b!1522897 (= e!849138 (= (seekEntry!0 (select (arr!48884 a!2804) j!70) a!2804 mask!2512) (Found!13070 j!70)))))

(declare-fun res!1041937 () Bool)

(assert (=> start!129792 (=> (not res!1041937) (not e!849140))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129792 (= res!1041937 (validMask!0 mask!2512))))

(assert (=> start!129792 e!849140))

(assert (=> start!129792 true))

(declare-fun array_inv!37829 (array!101315) Bool)

(assert (=> start!129792 (array_inv!37829 a!2804)))

(assert (= (and start!129792 res!1041937) b!1522894))

(assert (= (and b!1522894 res!1041941) b!1522893))

(assert (= (and b!1522893 res!1041942) b!1522895))

(assert (= (and b!1522895 res!1041944) b!1522892))

(assert (= (and b!1522892 res!1041935) b!1522898))

(assert (= (and b!1522898 res!1041945) b!1522900))

(assert (= (and b!1522900 res!1041938) b!1522896))

(assert (= (and b!1522896 res!1041940) b!1522890))

(assert (= (and b!1522890 res!1041943) b!1522899))

(assert (= (and b!1522899 res!1041939) b!1522891))

(assert (= (and b!1522891 res!1041936) b!1522897))

(declare-fun m!1406019 () Bool)

(assert (=> b!1522895 m!1406019))

(assert (=> b!1522895 m!1406019))

(declare-fun m!1406021 () Bool)

(assert (=> b!1522895 m!1406021))

(declare-fun m!1406023 () Bool)

(assert (=> b!1522892 m!1406023))

(declare-fun m!1406025 () Bool)

(assert (=> b!1522891 m!1406025))

(declare-fun m!1406027 () Bool)

(assert (=> b!1522891 m!1406027))

(assert (=> b!1522890 m!1406019))

(assert (=> b!1522890 m!1406019))

(declare-fun m!1406029 () Bool)

(assert (=> b!1522890 m!1406029))

(declare-fun m!1406031 () Bool)

(assert (=> b!1522899 m!1406031))

(declare-fun m!1406033 () Bool)

(assert (=> b!1522899 m!1406033))

(assert (=> b!1522899 m!1406033))

(declare-fun m!1406035 () Bool)

(assert (=> b!1522899 m!1406035))

(assert (=> b!1522899 m!1406035))

(assert (=> b!1522899 m!1406033))

(declare-fun m!1406037 () Bool)

(assert (=> b!1522899 m!1406037))

(assert (=> b!1522896 m!1406019))

(assert (=> b!1522896 m!1406019))

(declare-fun m!1406039 () Bool)

(assert (=> b!1522896 m!1406039))

(assert (=> b!1522896 m!1406039))

(assert (=> b!1522896 m!1406019))

(declare-fun m!1406041 () Bool)

(assert (=> b!1522896 m!1406041))

(declare-fun m!1406043 () Bool)

(assert (=> b!1522893 m!1406043))

(assert (=> b!1522893 m!1406043))

(declare-fun m!1406045 () Bool)

(assert (=> b!1522893 m!1406045))

(assert (=> b!1522897 m!1406019))

(assert (=> b!1522897 m!1406019))

(declare-fun m!1406047 () Bool)

(assert (=> b!1522897 m!1406047))

(declare-fun m!1406049 () Bool)

(assert (=> start!129792 m!1406049))

(declare-fun m!1406051 () Bool)

(assert (=> start!129792 m!1406051))

(declare-fun m!1406053 () Bool)

(assert (=> b!1522898 m!1406053))

(check-sat (not b!1522891) (not b!1522893) (not b!1522890) (not b!1522899) (not start!129792) (not b!1522896) (not b!1522895) (not b!1522897) (not b!1522892) (not b!1522898))
(check-sat)
