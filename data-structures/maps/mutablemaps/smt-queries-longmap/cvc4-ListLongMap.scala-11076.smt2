; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129338 () Bool)

(assert start!129338)

(declare-fun b!1518418 () Bool)

(declare-fun res!1038402 () Bool)

(declare-fun e!847096 () Bool)

(assert (=> b!1518418 (=> (not res!1038402) (not e!847096))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101107 0))(
  ( (array!101108 (arr!48786 (Array (_ BitVec 32) (_ BitVec 64))) (size!49337 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101107)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1518418 (= res!1038402 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49337 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49337 a!2804))))))

(declare-fun res!1038401 () Bool)

(assert (=> start!129338 (=> (not res!1038401) (not e!847096))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129338 (= res!1038401 (validMask!0 mask!2512))))

(assert (=> start!129338 e!847096))

(assert (=> start!129338 true))

(declare-fun array_inv!37731 (array!101107) Bool)

(assert (=> start!129338 (array_inv!37731 a!2804)))

(declare-fun b!1518419 () Bool)

(declare-fun res!1038397 () Bool)

(declare-fun e!847095 () Bool)

(assert (=> b!1518419 (=> (not res!1038397) (not e!847095))))

(declare-datatypes ((SeekEntryResult!12978 0))(
  ( (MissingZero!12978 (index!54306 (_ BitVec 32))) (Found!12978 (index!54307 (_ BitVec 32))) (Intermediate!12978 (undefined!13790 Bool) (index!54308 (_ BitVec 32)) (x!135989 (_ BitVec 32))) (Undefined!12978) (MissingVacant!12978 (index!54309 (_ BitVec 32))) )
))
(declare-fun lt!658138 () SeekEntryResult!12978)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101107 (_ BitVec 32)) SeekEntryResult!12978)

(assert (=> b!1518419 (= res!1038397 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48786 a!2804) j!70) a!2804 mask!2512) lt!658138))))

(declare-fun b!1518420 () Bool)

(assert (=> b!1518420 (= e!847096 e!847095)))

(declare-fun res!1038404 () Bool)

(assert (=> b!1518420 (=> (not res!1038404) (not e!847095))))

(declare-fun lt!658141 () SeekEntryResult!12978)

(assert (=> b!1518420 (= res!1038404 (= lt!658141 lt!658138))))

