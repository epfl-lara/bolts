; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131002 () Bool)

(assert start!131002)

(declare-fun b!1536303 () Bool)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun e!855129 () Bool)

(assert (=> b!1536303 (= e!855129 (not (or (bvslt mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvslt vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480)))))))

(declare-datatypes ((SeekEntryResult!13380 0))(
  ( (MissingZero!13380 (index!55914 (_ BitVec 32))) (Found!13380 (index!55915 (_ BitVec 32))) (Intermediate!13380 (undefined!14192 Bool) (index!55916 (_ BitVec 32)) (x!137657 (_ BitVec 32))) (Undefined!13380) (MissingVacant!13380 (index!55917 (_ BitVec 32))) )
))
(declare-fun lt!664264 () SeekEntryResult!13380)

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102027 0))(
  ( (array!102028 (arr!49225 (Array (_ BitVec 32) (_ BitVec 64))) (size!49776 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102027)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun lt!664265 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102027 (_ BitVec 32)) SeekEntryResult!13380)

(assert (=> b!1536303 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664265 vacantIndex!5 (select (store (arr!49225 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102028 (store (arr!49225 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49776 a!2792)) mask!2480) lt!664264)))

(declare-datatypes ((Unit!51284 0))(
  ( (Unit!51285) )
))
(declare-fun lt!664267 () Unit!51284)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102027 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51284)

(assert (=> b!1536303 (= lt!664267 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664265 vacantIndex!5 mask!2480))))

(declare-fun b!1536304 () Bool)

(declare-fun e!855131 () Bool)

(declare-fun e!855127 () Bool)

(assert (=> b!1536304 (= e!855131 e!855127)))

(declare-fun res!1053532 () Bool)

(assert (=> b!1536304 (=> (not res!1053532) (not e!855127))))

