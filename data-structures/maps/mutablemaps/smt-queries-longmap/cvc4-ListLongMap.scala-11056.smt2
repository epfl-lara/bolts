; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129218 () Bool)

(assert start!129218)

(declare-fun res!1036095 () Bool)

(declare-fun e!846051 () Bool)

(assert (=> start!129218 (=> (not res!1036095) (not e!846051))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129218 (= res!1036095 (validMask!0 mask!2512))))

(assert (=> start!129218 e!846051))

(assert (=> start!129218 true))

(declare-datatypes ((array!100987 0))(
  ( (array!100988 (arr!48726 (Array (_ BitVec 32) (_ BitVec 64))) (size!49277 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100987)

(declare-fun array_inv!37671 (array!100987) Bool)

(assert (=> start!129218 (array_inv!37671 a!2804)))

(declare-fun b!1516116 () Bool)

(declare-fun res!1036093 () Bool)

(assert (=> b!1516116 (=> (not res!1036093) (not e!846051))))

(declare-datatypes ((List!35389 0))(
  ( (Nil!35386) (Cons!35385 (h!36798 (_ BitVec 64)) (t!50090 List!35389)) )
))
(declare-fun arrayNoDuplicates!0 (array!100987 (_ BitVec 32) List!35389) Bool)

(assert (=> b!1516116 (= res!1036093 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35386))))

(declare-fun b!1516117 () Bool)

(declare-fun res!1036101 () Bool)

(declare-fun e!846052 () Bool)

(assert (=> b!1516117 (=> (not res!1036101) (not e!846052))))

(declare-datatypes ((SeekEntryResult!12918 0))(
  ( (MissingZero!12918 (index!54066 (_ BitVec 32))) (Found!12918 (index!54067 (_ BitVec 32))) (Intermediate!12918 (undefined!13730 Bool) (index!54068 (_ BitVec 32)) (x!135769 (_ BitVec 32))) (Undefined!12918) (MissingVacant!12918 (index!54069 (_ BitVec 32))) )
))
(declare-fun lt!657276 () SeekEntryResult!12918)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100987 (_ BitVec 32)) SeekEntryResult!12918)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516117 (= res!1036101 (= lt!657276 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48726 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48726 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100988 (store (arr!48726 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49277 a!2804)) mask!2512)))))

(declare-fun b!1516118 () Bool)

(assert (=> b!1516118 (= e!846051 e!846052)))

(declare-fun res!1036091 () Bool)

(assert (=> b!1516118 (=> (not res!1036091) (not e!846052))))

(declare-fun lt!657277 () SeekEntryResult!12918)

(assert (=> b!1516118 (= res!1036091 (= lt!657276 lt!657277))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1516118 (= lt!657277 (Intermediate!12918 false resIndex!21 resX!21))))

