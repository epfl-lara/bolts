; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118328 () Bool)

(assert start!118328)

(declare-fun b!1383400 () Bool)

(declare-fun res!925102 () Bool)

(declare-fun e!784096 () Bool)

(assert (=> b!1383400 (=> (not res!925102) (not e!784096))))

(declare-datatypes ((array!94549 0))(
  ( (array!94550 (arr!45648 (Array (_ BitVec 32) (_ BitVec 64))) (size!46199 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94549)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1383400 (= res!925102 (and (= (size!46199 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46199 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46199 a!2938))))))

(declare-fun b!1383401 () Bool)

(assert (=> b!1383401 (= e!784096 (not true))))

(declare-datatypes ((SeekEntryResult!10062 0))(
  ( (MissingZero!10062 (index!42618 (_ BitVec 32))) (Found!10062 (index!42619 (_ BitVec 32))) (Intermediate!10062 (undefined!10874 Bool) (index!42620 (_ BitVec 32)) (x!124138 (_ BitVec 32))) (Undefined!10062) (MissingVacant!10062 (index!42621 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94549 (_ BitVec 32)) SeekEntryResult!10062)

(assert (=> b!1383401 (= (seekEntryOrOpen!0 (select (arr!45648 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45648 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94550 (store (arr!45648 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46199 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46015 0))(
  ( (Unit!46016) )
))
(declare-fun lt!608560 () Unit!46015)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94549 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46015)

(assert (=> b!1383401 (= lt!608560 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun b!1383402 () Bool)

(declare-fun res!925103 () Bool)

(assert (=> b!1383402 (=> (not res!925103) (not e!784096))))

(assert (=> b!1383402 (= res!925103 (and (not (= (select (arr!45648 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45648 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1383404 () Bool)

(declare-fun res!925106 () Bool)

(assert (=> b!1383404 (=> (not res!925106) (not e!784096))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94549 (_ BitVec 32)) Bool)

(assert (=> b!1383404 (= res!925106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383405 () Bool)

(declare-fun res!925105 () Bool)

(assert (=> b!1383405 (=> (not res!925105) (not e!784096))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383405 (= res!925105 (validKeyInArray!0 (select (arr!45648 a!2938) i!1065)))))

(declare-fun b!1383406 () Bool)

(declare-fun res!925101 () Bool)

(assert (=> b!1383406 (=> (not res!925101) (not e!784096))))

(assert (=> b!1383406 (= res!925101 (validKeyInArray!0 (select (arr!45648 a!2938) startIndex!16)))))

(declare-fun res!925104 () Bool)

(assert (=> start!118328 (=> (not res!925104) (not e!784096))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118328 (= res!925104 (validMask!0 mask!2987))))

(assert (=> start!118328 e!784096))

(assert (=> start!118328 true))

(declare-fun array_inv!34593 (array!94549) Bool)

(assert (=> start!118328 (array_inv!34593 a!2938)))

(declare-fun b!1383403 () Bool)

(declare-fun res!925107 () Bool)

(assert (=> b!1383403 (=> (not res!925107) (not e!784096))))

(declare-datatypes ((List!32356 0))(
  ( (Nil!32353) (Cons!32352 (h!33561 (_ BitVec 64)) (t!47057 List!32356)) )
))
(declare-fun arrayNoDuplicates!0 (array!94549 (_ BitVec 32) List!32356) Bool)

(assert (=> b!1383403 (= res!925107 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32353))))

(assert (= (and start!118328 res!925104) b!1383400))

(assert (= (and b!1383400 res!925102) b!1383405))

(assert (= (and b!1383405 res!925105) b!1383403))

(assert (= (and b!1383403 res!925107) b!1383404))

(assert (= (and b!1383404 res!925106) b!1383402))

(assert (= (and b!1383402 res!925103) b!1383406))

(assert (= (and b!1383406 res!925101) b!1383401))

(declare-fun m!1268565 () Bool)

(assert (=> b!1383405 m!1268565))

(assert (=> b!1383405 m!1268565))

(declare-fun m!1268567 () Bool)

(assert (=> b!1383405 m!1268567))

(declare-fun m!1268569 () Bool)

(assert (=> b!1383401 m!1268569))

(assert (=> b!1383401 m!1268569))

(declare-fun m!1268571 () Bool)

(assert (=> b!1383401 m!1268571))

(declare-fun m!1268573 () Bool)

(assert (=> b!1383401 m!1268573))

(declare-fun m!1268575 () Bool)

(assert (=> b!1383401 m!1268575))

(declare-fun m!1268577 () Bool)

(assert (=> b!1383401 m!1268577))

(assert (=> b!1383401 m!1268577))

(declare-fun m!1268579 () Bool)

(assert (=> b!1383401 m!1268579))

(declare-fun m!1268581 () Bool)

(assert (=> b!1383403 m!1268581))

(declare-fun m!1268583 () Bool)

(assert (=> b!1383404 m!1268583))

(assert (=> b!1383406 m!1268577))

(assert (=> b!1383406 m!1268577))

(declare-fun m!1268585 () Bool)

(assert (=> b!1383406 m!1268585))

(assert (=> b!1383402 m!1268565))

(declare-fun m!1268587 () Bool)

(assert (=> start!118328 m!1268587))

(declare-fun m!1268589 () Bool)

(assert (=> start!118328 m!1268589))

(push 1)

(assert (not start!118328))

(assert (not b!1383403))

(assert (not b!1383405))

(assert (not b!1383406))

(assert (not b!1383404))

(assert (not b!1383401))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

