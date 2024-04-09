; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130944 () Bool)

(assert start!130944)

(declare-fun b!1535386 () Bool)

(declare-fun res!1052616 () Bool)

(declare-fun e!854772 () Bool)

(assert (=> b!1535386 (=> (not res!1052616) (not e!854772))))

(declare-datatypes ((array!101969 0))(
  ( (array!101970 (arr!49196 (Array (_ BitVec 32) (_ BitVec 64))) (size!49747 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101969)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1535386 (= res!1052616 (not (= (select (arr!49196 a!2792) index!463) (select (arr!49196 a!2792) j!64))))))

(declare-fun b!1535387 () Bool)

(declare-fun e!854774 () Bool)

(assert (=> b!1535387 (= e!854774 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!663997 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13351 0))(
  ( (MissingZero!13351 (index!55798 (_ BitVec 32))) (Found!13351 (index!55799 (_ BitVec 32))) (Intermediate!13351 (undefined!14163 Bool) (index!55800 (_ BitVec 32)) (x!137548 (_ BitVec 32))) (Undefined!13351) (MissingVacant!13351 (index!55801 (_ BitVec 32))) )
))
(declare-fun lt!663996 () SeekEntryResult!13351)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101969 (_ BitVec 32)) SeekEntryResult!13351)

(assert (=> b!1535387 (= lt!663996 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663997 vacantIndex!5 (select (arr!49196 a!2792) j!64) a!2792 mask!2480))))

(declare-fun res!1052615 () Bool)

(assert (=> start!130944 (=> (not res!1052615) (not e!854772))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130944 (= res!1052615 (validMask!0 mask!2480))))

(assert (=> start!130944 e!854772))

(assert (=> start!130944 true))

(declare-fun array_inv!38141 (array!101969) Bool)

(assert (=> start!130944 (array_inv!38141 a!2792)))

(declare-fun b!1535388 () Bool)

(declare-fun res!1052618 () Bool)

(assert (=> b!1535388 (=> (not res!1052618) (not e!854772))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101969 (_ BitVec 32)) Bool)

(assert (=> b!1535388 (= res!1052618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535389 () Bool)

(declare-fun res!1052610 () Bool)

(assert (=> b!1535389 (=> (not res!1052610) (not e!854772))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1535389 (= res!1052610 (and (= (size!49747 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49747 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49747 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535390 () Bool)

(declare-fun res!1052619 () Bool)

(assert (=> b!1535390 (=> (not res!1052619) (not e!854772))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535390 (= res!1052619 (validKeyInArray!0 (select (arr!49196 a!2792) j!64)))))

(declare-fun b!1535391 () Bool)

(assert (=> b!1535391 (= e!854772 e!854774)))

(declare-fun res!1052612 () Bool)

(assert (=> b!1535391 (=> (not res!1052612) (not e!854774))))

(assert (=> b!1535391 (= res!1052612 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663997 #b00000000000000000000000000000000) (bvslt lt!663997 (size!49747 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535391 (= lt!663997 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535392 () Bool)

(declare-fun res!1052614 () Bool)

(assert (=> b!1535392 (=> (not res!1052614) (not e!854772))))

(declare-datatypes ((List!35850 0))(
  ( (Nil!35847) (Cons!35846 (h!37292 (_ BitVec 64)) (t!50551 List!35850)) )
))
(declare-fun arrayNoDuplicates!0 (array!101969 (_ BitVec 32) List!35850) Bool)

(assert (=> b!1535392 (= res!1052614 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35847))))

(declare-fun b!1535393 () Bool)

(declare-fun res!1052613 () Bool)

(assert (=> b!1535393 (=> (not res!1052613) (not e!854772))))

(assert (=> b!1535393 (= res!1052613 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49196 a!2792) j!64) a!2792 mask!2480) (Found!13351 j!64)))))

(declare-fun b!1535394 () Bool)

(declare-fun res!1052617 () Bool)

(assert (=> b!1535394 (=> (not res!1052617) (not e!854772))))

(assert (=> b!1535394 (= res!1052617 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49747 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49747 a!2792)) (= (select (arr!49196 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535395 () Bool)

(declare-fun res!1052611 () Bool)

(assert (=> b!1535395 (=> (not res!1052611) (not e!854772))))

(assert (=> b!1535395 (= res!1052611 (validKeyInArray!0 (select (arr!49196 a!2792) i!951)))))

(assert (= (and start!130944 res!1052615) b!1535389))

(assert (= (and b!1535389 res!1052610) b!1535395))

(assert (= (and b!1535395 res!1052611) b!1535390))

(assert (= (and b!1535390 res!1052619) b!1535388))

(assert (= (and b!1535388 res!1052618) b!1535392))

(assert (= (and b!1535392 res!1052614) b!1535394))

(assert (= (and b!1535394 res!1052617) b!1535393))

(assert (= (and b!1535393 res!1052613) b!1535386))

(assert (= (and b!1535386 res!1052616) b!1535391))

(assert (= (and b!1535391 res!1052612) b!1535387))

(declare-fun m!1417943 () Bool)

(assert (=> b!1535391 m!1417943))

(declare-fun m!1417945 () Bool)

(assert (=> start!130944 m!1417945))

(declare-fun m!1417947 () Bool)

(assert (=> start!130944 m!1417947))

(declare-fun m!1417949 () Bool)

(assert (=> b!1535386 m!1417949))

(declare-fun m!1417951 () Bool)

(assert (=> b!1535386 m!1417951))

(declare-fun m!1417953 () Bool)

(assert (=> b!1535392 m!1417953))

(assert (=> b!1535393 m!1417951))

(assert (=> b!1535393 m!1417951))

(declare-fun m!1417955 () Bool)

(assert (=> b!1535393 m!1417955))

(declare-fun m!1417957 () Bool)

(assert (=> b!1535395 m!1417957))

(assert (=> b!1535395 m!1417957))

(declare-fun m!1417959 () Bool)

(assert (=> b!1535395 m!1417959))

(assert (=> b!1535390 m!1417951))

(assert (=> b!1535390 m!1417951))

(declare-fun m!1417961 () Bool)

(assert (=> b!1535390 m!1417961))

(assert (=> b!1535387 m!1417951))

(assert (=> b!1535387 m!1417951))

(declare-fun m!1417963 () Bool)

(assert (=> b!1535387 m!1417963))

(declare-fun m!1417965 () Bool)

(assert (=> b!1535394 m!1417965))

(declare-fun m!1417967 () Bool)

(assert (=> b!1535388 m!1417967))

(check-sat (not b!1535387) (not b!1535388) (not b!1535393) (not b!1535390) (not b!1535392) (not b!1535391) (not b!1535395) (not start!130944))
(check-sat)
