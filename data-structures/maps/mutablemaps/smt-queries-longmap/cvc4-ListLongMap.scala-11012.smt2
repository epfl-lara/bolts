; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128954 () Bool)

(assert start!128954)

(declare-fun b!1510941 () Bool)

(declare-fun res!1030918 () Bool)

(declare-fun e!843666 () Bool)

(assert (=> b!1510941 (=> (not res!1030918) (not e!843666))))

(declare-datatypes ((array!100723 0))(
  ( (array!100724 (arr!48594 (Array (_ BitVec 32) (_ BitVec 64))) (size!49145 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100723)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510941 (= res!1030918 (validKeyInArray!0 (select (arr!48594 a!2804) j!70)))))

(declare-fun b!1510942 () Bool)

(declare-fun res!1030917 () Bool)

(declare-fun e!843667 () Bool)

(assert (=> b!1510942 (=> (not res!1030917) (not e!843667))))

(declare-datatypes ((SeekEntryResult!12786 0))(
  ( (MissingZero!12786 (index!53538 (_ BitVec 32))) (Found!12786 (index!53539 (_ BitVec 32))) (Intermediate!12786 (undefined!13598 Bool) (index!53540 (_ BitVec 32)) (x!135285 (_ BitVec 32))) (Undefined!12786) (MissingVacant!12786 (index!53541 (_ BitVec 32))) )
))
(declare-fun lt!655278 () SeekEntryResult!12786)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100723 (_ BitVec 32)) SeekEntryResult!12786)

(assert (=> b!1510942 (= res!1030917 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48594 a!2804) j!70) a!2804 mask!2512) lt!655278))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun b!1510943 () Bool)

