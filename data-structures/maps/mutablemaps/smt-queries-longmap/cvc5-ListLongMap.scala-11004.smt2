; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128902 () Bool)

(assert start!128902)

(declare-fun b!1510074 () Bool)

(declare-fun e!843346 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100671 0))(
  ( (array!100672 (arr!48568 (Array (_ BitVec 32) (_ BitVec 64))) (size!49119 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100671)

(declare-datatypes ((SeekEntryResult!12760 0))(
  ( (MissingZero!12760 (index!53434 (_ BitVec 32))) (Found!12760 (index!53435 (_ BitVec 32))) (Intermediate!12760 (undefined!13572 Bool) (index!53436 (_ BitVec 32)) (x!135195 (_ BitVec 32))) (Undefined!12760) (MissingVacant!12760 (index!53437 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100671 (_ BitVec 32)) SeekEntryResult!12760)

(assert (=> b!1510074 (= e!843346 (= (seekEntry!0 (select (arr!48568 a!2804) j!70) a!2804 mask!2512) (Found!12760 j!70)))))

(declare-fun b!1510075 () Bool)

(declare-fun res!1030057 () Bool)

(declare-fun e!843344 () Bool)

(assert (=> b!1510075 (=> (not res!1030057) (not e!843344))))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!655045 () SeekEntryResult!12760)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100671 (_ BitVec 32)) SeekEntryResult!12760)

(assert (=> b!1510075 (= res!1030057 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48568 a!2804) j!70) a!2804 mask!2512) lt!655045))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun b!1510077 () Bool)

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1510077 (= e!843344 (not (or (not (= (select (arr!48568 a!2804) j!70) (select (store (arr!48568 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (not (= (select (arr!48568 a!2804) index!487) (select (arr!48568 a!2804) j!70))) (not (= j!70 index!487)) (bvsge mask!2512 #b00000000000000000000000000000000))))))

(assert (=> b!1510077 e!843346))

(declare-fun res!1030055 () Bool)

(assert (=> b!1510077 (=> (not res!1030055) (not e!843346))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100671 (_ BitVec 32)) Bool)

(assert (=> b!1510077 (= res!1030055 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50344 0))(
  ( (Unit!50345) )
))
(declare-fun lt!655043 () Unit!50344)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100671 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50344)

(assert (=> b!1510077 (= lt!655043 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510078 () Bool)

(declare-fun e!843347 () Bool)

(assert (=> b!1510078 (= e!843347 e!843344)))

(declare-fun res!1030059 () Bool)

(assert (=> b!1510078 (=> (not res!1030059) (not e!843344))))

(declare-fun lt!655044 () SeekEntryResult!12760)

(assert (=> b!1510078 (= res!1030059 (= lt!655044 lt!655045))))

(assert (=> b!1510078 (= lt!655045 (Intermediate!12760 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510078 (= lt!655044 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48568 a!2804) j!70) mask!2512) (select (arr!48568 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510079 () Bool)

(declare-fun res!1030054 () Bool)

(assert (=> b!1510079 (=> (not res!1030054) (not e!843347))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510079 (= res!1030054 (validKeyInArray!0 (select (arr!48568 a!2804) j!70)))))

(declare-fun b!1510080 () Bool)

(declare-fun res!1030050 () Bool)

(assert (=> b!1510080 (=> (not res!1030050) (not e!843347))))

(assert (=> b!1510080 (= res!1030050 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49119 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49119 a!2804))))))

(declare-fun b!1510081 () Bool)

(declare-fun res!1030052 () Bool)

(assert (=> b!1510081 (=> (not res!1030052) (not e!843347))))

(declare-datatypes ((List!35231 0))(
  ( (Nil!35228) (Cons!35227 (h!36640 (_ BitVec 64)) (t!49932 List!35231)) )
))
(declare-fun arrayNoDuplicates!0 (array!100671 (_ BitVec 32) List!35231) Bool)

(assert (=> b!1510081 (= res!1030052 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35228))))

(declare-fun b!1510082 () Bool)

(declare-fun res!1030051 () Bool)

(assert (=> b!1510082 (=> (not res!1030051) (not e!843347))))

(assert (=> b!1510082 (= res!1030051 (validKeyInArray!0 (select (arr!48568 a!2804) i!961)))))

(declare-fun b!1510076 () Bool)

(declare-fun res!1030049 () Bool)

(assert (=> b!1510076 (=> (not res!1030049) (not e!843347))))

(assert (=> b!1510076 (= res!1030049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1030053 () Bool)

(assert (=> start!128902 (=> (not res!1030053) (not e!843347))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128902 (= res!1030053 (validMask!0 mask!2512))))

(assert (=> start!128902 e!843347))

(assert (=> start!128902 true))

(declare-fun array_inv!37513 (array!100671) Bool)

(assert (=> start!128902 (array_inv!37513 a!2804)))

(declare-fun b!1510083 () Bool)

(declare-fun res!1030056 () Bool)

(assert (=> b!1510083 (=> (not res!1030056) (not e!843344))))

(assert (=> b!1510083 (= res!1030056 (= lt!655044 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48568 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48568 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100672 (store (arr!48568 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49119 a!2804)) mask!2512)))))

(declare-fun b!1510084 () Bool)

(declare-fun res!1030058 () Bool)

(assert (=> b!1510084 (=> (not res!1030058) (not e!843347))))

(assert (=> b!1510084 (= res!1030058 (and (= (size!49119 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49119 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49119 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!128902 res!1030053) b!1510084))

(assert (= (and b!1510084 res!1030058) b!1510082))

(assert (= (and b!1510082 res!1030051) b!1510079))

(assert (= (and b!1510079 res!1030054) b!1510076))

(assert (= (and b!1510076 res!1030049) b!1510081))

(assert (= (and b!1510081 res!1030052) b!1510080))

(assert (= (and b!1510080 res!1030050) b!1510078))

(assert (= (and b!1510078 res!1030059) b!1510075))

(assert (= (and b!1510075 res!1030057) b!1510083))

(assert (= (and b!1510083 res!1030056) b!1510077))

(assert (= (and b!1510077 res!1030055) b!1510074))

(declare-fun m!1392681 () Bool)

(assert (=> b!1510077 m!1392681))

(declare-fun m!1392683 () Bool)

(assert (=> b!1510077 m!1392683))

(declare-fun m!1392685 () Bool)

(assert (=> b!1510077 m!1392685))

(declare-fun m!1392687 () Bool)

(assert (=> b!1510077 m!1392687))

(declare-fun m!1392689 () Bool)

(assert (=> b!1510077 m!1392689))

(declare-fun m!1392691 () Bool)

(assert (=> b!1510077 m!1392691))

(assert (=> b!1510083 m!1392685))

(assert (=> b!1510083 m!1392689))

(assert (=> b!1510083 m!1392689))

(declare-fun m!1392693 () Bool)

(assert (=> b!1510083 m!1392693))

(assert (=> b!1510083 m!1392693))

(assert (=> b!1510083 m!1392689))

(declare-fun m!1392695 () Bool)

(assert (=> b!1510083 m!1392695))

(declare-fun m!1392697 () Bool)

(assert (=> start!128902 m!1392697))

(declare-fun m!1392699 () Bool)

(assert (=> start!128902 m!1392699))

(declare-fun m!1392701 () Bool)

(assert (=> b!1510082 m!1392701))

(assert (=> b!1510082 m!1392701))

(declare-fun m!1392703 () Bool)

(assert (=> b!1510082 m!1392703))

(declare-fun m!1392705 () Bool)

(assert (=> b!1510081 m!1392705))

(assert (=> b!1510075 m!1392681))

(assert (=> b!1510075 m!1392681))

(declare-fun m!1392707 () Bool)

(assert (=> b!1510075 m!1392707))

(assert (=> b!1510078 m!1392681))

(assert (=> b!1510078 m!1392681))

(declare-fun m!1392709 () Bool)

(assert (=> b!1510078 m!1392709))

(assert (=> b!1510078 m!1392709))

(assert (=> b!1510078 m!1392681))

(declare-fun m!1392711 () Bool)

(assert (=> b!1510078 m!1392711))

(assert (=> b!1510079 m!1392681))

(assert (=> b!1510079 m!1392681))

(declare-fun m!1392713 () Bool)

(assert (=> b!1510079 m!1392713))

(declare-fun m!1392715 () Bool)

(assert (=> b!1510076 m!1392715))

(assert (=> b!1510074 m!1392681))

(assert (=> b!1510074 m!1392681))

(declare-fun m!1392717 () Bool)

(assert (=> b!1510074 m!1392717))

(push 1)

