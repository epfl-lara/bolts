; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130072 () Bool)

(assert start!130072)

(declare-fun b!1525599 () Bool)

(declare-fun res!1043783 () Bool)

(declare-fun e!850429 () Bool)

(assert (=> b!1525599 (=> (not res!1043783) (not e!850429))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101412 0))(
  ( (array!101413 (arr!48928 (Array (_ BitVec 32) (_ BitVec 64))) (size!49479 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101412)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1525599 (= res!1043783 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49479 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49479 a!2804))))))

(declare-fun b!1525600 () Bool)

(declare-fun e!850430 () Bool)

(declare-fun e!850428 () Bool)

(assert (=> b!1525600 (= e!850430 e!850428)))

(declare-fun res!1043771 () Bool)

(assert (=> b!1525600 (=> (not res!1043771) (not e!850428))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13114 0))(
  ( (MissingZero!13114 (index!54850 (_ BitVec 32))) (Found!13114 (index!54851 (_ BitVec 32))) (Intermediate!13114 (undefined!13926 Bool) (index!54852 (_ BitVec 32)) (x!136563 (_ BitVec 32))) (Undefined!13114) (MissingVacant!13114 (index!54853 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101412 (_ BitVec 32)) SeekEntryResult!13114)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101412 (_ BitVec 32)) SeekEntryResult!13114)

(assert (=> b!1525600 (= res!1043771 (= (seekEntryOrOpen!0 (select (arr!48928 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48928 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1525601 () Bool)

(declare-fun res!1043779 () Bool)

(assert (=> b!1525601 (=> (not res!1043779) (not e!850429))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101412 (_ BitVec 32)) Bool)

(assert (=> b!1525601 (= res!1043779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1525602 () Bool)

(declare-fun res!1043776 () Bool)

(assert (=> b!1525602 (=> (not res!1043776) (not e!850429))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1525602 (= res!1043776 (validKeyInArray!0 (select (arr!48928 a!2804) i!961)))))

(declare-fun b!1525604 () Bool)

(declare-fun res!1043775 () Bool)

(declare-fun e!850427 () Bool)

(assert (=> b!1525604 (=> (not res!1043775) (not e!850427))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101412 (_ BitVec 32)) SeekEntryResult!13114)

(assert (=> b!1525604 (= res!1043775 (= (seekEntry!0 (select (arr!48928 a!2804) j!70) a!2804 mask!2512) (Found!13114 j!70)))))

(declare-fun b!1525605 () Bool)

(declare-fun res!1043774 () Bool)

(declare-fun e!850432 () Bool)

(assert (=> b!1525605 (=> (not res!1043774) (not e!850432))))

(declare-fun lt!660742 () SeekEntryResult!13114)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101412 (_ BitVec 32)) SeekEntryResult!13114)

(assert (=> b!1525605 (= res!1043774 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48928 a!2804) j!70) a!2804 mask!2512) lt!660742))))

(declare-fun b!1525606 () Bool)

(declare-fun res!1043780 () Bool)

(assert (=> b!1525606 (=> (not res!1043780) (not e!850429))))

(declare-datatypes ((List!35591 0))(
  ( (Nil!35588) (Cons!35587 (h!37021 (_ BitVec 64)) (t!50292 List!35591)) )
))
(declare-fun arrayNoDuplicates!0 (array!101412 (_ BitVec 32) List!35591) Bool)

(assert (=> b!1525606 (= res!1043780 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35588))))

(declare-fun b!1525607 () Bool)

(declare-fun e!850433 () Bool)

(assert (=> b!1525607 (= e!850432 e!850433)))

(declare-fun res!1043777 () Bool)

(assert (=> b!1525607 (=> (not res!1043777) (not e!850433))))

(declare-fun lt!660745 () SeekEntryResult!13114)

(declare-fun lt!660741 () (_ BitVec 64))

(declare-fun lt!660744 () array!101412)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1525607 (= res!1043777 (= lt!660745 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660741 mask!2512) lt!660741 lt!660744 mask!2512)))))

