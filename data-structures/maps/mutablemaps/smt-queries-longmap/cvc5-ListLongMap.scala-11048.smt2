; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129166 () Bool)

(assert start!129166)

(declare-fun b!1515127 () Bool)

(declare-fun res!1035114 () Bool)

(declare-fun e!845547 () Bool)

(assert (=> b!1515127 (=> (not res!1035114) (not e!845547))))

(declare-datatypes ((SeekEntryResult!12892 0))(
  ( (MissingZero!12892 (index!53962 (_ BitVec 32))) (Found!12892 (index!53963 (_ BitVec 32))) (Intermediate!12892 (undefined!13704 Bool) (index!53964 (_ BitVec 32)) (x!135679 (_ BitVec 32))) (Undefined!12892) (MissingVacant!12892 (index!53965 (_ BitVec 32))) )
))
(declare-fun lt!656620 () SeekEntryResult!12892)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100935 0))(
  ( (array!100936 (arr!48700 (Array (_ BitVec 32) (_ BitVec 64))) (size!49251 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100935)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100935 (_ BitVec 32)) SeekEntryResult!12892)

(assert (=> b!1515127 (= res!1035114 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48700 a!2804) j!70) a!2804 mask!2512) lt!656620))))

(declare-fun b!1515129 () Bool)

(declare-fun res!1035107 () Bool)

(declare-fun e!845550 () Bool)

(assert (=> b!1515129 (=> (not res!1035107) (not e!845550))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100935 (_ BitVec 32)) Bool)

