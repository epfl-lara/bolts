; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128546 () Bool)

(assert start!128546)

(declare-fun b!1506723 () Bool)

(declare-fun res!1027123 () Bool)

(declare-fun e!842005 () Bool)

(assert (=> b!1506723 (=> (not res!1027123) (not e!842005))))

(declare-datatypes ((array!100471 0))(
  ( (array!100472 (arr!48474 (Array (_ BitVec 32) (_ BitVec 64))) (size!49025 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100471)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506723 (= res!1027123 (validKeyInArray!0 (select (arr!48474 a!2804) j!70)))))

(declare-fun b!1506724 () Bool)

(declare-fun res!1027122 () Bool)

(assert (=> b!1506724 (=> (not res!1027122) (not e!842005))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12666 0))(
  ( (MissingZero!12666 (index!53058 (_ BitVec 32))) (Found!12666 (index!53059 (_ BitVec 32))) (Intermediate!12666 (undefined!13478 Bool) (index!53060 (_ BitVec 32)) (x!134821 (_ BitVec 32))) (Undefined!12666) (MissingVacant!12666 (index!53061 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100471 (_ BitVec 32)) SeekEntryResult!12666)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506724 (= res!1027122 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48474 a!2804) j!70) mask!2512) (select (arr!48474 a!2804) j!70) a!2804 mask!2512) (Intermediate!12666 false resIndex!21 resX!21)))))

(declare-fun b!1506725 () Bool)

(declare-fun res!1027119 () Bool)

(assert (=> b!1506725 (=> (not res!1027119) (not e!842005))))

(declare-datatypes ((List!35137 0))(
  ( (Nil!35134) (Cons!35133 (h!36534 (_ BitVec 64)) (t!49838 List!35137)) )
))
(declare-fun arrayNoDuplicates!0 (array!100471 (_ BitVec 32) List!35137) Bool)

(assert (=> b!1506725 (= res!1027119 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35134))))

(declare-fun b!1506726 () Bool)

(declare-fun res!1027121 () Bool)

(assert (=> b!1506726 (=> (not res!1027121) (not e!842005))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100471 (_ BitVec 32)) Bool)

(assert (=> b!1506726 (= res!1027121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506727 () Bool)

(declare-fun res!1027124 () Bool)

(assert (=> b!1506727 (=> (not res!1027124) (not e!842005))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1506727 (= res!1027124 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49025 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49025 a!2804))))))

(declare-fun res!1027118 () Bool)

(assert (=> start!128546 (=> (not res!1027118) (not e!842005))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128546 (= res!1027118 (validMask!0 mask!2512))))

(assert (=> start!128546 e!842005))

(assert (=> start!128546 true))

(declare-fun array_inv!37419 (array!100471) Bool)

(assert (=> start!128546 (array_inv!37419 a!2804)))

(declare-fun b!1506728 () Bool)

(declare-fun res!1027120 () Bool)

(assert (=> b!1506728 (=> (not res!1027120) (not e!842005))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1506728 (= res!1027120 (validKeyInArray!0 (select (arr!48474 a!2804) i!961)))))

(declare-fun b!1506729 () Bool)

(declare-fun res!1027125 () Bool)

(assert (=> b!1506729 (=> (not res!1027125) (not e!842005))))

(assert (=> b!1506729 (= res!1027125 (and (= (size!49025 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49025 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49025 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506730 () Bool)

(assert (=> b!1506730 (= e!842005 (and (bvsge mask!2512 #b00000000000000000000000000000000) (bvsge index!487 (bvadd #b00000000000000000000000000000001 mask!2512))))))

(assert (= (and start!128546 res!1027118) b!1506729))

(assert (= (and b!1506729 res!1027125) b!1506728))

(assert (= (and b!1506728 res!1027120) b!1506723))

(assert (= (and b!1506723 res!1027123) b!1506726))

(assert (= (and b!1506726 res!1027121) b!1506725))

(assert (= (and b!1506725 res!1027119) b!1506727))

(assert (= (and b!1506727 res!1027124) b!1506724))

(assert (= (and b!1506724 res!1027122) b!1506730))

(declare-fun m!1389685 () Bool)

(assert (=> start!128546 m!1389685))

(declare-fun m!1389687 () Bool)

(assert (=> start!128546 m!1389687))

(declare-fun m!1389689 () Bool)

(assert (=> b!1506726 m!1389689))

(declare-fun m!1389691 () Bool)

(assert (=> b!1506725 m!1389691))

(declare-fun m!1389693 () Bool)

(assert (=> b!1506723 m!1389693))

(assert (=> b!1506723 m!1389693))

(declare-fun m!1389695 () Bool)

(assert (=> b!1506723 m!1389695))

(assert (=> b!1506724 m!1389693))

(assert (=> b!1506724 m!1389693))

(declare-fun m!1389697 () Bool)

(assert (=> b!1506724 m!1389697))

(assert (=> b!1506724 m!1389697))

(assert (=> b!1506724 m!1389693))

(declare-fun m!1389699 () Bool)

(assert (=> b!1506724 m!1389699))

(declare-fun m!1389701 () Bool)

(assert (=> b!1506728 m!1389701))

(assert (=> b!1506728 m!1389701))

(declare-fun m!1389703 () Bool)

(assert (=> b!1506728 m!1389703))

(push 1)

(assert (not start!128546))

(assert (not b!1506728))

(assert (not b!1506723))

(assert (not b!1506726))

(assert (not b!1506724))

(assert (not b!1506725))

(check-sat)

(pop 1)

(push 1)

(check-sat)

