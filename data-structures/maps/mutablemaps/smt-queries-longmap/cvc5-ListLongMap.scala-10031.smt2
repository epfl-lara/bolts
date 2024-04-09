; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118330 () Bool)

(assert start!118330)

(declare-fun b!1383421 () Bool)

(declare-fun res!925124 () Bool)

(declare-fun e!784102 () Bool)

(assert (=> b!1383421 (=> (not res!925124) (not e!784102))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94551 0))(
  ( (array!94552 (arr!45649 (Array (_ BitVec 32) (_ BitVec 64))) (size!46200 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94551)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1383421 (= res!925124 (and (= (size!46200 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46200 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46200 a!2938))))))

(declare-fun b!1383422 () Bool)

(declare-fun res!925127 () Bool)

(assert (=> b!1383422 (=> (not res!925127) (not e!784102))))

(assert (=> b!1383422 (= res!925127 (and (not (= (select (arr!45649 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45649 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1383423 () Bool)

(assert (=> b!1383423 (= e!784102 (not true))))

(declare-datatypes ((SeekEntryResult!10063 0))(
  ( (MissingZero!10063 (index!42622 (_ BitVec 32))) (Found!10063 (index!42623 (_ BitVec 32))) (Intermediate!10063 (undefined!10875 Bool) (index!42624 (_ BitVec 32)) (x!124147 (_ BitVec 32))) (Undefined!10063) (MissingVacant!10063 (index!42625 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94551 (_ BitVec 32)) SeekEntryResult!10063)

(assert (=> b!1383423 (= (seekEntryOrOpen!0 (select (arr!45649 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45649 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94552 (store (arr!45649 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46200 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46017 0))(
  ( (Unit!46018) )
))
(declare-fun lt!608563 () Unit!46017)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94551 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46017)

(assert (=> b!1383423 (= lt!608563 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun b!1383424 () Bool)

(declare-fun res!925122 () Bool)

(assert (=> b!1383424 (=> (not res!925122) (not e!784102))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383424 (= res!925122 (validKeyInArray!0 (select (arr!45649 a!2938) startIndex!16)))))

(declare-fun res!925125 () Bool)

(assert (=> start!118330 (=> (not res!925125) (not e!784102))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118330 (= res!925125 (validMask!0 mask!2987))))

(assert (=> start!118330 e!784102))

(assert (=> start!118330 true))

(declare-fun array_inv!34594 (array!94551) Bool)

(assert (=> start!118330 (array_inv!34594 a!2938)))

(declare-fun b!1383425 () Bool)

(declare-fun res!925123 () Bool)

(assert (=> b!1383425 (=> (not res!925123) (not e!784102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94551 (_ BitVec 32)) Bool)

(assert (=> b!1383425 (= res!925123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383426 () Bool)

(declare-fun res!925126 () Bool)

(assert (=> b!1383426 (=> (not res!925126) (not e!784102))))

(declare-datatypes ((List!32357 0))(
  ( (Nil!32354) (Cons!32353 (h!33562 (_ BitVec 64)) (t!47058 List!32357)) )
))
(declare-fun arrayNoDuplicates!0 (array!94551 (_ BitVec 32) List!32357) Bool)

(assert (=> b!1383426 (= res!925126 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32354))))

(declare-fun b!1383427 () Bool)

(declare-fun res!925128 () Bool)

(assert (=> b!1383427 (=> (not res!925128) (not e!784102))))

(assert (=> b!1383427 (= res!925128 (validKeyInArray!0 (select (arr!45649 a!2938) i!1065)))))

(assert (= (and start!118330 res!925125) b!1383421))

(assert (= (and b!1383421 res!925124) b!1383427))

(assert (= (and b!1383427 res!925128) b!1383426))

(assert (= (and b!1383426 res!925126) b!1383425))

(assert (= (and b!1383425 res!925123) b!1383422))

(assert (= (and b!1383422 res!925127) b!1383424))

(assert (= (and b!1383424 res!925122) b!1383423))

(declare-fun m!1268591 () Bool)

(assert (=> start!118330 m!1268591))

(declare-fun m!1268593 () Bool)

(assert (=> start!118330 m!1268593))

(declare-fun m!1268595 () Bool)

(assert (=> b!1383423 m!1268595))

(assert (=> b!1383423 m!1268595))

(declare-fun m!1268597 () Bool)

(assert (=> b!1383423 m!1268597))

(declare-fun m!1268599 () Bool)

(assert (=> b!1383423 m!1268599))

(declare-fun m!1268601 () Bool)

(assert (=> b!1383423 m!1268601))

(declare-fun m!1268603 () Bool)

(assert (=> b!1383423 m!1268603))

(assert (=> b!1383423 m!1268603))

(declare-fun m!1268605 () Bool)

(assert (=> b!1383423 m!1268605))

(declare-fun m!1268607 () Bool)

(assert (=> b!1383422 m!1268607))

(declare-fun m!1268609 () Bool)

(assert (=> b!1383425 m!1268609))

(assert (=> b!1383427 m!1268607))

(assert (=> b!1383427 m!1268607))

(declare-fun m!1268611 () Bool)

(assert (=> b!1383427 m!1268611))

(declare-fun m!1268613 () Bool)

(assert (=> b!1383426 m!1268613))

(assert (=> b!1383424 m!1268603))

(assert (=> b!1383424 m!1268603))

(declare-fun m!1268615 () Bool)

(assert (=> b!1383424 m!1268615))

(push 1)

(assert (not b!1383427))

(assert (not b!1383424))

(assert (not b!1383423))

(assert (not b!1383425))

(assert (not b!1383426))

(assert (not start!118330))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