(assert (=> b!1515129 (= res!1035107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1515130 () Bool)

(declare-fun e!845546 () Bool)

(assert (=> b!1515130 (= e!845547 e!845546)))

(declare-fun res!1035103 () Bool)

(assert (=> b!1515130 (=> (not res!1035103) (not e!845546))))

(declare-fun lt!656618 () (_ BitVec 64))

(declare-fun lt!656622 () array!100935)

(declare-fun lt!656614 () SeekEntryResult!12892)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515130 (= res!1035103 (= lt!656614 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656618 mask!2512) lt!656618 lt!656622 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1515130 (= lt!656618 (select (store (arr!48700 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515130 (= lt!656622 (array!100936 (store (arr!48700 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49251 a!2804)))))

(declare-fun b!1515131 () Bool)

(declare-fun res!1035112 () Bool)

(assert (=> b!1515131 (=> (not res!1035112) (not e!845550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515131 (= res!1035112 (validKeyInArray!0 (select (arr!48700 a!2804) i!961)))))

(declare-fun b!1515132 () Bool)

(declare-fun res!1035105 () Bool)

(assert (=> b!1515132 (=> (not res!1035105) (not e!845550))))

(declare-datatypes ((List!35363 0))(
  ( (Nil!35360) (Cons!35359 (h!36772 (_ BitVec 64)) (t!50064 List!35363)) )
))
(declare-fun arrayNoDuplicates!0 (array!100935 (_ BitVec 32) List!35363) Bool)

(assert (=> b!1515132 (= res!1035105 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35360))))

(declare-fun b!1515133 () Bool)

(declare-fun res!1035106 () Bool)

(assert (=> b!1515133 (=> (not res!1035106) (not e!845550))))

(assert (=> b!1515133 (= res!1035106 (and (= (size!49251 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49251 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49251 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515134 () Bool)

(declare-fun e!845549 () Bool)

(assert (=> b!1515134 (= e!845546 (not e!845549))))

(declare-fun res!1035108 () Bool)

(assert (=> b!1515134 (=> res!1035108 e!845549)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1515134 (= res!1035108 (or (not (= (select (arr!48700 a!2804) j!70) lt!656618)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48700 a!2804) index!487) (select (arr!48700 a!2804) j!70)) (not (= (select (arr!48700 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!845551 () Bool)

(assert (=> b!1515134 e!845551))

(declare-fun res!1035104 () Bool)

(assert (=> b!1515134 (=> (not res!1035104) (not e!845551))))

(assert (=> b!1515134 (= res!1035104 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50608 0))(
  ( (Unit!50609) )
))
(declare-fun lt!656616 () Unit!50608)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100935 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50608)

(assert (=> b!1515134 (= lt!656616 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1515135 () Bool)

(declare-fun e!845548 () Bool)

(assert (=> b!1515135 (= e!845548 (bvsge mask!2512 #b00000000000000000000000000000000))))

(declare-fun lt!656621 () SeekEntryResult!12892)

(declare-fun lt!656617 () SeekEntryResult!12892)

(assert (=> b!1515135 (= lt!656621 lt!656617)))

(declare-fun lt!656623 () Unit!50608)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100935 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50608)

(assert (=> b!1515135 (= lt!656623 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1515128 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100935 (_ BitVec 32)) SeekEntryResult!12892)

(assert (=> b!1515128 (= e!845551 (= (seekEntry!0 (select (arr!48700 a!2804) j!70) a!2804 mask!2512) (Found!12892 j!70)))))

(declare-fun res!1035109 () Bool)

(assert (=> start!129166 (=> (not res!1035109) (not e!845550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129166 (= res!1035109 (validMask!0 mask!2512))))

(assert (=> start!129166 e!845550))

(assert (=> start!129166 true))

(declare-fun array_inv!37645 (array!100935) Bool)

(assert (=> start!129166 (array_inv!37645 a!2804)))

(declare-fun b!1515136 () Bool)

(assert (=> b!1515136 (= e!845549 e!845548)))

(declare-fun res!1035102 () Bool)

(assert (=> b!1515136 (=> res!1035102 e!845548)))

(assert (=> b!1515136 (= res!1035102 (not (= lt!656617 (Found!12892 j!70))))))

(declare-fun lt!656615 () SeekEntryResult!12892)

(assert (=> b!1515136 (= lt!656615 lt!656621)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100935 (_ BitVec 32)) SeekEntryResult!12892)

(assert (=> b!1515136 (= lt!656621 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656618 lt!656622 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100935 (_ BitVec 32)) SeekEntryResult!12892)

(assert (=> b!1515136 (= lt!656615 (seekEntryOrOpen!0 lt!656618 lt!656622 mask!2512))))

(declare-fun lt!656619 () SeekEntryResult!12892)

(assert (=> b!1515136 (= lt!656619 lt!656617)))

(assert (=> b!1515136 (= lt!656617 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48700 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515136 (= lt!656619 (seekEntryOrOpen!0 (select (arr!48700 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515137 () Bool)

(assert (=> b!1515137 (= e!845550 e!845547)))

(declare-fun res!1035111 () Bool)

(assert (=> b!1515137 (=> (not res!1035111) (not e!845547))))

(assert (=> b!1515137 (= res!1035111 (= lt!656614 lt!656620))))

(assert (=> b!1515137 (= lt!656620 (Intermediate!12892 false resIndex!21 resX!21))))

(assert (=> b!1515137 (= lt!656614 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48700 a!2804) j!70) mask!2512) (select (arr!48700 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515138 () Bool)

(declare-fun res!1035113 () Bool)

(assert (=> b!1515138 (=> (not res!1035113) (not e!845550))))

(assert (=> b!1515138 (= res!1035113 (validKeyInArray!0 (select (arr!48700 a!2804) j!70)))))

(declare-fun b!1515139 () Bool)

(declare-fun res!1035110 () Bool)

(assert (=> b!1515139 (=> (not res!1035110) (not e!845550))))

(assert (=> b!1515139 (= res!1035110 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49251 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49251 a!2804))))))

(assert (= (and start!129166 res!1035109) b!1515133))

(assert (= (and b!1515133 res!1035106) b!1515131))

(assert (= (and b!1515131 res!1035112) b!1515138))

(assert (= (and b!1515138 res!1035113) b!1515129))

(assert (= (and b!1515129 res!1035107) b!1515132))

(assert (= (and b!1515132 res!1035105) b!1515139))

(assert (= (and b!1515139 res!1035110) b!1515137))

(assert (= (and b!1515137 res!1035111) b!1515127))

(assert (= (and b!1515127 res!1035114) b!1515130))

(assert (= (and b!1515130 res!1035103) b!1515134))

(assert (= (and b!1515134 res!1035104) b!1515128))

(assert (= (and b!1515134 (not res!1035108)) b!1515136))

(assert (= (and b!1515136 (not res!1035102)) b!1515135))

(declare-fun m!1398225 () Bool)

(assert (=> start!129166 m!1398225))

(declare-fun m!1398227 () Bool)

(assert (=> start!129166 m!1398227))

(declare-fun m!1398229 () Bool)

(assert (=> b!1515137 m!1398229))

(assert (=> b!1515137 m!1398229))

(declare-fun m!1398231 () Bool)

(assert (=> b!1515137 m!1398231))

(assert (=> b!1515137 m!1398231))

(assert (=> b!1515137 m!1398229))

(declare-fun m!1398233 () Bool)

(assert (=> b!1515137 m!1398233))

(declare-fun m!1398235 () Bool)

(assert (=> b!1515132 m!1398235))

(declare-fun m!1398237 () Bool)

(assert (=> b!1515131 m!1398237))

(assert (=> b!1515131 m!1398237))

(declare-fun m!1398239 () Bool)

(assert (=> b!1515131 m!1398239))

(assert (=> b!1515134 m!1398229))

(declare-fun m!1398241 () Bool)

(assert (=> b!1515134 m!1398241))

(declare-fun m!1398243 () Bool)

(assert (=> b!1515134 m!1398243))

(declare-fun m!1398245 () Bool)

(assert (=> b!1515134 m!1398245))

(declare-fun m!1398247 () Bool)

(assert (=> b!1515135 m!1398247))

(assert (=> b!1515128 m!1398229))

(assert (=> b!1515128 m!1398229))

(declare-fun m!1398249 () Bool)

(assert (=> b!1515128 m!1398249))

(declare-fun m!1398251 () Bool)

(assert (=> b!1515130 m!1398251))

(assert (=> b!1515130 m!1398251))

(declare-fun m!1398253 () Bool)

(assert (=> b!1515130 m!1398253))

(declare-fun m!1398255 () Bool)

(assert (=> b!1515130 m!1398255))

(declare-fun m!1398257 () Bool)

(assert (=> b!1515130 m!1398257))

(assert (=> b!1515127 m!1398229))

(assert (=> b!1515127 m!1398229))

(declare-fun m!1398259 () Bool)

(assert (=> b!1515127 m!1398259))

(declare-fun m!1398261 () Bool)

(assert (=> b!1515129 m!1398261))

(assert (=> b!1515138 m!1398229))

(assert (=> b!1515138 m!1398229))

(declare-fun m!1398263 () Bool)

(assert (=> b!1515138 m!1398263))

(declare-fun m!1398265 () Bool)

(assert (=> b!1515136 m!1398265))

(assert (=> b!1515136 m!1398229))

(declare-fun m!1398267 () Bool)

(assert (=> b!1515136 m!1398267))

(assert (=> b!1515136 m!1398229))

(declare-fun m!1398269 () Bool)

(assert (=> b!1515136 m!1398269))

(assert (=> b!1515136 m!1398229))

(declare-fun m!1398271 () Bool)

(assert (=> b!1515136 m!1398271))

(push 1)

