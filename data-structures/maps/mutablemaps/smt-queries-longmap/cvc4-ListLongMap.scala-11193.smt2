; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130826 () Bool)

(assert start!130826)

(declare-datatypes ((array!101851 0))(
  ( (array!101852 (arr!49137 (Array (_ BitVec 32) (_ BitVec 64))) (size!49688 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101851)

(declare-fun b!1533807 () Bool)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun e!854314 () Bool)

(declare-fun mask!2480 () (_ BitVec 32))

(assert (=> b!1533807 (= e!854314 (and (= (select (arr!49137 a!2792) index!463) (select (arr!49137 a!2792) j!64)) (bvsge mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480))))))

(declare-fun b!1533808 () Bool)

(declare-fun res!1051038 () Bool)

(assert (=> b!1533808 (=> (not res!1051038) (not e!854314))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533808 (= res!1051038 (and (= (size!49688 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49688 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49688 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533809 () Bool)

(declare-fun res!1051033 () Bool)

(assert (=> b!1533809 (=> (not res!1051033) (not e!854314))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1533809 (= res!1051033 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49688 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49688 a!2792)) (= (select (arr!49137 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1051034 () Bool)

(assert (=> start!130826 (=> (not res!1051034) (not e!854314))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130826 (= res!1051034 (validMask!0 mask!2480))))

(assert (=> start!130826 e!854314))

(assert (=> start!130826 true))

(declare-fun array_inv!38082 (array!101851) Bool)

(assert (=> start!130826 (array_inv!38082 a!2792)))

(declare-fun b!1533810 () Bool)

(declare-fun res!1051037 () Bool)

(assert (=> b!1533810 (=> (not res!1051037) (not e!854314))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533810 (= res!1051037 (validKeyInArray!0 (select (arr!49137 a!2792) j!64)))))

(declare-fun b!1533811 () Bool)

(declare-fun res!1051031 () Bool)

(assert (=> b!1533811 (=> (not res!1051031) (not e!854314))))

(assert (=> b!1533811 (= res!1051031 (validKeyInArray!0 (select (arr!49137 a!2792) i!951)))))

(declare-fun b!1533812 () Bool)

(declare-fun res!1051035 () Bool)

(assert (=> b!1533812 (=> (not res!1051035) (not e!854314))))

(declare-datatypes ((List!35791 0))(
  ( (Nil!35788) (Cons!35787 (h!37233 (_ BitVec 64)) (t!50492 List!35791)) )
))
(declare-fun arrayNoDuplicates!0 (array!101851 (_ BitVec 32) List!35791) Bool)

(assert (=> b!1533812 (= res!1051035 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35788))))

(declare-fun b!1533813 () Bool)

(declare-fun res!1051036 () Bool)

(assert (=> b!1533813 (=> (not res!1051036) (not e!854314))))

(declare-datatypes ((SeekEntryResult!13292 0))(
  ( (MissingZero!13292 (index!55562 (_ BitVec 32))) (Found!13292 (index!55563 (_ BitVec 32))) (Intermediate!13292 (undefined!14104 Bool) (index!55564 (_ BitVec 32)) (x!137329 (_ BitVec 32))) (Undefined!13292) (MissingVacant!13292 (index!55565 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101851 (_ BitVec 32)) SeekEntryResult!13292)

(assert (=> b!1533813 (= res!1051036 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49137 a!2792) j!64) a!2792 mask!2480) (Found!13292 j!64)))))

(declare-fun b!1533814 () Bool)

(declare-fun res!1051032 () Bool)

(assert (=> b!1533814 (=> (not res!1051032) (not e!854314))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101851 (_ BitVec 32)) Bool)

(assert (=> b!1533814 (= res!1051032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!130826 res!1051034) b!1533808))

(assert (= (and b!1533808 res!1051038) b!1533811))

(assert (= (and b!1533811 res!1051031) b!1533810))

(assert (= (and b!1533810 res!1051037) b!1533814))

(assert (= (and b!1533814 res!1051032) b!1533812))

(assert (= (and b!1533812 res!1051035) b!1533809))

(assert (= (and b!1533809 res!1051033) b!1533813))

(assert (= (and b!1533813 res!1051036) b!1533807))

(declare-fun m!1416539 () Bool)

(assert (=> b!1533811 m!1416539))

(assert (=> b!1533811 m!1416539))

(declare-fun m!1416541 () Bool)

(assert (=> b!1533811 m!1416541))

(declare-fun m!1416543 () Bool)

(assert (=> b!1533807 m!1416543))

(declare-fun m!1416545 () Bool)

(assert (=> b!1533807 m!1416545))

(declare-fun m!1416547 () Bool)

(assert (=> b!1533809 m!1416547))

(declare-fun m!1416549 () Bool)

(assert (=> start!130826 m!1416549))

(declare-fun m!1416551 () Bool)

(assert (=> start!130826 m!1416551))

(assert (=> b!1533813 m!1416545))

(assert (=> b!1533813 m!1416545))

(declare-fun m!1416553 () Bool)

(assert (=> b!1533813 m!1416553))

(assert (=> b!1533810 m!1416545))

(assert (=> b!1533810 m!1416545))

(declare-fun m!1416555 () Bool)

(assert (=> b!1533810 m!1416555))

(declare-fun m!1416557 () Bool)

(assert (=> b!1533814 m!1416557))

(declare-fun m!1416559 () Bool)

(assert (=> b!1533812 m!1416559))

(push 1)

(assert (not b!1533811))

(assert (not b!1533810))

(assert (not start!130826))

(assert (not b!1533812))

(assert (not b!1533813))

(assert (not b!1533814))

(check-sat)

(pop 1)

(push 1)

(check-sat)

