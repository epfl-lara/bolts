; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129238 () Bool)

(assert start!129238)

(declare-fun b!1516468 () Bool)

(declare-fun e!846193 () Bool)

(declare-fun e!846197 () Bool)

(assert (=> b!1516468 (= e!846193 (not e!846197))))

(declare-fun res!1036453 () Bool)

(assert (=> b!1516468 (=> res!1036453 e!846197)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!101007 0))(
  ( (array!101008 (arr!48736 (Array (_ BitVec 32) (_ BitVec 64))) (size!49287 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101007)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1516468 (= res!1036453 (or (not (= (select (arr!48736 a!2804) j!70) (select (store (arr!48736 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846192 () Bool)

(assert (=> b!1516468 e!846192))

(declare-fun res!1036455 () Bool)

(assert (=> b!1516468 (=> (not res!1036455) (not e!846192))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101007 (_ BitVec 32)) Bool)

(assert (=> b!1516468 (= res!1036455 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50680 0))(
  ( (Unit!50681) )
))
(declare-fun lt!657391 () Unit!50680)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101007 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50680)

(assert (=> b!1516468 (= lt!657391 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516469 () Bool)

(declare-fun res!1036444 () Bool)

(declare-fun e!846194 () Bool)

(assert (=> b!1516469 (=> (not res!1036444) (not e!846194))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516469 (= res!1036444 (validKeyInArray!0 (select (arr!48736 a!2804) i!961)))))

(declare-fun b!1516470 () Bool)

(declare-fun res!1036454 () Bool)

(assert (=> b!1516470 (=> (not res!1036454) (not e!846193))))

(declare-datatypes ((SeekEntryResult!12928 0))(
  ( (MissingZero!12928 (index!54106 (_ BitVec 32))) (Found!12928 (index!54107 (_ BitVec 32))) (Intermediate!12928 (undefined!13740 Bool) (index!54108 (_ BitVec 32)) (x!135811 (_ BitVec 32))) (Undefined!12928) (MissingVacant!12928 (index!54109 (_ BitVec 32))) )
))
(declare-fun lt!657390 () SeekEntryResult!12928)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101007 (_ BitVec 32)) SeekEntryResult!12928)

(assert (=> b!1516470 (= res!1036454 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48736 a!2804) j!70) a!2804 mask!2512) lt!657390))))

(declare-fun b!1516471 () Bool)

(declare-fun res!1036450 () Bool)

(assert (=> b!1516471 (=> (not res!1036450) (not e!846194))))

(assert (=> b!1516471 (= res!1036450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516472 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101007 (_ BitVec 32)) SeekEntryResult!12928)

(assert (=> b!1516472 (= e!846192 (= (seekEntry!0 (select (arr!48736 a!2804) j!70) a!2804 mask!2512) (Found!12928 j!70)))))

(declare-fun b!1516473 () Bool)

(declare-fun res!1036448 () Bool)

(assert (=> b!1516473 (=> (not res!1036448) (not e!846193))))

(declare-fun lt!657387 () SeekEntryResult!12928)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516473 (= res!1036448 (= lt!657387 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48736 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48736 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101008 (store (arr!48736 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49287 a!2804)) mask!2512)))))

(declare-fun b!1516474 () Bool)

(declare-fun res!1036447 () Bool)

(assert (=> b!1516474 (=> (not res!1036447) (not e!846194))))

(declare-datatypes ((List!35399 0))(
  ( (Nil!35396) (Cons!35395 (h!36808 (_ BitVec 64)) (t!50100 List!35399)) )
))
(declare-fun arrayNoDuplicates!0 (array!101007 (_ BitVec 32) List!35399) Bool)

(assert (=> b!1516474 (= res!1036447 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35396))))

(declare-fun b!1516475 () Bool)

(declare-fun res!1036445 () Bool)

(assert (=> b!1516475 (=> (not res!1036445) (not e!846194))))

(assert (=> b!1516475 (= res!1036445 (and (= (size!49287 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49287 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49287 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516477 () Bool)

(declare-fun res!1036446 () Bool)

(assert (=> b!1516477 (=> (not res!1036446) (not e!846194))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1516477 (= res!1036446 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49287 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49287 a!2804))))))

(declare-fun b!1516478 () Bool)

(assert (=> b!1516478 (= e!846194 e!846193)))

(declare-fun res!1036452 () Bool)

(assert (=> b!1516478 (=> (not res!1036452) (not e!846193))))

(assert (=> b!1516478 (= res!1036452 (= lt!657387 lt!657390))))

(assert (=> b!1516478 (= lt!657390 (Intermediate!12928 false resIndex!21 resX!21))))

(assert (=> b!1516478 (= lt!657387 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48736 a!2804) j!70) mask!2512) (select (arr!48736 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516479 () Bool)

(declare-fun res!1036449 () Bool)

(assert (=> b!1516479 (=> (not res!1036449) (not e!846194))))

(assert (=> b!1516479 (= res!1036449 (validKeyInArray!0 (select (arr!48736 a!2804) j!70)))))

(declare-fun b!1516480 () Bool)

(declare-fun e!846195 () Bool)

(assert (=> b!1516480 (= e!846197 e!846195)))

(declare-fun res!1036443 () Bool)

(assert (=> b!1516480 (=> res!1036443 e!846195)))

(declare-fun lt!657388 () (_ BitVec 32))

(assert (=> b!1516480 (= res!1036443 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657388 #b00000000000000000000000000000000) (bvsge lt!657388 (size!49287 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516480 (= lt!657388 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun res!1036451 () Bool)

(assert (=> start!129238 (=> (not res!1036451) (not e!846194))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129238 (= res!1036451 (validMask!0 mask!2512))))

(assert (=> start!129238 e!846194))

(assert (=> start!129238 true))

(declare-fun array_inv!37681 (array!101007) Bool)

(assert (=> start!129238 (array_inv!37681 a!2804)))

(declare-fun b!1516476 () Bool)

(assert (=> b!1516476 (= e!846195 true)))

(declare-fun lt!657389 () SeekEntryResult!12928)

(assert (=> b!1516476 (= lt!657389 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657388 (select (arr!48736 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!129238 res!1036451) b!1516475))

(assert (= (and b!1516475 res!1036445) b!1516469))

(assert (= (and b!1516469 res!1036444) b!1516479))

(assert (= (and b!1516479 res!1036449) b!1516471))

(assert (= (and b!1516471 res!1036450) b!1516474))

(assert (= (and b!1516474 res!1036447) b!1516477))

(assert (= (and b!1516477 res!1036446) b!1516478))

(assert (= (and b!1516478 res!1036452) b!1516470))

(assert (= (and b!1516470 res!1036454) b!1516473))

(assert (= (and b!1516473 res!1036448) b!1516468))

(assert (= (and b!1516468 res!1036455) b!1516472))

(assert (= (and b!1516468 (not res!1036453)) b!1516480))

(assert (= (and b!1516480 (not res!1036443)) b!1516476))

(declare-fun m!1399791 () Bool)

(assert (=> start!129238 m!1399791))

(declare-fun m!1399793 () Bool)

(assert (=> start!129238 m!1399793))

(declare-fun m!1399795 () Bool)

(assert (=> b!1516469 m!1399795))

(assert (=> b!1516469 m!1399795))

(declare-fun m!1399797 () Bool)

(assert (=> b!1516469 m!1399797))

(declare-fun m!1399799 () Bool)

(assert (=> b!1516473 m!1399799))

(declare-fun m!1399801 () Bool)

(assert (=> b!1516473 m!1399801))

(assert (=> b!1516473 m!1399801))

(declare-fun m!1399803 () Bool)

(assert (=> b!1516473 m!1399803))

(assert (=> b!1516473 m!1399803))

(assert (=> b!1516473 m!1399801))

(declare-fun m!1399805 () Bool)

(assert (=> b!1516473 m!1399805))

(declare-fun m!1399807 () Bool)

(assert (=> b!1516479 m!1399807))

(assert (=> b!1516479 m!1399807))

(declare-fun m!1399809 () Bool)

(assert (=> b!1516479 m!1399809))

(declare-fun m!1399811 () Bool)

(assert (=> b!1516480 m!1399811))

(assert (=> b!1516476 m!1399807))

(assert (=> b!1516476 m!1399807))

(declare-fun m!1399813 () Bool)

(assert (=> b!1516476 m!1399813))

(assert (=> b!1516472 m!1399807))

(assert (=> b!1516472 m!1399807))

(declare-fun m!1399815 () Bool)

(assert (=> b!1516472 m!1399815))

(assert (=> b!1516468 m!1399807))

(declare-fun m!1399817 () Bool)

(assert (=> b!1516468 m!1399817))

(assert (=> b!1516468 m!1399799))

(assert (=> b!1516468 m!1399801))

(declare-fun m!1399819 () Bool)

(assert (=> b!1516468 m!1399819))

(assert (=> b!1516478 m!1399807))

(assert (=> b!1516478 m!1399807))

(declare-fun m!1399821 () Bool)

(assert (=> b!1516478 m!1399821))

(assert (=> b!1516478 m!1399821))

(assert (=> b!1516478 m!1399807))

(declare-fun m!1399823 () Bool)

(assert (=> b!1516478 m!1399823))

(declare-fun m!1399825 () Bool)

(assert (=> b!1516474 m!1399825))

(declare-fun m!1399827 () Bool)

(assert (=> b!1516471 m!1399827))

(assert (=> b!1516470 m!1399807))

(assert (=> b!1516470 m!1399807))

(declare-fun m!1399829 () Bool)

(assert (=> b!1516470 m!1399829))

(push 1)

