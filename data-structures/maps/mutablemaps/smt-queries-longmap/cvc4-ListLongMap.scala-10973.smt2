; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128552 () Bool)

(assert start!128552)

(declare-fun b!1506788 () Bool)

(declare-fun res!1027184 () Bool)

(declare-fun e!842023 () Bool)

(assert (=> b!1506788 (=> (not res!1027184) (not e!842023))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100477 0))(
  ( (array!100478 (arr!48477 (Array (_ BitVec 32) (_ BitVec 64))) (size!49028 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100477)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506788 (= res!1027184 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49028 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49028 a!2804))))))

(declare-fun b!1506789 () Bool)

(declare-fun res!1027188 () Bool)

(assert (=> b!1506789 (=> (not res!1027188) (not e!842023))))

(declare-datatypes ((List!35140 0))(
  ( (Nil!35137) (Cons!35136 (h!36537 (_ BitVec 64)) (t!49841 List!35140)) )
))
(declare-fun arrayNoDuplicates!0 (array!100477 (_ BitVec 32) List!35140) Bool)

(assert (=> b!1506789 (= res!1027188 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35137))))

(declare-fun b!1506790 () Bool)

(declare-fun res!1027185 () Bool)

(assert (=> b!1506790 (=> (not res!1027185) (not e!842023))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100477 (_ BitVec 32)) Bool)

(assert (=> b!1506790 (= res!1027185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506791 () Bool)

(assert (=> b!1506791 (= e!842023 false)))

(declare-datatypes ((SeekEntryResult!12669 0))(
  ( (MissingZero!12669 (index!53070 (_ BitVec 32))) (Found!12669 (index!53071 (_ BitVec 32))) (Intermediate!12669 (undefined!13481 Bool) (index!53072 (_ BitVec 32)) (x!134832 (_ BitVec 32))) (Undefined!12669) (MissingVacant!12669 (index!53073 (_ BitVec 32))) )
))
(declare-fun lt!654232 () SeekEntryResult!12669)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100477 (_ BitVec 32)) SeekEntryResult!12669)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506791 (= lt!654232 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48477 a!2804) j!70) mask!2512) (select (arr!48477 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1506787 () Bool)

(declare-fun res!1027183 () Bool)

(assert (=> b!1506787 (=> (not res!1027183) (not e!842023))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506787 (= res!1027183 (validKeyInArray!0 (select (arr!48477 a!2804) i!961)))))

(declare-fun res!1027186 () Bool)

(assert (=> start!128552 (=> (not res!1027186) (not e!842023))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128552 (= res!1027186 (validMask!0 mask!2512))))

(assert (=> start!128552 e!842023))

(assert (=> start!128552 true))

(declare-fun array_inv!37422 (array!100477) Bool)

(assert (=> start!128552 (array_inv!37422 a!2804)))

(declare-fun b!1506792 () Bool)

(declare-fun res!1027187 () Bool)

(assert (=> b!1506792 (=> (not res!1027187) (not e!842023))))

(assert (=> b!1506792 (= res!1027187 (and (= (size!49028 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49028 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49028 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506793 () Bool)

(declare-fun res!1027182 () Bool)

(assert (=> b!1506793 (=> (not res!1027182) (not e!842023))))

(assert (=> b!1506793 (= res!1027182 (validKeyInArray!0 (select (arr!48477 a!2804) j!70)))))

(assert (= (and start!128552 res!1027186) b!1506792))

(assert (= (and b!1506792 res!1027187) b!1506787))

(assert (= (and b!1506787 res!1027183) b!1506793))

(assert (= (and b!1506793 res!1027182) b!1506790))

(assert (= (and b!1506790 res!1027185) b!1506789))

(assert (= (and b!1506789 res!1027188) b!1506788))

(assert (= (and b!1506788 res!1027184) b!1506791))

(declare-fun m!1389745 () Bool)

(assert (=> b!1506791 m!1389745))

(assert (=> b!1506791 m!1389745))

(declare-fun m!1389747 () Bool)

(assert (=> b!1506791 m!1389747))

(assert (=> b!1506791 m!1389747))

(assert (=> b!1506791 m!1389745))

(declare-fun m!1389749 () Bool)

(assert (=> b!1506791 m!1389749))

(declare-fun m!1389751 () Bool)

(assert (=> start!128552 m!1389751))

(declare-fun m!1389753 () Bool)

(assert (=> start!128552 m!1389753))

(declare-fun m!1389755 () Bool)

(assert (=> b!1506790 m!1389755))

(assert (=> b!1506793 m!1389745))

(assert (=> b!1506793 m!1389745))

(declare-fun m!1389757 () Bool)

(assert (=> b!1506793 m!1389757))

(declare-fun m!1389759 () Bool)

(assert (=> b!1506789 m!1389759))

(declare-fun m!1389761 () Bool)

(assert (=> b!1506787 m!1389761))

(assert (=> b!1506787 m!1389761))

(declare-fun m!1389763 () Bool)

(assert (=> b!1506787 m!1389763))

(push 1)

(assert (not start!128552))

(assert (not b!1506791))

(assert (not b!1506789))

(assert (not b!1506787))

(assert (not b!1506793))

(assert (not b!1506790))

(check-sat)

(pop 1)

(push 1)

(check-sat)

