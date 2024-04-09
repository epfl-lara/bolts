; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128840 () Bool)

(assert start!128840)

(declare-fun b!1509116 () Bool)

(declare-fun res!1029094 () Bool)

(declare-fun e!843018 () Bool)

(assert (=> b!1509116 (=> (not res!1029094) (not e!843018))))

(declare-datatypes ((array!100609 0))(
  ( (array!100610 (arr!48537 (Array (_ BitVec 32) (_ BitVec 64))) (size!49088 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100609)

(declare-datatypes ((List!35200 0))(
  ( (Nil!35197) (Cons!35196 (h!36609 (_ BitVec 64)) (t!49901 List!35200)) )
))
(declare-fun arrayNoDuplicates!0 (array!100609 (_ BitVec 32) List!35200) Bool)

(assert (=> b!1509116 (= res!1029094 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35197))))

(declare-fun b!1509117 () Bool)

(declare-fun res!1029099 () Bool)

(declare-fun e!843020 () Bool)

(assert (=> b!1509117 (=> (not res!1029099) (not e!843020))))

(declare-datatypes ((SeekEntryResult!12729 0))(
  ( (MissingZero!12729 (index!53310 (_ BitVec 32))) (Found!12729 (index!53311 (_ BitVec 32))) (Intermediate!12729 (undefined!13541 Bool) (index!53312 (_ BitVec 32)) (x!135076 (_ BitVec 32))) (Undefined!12729) (MissingVacant!12729 (index!53313 (_ BitVec 32))) )
))
(declare-fun lt!654783 () SeekEntryResult!12729)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100609 (_ BitVec 32)) SeekEntryResult!12729)

(assert (=> b!1509117 (= res!1029099 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48537 a!2804) j!70) a!2804 mask!2512) lt!654783))))

(declare-fun b!1509118 () Bool)

(assert (=> b!1509118 (= e!843020 false)))

(declare-fun lt!654784 () SeekEntryResult!12729)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509118 (= lt!654784 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48537 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48537 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100610 (store (arr!48537 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49088 a!2804)) mask!2512))))

(declare-fun b!1509119 () Bool)

(declare-fun res!1029092 () Bool)

(assert (=> b!1509119 (=> (not res!1029092) (not e!843018))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509119 (= res!1029092 (validKeyInArray!0 (select (arr!48537 a!2804) j!70)))))

(declare-fun res!1029096 () Bool)

(assert (=> start!128840 (=> (not res!1029096) (not e!843018))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128840 (= res!1029096 (validMask!0 mask!2512))))

(assert (=> start!128840 e!843018))

(assert (=> start!128840 true))

(declare-fun array_inv!37482 (array!100609) Bool)

(assert (=> start!128840 (array_inv!37482 a!2804)))

(declare-fun b!1509120 () Bool)

(declare-fun res!1029091 () Bool)

(assert (=> b!1509120 (=> (not res!1029091) (not e!843018))))

(assert (=> b!1509120 (= res!1029091 (validKeyInArray!0 (select (arr!48537 a!2804) i!961)))))

(declare-fun b!1509121 () Bool)

(declare-fun res!1029097 () Bool)

(assert (=> b!1509121 (=> (not res!1029097) (not e!843018))))

(assert (=> b!1509121 (= res!1029097 (and (= (size!49088 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49088 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49088 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509122 () Bool)

(declare-fun res!1029093 () Bool)

(assert (=> b!1509122 (=> (not res!1029093) (not e!843018))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1509122 (= res!1029093 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49088 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49088 a!2804))))))

(declare-fun b!1509123 () Bool)

(declare-fun res!1029098 () Bool)

(assert (=> b!1509123 (=> (not res!1029098) (not e!843018))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100609 (_ BitVec 32)) Bool)

(assert (=> b!1509123 (= res!1029098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509124 () Bool)

(assert (=> b!1509124 (= e!843018 e!843020)))

(declare-fun res!1029095 () Bool)

(assert (=> b!1509124 (=> (not res!1029095) (not e!843020))))

(assert (=> b!1509124 (= res!1029095 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48537 a!2804) j!70) mask!2512) (select (arr!48537 a!2804) j!70) a!2804 mask!2512) lt!654783))))

(assert (=> b!1509124 (= lt!654783 (Intermediate!12729 false resIndex!21 resX!21))))

(assert (= (and start!128840 res!1029096) b!1509121))

(assert (= (and b!1509121 res!1029097) b!1509120))

(assert (= (and b!1509120 res!1029091) b!1509119))

(assert (= (and b!1509119 res!1029092) b!1509123))

(assert (= (and b!1509123 res!1029098) b!1509116))

(assert (= (and b!1509116 res!1029094) b!1509122))

(assert (= (and b!1509122 res!1029093) b!1509124))

(assert (= (and b!1509124 res!1029095) b!1509117))

(assert (= (and b!1509117 res!1029099) b!1509118))

(declare-fun m!1391619 () Bool)

(assert (=> b!1509124 m!1391619))

(assert (=> b!1509124 m!1391619))

(declare-fun m!1391621 () Bool)

(assert (=> b!1509124 m!1391621))

(assert (=> b!1509124 m!1391621))

(assert (=> b!1509124 m!1391619))

(declare-fun m!1391623 () Bool)

(assert (=> b!1509124 m!1391623))

(declare-fun m!1391625 () Bool)

(assert (=> b!1509120 m!1391625))

(assert (=> b!1509120 m!1391625))

(declare-fun m!1391627 () Bool)

(assert (=> b!1509120 m!1391627))

(assert (=> b!1509119 m!1391619))

(assert (=> b!1509119 m!1391619))

(declare-fun m!1391629 () Bool)

(assert (=> b!1509119 m!1391629))

(declare-fun m!1391631 () Bool)

(assert (=> start!128840 m!1391631))

(declare-fun m!1391633 () Bool)

(assert (=> start!128840 m!1391633))

(declare-fun m!1391635 () Bool)

(assert (=> b!1509118 m!1391635))

(declare-fun m!1391637 () Bool)

(assert (=> b!1509118 m!1391637))

(assert (=> b!1509118 m!1391637))

(declare-fun m!1391639 () Bool)

(assert (=> b!1509118 m!1391639))

(assert (=> b!1509118 m!1391639))

(assert (=> b!1509118 m!1391637))

(declare-fun m!1391641 () Bool)

(assert (=> b!1509118 m!1391641))

(assert (=> b!1509117 m!1391619))

(assert (=> b!1509117 m!1391619))

(declare-fun m!1391643 () Bool)

(assert (=> b!1509117 m!1391643))

(declare-fun m!1391645 () Bool)

(assert (=> b!1509123 m!1391645))

(declare-fun m!1391647 () Bool)

(assert (=> b!1509116 m!1391647))

(push 1)

(assert (not b!1509123))

(assert (not b!1509117))

(assert (not b!1509118))

(assert (not start!128840))

(assert (not b!1509119))

(assert (not b!1509116))

(assert (not b!1509124))

(assert (not b!1509120))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

