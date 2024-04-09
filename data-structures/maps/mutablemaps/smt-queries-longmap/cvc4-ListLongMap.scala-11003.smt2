; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128900 () Bool)

(assert start!128900)

(declare-fun b!1510041 () Bool)

(declare-fun res!1030024 () Bool)

(declare-fun e!843332 () Bool)

(assert (=> b!1510041 (=> (not res!1030024) (not e!843332))))

(declare-datatypes ((array!100669 0))(
  ( (array!100670 (arr!48567 (Array (_ BitVec 32) (_ BitVec 64))) (size!49118 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100669)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100669 (_ BitVec 32)) Bool)

(assert (=> b!1510041 (= res!1030024 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510042 () Bool)

(declare-fun res!1030018 () Bool)

(assert (=> b!1510042 (=> (not res!1030018) (not e!843332))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1510042 (= res!1030018 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49118 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49118 a!2804))))))

(declare-fun b!1510043 () Bool)

(declare-fun res!1030025 () Bool)

(assert (=> b!1510043 (=> (not res!1030025) (not e!843332))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510043 (= res!1030025 (validKeyInArray!0 (select (arr!48567 a!2804) j!70)))))

(declare-fun e!843335 () Bool)

(declare-fun b!1510044 () Bool)

(declare-datatypes ((SeekEntryResult!12759 0))(
  ( (MissingZero!12759 (index!53430 (_ BitVec 32))) (Found!12759 (index!53431 (_ BitVec 32))) (Intermediate!12759 (undefined!13571 Bool) (index!53432 (_ BitVec 32)) (x!135186 (_ BitVec 32))) (Undefined!12759) (MissingVacant!12759 (index!53433 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100669 (_ BitVec 32)) SeekEntryResult!12759)

(assert (=> b!1510044 (= e!843335 (= (seekEntry!0 (select (arr!48567 a!2804) j!70) a!2804 mask!2512) (Found!12759 j!70)))))

(declare-fun b!1510045 () Bool)

(declare-fun e!843333 () Bool)

(assert (=> b!1510045 (= e!843333 (not true))))

(assert (=> b!1510045 e!843335))

(declare-fun res!1030022 () Bool)

(assert (=> b!1510045 (=> (not res!1030022) (not e!843335))))

(assert (=> b!1510045 (= res!1030022 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50342 0))(
  ( (Unit!50343) )
))
(declare-fun lt!655034 () Unit!50342)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100669 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50342)

(assert (=> b!1510045 (= lt!655034 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510046 () Bool)

(declare-fun res!1030021 () Bool)

(assert (=> b!1510046 (=> (not res!1030021) (not e!843333))))

(declare-fun lt!655035 () SeekEntryResult!12759)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100669 (_ BitVec 32)) SeekEntryResult!12759)

(assert (=> b!1510046 (= res!1030021 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48567 a!2804) j!70) a!2804 mask!2512) lt!655035))))

(declare-fun res!1030023 () Bool)

(assert (=> start!128900 (=> (not res!1030023) (not e!843332))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128900 (= res!1030023 (validMask!0 mask!2512))))

(assert (=> start!128900 e!843332))

(assert (=> start!128900 true))

(declare-fun array_inv!37512 (array!100669) Bool)

(assert (=> start!128900 (array_inv!37512 a!2804)))

(declare-fun b!1510047 () Bool)

(declare-fun res!1030020 () Bool)

(assert (=> b!1510047 (=> (not res!1030020) (not e!843332))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1510047 (= res!1030020 (validKeyInArray!0 (select (arr!48567 a!2804) i!961)))))

(declare-fun b!1510048 () Bool)

(declare-fun res!1030017 () Bool)

(assert (=> b!1510048 (=> (not res!1030017) (not e!843332))))

(declare-datatypes ((List!35230 0))(
  ( (Nil!35227) (Cons!35226 (h!36639 (_ BitVec 64)) (t!49931 List!35230)) )
))
(declare-fun arrayNoDuplicates!0 (array!100669 (_ BitVec 32) List!35230) Bool)

(assert (=> b!1510048 (= res!1030017 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35227))))

(declare-fun b!1510049 () Bool)

