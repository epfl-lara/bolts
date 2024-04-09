; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129658 () Bool)

(assert start!129658)

(declare-fun b!1521632 () Bool)

(declare-fun res!1040993 () Bool)

(declare-fun e!848586 () Bool)

(assert (=> b!1521632 (=> (not res!1040993) (not e!848586))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101260 0))(
  ( (array!101261 (arr!48858 (Array (_ BitVec 32) (_ BitVec 64))) (size!49409 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101260)

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13044 0))(
  ( (MissingZero!13044 (index!54570 (_ BitVec 32))) (Found!13044 (index!54571 (_ BitVec 32))) (Intermediate!13044 (undefined!13856 Bool) (index!54572 (_ BitVec 32)) (x!136267 (_ BitVec 32))) (Undefined!13044) (MissingVacant!13044 (index!54573 (_ BitVec 32))) )
))
(declare-fun lt!659344 () SeekEntryResult!13044)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101260 (_ BitVec 32)) SeekEntryResult!13044)

(assert (=> b!1521632 (= res!1040993 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48858 a!2804) j!70) a!2804 mask!2512) lt!659344))))

(declare-fun b!1521633 () Bool)

(declare-fun res!1040994 () Bool)

(declare-fun e!848587 () Bool)

(assert (=> b!1521633 (=> (not res!1040994) (not e!848587))))

(declare-datatypes ((List!35521 0))(
  ( (Nil!35518) (Cons!35517 (h!36939 (_ BitVec 64)) (t!50222 List!35521)) )
))
(declare-fun arrayNoDuplicates!0 (array!101260 (_ BitVec 32) List!35521) Bool)

(assert (=> b!1521633 (= res!1040994 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35518))))

(declare-fun b!1521634 () Bool)

(assert (=> b!1521634 (= e!848586 false)))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun lt!659343 () SeekEntryResult!13044)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521634 (= lt!659343 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48858 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48858 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101261 (store (arr!48858 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49409 a!2804)) mask!2512))))

(declare-fun b!1521635 () Bool)

(declare-fun res!1040995 () Bool)

(assert (=> b!1521635 (=> (not res!1040995) (not e!848587))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521635 (= res!1040995 (validKeyInArray!0 (select (arr!48858 a!2804) j!70)))))

(declare-fun b!1521636 () Bool)

(declare-fun res!1040996 () Bool)

(assert (=> b!1521636 (=> (not res!1040996) (not e!848587))))

(assert (=> b!1521636 (= res!1040996 (validKeyInArray!0 (select (arr!48858 a!2804) i!961)))))

(declare-fun res!1040999 () Bool)

(assert (=> start!129658 (=> (not res!1040999) (not e!848587))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129658 (= res!1040999 (validMask!0 mask!2512))))

(assert (=> start!129658 e!848587))

(assert (=> start!129658 true))

(declare-fun array_inv!37803 (array!101260) Bool)

(assert (=> start!129658 (array_inv!37803 a!2804)))

(declare-fun b!1521637 () Bool)

(assert (=> b!1521637 (= e!848587 e!848586)))

(declare-fun res!1041000 () Bool)

(assert (=> b!1521637 (=> (not res!1041000) (not e!848586))))

(assert (=> b!1521637 (= res!1041000 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48858 a!2804) j!70) mask!2512) (select (arr!48858 a!2804) j!70) a!2804 mask!2512) lt!659344))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1521637 (= lt!659344 (Intermediate!13044 false resIndex!21 resX!21))))

(declare-fun b!1521638 () Bool)

(declare-fun res!1040992 () Bool)

(assert (=> b!1521638 (=> (not res!1040992) (not e!848587))))

(assert (=> b!1521638 (= res!1040992 (and (= (size!49409 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49409 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49409 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521639 () Bool)

(declare-fun res!1040997 () Bool)

(assert (=> b!1521639 (=> (not res!1040997) (not e!848587))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101260 (_ BitVec 32)) Bool)

(assert (=> b!1521639 (= res!1040997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521640 () Bool)

(declare-fun res!1040998 () Bool)

(assert (=> b!1521640 (=> (not res!1040998) (not e!848587))))

(assert (=> b!1521640 (= res!1040998 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49409 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49409 a!2804))))))

(assert (= (and start!129658 res!1040999) b!1521638))

(assert (= (and b!1521638 res!1040992) b!1521636))

(assert (= (and b!1521636 res!1040996) b!1521635))

(assert (= (and b!1521635 res!1040995) b!1521639))

(assert (= (and b!1521639 res!1040997) b!1521633))

(assert (= (and b!1521633 res!1040994) b!1521640))

(assert (= (and b!1521640 res!1040998) b!1521637))

(assert (= (and b!1521637 res!1041000) b!1521632))

(assert (= (and b!1521632 res!1040993) b!1521634))

(declare-fun m!1404791 () Bool)

(assert (=> b!1521634 m!1404791))

(declare-fun m!1404793 () Bool)

(assert (=> b!1521634 m!1404793))

(assert (=> b!1521634 m!1404793))

(declare-fun m!1404795 () Bool)

(assert (=> b!1521634 m!1404795))

(assert (=> b!1521634 m!1404795))

(assert (=> b!1521634 m!1404793))

(declare-fun m!1404797 () Bool)

(assert (=> b!1521634 m!1404797))

(declare-fun m!1404799 () Bool)

(assert (=> b!1521635 m!1404799))

(assert (=> b!1521635 m!1404799))

(declare-fun m!1404801 () Bool)

(assert (=> b!1521635 m!1404801))

(declare-fun m!1404803 () Bool)

(assert (=> start!129658 m!1404803))

(declare-fun m!1404805 () Bool)

(assert (=> start!129658 m!1404805))

(declare-fun m!1404807 () Bool)

(assert (=> b!1521639 m!1404807))

(assert (=> b!1521632 m!1404799))

(assert (=> b!1521632 m!1404799))

(declare-fun m!1404809 () Bool)

(assert (=> b!1521632 m!1404809))

(declare-fun m!1404811 () Bool)

(assert (=> b!1521636 m!1404811))

(assert (=> b!1521636 m!1404811))

(declare-fun m!1404813 () Bool)

(assert (=> b!1521636 m!1404813))

(declare-fun m!1404815 () Bool)

(assert (=> b!1521633 m!1404815))

(assert (=> b!1521637 m!1404799))

(assert (=> b!1521637 m!1404799))

(declare-fun m!1404817 () Bool)

(assert (=> b!1521637 m!1404817))

(assert (=> b!1521637 m!1404817))

(assert (=> b!1521637 m!1404799))

(declare-fun m!1404819 () Bool)

(assert (=> b!1521637 m!1404819))

(push 1)

