; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128528 () Bool)

(assert start!128528)

(declare-fun b!1506517 () Bool)

(declare-fun res!1026916 () Bool)

(declare-fun e!841951 () Bool)

(assert (=> b!1506517 (=> (not res!1026916) (not e!841951))))

(declare-datatypes ((array!100453 0))(
  ( (array!100454 (arr!48465 (Array (_ BitVec 32) (_ BitVec 64))) (size!49016 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100453)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506517 (= res!1026916 (validKeyInArray!0 (select (arr!48465 a!2804) i!961)))))

(declare-fun b!1506519 () Bool)

(assert (=> b!1506519 (= e!841951 false)))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12657 0))(
  ( (MissingZero!12657 (index!53022 (_ BitVec 32))) (Found!12657 (index!53023 (_ BitVec 32))) (Intermediate!12657 (undefined!13469 Bool) (index!53024 (_ BitVec 32)) (x!134788 (_ BitVec 32))) (Undefined!12657) (MissingVacant!12657 (index!53025 (_ BitVec 32))) )
))
(declare-fun lt!654214 () SeekEntryResult!12657)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100453 (_ BitVec 32)) SeekEntryResult!12657)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506519 (= lt!654214 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48465 a!2804) j!70) mask!2512) (select (arr!48465 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1506520 () Bool)

(declare-fun res!1026914 () Bool)

(assert (=> b!1506520 (=> (not res!1026914) (not e!841951))))

(assert (=> b!1506520 (= res!1026914 (and (= (size!49016 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49016 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49016 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506521 () Bool)

(declare-fun res!1026912 () Bool)

(assert (=> b!1506521 (=> (not res!1026912) (not e!841951))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1506521 (= res!1026912 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49016 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49016 a!2804))))))

(declare-fun b!1506522 () Bool)

(declare-fun res!1026913 () Bool)

(assert (=> b!1506522 (=> (not res!1026913) (not e!841951))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100453 (_ BitVec 32)) Bool)

(assert (=> b!1506522 (= res!1026913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506523 () Bool)

(declare-fun res!1026918 () Bool)

(assert (=> b!1506523 (=> (not res!1026918) (not e!841951))))

(declare-datatypes ((List!35128 0))(
  ( (Nil!35125) (Cons!35124 (h!36525 (_ BitVec 64)) (t!49829 List!35128)) )
))
(declare-fun arrayNoDuplicates!0 (array!100453 (_ BitVec 32) List!35128) Bool)

(assert (=> b!1506523 (= res!1026918 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35125))))

(declare-fun b!1506518 () Bool)

(declare-fun res!1026915 () Bool)

(assert (=> b!1506518 (=> (not res!1026915) (not e!841951))))

(assert (=> b!1506518 (= res!1026915 (validKeyInArray!0 (select (arr!48465 a!2804) j!70)))))

(declare-fun res!1026917 () Bool)

(assert (=> start!128528 (=> (not res!1026917) (not e!841951))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128528 (= res!1026917 (validMask!0 mask!2512))))

(assert (=> start!128528 e!841951))

(assert (=> start!128528 true))

(declare-fun array_inv!37410 (array!100453) Bool)

(assert (=> start!128528 (array_inv!37410 a!2804)))

(assert (= (and start!128528 res!1026917) b!1506520))

(assert (= (and b!1506520 res!1026914) b!1506517))

(assert (= (and b!1506517 res!1026916) b!1506518))

(assert (= (and b!1506518 res!1026915) b!1506522))

(assert (= (and b!1506522 res!1026913) b!1506523))

(assert (= (and b!1506523 res!1026918) b!1506521))

(assert (= (and b!1506521 res!1026912) b!1506519))

(declare-fun m!1389505 () Bool)

(assert (=> b!1506523 m!1389505))

(declare-fun m!1389507 () Bool)

(assert (=> b!1506517 m!1389507))

(assert (=> b!1506517 m!1389507))

(declare-fun m!1389509 () Bool)

(assert (=> b!1506517 m!1389509))

(declare-fun m!1389511 () Bool)

(assert (=> b!1506519 m!1389511))

(assert (=> b!1506519 m!1389511))

(declare-fun m!1389513 () Bool)

(assert (=> b!1506519 m!1389513))

(assert (=> b!1506519 m!1389513))

(assert (=> b!1506519 m!1389511))

(declare-fun m!1389515 () Bool)

(assert (=> b!1506519 m!1389515))

(declare-fun m!1389517 () Bool)

(assert (=> b!1506522 m!1389517))

(assert (=> b!1506518 m!1389511))

(assert (=> b!1506518 m!1389511))

(declare-fun m!1389519 () Bool)

(assert (=> b!1506518 m!1389519))

(declare-fun m!1389521 () Bool)

(assert (=> start!128528 m!1389521))

(declare-fun m!1389523 () Bool)

(assert (=> start!128528 m!1389523))

(push 1)

(assert (not start!128528))

(assert (not b!1506517))

(assert (not b!1506523))

(assert (not b!1506519))

(assert (not b!1506522))

(assert (not b!1506518))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

