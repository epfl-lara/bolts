; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128996 () Bool)

(assert start!128996)

(declare-fun b!1511650 () Bool)

(declare-fun res!1031629 () Bool)

(declare-fun e!843928 () Bool)

(assert (=> b!1511650 (=> (not res!1031629) (not e!843928))))

(declare-datatypes ((array!100765 0))(
  ( (array!100766 (arr!48615 (Array (_ BitVec 32) (_ BitVec 64))) (size!49166 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100765)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511650 (= res!1031629 (validKeyInArray!0 (select (arr!48615 a!2804) j!70)))))

(declare-fun b!1511651 () Bool)

(declare-fun res!1031630 () Bool)

(declare-fun e!843929 () Bool)

(assert (=> b!1511651 (=> (not res!1031630) (not e!843929))))

(declare-datatypes ((SeekEntryResult!12807 0))(
  ( (MissingZero!12807 (index!53622 (_ BitVec 32))) (Found!12807 (index!53623 (_ BitVec 32))) (Intermediate!12807 (undefined!13619 Bool) (index!53624 (_ BitVec 32)) (x!135362 (_ BitVec 32))) (Undefined!12807) (MissingVacant!12807 (index!53625 (_ BitVec 32))) )
))
(declare-fun lt!655467 () SeekEntryResult!12807)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100765 (_ BitVec 32)) SeekEntryResult!12807)

(assert (=> b!1511651 (= res!1031630 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48615 a!2804) j!70) a!2804 mask!2512) lt!655467))))

(declare-fun b!1511652 () Bool)

(declare-fun res!1031631 () Bool)

