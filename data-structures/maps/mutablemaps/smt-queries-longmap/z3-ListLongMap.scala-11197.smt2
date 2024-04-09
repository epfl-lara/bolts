; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130848 () Bool)

(assert start!130848)

(declare-fun b!1534048 () Bool)

(declare-fun e!854380 () Bool)

(assert (=> b!1534048 (= e!854380 false)))

(declare-datatypes ((SeekEntryResult!13303 0))(
  ( (MissingZero!13303 (index!55606 (_ BitVec 32))) (Found!13303 (index!55607 (_ BitVec 32))) (Intermediate!13303 (undefined!14115 Bool) (index!55608 (_ BitVec 32)) (x!137372 (_ BitVec 32))) (Undefined!13303) (MissingVacant!13303 (index!55609 (_ BitVec 32))) )
))
(declare-fun lt!663766 () SeekEntryResult!13303)

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101873 0))(
  ( (array!101874 (arr!49148 (Array (_ BitVec 32) (_ BitVec 64))) (size!49699 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101873)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101873 (_ BitVec 32)) SeekEntryResult!13303)

(assert (=> b!1534048 (= lt!663766 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49148 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534049 () Bool)

(declare-fun res!1051272 () Bool)

(assert (=> b!1534049 (=> (not res!1051272) (not e!854380))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534049 (= res!1051272 (validKeyInArray!0 (select (arr!49148 a!2792) j!64)))))

(declare-fun res!1051278 () Bool)

(assert (=> start!130848 (=> (not res!1051278) (not e!854380))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130848 (= res!1051278 (validMask!0 mask!2480))))

(assert (=> start!130848 e!854380))

(assert (=> start!130848 true))

(declare-fun array_inv!38093 (array!101873) Bool)

(assert (=> start!130848 (array_inv!38093 a!2792)))

(declare-fun b!1534050 () Bool)

(declare-fun res!1051273 () Bool)

(assert (=> b!1534050 (=> (not res!1051273) (not e!854380))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534050 (= res!1051273 (validKeyInArray!0 (select (arr!49148 a!2792) i!951)))))

(declare-fun b!1534051 () Bool)

(declare-fun res!1051274 () Bool)

(assert (=> b!1534051 (=> (not res!1051274) (not e!854380))))

(assert (=> b!1534051 (= res!1051274 (and (= (size!49699 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49699 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49699 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534052 () Bool)

(declare-fun res!1051276 () Bool)

(assert (=> b!1534052 (=> (not res!1051276) (not e!854380))))

(assert (=> b!1534052 (= res!1051276 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49699 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49699 a!2792)) (= (select (arr!49148 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534053 () Bool)

(declare-fun res!1051275 () Bool)

(assert (=> b!1534053 (=> (not res!1051275) (not e!854380))))

(declare-datatypes ((List!35802 0))(
  ( (Nil!35799) (Cons!35798 (h!37244 (_ BitVec 64)) (t!50503 List!35802)) )
))
(declare-fun arrayNoDuplicates!0 (array!101873 (_ BitVec 32) List!35802) Bool)

(assert (=> b!1534053 (= res!1051275 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35799))))

(declare-fun b!1534054 () Bool)

(declare-fun res!1051277 () Bool)

(assert (=> b!1534054 (=> (not res!1051277) (not e!854380))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101873 (_ BitVec 32)) Bool)

(assert (=> b!1534054 (= res!1051277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!130848 res!1051278) b!1534051))

(assert (= (and b!1534051 res!1051274) b!1534050))

(assert (= (and b!1534050 res!1051273) b!1534049))

(assert (= (and b!1534049 res!1051272) b!1534054))

(assert (= (and b!1534054 res!1051277) b!1534053))

(assert (= (and b!1534053 res!1051275) b!1534052))

(assert (= (and b!1534052 res!1051276) b!1534048))

(declare-fun m!1416767 () Bool)

(assert (=> b!1534048 m!1416767))

(assert (=> b!1534048 m!1416767))

(declare-fun m!1416769 () Bool)

(assert (=> b!1534048 m!1416769))

(declare-fun m!1416771 () Bool)

(assert (=> b!1534052 m!1416771))

(declare-fun m!1416773 () Bool)

(assert (=> b!1534050 m!1416773))

(assert (=> b!1534050 m!1416773))

(declare-fun m!1416775 () Bool)

(assert (=> b!1534050 m!1416775))

(declare-fun m!1416777 () Bool)

(assert (=> start!130848 m!1416777))

(declare-fun m!1416779 () Bool)

(assert (=> start!130848 m!1416779))

(declare-fun m!1416781 () Bool)

(assert (=> b!1534053 m!1416781))

(declare-fun m!1416783 () Bool)

(assert (=> b!1534054 m!1416783))

(assert (=> b!1534049 m!1416767))

(assert (=> b!1534049 m!1416767))

(declare-fun m!1416785 () Bool)

(assert (=> b!1534049 m!1416785))

(check-sat (not start!130848) (not b!1534048) (not b!1534050) (not b!1534053) (not b!1534054) (not b!1534049))
