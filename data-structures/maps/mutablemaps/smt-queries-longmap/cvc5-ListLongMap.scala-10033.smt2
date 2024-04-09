; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118342 () Bool)

(assert start!118342)

(declare-fun res!925249 () Bool)

(declare-fun e!784138 () Bool)

(assert (=> start!118342 (=> (not res!925249) (not e!784138))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118342 (= res!925249 (validMask!0 mask!2987))))

(assert (=> start!118342 e!784138))

(assert (=> start!118342 true))

(declare-datatypes ((array!94563 0))(
  ( (array!94564 (arr!45655 (Array (_ BitVec 32) (_ BitVec 64))) (size!46206 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94563)

(declare-fun array_inv!34600 (array!94563) Bool)

(assert (=> start!118342 (array_inv!34600 a!2938)))

(declare-fun b!1383547 () Bool)

(declare-fun res!925248 () Bool)

(assert (=> b!1383547 (=> (not res!925248) (not e!784138))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383547 (= res!925248 (and (not (= (select (arr!45655 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45655 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1383548 () Bool)

(declare-fun res!925254 () Bool)

(assert (=> b!1383548 (=> (not res!925254) (not e!784138))))

(declare-datatypes ((List!32363 0))(
  ( (Nil!32360) (Cons!32359 (h!33568 (_ BitVec 64)) (t!47064 List!32363)) )
))
(declare-fun arrayNoDuplicates!0 (array!94563 (_ BitVec 32) List!32363) Bool)

(assert (=> b!1383548 (= res!925254 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32360))))

(declare-fun b!1383549 () Bool)

(declare-fun res!925253 () Bool)

(assert (=> b!1383549 (=> (not res!925253) (not e!784138))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383549 (= res!925253 (validKeyInArray!0 (select (arr!45655 a!2938) startIndex!16)))))

(declare-fun b!1383550 () Bool)

(declare-fun res!925250 () Bool)

(assert (=> b!1383550 (=> (not res!925250) (not e!784138))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94563 (_ BitVec 32)) Bool)

(assert (=> b!1383550 (= res!925250 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383551 () Bool)

(declare-fun res!925252 () Bool)

(assert (=> b!1383551 (=> (not res!925252) (not e!784138))))

(assert (=> b!1383551 (= res!925252 (and (= (size!46206 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46206 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46206 a!2938))))))

(declare-fun b!1383552 () Bool)

(declare-fun res!925251 () Bool)

(assert (=> b!1383552 (=> (not res!925251) (not e!784138))))

(assert (=> b!1383552 (= res!925251 (validKeyInArray!0 (select (arr!45655 a!2938) i!1065)))))

(declare-fun b!1383553 () Bool)

(assert (=> b!1383553 (= e!784138 (not true))))

(declare-datatypes ((SeekEntryResult!10069 0))(
  ( (MissingZero!10069 (index!42646 (_ BitVec 32))) (Found!10069 (index!42647 (_ BitVec 32))) (Intermediate!10069 (undefined!10881 Bool) (index!42648 (_ BitVec 32)) (x!124169 (_ BitVec 32))) (Undefined!10069) (MissingVacant!10069 (index!42649 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94563 (_ BitVec 32)) SeekEntryResult!10069)

(assert (=> b!1383553 (= (seekEntryOrOpen!0 (select (arr!45655 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45655 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94564 (store (arr!45655 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46206 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46029 0))(
  ( (Unit!46030) )
))
(declare-fun lt!608581 () Unit!46029)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94563 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46029)

(assert (=> b!1383553 (= lt!608581 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(assert (= (and start!118342 res!925249) b!1383551))

(assert (= (and b!1383551 res!925252) b!1383552))

(assert (= (and b!1383552 res!925251) b!1383548))

(assert (= (and b!1383548 res!925254) b!1383550))

(assert (= (and b!1383550 res!925250) b!1383547))

(assert (= (and b!1383547 res!925248) b!1383549))

(assert (= (and b!1383549 res!925253) b!1383553))

(declare-fun m!1268747 () Bool)

(assert (=> b!1383550 m!1268747))

(declare-fun m!1268749 () Bool)

(assert (=> b!1383547 m!1268749))

(declare-fun m!1268751 () Bool)

(assert (=> b!1383548 m!1268751))

(declare-fun m!1268753 () Bool)

(assert (=> b!1383549 m!1268753))

(assert (=> b!1383549 m!1268753))

(declare-fun m!1268755 () Bool)

(assert (=> b!1383549 m!1268755))

(assert (=> b!1383552 m!1268749))

(assert (=> b!1383552 m!1268749))

(declare-fun m!1268757 () Bool)

(assert (=> b!1383552 m!1268757))

(declare-fun m!1268759 () Bool)

(assert (=> start!118342 m!1268759))

(declare-fun m!1268761 () Bool)

(assert (=> start!118342 m!1268761))

(declare-fun m!1268763 () Bool)

(assert (=> b!1383553 m!1268763))

(assert (=> b!1383553 m!1268763))

(declare-fun m!1268765 () Bool)

(assert (=> b!1383553 m!1268765))

(declare-fun m!1268767 () Bool)

(assert (=> b!1383553 m!1268767))

(declare-fun m!1268769 () Bool)

(assert (=> b!1383553 m!1268769))

(assert (=> b!1383553 m!1268753))

(assert (=> b!1383553 m!1268753))

(declare-fun m!1268771 () Bool)

(assert (=> b!1383553 m!1268771))

(push 1)

(assert (not b!1383549))

(assert (not start!118342))

(assert (not b!1383550))

(assert (not b!1383552))

(assert (not b!1383548))

(assert (not b!1383553))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