(assert (=> b!1510943 (= e!843667 (not (or (not (= (select (arr!48594 a!2804) j!70) (select (store (arr!48594 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48594 a!2804) index!487) (select (arr!48594 a!2804) j!70)) (not (= (select (arr!48594 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!2512 #b00000000000000000000000000000000))))))

(declare-fun e!843665 () Bool)

(assert (=> b!1510943 e!843665))

(declare-fun res!1030919 () Bool)

(assert (=> b!1510943 (=> (not res!1030919) (not e!843665))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100723 (_ BitVec 32)) Bool)

(assert (=> b!1510943 (= res!1030919 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50396 0))(
  ( (Unit!50397) )
))
(declare-fun lt!655277 () Unit!50396)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100723 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50396)

(assert (=> b!1510943 (= lt!655277 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1030924 () Bool)

(assert (=> start!128954 (=> (not res!1030924) (not e!843666))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128954 (= res!1030924 (validMask!0 mask!2512))))

(assert (=> start!128954 e!843666))

(assert (=> start!128954 true))

(declare-fun array_inv!37539 (array!100723) Bool)

(assert (=> start!128954 (array_inv!37539 a!2804)))

(declare-fun b!1510944 () Bool)

(declare-fun res!1030925 () Bool)

(assert (=> b!1510944 (=> (not res!1030925) (not e!843666))))

(assert (=> b!1510944 (= res!1030925 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49145 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49145 a!2804))))))

(declare-fun b!1510945 () Bool)

(declare-fun res!1030916 () Bool)

(assert (=> b!1510945 (=> (not res!1030916) (not e!843666))))

(declare-datatypes ((List!35257 0))(
  ( (Nil!35254) (Cons!35253 (h!36666 (_ BitVec 64)) (t!49958 List!35257)) )
))
(declare-fun arrayNoDuplicates!0 (array!100723 (_ BitVec 32) List!35257) Bool)

(assert (=> b!1510945 (= res!1030916 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35254))))

(declare-fun b!1510946 () Bool)

(assert (=> b!1510946 (= e!843666 e!843667)))

(declare-fun res!1030920 () Bool)

(assert (=> b!1510946 (=> (not res!1030920) (not e!843667))))

(declare-fun lt!655279 () SeekEntryResult!12786)

(assert (=> b!1510946 (= res!1030920 (= lt!655279 lt!655278))))

(assert (=> b!1510946 (= lt!655278 (Intermediate!12786 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510946 (= lt!655279 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48594 a!2804) j!70) mask!2512) (select (arr!48594 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510947 () Bool)

(declare-fun res!1030922 () Bool)

(assert (=> b!1510947 (=> (not res!1030922) (not e!843667))))

(assert (=> b!1510947 (= res!1030922 (= lt!655279 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48594 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48594 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100724 (store (arr!48594 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49145 a!2804)) mask!2512)))))

(declare-fun b!1510948 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100723 (_ BitVec 32)) SeekEntryResult!12786)

(assert (=> b!1510948 (= e!843665 (= (seekEntry!0 (select (arr!48594 a!2804) j!70) a!2804 mask!2512) (Found!12786 j!70)))))

(declare-fun b!1510949 () Bool)

(declare-fun res!1030921 () Bool)

(assert (=> b!1510949 (=> (not res!1030921) (not e!843666))))

(assert (=> b!1510949 (= res!1030921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510950 () Bool)

(declare-fun res!1030923 () Bool)

(assert (=> b!1510950 (=> (not res!1030923) (not e!843666))))

(assert (=> b!1510950 (= res!1030923 (and (= (size!49145 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49145 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49145 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510951 () Bool)

(declare-fun res!1030926 () Bool)

(assert (=> b!1510951 (=> (not res!1030926) (not e!843666))))

(assert (=> b!1510951 (= res!1030926 (validKeyInArray!0 (select (arr!48594 a!2804) i!961)))))

(assert (= (and start!128954 res!1030924) b!1510950))

(assert (= (and b!1510950 res!1030923) b!1510951))

(assert (= (and b!1510951 res!1030926) b!1510941))

(assert (= (and b!1510941 res!1030918) b!1510949))

(assert (= (and b!1510949 res!1030921) b!1510945))

(assert (= (and b!1510945 res!1030916) b!1510944))

(assert (= (and b!1510944 res!1030925) b!1510946))

(assert (= (and b!1510946 res!1030920) b!1510942))

(assert (= (and b!1510942 res!1030917) b!1510947))

(assert (= (and b!1510947 res!1030922) b!1510943))

(assert (= (and b!1510943 res!1030919) b!1510948))

(declare-fun m!1393645 () Bool)

(assert (=> b!1510949 m!1393645))

(declare-fun m!1393647 () Bool)

(assert (=> start!128954 m!1393647))

(declare-fun m!1393649 () Bool)

(assert (=> start!128954 m!1393649))

(declare-fun m!1393651 () Bool)

(assert (=> b!1510941 m!1393651))

(assert (=> b!1510941 m!1393651))

(declare-fun m!1393653 () Bool)

(assert (=> b!1510941 m!1393653))

(assert (=> b!1510943 m!1393651))

(declare-fun m!1393655 () Bool)

(assert (=> b!1510943 m!1393655))

(declare-fun m!1393657 () Bool)

(assert (=> b!1510943 m!1393657))

(declare-fun m!1393659 () Bool)

(assert (=> b!1510943 m!1393659))

(declare-fun m!1393661 () Bool)

(assert (=> b!1510943 m!1393661))

(declare-fun m!1393663 () Bool)

(assert (=> b!1510943 m!1393663))

(declare-fun m!1393665 () Bool)

(assert (=> b!1510945 m!1393665))

(assert (=> b!1510946 m!1393651))

(assert (=> b!1510946 m!1393651))

(declare-fun m!1393667 () Bool)

(assert (=> b!1510946 m!1393667))

(assert (=> b!1510946 m!1393667))

(assert (=> b!1510946 m!1393651))

(declare-fun m!1393669 () Bool)

(assert (=> b!1510946 m!1393669))

(declare-fun m!1393671 () Bool)

(assert (=> b!1510951 m!1393671))

(assert (=> b!1510951 m!1393671))

(declare-fun m!1393673 () Bool)

(assert (=> b!1510951 m!1393673))

(assert (=> b!1510948 m!1393651))

(assert (=> b!1510948 m!1393651))

(declare-fun m!1393675 () Bool)

(assert (=> b!1510948 m!1393675))

(assert (=> b!1510947 m!1393657))

(assert (=> b!1510947 m!1393661))

(assert (=> b!1510947 m!1393661))

(declare-fun m!1393677 () Bool)

(assert (=> b!1510947 m!1393677))

(assert (=> b!1510947 m!1393677))

(assert (=> b!1510947 m!1393661))

(declare-fun m!1393679 () Bool)

(assert (=> b!1510947 m!1393679))

(assert (=> b!1510942 m!1393651))

(assert (=> b!1510942 m!1393651))

(declare-fun m!1393681 () Bool)

(assert (=> b!1510942 m!1393681))

(push 1)

(assert (not b!1510951))

(assert (not b!1510947))

(assert (not start!128954))

(assert (not b!1510945))

(assert (not b!1510941))

