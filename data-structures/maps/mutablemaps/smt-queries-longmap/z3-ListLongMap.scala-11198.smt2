; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130854 () Bool)

(assert start!130854)

(declare-fun b!1534111 () Bool)

(declare-fun res!1051335 () Bool)

(declare-fun e!854398 () Bool)

(assert (=> b!1534111 (=> (not res!1051335) (not e!854398))))

(declare-datatypes ((array!101879 0))(
  ( (array!101880 (arr!49151 (Array (_ BitVec 32) (_ BitVec 64))) (size!49702 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101879)

(declare-datatypes ((List!35805 0))(
  ( (Nil!35802) (Cons!35801 (h!37247 (_ BitVec 64)) (t!50506 List!35805)) )
))
(declare-fun arrayNoDuplicates!0 (array!101879 (_ BitVec 32) List!35805) Bool)

(assert (=> b!1534111 (= res!1051335 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35802))))

(declare-fun b!1534112 () Bool)

(assert (=> b!1534112 (= e!854398 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13306 0))(
  ( (MissingZero!13306 (index!55618 (_ BitVec 32))) (Found!13306 (index!55619 (_ BitVec 32))) (Intermediate!13306 (undefined!14118 Bool) (index!55620 (_ BitVec 32)) (x!137383 (_ BitVec 32))) (Undefined!13306) (MissingVacant!13306 (index!55621 (_ BitVec 32))) )
))
(declare-fun lt!663775 () SeekEntryResult!13306)

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101879 (_ BitVec 32)) SeekEntryResult!13306)

(assert (=> b!1534112 (= lt!663775 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49151 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534113 () Bool)

(declare-fun res!1051338 () Bool)

(assert (=> b!1534113 (=> (not res!1051338) (not e!854398))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101879 (_ BitVec 32)) Bool)

(assert (=> b!1534113 (= res!1051338 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534114 () Bool)

(declare-fun res!1051339 () Bool)

(assert (=> b!1534114 (=> (not res!1051339) (not e!854398))))

(assert (=> b!1534114 (= res!1051339 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49702 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49702 a!2792)) (= (select (arr!49151 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1051336 () Bool)

(assert (=> start!130854 (=> (not res!1051336) (not e!854398))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130854 (= res!1051336 (validMask!0 mask!2480))))

(assert (=> start!130854 e!854398))

(assert (=> start!130854 true))

(declare-fun array_inv!38096 (array!101879) Bool)

(assert (=> start!130854 (array_inv!38096 a!2792)))

(declare-fun b!1534115 () Bool)

(declare-fun res!1051337 () Bool)

(assert (=> b!1534115 (=> (not res!1051337) (not e!854398))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534115 (= res!1051337 (validKeyInArray!0 (select (arr!49151 a!2792) i!951)))))

(declare-fun b!1534116 () Bool)

(declare-fun res!1051340 () Bool)

(assert (=> b!1534116 (=> (not res!1051340) (not e!854398))))

(assert (=> b!1534116 (= res!1051340 (validKeyInArray!0 (select (arr!49151 a!2792) j!64)))))

(declare-fun b!1534117 () Bool)

(declare-fun res!1051341 () Bool)

(assert (=> b!1534117 (=> (not res!1051341) (not e!854398))))

(assert (=> b!1534117 (= res!1051341 (and (= (size!49702 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49702 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49702 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!130854 res!1051336) b!1534117))

(assert (= (and b!1534117 res!1051341) b!1534115))

(assert (= (and b!1534115 res!1051337) b!1534116))

(assert (= (and b!1534116 res!1051340) b!1534113))

(assert (= (and b!1534113 res!1051338) b!1534111))

(assert (= (and b!1534111 res!1051335) b!1534114))

(assert (= (and b!1534114 res!1051339) b!1534112))

(declare-fun m!1416827 () Bool)

(assert (=> b!1534116 m!1416827))

(assert (=> b!1534116 m!1416827))

(declare-fun m!1416829 () Bool)

(assert (=> b!1534116 m!1416829))

(assert (=> b!1534112 m!1416827))

(assert (=> b!1534112 m!1416827))

(declare-fun m!1416831 () Bool)

(assert (=> b!1534112 m!1416831))

(declare-fun m!1416833 () Bool)

(assert (=> b!1534113 m!1416833))

(declare-fun m!1416835 () Bool)

(assert (=> b!1534115 m!1416835))

(assert (=> b!1534115 m!1416835))

(declare-fun m!1416837 () Bool)

(assert (=> b!1534115 m!1416837))

(declare-fun m!1416839 () Bool)

(assert (=> start!130854 m!1416839))

(declare-fun m!1416841 () Bool)

(assert (=> start!130854 m!1416841))

(declare-fun m!1416843 () Bool)

(assert (=> b!1534111 m!1416843))

(declare-fun m!1416845 () Bool)

(assert (=> b!1534114 m!1416845))

(check-sat (not b!1534116) (not b!1534113) (not b!1534115) (not start!130854) (not b!1534111) (not b!1534112))
