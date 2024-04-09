; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130808 () Bool)

(assert start!130808)

(declare-fun res!1050830 () Bool)

(declare-fun e!854261 () Bool)

(assert (=> start!130808 (=> (not res!1050830) (not e!854261))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130808 (= res!1050830 (validMask!0 mask!2480))))

(assert (=> start!130808 e!854261))

(assert (=> start!130808 true))

(declare-datatypes ((array!101833 0))(
  ( (array!101834 (arr!49128 (Array (_ BitVec 32) (_ BitVec 64))) (size!49679 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101833)

(declare-fun array_inv!38073 (array!101833) Bool)

(assert (=> start!130808 (array_inv!38073 a!2792)))

(declare-fun b!1533601 () Bool)

(declare-fun res!1050825 () Bool)

(assert (=> b!1533601 (=> (not res!1050825) (not e!854261))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101833 (_ BitVec 32)) Bool)

(assert (=> b!1533601 (= res!1050825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533602 () Bool)

(declare-fun res!1050826 () Bool)

(assert (=> b!1533602 (=> (not res!1050826) (not e!854261))))

(declare-datatypes ((List!35782 0))(
  ( (Nil!35779) (Cons!35778 (h!37224 (_ BitVec 64)) (t!50483 List!35782)) )
))
(declare-fun arrayNoDuplicates!0 (array!101833 (_ BitVec 32) List!35782) Bool)

(assert (=> b!1533602 (= res!1050826 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35779))))

(declare-fun b!1533603 () Bool)

(assert (=> b!1533603 (= e!854261 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13283 0))(
  ( (MissingZero!13283 (index!55526 (_ BitVec 32))) (Found!13283 (index!55527 (_ BitVec 32))) (Intermediate!13283 (undefined!14095 Bool) (index!55528 (_ BitVec 32)) (x!137296 (_ BitVec 32))) (Undefined!13283) (MissingVacant!13283 (index!55529 (_ BitVec 32))) )
))
(declare-fun lt!663733 () SeekEntryResult!13283)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101833 (_ BitVec 32)) SeekEntryResult!13283)

(assert (=> b!1533603 (= lt!663733 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49128 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1533604 () Bool)

(declare-fun res!1050828 () Bool)

(assert (=> b!1533604 (=> (not res!1050828) (not e!854261))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533604 (= res!1050828 (validKeyInArray!0 (select (arr!49128 a!2792) i!951)))))

(declare-fun b!1533605 () Bool)

(declare-fun res!1050831 () Bool)

(assert (=> b!1533605 (=> (not res!1050831) (not e!854261))))

(assert (=> b!1533605 (= res!1050831 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49679 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49679 a!2792)) (= (select (arr!49128 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533606 () Bool)

(declare-fun res!1050827 () Bool)

(assert (=> b!1533606 (=> (not res!1050827) (not e!854261))))

(assert (=> b!1533606 (= res!1050827 (and (= (size!49679 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49679 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49679 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533607 () Bool)

(declare-fun res!1050829 () Bool)

(assert (=> b!1533607 (=> (not res!1050829) (not e!854261))))

(assert (=> b!1533607 (= res!1050829 (validKeyInArray!0 (select (arr!49128 a!2792) j!64)))))

(assert (= (and start!130808 res!1050830) b!1533606))

(assert (= (and b!1533606 res!1050827) b!1533604))

(assert (= (and b!1533604 res!1050828) b!1533607))

(assert (= (and b!1533607 res!1050829) b!1533601))

(assert (= (and b!1533601 res!1050825) b!1533602))

(assert (= (and b!1533602 res!1050826) b!1533605))

(assert (= (and b!1533605 res!1050831) b!1533603))

(declare-fun m!1416349 () Bool)

(assert (=> b!1533605 m!1416349))

(declare-fun m!1416351 () Bool)

(assert (=> b!1533601 m!1416351))

(declare-fun m!1416353 () Bool)

(assert (=> b!1533603 m!1416353))

(assert (=> b!1533603 m!1416353))

(declare-fun m!1416355 () Bool)

(assert (=> b!1533603 m!1416355))

(assert (=> b!1533607 m!1416353))

(assert (=> b!1533607 m!1416353))

(declare-fun m!1416357 () Bool)

(assert (=> b!1533607 m!1416357))

(declare-fun m!1416359 () Bool)

(assert (=> b!1533602 m!1416359))

(declare-fun m!1416361 () Bool)

(assert (=> start!130808 m!1416361))

(declare-fun m!1416363 () Bool)

(assert (=> start!130808 m!1416363))

(declare-fun m!1416365 () Bool)

(assert (=> b!1533604 m!1416365))

(assert (=> b!1533604 m!1416365))

(declare-fun m!1416367 () Bool)

(assert (=> b!1533604 m!1416367))

(push 1)

(assert (not b!1533602))

(assert (not b!1533604))

(assert (not b!1533607))

(assert (not b!1533601))

(assert (not b!1533603))

(assert (not start!130808))

(check-sat)

