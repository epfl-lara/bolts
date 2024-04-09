; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130918 () Bool)

(assert start!130918)

(declare-fun b!1534996 () Bool)

(declare-fun res!1052228 () Bool)

(declare-fun e!854655 () Bool)

(assert (=> b!1534996 (=> (not res!1052228) (not e!854655))))

(declare-datatypes ((array!101943 0))(
  ( (array!101944 (arr!49183 (Array (_ BitVec 32) (_ BitVec 64))) (size!49734 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101943)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101943 (_ BitVec 32)) Bool)

(assert (=> b!1534996 (= res!1052228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534997 () Bool)

(declare-fun res!1052225 () Bool)

(assert (=> b!1534997 (=> (not res!1052225) (not e!854655))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13338 0))(
  ( (MissingZero!13338 (index!55746 (_ BitVec 32))) (Found!13338 (index!55747 (_ BitVec 32))) (Intermediate!13338 (undefined!14150 Bool) (index!55748 (_ BitVec 32)) (x!137503 (_ BitVec 32))) (Undefined!13338) (MissingVacant!13338 (index!55749 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101943 (_ BitVec 32)) SeekEntryResult!13338)

(assert (=> b!1534997 (= res!1052225 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49183 a!2792) j!64) a!2792 mask!2480) (Found!13338 j!64)))))

(declare-fun b!1534998 () Bool)

(declare-fun res!1052224 () Bool)

(assert (=> b!1534998 (=> (not res!1052224) (not e!854655))))

(declare-datatypes ((List!35837 0))(
  ( (Nil!35834) (Cons!35833 (h!37279 (_ BitVec 64)) (t!50538 List!35837)) )
))
(declare-fun arrayNoDuplicates!0 (array!101943 (_ BitVec 32) List!35837) Bool)

(assert (=> b!1534998 (= res!1052224 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35834))))

(declare-fun b!1534999 () Bool)

(declare-fun res!1052220 () Bool)

(assert (=> b!1534999 (=> (not res!1052220) (not e!854655))))

(assert (=> b!1534999 (= res!1052220 (not (= (select (arr!49183 a!2792) index!463) (select (arr!49183 a!2792) j!64))))))

(declare-fun b!1535000 () Bool)

(declare-fun e!854656 () Bool)

(assert (=> b!1535000 (= e!854656 false)))

(declare-fun lt!663918 () SeekEntryResult!13338)

(declare-fun lt!663919 () (_ BitVec 32))

(assert (=> b!1535000 (= lt!663918 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663919 vacantIndex!5 (select (arr!49183 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535001 () Bool)

(declare-fun res!1052229 () Bool)

(assert (=> b!1535001 (=> (not res!1052229) (not e!854655))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535001 (= res!1052229 (validKeyInArray!0 (select (arr!49183 a!2792) j!64)))))

(declare-fun b!1535002 () Bool)

(declare-fun res!1052226 () Bool)

(assert (=> b!1535002 (=> (not res!1052226) (not e!854655))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1535002 (= res!1052226 (validKeyInArray!0 (select (arr!49183 a!2792) i!951)))))

(declare-fun res!1052223 () Bool)

(assert (=> start!130918 (=> (not res!1052223) (not e!854655))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130918 (= res!1052223 (validMask!0 mask!2480))))

(assert (=> start!130918 e!854655))

(assert (=> start!130918 true))

(declare-fun array_inv!38128 (array!101943) Bool)

(assert (=> start!130918 (array_inv!38128 a!2792)))

(declare-fun b!1535003 () Bool)

(assert (=> b!1535003 (= e!854655 e!854656)))

(declare-fun res!1052221 () Bool)

(assert (=> b!1535003 (=> (not res!1052221) (not e!854656))))

(assert (=> b!1535003 (= res!1052221 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663919 #b00000000000000000000000000000000) (bvslt lt!663919 (size!49734 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535003 (= lt!663919 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535004 () Bool)

(declare-fun res!1052227 () Bool)

(assert (=> b!1535004 (=> (not res!1052227) (not e!854655))))

(assert (=> b!1535004 (= res!1052227 (and (= (size!49734 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49734 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49734 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535005 () Bool)

(declare-fun res!1052222 () Bool)

(assert (=> b!1535005 (=> (not res!1052222) (not e!854655))))

(assert (=> b!1535005 (= res!1052222 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49734 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49734 a!2792)) (= (select (arr!49183 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!130918 res!1052223) b!1535004))

(assert (= (and b!1535004 res!1052227) b!1535002))

(assert (= (and b!1535002 res!1052226) b!1535001))

(assert (= (and b!1535001 res!1052229) b!1534996))

(assert (= (and b!1534996 res!1052228) b!1534998))

(assert (= (and b!1534998 res!1052224) b!1535005))

(assert (= (and b!1535005 res!1052222) b!1534997))

(assert (= (and b!1534997 res!1052225) b!1534999))

(assert (= (and b!1534999 res!1052220) b!1535003))

(assert (= (and b!1535003 res!1052221) b!1535000))

(declare-fun m!1417605 () Bool)

(assert (=> b!1535005 m!1417605))

(declare-fun m!1417607 () Bool)

(assert (=> b!1534997 m!1417607))

(assert (=> b!1534997 m!1417607))

(declare-fun m!1417609 () Bool)

(assert (=> b!1534997 m!1417609))

(declare-fun m!1417611 () Bool)

(assert (=> b!1534999 m!1417611))

(assert (=> b!1534999 m!1417607))

(assert (=> b!1535001 m!1417607))

(assert (=> b!1535001 m!1417607))

(declare-fun m!1417613 () Bool)

(assert (=> b!1535001 m!1417613))

(declare-fun m!1417615 () Bool)

(assert (=> b!1535003 m!1417615))

(declare-fun m!1417617 () Bool)

(assert (=> b!1535002 m!1417617))

(assert (=> b!1535002 m!1417617))

(declare-fun m!1417619 () Bool)

(assert (=> b!1535002 m!1417619))

(declare-fun m!1417621 () Bool)

(assert (=> start!130918 m!1417621))

(declare-fun m!1417623 () Bool)

(assert (=> start!130918 m!1417623))

(assert (=> b!1535000 m!1417607))

(assert (=> b!1535000 m!1417607))

(declare-fun m!1417625 () Bool)

(assert (=> b!1535000 m!1417625))

(declare-fun m!1417627 () Bool)

(assert (=> b!1534998 m!1417627))

(declare-fun m!1417629 () Bool)

(assert (=> b!1534996 m!1417629))

(push 1)

