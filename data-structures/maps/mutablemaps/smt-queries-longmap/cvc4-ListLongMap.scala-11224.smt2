; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131012 () Bool)

(assert start!131012)

(declare-fun b!1536468 () Bool)

(declare-fun res!1053695 () Bool)

(declare-fun e!855206 () Bool)

(assert (=> b!1536468 (=> (not res!1053695) (not e!855206))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((array!102037 0))(
  ( (array!102038 (arr!49230 (Array (_ BitVec 32) (_ BitVec 64))) (size!49781 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102037)

(assert (=> b!1536468 (= res!1053695 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49781 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49781 a!2792)) (= (select (arr!49230 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536469 () Bool)

(declare-fun res!1053701 () Bool)

(assert (=> b!1536469 (=> (not res!1053701) (not e!855206))))

(declare-datatypes ((List!35884 0))(
  ( (Nil!35881) (Cons!35880 (h!37326 (_ BitVec 64)) (t!50585 List!35884)) )
))
(declare-fun arrayNoDuplicates!0 (array!102037 (_ BitVec 32) List!35884) Bool)

(assert (=> b!1536469 (= res!1053701 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35881))))

(declare-fun res!1053700 () Bool)

(assert (=> start!131012 (=> (not res!1053700) (not e!855206))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131012 (= res!1053700 (validMask!0 mask!2480))))

(assert (=> start!131012 e!855206))

(assert (=> start!131012 true))

(declare-fun array_inv!38175 (array!102037) Bool)

(assert (=> start!131012 (array_inv!38175 a!2792)))

(declare-fun b!1536470 () Bool)

(declare-fun e!855202 () Bool)

(assert (=> b!1536470 (= e!855206 e!855202)))

(declare-fun res!1053694 () Bool)

(assert (=> b!1536470 (=> (not res!1053694) (not e!855202))))

(declare-datatypes ((SeekEntryResult!13385 0))(
  ( (MissingZero!13385 (index!55934 (_ BitVec 32))) (Found!13385 (index!55935 (_ BitVec 32))) (Intermediate!13385 (undefined!14197 Bool) (index!55936 (_ BitVec 32)) (x!137670 (_ BitVec 32))) (Undefined!13385) (MissingVacant!13385 (index!55937 (_ BitVec 32))) )
))
(declare-fun lt!664325 () SeekEntryResult!13385)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102037 (_ BitVec 32)) SeekEntryResult!13385)

(assert (=> b!1536470 (= res!1053694 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49230 a!2792) j!64) a!2792 mask!2480) lt!664325))))

(assert (=> b!1536470 (= lt!664325 (Found!13385 j!64))))

(declare-fun b!1536471 () Bool)

(declare-fun res!1053692 () Bool)

(assert (=> b!1536471 (=> (not res!1053692) (not e!855206))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1536471 (= res!1053692 (and (= (size!49781 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49781 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49781 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536472 () Bool)

(declare-fun res!1053693 () Bool)

(assert (=> b!1536472 (=> (not res!1053693) (not e!855202))))

(assert (=> b!1536472 (= res!1053693 (not (= (select (arr!49230 a!2792) index!463) (select (arr!49230 a!2792) j!64))))))

(declare-fun b!1536473 () Bool)

(declare-fun res!1053696 () Bool)

(assert (=> b!1536473 (=> (not res!1053696) (not e!855206))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536473 (= res!1053696 (validKeyInArray!0 (select (arr!49230 a!2792) i!951)))))

(declare-fun b!1536474 () Bool)

(declare-fun e!855203 () Bool)

(declare-fun e!855205 () Bool)

(assert (=> b!1536474 (= e!855203 e!855205)))

(declare-fun res!1053699 () Bool)

(assert (=> b!1536474 (=> (not res!1053699) (not e!855205))))

(declare-fun lt!664326 () SeekEntryResult!13385)

(assert (=> b!1536474 (= res!1053699 (= lt!664326 lt!664325))))

(declare-fun lt!664324 () (_ BitVec 32))

(assert (=> b!1536474 (= lt!664326 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664324 vacantIndex!5 (select (arr!49230 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536475 () Bool)

(declare-fun res!1053697 () Bool)

(assert (=> b!1536475 (=> (not res!1053697) (not e!855206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102037 (_ BitVec 32)) Bool)

(assert (=> b!1536475 (= res!1053697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536476 () Bool)

(assert (=> b!1536476 (= e!855202 e!855203)))

(declare-fun res!1053698 () Bool)

(assert (=> b!1536476 (=> (not res!1053698) (not e!855203))))

(assert (=> b!1536476 (= res!1053698 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664324 #b00000000000000000000000000000000) (bvslt lt!664324 (size!49781 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536476 (= lt!664324 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536477 () Bool)

(declare-fun res!1053702 () Bool)

(assert (=> b!1536477 (=> (not res!1053702) (not e!855206))))

(assert (=> b!1536477 (= res!1053702 (validKeyInArray!0 (select (arr!49230 a!2792) j!64)))))

(declare-fun b!1536478 () Bool)

(assert (=> b!1536478 (= e!855205 (not (or (bvslt mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480)) (= (select (store (arr!49230 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1536478 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664324 vacantIndex!5 (select (store (arr!49230 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102038 (store (arr!49230 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49781 a!2792)) mask!2480) lt!664326)))

(declare-datatypes ((Unit!51294 0))(
  ( (Unit!51295) )
))
(declare-fun lt!664327 () Unit!51294)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102037 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51294)

(assert (=> b!1536478 (= lt!664327 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664324 vacantIndex!5 mask!2480))))

(assert (= (and start!131012 res!1053700) b!1536471))

(assert (= (and b!1536471 res!1053692) b!1536473))

(assert (= (and b!1536473 res!1053696) b!1536477))

(assert (= (and b!1536477 res!1053702) b!1536475))

(assert (= (and b!1536475 res!1053697) b!1536469))

(assert (= (and b!1536469 res!1053701) b!1536468))

(assert (= (and b!1536468 res!1053695) b!1536470))

(assert (= (and b!1536470 res!1053694) b!1536472))

(assert (= (and b!1536472 res!1053693) b!1536476))

(assert (= (and b!1536476 res!1053698) b!1536474))

(assert (= (and b!1536474 res!1053699) b!1536478))

(declare-fun m!1418991 () Bool)

(assert (=> b!1536475 m!1418991))

(declare-fun m!1418993 () Bool)

(assert (=> b!1536477 m!1418993))

(assert (=> b!1536477 m!1418993))

(declare-fun m!1418995 () Bool)

(assert (=> b!1536477 m!1418995))

(declare-fun m!1418997 () Bool)

(assert (=> b!1536473 m!1418997))

(assert (=> b!1536473 m!1418997))

(declare-fun m!1418999 () Bool)

(assert (=> b!1536473 m!1418999))

(declare-fun m!1419001 () Bool)

(assert (=> start!131012 m!1419001))

(declare-fun m!1419003 () Bool)

(assert (=> start!131012 m!1419003))

(declare-fun m!1419005 () Bool)

(assert (=> b!1536478 m!1419005))

(declare-fun m!1419007 () Bool)

(assert (=> b!1536478 m!1419007))

(declare-fun m!1419009 () Bool)

(assert (=> b!1536478 m!1419009))

(assert (=> b!1536478 m!1419007))

(declare-fun m!1419011 () Bool)

(assert (=> b!1536478 m!1419011))

(declare-fun m!1419013 () Bool)

(assert (=> b!1536478 m!1419013))

(declare-fun m!1419015 () Bool)

(assert (=> b!1536476 m!1419015))

(assert (=> b!1536474 m!1418993))

(assert (=> b!1536474 m!1418993))

(declare-fun m!1419017 () Bool)

(assert (=> b!1536474 m!1419017))

(declare-fun m!1419019 () Bool)

(assert (=> b!1536472 m!1419019))

(assert (=> b!1536472 m!1418993))

(assert (=> b!1536470 m!1418993))

(assert (=> b!1536470 m!1418993))

(declare-fun m!1419021 () Bool)

(assert (=> b!1536470 m!1419021))

(declare-fun m!1419023 () Bool)

(assert (=> b!1536469 m!1419023))

(declare-fun m!1419025 () Bool)

(assert (=> b!1536468 m!1419025))

(push 1)

(assert (not b!1536476))

(assert (not b!1536473))

(assert (not b!1536469))

(assert (not b!1536478))

(assert (not b!1536475))

(assert (not b!1536474))

(assert (not start!131012))

(assert (not b!1536477))

(assert (not b!1536470))

(check-sat)

