; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128834 () Bool)

(assert start!128834)

(declare-fun b!1509035 () Bool)

(declare-fun res!1029017 () Bool)

(declare-fun e!842991 () Bool)

(assert (=> b!1509035 (=> (not res!1029017) (not e!842991))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100603 0))(
  ( (array!100604 (arr!48534 (Array (_ BitVec 32) (_ BitVec 64))) (size!49085 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100603)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1509035 (= res!1029017 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49085 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49085 a!2804))))))

(declare-fun b!1509036 () Bool)

(declare-fun res!1029010 () Bool)

(assert (=> b!1509036 (=> (not res!1029010) (not e!842991))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1509036 (= res!1029010 (and (= (size!49085 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49085 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49085 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509037 () Bool)

(declare-fun res!1029016 () Bool)

(assert (=> b!1509037 (=> (not res!1029016) (not e!842991))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100603 (_ BitVec 32)) Bool)

(assert (=> b!1509037 (= res!1029016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509038 () Bool)

(declare-fun e!842992 () Bool)

(assert (=> b!1509038 (= e!842992 false)))

(declare-datatypes ((SeekEntryResult!12726 0))(
  ( (MissingZero!12726 (index!53298 (_ BitVec 32))) (Found!12726 (index!53299 (_ BitVec 32))) (Intermediate!12726 (undefined!13538 Bool) (index!53300 (_ BitVec 32)) (x!135065 (_ BitVec 32))) (Undefined!12726) (MissingVacant!12726 (index!53301 (_ BitVec 32))) )
))
(declare-fun lt!654765 () SeekEntryResult!12726)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100603 (_ BitVec 32)) SeekEntryResult!12726)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509038 (= lt!654765 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48534 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48534 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100604 (store (arr!48534 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49085 a!2804)) mask!2512))))

(declare-fun b!1509039 () Bool)

(declare-fun res!1029014 () Bool)

(assert (=> b!1509039 (=> (not res!1029014) (not e!842991))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509039 (= res!1029014 (validKeyInArray!0 (select (arr!48534 a!2804) i!961)))))

(declare-fun b!1509041 () Bool)

(assert (=> b!1509041 (= e!842991 e!842992)))

(declare-fun res!1029018 () Bool)

(assert (=> b!1509041 (=> (not res!1029018) (not e!842992))))

(declare-fun lt!654766 () SeekEntryResult!12726)

(assert (=> b!1509041 (= res!1029018 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48534 a!2804) j!70) mask!2512) (select (arr!48534 a!2804) j!70) a!2804 mask!2512) lt!654766))))

(assert (=> b!1509041 (= lt!654766 (Intermediate!12726 false resIndex!21 resX!21))))

(declare-fun b!1509040 () Bool)

(declare-fun res!1029013 () Bool)

(assert (=> b!1509040 (=> (not res!1029013) (not e!842991))))

(declare-datatypes ((List!35197 0))(
  ( (Nil!35194) (Cons!35193 (h!36606 (_ BitVec 64)) (t!49898 List!35197)) )
))
(declare-fun arrayNoDuplicates!0 (array!100603 (_ BitVec 32) List!35197) Bool)

(assert (=> b!1509040 (= res!1029013 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35194))))

(declare-fun res!1029011 () Bool)

(assert (=> start!128834 (=> (not res!1029011) (not e!842991))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128834 (= res!1029011 (validMask!0 mask!2512))))

(assert (=> start!128834 e!842991))

(assert (=> start!128834 true))

(declare-fun array_inv!37479 (array!100603) Bool)

(assert (=> start!128834 (array_inv!37479 a!2804)))

(declare-fun b!1509042 () Bool)

(declare-fun res!1029015 () Bool)

(assert (=> b!1509042 (=> (not res!1029015) (not e!842992))))

(assert (=> b!1509042 (= res!1029015 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48534 a!2804) j!70) a!2804 mask!2512) lt!654766))))

(declare-fun b!1509043 () Bool)

(declare-fun res!1029012 () Bool)

(assert (=> b!1509043 (=> (not res!1029012) (not e!842991))))

(assert (=> b!1509043 (= res!1029012 (validKeyInArray!0 (select (arr!48534 a!2804) j!70)))))

(assert (= (and start!128834 res!1029011) b!1509036))

(assert (= (and b!1509036 res!1029010) b!1509039))

(assert (= (and b!1509039 res!1029014) b!1509043))

(assert (= (and b!1509043 res!1029012) b!1509037))

(assert (= (and b!1509037 res!1029016) b!1509040))

(assert (= (and b!1509040 res!1029013) b!1509035))

(assert (= (and b!1509035 res!1029017) b!1509041))

(assert (= (and b!1509041 res!1029018) b!1509042))

(assert (= (and b!1509042 res!1029015) b!1509038))

(declare-fun m!1391529 () Bool)

(assert (=> b!1509037 m!1391529))

(declare-fun m!1391531 () Bool)

(assert (=> b!1509041 m!1391531))

(assert (=> b!1509041 m!1391531))

(declare-fun m!1391533 () Bool)

(assert (=> b!1509041 m!1391533))

(assert (=> b!1509041 m!1391533))

(assert (=> b!1509041 m!1391531))

(declare-fun m!1391535 () Bool)

(assert (=> b!1509041 m!1391535))

(declare-fun m!1391537 () Bool)

(assert (=> b!1509040 m!1391537))

(assert (=> b!1509042 m!1391531))

(assert (=> b!1509042 m!1391531))

(declare-fun m!1391539 () Bool)

(assert (=> b!1509042 m!1391539))

(declare-fun m!1391541 () Bool)

(assert (=> b!1509039 m!1391541))

(assert (=> b!1509039 m!1391541))

(declare-fun m!1391543 () Bool)

(assert (=> b!1509039 m!1391543))

(declare-fun m!1391545 () Bool)

(assert (=> start!128834 m!1391545))

(declare-fun m!1391547 () Bool)

(assert (=> start!128834 m!1391547))

(assert (=> b!1509043 m!1391531))

(assert (=> b!1509043 m!1391531))

(declare-fun m!1391549 () Bool)

(assert (=> b!1509043 m!1391549))

(declare-fun m!1391551 () Bool)

(assert (=> b!1509038 m!1391551))

(declare-fun m!1391553 () Bool)

(assert (=> b!1509038 m!1391553))

(assert (=> b!1509038 m!1391553))

(declare-fun m!1391555 () Bool)

(assert (=> b!1509038 m!1391555))

(assert (=> b!1509038 m!1391555))

(assert (=> b!1509038 m!1391553))

(declare-fun m!1391557 () Bool)

(assert (=> b!1509038 m!1391557))

(push 1)

(assert (not b!1509039))

(assert (not start!128834))

(assert (not b!1509041))

(assert (not b!1509038))

(assert (not b!1509043))

(assert (not b!1509037))

(assert (not b!1509040))

