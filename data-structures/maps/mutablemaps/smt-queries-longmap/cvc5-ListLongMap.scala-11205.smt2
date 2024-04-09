; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130894 () Bool)

(assert start!130894)

(declare-fun b!1534636 () Bool)

(declare-fun res!1051865 () Bool)

(declare-fun e!854549 () Bool)

(assert (=> b!1534636 (=> (not res!1051865) (not e!854549))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101919 0))(
  ( (array!101920 (arr!49171 (Array (_ BitVec 32) (_ BitVec 64))) (size!49722 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101919)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1534636 (= res!1051865 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49722 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49722 a!2792)) (= (select (arr!49171 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1051860 () Bool)

(assert (=> start!130894 (=> (not res!1051860) (not e!854549))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130894 (= res!1051860 (validMask!0 mask!2480))))

(assert (=> start!130894 e!854549))

(assert (=> start!130894 true))

(declare-fun array_inv!38116 (array!101919) Bool)

(assert (=> start!130894 (array_inv!38116 a!2792)))

(declare-fun b!1534637 () Bool)

(declare-fun e!854547 () Bool)

(assert (=> b!1534637 (= e!854549 e!854547)))

(declare-fun res!1051866 () Bool)

(assert (=> b!1534637 (=> (not res!1051866) (not e!854547))))

(declare-fun lt!663846 () (_ BitVec 32))

(assert (=> b!1534637 (= res!1051866 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663846 #b00000000000000000000000000000000) (bvslt lt!663846 (size!49722 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1534637 (= lt!663846 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1534638 () Bool)

(assert (=> b!1534638 (= e!854547 false)))

(declare-datatypes ((SeekEntryResult!13326 0))(
  ( (MissingZero!13326 (index!55698 (_ BitVec 32))) (Found!13326 (index!55699 (_ BitVec 32))) (Intermediate!13326 (undefined!14138 Bool) (index!55700 (_ BitVec 32)) (x!137459 (_ BitVec 32))) (Undefined!13326) (MissingVacant!13326 (index!55701 (_ BitVec 32))) )
))
(declare-fun lt!663847 () SeekEntryResult!13326)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101919 (_ BitVec 32)) SeekEntryResult!13326)

(assert (=> b!1534638 (= lt!663847 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663846 vacantIndex!5 (select (arr!49171 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534639 () Bool)

(declare-fun res!1051868 () Bool)

(assert (=> b!1534639 (=> (not res!1051868) (not e!854549))))

(assert (=> b!1534639 (= res!1051868 (not (= (select (arr!49171 a!2792) index!463) (select (arr!49171 a!2792) j!64))))))

(declare-fun b!1534640 () Bool)

(declare-fun res!1051867 () Bool)

(assert (=> b!1534640 (=> (not res!1051867) (not e!854549))))

(declare-datatypes ((List!35825 0))(
  ( (Nil!35822) (Cons!35821 (h!37267 (_ BitVec 64)) (t!50526 List!35825)) )
))
(declare-fun arrayNoDuplicates!0 (array!101919 (_ BitVec 32) List!35825) Bool)

(assert (=> b!1534640 (= res!1051867 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35822))))

(declare-fun b!1534641 () Bool)

(declare-fun res!1051862 () Bool)

(assert (=> b!1534641 (=> (not res!1051862) (not e!854549))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534641 (= res!1051862 (and (= (size!49722 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49722 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49722 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534642 () Bool)

(declare-fun res!1051869 () Bool)

(assert (=> b!1534642 (=> (not res!1051869) (not e!854549))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534642 (= res!1051869 (validKeyInArray!0 (select (arr!49171 a!2792) i!951)))))

(declare-fun b!1534643 () Bool)

(declare-fun res!1051861 () Bool)

(assert (=> b!1534643 (=> (not res!1051861) (not e!854549))))

(assert (=> b!1534643 (= res!1051861 (validKeyInArray!0 (select (arr!49171 a!2792) j!64)))))

(declare-fun b!1534644 () Bool)

(declare-fun res!1051864 () Bool)

(assert (=> b!1534644 (=> (not res!1051864) (not e!854549))))

(assert (=> b!1534644 (= res!1051864 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49171 a!2792) j!64) a!2792 mask!2480) (Found!13326 j!64)))))

(declare-fun b!1534645 () Bool)

(declare-fun res!1051863 () Bool)

(assert (=> b!1534645 (=> (not res!1051863) (not e!854549))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101919 (_ BitVec 32)) Bool)

(assert (=> b!1534645 (= res!1051863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!130894 res!1051860) b!1534641))

(assert (= (and b!1534641 res!1051862) b!1534642))

(assert (= (and b!1534642 res!1051869) b!1534643))

(assert (= (and b!1534643 res!1051861) b!1534645))

(assert (= (and b!1534645 res!1051863) b!1534640))

(assert (= (and b!1534640 res!1051867) b!1534636))

(assert (= (and b!1534636 res!1051865) b!1534644))

(assert (= (and b!1534644 res!1051864) b!1534639))

(assert (= (and b!1534639 res!1051868) b!1534637))

(assert (= (and b!1534637 res!1051866) b!1534638))

(declare-fun m!1417293 () Bool)

(assert (=> b!1534640 m!1417293))

(declare-fun m!1417295 () Bool)

(assert (=> b!1534637 m!1417295))

(declare-fun m!1417297 () Bool)

(assert (=> b!1534643 m!1417297))

(assert (=> b!1534643 m!1417297))

(declare-fun m!1417299 () Bool)

(assert (=> b!1534643 m!1417299))

(declare-fun m!1417301 () Bool)

(assert (=> b!1534639 m!1417301))

(assert (=> b!1534639 m!1417297))

(assert (=> b!1534638 m!1417297))

(assert (=> b!1534638 m!1417297))

(declare-fun m!1417303 () Bool)

(assert (=> b!1534638 m!1417303))

(declare-fun m!1417305 () Bool)

(assert (=> b!1534636 m!1417305))

(declare-fun m!1417307 () Bool)

(assert (=> b!1534645 m!1417307))

(declare-fun m!1417309 () Bool)

(assert (=> start!130894 m!1417309))

(declare-fun m!1417311 () Bool)

(assert (=> start!130894 m!1417311))

(assert (=> b!1534644 m!1417297))

(assert (=> b!1534644 m!1417297))

(declare-fun m!1417313 () Bool)

(assert (=> b!1534644 m!1417313))

(declare-fun m!1417315 () Bool)

(assert (=> b!1534642 m!1417315))

(assert (=> b!1534642 m!1417315))

(declare-fun m!1417317 () Bool)

(assert (=> b!1534642 m!1417317))

(push 1)

