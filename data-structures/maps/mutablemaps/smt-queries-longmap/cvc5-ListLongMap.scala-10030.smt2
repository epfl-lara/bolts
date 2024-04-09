; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118324 () Bool)

(assert start!118324)

(declare-fun b!1383358 () Bool)

(declare-fun e!784085 () Bool)

(assert (=> b!1383358 (= e!784085 (not true))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94545 0))(
  ( (array!94546 (arr!45646 (Array (_ BitVec 32) (_ BitVec 64))) (size!46197 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94545)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10060 0))(
  ( (MissingZero!10060 (index!42610 (_ BitVec 32))) (Found!10060 (index!42611 (_ BitVec 32))) (Intermediate!10060 (undefined!10872 Bool) (index!42612 (_ BitVec 32)) (x!124136 (_ BitVec 32))) (Undefined!10060) (MissingVacant!10060 (index!42613 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94545 (_ BitVec 32)) SeekEntryResult!10060)

(assert (=> b!1383358 (= (seekEntryOrOpen!0 (select (arr!45646 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45646 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94546 (store (arr!45646 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46197 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46011 0))(
  ( (Unit!46012) )
))
(declare-fun lt!608554 () Unit!46011)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94545 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46011)

(assert (=> b!1383358 (= lt!608554 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun res!925062 () Bool)

(assert (=> start!118324 (=> (not res!925062) (not e!784085))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118324 (= res!925062 (validMask!0 mask!2987))))

(assert (=> start!118324 e!784085))

(assert (=> start!118324 true))

(declare-fun array_inv!34591 (array!94545) Bool)

(assert (=> start!118324 (array_inv!34591 a!2938)))

(declare-fun b!1383359 () Bool)

(declare-fun res!925059 () Bool)

(assert (=> b!1383359 (=> (not res!925059) (not e!784085))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94545 (_ BitVec 32)) Bool)

(assert (=> b!1383359 (= res!925059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383360 () Bool)

(declare-fun res!925065 () Bool)

(assert (=> b!1383360 (=> (not res!925065) (not e!784085))))

(declare-datatypes ((List!32354 0))(
  ( (Nil!32351) (Cons!32350 (h!33559 (_ BitVec 64)) (t!47055 List!32354)) )
))
(declare-fun arrayNoDuplicates!0 (array!94545 (_ BitVec 32) List!32354) Bool)

(assert (=> b!1383360 (= res!925065 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32351))))

(declare-fun b!1383361 () Bool)

(declare-fun res!925063 () Bool)

(assert (=> b!1383361 (=> (not res!925063) (not e!784085))))

(assert (=> b!1383361 (= res!925063 (and (= (size!46197 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46197 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46197 a!2938))))))

(declare-fun b!1383362 () Bool)

(declare-fun res!925060 () Bool)

(assert (=> b!1383362 (=> (not res!925060) (not e!784085))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383362 (= res!925060 (validKeyInArray!0 (select (arr!45646 a!2938) startIndex!16)))))

(declare-fun b!1383363 () Bool)

(declare-fun res!925061 () Bool)

(assert (=> b!1383363 (=> (not res!925061) (not e!784085))))

(assert (=> b!1383363 (= res!925061 (validKeyInArray!0 (select (arr!45646 a!2938) i!1065)))))

(declare-fun b!1383364 () Bool)

(declare-fun res!925064 () Bool)

(assert (=> b!1383364 (=> (not res!925064) (not e!784085))))

(assert (=> b!1383364 (= res!925064 (and (not (= (select (arr!45646 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45646 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(assert (= (and start!118324 res!925062) b!1383361))

(assert (= (and b!1383361 res!925063) b!1383363))

(assert (= (and b!1383363 res!925061) b!1383360))

(assert (= (and b!1383360 res!925065) b!1383359))

(assert (= (and b!1383359 res!925059) b!1383364))

(assert (= (and b!1383364 res!925064) b!1383362))

(assert (= (and b!1383362 res!925060) b!1383358))

(declare-fun m!1268513 () Bool)

(assert (=> start!118324 m!1268513))

(declare-fun m!1268515 () Bool)

(assert (=> start!118324 m!1268515))

(declare-fun m!1268517 () Bool)

(assert (=> b!1383363 m!1268517))

(assert (=> b!1383363 m!1268517))

(declare-fun m!1268519 () Bool)

(assert (=> b!1383363 m!1268519))

(declare-fun m!1268521 () Bool)

(assert (=> b!1383359 m!1268521))

(declare-fun m!1268523 () Bool)

(assert (=> b!1383358 m!1268523))

(assert (=> b!1383358 m!1268523))

(declare-fun m!1268525 () Bool)

(assert (=> b!1383358 m!1268525))

(declare-fun m!1268527 () Bool)

(assert (=> b!1383358 m!1268527))

(declare-fun m!1268529 () Bool)

(assert (=> b!1383358 m!1268529))

(declare-fun m!1268531 () Bool)

(assert (=> b!1383358 m!1268531))

(assert (=> b!1383358 m!1268531))

(declare-fun m!1268533 () Bool)

(assert (=> b!1383358 m!1268533))

(assert (=> b!1383362 m!1268531))

(assert (=> b!1383362 m!1268531))

(declare-fun m!1268535 () Bool)

(assert (=> b!1383362 m!1268535))

(assert (=> b!1383364 m!1268517))

(declare-fun m!1268537 () Bool)

(assert (=> b!1383360 m!1268537))

(push 1)

(assert (not start!118324))

(assert (not b!1383363))

(assert (not b!1383360))

(assert (not b!1383359))

(assert (not b!1383358))

(assert (not b!1383362))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

