; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130784 () Bool)

(assert start!130784)

(declare-fun b!1533313 () Bool)

(declare-fun e!854189 () Bool)

(assert (=> b!1533313 (= e!854189 false)))

(declare-datatypes ((array!101809 0))(
  ( (array!101810 (arr!49116 (Array (_ BitVec 32) (_ BitVec 64))) (size!49667 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101809)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13271 0))(
  ( (MissingZero!13271 (index!55478 (_ BitVec 32))) (Found!13271 (index!55479 (_ BitVec 32))) (Intermediate!13271 (undefined!14083 Bool) (index!55480 (_ BitVec 32)) (x!137252 (_ BitVec 32))) (Undefined!13271) (MissingVacant!13271 (index!55481 (_ BitVec 32))) )
))
(declare-fun lt!663724 () SeekEntryResult!13271)

(declare-fun x!510 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101809 (_ BitVec 32)) SeekEntryResult!13271)

(assert (=> b!1533313 (= lt!663724 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49116 a!2792) j!64) a!2792 mask!2480))))

(declare-fun res!1050541 () Bool)

(assert (=> start!130784 (=> (not res!1050541) (not e!854189))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130784 (= res!1050541 (validMask!0 mask!2480))))

(assert (=> start!130784 e!854189))

(assert (=> start!130784 true))

(declare-fun array_inv!38061 (array!101809) Bool)

(assert (=> start!130784 (array_inv!38061 a!2792)))

(declare-fun b!1533314 () Bool)

(declare-fun res!1050539 () Bool)

(assert (=> b!1533314 (=> (not res!1050539) (not e!854189))))

(assert (=> b!1533314 (= res!1050539 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49667 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49667 a!2792)) (= (select (arr!49116 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533315 () Bool)

(declare-fun res!1050542 () Bool)

(assert (=> b!1533315 (=> (not res!1050542) (not e!854189))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533315 (= res!1050542 (validKeyInArray!0 (select (arr!49116 a!2792) j!64)))))

(declare-fun b!1533316 () Bool)

(declare-fun res!1050543 () Bool)

(assert (=> b!1533316 (=> (not res!1050543) (not e!854189))))

(declare-datatypes ((List!35770 0))(
  ( (Nil!35767) (Cons!35766 (h!37212 (_ BitVec 64)) (t!50471 List!35770)) )
))
(declare-fun arrayNoDuplicates!0 (array!101809 (_ BitVec 32) List!35770) Bool)

(assert (=> b!1533316 (= res!1050543 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35767))))

(declare-fun b!1533317 () Bool)

(declare-fun res!1050540 () Bool)

(assert (=> b!1533317 (=> (not res!1050540) (not e!854189))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533317 (= res!1050540 (and (= (size!49667 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49667 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49667 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533318 () Bool)

(declare-fun res!1050538 () Bool)

(assert (=> b!1533318 (=> (not res!1050538) (not e!854189))))

(assert (=> b!1533318 (= res!1050538 (validKeyInArray!0 (select (arr!49116 a!2792) i!951)))))

(declare-fun b!1533319 () Bool)

(declare-fun res!1050537 () Bool)

(assert (=> b!1533319 (=> (not res!1050537) (not e!854189))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101809 (_ BitVec 32)) Bool)

(assert (=> b!1533319 (= res!1050537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!130784 res!1050541) b!1533317))

(assert (= (and b!1533317 res!1050540) b!1533318))

(assert (= (and b!1533318 res!1050538) b!1533315))

(assert (= (and b!1533315 res!1050542) b!1533319))

(assert (= (and b!1533319 res!1050537) b!1533316))

(assert (= (and b!1533316 res!1050543) b!1533314))

(assert (= (and b!1533314 res!1050539) b!1533313))

(declare-fun m!1416055 () Bool)

(assert (=> start!130784 m!1416055))

(declare-fun m!1416057 () Bool)

(assert (=> start!130784 m!1416057))

(declare-fun m!1416059 () Bool)

(assert (=> b!1533316 m!1416059))

(declare-fun m!1416061 () Bool)

(assert (=> b!1533319 m!1416061))

(declare-fun m!1416063 () Bool)

(assert (=> b!1533315 m!1416063))

(assert (=> b!1533315 m!1416063))

(declare-fun m!1416065 () Bool)

(assert (=> b!1533315 m!1416065))

(declare-fun m!1416067 () Bool)

(assert (=> b!1533318 m!1416067))

(assert (=> b!1533318 m!1416067))

(declare-fun m!1416069 () Bool)

(assert (=> b!1533318 m!1416069))

(assert (=> b!1533313 m!1416063))

(assert (=> b!1533313 m!1416063))

(declare-fun m!1416071 () Bool)

(assert (=> b!1533313 m!1416071))

(declare-fun m!1416073 () Bool)

(assert (=> b!1533314 m!1416073))

(push 1)

(assert (not b!1533319))

(assert (not start!130784))

(assert (not b!1533313))

(assert (not b!1533318))

(assert (not b!1533315))

(assert (not b!1533316))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

