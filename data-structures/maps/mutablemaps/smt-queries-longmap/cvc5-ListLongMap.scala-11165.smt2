; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130564 () Bool)

(assert start!130564)

(declare-fun b!1531704 () Bool)

(declare-fun res!1048985 () Bool)

(declare-fun e!853484 () Bool)

(assert (=> b!1531704 (=> (not res!1048985) (not e!853484))))

(declare-datatypes ((array!101670 0))(
  ( (array!101671 (arr!49051 (Array (_ BitVec 32) (_ BitVec 64))) (size!49602 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101670)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101670 (_ BitVec 32)) Bool)

(assert (=> b!1531704 (= res!1048985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1531705 () Bool)

(declare-fun res!1048983 () Bool)

(declare-fun e!853478 () Bool)

(assert (=> b!1531705 (=> res!1048983 e!853478)))

(declare-datatypes ((SeekEntryResult!13237 0))(
  ( (MissingZero!13237 (index!55342 (_ BitVec 32))) (Found!13237 (index!55343 (_ BitVec 32))) (Intermediate!13237 (undefined!14049 Bool) (index!55344 (_ BitVec 32)) (x!137050 (_ BitVec 32))) (Undefined!13237) (MissingVacant!13237 (index!55345 (_ BitVec 32))) )
))
(declare-fun lt!663322 () SeekEntryResult!13237)

(declare-fun lt!663323 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101670 (_ BitVec 32)) SeekEntryResult!13237)

(assert (=> b!1531705 (= res!1048983 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663323 (select (arr!49051 a!2804) j!70) a!2804 mask!2512) lt!663322)))))

(declare-fun res!1048987 () Bool)

(assert (=> start!130564 (=> (not res!1048987) (not e!853484))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130564 (= res!1048987 (validMask!0 mask!2512))))

(assert (=> start!130564 e!853484))

(assert (=> start!130564 true))

(declare-fun array_inv!37996 (array!101670) Bool)

(assert (=> start!130564 (array_inv!37996 a!2804)))

(declare-fun b!1531706 () Bool)

(declare-fun res!1048990 () Bool)

(assert (=> b!1531706 (=> (not res!1048990) (not e!853484))))

(declare-datatypes ((List!35714 0))(
  ( (Nil!35711) (Cons!35710 (h!37156 (_ BitVec 64)) (t!50415 List!35714)) )
))
(declare-fun arrayNoDuplicates!0 (array!101670 (_ BitVec 32) List!35714) Bool)

(assert (=> b!1531706 (= res!1048990 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35711))))

(declare-fun b!1531707 () Bool)

(declare-fun e!853479 () Bool)

(declare-fun e!853480 () Bool)

(assert (=> b!1531707 (= e!853479 e!853480)))

(declare-fun res!1048994 () Bool)

(assert (=> b!1531707 (=> (not res!1048994) (not e!853480))))

(declare-fun lt!663328 () SeekEntryResult!13237)

(declare-fun lt!663327 () array!101670)

