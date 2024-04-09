; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118334 () Bool)

(assert start!118334)

(declare-fun b!1383463 () Bool)

(declare-fun res!925170 () Bool)

(declare-fun e!784114 () Bool)

(assert (=> b!1383463 (=> (not res!925170) (not e!784114))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94555 0))(
  ( (array!94556 (arr!45651 (Array (_ BitVec 32) (_ BitVec 64))) (size!46202 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94555)

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383463 (= res!925170 (and (not (= (select (arr!45651 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45651 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1383464 () Bool)

(declare-fun res!925165 () Bool)

(assert (=> b!1383464 (=> (not res!925165) (not e!784114))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94555 (_ BitVec 32)) Bool)

(assert (=> b!1383464 (= res!925165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383465 () Bool)

(declare-fun res!925164 () Bool)

(assert (=> b!1383465 (=> (not res!925164) (not e!784114))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383465 (= res!925164 (validKeyInArray!0 (select (arr!45651 a!2938) i!1065)))))

(declare-fun b!1383467 () Bool)

(declare-fun res!925166 () Bool)

(assert (=> b!1383467 (=> (not res!925166) (not e!784114))))

(declare-datatypes ((List!32359 0))(
  ( (Nil!32356) (Cons!32355 (h!33564 (_ BitVec 64)) (t!47060 List!32359)) )
))
(declare-fun arrayNoDuplicates!0 (array!94555 (_ BitVec 32) List!32359) Bool)

(assert (=> b!1383467 (= res!925166 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32356))))

(declare-fun res!925167 () Bool)

(assert (=> start!118334 (=> (not res!925167) (not e!784114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118334 (= res!925167 (validMask!0 mask!2987))))

(assert (=> start!118334 e!784114))

(assert (=> start!118334 true))

(declare-fun array_inv!34596 (array!94555) Bool)

(assert (=> start!118334 (array_inv!34596 a!2938)))

(declare-fun b!1383466 () Bool)

(declare-fun res!925168 () Bool)

(assert (=> b!1383466 (=> (not res!925168) (not e!784114))))

(assert (=> b!1383466 (= res!925168 (validKeyInArray!0 (select (arr!45651 a!2938) startIndex!16)))))

(declare-fun b!1383468 () Bool)

(assert (=> b!1383468 (= e!784114 (not true))))

(declare-datatypes ((SeekEntryResult!10065 0))(
  ( (MissingZero!10065 (index!42630 (_ BitVec 32))) (Found!10065 (index!42631 (_ BitVec 32))) (Intermediate!10065 (undefined!10877 Bool) (index!42632 (_ BitVec 32)) (x!124149 (_ BitVec 32))) (Undefined!10065) (MissingVacant!10065 (index!42633 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94555 (_ BitVec 32)) SeekEntryResult!10065)

(assert (=> b!1383468 (= (seekEntryOrOpen!0 (select (arr!45651 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45651 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94556 (store (arr!45651 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46202 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46021 0))(
  ( (Unit!46022) )
))
(declare-fun lt!608569 () Unit!46021)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94555 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46021)

(assert (=> b!1383468 (= lt!608569 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun b!1383469 () Bool)

(declare-fun res!925169 () Bool)

(assert (=> b!1383469 (=> (not res!925169) (not e!784114))))

(assert (=> b!1383469 (= res!925169 (and (= (size!46202 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46202 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46202 a!2938))))))

(assert (= (and start!118334 res!925167) b!1383469))

(assert (= (and b!1383469 res!925169) b!1383465))

(assert (= (and b!1383465 res!925164) b!1383467))

(assert (= (and b!1383467 res!925166) b!1383464))

(assert (= (and b!1383464 res!925165) b!1383463))

(assert (= (and b!1383463 res!925170) b!1383466))

(assert (= (and b!1383466 res!925168) b!1383468))

(declare-fun m!1268643 () Bool)

(assert (=> b!1383466 m!1268643))

(assert (=> b!1383466 m!1268643))

(declare-fun m!1268645 () Bool)

(assert (=> b!1383466 m!1268645))

(declare-fun m!1268647 () Bool)

(assert (=> b!1383467 m!1268647))

(declare-fun m!1268649 () Bool)

(assert (=> b!1383468 m!1268649))

(assert (=> b!1383468 m!1268649))

(declare-fun m!1268651 () Bool)

(assert (=> b!1383468 m!1268651))

(declare-fun m!1268653 () Bool)

(assert (=> b!1383468 m!1268653))

(declare-fun m!1268655 () Bool)

(assert (=> b!1383468 m!1268655))

(assert (=> b!1383468 m!1268643))

(assert (=> b!1383468 m!1268643))

(declare-fun m!1268657 () Bool)

(assert (=> b!1383468 m!1268657))

(declare-fun m!1268659 () Bool)

(assert (=> b!1383464 m!1268659))

(declare-fun m!1268661 () Bool)

(assert (=> b!1383463 m!1268661))

(assert (=> b!1383465 m!1268661))

(assert (=> b!1383465 m!1268661))

(declare-fun m!1268663 () Bool)

(assert (=> b!1383465 m!1268663))

(declare-fun m!1268665 () Bool)

(assert (=> start!118334 m!1268665))

(declare-fun m!1268667 () Bool)

(assert (=> start!118334 m!1268667))

(push 1)

(assert (not b!1383466))

(assert (not b!1383465))

(assert (not start!118334))

(assert (not b!1383468))

(assert (not b!1383464))

(assert (not b!1383467))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