(assert (=> b!1518420 (= lt!658138 (Intermediate!12978 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518420 (= lt!658141 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48786 a!2804) j!70) mask!2512) (select (arr!48786 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518421 () Bool)

(declare-fun e!847092 () Bool)

(assert (=> b!1518421 (= e!847095 (not e!847092))))

(declare-fun res!1038395 () Bool)

(assert (=> b!1518421 (=> res!1038395 e!847092)))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1518421 (= res!1038395 (or (not (= (select (arr!48786 a!2804) j!70) (select (store (arr!48786 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!847097 () Bool)

(assert (=> b!1518421 e!847097))

(declare-fun res!1038398 () Bool)

(assert (=> b!1518421 (=> (not res!1038398) (not e!847097))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101107 (_ BitVec 32)) Bool)

(assert (=> b!1518421 (= res!1038398 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50780 0))(
  ( (Unit!50781) )
))
(declare-fun lt!658137 () Unit!50780)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101107 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50780)

(assert (=> b!1518421 (= lt!658137 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1518422 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101107 (_ BitVec 32)) SeekEntryResult!12978)

(assert (=> b!1518422 (= e!847097 (= (seekEntry!0 (select (arr!48786 a!2804) j!70) a!2804 mask!2512) (Found!12978 j!70)))))

(declare-fun b!1518423 () Bool)

(declare-fun res!1038405 () Bool)

(assert (=> b!1518423 (=> (not res!1038405) (not e!847095))))

(assert (=> b!1518423 (= res!1038405 (= lt!658141 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48786 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48786 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101108 (store (arr!48786 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49337 a!2804)) mask!2512)))))

(declare-fun b!1518424 () Bool)

(declare-fun res!1038400 () Bool)

(assert (=> b!1518424 (=> (not res!1038400) (not e!847096))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518424 (= res!1038400 (validKeyInArray!0 (select (arr!48786 a!2804) i!961)))))

(declare-fun b!1518425 () Bool)

(declare-fun res!1038399 () Bool)

(assert (=> b!1518425 (=> (not res!1038399) (not e!847096))))

(assert (=> b!1518425 (= res!1038399 (and (= (size!49337 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49337 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49337 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1518426 () Bool)

(declare-fun res!1038394 () Bool)

(assert (=> b!1518426 (=> (not res!1038394) (not e!847096))))

(declare-datatypes ((List!35449 0))(
  ( (Nil!35446) (Cons!35445 (h!36858 (_ BitVec 64)) (t!50150 List!35449)) )
))
(declare-fun arrayNoDuplicates!0 (array!101107 (_ BitVec 32) List!35449) Bool)

(assert (=> b!1518426 (= res!1038394 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35446))))

(declare-fun b!1518427 () Bool)

(declare-fun e!847094 () Bool)

(assert (=> b!1518427 (= e!847092 e!847094)))

(declare-fun res!1038403 () Bool)

(assert (=> b!1518427 (=> res!1038403 e!847094)))

(declare-fun lt!658139 () (_ BitVec 32))

(assert (=> b!1518427 (= res!1038403 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658139 #b00000000000000000000000000000000) (bvsge lt!658139 (size!49337 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518427 (= lt!658139 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1518428 () Bool)

(declare-fun res!1038396 () Bool)

(assert (=> b!1518428 (=> (not res!1038396) (not e!847096))))

(assert (=> b!1518428 (= res!1038396 (validKeyInArray!0 (select (arr!48786 a!2804) j!70)))))

(declare-fun b!1518429 () Bool)

(declare-fun res!1038393 () Bool)

(assert (=> b!1518429 (=> (not res!1038393) (not e!847096))))

(assert (=> b!1518429 (= res!1038393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1518430 () Bool)

(assert (=> b!1518430 (= e!847094 true)))

(declare-fun lt!658140 () SeekEntryResult!12978)

(assert (=> b!1518430 (= lt!658140 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658139 (select (arr!48786 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!129338 res!1038401) b!1518425))

(assert (= (and b!1518425 res!1038399) b!1518424))

(assert (= (and b!1518424 res!1038400) b!1518428))

(assert (= (and b!1518428 res!1038396) b!1518429))

(assert (= (and b!1518429 res!1038393) b!1518426))

(assert (= (and b!1518426 res!1038394) b!1518418))

(assert (= (and b!1518418 res!1038402) b!1518420))

(assert (= (and b!1518420 res!1038404) b!1518419))

(assert (= (and b!1518419 res!1038397) b!1518423))

(assert (= (and b!1518423 res!1038405) b!1518421))

(assert (= (and b!1518421 res!1038398) b!1518422))

(assert (= (and b!1518421 (not res!1038395)) b!1518427))

(assert (= (and b!1518427 (not res!1038403)) b!1518430))

(declare-fun m!1401791 () Bool)

(assert (=> b!1518427 m!1401791))

(declare-fun m!1401793 () Bool)

(assert (=> b!1518422 m!1401793))

(assert (=> b!1518422 m!1401793))

(declare-fun m!1401795 () Bool)

(assert (=> b!1518422 m!1401795))

(declare-fun m!1401797 () Bool)

(assert (=> b!1518423 m!1401797))

(declare-fun m!1401799 () Bool)

(assert (=> b!1518423 m!1401799))

(assert (=> b!1518423 m!1401799))

(declare-fun m!1401801 () Bool)

(assert (=> b!1518423 m!1401801))

(assert (=> b!1518423 m!1401801))

(assert (=> b!1518423 m!1401799))

(declare-fun m!1401803 () Bool)

(assert (=> b!1518423 m!1401803))

(assert (=> b!1518428 m!1401793))

(assert (=> b!1518428 m!1401793))

(declare-fun m!1401805 () Bool)

(assert (=> b!1518428 m!1401805))

(assert (=> b!1518420 m!1401793))

(assert (=> b!1518420 m!1401793))

(declare-fun m!1401807 () Bool)

(assert (=> b!1518420 m!1401807))

(assert (=> b!1518420 m!1401807))

(assert (=> b!1518420 m!1401793))

(declare-fun m!1401809 () Bool)

(assert (=> b!1518420 m!1401809))

(assert (=> b!1518430 m!1401793))

(assert (=> b!1518430 m!1401793))

(declare-fun m!1401811 () Bool)

(assert (=> b!1518430 m!1401811))

(declare-fun m!1401813 () Bool)

(assert (=> b!1518426 m!1401813))

(declare-fun m!1401815 () Bool)

(assert (=> b!1518429 m!1401815))

(assert (=> b!1518419 m!1401793))

(assert (=> b!1518419 m!1401793))

(declare-fun m!1401817 () Bool)

(assert (=> b!1518419 m!1401817))

(declare-fun m!1401819 () Bool)

(assert (=> start!129338 m!1401819))

(declare-fun m!1401821 () Bool)

(assert (=> start!129338 m!1401821))

(declare-fun m!1401823 () Bool)

(assert (=> b!1518424 m!1401823))

(assert (=> b!1518424 m!1401823))

(declare-fun m!1401825 () Bool)

(assert (=> b!1518424 m!1401825))

(assert (=> b!1518421 m!1401793))

(declare-fun m!1401827 () Bool)

(assert (=> b!1518421 m!1401827))

(assert (=> b!1518421 m!1401797))

(assert (=> b!1518421 m!1401799))

(declare-fun m!1401829 () Bool)

(assert (=> b!1518421 m!1401829))

(push 1)

