; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130820 () Bool)

(assert start!130820)

(declare-fun res!1050966 () Bool)

(declare-fun e!854296 () Bool)

(assert (=> start!130820 (=> (not res!1050966) (not e!854296))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130820 (= res!1050966 (validMask!0 mask!2480))))

(assert (=> start!130820 e!854296))

(assert (=> start!130820 true))

(declare-datatypes ((array!101845 0))(
  ( (array!101846 (arr!49134 (Array (_ BitVec 32) (_ BitVec 64))) (size!49685 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101845)

(declare-fun array_inv!38079 (array!101845) Bool)

(assert (=> start!130820 (array_inv!38079 a!2792)))

(declare-fun b!1533736 () Bool)

(declare-fun res!1050964 () Bool)

(assert (=> b!1533736 (=> (not res!1050964) (not e!854296))))

(declare-datatypes ((List!35788 0))(
  ( (Nil!35785) (Cons!35784 (h!37230 (_ BitVec 64)) (t!50489 List!35788)) )
))
(declare-fun arrayNoDuplicates!0 (array!101845 (_ BitVec 32) List!35788) Bool)

(assert (=> b!1533736 (= res!1050964 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35785))))

(declare-fun b!1533737 () Bool)

(assert (=> b!1533737 (= e!854296 false)))

(declare-datatypes ((SeekEntryResult!13289 0))(
  ( (MissingZero!13289 (index!55550 (_ BitVec 32))) (Found!13289 (index!55551 (_ BitVec 32))) (Intermediate!13289 (undefined!14101 Bool) (index!55552 (_ BitVec 32)) (x!137318 (_ BitVec 32))) (Undefined!13289) (MissingVacant!13289 (index!55553 (_ BitVec 32))) )
))
(declare-fun lt!663742 () SeekEntryResult!13289)

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101845 (_ BitVec 32)) SeekEntryResult!13289)

(assert (=> b!1533737 (= lt!663742 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49134 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1533738 () Bool)

(declare-fun res!1050961 () Bool)

(assert (=> b!1533738 (=> (not res!1050961) (not e!854296))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533738 (= res!1050961 (validKeyInArray!0 (select (arr!49134 a!2792) j!64)))))

(declare-fun b!1533739 () Bool)

(declare-fun res!1050960 () Bool)

(assert (=> b!1533739 (=> (not res!1050960) (not e!854296))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101845 (_ BitVec 32)) Bool)

(assert (=> b!1533739 (= res!1050960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533740 () Bool)

(declare-fun res!1050962 () Bool)

(assert (=> b!1533740 (=> (not res!1050962) (not e!854296))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533740 (= res!1050962 (and (= (size!49685 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49685 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49685 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533741 () Bool)

(declare-fun res!1050965 () Bool)

(assert (=> b!1533741 (=> (not res!1050965) (not e!854296))))

(assert (=> b!1533741 (= res!1050965 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49685 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49685 a!2792)) (= (select (arr!49134 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533742 () Bool)

(declare-fun res!1050963 () Bool)

(assert (=> b!1533742 (=> (not res!1050963) (not e!854296))))

(assert (=> b!1533742 (= res!1050963 (validKeyInArray!0 (select (arr!49134 a!2792) i!951)))))

(assert (= (and start!130820 res!1050966) b!1533740))

(assert (= (and b!1533740 res!1050962) b!1533742))

(assert (= (and b!1533742 res!1050963) b!1533738))

(assert (= (and b!1533738 res!1050961) b!1533739))

(assert (= (and b!1533739 res!1050960) b!1533736))

(assert (= (and b!1533736 res!1050964) b!1533741))

(assert (= (and b!1533741 res!1050965) b!1533737))

(declare-fun m!1416475 () Bool)

(assert (=> b!1533742 m!1416475))

(assert (=> b!1533742 m!1416475))

(declare-fun m!1416477 () Bool)

(assert (=> b!1533742 m!1416477))

(declare-fun m!1416479 () Bool)

(assert (=> b!1533736 m!1416479))

(declare-fun m!1416481 () Bool)

(assert (=> b!1533739 m!1416481))

(declare-fun m!1416483 () Bool)

(assert (=> b!1533737 m!1416483))

(assert (=> b!1533737 m!1416483))

(declare-fun m!1416485 () Bool)

(assert (=> b!1533737 m!1416485))

(declare-fun m!1416487 () Bool)

(assert (=> b!1533741 m!1416487))

(declare-fun m!1416489 () Bool)

(assert (=> start!130820 m!1416489))

(declare-fun m!1416491 () Bool)

(assert (=> start!130820 m!1416491))

(assert (=> b!1533738 m!1416483))

(assert (=> b!1533738 m!1416483))

(declare-fun m!1416493 () Bool)

(assert (=> b!1533738 m!1416493))

(push 1)

(assert (not b!1533736))

(assert (not b!1533738))

(assert (not start!130820))

(assert (not b!1533742))

(assert (not b!1533739))

(assert (not b!1533737))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

