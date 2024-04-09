; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130932 () Bool)

(assert start!130932)

(declare-fun b!1535206 () Bool)

(declare-fun res!1052434 () Bool)

(declare-fun e!854718 () Bool)

(assert (=> b!1535206 (=> (not res!1052434) (not e!854718))))

(declare-datatypes ((array!101957 0))(
  ( (array!101958 (arr!49190 (Array (_ BitVec 32) (_ BitVec 64))) (size!49741 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101957)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1535206 (= res!1052434 (not (= (select (arr!49190 a!2792) index!463) (select (arr!49190 a!2792) j!64))))))

(declare-fun b!1535208 () Bool)

(declare-fun res!1052433 () Bool)

(assert (=> b!1535208 (=> (not res!1052433) (not e!854718))))

(declare-datatypes ((List!35844 0))(
  ( (Nil!35841) (Cons!35840 (h!37286 (_ BitVec 64)) (t!50545 List!35844)) )
))
(declare-fun arrayNoDuplicates!0 (array!101957 (_ BitVec 32) List!35844) Bool)

(assert (=> b!1535208 (= res!1052433 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35841))))

(declare-fun b!1535209 () Bool)

(declare-fun res!1052432 () Bool)

(assert (=> b!1535209 (=> (not res!1052432) (not e!854718))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535209 (= res!1052432 (validKeyInArray!0 (select (arr!49190 a!2792) i!951)))))

(declare-fun b!1535210 () Bool)

(declare-fun res!1052437 () Bool)

(assert (=> b!1535210 (=> (not res!1052437) (not e!854718))))

(declare-fun mask!2480 () (_ BitVec 32))

(assert (=> b!1535210 (= res!1052437 (and (= (size!49741 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49741 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49741 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535211 () Bool)

(declare-fun res!1052438 () Bool)

(assert (=> b!1535211 (=> (not res!1052438) (not e!854718))))

(assert (=> b!1535211 (= res!1052438 (validKeyInArray!0 (select (arr!49190 a!2792) j!64)))))

(declare-fun b!1535212 () Bool)

(declare-fun res!1052430 () Bool)

(assert (=> b!1535212 (=> (not res!1052430) (not e!854718))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101957 (_ BitVec 32)) Bool)

(assert (=> b!1535212 (= res!1052430 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535213 () Bool)

(declare-fun e!854720 () Bool)

(assert (=> b!1535213 (= e!854720 false)))

(declare-datatypes ((SeekEntryResult!13345 0))(
  ( (MissingZero!13345 (index!55774 (_ BitVec 32))) (Found!13345 (index!55775 (_ BitVec 32))) (Intermediate!13345 (undefined!14157 Bool) (index!55776 (_ BitVec 32)) (x!137526 (_ BitVec 32))) (Undefined!13345) (MissingVacant!13345 (index!55777 (_ BitVec 32))) )
))
(declare-fun lt!663961 () SeekEntryResult!13345)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!663960 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101957 (_ BitVec 32)) SeekEntryResult!13345)

(assert (=> b!1535213 (= lt!663961 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663960 vacantIndex!5 (select (arr!49190 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535214 () Bool)

(declare-fun res!1052431 () Bool)

(assert (=> b!1535214 (=> (not res!1052431) (not e!854718))))

(assert (=> b!1535214 (= res!1052431 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49190 a!2792) j!64) a!2792 mask!2480) (Found!13345 j!64)))))

(declare-fun b!1535215 () Bool)

(assert (=> b!1535215 (= e!854718 e!854720)))

(declare-fun res!1052435 () Bool)

(assert (=> b!1535215 (=> (not res!1052435) (not e!854720))))

(assert (=> b!1535215 (= res!1052435 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663960 #b00000000000000000000000000000000) (bvslt lt!663960 (size!49741 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535215 (= lt!663960 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535207 () Bool)

(declare-fun res!1052436 () Bool)

(assert (=> b!1535207 (=> (not res!1052436) (not e!854718))))

(assert (=> b!1535207 (= res!1052436 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49741 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49741 a!2792)) (= (select (arr!49190 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1052439 () Bool)

(assert (=> start!130932 (=> (not res!1052439) (not e!854718))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130932 (= res!1052439 (validMask!0 mask!2480))))

(assert (=> start!130932 e!854718))

(assert (=> start!130932 true))

(declare-fun array_inv!38135 (array!101957) Bool)

(assert (=> start!130932 (array_inv!38135 a!2792)))

(assert (= (and start!130932 res!1052439) b!1535210))

(assert (= (and b!1535210 res!1052437) b!1535209))

(assert (= (and b!1535209 res!1052432) b!1535211))

(assert (= (and b!1535211 res!1052438) b!1535212))

(assert (= (and b!1535212 res!1052430) b!1535208))

(assert (= (and b!1535208 res!1052433) b!1535207))

(assert (= (and b!1535207 res!1052436) b!1535214))

(assert (= (and b!1535214 res!1052431) b!1535206))

(assert (= (and b!1535206 res!1052434) b!1535215))

(assert (= (and b!1535215 res!1052435) b!1535213))

(declare-fun m!1417787 () Bool)

(assert (=> b!1535206 m!1417787))

(declare-fun m!1417789 () Bool)

(assert (=> b!1535206 m!1417789))

(declare-fun m!1417791 () Bool)

(assert (=> b!1535209 m!1417791))

(assert (=> b!1535209 m!1417791))

(declare-fun m!1417793 () Bool)

(assert (=> b!1535209 m!1417793))

(declare-fun m!1417795 () Bool)

(assert (=> b!1535215 m!1417795))

(assert (=> b!1535211 m!1417789))

(assert (=> b!1535211 m!1417789))

(declare-fun m!1417797 () Bool)

(assert (=> b!1535211 m!1417797))

(declare-fun m!1417799 () Bool)

(assert (=> start!130932 m!1417799))

(declare-fun m!1417801 () Bool)

(assert (=> start!130932 m!1417801))

(declare-fun m!1417803 () Bool)

(assert (=> b!1535207 m!1417803))

(declare-fun m!1417805 () Bool)

(assert (=> b!1535212 m!1417805))

(declare-fun m!1417807 () Bool)

(assert (=> b!1535208 m!1417807))

(assert (=> b!1535213 m!1417789))

(assert (=> b!1535213 m!1417789))

(declare-fun m!1417809 () Bool)

(assert (=> b!1535213 m!1417809))

(assert (=> b!1535214 m!1417789))

(assert (=> b!1535214 m!1417789))

(declare-fun m!1417811 () Bool)

(assert (=> b!1535214 m!1417811))

(check-sat (not b!1535209) (not b!1535214) (not b!1535213) (not start!130932) (not b!1535215) (not b!1535212) (not b!1535208) (not b!1535211))
(check-sat)