(assert (=> b!1516118 (= lt!657276 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48726 a!2804) j!70) mask!2512) (select (arr!48726 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516119 () Bool)

(declare-fun res!1036092 () Bool)

(assert (=> b!1516119 (=> (not res!1036092) (not e!846051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100987 (_ BitVec 32)) Bool)

(assert (=> b!1516119 (= res!1036092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516120 () Bool)

(declare-fun res!1036097 () Bool)

(assert (=> b!1516120 (=> (not res!1036097) (not e!846051))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516120 (= res!1036097 (validKeyInArray!0 (select (arr!48726 a!2804) i!961)))))

(declare-fun b!1516121 () Bool)

(declare-fun res!1036098 () Bool)

(assert (=> b!1516121 (=> (not res!1036098) (not e!846052))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1516121 (= res!1036098 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48726 a!2804) j!70) a!2804 mask!2512) lt!657277))))

(declare-fun b!1516122 () Bool)

(declare-fun res!1036096 () Bool)

(assert (=> b!1516122 (=> (not res!1036096) (not e!846051))))

(assert (=> b!1516122 (= res!1036096 (validKeyInArray!0 (select (arr!48726 a!2804) j!70)))))

(declare-fun b!1516123 () Bool)

(declare-fun res!1036099 () Bool)

(assert (=> b!1516123 (=> (not res!1036099) (not e!846051))))

(assert (=> b!1516123 (= res!1036099 (and (= (size!49277 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49277 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49277 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516124 () Bool)

(declare-fun res!1036094 () Bool)

(assert (=> b!1516124 (=> (not res!1036094) (not e!846051))))

(assert (=> b!1516124 (= res!1036094 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49277 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49277 a!2804))))))

(declare-fun b!1516125 () Bool)

(assert (=> b!1516125 (= e!846052 (not (or (not (= (select (arr!48726 a!2804) j!70) (select (store (arr!48726 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21) (bvsge mask!2512 #b00000000000000000000000000000000))))))

(declare-fun e!846050 () Bool)

(assert (=> b!1516125 e!846050))

(declare-fun res!1036100 () Bool)

(assert (=> b!1516125 (=> (not res!1036100) (not e!846050))))

(assert (=> b!1516125 (= res!1036100 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50660 0))(
  ( (Unit!50661) )
))
(declare-fun lt!657275 () Unit!50660)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100987 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50660)

(assert (=> b!1516125 (= lt!657275 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516126 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100987 (_ BitVec 32)) SeekEntryResult!12918)

(assert (=> b!1516126 (= e!846050 (= (seekEntry!0 (select (arr!48726 a!2804) j!70) a!2804 mask!2512) (Found!12918 j!70)))))

(assert (= (and start!129218 res!1036095) b!1516123))

(assert (= (and b!1516123 res!1036099) b!1516120))

(assert (= (and b!1516120 res!1036097) b!1516122))

(assert (= (and b!1516122 res!1036096) b!1516119))

(assert (= (and b!1516119 res!1036092) b!1516116))

(assert (= (and b!1516116 res!1036093) b!1516124))

(assert (= (and b!1516124 res!1036094) b!1516118))

(assert (= (and b!1516118 res!1036091) b!1516121))

(assert (= (and b!1516121 res!1036098) b!1516117))

(assert (= (and b!1516117 res!1036101) b!1516125))

(assert (= (and b!1516125 res!1036100) b!1516126))

(declare-fun m!1399419 () Bool)

(assert (=> b!1516121 m!1399419))

(assert (=> b!1516121 m!1399419))

(declare-fun m!1399421 () Bool)

(assert (=> b!1516121 m!1399421))

(declare-fun m!1399423 () Bool)

(assert (=> b!1516119 m!1399423))

(declare-fun m!1399425 () Bool)

(assert (=> b!1516116 m!1399425))

(assert (=> b!1516122 m!1399419))

(assert (=> b!1516122 m!1399419))

(declare-fun m!1399427 () Bool)

(assert (=> b!1516122 m!1399427))

(assert (=> b!1516126 m!1399419))

(assert (=> b!1516126 m!1399419))

(declare-fun m!1399429 () Bool)

(assert (=> b!1516126 m!1399429))

(declare-fun m!1399431 () Bool)

(assert (=> b!1516120 m!1399431))

(assert (=> b!1516120 m!1399431))

(declare-fun m!1399433 () Bool)

(assert (=> b!1516120 m!1399433))

(assert (=> b!1516125 m!1399419))

(declare-fun m!1399435 () Bool)

(assert (=> b!1516125 m!1399435))

(declare-fun m!1399437 () Bool)

(assert (=> b!1516125 m!1399437))

(declare-fun m!1399439 () Bool)

(assert (=> b!1516125 m!1399439))

(declare-fun m!1399441 () Bool)

(assert (=> b!1516125 m!1399441))

(declare-fun m!1399443 () Bool)

(assert (=> start!129218 m!1399443))

(declare-fun m!1399445 () Bool)

(assert (=> start!129218 m!1399445))

(assert (=> b!1516117 m!1399437))

(assert (=> b!1516117 m!1399439))

(assert (=> b!1516117 m!1399439))

(declare-fun m!1399447 () Bool)

(assert (=> b!1516117 m!1399447))

(assert (=> b!1516117 m!1399447))

(assert (=> b!1516117 m!1399439))

(declare-fun m!1399449 () Bool)

(assert (=> b!1516117 m!1399449))

(assert (=> b!1516118 m!1399419))

(assert (=> b!1516118 m!1399419))

(declare-fun m!1399451 () Bool)

(assert (=> b!1516118 m!1399451))

(assert (=> b!1516118 m!1399451))

(assert (=> b!1516118 m!1399419))

(declare-fun m!1399453 () Bool)

(assert (=> b!1516118 m!1399453))

(push 1)

(assert (not b!1516116))

(assert (not start!129218))

(assert (not b!1516120))

(assert (not b!1516117))

(assert (not b!1516126))

(assert (not b!1516122))

(assert (not b!1516119))

(assert (not b!1516118))

(assert (not b!1516121))

(assert (not b!1516125))

(check-sat)

(pop 1)

(push 1)

(check-sat)

