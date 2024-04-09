; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130802 () Bool)

(assert start!130802)

(declare-datatypes ((array!101827 0))(
  ( (array!101828 (arr!49125 (Array (_ BitVec 32) (_ BitVec 64))) (size!49676 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101827)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun b!1533536 () Bool)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun e!854242 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533536 (= e!854242 (not (validKeyInArray!0 (select (store (arr!49125 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64))))))

(declare-fun b!1533537 () Bool)

(declare-fun res!1050761 () Bool)

(assert (=> b!1533537 (=> (not res!1050761) (not e!854242))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13280 0))(
  ( (MissingZero!13280 (index!55514 (_ BitVec 32))) (Found!13280 (index!55515 (_ BitVec 32))) (Intermediate!13280 (undefined!14092 Bool) (index!55516 (_ BitVec 32)) (x!137285 (_ BitVec 32))) (Undefined!13280) (MissingVacant!13280 (index!55517 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101827 (_ BitVec 32)) SeekEntryResult!13280)

(assert (=> b!1533537 (= res!1050761 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49125 a!2792) j!64) a!2792 mask!2480) (Found!13280 j!64)))))

(declare-fun b!1533538 () Bool)

(declare-fun res!1050765 () Bool)

(assert (=> b!1533538 (=> (not res!1050765) (not e!854242))))

(declare-datatypes ((List!35779 0))(
  ( (Nil!35776) (Cons!35775 (h!37221 (_ BitVec 64)) (t!50480 List!35779)) )
))
(declare-fun arrayNoDuplicates!0 (array!101827 (_ BitVec 32) List!35779) Bool)

(assert (=> b!1533538 (= res!1050765 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35776))))

(declare-fun b!1533539 () Bool)

(declare-fun res!1050762 () Bool)

(assert (=> b!1533539 (=> (not res!1050762) (not e!854242))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101827 (_ BitVec 32)) Bool)

(assert (=> b!1533539 (= res!1050762 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1050763 () Bool)

(assert (=> start!130802 (=> (not res!1050763) (not e!854242))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130802 (= res!1050763 (validMask!0 mask!2480))))

(assert (=> start!130802 e!854242))

(assert (=> start!130802 true))

(declare-fun array_inv!38070 (array!101827) Bool)

(assert (=> start!130802 (array_inv!38070 a!2792)))

(declare-fun b!1533540 () Bool)

(declare-fun res!1050768 () Bool)

(assert (=> b!1533540 (=> (not res!1050768) (not e!854242))))

(assert (=> b!1533540 (= res!1050768 (and (= (size!49676 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49676 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49676 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533541 () Bool)

(declare-fun res!1050766 () Bool)

(assert (=> b!1533541 (=> (not res!1050766) (not e!854242))))

(assert (=> b!1533541 (= res!1050766 (validKeyInArray!0 (select (arr!49125 a!2792) j!64)))))

(declare-fun b!1533542 () Bool)

(declare-fun res!1050767 () Bool)

(assert (=> b!1533542 (=> (not res!1050767) (not e!854242))))

(assert (=> b!1533542 (= res!1050767 (and (= (select (arr!49125 a!2792) index!463) (select (arr!49125 a!2792) j!64)) (bvsge mask!2480 #b00000000000000000000000000000000) (bvslt index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvslt vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480)) (= (select (store (arr!49125 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533543 () Bool)

(declare-fun res!1050760 () Bool)

(assert (=> b!1533543 (=> (not res!1050760) (not e!854242))))

(assert (=> b!1533543 (= res!1050760 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49676 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49676 a!2792)) (= (select (arr!49125 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533544 () Bool)

(declare-fun res!1050764 () Bool)

(assert (=> b!1533544 (=> (not res!1050764) (not e!854242))))

(assert (=> b!1533544 (= res!1050764 (validKeyInArray!0 (select (arr!49125 a!2792) i!951)))))

(assert (= (and start!130802 res!1050763) b!1533540))

(assert (= (and b!1533540 res!1050768) b!1533544))

(assert (= (and b!1533544 res!1050764) b!1533541))

(assert (= (and b!1533541 res!1050766) b!1533539))

(assert (= (and b!1533539 res!1050762) b!1533538))

(assert (= (and b!1533538 res!1050765) b!1533543))

(assert (= (and b!1533543 res!1050760) b!1533537))

(assert (= (and b!1533537 res!1050761) b!1533542))

(assert (= (and b!1533542 res!1050767) b!1533536))

(declare-fun m!1416279 () Bool)

(assert (=> b!1533539 m!1416279))

(declare-fun m!1416281 () Bool)

(assert (=> b!1533543 m!1416281))

(declare-fun m!1416283 () Bool)

(assert (=> b!1533538 m!1416283))

(declare-fun m!1416285 () Bool)

(assert (=> b!1533544 m!1416285))

(assert (=> b!1533544 m!1416285))

(declare-fun m!1416287 () Bool)

(assert (=> b!1533544 m!1416287))

(declare-fun m!1416289 () Bool)

(assert (=> b!1533537 m!1416289))

(assert (=> b!1533537 m!1416289))

(declare-fun m!1416291 () Bool)

(assert (=> b!1533537 m!1416291))

(declare-fun m!1416293 () Bool)

(assert (=> start!130802 m!1416293))

(declare-fun m!1416295 () Bool)

(assert (=> start!130802 m!1416295))

(declare-fun m!1416297 () Bool)

(assert (=> b!1533542 m!1416297))

(assert (=> b!1533542 m!1416289))

(declare-fun m!1416299 () Bool)

(assert (=> b!1533542 m!1416299))

(declare-fun m!1416301 () Bool)

(assert (=> b!1533542 m!1416301))

(assert (=> b!1533541 m!1416289))

(assert (=> b!1533541 m!1416289))

(declare-fun m!1416303 () Bool)

(assert (=> b!1533541 m!1416303))

(assert (=> b!1533536 m!1416299))

(declare-fun m!1416305 () Bool)

(assert (=> b!1533536 m!1416305))

(assert (=> b!1533536 m!1416305))

(declare-fun m!1416307 () Bool)

(assert (=> b!1533536 m!1416307))

(push 1)

(assert (not b!1533539))

(assert (not b!1533536))

(assert (not start!130802))

(assert (not b!1533541))

(assert (not b!1533537))

(assert (not b!1533544))

(assert (not b!1533538))

(check-sat)

