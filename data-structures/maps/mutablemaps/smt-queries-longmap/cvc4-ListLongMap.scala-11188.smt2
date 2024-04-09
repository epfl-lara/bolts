; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130796 () Bool)

(assert start!130796)

(declare-fun b!1533456 () Bool)

(declare-fun res!1050683 () Bool)

(declare-fun e!854224 () Bool)

(assert (=> b!1533456 (=> (not res!1050683) (not e!854224))))

(declare-datatypes ((array!101821 0))(
  ( (array!101822 (arr!49122 (Array (_ BitVec 32) (_ BitVec 64))) (size!49673 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101821)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533456 (= res!1050683 (and (= (size!49673 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49673 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49673 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533457 () Bool)

(declare-fun res!1050686 () Bool)

(assert (=> b!1533457 (=> (not res!1050686) (not e!854224))))

(declare-datatypes ((List!35776 0))(
  ( (Nil!35773) (Cons!35772 (h!37218 (_ BitVec 64)) (t!50477 List!35776)) )
))
(declare-fun arrayNoDuplicates!0 (array!101821 (_ BitVec 32) List!35776) Bool)

(assert (=> b!1533457 (= res!1050686 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35773))))

(declare-fun b!1533458 () Bool)

(declare-fun res!1050687 () Bool)

(assert (=> b!1533458 (=> (not res!1050687) (not e!854224))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533458 (= res!1050687 (validKeyInArray!0 (select (arr!49122 a!2792) i!951)))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun b!1533459 () Bool)

(assert (=> b!1533459 (= e!854224 (and (= (select (arr!49122 a!2792) index!463) (select (arr!49122 a!2792) j!64)) (bvsge mask!2480 #b00000000000000000000000000000000) (bvslt index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvslt vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480)) (not (= (select (store (arr!49122 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1533460 () Bool)

(declare-fun res!1050684 () Bool)

(assert (=> b!1533460 (=> (not res!1050684) (not e!854224))))

(declare-fun x!510 () (_ BitVec 32))

(assert (=> b!1533460 (= res!1050684 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49673 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49673 a!2792)) (= (select (arr!49122 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533461 () Bool)

(declare-fun res!1050681 () Bool)

(assert (=> b!1533461 (=> (not res!1050681) (not e!854224))))

(declare-datatypes ((SeekEntryResult!13277 0))(
  ( (MissingZero!13277 (index!55502 (_ BitVec 32))) (Found!13277 (index!55503 (_ BitVec 32))) (Intermediate!13277 (undefined!14089 Bool) (index!55504 (_ BitVec 32)) (x!137274 (_ BitVec 32))) (Undefined!13277) (MissingVacant!13277 (index!55505 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101821 (_ BitVec 32)) SeekEntryResult!13277)

(assert (=> b!1533461 (= res!1050681 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49122 a!2792) j!64) a!2792 mask!2480) (Found!13277 j!64)))))

(declare-fun b!1533462 () Bool)

(declare-fun res!1050682 () Bool)

(assert (=> b!1533462 (=> (not res!1050682) (not e!854224))))

(assert (=> b!1533462 (= res!1050682 (validKeyInArray!0 (select (arr!49122 a!2792) j!64)))))

(declare-fun res!1050680 () Bool)

(assert (=> start!130796 (=> (not res!1050680) (not e!854224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130796 (= res!1050680 (validMask!0 mask!2480))))

(assert (=> start!130796 e!854224))

(assert (=> start!130796 true))

(declare-fun array_inv!38067 (array!101821) Bool)

(assert (=> start!130796 (array_inv!38067 a!2792)))

(declare-fun b!1533463 () Bool)

(declare-fun res!1050685 () Bool)

(assert (=> b!1533463 (=> (not res!1050685) (not e!854224))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101821 (_ BitVec 32)) Bool)

(assert (=> b!1533463 (= res!1050685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!130796 res!1050680) b!1533456))

(assert (= (and b!1533456 res!1050683) b!1533458))

(assert (= (and b!1533458 res!1050687) b!1533462))

(assert (= (and b!1533462 res!1050682) b!1533463))

(assert (= (and b!1533463 res!1050685) b!1533457))

(assert (= (and b!1533457 res!1050686) b!1533460))

(assert (= (and b!1533460 res!1050684) b!1533461))

(assert (= (and b!1533461 res!1050681) b!1533459))

(declare-fun m!1416193 () Bool)

(assert (=> b!1533460 m!1416193))

(declare-fun m!1416195 () Bool)

(assert (=> start!130796 m!1416195))

(declare-fun m!1416197 () Bool)

(assert (=> start!130796 m!1416197))

(declare-fun m!1416199 () Bool)

(assert (=> b!1533458 m!1416199))

(assert (=> b!1533458 m!1416199))

(declare-fun m!1416201 () Bool)

(assert (=> b!1533458 m!1416201))

(declare-fun m!1416203 () Bool)

(assert (=> b!1533459 m!1416203))

(declare-fun m!1416205 () Bool)

(assert (=> b!1533459 m!1416205))

(declare-fun m!1416207 () Bool)

(assert (=> b!1533459 m!1416207))

(declare-fun m!1416209 () Bool)

(assert (=> b!1533459 m!1416209))

(declare-fun m!1416211 () Bool)

(assert (=> b!1533463 m!1416211))

(declare-fun m!1416213 () Bool)

(assert (=> b!1533457 m!1416213))

(assert (=> b!1533461 m!1416205))

(assert (=> b!1533461 m!1416205))

(declare-fun m!1416215 () Bool)

(assert (=> b!1533461 m!1416215))

(assert (=> b!1533462 m!1416205))

(assert (=> b!1533462 m!1416205))

(declare-fun m!1416217 () Bool)

(assert (=> b!1533462 m!1416217))

(push 1)

(assert (not b!1533462))

(assert (not b!1533463))

(assert (not start!130796))

(assert (not b!1533461))

(assert (not b!1533458))

(assert (not b!1533457))

(check-sat)

(pop 1)

(push 1)

(check-sat)