(assert (=> b!1511652 (=> (not res!1031631) (not e!843928))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1511652 (= res!1031631 (and (= (size!49166 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49166 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49166 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511653 () Bool)

(declare-fun res!1031635 () Bool)

(assert (=> b!1511653 (=> (not res!1031635) (not e!843928))))

(assert (=> b!1511653 (= res!1031635 (validKeyInArray!0 (select (arr!48615 a!2804) i!961)))))

(declare-fun b!1511655 () Bool)

(declare-fun res!1031637 () Bool)

(assert (=> b!1511655 (=> (not res!1031637) (not e!843928))))

(declare-datatypes ((List!35278 0))(
  ( (Nil!35275) (Cons!35274 (h!36687 (_ BitVec 64)) (t!49979 List!35278)) )
))
(declare-fun arrayNoDuplicates!0 (array!100765 (_ BitVec 32) List!35278) Bool)

(assert (=> b!1511655 (= res!1031637 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35275))))

(declare-fun b!1511656 () Bool)

(declare-fun res!1031628 () Bool)

(assert (=> b!1511656 (=> (not res!1031628) (not e!843928))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1511656 (= res!1031628 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49166 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49166 a!2804))))))

(declare-fun b!1511657 () Bool)

(declare-fun e!843925 () Bool)

(declare-fun e!843927 () Bool)

(assert (=> b!1511657 (= e!843925 e!843927)))

(declare-fun res!1031627 () Bool)

(assert (=> b!1511657 (=> res!1031627 e!843927)))

(assert (=> b!1511657 (= res!1031627 (or (not (= (select (arr!48615 a!2804) j!70) (select (store (arr!48615 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48615 a!2804) index!487) (select (arr!48615 a!2804) j!70)) (not (= (select (arr!48615 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1511658 () Bool)

(declare-fun res!1031632 () Bool)

(assert (=> b!1511658 (=> (not res!1031632) (not e!843929))))

(declare-fun lt!655466 () SeekEntryResult!12807)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511658 (= res!1031632 (= lt!655466 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48615 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48615 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100766 (store (arr!48615 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49166 a!2804)) mask!2512)))))

(declare-fun res!1031625 () Bool)

(assert (=> start!128996 (=> (not res!1031625) (not e!843928))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128996 (= res!1031625 (validMask!0 mask!2512))))

(assert (=> start!128996 e!843928))

(assert (=> start!128996 true))

(declare-fun array_inv!37560 (array!100765) Bool)

(assert (=> start!128996 (array_inv!37560 a!2804)))

(declare-fun b!1511654 () Bool)

(assert (=> b!1511654 (= e!843928 e!843929)))

(declare-fun res!1031633 () Bool)

(assert (=> b!1511654 (=> (not res!1031633) (not e!843929))))

(assert (=> b!1511654 (= res!1031633 (= lt!655466 lt!655467))))

(assert (=> b!1511654 (= lt!655467 (Intermediate!12807 false resIndex!21 resX!21))))

(assert (=> b!1511654 (= lt!655466 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48615 a!2804) j!70) mask!2512) (select (arr!48615 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511659 () Bool)

(assert (=> b!1511659 (= e!843929 (not true))))

(assert (=> b!1511659 e!843925))

(declare-fun res!1031636 () Bool)

(assert (=> b!1511659 (=> (not res!1031636) (not e!843925))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100765 (_ BitVec 32)) Bool)

(assert (=> b!1511659 (= res!1031636 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50438 0))(
  ( (Unit!50439) )
))
(declare-fun lt!655468 () Unit!50438)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100765 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50438)

(assert (=> b!1511659 (= lt!655468 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1511660 () Bool)

(declare-fun res!1031626 () Bool)

(assert (=> b!1511660 (=> (not res!1031626) (not e!843928))))

(assert (=> b!1511660 (= res!1031626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511661 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100765 (_ BitVec 32)) SeekEntryResult!12807)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100765 (_ BitVec 32)) SeekEntryResult!12807)

(assert (=> b!1511661 (= e!843927 (= (seekEntryOrOpen!0 (select (arr!48615 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48615 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1511662 () Bool)

(declare-fun res!1031634 () Bool)

(assert (=> b!1511662 (=> (not res!1031634) (not e!843925))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100765 (_ BitVec 32)) SeekEntryResult!12807)

(assert (=> b!1511662 (= res!1031634 (= (seekEntry!0 (select (arr!48615 a!2804) j!70) a!2804 mask!2512) (Found!12807 j!70)))))

(assert (= (and start!128996 res!1031625) b!1511652))

(assert (= (and b!1511652 res!1031631) b!1511653))

(assert (= (and b!1511653 res!1031635) b!1511650))

(assert (= (and b!1511650 res!1031629) b!1511660))

(assert (= (and b!1511660 res!1031626) b!1511655))

(assert (= (and b!1511655 res!1031637) b!1511656))

(assert (= (and b!1511656 res!1031628) b!1511654))

(assert (= (and b!1511654 res!1031633) b!1511651))

(assert (= (and b!1511651 res!1031630) b!1511658))

(assert (= (and b!1511658 res!1031632) b!1511659))

(assert (= (and b!1511659 res!1031636) b!1511662))

(assert (= (and b!1511662 res!1031634) b!1511657))

(assert (= (and b!1511657 (not res!1031627)) b!1511661))

(declare-fun m!1394421 () Bool)

(assert (=> b!1511654 m!1394421))

(assert (=> b!1511654 m!1394421))

(declare-fun m!1394423 () Bool)

(assert (=> b!1511654 m!1394423))

(assert (=> b!1511654 m!1394423))

(assert (=> b!1511654 m!1394421))

(declare-fun m!1394425 () Bool)

(assert (=> b!1511654 m!1394425))

(declare-fun m!1394427 () Bool)

(assert (=> b!1511653 m!1394427))

(assert (=> b!1511653 m!1394427))

(declare-fun m!1394429 () Bool)

(assert (=> b!1511653 m!1394429))

(assert (=> b!1511662 m!1394421))

(assert (=> b!1511662 m!1394421))

(declare-fun m!1394431 () Bool)

(assert (=> b!1511662 m!1394431))

(assert (=> b!1511657 m!1394421))

(declare-fun m!1394433 () Bool)

(assert (=> b!1511657 m!1394433))

(declare-fun m!1394435 () Bool)

(assert (=> b!1511657 m!1394435))

(declare-fun m!1394437 () Bool)

(assert (=> b!1511657 m!1394437))

(declare-fun m!1394439 () Bool)

(assert (=> start!128996 m!1394439))

(declare-fun m!1394441 () Bool)

(assert (=> start!128996 m!1394441))

(assert (=> b!1511650 m!1394421))

(assert (=> b!1511650 m!1394421))

(declare-fun m!1394443 () Bool)

(assert (=> b!1511650 m!1394443))

(declare-fun m!1394445 () Bool)

(assert (=> b!1511659 m!1394445))

(declare-fun m!1394447 () Bool)

(assert (=> b!1511659 m!1394447))

(declare-fun m!1394449 () Bool)

(assert (=> b!1511660 m!1394449))

(declare-fun m!1394451 () Bool)

(assert (=> b!1511655 m!1394451))

(assert (=> b!1511658 m!1394433))

(assert (=> b!1511658 m!1394435))

(assert (=> b!1511658 m!1394435))

(declare-fun m!1394453 () Bool)

(assert (=> b!1511658 m!1394453))

(assert (=> b!1511658 m!1394453))

(assert (=> b!1511658 m!1394435))

(declare-fun m!1394455 () Bool)

(assert (=> b!1511658 m!1394455))

(assert (=> b!1511651 m!1394421))

(assert (=> b!1511651 m!1394421))

(declare-fun m!1394457 () Bool)

(assert (=> b!1511651 m!1394457))

(assert (=> b!1511661 m!1394421))

(assert (=> b!1511661 m!1394421))

(declare-fun m!1394459 () Bool)

(assert (=> b!1511661 m!1394459))

(assert (=> b!1511661 m!1394421))

(declare-fun m!1394461 () Bool)

(assert (=> b!1511661 m!1394461))

(push 1)

