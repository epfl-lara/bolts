; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128944 () Bool)

(assert start!128944)

(declare-fun b!1510776 () Bool)

(declare-fun res!1030756 () Bool)

(declare-fun e!843608 () Bool)

(assert (=> b!1510776 (=> (not res!1030756) (not e!843608))))

(declare-datatypes ((array!100713 0))(
  ( (array!100714 (arr!48589 (Array (_ BitVec 32) (_ BitVec 64))) (size!49140 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100713)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510776 (= res!1030756 (validKeyInArray!0 (select (arr!48589 a!2804) j!70)))))

(declare-fun b!1510777 () Bool)

(declare-fun res!1030753 () Bool)

(declare-fun e!843607 () Bool)

(assert (=> b!1510777 (=> (not res!1030753) (not e!843607))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12781 0))(
  ( (MissingZero!12781 (index!53518 (_ BitVec 32))) (Found!12781 (index!53519 (_ BitVec 32))) (Intermediate!12781 (undefined!13593 Bool) (index!53520 (_ BitVec 32)) (x!135272 (_ BitVec 32))) (Undefined!12781) (MissingVacant!12781 (index!53521 (_ BitVec 32))) )
))
(declare-fun lt!655232 () SeekEntryResult!12781)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100713 (_ BitVec 32)) SeekEntryResult!12781)

(assert (=> b!1510777 (= res!1030753 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48589 a!2804) j!70) a!2804 mask!2512) lt!655232))))

(declare-fun b!1510778 () Bool)

(declare-fun res!1030760 () Bool)

(assert (=> b!1510778 (=> (not res!1030760) (not e!843608))))

(declare-datatypes ((List!35252 0))(
  ( (Nil!35249) (Cons!35248 (h!36661 (_ BitVec 64)) (t!49953 List!35252)) )
))
(declare-fun arrayNoDuplicates!0 (array!100713 (_ BitVec 32) List!35252) Bool)

(assert (=> b!1510778 (= res!1030760 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35249))))

(declare-fun b!1510779 () Bool)

(declare-fun res!1030759 () Bool)

(assert (=> b!1510779 (=> (not res!1030759) (not e!843608))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1510779 (= res!1030759 (and (= (size!49140 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49140 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49140 a!2804)) (not (= i!961 j!70))))))

(declare-fun e!843605 () Bool)

(declare-fun b!1510780 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100713 (_ BitVec 32)) SeekEntryResult!12781)

(assert (=> b!1510780 (= e!843605 (= (seekEntry!0 (select (arr!48589 a!2804) j!70) a!2804 mask!2512) (Found!12781 j!70)))))

(declare-fun b!1510781 () Bool)

(declare-fun res!1030754 () Bool)

(assert (=> b!1510781 (=> (not res!1030754) (not e!843608))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1510781 (= res!1030754 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49140 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49140 a!2804))))))

(declare-fun b!1510782 () Bool)

(assert (=> b!1510782 (= e!843608 e!843607)))

(declare-fun res!1030761 () Bool)

(assert (=> b!1510782 (=> (not res!1030761) (not e!843607))))

(declare-fun lt!655234 () SeekEntryResult!12781)

(assert (=> b!1510782 (= res!1030761 (= lt!655234 lt!655232))))

