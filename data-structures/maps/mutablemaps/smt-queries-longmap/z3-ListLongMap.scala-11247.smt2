; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131184 () Bool)

(assert start!131184)

(declare-fun b!1538423 () Bool)

(declare-fun e!855973 () Bool)

(assert (=> b!1538423 (= e!855973 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun lt!664834 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538423 (= lt!664834 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538424 () Bool)

(declare-fun res!1055543 () Bool)

(assert (=> b!1538424 (=> (not res!1055543) (not e!855973))))

(declare-datatypes ((array!102176 0))(
  ( (array!102177 (arr!49298 (Array (_ BitVec 32) (_ BitVec 64))) (size!49849 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102176)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13447 0))(
  ( (MissingZero!13447 (index!56182 (_ BitVec 32))) (Found!13447 (index!56183 (_ BitVec 32))) (Intermediate!13447 (undefined!14259 Bool) (index!56184 (_ BitVec 32)) (x!137919 (_ BitVec 32))) (Undefined!13447) (MissingVacant!13447 (index!56185 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102176 (_ BitVec 32)) SeekEntryResult!13447)

(assert (=> b!1538424 (= res!1055543 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49298 a!2792) j!64) a!2792 mask!2480) (Found!13447 j!64)))))

(declare-fun b!1538425 () Bool)

(declare-fun res!1055547 () Bool)

(assert (=> b!1538425 (=> (not res!1055547) (not e!855973))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538425 (= res!1055547 (and (= (size!49849 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49849 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49849 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538426 () Bool)

(declare-fun res!1055539 () Bool)

(assert (=> b!1538426 (=> (not res!1055539) (not e!855973))))

(assert (=> b!1538426 (= res!1055539 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49849 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49849 a!2792)) (= (select (arr!49298 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1055542 () Bool)

(assert (=> start!131184 (=> (not res!1055542) (not e!855973))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131184 (= res!1055542 (validMask!0 mask!2480))))

(assert (=> start!131184 e!855973))

(assert (=> start!131184 true))

(declare-fun array_inv!38243 (array!102176) Bool)

(assert (=> start!131184 (array_inv!38243 a!2792)))

(declare-fun b!1538427 () Bool)

(declare-fun res!1055546 () Bool)

(assert (=> b!1538427 (=> (not res!1055546) (not e!855973))))

(assert (=> b!1538427 (= res!1055546 (not (= (select (arr!49298 a!2792) index!463) (select (arr!49298 a!2792) j!64))))))

(declare-fun b!1538428 () Bool)

(declare-fun res!1055541 () Bool)

(assert (=> b!1538428 (=> (not res!1055541) (not e!855973))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538428 (= res!1055541 (validKeyInArray!0 (select (arr!49298 a!2792) i!951)))))

(declare-fun b!1538429 () Bool)

(declare-fun res!1055540 () Bool)

(assert (=> b!1538429 (=> (not res!1055540) (not e!855973))))

(declare-datatypes ((List!35952 0))(
  ( (Nil!35949) (Cons!35948 (h!37394 (_ BitVec 64)) (t!50653 List!35952)) )
))
(declare-fun arrayNoDuplicates!0 (array!102176 (_ BitVec 32) List!35952) Bool)

(assert (=> b!1538429 (= res!1055540 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35949))))

(declare-fun b!1538430 () Bool)

(declare-fun res!1055545 () Bool)

(assert (=> b!1538430 (=> (not res!1055545) (not e!855973))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102176 (_ BitVec 32)) Bool)

(assert (=> b!1538430 (= res!1055545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538431 () Bool)

(declare-fun res!1055544 () Bool)

(assert (=> b!1538431 (=> (not res!1055544) (not e!855973))))

(assert (=> b!1538431 (= res!1055544 (validKeyInArray!0 (select (arr!49298 a!2792) j!64)))))

(assert (= (and start!131184 res!1055542) b!1538425))

(assert (= (and b!1538425 res!1055547) b!1538428))

(assert (= (and b!1538428 res!1055541) b!1538431))

(assert (= (and b!1538431 res!1055544) b!1538430))

(assert (= (and b!1538430 res!1055545) b!1538429))

(assert (= (and b!1538429 res!1055540) b!1538426))

(assert (= (and b!1538426 res!1055539) b!1538424))

(assert (= (and b!1538424 res!1055543) b!1538427))

(assert (= (and b!1538427 res!1055546) b!1538423))

(declare-fun m!1420893 () Bool)

(assert (=> start!131184 m!1420893))

(declare-fun m!1420895 () Bool)

(assert (=> start!131184 m!1420895))

(declare-fun m!1420897 () Bool)

(assert (=> b!1538427 m!1420897))

(declare-fun m!1420899 () Bool)

(assert (=> b!1538427 m!1420899))

(declare-fun m!1420901 () Bool)

(assert (=> b!1538429 m!1420901))

(declare-fun m!1420903 () Bool)

(assert (=> b!1538430 m!1420903))

(assert (=> b!1538431 m!1420899))

(assert (=> b!1538431 m!1420899))

(declare-fun m!1420905 () Bool)

(assert (=> b!1538431 m!1420905))

(declare-fun m!1420907 () Bool)

(assert (=> b!1538423 m!1420907))

(declare-fun m!1420909 () Bool)

(assert (=> b!1538428 m!1420909))

(assert (=> b!1538428 m!1420909))

(declare-fun m!1420911 () Bool)

(assert (=> b!1538428 m!1420911))

(declare-fun m!1420913 () Bool)

(assert (=> b!1538426 m!1420913))

(assert (=> b!1538424 m!1420899))

(assert (=> b!1538424 m!1420899))

(declare-fun m!1420915 () Bool)

(assert (=> b!1538424 m!1420915))

(check-sat (not b!1538428) (not b!1538430) (not b!1538431) (not b!1538429) (not b!1538424) (not start!131184) (not b!1538423))
