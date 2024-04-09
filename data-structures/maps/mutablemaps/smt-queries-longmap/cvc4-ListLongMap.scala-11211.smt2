; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130934 () Bool)

(assert start!130934)

(declare-fun b!1535236 () Bool)

(declare-fun res!1052467 () Bool)

(declare-fun e!854728 () Bool)

(assert (=> b!1535236 (=> (not res!1052467) (not e!854728))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101959 0))(
  ( (array!101960 (arr!49191 (Array (_ BitVec 32) (_ BitVec 64))) (size!49742 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101959)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13346 0))(
  ( (MissingZero!13346 (index!55778 (_ BitVec 32))) (Found!13346 (index!55779 (_ BitVec 32))) (Intermediate!13346 (undefined!14158 Bool) (index!55780 (_ BitVec 32)) (x!137527 (_ BitVec 32))) (Undefined!13346) (MissingVacant!13346 (index!55781 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101959 (_ BitVec 32)) SeekEntryResult!13346)

(assert (=> b!1535236 (= res!1052467 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49191 a!2792) j!64) a!2792 mask!2480) (Found!13346 j!64)))))

(declare-fun b!1535237 () Bool)

(declare-fun res!1052461 () Bool)

(assert (=> b!1535237 (=> (not res!1052461) (not e!854728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101959 (_ BitVec 32)) Bool)

(assert (=> b!1535237 (= res!1052461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535238 () Bool)

(declare-fun res!1052468 () Bool)

(assert (=> b!1535238 (=> (not res!1052468) (not e!854728))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1535238 (= res!1052468 (and (= (size!49742 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49742 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49742 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535239 () Bool)

(declare-fun e!854729 () Bool)

(assert (=> b!1535239 (= e!854729 false)))

(declare-fun lt!663967 () (_ BitVec 32))

(declare-fun lt!663966 () SeekEntryResult!13346)

(assert (=> b!1535239 (= lt!663966 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663967 vacantIndex!5 (select (arr!49191 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535240 () Bool)

(declare-fun res!1052464 () Bool)

(assert (=> b!1535240 (=> (not res!1052464) (not e!854728))))

(assert (=> b!1535240 (= res!1052464 (not (= (select (arr!49191 a!2792) index!463) (select (arr!49191 a!2792) j!64))))))

(declare-fun b!1535241 () Bool)

(assert (=> b!1535241 (= e!854728 e!854729)))

(declare-fun res!1052460 () Bool)

(assert (=> b!1535241 (=> (not res!1052460) (not e!854729))))

(assert (=> b!1535241 (= res!1052460 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663967 #b00000000000000000000000000000000) (bvslt lt!663967 (size!49742 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535241 (= lt!663967 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535242 () Bool)

(declare-fun res!1052465 () Bool)

(assert (=> b!1535242 (=> (not res!1052465) (not e!854728))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535242 (= res!1052465 (validKeyInArray!0 (select (arr!49191 a!2792) i!951)))))

(declare-fun b!1535243 () Bool)

(declare-fun res!1052462 () Bool)

(assert (=> b!1535243 (=> (not res!1052462) (not e!854728))))

(assert (=> b!1535243 (= res!1052462 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49742 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49742 a!2792)) (= (select (arr!49191 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535245 () Bool)

(declare-fun res!1052463 () Bool)

(assert (=> b!1535245 (=> (not res!1052463) (not e!854728))))

(assert (=> b!1535245 (= res!1052463 (validKeyInArray!0 (select (arr!49191 a!2792) j!64)))))

(declare-fun b!1535244 () Bool)

(declare-fun res!1052469 () Bool)

(assert (=> b!1535244 (=> (not res!1052469) (not e!854728))))

(declare-datatypes ((List!35845 0))(
  ( (Nil!35842) (Cons!35841 (h!37287 (_ BitVec 64)) (t!50546 List!35845)) )
))
(declare-fun arrayNoDuplicates!0 (array!101959 (_ BitVec 32) List!35845) Bool)

(assert (=> b!1535244 (= res!1052469 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35842))))

(declare-fun res!1052466 () Bool)

(assert (=> start!130934 (=> (not res!1052466) (not e!854728))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130934 (= res!1052466 (validMask!0 mask!2480))))

(assert (=> start!130934 e!854728))

(assert (=> start!130934 true))

(declare-fun array_inv!38136 (array!101959) Bool)

(assert (=> start!130934 (array_inv!38136 a!2792)))

(assert (= (and start!130934 res!1052466) b!1535238))

(assert (= (and b!1535238 res!1052468) b!1535242))

(assert (= (and b!1535242 res!1052465) b!1535245))

(assert (= (and b!1535245 res!1052463) b!1535237))

(assert (= (and b!1535237 res!1052461) b!1535244))

(assert (= (and b!1535244 res!1052469) b!1535243))

(assert (= (and b!1535243 res!1052462) b!1535236))

(assert (= (and b!1535236 res!1052467) b!1535240))

(assert (= (and b!1535240 res!1052464) b!1535241))

(assert (= (and b!1535241 res!1052460) b!1535239))

(declare-fun m!1417813 () Bool)

(assert (=> b!1535242 m!1417813))

(assert (=> b!1535242 m!1417813))

(declare-fun m!1417815 () Bool)

(assert (=> b!1535242 m!1417815))

(declare-fun m!1417817 () Bool)

(assert (=> b!1535240 m!1417817))

(declare-fun m!1417819 () Bool)

(assert (=> b!1535240 m!1417819))

(declare-fun m!1417821 () Bool)

(assert (=> b!1535243 m!1417821))

(assert (=> b!1535239 m!1417819))

(assert (=> b!1535239 m!1417819))

(declare-fun m!1417823 () Bool)

(assert (=> b!1535239 m!1417823))

(declare-fun m!1417825 () Bool)

(assert (=> b!1535237 m!1417825))

(assert (=> b!1535236 m!1417819))

(assert (=> b!1535236 m!1417819))

(declare-fun m!1417827 () Bool)

(assert (=> b!1535236 m!1417827))

(declare-fun m!1417829 () Bool)

(assert (=> b!1535241 m!1417829))

(assert (=> b!1535245 m!1417819))

(assert (=> b!1535245 m!1417819))

(declare-fun m!1417831 () Bool)

(assert (=> b!1535245 m!1417831))

(declare-fun m!1417833 () Bool)

(assert (=> b!1535244 m!1417833))

(declare-fun m!1417835 () Bool)

(assert (=> start!130934 m!1417835))

(declare-fun m!1417837 () Bool)

(assert (=> start!130934 m!1417837))

(push 1)

(assert (not b!1535245))

(assert (not b!1535236))

(assert (not b!1535242))

(assert (not b!1535239))

(assert (not b!1535237))

(assert (not b!1535241))

(assert (not start!130934))

(assert (not b!1535244))

