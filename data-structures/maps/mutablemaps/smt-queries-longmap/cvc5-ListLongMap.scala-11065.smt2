; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129268 () Bool)

(assert start!129268)

(declare-fun b!1517053 () Bool)

(declare-fun res!1037036 () Bool)

(declare-fun e!846465 () Bool)

(assert (=> b!1517053 (=> (not res!1037036) (not e!846465))))

(declare-datatypes ((array!101037 0))(
  ( (array!101038 (arr!48751 (Array (_ BitVec 32) (_ BitVec 64))) (size!49302 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101037)

(declare-datatypes ((List!35414 0))(
  ( (Nil!35411) (Cons!35410 (h!36823 (_ BitVec 64)) (t!50115 List!35414)) )
))
(declare-fun arrayNoDuplicates!0 (array!101037 (_ BitVec 32) List!35414) Bool)

(assert (=> b!1517053 (= res!1037036 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35411))))

(declare-fun b!1517054 () Bool)

(declare-fun res!1037033 () Bool)

(assert (=> b!1517054 (=> (not res!1037033) (not e!846465))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1517054 (= res!1037033 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49302 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49302 a!2804))))))

(declare-fun res!1037040 () Bool)

(assert (=> start!129268 (=> (not res!1037040) (not e!846465))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129268 (= res!1037040 (validMask!0 mask!2512))))

(assert (=> start!129268 e!846465))

(assert (=> start!129268 true))

(declare-fun array_inv!37696 (array!101037) Bool)

(assert (=> start!129268 (array_inv!37696 a!2804)))

(declare-fun b!1517055 () Bool)

(declare-fun res!1037037 () Bool)

(assert (=> b!1517055 (=> (not res!1037037) (not e!846465))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517055 (= res!1037037 (validKeyInArray!0 (select (arr!48751 a!2804) j!70)))))

(declare-fun b!1517056 () Bool)

(declare-fun e!846464 () Bool)

(assert (=> b!1517056 (= e!846464 true)))

(declare-fun lt!657613 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12943 0))(
  ( (MissingZero!12943 (index!54166 (_ BitVec 32))) (Found!12943 (index!54167 (_ BitVec 32))) (Intermediate!12943 (undefined!13755 Bool) (index!54168 (_ BitVec 32)) (x!135866 (_ BitVec 32))) (Undefined!12943) (MissingVacant!12943 (index!54169 (_ BitVec 32))) )
))
(declare-fun lt!657612 () SeekEntryResult!12943)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101037 (_ BitVec 32)) SeekEntryResult!12943)

