; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130546 () Bool)

(assert start!130546)

(declare-fun b!1531333 () Bool)

(declare-fun res!1048622 () Bool)

(declare-fun e!853308 () Bool)

(assert (=> b!1531333 (=> (not res!1048622) (not e!853308))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101652 0))(
  ( (array!101653 (arr!49042 (Array (_ BitVec 32) (_ BitVec 64))) (size!49593 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101652)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1531333 (= res!1048622 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49593 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49593 a!2804))))))

(declare-fun b!1531334 () Bool)

(declare-fun e!853305 () Bool)

(assert (=> b!1531334 (= e!853305 true)))

(declare-datatypes ((SeekEntryResult!13228 0))(
  ( (MissingZero!13228 (index!55306 (_ BitVec 32))) (Found!13228 (index!55307 (_ BitVec 32))) (Intermediate!13228 (undefined!14040 Bool) (index!55308 (_ BitVec 32)) (x!137017 (_ BitVec 32))) (Undefined!13228) (MissingVacant!13228 (index!55309 (_ BitVec 32))) )
))
(declare-fun lt!663178 () SeekEntryResult!13228)

(declare-fun lt!663177 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101652 (_ BitVec 32)) SeekEntryResult!13228)

(assert (=> b!1531334 (= lt!663178 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663177 (select (arr!49042 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1048611 () Bool)

(assert (=> start!130546 (=> (not res!1048611) (not e!853308))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130546 (= res!1048611 (validMask!0 mask!2512))))

(assert (=> start!130546 e!853308))

(assert (=> start!130546 true))

(declare-fun array_inv!37987 (array!101652) Bool)

(assert (=> start!130546 (array_inv!37987 a!2804)))

(declare-fun b!1531335 () Bool)

(declare-fun res!1048616 () Bool)

(assert (=> b!1531335 (=> (not res!1048616) (not e!853308))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1531335 (= res!1048616 (and (= (size!49593 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49593 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49593 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1531336 () Bool)

(declare-fun res!1048620 () Bool)

(declare-fun e!853307 () Bool)

(assert (=> b!1531336 (=> (not res!1048620) (not e!853307))))

(declare-fun lt!663175 () SeekEntryResult!13228)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531336 (= res!1048620 (= lt!663175 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49042 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49042 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101653 (store (arr!49042 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49593 a!2804)) mask!2512)))))

(declare-fun b!1531337 () Bool)

(declare-fun e!853310 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101652 (_ BitVec 32)) SeekEntryResult!13228)

(assert (=> b!1531337 (= e!853310 (= (seekEntry!0 (select (arr!49042 a!2804) j!70) a!2804 mask!2512) (Found!13228 j!70)))))

(declare-fun b!1531338 () Bool)

(declare-fun e!853306 () Bool)

(assert (=> b!1531338 (= e!853306 e!853305)))

(declare-fun res!1048618 () Bool)

(assert (=> b!1531338 (=> res!1048618 e!853305)))

(assert (=> b!1531338 (= res!1048618 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663177 #b00000000000000000000000000000000) (bvsge lt!663177 (size!49593 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531338 (= lt!663177 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1531339 () Bool)

(declare-fun res!1048623 () Bool)

(assert (=> b!1531339 (=> (not res!1048623) (not e!853308))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101652 (_ BitVec 32)) Bool)

(assert (=> b!1531339 (= res!1048623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1531340 () Bool)

(assert (=> b!1531340 (= e!853307 (not e!853306))))

(declare-fun res!1048621 () Bool)

(assert (=> b!1531340 (=> res!1048621 e!853306)))

(assert (=> b!1531340 (= res!1048621 (or (not (= (select (arr!49042 a!2804) j!70) (select (store (arr!49042 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1531340 e!853310))

(declare-fun res!1048619 () Bool)

(assert (=> b!1531340 (=> (not res!1048619) (not e!853310))))

(assert (=> b!1531340 (= res!1048619 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51196 0))(
  ( (Unit!51197) )
))
(declare-fun lt!663174 () Unit!51196)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101652 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51196)

(assert (=> b!1531340 (= lt!663174 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1531341 () Bool)

(declare-fun res!1048614 () Bool)

(assert (=> b!1531341 (=> (not res!1048614) (not e!853308))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1531341 (= res!1048614 (validKeyInArray!0 (select (arr!49042 a!2804) j!70)))))

(declare-fun b!1531342 () Bool)

(declare-fun res!1048617 () Bool)

(assert (=> b!1531342 (=> (not res!1048617) (not e!853307))))

(declare-fun lt!663176 () SeekEntryResult!13228)

(assert (=> b!1531342 (= res!1048617 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49042 a!2804) j!70) a!2804 mask!2512) lt!663176))))

(declare-fun b!1531343 () Bool)

(assert (=> b!1531343 (= e!853308 e!853307)))

(declare-fun res!1048615 () Bool)

(assert (=> b!1531343 (=> (not res!1048615) (not e!853307))))

(assert (=> b!1531343 (= res!1048615 (= lt!663175 lt!663176))))

(assert (=> b!1531343 (= lt!663176 (Intermediate!13228 false resIndex!21 resX!21))))

(assert (=> b!1531343 (= lt!663175 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49042 a!2804) j!70) mask!2512) (select (arr!49042 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531344 () Bool)

(declare-fun res!1048613 () Bool)

(assert (=> b!1531344 (=> (not res!1048613) (not e!853308))))

(declare-datatypes ((List!35705 0))(
  ( (Nil!35702) (Cons!35701 (h!37147 (_ BitVec 64)) (t!50406 List!35705)) )
))
(declare-fun arrayNoDuplicates!0 (array!101652 (_ BitVec 32) List!35705) Bool)

(assert (=> b!1531344 (= res!1048613 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35702))))

(declare-fun b!1531345 () Bool)

(declare-fun res!1048612 () Bool)

(assert (=> b!1531345 (=> (not res!1048612) (not e!853308))))

(assert (=> b!1531345 (= res!1048612 (validKeyInArray!0 (select (arr!49042 a!2804) i!961)))))

(assert (= (and start!130546 res!1048611) b!1531335))

(assert (= (and b!1531335 res!1048616) b!1531345))

(assert (= (and b!1531345 res!1048612) b!1531341))

(assert (= (and b!1531341 res!1048614) b!1531339))

(assert (= (and b!1531339 res!1048623) b!1531344))

(assert (= (and b!1531344 res!1048613) b!1531333))

(assert (= (and b!1531333 res!1048622) b!1531343))

(assert (= (and b!1531343 res!1048615) b!1531342))

(assert (= (and b!1531342 res!1048617) b!1531336))

(assert (= (and b!1531336 res!1048620) b!1531340))

(assert (= (and b!1531340 res!1048619) b!1531337))

(assert (= (and b!1531340 (not res!1048621)) b!1531338))

(assert (= (and b!1531338 (not res!1048618)) b!1531334))

(declare-fun m!1414041 () Bool)

(assert (=> b!1531345 m!1414041))

(assert (=> b!1531345 m!1414041))

(declare-fun m!1414043 () Bool)

(assert (=> b!1531345 m!1414043))

(declare-fun m!1414045 () Bool)

(assert (=> b!1531334 m!1414045))

(assert (=> b!1531334 m!1414045))

(declare-fun m!1414047 () Bool)

(assert (=> b!1531334 m!1414047))

(declare-fun m!1414049 () Bool)

(assert (=> b!1531338 m!1414049))

(declare-fun m!1414051 () Bool)

(assert (=> start!130546 m!1414051))

(declare-fun m!1414053 () Bool)

(assert (=> start!130546 m!1414053))

(assert (=> b!1531341 m!1414045))

(assert (=> b!1531341 m!1414045))

(declare-fun m!1414055 () Bool)

(assert (=> b!1531341 m!1414055))

(assert (=> b!1531337 m!1414045))

(assert (=> b!1531337 m!1414045))

(declare-fun m!1414057 () Bool)

(assert (=> b!1531337 m!1414057))

(declare-fun m!1414059 () Bool)

(assert (=> b!1531344 m!1414059))

(assert (=> b!1531343 m!1414045))

(assert (=> b!1531343 m!1414045))

(declare-fun m!1414061 () Bool)

(assert (=> b!1531343 m!1414061))

(assert (=> b!1531343 m!1414061))

(assert (=> b!1531343 m!1414045))

(declare-fun m!1414063 () Bool)

(assert (=> b!1531343 m!1414063))

(declare-fun m!1414065 () Bool)

(assert (=> b!1531336 m!1414065))

(declare-fun m!1414067 () Bool)

(assert (=> b!1531336 m!1414067))

(assert (=> b!1531336 m!1414067))

(declare-fun m!1414069 () Bool)

(assert (=> b!1531336 m!1414069))

(assert (=> b!1531336 m!1414069))

(assert (=> b!1531336 m!1414067))

(declare-fun m!1414071 () Bool)

(assert (=> b!1531336 m!1414071))

(assert (=> b!1531342 m!1414045))

(assert (=> b!1531342 m!1414045))

(declare-fun m!1414073 () Bool)

(assert (=> b!1531342 m!1414073))

(assert (=> b!1531340 m!1414045))

(declare-fun m!1414075 () Bool)

(assert (=> b!1531340 m!1414075))

(assert (=> b!1531340 m!1414065))

(assert (=> b!1531340 m!1414067))

(declare-fun m!1414077 () Bool)

(assert (=> b!1531340 m!1414077))

(declare-fun m!1414079 () Bool)

(assert (=> b!1531339 m!1414079))

(push 1)

