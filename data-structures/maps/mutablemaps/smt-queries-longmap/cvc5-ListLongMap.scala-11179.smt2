; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130738 () Bool)

(assert start!130738)

(declare-fun b!1532855 () Bool)

(declare-fun res!1050080 () Bool)

(declare-fun e!854051 () Bool)

(assert (=> b!1532855 (=> (not res!1050080) (not e!854051))))

(declare-datatypes ((array!101763 0))(
  ( (array!101764 (arr!49093 (Array (_ BitVec 32) (_ BitVec 64))) (size!49644 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101763)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532855 (= res!1050080 (validKeyInArray!0 (select (arr!49093 a!2792) j!64)))))

(declare-fun b!1532856 () Bool)

(declare-fun res!1050083 () Bool)

(assert (=> b!1532856 (=> (not res!1050083) (not e!854051))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532856 (= res!1050083 (and (= (size!49644 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49644 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49644 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532857 () Bool)

(declare-fun res!1050081 () Bool)

(assert (=> b!1532857 (=> (not res!1050081) (not e!854051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101763 (_ BitVec 32)) Bool)

(assert (=> b!1532857 (= res!1050081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532858 () Bool)

(declare-fun res!1050082 () Bool)

(assert (=> b!1532858 (=> (not res!1050082) (not e!854051))))

(declare-datatypes ((List!35747 0))(
  ( (Nil!35744) (Cons!35743 (h!37189 (_ BitVec 64)) (t!50448 List!35747)) )
))
(declare-fun arrayNoDuplicates!0 (array!101763 (_ BitVec 32) List!35747) Bool)

(assert (=> b!1532858 (= res!1050082 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35744))))

(declare-fun b!1532859 () Bool)

(declare-fun res!1050084 () Bool)

(assert (=> b!1532859 (=> (not res!1050084) (not e!854051))))

(assert (=> b!1532859 (= res!1050084 (validKeyInArray!0 (select (arr!49093 a!2792) i!951)))))

(declare-fun res!1050079 () Bool)

(assert (=> start!130738 (=> (not res!1050079) (not e!854051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130738 (= res!1050079 (validMask!0 mask!2480))))

(assert (=> start!130738 e!854051))

(assert (=> start!130738 true))

(declare-fun array_inv!38038 (array!101763) Bool)

(assert (=> start!130738 (array_inv!38038 a!2792)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun b!1532860 () Bool)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1532860 (= e!854051 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49644 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49644 a!2792)) (= (select (arr!49093 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!2480 #b00000000000000000000000000000000) (bvslt index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480))))))

(assert (= (and start!130738 res!1050079) b!1532856))

(assert (= (and b!1532856 res!1050083) b!1532859))

(assert (= (and b!1532859 res!1050084) b!1532855))

(assert (= (and b!1532855 res!1050080) b!1532857))

(assert (= (and b!1532857 res!1050081) b!1532858))

(assert (= (and b!1532858 res!1050082) b!1532860))

(declare-fun m!1415613 () Bool)

(assert (=> b!1532857 m!1415613))

(declare-fun m!1415615 () Bool)

(assert (=> start!130738 m!1415615))

(declare-fun m!1415617 () Bool)

(assert (=> start!130738 m!1415617))

(declare-fun m!1415619 () Bool)

(assert (=> b!1532859 m!1415619))

(assert (=> b!1532859 m!1415619))

(declare-fun m!1415621 () Bool)

(assert (=> b!1532859 m!1415621))

(declare-fun m!1415623 () Bool)

(assert (=> b!1532858 m!1415623))

(declare-fun m!1415625 () Bool)

(assert (=> b!1532860 m!1415625))

(declare-fun m!1415627 () Bool)

(assert (=> b!1532855 m!1415627))

(assert (=> b!1532855 m!1415627))

(declare-fun m!1415629 () Bool)

(assert (=> b!1532855 m!1415629))

(push 1)

(assert (not b!1532858))

(assert (not b!1532857))

(assert (not b!1532855))

(assert (not start!130738))

(assert (not b!1532859))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

