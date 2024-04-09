; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130990 () Bool)

(assert start!130990)

(declare-fun b!1536105 () Bool)

(declare-fun res!1053338 () Bool)

(declare-fun e!855039 () Bool)

(assert (=> b!1536105 (=> (not res!1053338) (not e!855039))))

(declare-datatypes ((array!102015 0))(
  ( (array!102016 (arr!49219 (Array (_ BitVec 32) (_ BitVec 64))) (size!49770 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102015)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536105 (= res!1053338 (validKeyInArray!0 (select (arr!49219 a!2792) i!951)))))

(declare-fun b!1536106 () Bool)

(declare-fun res!1053329 () Bool)

(assert (=> b!1536106 (=> (not res!1053329) (not e!855039))))

(declare-datatypes ((List!35873 0))(
  ( (Nil!35870) (Cons!35869 (h!37315 (_ BitVec 64)) (t!50574 List!35873)) )
))
(declare-fun arrayNoDuplicates!0 (array!102015 (_ BitVec 32) List!35873) Bool)

(assert (=> b!1536106 (= res!1053329 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35870))))

(declare-fun res!1053336 () Bool)

(assert (=> start!130990 (=> (not res!1053336) (not e!855039))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130990 (= res!1053336 (validMask!0 mask!2480))))

(assert (=> start!130990 e!855039))

(assert (=> start!130990 true))

(declare-fun array_inv!38164 (array!102015) Bool)

(assert (=> start!130990 (array_inv!38164 a!2792)))

(declare-fun b!1536107 () Bool)

(declare-fun res!1053330 () Bool)

(declare-fun e!855038 () Bool)

(assert (=> b!1536107 (=> (not res!1053330) (not e!855038))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1536107 (= res!1053330 (not (= (select (arr!49219 a!2792) index!463) (select (arr!49219 a!2792) j!64))))))

(declare-fun b!1536108 () Bool)

(declare-fun e!855041 () Bool)

(declare-fun e!855037 () Bool)

(assert (=> b!1536108 (= e!855041 e!855037)))

(declare-fun res!1053334 () Bool)

(assert (=> b!1536108 (=> (not res!1053334) (not e!855037))))

(declare-datatypes ((SeekEntryResult!13374 0))(
  ( (MissingZero!13374 (index!55890 (_ BitVec 32))) (Found!13374 (index!55891 (_ BitVec 32))) (Intermediate!13374 (undefined!14186 Bool) (index!55892 (_ BitVec 32)) (x!137635 (_ BitVec 32))) (Undefined!13374) (MissingVacant!13374 (index!55893 (_ BitVec 32))) )
))
(declare-fun lt!664194 () SeekEntryResult!13374)

(declare-fun lt!664192 () SeekEntryResult!13374)

(assert (=> b!1536108 (= res!1053334 (= lt!664194 lt!664192))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664195 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102015 (_ BitVec 32)) SeekEntryResult!13374)

(assert (=> b!1536108 (= lt!664194 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664195 vacantIndex!5 (select (arr!49219 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536109 () Bool)

(assert (=> b!1536109 (= e!855038 e!855041)))

(declare-fun res!1053337 () Bool)

(assert (=> b!1536109 (=> (not res!1053337) (not e!855041))))

(assert (=> b!1536109 (= res!1053337 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664195 #b00000000000000000000000000000000) (bvslt lt!664195 (size!49770 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536109 (= lt!664195 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536110 () Bool)

(declare-fun res!1053335 () Bool)

(assert (=> b!1536110 (=> (not res!1053335) (not e!855039))))

(assert (=> b!1536110 (= res!1053335 (and (= (size!49770 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49770 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49770 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536111 () Bool)

(declare-fun res!1053333 () Bool)

(assert (=> b!1536111 (=> (not res!1053333) (not e!855039))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102015 (_ BitVec 32)) Bool)

(assert (=> b!1536111 (= res!1053333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536112 () Bool)

(declare-fun res!1053339 () Bool)

(assert (=> b!1536112 (=> (not res!1053339) (not e!855039))))

(assert (=> b!1536112 (= res!1053339 (validKeyInArray!0 (select (arr!49219 a!2792) j!64)))))

(declare-fun b!1536113 () Bool)

(assert (=> b!1536113 (= e!855037 (not (or (bvslt mask!2480 #b00000000000000000000000000000000) (bvslt index!463 (bvadd #b00000000000000000000000000000001 mask!2480)))))))

(assert (=> b!1536113 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664195 vacantIndex!5 (select (store (arr!49219 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102016 (store (arr!49219 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49770 a!2792)) mask!2480) lt!664194)))

(declare-datatypes ((Unit!51272 0))(
  ( (Unit!51273) )
))
(declare-fun lt!664193 () Unit!51272)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102015 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51272)

(assert (=> b!1536113 (= lt!664193 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664195 vacantIndex!5 mask!2480))))

(declare-fun b!1536114 () Bool)

(declare-fun res!1053331 () Bool)

(assert (=> b!1536114 (=> (not res!1053331) (not e!855039))))

(assert (=> b!1536114 (= res!1053331 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49770 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49770 a!2792)) (= (select (arr!49219 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536115 () Bool)

(assert (=> b!1536115 (= e!855039 e!855038)))

(declare-fun res!1053332 () Bool)

(assert (=> b!1536115 (=> (not res!1053332) (not e!855038))))

(assert (=> b!1536115 (= res!1053332 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49219 a!2792) j!64) a!2792 mask!2480) lt!664192))))

(assert (=> b!1536115 (= lt!664192 (Found!13374 j!64))))

(assert (= (and start!130990 res!1053336) b!1536110))

(assert (= (and b!1536110 res!1053335) b!1536105))

(assert (= (and b!1536105 res!1053338) b!1536112))

(assert (= (and b!1536112 res!1053339) b!1536111))

(assert (= (and b!1536111 res!1053333) b!1536106))

(assert (= (and b!1536106 res!1053329) b!1536114))

(assert (= (and b!1536114 res!1053331) b!1536115))

(assert (= (and b!1536115 res!1053332) b!1536107))

(assert (= (and b!1536107 res!1053330) b!1536109))

(assert (= (and b!1536109 res!1053337) b!1536108))

(assert (= (and b!1536108 res!1053334) b!1536113))

(declare-fun m!1418613 () Bool)

(assert (=> b!1536107 m!1418613))

(declare-fun m!1418615 () Bool)

(assert (=> b!1536107 m!1418615))

(declare-fun m!1418617 () Bool)

(assert (=> b!1536105 m!1418617))

(assert (=> b!1536105 m!1418617))

(declare-fun m!1418619 () Bool)

(assert (=> b!1536105 m!1418619))

(assert (=> b!1536115 m!1418615))

(assert (=> b!1536115 m!1418615))

(declare-fun m!1418621 () Bool)

(assert (=> b!1536115 m!1418621))

(declare-fun m!1418623 () Bool)

(assert (=> b!1536109 m!1418623))

(declare-fun m!1418625 () Bool)

(assert (=> b!1536114 m!1418625))

(declare-fun m!1418627 () Bool)

(assert (=> b!1536111 m!1418627))

(declare-fun m!1418629 () Bool)

(assert (=> start!130990 m!1418629))

(declare-fun m!1418631 () Bool)

(assert (=> start!130990 m!1418631))

(assert (=> b!1536112 m!1418615))

(assert (=> b!1536112 m!1418615))

(declare-fun m!1418633 () Bool)

(assert (=> b!1536112 m!1418633))

(declare-fun m!1418635 () Bool)

(assert (=> b!1536113 m!1418635))

(declare-fun m!1418637 () Bool)

(assert (=> b!1536113 m!1418637))

(assert (=> b!1536113 m!1418637))

(declare-fun m!1418639 () Bool)

(assert (=> b!1536113 m!1418639))

(declare-fun m!1418641 () Bool)

(assert (=> b!1536113 m!1418641))

(declare-fun m!1418643 () Bool)

(assert (=> b!1536106 m!1418643))

(assert (=> b!1536108 m!1418615))

(assert (=> b!1536108 m!1418615))

(declare-fun m!1418645 () Bool)

(assert (=> b!1536108 m!1418645))

(push 1)

(assert (not b!1536109))

(assert (not b!1536108))

(assert (not b!1536115))

(assert (not b!1536105))

(assert (not b!1536112))

(assert (not b!1536111))

(assert (not start!130990))

(assert (not b!1536113))

(assert (not b!1536106))

(check-sat)

(pop 1)

(push 1)

(check-sat)

