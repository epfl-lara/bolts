; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130780 () Bool)

(assert start!130780)

(declare-fun b!1533271 () Bool)

(declare-fun res!1050499 () Bool)

(declare-fun e!854176 () Bool)

(assert (=> b!1533271 (=> (not res!1050499) (not e!854176))))

(declare-datatypes ((array!101805 0))(
  ( (array!101806 (arr!49114 (Array (_ BitVec 32) (_ BitVec 64))) (size!49665 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101805)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101805 (_ BitVec 32)) Bool)

(assert (=> b!1533271 (= res!1050499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533272 () Bool)

(assert (=> b!1533272 (= e!854176 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13269 0))(
  ( (MissingZero!13269 (index!55470 (_ BitVec 32))) (Found!13269 (index!55471 (_ BitVec 32))) (Intermediate!13269 (undefined!14081 Bool) (index!55472 (_ BitVec 32)) (x!137250 (_ BitVec 32))) (Undefined!13269) (MissingVacant!13269 (index!55473 (_ BitVec 32))) )
))
(declare-fun lt!663718 () SeekEntryResult!13269)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101805 (_ BitVec 32)) SeekEntryResult!13269)

(assert (=> b!1533272 (= lt!663718 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49114 a!2792) j!64) a!2792 mask!2480))))

(declare-fun res!1050501 () Bool)

(assert (=> start!130780 (=> (not res!1050501) (not e!854176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130780 (= res!1050501 (validMask!0 mask!2480))))

(assert (=> start!130780 e!854176))

(assert (=> start!130780 true))

(declare-fun array_inv!38059 (array!101805) Bool)

(assert (=> start!130780 (array_inv!38059 a!2792)))

(declare-fun b!1533273 () Bool)

(declare-fun res!1050496 () Bool)

(assert (=> b!1533273 (=> (not res!1050496) (not e!854176))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533273 (= res!1050496 (and (= (size!49665 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49665 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49665 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533274 () Bool)

(declare-fun res!1050500 () Bool)

(assert (=> b!1533274 (=> (not res!1050500) (not e!854176))))

(declare-datatypes ((List!35768 0))(
  ( (Nil!35765) (Cons!35764 (h!37210 (_ BitVec 64)) (t!50469 List!35768)) )
))
(declare-fun arrayNoDuplicates!0 (array!101805 (_ BitVec 32) List!35768) Bool)

(assert (=> b!1533274 (= res!1050500 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35765))))

(declare-fun b!1533275 () Bool)

(declare-fun res!1050495 () Bool)

(assert (=> b!1533275 (=> (not res!1050495) (not e!854176))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533275 (= res!1050495 (validKeyInArray!0 (select (arr!49114 a!2792) j!64)))))

(declare-fun b!1533276 () Bool)

(declare-fun res!1050497 () Bool)

(assert (=> b!1533276 (=> (not res!1050497) (not e!854176))))

(assert (=> b!1533276 (= res!1050497 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49665 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49665 a!2792)) (= (select (arr!49114 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533277 () Bool)

(declare-fun res!1050498 () Bool)

(assert (=> b!1533277 (=> (not res!1050498) (not e!854176))))

(assert (=> b!1533277 (= res!1050498 (validKeyInArray!0 (select (arr!49114 a!2792) i!951)))))

(assert (= (and start!130780 res!1050501) b!1533273))

(assert (= (and b!1533273 res!1050496) b!1533277))

(assert (= (and b!1533277 res!1050498) b!1533275))

(assert (= (and b!1533275 res!1050495) b!1533271))

(assert (= (and b!1533271 res!1050499) b!1533274))

(assert (= (and b!1533274 res!1050500) b!1533276))

(assert (= (and b!1533276 res!1050497) b!1533272))

(declare-fun m!1416015 () Bool)

(assert (=> b!1533272 m!1416015))

(assert (=> b!1533272 m!1416015))

(declare-fun m!1416017 () Bool)

(assert (=> b!1533272 m!1416017))

(assert (=> b!1533275 m!1416015))

(assert (=> b!1533275 m!1416015))

(declare-fun m!1416019 () Bool)

(assert (=> b!1533275 m!1416019))

(declare-fun m!1416021 () Bool)

(assert (=> start!130780 m!1416021))

(declare-fun m!1416023 () Bool)

(assert (=> start!130780 m!1416023))

(declare-fun m!1416025 () Bool)

(assert (=> b!1533276 m!1416025))

(declare-fun m!1416027 () Bool)

(assert (=> b!1533271 m!1416027))

(declare-fun m!1416029 () Bool)

(assert (=> b!1533277 m!1416029))

(assert (=> b!1533277 m!1416029))

(declare-fun m!1416031 () Bool)

(assert (=> b!1533277 m!1416031))

(declare-fun m!1416033 () Bool)

(assert (=> b!1533274 m!1416033))

(push 1)

(assert (not start!130780))

(assert (not b!1533271))

(assert (not b!1533274))

(assert (not b!1533272))

(assert (not b!1533277))

(assert (not b!1533275))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

