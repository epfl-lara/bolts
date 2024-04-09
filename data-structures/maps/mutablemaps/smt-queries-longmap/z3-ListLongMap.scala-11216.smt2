; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130962 () Bool)

(assert start!130962)

(declare-fun b!1535656 () Bool)

(declare-fun res!1052882 () Bool)

(declare-fun e!854855 () Bool)

(assert (=> b!1535656 (=> (not res!1052882) (not e!854855))))

(declare-datatypes ((array!101987 0))(
  ( (array!101988 (arr!49205 (Array (_ BitVec 32) (_ BitVec 64))) (size!49756 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101987)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1535656 (= res!1052882 (not (= (select (arr!49205 a!2792) index!463) (select (arr!49205 a!2792) j!64))))))

(declare-fun b!1535657 () Bool)

(declare-fun e!854853 () Bool)

(assert (=> b!1535657 (= e!854853 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun lt!664050 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13360 0))(
  ( (MissingZero!13360 (index!55834 (_ BitVec 32))) (Found!13360 (index!55835 (_ BitVec 32))) (Intermediate!13360 (undefined!14172 Bool) (index!55836 (_ BitVec 32)) (x!137581 (_ BitVec 32))) (Undefined!13360) (MissingVacant!13360 (index!55837 (_ BitVec 32))) )
))
(declare-fun lt!664051 () SeekEntryResult!13360)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101987 (_ BitVec 32)) SeekEntryResult!13360)

(assert (=> b!1535657 (= lt!664051 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664050 vacantIndex!5 (select (arr!49205 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535658 () Bool)

(declare-fun res!1052883 () Bool)

(assert (=> b!1535658 (=> (not res!1052883) (not e!854855))))

(declare-datatypes ((List!35859 0))(
  ( (Nil!35856) (Cons!35855 (h!37301 (_ BitVec 64)) (t!50560 List!35859)) )
))
(declare-fun arrayNoDuplicates!0 (array!101987 (_ BitVec 32) List!35859) Bool)

(assert (=> b!1535658 (= res!1052883 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35856))))

(declare-fun b!1535659 () Bool)

(declare-fun res!1052884 () Bool)

(assert (=> b!1535659 (=> (not res!1052884) (not e!854855))))

(assert (=> b!1535659 (= res!1052884 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49756 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49756 a!2792)) (= (select (arr!49205 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535660 () Bool)

(declare-fun res!1052881 () Bool)

(assert (=> b!1535660 (=> (not res!1052881) (not e!854855))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535660 (= res!1052881 (validKeyInArray!0 (select (arr!49205 a!2792) i!951)))))

(declare-fun b!1535661 () Bool)

(declare-fun res!1052888 () Bool)

(assert (=> b!1535661 (=> (not res!1052888) (not e!854855))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101987 (_ BitVec 32)) Bool)

(assert (=> b!1535661 (= res!1052888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535662 () Bool)

(declare-fun res!1052886 () Bool)

(assert (=> b!1535662 (=> (not res!1052886) (not e!854855))))

(assert (=> b!1535662 (= res!1052886 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49205 a!2792) j!64) a!2792 mask!2480) (Found!13360 j!64)))))

(declare-fun res!1052885 () Bool)

(assert (=> start!130962 (=> (not res!1052885) (not e!854855))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130962 (= res!1052885 (validMask!0 mask!2480))))

(assert (=> start!130962 e!854855))

(assert (=> start!130962 true))

(declare-fun array_inv!38150 (array!101987) Bool)

(assert (=> start!130962 (array_inv!38150 a!2792)))

(declare-fun b!1535663 () Bool)

(declare-fun res!1052889 () Bool)

(assert (=> b!1535663 (=> (not res!1052889) (not e!854855))))

(assert (=> b!1535663 (= res!1052889 (and (= (size!49756 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49756 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49756 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535664 () Bool)

(declare-fun res!1052887 () Bool)

(assert (=> b!1535664 (=> (not res!1052887) (not e!854855))))

(assert (=> b!1535664 (= res!1052887 (validKeyInArray!0 (select (arr!49205 a!2792) j!64)))))

(declare-fun b!1535665 () Bool)

(assert (=> b!1535665 (= e!854855 e!854853)))

(declare-fun res!1052880 () Bool)

(assert (=> b!1535665 (=> (not res!1052880) (not e!854853))))

(assert (=> b!1535665 (= res!1052880 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664050 #b00000000000000000000000000000000) (bvslt lt!664050 (size!49756 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535665 (= lt!664050 (nextIndex!0 index!463 x!510 mask!2480))))

(assert (= (and start!130962 res!1052885) b!1535663))

(assert (= (and b!1535663 res!1052889) b!1535660))

(assert (= (and b!1535660 res!1052881) b!1535664))

(assert (= (and b!1535664 res!1052887) b!1535661))

(assert (= (and b!1535661 res!1052888) b!1535658))

(assert (= (and b!1535658 res!1052883) b!1535659))

(assert (= (and b!1535659 res!1052884) b!1535662))

(assert (= (and b!1535662 res!1052886) b!1535656))

(assert (= (and b!1535656 res!1052882) b!1535665))

(assert (= (and b!1535665 res!1052880) b!1535657))

(declare-fun m!1418177 () Bool)

(assert (=> b!1535660 m!1418177))

(assert (=> b!1535660 m!1418177))

(declare-fun m!1418179 () Bool)

(assert (=> b!1535660 m!1418179))

(declare-fun m!1418181 () Bool)

(assert (=> b!1535664 m!1418181))

(assert (=> b!1535664 m!1418181))

(declare-fun m!1418183 () Bool)

(assert (=> b!1535664 m!1418183))

(assert (=> b!1535657 m!1418181))

(assert (=> b!1535657 m!1418181))

(declare-fun m!1418185 () Bool)

(assert (=> b!1535657 m!1418185))

(declare-fun m!1418187 () Bool)

(assert (=> b!1535659 m!1418187))

(assert (=> b!1535662 m!1418181))

(assert (=> b!1535662 m!1418181))

(declare-fun m!1418189 () Bool)

(assert (=> b!1535662 m!1418189))

(declare-fun m!1418191 () Bool)

(assert (=> b!1535665 m!1418191))

(declare-fun m!1418193 () Bool)

(assert (=> b!1535656 m!1418193))

(assert (=> b!1535656 m!1418181))

(declare-fun m!1418195 () Bool)

(assert (=> start!130962 m!1418195))

(declare-fun m!1418197 () Bool)

(assert (=> start!130962 m!1418197))

(declare-fun m!1418199 () Bool)

(assert (=> b!1535661 m!1418199))

(declare-fun m!1418201 () Bool)

(assert (=> b!1535658 m!1418201))

(check-sat (not start!130962) (not b!1535661) (not b!1535664) (not b!1535657) (not b!1535658) (not b!1535660) (not b!1535665) (not b!1535662))
(check-sat)
