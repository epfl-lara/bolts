; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130762 () Bool)

(assert start!130762)

(declare-fun b!1533066 () Bool)

(declare-fun res!1050291 () Bool)

(declare-fun e!854123 () Bool)

(assert (=> b!1533066 (=> (not res!1050291) (not e!854123))))

(declare-datatypes ((array!101787 0))(
  ( (array!101788 (arr!49105 (Array (_ BitVec 32) (_ BitVec 64))) (size!49656 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101787)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533066 (= res!1050291 (validKeyInArray!0 (select (arr!49105 a!2792) i!951)))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun b!1533067 () Bool)

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(assert (=> b!1533067 (= e!854123 (and (= (select (arr!49105 a!2792) index!463) (select (arr!49105 a!2792) j!64)) (bvslt mask!2480 #b00000000000000000000000000000000)))))

(declare-fun b!1533068 () Bool)

(declare-fun res!1050292 () Bool)

(assert (=> b!1533068 (=> (not res!1050292) (not e!854123))))

(assert (=> b!1533068 (= res!1050292 (and (= (size!49656 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49656 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49656 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533070 () Bool)

(declare-fun res!1050297 () Bool)

(assert (=> b!1533070 (=> (not res!1050297) (not e!854123))))

(declare-datatypes ((List!35759 0))(
  ( (Nil!35756) (Cons!35755 (h!37201 (_ BitVec 64)) (t!50460 List!35759)) )
))
(declare-fun arrayNoDuplicates!0 (array!101787 (_ BitVec 32) List!35759) Bool)

(assert (=> b!1533070 (= res!1050297 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35756))))

(declare-fun b!1533071 () Bool)

(declare-fun res!1050295 () Bool)

(assert (=> b!1533071 (=> (not res!1050295) (not e!854123))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1533071 (= res!1050295 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49656 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49656 a!2792)) (= (select (arr!49105 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533072 () Bool)

(declare-fun res!1050293 () Bool)

(assert (=> b!1533072 (=> (not res!1050293) (not e!854123))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101787 (_ BitVec 32)) Bool)

(assert (=> b!1533072 (= res!1050293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533073 () Bool)

(declare-fun res!1050290 () Bool)

(assert (=> b!1533073 (=> (not res!1050290) (not e!854123))))

(assert (=> b!1533073 (= res!1050290 (validKeyInArray!0 (select (arr!49105 a!2792) j!64)))))

(declare-fun res!1050294 () Bool)

(assert (=> start!130762 (=> (not res!1050294) (not e!854123))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130762 (= res!1050294 (validMask!0 mask!2480))))

(assert (=> start!130762 e!854123))

(assert (=> start!130762 true))

(declare-fun array_inv!38050 (array!101787) Bool)

(assert (=> start!130762 (array_inv!38050 a!2792)))

(declare-fun b!1533069 () Bool)

(declare-fun res!1050296 () Bool)

(assert (=> b!1533069 (=> (not res!1050296) (not e!854123))))

(declare-datatypes ((SeekEntryResult!13260 0))(
  ( (MissingZero!13260 (index!55434 (_ BitVec 32))) (Found!13260 (index!55435 (_ BitVec 32))) (Intermediate!13260 (undefined!14072 Bool) (index!55436 (_ BitVec 32)) (x!137217 (_ BitVec 32))) (Undefined!13260) (MissingVacant!13260 (index!55437 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101787 (_ BitVec 32)) SeekEntryResult!13260)

(assert (=> b!1533069 (= res!1050296 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49105 a!2792) j!64) a!2792 mask!2480) (Found!13260 j!64)))))

(assert (= (and start!130762 res!1050294) b!1533068))

(assert (= (and b!1533068 res!1050292) b!1533066))

(assert (= (and b!1533066 res!1050291) b!1533073))

(assert (= (and b!1533073 res!1050290) b!1533072))

(assert (= (and b!1533072 res!1050293) b!1533070))

(assert (= (and b!1533070 res!1050297) b!1533071))

(assert (= (and b!1533071 res!1050295) b!1533069))

(assert (= (and b!1533069 res!1050296) b!1533067))

(declare-fun m!1415823 () Bool)

(assert (=> b!1533071 m!1415823))

(declare-fun m!1415825 () Bool)

(assert (=> b!1533072 m!1415825))

(declare-fun m!1415827 () Bool)

(assert (=> start!130762 m!1415827))

(declare-fun m!1415829 () Bool)

(assert (=> start!130762 m!1415829))

(declare-fun m!1415831 () Bool)

(assert (=> b!1533070 m!1415831))

(declare-fun m!1415833 () Bool)

(assert (=> b!1533067 m!1415833))

(declare-fun m!1415835 () Bool)

(assert (=> b!1533067 m!1415835))

(assert (=> b!1533073 m!1415835))

(assert (=> b!1533073 m!1415835))

(declare-fun m!1415837 () Bool)

(assert (=> b!1533073 m!1415837))

(assert (=> b!1533069 m!1415835))

(assert (=> b!1533069 m!1415835))

(declare-fun m!1415839 () Bool)

(assert (=> b!1533069 m!1415839))

(declare-fun m!1415841 () Bool)

(assert (=> b!1533066 m!1415841))

(assert (=> b!1533066 m!1415841))

(declare-fun m!1415843 () Bool)

(assert (=> b!1533066 m!1415843))

(push 1)

(assert (not b!1533073))

(assert (not b!1533072))

(assert (not b!1533070))

(assert (not start!130762))

