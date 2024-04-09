; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129646 () Bool)

(assert start!129646)

(declare-fun b!1521470 () Bool)

(declare-fun res!1040831 () Bool)

(declare-fun e!848533 () Bool)

(assert (=> b!1521470 (=> (not res!1040831) (not e!848533))))

(declare-datatypes ((array!101248 0))(
  ( (array!101249 (arr!48852 (Array (_ BitVec 32) (_ BitVec 64))) (size!49403 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101248)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521470 (= res!1040831 (validKeyInArray!0 (select (arr!48852 a!2804) j!70)))))

(declare-fun b!1521471 () Bool)

(declare-fun res!1040834 () Bool)

(assert (=> b!1521471 (=> (not res!1040834) (not e!848533))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101248 (_ BitVec 32)) Bool)

(assert (=> b!1521471 (= res!1040834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521472 () Bool)

(declare-fun e!848532 () Bool)

(assert (=> b!1521472 (= e!848533 e!848532)))

(declare-fun res!1040833 () Bool)

(assert (=> b!1521472 (=> (not res!1040833) (not e!848532))))

(declare-datatypes ((SeekEntryResult!13038 0))(
  ( (MissingZero!13038 (index!54546 (_ BitVec 32))) (Found!13038 (index!54547 (_ BitVec 32))) (Intermediate!13038 (undefined!13850 Bool) (index!54548 (_ BitVec 32)) (x!136245 (_ BitVec 32))) (Undefined!13038) (MissingVacant!13038 (index!54549 (_ BitVec 32))) )
))
(declare-fun lt!659307 () SeekEntryResult!13038)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101248 (_ BitVec 32)) SeekEntryResult!13038)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521472 (= res!1040833 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48852 a!2804) j!70) mask!2512) (select (arr!48852 a!2804) j!70) a!2804 mask!2512) lt!659307))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1521472 (= lt!659307 (Intermediate!13038 false resIndex!21 resX!21))))

(declare-fun b!1521473 () Bool)

(declare-fun res!1040838 () Bool)

(assert (=> b!1521473 (=> (not res!1040838) (not e!848533))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1521473 (= res!1040838 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49403 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49403 a!2804))))))

(declare-fun b!1521474 () Bool)

(declare-fun res!1040832 () Bool)

(assert (=> b!1521474 (=> (not res!1040832) (not e!848533))))

(declare-datatypes ((List!35515 0))(
  ( (Nil!35512) (Cons!35511 (h!36933 (_ BitVec 64)) (t!50216 List!35515)) )
))
(declare-fun arrayNoDuplicates!0 (array!101248 (_ BitVec 32) List!35515) Bool)

(assert (=> b!1521474 (= res!1040832 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35512))))

(declare-fun b!1521475 () Bool)

(declare-fun res!1040830 () Bool)

(assert (=> b!1521475 (=> (not res!1040830) (not e!848533))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1521475 (= res!1040830 (validKeyInArray!0 (select (arr!48852 a!2804) i!961)))))

(declare-fun b!1521476 () Bool)

(declare-fun res!1040836 () Bool)

(assert (=> b!1521476 (=> (not res!1040836) (not e!848533))))

(assert (=> b!1521476 (= res!1040836 (and (= (size!49403 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49403 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49403 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521477 () Bool)

(assert (=> b!1521477 (= e!848532 false)))

(declare-fun lt!659308 () (_ BitVec 32))

(assert (=> b!1521477 (= lt!659308 (toIndex!0 (select (store (arr!48852 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun b!1521478 () Bool)

(declare-fun res!1040835 () Bool)

(assert (=> b!1521478 (=> (not res!1040835) (not e!848532))))

(assert (=> b!1521478 (= res!1040835 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48852 a!2804) j!70) a!2804 mask!2512) lt!659307))))

(declare-fun res!1040837 () Bool)

(assert (=> start!129646 (=> (not res!1040837) (not e!848533))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129646 (= res!1040837 (validMask!0 mask!2512))))

(assert (=> start!129646 e!848533))

(assert (=> start!129646 true))

(declare-fun array_inv!37797 (array!101248) Bool)

(assert (=> start!129646 (array_inv!37797 a!2804)))

(assert (= (and start!129646 res!1040837) b!1521476))

(assert (= (and b!1521476 res!1040836) b!1521475))

(assert (= (and b!1521475 res!1040830) b!1521470))

(assert (= (and b!1521470 res!1040831) b!1521471))

(assert (= (and b!1521471 res!1040834) b!1521474))

(assert (= (and b!1521474 res!1040832) b!1521473))

(assert (= (and b!1521473 res!1040838) b!1521472))

(assert (= (and b!1521472 res!1040833) b!1521478))

(assert (= (and b!1521478 res!1040835) b!1521477))

(declare-fun m!1404613 () Bool)

(assert (=> b!1521478 m!1404613))

(assert (=> b!1521478 m!1404613))

(declare-fun m!1404615 () Bool)

(assert (=> b!1521478 m!1404615))

(declare-fun m!1404617 () Bool)

(assert (=> b!1521475 m!1404617))

(assert (=> b!1521475 m!1404617))

(declare-fun m!1404619 () Bool)

(assert (=> b!1521475 m!1404619))

(declare-fun m!1404621 () Bool)

(assert (=> b!1521471 m!1404621))

(assert (=> b!1521472 m!1404613))

(assert (=> b!1521472 m!1404613))

(declare-fun m!1404623 () Bool)

(assert (=> b!1521472 m!1404623))

(assert (=> b!1521472 m!1404623))

(assert (=> b!1521472 m!1404613))

(declare-fun m!1404625 () Bool)

(assert (=> b!1521472 m!1404625))

(declare-fun m!1404627 () Bool)

(assert (=> b!1521477 m!1404627))

(declare-fun m!1404629 () Bool)

(assert (=> b!1521477 m!1404629))

(assert (=> b!1521477 m!1404629))

(declare-fun m!1404631 () Bool)

(assert (=> b!1521477 m!1404631))

(declare-fun m!1404633 () Bool)

(assert (=> start!129646 m!1404633))

(declare-fun m!1404635 () Bool)

(assert (=> start!129646 m!1404635))

(declare-fun m!1404637 () Bool)

(assert (=> b!1521474 m!1404637))

(assert (=> b!1521470 m!1404613))

(assert (=> b!1521470 m!1404613))

(declare-fun m!1404639 () Bool)

(assert (=> b!1521470 m!1404639))

(push 1)

(assert (not b!1521472))

(assert (not b!1521470))

(assert (not b!1521471))

(assert (not b!1521478))

