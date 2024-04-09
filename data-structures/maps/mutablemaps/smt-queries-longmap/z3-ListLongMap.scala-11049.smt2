; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129174 () Bool)

(assert start!129174)

(declare-fun e!845630 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun b!1515283 () Bool)

(declare-datatypes ((array!100943 0))(
  ( (array!100944 (arr!48704 (Array (_ BitVec 32) (_ BitVec 64))) (size!49255 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100943)

(declare-datatypes ((SeekEntryResult!12896 0))(
  ( (MissingZero!12896 (index!53978 (_ BitVec 32))) (Found!12896 (index!53979 (_ BitVec 32))) (Intermediate!12896 (undefined!13708 Bool) (index!53980 (_ BitVec 32)) (x!135691 (_ BitVec 32))) (Undefined!12896) (MissingVacant!12896 (index!53981 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100943 (_ BitVec 32)) SeekEntryResult!12896)

(assert (=> b!1515283 (= e!845630 (= (seekEntry!0 (select (arr!48704 a!2804) j!70) a!2804 mask!2512) (Found!12896 j!70)))))

(declare-fun b!1515284 () Bool)

(declare-fun res!1035270 () Bool)

(declare-fun e!845632 () Bool)

(assert (=> b!1515284 (=> (not res!1035270) (not e!845632))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515284 (= res!1035270 (validKeyInArray!0 (select (arr!48704 a!2804) i!961)))))

(declare-fun b!1515285 () Bool)

(declare-fun res!1035268 () Bool)

(assert (=> b!1515285 (=> (not res!1035268) (not e!845632))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100943 (_ BitVec 32)) Bool)

(assert (=> b!1515285 (= res!1035268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1035264 () Bool)

(assert (=> start!129174 (=> (not res!1035264) (not e!845632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129174 (= res!1035264 (validMask!0 mask!2512))))

(assert (=> start!129174 e!845632))

(assert (=> start!129174 true))

(declare-fun array_inv!37649 (array!100943) Bool)

(assert (=> start!129174 (array_inv!37649 a!2804)))

(declare-fun b!1515286 () Bool)

(declare-fun e!845635 () Bool)

(assert (=> b!1515286 (= e!845632 e!845635)))

(declare-fun res!1035269 () Bool)

(assert (=> b!1515286 (=> (not res!1035269) (not e!845635))))

(declare-fun lt!656740 () SeekEntryResult!12896)

(declare-fun lt!656737 () SeekEntryResult!12896)

(assert (=> b!1515286 (= res!1035269 (= lt!656740 lt!656737))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1515286 (= lt!656737 (Intermediate!12896 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100943 (_ BitVec 32)) SeekEntryResult!12896)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515286 (= lt!656740 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48704 a!2804) j!70) mask!2512) (select (arr!48704 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515287 () Bool)

(declare-fun res!1035267 () Bool)

(assert (=> b!1515287 (=> (not res!1035267) (not e!845632))))

(declare-datatypes ((List!35367 0))(
  ( (Nil!35364) (Cons!35363 (h!36776 (_ BitVec 64)) (t!50068 List!35367)) )
))
(declare-fun arrayNoDuplicates!0 (array!100943 (_ BitVec 32) List!35367) Bool)

(assert (=> b!1515287 (= res!1035267 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35364))))

(declare-fun b!1515288 () Bool)

(declare-fun res!1035263 () Bool)

(assert (=> b!1515288 (=> (not res!1035263) (not e!845635))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1515288 (= res!1035263 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48704 a!2804) j!70) a!2804 mask!2512) lt!656737))))

(declare-fun b!1515289 () Bool)

(declare-fun res!1035266 () Bool)

(assert (=> b!1515289 (=> (not res!1035266) (not e!845632))))

(assert (=> b!1515289 (= res!1035266 (and (= (size!49255 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49255 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49255 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515290 () Bool)

(declare-fun res!1035260 () Bool)

(assert (=> b!1515290 (=> (not res!1035260) (not e!845632))))

(assert (=> b!1515290 (= res!1035260 (validKeyInArray!0 (select (arr!48704 a!2804) j!70)))))

(declare-fun b!1515291 () Bool)

(declare-fun e!845633 () Bool)

(assert (=> b!1515291 (= e!845633 true)))

(declare-fun lt!656739 () SeekEntryResult!12896)

(declare-fun lt!656736 () SeekEntryResult!12896)

(assert (=> b!1515291 (= lt!656739 lt!656736)))

(declare-datatypes ((Unit!50616 0))(
  ( (Unit!50617) )
))
(declare-fun lt!656742 () Unit!50616)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100943 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50616)

(assert (=> b!1515291 (= lt!656742 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1515292 () Bool)

(declare-fun e!845636 () Bool)

(declare-fun e!845634 () Bool)

(assert (=> b!1515292 (= e!845636 (not e!845634))))

(declare-fun res!1035261 () Bool)

(assert (=> b!1515292 (=> res!1035261 e!845634)))

(declare-fun lt!656734 () (_ BitVec 64))

(assert (=> b!1515292 (= res!1035261 (or (not (= (select (arr!48704 a!2804) j!70) lt!656734)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48704 a!2804) index!487) (select (arr!48704 a!2804) j!70)) (not (= (select (arr!48704 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1515292 e!845630))

(declare-fun res!1035262 () Bool)

(assert (=> b!1515292 (=> (not res!1035262) (not e!845630))))

(assert (=> b!1515292 (= res!1035262 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!656743 () Unit!50616)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100943 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50616)

(assert (=> b!1515292 (= lt!656743 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1515293 () Bool)

(assert (=> b!1515293 (= e!845635 e!845636)))

(declare-fun res!1035259 () Bool)

(assert (=> b!1515293 (=> (not res!1035259) (not e!845636))))

(declare-fun lt!656741 () array!100943)

(assert (=> b!1515293 (= res!1035259 (= lt!656740 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656734 mask!2512) lt!656734 lt!656741 mask!2512)))))

(assert (=> b!1515293 (= lt!656734 (select (store (arr!48704 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515293 (= lt!656741 (array!100944 (store (arr!48704 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49255 a!2804)))))

(declare-fun b!1515294 () Bool)

(declare-fun res!1035258 () Bool)

(assert (=> b!1515294 (=> (not res!1035258) (not e!845632))))

(assert (=> b!1515294 (= res!1035258 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49255 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49255 a!2804))))))

(declare-fun b!1515295 () Bool)

(assert (=> b!1515295 (= e!845634 e!845633)))

(declare-fun res!1035265 () Bool)

(assert (=> b!1515295 (=> res!1035265 e!845633)))

(assert (=> b!1515295 (= res!1035265 (not (= lt!656736 (Found!12896 j!70))))))

(declare-fun lt!656735 () SeekEntryResult!12896)

(assert (=> b!1515295 (= lt!656735 lt!656739)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100943 (_ BitVec 32)) SeekEntryResult!12896)

(assert (=> b!1515295 (= lt!656739 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656734 lt!656741 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100943 (_ BitVec 32)) SeekEntryResult!12896)

(assert (=> b!1515295 (= lt!656735 (seekEntryOrOpen!0 lt!656734 lt!656741 mask!2512))))

(declare-fun lt!656738 () SeekEntryResult!12896)

(assert (=> b!1515295 (= lt!656738 lt!656736)))

(assert (=> b!1515295 (= lt!656736 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48704 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515295 (= lt!656738 (seekEntryOrOpen!0 (select (arr!48704 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!129174 res!1035264) b!1515289))

(assert (= (and b!1515289 res!1035266) b!1515284))

(assert (= (and b!1515284 res!1035270) b!1515290))

(assert (= (and b!1515290 res!1035260) b!1515285))

(assert (= (and b!1515285 res!1035268) b!1515287))

(assert (= (and b!1515287 res!1035267) b!1515294))

(assert (= (and b!1515294 res!1035258) b!1515286))

(assert (= (and b!1515286 res!1035269) b!1515288))

(assert (= (and b!1515288 res!1035263) b!1515293))

(assert (= (and b!1515293 res!1035259) b!1515292))

(assert (= (and b!1515292 res!1035262) b!1515283))

(assert (= (and b!1515292 (not res!1035261)) b!1515295))

(assert (= (and b!1515295 (not res!1035265)) b!1515291))

(declare-fun m!1398417 () Bool)

(assert (=> b!1515295 m!1398417))

(declare-fun m!1398419 () Bool)

(assert (=> b!1515295 m!1398419))

(assert (=> b!1515295 m!1398417))

(declare-fun m!1398421 () Bool)

(assert (=> b!1515295 m!1398421))

(declare-fun m!1398423 () Bool)

(assert (=> b!1515295 m!1398423))

(assert (=> b!1515295 m!1398417))

(declare-fun m!1398425 () Bool)

(assert (=> b!1515295 m!1398425))

(assert (=> b!1515290 m!1398417))

(assert (=> b!1515290 m!1398417))

(declare-fun m!1398427 () Bool)

(assert (=> b!1515290 m!1398427))

(declare-fun m!1398429 () Bool)

(assert (=> b!1515287 m!1398429))

(declare-fun m!1398431 () Bool)

(assert (=> start!129174 m!1398431))

(declare-fun m!1398433 () Bool)

(assert (=> start!129174 m!1398433))

(assert (=> b!1515288 m!1398417))

(assert (=> b!1515288 m!1398417))

(declare-fun m!1398435 () Bool)

(assert (=> b!1515288 m!1398435))

(declare-fun m!1398437 () Bool)

(assert (=> b!1515284 m!1398437))

(assert (=> b!1515284 m!1398437))

(declare-fun m!1398439 () Bool)

(assert (=> b!1515284 m!1398439))

(assert (=> b!1515292 m!1398417))

(declare-fun m!1398441 () Bool)

(assert (=> b!1515292 m!1398441))

(declare-fun m!1398443 () Bool)

(assert (=> b!1515292 m!1398443))

(declare-fun m!1398445 () Bool)

(assert (=> b!1515292 m!1398445))

(declare-fun m!1398447 () Bool)

(assert (=> b!1515285 m!1398447))

(declare-fun m!1398449 () Bool)

(assert (=> b!1515291 m!1398449))

(assert (=> b!1515283 m!1398417))

(assert (=> b!1515283 m!1398417))

(declare-fun m!1398451 () Bool)

(assert (=> b!1515283 m!1398451))

(declare-fun m!1398453 () Bool)

(assert (=> b!1515293 m!1398453))

(assert (=> b!1515293 m!1398453))

(declare-fun m!1398455 () Bool)

(assert (=> b!1515293 m!1398455))

(declare-fun m!1398457 () Bool)

(assert (=> b!1515293 m!1398457))

(declare-fun m!1398459 () Bool)

(assert (=> b!1515293 m!1398459))

(assert (=> b!1515286 m!1398417))

(assert (=> b!1515286 m!1398417))

(declare-fun m!1398461 () Bool)

(assert (=> b!1515286 m!1398461))

(assert (=> b!1515286 m!1398461))

(assert (=> b!1515286 m!1398417))

(declare-fun m!1398463 () Bool)

(assert (=> b!1515286 m!1398463))

(check-sat (not b!1515283) (not b!1515284) (not start!129174) (not b!1515286) (not b!1515285) (not b!1515288) (not b!1515290) (not b!1515295) (not b!1515293) (not b!1515287) (not b!1515292) (not b!1515291))
(check-sat)