(assert (=> b!1510782 (= lt!655232 (Intermediate!12781 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510782 (= lt!655234 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48589 a!2804) j!70) mask!2512) (select (arr!48589 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1030757 () Bool)

(assert (=> start!128944 (=> (not res!1030757) (not e!843608))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128944 (= res!1030757 (validMask!0 mask!2512))))

(assert (=> start!128944 e!843608))

(assert (=> start!128944 true))

(declare-fun array_inv!37534 (array!100713) Bool)

(assert (=> start!128944 (array_inv!37534 a!2804)))

(declare-fun b!1510783 () Bool)

(assert (=> b!1510783 (= e!843607 (not true))))

(assert (=> b!1510783 e!843605))

(declare-fun res!1030755 () Bool)

(assert (=> b!1510783 (=> (not res!1030755) (not e!843605))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100713 (_ BitVec 32)) Bool)

(assert (=> b!1510783 (= res!1030755 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50386 0))(
  ( (Unit!50387) )
))
(declare-fun lt!655233 () Unit!50386)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100713 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50386)

(assert (=> b!1510783 (= lt!655233 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510784 () Bool)

(declare-fun res!1030752 () Bool)

(assert (=> b!1510784 (=> (not res!1030752) (not e!843608))))

(assert (=> b!1510784 (= res!1030752 (validKeyInArray!0 (select (arr!48589 a!2804) i!961)))))

(declare-fun b!1510785 () Bool)

(declare-fun res!1030751 () Bool)

(assert (=> b!1510785 (=> (not res!1030751) (not e!843607))))

(assert (=> b!1510785 (= res!1030751 (= lt!655234 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48589 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48589 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100714 (store (arr!48589 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49140 a!2804)) mask!2512)))))

(declare-fun b!1510786 () Bool)

(declare-fun res!1030758 () Bool)

(assert (=> b!1510786 (=> (not res!1030758) (not e!843608))))

(assert (=> b!1510786 (= res!1030758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!128944 res!1030757) b!1510779))

(assert (= (and b!1510779 res!1030759) b!1510784))

(assert (= (and b!1510784 res!1030752) b!1510776))

(assert (= (and b!1510776 res!1030756) b!1510786))

(assert (= (and b!1510786 res!1030758) b!1510778))

(assert (= (and b!1510778 res!1030760) b!1510781))

(assert (= (and b!1510781 res!1030754) b!1510782))

(assert (= (and b!1510782 res!1030761) b!1510777))

(assert (= (and b!1510777 res!1030753) b!1510785))

(assert (= (and b!1510785 res!1030751) b!1510783))

(assert (= (and b!1510783 res!1030755) b!1510780))

(declare-fun m!1393461 () Bool)

(assert (=> b!1510782 m!1393461))

(assert (=> b!1510782 m!1393461))

(declare-fun m!1393463 () Bool)

(assert (=> b!1510782 m!1393463))

(assert (=> b!1510782 m!1393463))

(assert (=> b!1510782 m!1393461))

(declare-fun m!1393465 () Bool)

(assert (=> b!1510782 m!1393465))

(declare-fun m!1393467 () Bool)

(assert (=> b!1510783 m!1393467))

(declare-fun m!1393469 () Bool)

(assert (=> b!1510783 m!1393469))

(declare-fun m!1393471 () Bool)

(assert (=> b!1510786 m!1393471))

(declare-fun m!1393473 () Bool)

(assert (=> b!1510778 m!1393473))

(declare-fun m!1393475 () Bool)

(assert (=> start!128944 m!1393475))

(declare-fun m!1393477 () Bool)

(assert (=> start!128944 m!1393477))

(declare-fun m!1393479 () Bool)

(assert (=> b!1510785 m!1393479))

(declare-fun m!1393481 () Bool)

(assert (=> b!1510785 m!1393481))

(assert (=> b!1510785 m!1393481))

(declare-fun m!1393483 () Bool)

(assert (=> b!1510785 m!1393483))

(assert (=> b!1510785 m!1393483))

(assert (=> b!1510785 m!1393481))

(declare-fun m!1393485 () Bool)

(assert (=> b!1510785 m!1393485))

(declare-fun m!1393487 () Bool)

(assert (=> b!1510784 m!1393487))

(assert (=> b!1510784 m!1393487))

(declare-fun m!1393489 () Bool)

(assert (=> b!1510784 m!1393489))

(assert (=> b!1510777 m!1393461))

(assert (=> b!1510777 m!1393461))

(declare-fun m!1393491 () Bool)

(assert (=> b!1510777 m!1393491))

(assert (=> b!1510776 m!1393461))

(assert (=> b!1510776 m!1393461))

(declare-fun m!1393493 () Bool)

(assert (=> b!1510776 m!1393493))

(assert (=> b!1510780 m!1393461))

(assert (=> b!1510780 m!1393461))

(declare-fun m!1393495 () Bool)

(assert (=> b!1510780 m!1393495))

(push 1)

