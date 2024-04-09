; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129642 () Bool)

(assert start!129642)

(declare-fun b!1521416 () Bool)

(declare-fun e!848514 () Bool)

(assert (=> b!1521416 (= e!848514 false)))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101244 0))(
  ( (array!101245 (arr!48850 (Array (_ BitVec 32) (_ BitVec 64))) (size!49401 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101244)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun lt!659295 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521416 (= lt!659295 (toIndex!0 (select (store (arr!48850 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun b!1521417 () Bool)

(declare-fun res!1040783 () Bool)

(declare-fun e!848516 () Bool)

(assert (=> b!1521417 (=> (not res!1040783) (not e!848516))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521417 (= res!1040783 (validKeyInArray!0 (select (arr!48850 a!2804) j!70)))))

(declare-fun res!1040777 () Bool)

(assert (=> start!129642 (=> (not res!1040777) (not e!848516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129642 (= res!1040777 (validMask!0 mask!2512))))

(assert (=> start!129642 e!848516))

(assert (=> start!129642 true))

(declare-fun array_inv!37795 (array!101244) Bool)

(assert (=> start!129642 (array_inv!37795 a!2804)))

(declare-fun b!1521418 () Bool)

(declare-fun res!1040778 () Bool)

(assert (=> b!1521418 (=> (not res!1040778) (not e!848516))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1521418 (= res!1040778 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49401 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49401 a!2804))))))

(declare-fun b!1521419 () Bool)

(declare-fun res!1040781 () Bool)

(assert (=> b!1521419 (=> (not res!1040781) (not e!848514))))

(declare-datatypes ((SeekEntryResult!13036 0))(
  ( (MissingZero!13036 (index!54538 (_ BitVec 32))) (Found!13036 (index!54539 (_ BitVec 32))) (Intermediate!13036 (undefined!13848 Bool) (index!54540 (_ BitVec 32)) (x!136243 (_ BitVec 32))) (Undefined!13036) (MissingVacant!13036 (index!54541 (_ BitVec 32))) )
))
(declare-fun lt!659296 () SeekEntryResult!13036)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101244 (_ BitVec 32)) SeekEntryResult!13036)

(assert (=> b!1521419 (= res!1040781 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48850 a!2804) j!70) a!2804 mask!2512) lt!659296))))

(declare-fun b!1521420 () Bool)

(declare-fun res!1040776 () Bool)

(assert (=> b!1521420 (=> (not res!1040776) (not e!848516))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101244 (_ BitVec 32)) Bool)

(assert (=> b!1521420 (= res!1040776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521421 () Bool)

(declare-fun res!1040780 () Bool)

(assert (=> b!1521421 (=> (not res!1040780) (not e!848516))))

(assert (=> b!1521421 (= res!1040780 (and (= (size!49401 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49401 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49401 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521422 () Bool)

(assert (=> b!1521422 (= e!848516 e!848514)))

(declare-fun res!1040779 () Bool)

(assert (=> b!1521422 (=> (not res!1040779) (not e!848514))))

(assert (=> b!1521422 (= res!1040779 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48850 a!2804) j!70) mask!2512) (select (arr!48850 a!2804) j!70) a!2804 mask!2512) lt!659296))))

(assert (=> b!1521422 (= lt!659296 (Intermediate!13036 false resIndex!21 resX!21))))

(declare-fun b!1521423 () Bool)

(declare-fun res!1040784 () Bool)

(assert (=> b!1521423 (=> (not res!1040784) (not e!848516))))

(declare-datatypes ((List!35513 0))(
  ( (Nil!35510) (Cons!35509 (h!36931 (_ BitVec 64)) (t!50214 List!35513)) )
))
(declare-fun arrayNoDuplicates!0 (array!101244 (_ BitVec 32) List!35513) Bool)

(assert (=> b!1521423 (= res!1040784 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35510))))

(declare-fun b!1521424 () Bool)

(declare-fun res!1040782 () Bool)

(assert (=> b!1521424 (=> (not res!1040782) (not e!848516))))

(assert (=> b!1521424 (= res!1040782 (validKeyInArray!0 (select (arr!48850 a!2804) i!961)))))

(assert (= (and start!129642 res!1040777) b!1521421))

(assert (= (and b!1521421 res!1040780) b!1521424))

(assert (= (and b!1521424 res!1040782) b!1521417))

(assert (= (and b!1521417 res!1040783) b!1521420))

(assert (= (and b!1521420 res!1040776) b!1521423))

(assert (= (and b!1521423 res!1040784) b!1521418))

(assert (= (and b!1521418 res!1040778) b!1521422))

(assert (= (and b!1521422 res!1040779) b!1521419))

(assert (= (and b!1521419 res!1040781) b!1521416))

(declare-fun m!1404557 () Bool)

(assert (=> b!1521422 m!1404557))

(assert (=> b!1521422 m!1404557))

(declare-fun m!1404559 () Bool)

(assert (=> b!1521422 m!1404559))

(assert (=> b!1521422 m!1404559))

(assert (=> b!1521422 m!1404557))

(declare-fun m!1404561 () Bool)

(assert (=> b!1521422 m!1404561))

(declare-fun m!1404563 () Bool)

(assert (=> b!1521424 m!1404563))

(assert (=> b!1521424 m!1404563))

(declare-fun m!1404565 () Bool)

(assert (=> b!1521424 m!1404565))

(declare-fun m!1404567 () Bool)

(assert (=> start!129642 m!1404567))

(declare-fun m!1404569 () Bool)

(assert (=> start!129642 m!1404569))

(declare-fun m!1404571 () Bool)

(assert (=> b!1521420 m!1404571))

(assert (=> b!1521417 m!1404557))

(assert (=> b!1521417 m!1404557))

(declare-fun m!1404573 () Bool)

(assert (=> b!1521417 m!1404573))

(assert (=> b!1521419 m!1404557))

(assert (=> b!1521419 m!1404557))

(declare-fun m!1404575 () Bool)

(assert (=> b!1521419 m!1404575))

(declare-fun m!1404577 () Bool)

(assert (=> b!1521423 m!1404577))

(declare-fun m!1404579 () Bool)

(assert (=> b!1521416 m!1404579))

(declare-fun m!1404581 () Bool)

(assert (=> b!1521416 m!1404581))

(assert (=> b!1521416 m!1404581))

(declare-fun m!1404583 () Bool)

(assert (=> b!1521416 m!1404583))

(push 1)

