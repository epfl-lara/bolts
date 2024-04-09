; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128998 () Bool)

(assert start!128998)

(declare-fun b!1511689 () Bool)

(declare-fun res!1031668 () Bool)

(declare-fun e!843943 () Bool)

(assert (=> b!1511689 (=> (not res!1031668) (not e!843943))))

(declare-datatypes ((array!100767 0))(
  ( (array!100768 (arr!48616 (Array (_ BitVec 32) (_ BitVec 64))) (size!49167 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100767)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511689 (= res!1031668 (validKeyInArray!0 (select (arr!48616 a!2804) i!961)))))

(declare-fun res!1031673 () Bool)

(assert (=> start!128998 (=> (not res!1031673) (not e!843943))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128998 (= res!1031673 (validMask!0 mask!2512))))

(assert (=> start!128998 e!843943))

(assert (=> start!128998 true))

(declare-fun array_inv!37561 (array!100767) Bool)

(assert (=> start!128998 (array_inv!37561 a!2804)))

(declare-fun b!1511690 () Bool)

(declare-fun res!1031666 () Bool)

(assert (=> b!1511690 (=> (not res!1031666) (not e!843943))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100767 (_ BitVec 32)) Bool)

(assert (=> b!1511690 (= res!1031666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511691 () Bool)

(declare-fun res!1031664 () Bool)

(declare-fun e!843940 () Bool)

(assert (=> b!1511691 (=> (not res!1031664) (not e!843940))))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12808 0))(
  ( (MissingZero!12808 (index!53626 (_ BitVec 32))) (Found!12808 (index!53627 (_ BitVec 32))) (Intermediate!12808 (undefined!13620 Bool) (index!53628 (_ BitVec 32)) (x!135371 (_ BitVec 32))) (Undefined!12808) (MissingVacant!12808 (index!53629 (_ BitVec 32))) )
))
(declare-fun lt!655477 () SeekEntryResult!12808)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100767 (_ BitVec 32)) SeekEntryResult!12808)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511691 (= res!1031664 (= lt!655477 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48616 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48616 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100768 (store (arr!48616 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49167 a!2804)) mask!2512)))))

(declare-fun b!1511692 () Bool)

(declare-fun e!843942 () Bool)

(declare-fun e!843944 () Bool)

(assert (=> b!1511692 (= e!843942 e!843944)))

(declare-fun res!1031665 () Bool)