(declare-fun lt!663326 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531707 (= res!1048994 (= lt!663328 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!663326 mask!2512) lt!663326 lt!663327 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1531707 (= lt!663326 (select (store (arr!49051 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1531707 (= lt!663327 (array!101671 (store (arr!49051 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49602 a!2804)))))

(declare-fun b!1531708 () Bool)

(assert (=> b!1531708 (= e!853478 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101670 (_ BitVec 32)) SeekEntryResult!13237)

(assert (=> b!1531708 (= (seekEntryOrOpen!0 (select (arr!49051 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!663326 lt!663327 mask!2512))))

(declare-datatypes ((Unit!51214 0))(
  ( (Unit!51215) )
))
(declare-fun lt!663324 () Unit!51214)

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101670 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51214)

(assert (=> b!1531708 (= lt!663324 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!663323 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1531709 () Bool)

(declare-fun res!1048989 () Bool)

(assert (=> b!1531709 (=> (not res!1048989) (not e!853484))))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1531709 (= res!1048989 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49602 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49602 a!2804))))))

(declare-fun b!1531710 () Bool)

(declare-fun res!1048993 () Bool)

(assert (=> b!1531710 (=> (not res!1048993) (not e!853484))))

(assert (=> b!1531710 (= res!1048993 (and (= (size!49602 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49602 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49602 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1531711 () Bool)

(declare-fun res!1048988 () Bool)

(assert (=> b!1531711 (=> (not res!1048988) (not e!853479))))

(assert (=> b!1531711 (= res!1048988 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49051 a!2804) j!70) a!2804 mask!2512) lt!663322))))

(declare-fun b!1531712 () Bool)

(assert (=> b!1531712 (= e!853484 e!853479)))

(declare-fun res!1048986 () Bool)

(assert (=> b!1531712 (=> (not res!1048986) (not e!853479))))

(assert (=> b!1531712 (= res!1048986 (= lt!663328 lt!663322))))

(assert (=> b!1531712 (= lt!663322 (Intermediate!13237 false resIndex!21 resX!21))))

(assert (=> b!1531712 (= lt!663328 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49051 a!2804) j!70) mask!2512) (select (arr!49051 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531713 () Bool)

(declare-fun e!853481 () Bool)

(assert (=> b!1531713 (= e!853480 (not e!853481))))

(declare-fun res!1048995 () Bool)

(assert (=> b!1531713 (=> res!1048995 e!853481)))

(assert (=> b!1531713 (= res!1048995 (or (not (= (select (arr!49051 a!2804) j!70) lt!663326)) (= x!534 resX!21)))))

(declare-fun e!853483 () Bool)

(assert (=> b!1531713 e!853483))

(declare-fun res!1048982 () Bool)

(assert (=> b!1531713 (=> (not res!1048982) (not e!853483))))

(assert (=> b!1531713 (= res!1048982 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!663325 () Unit!51214)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101670 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51214)

(assert (=> b!1531713 (= lt!663325 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1531714 () Bool)

(declare-fun res!1048984 () Bool)

(assert (=> b!1531714 (=> (not res!1048984) (not e!853484))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1531714 (= res!1048984 (validKeyInArray!0 (select (arr!49051 a!2804) j!70)))))

(declare-fun b!1531715 () Bool)

(declare-fun res!1048992 () Bool)

(assert (=> b!1531715 (=> (not res!1048992) (not e!853484))))

(assert (=> b!1531715 (= res!1048992 (validKeyInArray!0 (select (arr!49051 a!2804) i!961)))))

(declare-fun b!1531716 () Bool)

(assert (=> b!1531716 (= e!853481 e!853478)))

(declare-fun res!1048991 () Bool)

(assert (=> b!1531716 (=> res!1048991 e!853478)))

(assert (=> b!1531716 (= res!1048991 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663323 #b00000000000000000000000000000000) (bvsge lt!663323 (size!49602 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531716 (= lt!663323 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1531717 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101670 (_ BitVec 32)) SeekEntryResult!13237)

(assert (=> b!1531717 (= e!853483 (= (seekEntry!0 (select (arr!49051 a!2804) j!70) a!2804 mask!2512) (Found!13237 j!70)))))

(assert (= (and start!130564 res!1048987) b!1531710))

(assert (= (and b!1531710 res!1048993) b!1531715))

(assert (= (and b!1531715 res!1048992) b!1531714))

(assert (= (and b!1531714 res!1048984) b!1531704))

(assert (= (and b!1531704 res!1048985) b!1531706))

(assert (= (and b!1531706 res!1048990) b!1531709))

(assert (= (and b!1531709 res!1048989) b!1531712))

(assert (= (and b!1531712 res!1048986) b!1531711))

(assert (= (and b!1531711 res!1048988) b!1531707))

(assert (= (and b!1531707 res!1048994) b!1531713))

(assert (= (and b!1531713 res!1048982) b!1531717))

(assert (= (and b!1531713 (not res!1048995)) b!1531716))

(assert (= (and b!1531716 (not res!1048991)) b!1531705))

(assert (= (and b!1531705 (not res!1048983)) b!1531708))

(declare-fun m!1414419 () Bool)

(assert (=> b!1531707 m!1414419))

(assert (=> b!1531707 m!1414419))

(declare-fun m!1414421 () Bool)

(assert (=> b!1531707 m!1414421))

(declare-fun m!1414423 () Bool)

(assert (=> b!1531707 m!1414423))

(declare-fun m!1414425 () Bool)

(assert (=> b!1531707 m!1414425))

(declare-fun m!1414427 () Bool)

(assert (=> b!1531717 m!1414427))

(assert (=> b!1531717 m!1414427))

(declare-fun m!1414429 () Bool)

(assert (=> b!1531717 m!1414429))

(assert (=> b!1531714 m!1414427))

(assert (=> b!1531714 m!1414427))

(declare-fun m!1414431 () Bool)

(assert (=> b!1531714 m!1414431))

(assert (=> b!1531711 m!1414427))

(assert (=> b!1531711 m!1414427))

(declare-fun m!1414433 () Bool)

(assert (=> b!1531711 m!1414433))

(declare-fun m!1414435 () Bool)

(assert (=> b!1531704 m!1414435))

(assert (=> b!1531712 m!1414427))

(assert (=> b!1531712 m!1414427))

(declare-fun m!1414437 () Bool)

(assert (=> b!1531712 m!1414437))

(assert (=> b!1531712 m!1414437))

(assert (=> b!1531712 m!1414427))

(declare-fun m!1414439 () Bool)

(assert (=> b!1531712 m!1414439))

(assert (=> b!1531705 m!1414427))

(assert (=> b!1531705 m!1414427))

(declare-fun m!1414441 () Bool)

(assert (=> b!1531705 m!1414441))

(declare-fun m!1414443 () Bool)

(assert (=> start!130564 m!1414443))

(declare-fun m!1414445 () Bool)

(assert (=> start!130564 m!1414445))

(assert (=> b!1531713 m!1414427))

(declare-fun m!1414447 () Bool)

(assert (=> b!1531713 m!1414447))

(declare-fun m!1414449 () Bool)

(assert (=> b!1531713 m!1414449))

(declare-fun m!1414451 () Bool)

(assert (=> b!1531715 m!1414451))

(assert (=> b!1531715 m!1414451))

(declare-fun m!1414453 () Bool)

(assert (=> b!1531715 m!1414453))

(declare-fun m!1414455 () Bool)

(assert (=> b!1531706 m!1414455))

(assert (=> b!1531708 m!1414427))

(assert (=> b!1531708 m!1414427))

(declare-fun m!1414457 () Bool)

(assert (=> b!1531708 m!1414457))

(declare-fun m!1414459 () Bool)

(assert (=> b!1531708 m!1414459))

(declare-fun m!1414461 () Bool)

(assert (=> b!1531708 m!1414461))

(declare-fun m!1414463 () Bool)

(assert (=> b!1531716 m!1414463))

(push 1)