(assert (=> b!1525607 (= lt!660741 (select (store (arr!48928 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1525607 (= lt!660744 (array!101413 (store (arr!48928 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49479 a!2804)))))

(declare-fun b!1525608 () Bool)

(assert (=> b!1525608 (= e!850429 e!850432)))

(declare-fun res!1043772 () Bool)

(assert (=> b!1525608 (=> (not res!1043772) (not e!850432))))

(assert (=> b!1525608 (= res!1043772 (= lt!660745 lt!660742))))

(assert (=> b!1525608 (= lt!660742 (Intermediate!13114 false resIndex!21 resX!21))))

(assert (=> b!1525608 (= lt!660745 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48928 a!2804) j!70) mask!2512) (select (arr!48928 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1525609 () Bool)

(declare-fun res!1043773 () Bool)

(assert (=> b!1525609 (=> (not res!1043773) (not e!850429))))

(assert (=> b!1525609 (= res!1043773 (validKeyInArray!0 (select (arr!48928 a!2804) j!70)))))

(declare-fun b!1525610 () Bool)

(declare-fun res!1043778 () Bool)

(assert (=> b!1525610 (=> (not res!1043778) (not e!850429))))

(assert (=> b!1525610 (= res!1043778 (and (= (size!49479 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49479 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49479 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1525611 () Bool)

(assert (=> b!1525611 (= e!850433 (not true))))

(assert (=> b!1525611 e!850427))

(declare-fun res!1043782 () Bool)

(assert (=> b!1525611 (=> (not res!1043782) (not e!850427))))

(assert (=> b!1525611 (= res!1043782 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50968 0))(
  ( (Unit!50969) )
))
(declare-fun lt!660743 () Unit!50968)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101412 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50968)

(assert (=> b!1525611 (= lt!660743 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1525612 () Bool)

(assert (=> b!1525612 (= e!850427 e!850430)))

(declare-fun res!1043784 () Bool)

(assert (=> b!1525612 (=> res!1043784 e!850430)))

(assert (=> b!1525612 (= res!1043784 (or (not (= (select (arr!48928 a!2804) j!70) lt!660741)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48928 a!2804) index!487) (select (arr!48928 a!2804) j!70)) (not (= (select (arr!48928 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1525603 () Bool)

(assert (=> b!1525603 (= e!850428 (= (seekEntryOrOpen!0 lt!660741 lt!660744 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660741 lt!660744 mask!2512)))))

(declare-fun res!1043781 () Bool)

(assert (=> start!130072 (=> (not res!1043781) (not e!850429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130072 (= res!1043781 (validMask!0 mask!2512))))

(assert (=> start!130072 e!850429))

(assert (=> start!130072 true))

(declare-fun array_inv!37873 (array!101412) Bool)

(assert (=> start!130072 (array_inv!37873 a!2804)))

(assert (= (and start!130072 res!1043781) b!1525610))

(assert (= (and b!1525610 res!1043778) b!1525602))

(assert (= (and b!1525602 res!1043776) b!1525609))

(assert (= (and b!1525609 res!1043773) b!1525601))

(assert (= (and b!1525601 res!1043779) b!1525606))

(assert (= (and b!1525606 res!1043780) b!1525599))

(assert (= (and b!1525599 res!1043783) b!1525608))

(assert (= (and b!1525608 res!1043772) b!1525605))

(assert (= (and b!1525605 res!1043774) b!1525607))

(assert (= (and b!1525607 res!1043777) b!1525611))

(assert (= (and b!1525611 res!1043782) b!1525604))

(assert (= (and b!1525604 res!1043775) b!1525612))

(assert (= (and b!1525612 (not res!1043784)) b!1525600))

(assert (= (and b!1525600 res!1043771) b!1525603))

(declare-fun m!1408383 () Bool)

(assert (=> b!1525612 m!1408383))

(declare-fun m!1408385 () Bool)

(assert (=> b!1525612 m!1408385))

(declare-fun m!1408387 () Bool)

(assert (=> b!1525607 m!1408387))

(assert (=> b!1525607 m!1408387))

(declare-fun m!1408389 () Bool)

(assert (=> b!1525607 m!1408389))

(declare-fun m!1408391 () Bool)

(assert (=> b!1525607 m!1408391))

(declare-fun m!1408393 () Bool)

(assert (=> b!1525607 m!1408393))

(assert (=> b!1525609 m!1408383))

(assert (=> b!1525609 m!1408383))

(declare-fun m!1408395 () Bool)

(assert (=> b!1525609 m!1408395))

(declare-fun m!1408397 () Bool)

(assert (=> b!1525603 m!1408397))

(declare-fun m!1408399 () Bool)

(assert (=> b!1525603 m!1408399))

(assert (=> b!1525600 m!1408383))

(assert (=> b!1525600 m!1408383))

(declare-fun m!1408401 () Bool)

(assert (=> b!1525600 m!1408401))

(assert (=> b!1525600 m!1408383))

(declare-fun m!1408403 () Bool)

(assert (=> b!1525600 m!1408403))

(assert (=> b!1525608 m!1408383))

(assert (=> b!1525608 m!1408383))

(declare-fun m!1408405 () Bool)

(assert (=> b!1525608 m!1408405))

(assert (=> b!1525608 m!1408405))

(assert (=> b!1525608 m!1408383))

(declare-fun m!1408407 () Bool)

(assert (=> b!1525608 m!1408407))

(assert (=> b!1525604 m!1408383))

(assert (=> b!1525604 m!1408383))

(declare-fun m!1408409 () Bool)

(assert (=> b!1525604 m!1408409))

(declare-fun m!1408411 () Bool)

(assert (=> start!130072 m!1408411))

(declare-fun m!1408413 () Bool)

(assert (=> start!130072 m!1408413))

(declare-fun m!1408415 () Bool)

(assert (=> b!1525606 m!1408415))

(declare-fun m!1408417 () Bool)

(assert (=> b!1525611 m!1408417))

(declare-fun m!1408419 () Bool)

(assert (=> b!1525611 m!1408419))

(declare-fun m!1408421 () Bool)

(assert (=> b!1525601 m!1408421))

(assert (=> b!1525605 m!1408383))

(assert (=> b!1525605 m!1408383))

(declare-fun m!1408423 () Bool)

(assert (=> b!1525605 m!1408423))

(declare-fun m!1408425 () Bool)

(assert (=> b!1525602 m!1408425))

(assert (=> b!1525602 m!1408425))

(declare-fun m!1408427 () Bool)

(assert (=> b!1525602 m!1408427))

(push 1)