(assert (=> b!1511692 (=> res!1031665 e!843944)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1511692 (= res!1031665 (or (not (= (select (arr!48616 a!2804) j!70) (select (store (arr!48616 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48616 a!2804) index!487) (select (arr!48616 a!2804) j!70)) (not (= (select (arr!48616 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1511693 () Bool)

(assert (=> b!1511693 (= e!843940 (not (or (not (= (select (arr!48616 a!2804) j!70) (select (store (arr!48616 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48616 a!2804) index!487) (select (arr!48616 a!2804) j!70)) (not (= (select (arr!48616 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!2512 #b00000000000000000000000000000000))))))

(assert (=> b!1511693 e!843942))

(declare-fun res!1031671 () Bool)

(assert (=> b!1511693 (=> (not res!1031671) (not e!843942))))

(assert (=> b!1511693 (= res!1031671 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50440 0))(
  ( (Unit!50441) )
))
(declare-fun lt!655475 () Unit!50440)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100767 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50440)

(assert (=> b!1511693 (= lt!655475 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1511694 () Bool)

(declare-fun res!1031675 () Bool)

(assert (=> b!1511694 (=> (not res!1031675) (not e!843943))))

(assert (=> b!1511694 (= res!1031675 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49167 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49167 a!2804))))))

(declare-fun b!1511695 () Bool)

(declare-fun res!1031670 () Bool)

(assert (=> b!1511695 (=> (not res!1031670) (not e!843942))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100767 (_ BitVec 32)) SeekEntryResult!12808)

(assert (=> b!1511695 (= res!1031670 (= (seekEntry!0 (select (arr!48616 a!2804) j!70) a!2804 mask!2512) (Found!12808 j!70)))))

(declare-fun b!1511696 () Bool)

(declare-fun res!1031676 () Bool)

(assert (=> b!1511696 (=> (not res!1031676) (not e!843940))))

(declare-fun lt!655476 () SeekEntryResult!12808)

(assert (=> b!1511696 (= res!1031676 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48616 a!2804) j!70) a!2804 mask!2512) lt!655476))))

(declare-fun b!1511697 () Bool)

(declare-fun res!1031674 () Bool)

(assert (=> b!1511697 (=> (not res!1031674) (not e!843943))))

(assert (=> b!1511697 (= res!1031674 (validKeyInArray!0 (select (arr!48616 a!2804) j!70)))))

(declare-fun b!1511698 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100767 (_ BitVec 32)) SeekEntryResult!12808)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100767 (_ BitVec 32)) SeekEntryResult!12808)

(assert (=> b!1511698 (= e!843944 (= (seekEntryOrOpen!0 (select (arr!48616 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48616 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1511699 () Bool)

(declare-fun res!1031672 () Bool)

(assert (=> b!1511699 (=> (not res!1031672) (not e!843943))))

(declare-datatypes ((List!35279 0))(
  ( (Nil!35276) (Cons!35275 (h!36688 (_ BitVec 64)) (t!49980 List!35279)) )
))
(declare-fun arrayNoDuplicates!0 (array!100767 (_ BitVec 32) List!35279) Bool)

(assert (=> b!1511699 (= res!1031672 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35276))))

(declare-fun b!1511700 () Bool)

(assert (=> b!1511700 (= e!843943 e!843940)))

(declare-fun res!1031669 () Bool)

(assert (=> b!1511700 (=> (not res!1031669) (not e!843940))))

(assert (=> b!1511700 (= res!1031669 (= lt!655477 lt!655476))))

(assert (=> b!1511700 (= lt!655476 (Intermediate!12808 false resIndex!21 resX!21))))

(assert (=> b!1511700 (= lt!655477 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48616 a!2804) j!70) mask!2512) (select (arr!48616 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511701 () Bool)

(declare-fun res!1031667 () Bool)

(assert (=> b!1511701 (=> (not res!1031667) (not e!843943))))

(assert (=> b!1511701 (= res!1031667 (and (= (size!49167 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49167 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49167 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!128998 res!1031673) b!1511701))

(assert (= (and b!1511701 res!1031667) b!1511689))

(assert (= (and b!1511689 res!1031668) b!1511697))

(assert (= (and b!1511697 res!1031674) b!1511690))

(assert (= (and b!1511690 res!1031666) b!1511699))

(assert (= (and b!1511699 res!1031672) b!1511694))

(assert (= (and b!1511694 res!1031675) b!1511700))

(assert (= (and b!1511700 res!1031669) b!1511696))

(assert (= (and b!1511696 res!1031676) b!1511691))

(assert (= (and b!1511691 res!1031664) b!1511693))

(assert (= (and b!1511693 res!1031671) b!1511695))

(assert (= (and b!1511695 res!1031670) b!1511692))

(assert (= (and b!1511692 (not res!1031665)) b!1511698))

(declare-fun m!1394463 () Bool)

(assert (=> b!1511690 m!1394463))

(declare-fun m!1394465 () Bool)

(assert (=> b!1511698 m!1394465))

(assert (=> b!1511698 m!1394465))

(declare-fun m!1394467 () Bool)

(assert (=> b!1511698 m!1394467))

(assert (=> b!1511698 m!1394465))

(declare-fun m!1394469 () Bool)

(assert (=> b!1511698 m!1394469))

(assert (=> b!1511696 m!1394465))

(assert (=> b!1511696 m!1394465))

(declare-fun m!1394471 () Bool)

(assert (=> b!1511696 m!1394471))

(assert (=> b!1511697 m!1394465))

(assert (=> b!1511697 m!1394465))

(declare-fun m!1394473 () Bool)

(assert (=> b!1511697 m!1394473))

(declare-fun m!1394475 () Bool)

(assert (=> b!1511689 m!1394475))

(assert (=> b!1511689 m!1394475))

(declare-fun m!1394477 () Bool)

(assert (=> b!1511689 m!1394477))

(declare-fun m!1394479 () Bool)

(assert (=> b!1511699 m!1394479))

(declare-fun m!1394481 () Bool)

(assert (=> start!128998 m!1394481))

(declare-fun m!1394483 () Bool)

(assert (=> start!128998 m!1394483))

(assert (=> b!1511692 m!1394465))

(declare-fun m!1394485 () Bool)

(assert (=> b!1511692 m!1394485))

(declare-fun m!1394487 () Bool)

(assert (=> b!1511692 m!1394487))

(declare-fun m!1394489 () Bool)

(assert (=> b!1511692 m!1394489))

(assert (=> b!1511700 m!1394465))

(assert (=> b!1511700 m!1394465))

(declare-fun m!1394491 () Bool)

(assert (=> b!1511700 m!1394491))

(assert (=> b!1511700 m!1394491))

(assert (=> b!1511700 m!1394465))

(declare-fun m!1394493 () Bool)

(assert (=> b!1511700 m!1394493))

(assert (=> b!1511693 m!1394465))

(declare-fun m!1394495 () Bool)

(assert (=> b!1511693 m!1394495))

(assert (=> b!1511693 m!1394485))

(assert (=> b!1511693 m!1394489))

(assert (=> b!1511693 m!1394487))

(declare-fun m!1394497 () Bool)

(assert (=> b!1511693 m!1394497))

(assert (=> b!1511695 m!1394465))

(assert (=> b!1511695 m!1394465))

(declare-fun m!1394499 () Bool)

(assert (=> b!1511695 m!1394499))

(assert (=> b!1511691 m!1394485))

(assert (=> b!1511691 m!1394487))

(assert (=> b!1511691 m!1394487))

(declare-fun m!1394501 () Bool)

(assert (=> b!1511691 m!1394501))

(assert (=> b!1511691 m!1394501))

(assert (=> b!1511691 m!1394487))

(declare-fun m!1394503 () Bool)

(assert (=> b!1511691 m!1394503))

(push 1)

