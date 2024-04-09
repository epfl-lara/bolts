; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129068 () Bool)

(assert start!129068)

(declare-fun b!1513080 () Bool)

(declare-fun res!1033060 () Bool)

(declare-fun e!844523 () Bool)

(assert (=> b!1513080 (=> (not res!1033060) (not e!844523))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100837 0))(
  ( (array!100838 (arr!48651 (Array (_ BitVec 32) (_ BitVec 64))) (size!49202 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100837)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1513080 (= res!1033060 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49202 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49202 a!2804))))))

(declare-fun b!1513081 () Bool)

(declare-fun e!844519 () Bool)

(declare-fun e!844520 () Bool)

(assert (=> b!1513081 (= e!844519 e!844520)))

(declare-fun res!1033056 () Bool)

(assert (=> b!1513081 (=> res!1033056 e!844520)))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun lt!655828 () (_ BitVec 64))

(assert (=> b!1513081 (= res!1033056 (or (not (= (select (arr!48651 a!2804) j!70) lt!655828)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48651 a!2804) index!487) (select (arr!48651 a!2804) j!70)) (not (= (select (arr!48651 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513082 () Bool)

(declare-fun e!844518 () Bool)

(assert (=> b!1513082 (= e!844520 e!844518)))

(declare-fun res!1033068 () Bool)

(assert (=> b!1513082 (=> (not res!1033068) (not e!844518))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12843 0))(
  ( (MissingZero!12843 (index!53766 (_ BitVec 32))) (Found!12843 (index!53767 (_ BitVec 32))) (Intermediate!12843 (undefined!13655 Bool) (index!53768 (_ BitVec 32)) (x!135494 (_ BitVec 32))) (Undefined!12843) (MissingVacant!12843 (index!53769 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100837 (_ BitVec 32)) SeekEntryResult!12843)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100837 (_ BitVec 32)) SeekEntryResult!12843)

(assert (=> b!1513082 (= res!1033068 (= (seekEntryOrOpen!0 (select (arr!48651 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48651 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1513083 () Bool)

(declare-fun res!1033064 () Bool)

(declare-fun e!844522 () Bool)

(assert (=> b!1513083 (=> (not res!1033064) (not e!844522))))

(declare-fun lt!655825 () SeekEntryResult!12843)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100837 (_ BitVec 32)) SeekEntryResult!12843)

(assert (=> b!1513083 (= res!1033064 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48651 a!2804) j!70) a!2804 mask!2512) lt!655825))))

(declare-fun b!1513084 () Bool)

(declare-fun res!1033063 () Bool)

(assert (=> b!1513084 (=> (not res!1033063) (not e!844523))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513084 (= res!1033063 (validKeyInArray!0 (select (arr!48651 a!2804) i!961)))))

(declare-fun b!1513085 () Bool)

(declare-fun e!844521 () Bool)

(assert (=> b!1513085 (= e!844522 e!844521)))

(declare-fun res!1033066 () Bool)

(assert (=> b!1513085 (=> (not res!1033066) (not e!844521))))

(declare-fun lt!655826 () array!100837)

(declare-fun lt!655824 () SeekEntryResult!12843)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513085 (= res!1033066 (= lt!655824 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!655828 mask!2512) lt!655828 lt!655826 mask!2512)))))

(assert (=> b!1513085 (= lt!655828 (select (store (arr!48651 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513085 (= lt!655826 (array!100838 (store (arr!48651 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49202 a!2804)))))

(declare-fun res!1033062 () Bool)

(assert (=> start!129068 (=> (not res!1033062) (not e!844523))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129068 (= res!1033062 (validMask!0 mask!2512))))

(assert (=> start!129068 e!844523))

(assert (=> start!129068 true))

(declare-fun array_inv!37596 (array!100837) Bool)

(assert (=> start!129068 (array_inv!37596 a!2804)))

(declare-fun b!1513086 () Bool)

(declare-fun res!1033061 () Bool)

(assert (=> b!1513086 (=> (not res!1033061) (not e!844523))))

(assert (=> b!1513086 (= res!1033061 (and (= (size!49202 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49202 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49202 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1513087 () Bool)

(declare-fun res!1033059 () Bool)

(assert (=> b!1513087 (=> (not res!1033059) (not e!844523))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100837 (_ BitVec 32)) Bool)

(assert (=> b!1513087 (= res!1033059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1513088 () Bool)

(assert (=> b!1513088 (= e!844521 (not true))))

(assert (=> b!1513088 e!844519))

(declare-fun res!1033058 () Bool)

(assert (=> b!1513088 (=> (not res!1033058) (not e!844519))))

(assert (=> b!1513088 (= res!1033058 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50510 0))(
  ( (Unit!50511) )
))
(declare-fun lt!655827 () Unit!50510)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100837 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50510)

(assert (=> b!1513088 (= lt!655827 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1513089 () Bool)

(declare-fun res!1033055 () Bool)

(assert (=> b!1513089 (=> (not res!1033055) (not e!844523))))

(declare-datatypes ((List!35314 0))(
  ( (Nil!35311) (Cons!35310 (h!36723 (_ BitVec 64)) (t!50015 List!35314)) )
))
(declare-fun arrayNoDuplicates!0 (array!100837 (_ BitVec 32) List!35314) Bool)

(assert (=> b!1513089 (= res!1033055 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35311))))

(declare-fun b!1513090 () Bool)

(declare-fun res!1033057 () Bool)

(assert (=> b!1513090 (=> (not res!1033057) (not e!844523))))

(assert (=> b!1513090 (= res!1033057 (validKeyInArray!0 (select (arr!48651 a!2804) j!70)))))

(declare-fun b!1513091 () Bool)

(assert (=> b!1513091 (= e!844518 (= (seekEntryOrOpen!0 lt!655828 lt!655826 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!655828 lt!655826 mask!2512)))))

(declare-fun b!1513092 () Bool)

(assert (=> b!1513092 (= e!844523 e!844522)))

(declare-fun res!1033067 () Bool)

(assert (=> b!1513092 (=> (not res!1033067) (not e!844522))))

(assert (=> b!1513092 (= res!1033067 (= lt!655824 lt!655825))))

(assert (=> b!1513092 (= lt!655825 (Intermediate!12843 false resIndex!21 resX!21))))

(assert (=> b!1513092 (= lt!655824 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48651 a!2804) j!70) mask!2512) (select (arr!48651 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1513093 () Bool)

(declare-fun res!1033065 () Bool)

(assert (=> b!1513093 (=> (not res!1033065) (not e!844519))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100837 (_ BitVec 32)) SeekEntryResult!12843)

(assert (=> b!1513093 (= res!1033065 (= (seekEntry!0 (select (arr!48651 a!2804) j!70) a!2804 mask!2512) (Found!12843 j!70)))))

(assert (= (and start!129068 res!1033062) b!1513086))

(assert (= (and b!1513086 res!1033061) b!1513084))

(assert (= (and b!1513084 res!1033063) b!1513090))

(assert (= (and b!1513090 res!1033057) b!1513087))

(assert (= (and b!1513087 res!1033059) b!1513089))

(assert (= (and b!1513089 res!1033055) b!1513080))

(assert (= (and b!1513080 res!1033060) b!1513092))

(assert (= (and b!1513092 res!1033067) b!1513083))

(assert (= (and b!1513083 res!1033064) b!1513085))

(assert (= (and b!1513085 res!1033066) b!1513088))

(assert (= (and b!1513088 res!1033058) b!1513093))

(assert (= (and b!1513093 res!1033065) b!1513081))

(assert (= (and b!1513081 (not res!1033056)) b!1513082))

(assert (= (and b!1513082 res!1033068) b!1513091))

(declare-fun m!1395965 () Bool)

(assert (=> b!1513091 m!1395965))

(declare-fun m!1395967 () Bool)

(assert (=> b!1513091 m!1395967))

(declare-fun m!1395969 () Bool)

(assert (=> b!1513092 m!1395969))

(assert (=> b!1513092 m!1395969))

(declare-fun m!1395971 () Bool)

(assert (=> b!1513092 m!1395971))

(assert (=> b!1513092 m!1395971))

(assert (=> b!1513092 m!1395969))

(declare-fun m!1395973 () Bool)

(assert (=> b!1513092 m!1395973))

(declare-fun m!1395975 () Bool)

(assert (=> b!1513085 m!1395975))

(assert (=> b!1513085 m!1395975))

(declare-fun m!1395977 () Bool)

(assert (=> b!1513085 m!1395977))

(declare-fun m!1395979 () Bool)

(assert (=> b!1513085 m!1395979))

(declare-fun m!1395981 () Bool)

(assert (=> b!1513085 m!1395981))

(assert (=> b!1513090 m!1395969))

(assert (=> b!1513090 m!1395969))

(declare-fun m!1395983 () Bool)

(assert (=> b!1513090 m!1395983))

(declare-fun m!1395985 () Bool)

(assert (=> b!1513089 m!1395985))

(assert (=> b!1513082 m!1395969))

(assert (=> b!1513082 m!1395969))

(declare-fun m!1395987 () Bool)

(assert (=> b!1513082 m!1395987))

(assert (=> b!1513082 m!1395969))

(declare-fun m!1395989 () Bool)

(assert (=> b!1513082 m!1395989))

(declare-fun m!1395991 () Bool)

(assert (=> start!129068 m!1395991))

(declare-fun m!1395993 () Bool)

(assert (=> start!129068 m!1395993))

(assert (=> b!1513081 m!1395969))

(declare-fun m!1395995 () Bool)

(assert (=> b!1513081 m!1395995))

(declare-fun m!1395997 () Bool)

(assert (=> b!1513084 m!1395997))

(assert (=> b!1513084 m!1395997))

(declare-fun m!1395999 () Bool)

(assert (=> b!1513084 m!1395999))

(declare-fun m!1396001 () Bool)

(assert (=> b!1513088 m!1396001))

(declare-fun m!1396003 () Bool)

(assert (=> b!1513088 m!1396003))

(assert (=> b!1513083 m!1395969))

(assert (=> b!1513083 m!1395969))

(declare-fun m!1396005 () Bool)

(assert (=> b!1513083 m!1396005))

(declare-fun m!1396007 () Bool)

(assert (=> b!1513087 m!1396007))

(assert (=> b!1513093 m!1395969))

(assert (=> b!1513093 m!1395969))

(declare-fun m!1396009 () Bool)

(assert (=> b!1513093 m!1396009))

(push 1)

