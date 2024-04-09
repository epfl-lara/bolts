; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130730 () Bool)

(assert start!130730)

(declare-fun b!1532792 () Bool)

(declare-fun res!1050017 () Bool)

(declare-fun e!854026 () Bool)

(assert (=> b!1532792 (=> (not res!1050017) (not e!854026))))

(declare-datatypes ((array!101755 0))(
  ( (array!101756 (arr!49089 (Array (_ BitVec 32) (_ BitVec 64))) (size!49640 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101755)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101755 (_ BitVec 32)) Bool)

(assert (=> b!1532792 (= res!1050017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532793 () Bool)

(declare-fun res!1050016 () Bool)

(assert (=> b!1532793 (=> (not res!1050016) (not e!854026))))

(declare-datatypes ((List!35743 0))(
  ( (Nil!35740) (Cons!35739 (h!37185 (_ BitVec 64)) (t!50444 List!35743)) )
))
(declare-fun arrayNoDuplicates!0 (array!101755 (_ BitVec 32) List!35743) Bool)

(assert (=> b!1532793 (= res!1050016 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35740))))

(declare-fun b!1532794 () Bool)

(declare-fun res!1050020 () Bool)

(assert (=> b!1532794 (=> (not res!1050020) (not e!854026))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532794 (= res!1050020 (and (= (size!49640 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49640 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49640 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1050021 () Bool)

(assert (=> start!130730 (=> (not res!1050021) (not e!854026))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130730 (= res!1050021 (validMask!0 mask!2480))))

(assert (=> start!130730 e!854026))

(assert (=> start!130730 true))

(declare-fun array_inv!38034 (array!101755) Bool)

(assert (=> start!130730 (array_inv!38034 a!2792)))

(declare-fun b!1532795 () Bool)

(declare-fun res!1050019 () Bool)

(assert (=> b!1532795 (=> (not res!1050019) (not e!854026))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532795 (= res!1050019 (validKeyInArray!0 (select (arr!49089 a!2792) i!951)))))

(declare-fun b!1532796 () Bool)

(declare-fun res!1050018 () Bool)

(assert (=> b!1532796 (=> (not res!1050018) (not e!854026))))

(assert (=> b!1532796 (= res!1050018 (validKeyInArray!0 (select (arr!49089 a!2792) j!64)))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun b!1532797 () Bool)

(assert (=> b!1532797 (= e!854026 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49640 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49640 a!2792)) (= (select (arr!49089 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480))))))

(assert (= (and start!130730 res!1050021) b!1532794))

(assert (= (and b!1532794 res!1050020) b!1532795))

(assert (= (and b!1532795 res!1050019) b!1532796))

(assert (= (and b!1532796 res!1050018) b!1532792))

(assert (= (and b!1532792 res!1050017) b!1532793))

(assert (= (and b!1532793 res!1050016) b!1532797))

(declare-fun m!1415547 () Bool)

(assert (=> b!1532792 m!1415547))

(declare-fun m!1415549 () Bool)

(assert (=> b!1532797 m!1415549))

(declare-fun m!1415551 () Bool)

(assert (=> b!1532796 m!1415551))

(assert (=> b!1532796 m!1415551))

(declare-fun m!1415553 () Bool)

(assert (=> b!1532796 m!1415553))

(declare-fun m!1415555 () Bool)

(assert (=> b!1532795 m!1415555))

(assert (=> b!1532795 m!1415555))

(declare-fun m!1415557 () Bool)

(assert (=> b!1532795 m!1415557))

(declare-fun m!1415559 () Bool)

(assert (=> start!130730 m!1415559))

(declare-fun m!1415561 () Bool)

(assert (=> start!130730 m!1415561))

(declare-fun m!1415563 () Bool)

(assert (=> b!1532793 m!1415563))

(push 1)

(assert (not b!1532795))

(assert (not start!130730))

(assert (not b!1532793))

(assert (not b!1532796))

(assert (not b!1532792))

(check-sat)

(pop 1)

(push 1)

(check-sat)