(declare-fun res!1030019 () Bool)

(assert (=> b!1510049 (=> (not res!1030019) (not e!843332))))

(assert (=> b!1510049 (= res!1030019 (and (= (size!49118 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49118 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49118 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510050 () Bool)

(declare-fun res!1030026 () Bool)

(assert (=> b!1510050 (=> (not res!1030026) (not e!843333))))

(declare-fun lt!655036 () SeekEntryResult!12759)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510050 (= res!1030026 (= lt!655036 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48567 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48567 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100670 (store (arr!48567 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49118 a!2804)) mask!2512)))))

(declare-fun b!1510051 () Bool)

(assert (=> b!1510051 (= e!843332 e!843333)))

(declare-fun res!1030016 () Bool)

(assert (=> b!1510051 (=> (not res!1030016) (not e!843333))))

(assert (=> b!1510051 (= res!1030016 (= lt!655036 lt!655035))))

(assert (=> b!1510051 (= lt!655035 (Intermediate!12759 false resIndex!21 resX!21))))

(assert (=> b!1510051 (= lt!655036 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48567 a!2804) j!70) mask!2512) (select (arr!48567 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!128900 res!1030023) b!1510049))

(assert (= (and b!1510049 res!1030019) b!1510047))

(assert (= (and b!1510047 res!1030020) b!1510043))

(assert (= (and b!1510043 res!1030025) b!1510041))

(assert (= (and b!1510041 res!1030024) b!1510048))

(assert (= (and b!1510048 res!1030017) b!1510042))

(assert (= (and b!1510042 res!1030018) b!1510051))

(assert (= (and b!1510051 res!1030016) b!1510046))

(assert (= (and b!1510046 res!1030021) b!1510050))

(assert (= (and b!1510050 res!1030026) b!1510045))

(assert (= (and b!1510045 res!1030022) b!1510044))

(declare-fun m!1392645 () Bool)

(assert (=> b!1510046 m!1392645))

(assert (=> b!1510046 m!1392645))

(declare-fun m!1392647 () Bool)

(assert (=> b!1510046 m!1392647))

(declare-fun m!1392649 () Bool)

(assert (=> b!1510048 m!1392649))

(assert (=> b!1510051 m!1392645))

(assert (=> b!1510051 m!1392645))

(declare-fun m!1392651 () Bool)

(assert (=> b!1510051 m!1392651))

(assert (=> b!1510051 m!1392651))

(assert (=> b!1510051 m!1392645))

(declare-fun m!1392653 () Bool)

(assert (=> b!1510051 m!1392653))

(declare-fun m!1392655 () Bool)

(assert (=> b!1510045 m!1392655))

(declare-fun m!1392657 () Bool)

(assert (=> b!1510045 m!1392657))

(assert (=> b!1510043 m!1392645))

(assert (=> b!1510043 m!1392645))

(declare-fun m!1392659 () Bool)

(assert (=> b!1510043 m!1392659))

(assert (=> b!1510044 m!1392645))

(assert (=> b!1510044 m!1392645))

(declare-fun m!1392661 () Bool)

(assert (=> b!1510044 m!1392661))

(declare-fun m!1392663 () Bool)

(assert (=> start!128900 m!1392663))

(declare-fun m!1392665 () Bool)

(assert (=> start!128900 m!1392665))

(declare-fun m!1392667 () Bool)

(assert (=> b!1510041 m!1392667))

(declare-fun m!1392669 () Bool)

(assert (=> b!1510047 m!1392669))

(assert (=> b!1510047 m!1392669))

(declare-fun m!1392671 () Bool)

(assert (=> b!1510047 m!1392671))

(declare-fun m!1392673 () Bool)

(assert (=> b!1510050 m!1392673))

(declare-fun m!1392675 () Bool)

(assert (=> b!1510050 m!1392675))

(assert (=> b!1510050 m!1392675))

(declare-fun m!1392677 () Bool)

(assert (=> b!1510050 m!1392677))

(assert (=> b!1510050 m!1392677))

(assert (=> b!1510050 m!1392675))

(declare-fun m!1392679 () Bool)

(assert (=> b!1510050 m!1392679))

(push 1)

(assert (not b!1510050))