(assert (=> b!1517056 (= lt!657612 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657613 (select (arr!48751 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517057 () Bool)

(declare-fun e!846467 () Bool)

(assert (=> b!1517057 (= e!846465 e!846467)))

(declare-fun res!1037039 () Bool)

(assert (=> b!1517057 (=> (not res!1037039) (not e!846467))))

(declare-fun lt!657616 () SeekEntryResult!12943)

(declare-fun lt!657615 () SeekEntryResult!12943)

(assert (=> b!1517057 (= res!1037039 (= lt!657616 lt!657615))))

(assert (=> b!1517057 (= lt!657615 (Intermediate!12943 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517057 (= lt!657616 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48751 a!2804) j!70) mask!2512) (select (arr!48751 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517058 () Bool)

(declare-fun res!1037031 () Bool)

(assert (=> b!1517058 (=> (not res!1037031) (not e!846465))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101037 (_ BitVec 32)) Bool)

(assert (=> b!1517058 (= res!1037031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517059 () Bool)

(declare-fun res!1037030 () Bool)

(assert (=> b!1517059 (=> (not res!1037030) (not e!846465))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1517059 (= res!1037030 (and (= (size!49302 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49302 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49302 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517060 () Bool)

(declare-fun res!1037034 () Bool)

(assert (=> b!1517060 (=> (not res!1037034) (not e!846467))))

(assert (=> b!1517060 (= res!1037034 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48751 a!2804) j!70) a!2804 mask!2512) lt!657615))))

(declare-fun b!1517061 () Bool)

(declare-fun e!846466 () Bool)

(assert (=> b!1517061 (= e!846466 e!846464)))

(declare-fun res!1037032 () Bool)

(assert (=> b!1517061 (=> res!1037032 e!846464)))

(assert (=> b!1517061 (= res!1037032 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657613 #b00000000000000000000000000000000) (bvsge lt!657613 (size!49302 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517061 (= lt!657613 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517062 () Bool)

(declare-fun res!1037028 () Bool)

(assert (=> b!1517062 (=> (not res!1037028) (not e!846465))))

(assert (=> b!1517062 (= res!1037028 (validKeyInArray!0 (select (arr!48751 a!2804) i!961)))))

(declare-fun e!846463 () Bool)

(declare-fun b!1517063 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101037 (_ BitVec 32)) SeekEntryResult!12943)

(assert (=> b!1517063 (= e!846463 (= (seekEntry!0 (select (arr!48751 a!2804) j!70) a!2804 mask!2512) (Found!12943 j!70)))))

(declare-fun b!1517064 () Bool)

(assert (=> b!1517064 (= e!846467 (not e!846466))))

(declare-fun res!1037038 () Bool)

(assert (=> b!1517064 (=> res!1037038 e!846466)))

(assert (=> b!1517064 (= res!1037038 (or (not (= (select (arr!48751 a!2804) j!70) (select (store (arr!48751 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1517064 e!846463))

(declare-fun res!1037029 () Bool)

(assert (=> b!1517064 (=> (not res!1037029) (not e!846463))))

(assert (=> b!1517064 (= res!1037029 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50710 0))(
  ( (Unit!50711) )
))
(declare-fun lt!657614 () Unit!50710)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101037 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50710)

(assert (=> b!1517064 (= lt!657614 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1517065 () Bool)

(declare-fun res!1037035 () Bool)

(assert (=> b!1517065 (=> (not res!1037035) (not e!846467))))

(assert (=> b!1517065 (= res!1037035 (= lt!657616 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48751 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48751 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101038 (store (arr!48751 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49302 a!2804)) mask!2512)))))

(assert (= (and start!129268 res!1037040) b!1517059))

(assert (= (and b!1517059 res!1037030) b!1517062))

(assert (= (and b!1517062 res!1037028) b!1517055))

(assert (= (and b!1517055 res!1037037) b!1517058))

(assert (= (and b!1517058 res!1037031) b!1517053))

(assert (= (and b!1517053 res!1037036) b!1517054))

(assert (= (and b!1517054 res!1037033) b!1517057))

(assert (= (and b!1517057 res!1037039) b!1517060))

(assert (= (and b!1517060 res!1037034) b!1517065))

(assert (= (and b!1517065 res!1037035) b!1517064))

(assert (= (and b!1517064 res!1037029) b!1517063))

(assert (= (and b!1517064 (not res!1037038)) b!1517061))

(assert (= (and b!1517061 (not res!1037032)) b!1517056))

(declare-fun m!1400391 () Bool)

(assert (=> b!1517063 m!1400391))

(assert (=> b!1517063 m!1400391))

(declare-fun m!1400393 () Bool)

(assert (=> b!1517063 m!1400393))

(assert (=> b!1517055 m!1400391))

(assert (=> b!1517055 m!1400391))

(declare-fun m!1400395 () Bool)

(assert (=> b!1517055 m!1400395))

(assert (=> b!1517056 m!1400391))

(assert (=> b!1517056 m!1400391))

(declare-fun m!1400397 () Bool)

(assert (=> b!1517056 m!1400397))

(declare-fun m!1400399 () Bool)

(assert (=> b!1517053 m!1400399))

(assert (=> b!1517057 m!1400391))

(assert (=> b!1517057 m!1400391))

(declare-fun m!1400401 () Bool)

(assert (=> b!1517057 m!1400401))

(assert (=> b!1517057 m!1400401))

(assert (=> b!1517057 m!1400391))

(declare-fun m!1400403 () Bool)

(assert (=> b!1517057 m!1400403))

(declare-fun m!1400405 () Bool)

(assert (=> start!129268 m!1400405))

(declare-fun m!1400407 () Bool)

(assert (=> start!129268 m!1400407))

(assert (=> b!1517064 m!1400391))

(declare-fun m!1400409 () Bool)

(assert (=> b!1517064 m!1400409))

(declare-fun m!1400411 () Bool)

(assert (=> b!1517064 m!1400411))

(declare-fun m!1400413 () Bool)

(assert (=> b!1517064 m!1400413))

(declare-fun m!1400415 () Bool)

(assert (=> b!1517064 m!1400415))

(declare-fun m!1400417 () Bool)

(assert (=> b!1517062 m!1400417))

(assert (=> b!1517062 m!1400417))

(declare-fun m!1400419 () Bool)

(assert (=> b!1517062 m!1400419))

(assert (=> b!1517065 m!1400411))

(assert (=> b!1517065 m!1400413))

(assert (=> b!1517065 m!1400413))

(declare-fun m!1400421 () Bool)

(assert (=> b!1517065 m!1400421))

(assert (=> b!1517065 m!1400421))

(assert (=> b!1517065 m!1400413))

(declare-fun m!1400423 () Bool)

(assert (=> b!1517065 m!1400423))

(assert (=> b!1517060 m!1400391))

(assert (=> b!1517060 m!1400391))

(declare-fun m!1400425 () Bool)

(assert (=> b!1517060 m!1400425))

(declare-fun m!1400427 () Bool)

(assert (=> b!1517058 m!1400427))

(declare-fun m!1400429 () Bool)

(assert (=> b!1517061 m!1400429))

(push 1)

