; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130810 () Bool)

(assert start!130810)

(declare-fun b!1533624 () Bool)

(declare-fun res!1050849 () Bool)

(declare-fun e!854266 () Bool)

(assert (=> b!1533624 (=> (not res!1050849) (not e!854266))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((array!101835 0))(
  ( (array!101836 (arr!49129 (Array (_ BitVec 32) (_ BitVec 64))) (size!49680 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101835)

(declare-datatypes ((SeekEntryResult!13284 0))(
  ( (MissingZero!13284 (index!55530 (_ BitVec 32))) (Found!13284 (index!55531 (_ BitVec 32))) (Intermediate!13284 (undefined!14096 Bool) (index!55532 (_ BitVec 32)) (x!137305 (_ BitVec 32))) (Undefined!13284) (MissingVacant!13284 (index!55533 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101835 (_ BitVec 32)) SeekEntryResult!13284)

(assert (=> b!1533624 (= res!1050849 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49129 a!2792) j!64) a!2792 mask!2480) (Found!13284 j!64)))))

(declare-fun b!1533625 () Bool)

(declare-fun res!1050853 () Bool)

(assert (=> b!1533625 (=> (not res!1050853) (not e!854266))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533625 (= res!1050853 (and (= (size!49680 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49680 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49680 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533626 () Bool)

(declare-fun res!1050855 () Bool)

(assert (=> b!1533626 (=> (not res!1050855) (not e!854266))))

(declare-datatypes ((List!35783 0))(
  ( (Nil!35780) (Cons!35779 (h!37225 (_ BitVec 64)) (t!50484 List!35783)) )
))
(declare-fun arrayNoDuplicates!0 (array!101835 (_ BitVec 32) List!35783) Bool)

(assert (=> b!1533626 (= res!1050855 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35780))))

(declare-fun res!1050850 () Bool)

(assert (=> start!130810 (=> (not res!1050850) (not e!854266))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130810 (= res!1050850 (validMask!0 mask!2480))))

(assert (=> start!130810 e!854266))

(assert (=> start!130810 true))

(declare-fun array_inv!38074 (array!101835) Bool)

(assert (=> start!130810 (array_inv!38074 a!2792)))

(declare-fun b!1533627 () Bool)

(assert (=> b!1533627 (= e!854266 (and (= (select (arr!49129 a!2792) index!463) (select (arr!49129 a!2792) j!64)) (bvslt mask!2480 #b00000000000000000000000000000000)))))

(declare-fun b!1533628 () Bool)

(declare-fun res!1050851 () Bool)

(assert (=> b!1533628 (=> (not res!1050851) (not e!854266))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533628 (= res!1050851 (validKeyInArray!0 (select (arr!49129 a!2792) i!951)))))

(declare-fun b!1533629 () Bool)

(declare-fun res!1050854 () Bool)

(assert (=> b!1533629 (=> (not res!1050854) (not e!854266))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101835 (_ BitVec 32)) Bool)

(assert (=> b!1533629 (= res!1050854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533630 () Bool)

(declare-fun res!1050848 () Bool)

(assert (=> b!1533630 (=> (not res!1050848) (not e!854266))))

(assert (=> b!1533630 (= res!1050848 (validKeyInArray!0 (select (arr!49129 a!2792) j!64)))))

(declare-fun b!1533631 () Bool)

(declare-fun res!1050852 () Bool)

(assert (=> b!1533631 (=> (not res!1050852) (not e!854266))))

(assert (=> b!1533631 (= res!1050852 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49680 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49680 a!2792)) (= (select (arr!49129 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!130810 res!1050850) b!1533625))

(assert (= (and b!1533625 res!1050853) b!1533628))

(assert (= (and b!1533628 res!1050851) b!1533630))

(assert (= (and b!1533630 res!1050848) b!1533629))

(assert (= (and b!1533629 res!1050854) b!1533626))

(assert (= (and b!1533626 res!1050855) b!1533631))

(assert (= (and b!1533631 res!1050852) b!1533624))

(assert (= (and b!1533624 res!1050849) b!1533627))

(declare-fun m!1416369 () Bool)

(assert (=> b!1533626 m!1416369))

(declare-fun m!1416371 () Bool)

(assert (=> b!1533624 m!1416371))

(assert (=> b!1533624 m!1416371))

(declare-fun m!1416373 () Bool)

(assert (=> b!1533624 m!1416373))

(declare-fun m!1416375 () Bool)

(assert (=> b!1533627 m!1416375))

(assert (=> b!1533627 m!1416371))

(declare-fun m!1416377 () Bool)

(assert (=> start!130810 m!1416377))

(declare-fun m!1416379 () Bool)

(assert (=> start!130810 m!1416379))

(declare-fun m!1416381 () Bool)

(assert (=> b!1533628 m!1416381))

(assert (=> b!1533628 m!1416381))

(declare-fun m!1416383 () Bool)

(assert (=> b!1533628 m!1416383))

(declare-fun m!1416385 () Bool)

(assert (=> b!1533631 m!1416385))

(assert (=> b!1533630 m!1416371))

(assert (=> b!1533630 m!1416371))

(declare-fun m!1416387 () Bool)

(assert (=> b!1533630 m!1416387))

(declare-fun m!1416389 () Bool)

(assert (=> b!1533629 m!1416389))

(push 1)

(assert (not start!130810))

(assert (not b!1533630))

(assert (not b!1533624))

(assert (not b!1533629))