(assert (=> b!1536304 (= res!1053532 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664265 #b00000000000000000000000000000000) (bvslt lt!664265 (size!49776 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536304 (= lt!664265 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536306 () Bool)

(declare-fun res!1053531 () Bool)

(declare-fun e!855128 () Bool)

(assert (=> b!1536306 (=> (not res!1053531) (not e!855128))))

(declare-datatypes ((List!35879 0))(
  ( (Nil!35876) (Cons!35875 (h!37321 (_ BitVec 64)) (t!50580 List!35879)) )
))
(declare-fun arrayNoDuplicates!0 (array!102027 (_ BitVec 32) List!35879) Bool)

(assert (=> b!1536306 (= res!1053531 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35876))))

(declare-fun b!1536307 () Bool)

(declare-fun res!1053534 () Bool)

(assert (=> b!1536307 (=> (not res!1053534) (not e!855131))))

(assert (=> b!1536307 (= res!1053534 (not (= (select (arr!49225 a!2792) index!463) (select (arr!49225 a!2792) j!64))))))

(declare-fun b!1536308 () Bool)

(declare-fun res!1053535 () Bool)

(assert (=> b!1536308 (=> (not res!1053535) (not e!855128))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102027 (_ BitVec 32)) Bool)

(assert (=> b!1536308 (= res!1053535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536309 () Bool)

(declare-fun res!1053527 () Bool)

(assert (=> b!1536309 (=> (not res!1053527) (not e!855128))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536309 (= res!1053527 (validKeyInArray!0 (select (arr!49225 a!2792) j!64)))))

(declare-fun b!1536305 () Bool)

(declare-fun res!1053533 () Bool)

(assert (=> b!1536305 (=> (not res!1053533) (not e!855128))))

(assert (=> b!1536305 (= res!1053533 (and (= (size!49776 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49776 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49776 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1053536 () Bool)

(assert (=> start!131002 (=> (not res!1053536) (not e!855128))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131002 (= res!1053536 (validMask!0 mask!2480))))

(assert (=> start!131002 e!855128))

(assert (=> start!131002 true))

(declare-fun array_inv!38170 (array!102027) Bool)

(assert (=> start!131002 (array_inv!38170 a!2792)))

(declare-fun b!1536310 () Bool)

(assert (=> b!1536310 (= e!855127 e!855129)))

(declare-fun res!1053537 () Bool)

(assert (=> b!1536310 (=> (not res!1053537) (not e!855129))))

(declare-fun lt!664266 () SeekEntryResult!13380)

(assert (=> b!1536310 (= res!1053537 (= lt!664264 lt!664266))))

(assert (=> b!1536310 (= lt!664264 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664265 vacantIndex!5 (select (arr!49225 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536311 () Bool)

(assert (=> b!1536311 (= e!855128 e!855131)))

(declare-fun res!1053528 () Bool)

(assert (=> b!1536311 (=> (not res!1053528) (not e!855131))))

(assert (=> b!1536311 (= res!1053528 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49225 a!2792) j!64) a!2792 mask!2480) lt!664266))))

(assert (=> b!1536311 (= lt!664266 (Found!13380 j!64))))

(declare-fun b!1536312 () Bool)

(declare-fun res!1053530 () Bool)

(assert (=> b!1536312 (=> (not res!1053530) (not e!855128))))

(assert (=> b!1536312 (= res!1053530 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49776 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49776 a!2792)) (= (select (arr!49225 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536313 () Bool)

(declare-fun res!1053529 () Bool)

(assert (=> b!1536313 (=> (not res!1053529) (not e!855128))))

(assert (=> b!1536313 (= res!1053529 (validKeyInArray!0 (select (arr!49225 a!2792) i!951)))))

(assert (= (and start!131002 res!1053536) b!1536305))

(assert (= (and b!1536305 res!1053533) b!1536313))

(assert (= (and b!1536313 res!1053529) b!1536309))

(assert (= (and b!1536309 res!1053527) b!1536308))

(assert (= (and b!1536308 res!1053535) b!1536306))

(assert (= (and b!1536306 res!1053531) b!1536312))

(assert (= (and b!1536312 res!1053530) b!1536311))

(assert (= (and b!1536311 res!1053528) b!1536307))

(assert (= (and b!1536307 res!1053534) b!1536304))

(assert (= (and b!1536304 res!1053532) b!1536310))

(assert (= (and b!1536310 res!1053537) b!1536303))

(declare-fun m!1418817 () Bool)

(assert (=> start!131002 m!1418817))

(declare-fun m!1418819 () Bool)

(assert (=> start!131002 m!1418819))

(declare-fun m!1418821 () Bool)

(assert (=> b!1536311 m!1418821))

(assert (=> b!1536311 m!1418821))

(declare-fun m!1418823 () Bool)

(assert (=> b!1536311 m!1418823))

(declare-fun m!1418825 () Bool)

(assert (=> b!1536306 m!1418825))

(declare-fun m!1418827 () Bool)

(assert (=> b!1536312 m!1418827))

(assert (=> b!1536310 m!1418821))

(assert (=> b!1536310 m!1418821))

(declare-fun m!1418829 () Bool)

(assert (=> b!1536310 m!1418829))

(declare-fun m!1418831 () Bool)

(assert (=> b!1536307 m!1418831))

(assert (=> b!1536307 m!1418821))

(declare-fun m!1418833 () Bool)

(assert (=> b!1536304 m!1418833))

(declare-fun m!1418835 () Bool)

(assert (=> b!1536303 m!1418835))

(declare-fun m!1418837 () Bool)

(assert (=> b!1536303 m!1418837))

(assert (=> b!1536303 m!1418837))

(declare-fun m!1418839 () Bool)

(assert (=> b!1536303 m!1418839))

(declare-fun m!1418841 () Bool)

(assert (=> b!1536303 m!1418841))

(assert (=> b!1536309 m!1418821))

(assert (=> b!1536309 m!1418821))

(declare-fun m!1418843 () Bool)

(assert (=> b!1536309 m!1418843))

(declare-fun m!1418845 () Bool)

(assert (=> b!1536308 m!1418845))

(declare-fun m!1418847 () Bool)

(assert (=> b!1536313 m!1418847))

(assert (=> b!1536313 m!1418847))

(declare-fun m!1418849 () Bool)

(assert (=> b!1536313 m!1418849))

(push 1)

(assert (not b!1536303))

(assert (not b!1536309))

(assert (not start!131002))

(assert (not b!1536311))

(assert (not b!1536304))

(assert (not b!1536308))

(assert (not b!1536310))

(assert (not b!1536306))

(assert (not b!1536313))

(check-sat)

(pop 1)

(push 1)

(check-sat)

