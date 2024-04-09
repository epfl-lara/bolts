; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131192 () Bool)

(assert start!131192)

(declare-fun b!1538531 () Bool)

(declare-fun res!1055655 () Bool)

(declare-fun e!855998 () Bool)

(assert (=> b!1538531 (=> (not res!1055655) (not e!855998))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102184 0))(
  ( (array!102185 (arr!49302 (Array (_ BitVec 32) (_ BitVec 64))) (size!49853 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102184)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1538531 (= res!1055655 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49853 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49853 a!2792)) (= (select (arr!49302 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538532 () Bool)

(declare-fun res!1055648 () Bool)

(assert (=> b!1538532 (=> (not res!1055648) (not e!855998))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538532 (= res!1055648 (validKeyInArray!0 (select (arr!49302 a!2792) j!64)))))

(declare-fun b!1538533 () Bool)

(declare-fun res!1055654 () Bool)

(assert (=> b!1538533 (=> (not res!1055654) (not e!855998))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13451 0))(
  ( (MissingZero!13451 (index!56198 (_ BitVec 32))) (Found!13451 (index!56199 (_ BitVec 32))) (Intermediate!13451 (undefined!14263 Bool) (index!56200 (_ BitVec 32)) (x!137931 (_ BitVec 32))) (Undefined!13451) (MissingVacant!13451 (index!56201 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102184 (_ BitVec 32)) SeekEntryResult!13451)

(assert (=> b!1538533 (= res!1055654 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49302 a!2792) j!64) a!2792 mask!2480) (Found!13451 j!64)))))

(declare-fun b!1538534 () Bool)

(declare-fun res!1055653 () Bool)

(assert (=> b!1538534 (=> (not res!1055653) (not e!855998))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538534 (= res!1055653 (validKeyInArray!0 (select (arr!49302 a!2792) i!951)))))

(declare-fun b!1538535 () Bool)

(assert (=> b!1538535 (= e!855998 false)))

(declare-fun lt!664846 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538535 (= lt!664846 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538536 () Bool)

(declare-fun res!1055650 () Bool)

(assert (=> b!1538536 (=> (not res!1055650) (not e!855998))))

(assert (=> b!1538536 (= res!1055650 (not (= (select (arr!49302 a!2792) index!463) (select (arr!49302 a!2792) j!64))))))

(declare-fun b!1538537 () Bool)

(declare-fun res!1055647 () Bool)

(assert (=> b!1538537 (=> (not res!1055647) (not e!855998))))

(declare-datatypes ((List!35956 0))(
  ( (Nil!35953) (Cons!35952 (h!37398 (_ BitVec 64)) (t!50657 List!35956)) )
))
(declare-fun arrayNoDuplicates!0 (array!102184 (_ BitVec 32) List!35956) Bool)

(assert (=> b!1538537 (= res!1055647 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35953))))

(declare-fun b!1538538 () Bool)

(declare-fun res!1055651 () Bool)

(assert (=> b!1538538 (=> (not res!1055651) (not e!855998))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102184 (_ BitVec 32)) Bool)

(assert (=> b!1538538 (= res!1055651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1055652 () Bool)

(assert (=> start!131192 (=> (not res!1055652) (not e!855998))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131192 (= res!1055652 (validMask!0 mask!2480))))

(assert (=> start!131192 e!855998))

(assert (=> start!131192 true))

(declare-fun array_inv!38247 (array!102184) Bool)

(assert (=> start!131192 (array_inv!38247 a!2792)))

(declare-fun b!1538539 () Bool)

(declare-fun res!1055649 () Bool)

(assert (=> b!1538539 (=> (not res!1055649) (not e!855998))))

(assert (=> b!1538539 (= res!1055649 (and (= (size!49853 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49853 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49853 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!131192 res!1055652) b!1538539))

(assert (= (and b!1538539 res!1055649) b!1538534))

(assert (= (and b!1538534 res!1055653) b!1538532))

(assert (= (and b!1538532 res!1055648) b!1538538))

(assert (= (and b!1538538 res!1055651) b!1538537))

(assert (= (and b!1538537 res!1055647) b!1538531))

(assert (= (and b!1538531 res!1055655) b!1538533))

(assert (= (and b!1538533 res!1055654) b!1538536))

(assert (= (and b!1538536 res!1055650) b!1538535))

(declare-fun m!1420989 () Bool)

(assert (=> b!1538536 m!1420989))

(declare-fun m!1420991 () Bool)

(assert (=> b!1538536 m!1420991))

(declare-fun m!1420993 () Bool)

(assert (=> start!131192 m!1420993))

(declare-fun m!1420995 () Bool)

(assert (=> start!131192 m!1420995))

(assert (=> b!1538533 m!1420991))

(assert (=> b!1538533 m!1420991))

(declare-fun m!1420997 () Bool)

(assert (=> b!1538533 m!1420997))

(declare-fun m!1420999 () Bool)

(assert (=> b!1538534 m!1420999))

(assert (=> b!1538534 m!1420999))

(declare-fun m!1421001 () Bool)

(assert (=> b!1538534 m!1421001))

(declare-fun m!1421003 () Bool)

(assert (=> b!1538531 m!1421003))

(declare-fun m!1421005 () Bool)

(assert (=> b!1538535 m!1421005))

(declare-fun m!1421007 () Bool)

(assert (=> b!1538537 m!1421007))

(declare-fun m!1421009 () Bool)

(assert (=> b!1538538 m!1421009))

(assert (=> b!1538532 m!1420991))

(assert (=> b!1538532 m!1420991))

(declare-fun m!1421011 () Bool)

(assert (=> b!1538532 m!1421011))

(push 1)

(assert (not start!131192))

(assert (not b!1538537))

(assert (not b!1538534))

(assert (not b!1538532))

(assert (not b!1538538))

(assert (not b!1538533))

(assert (not b!1538535))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

