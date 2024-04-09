; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118606 () Bool)

(assert start!118606)

(declare-fun res!927372 () Bool)

(declare-fun e!785246 () Bool)

(assert (=> start!118606 (=> (not res!927372) (not e!785246))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118606 (= res!927372 (validMask!0 mask!2987))))

(assert (=> start!118606 e!785246))

(assert (=> start!118606 true))

(declare-datatypes ((array!94800 0))(
  ( (array!94801 (arr!45772 (Array (_ BitVec 32) (_ BitVec 64))) (size!46323 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94800)

(declare-fun array_inv!34717 (array!94800) Bool)

(assert (=> start!118606 (array_inv!34717 a!2938)))

(declare-fun b!1386013 () Bool)

(declare-fun res!927374 () Bool)

(assert (=> b!1386013 (=> (not res!927374) (not e!785246))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386013 (= res!927374 (validKeyInArray!0 (select (arr!45772 a!2938) i!1065)))))

(declare-fun b!1386014 () Bool)

(declare-fun res!927376 () Bool)

(assert (=> b!1386014 (=> (not res!927376) (not e!785246))))

(declare-datatypes ((List!32480 0))(
  ( (Nil!32477) (Cons!32476 (h!33685 (_ BitVec 64)) (t!47181 List!32480)) )
))
(declare-fun arrayNoDuplicates!0 (array!94800 (_ BitVec 32) List!32480) Bool)

(assert (=> b!1386014 (= res!927376 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32477))))

(declare-fun b!1386015 () Bool)

(declare-fun res!927378 () Bool)

(assert (=> b!1386015 (=> (not res!927378) (not e!785246))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1386015 (= res!927378 (and (not (= (select (arr!45772 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45772 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1386016 () Bool)

(assert (=> b!1386016 (= e!785246 (not (or (bvsgt #b00000000000000000000000000000000 (size!46323 a!2938)) (bvsle startIndex!16 (size!46323 a!2938)))))))

(declare-datatypes ((SeekEntryResult!10137 0))(
  ( (MissingZero!10137 (index!42918 (_ BitVec 32))) (Found!10137 (index!42919 (_ BitVec 32))) (Intermediate!10137 (undefined!10949 Bool) (index!42920 (_ BitVec 32)) (x!124549 (_ BitVec 32))) (Undefined!10137) (MissingVacant!10137 (index!42921 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94800 (_ BitVec 32)) SeekEntryResult!10137)

(assert (=> b!1386016 (= (seekEntryOrOpen!0 (select (arr!45772 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45772 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94801 (store (arr!45772 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46323 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46216 0))(
  ( (Unit!46217) )
))
(declare-fun lt!609310 () Unit!46216)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94800 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46216)

(assert (=> b!1386016 (= lt!609310 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun b!1386017 () Bool)

(declare-fun res!927373 () Bool)

(assert (=> b!1386017 (=> (not res!927373) (not e!785246))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94800 (_ BitVec 32)) Bool)

(assert (=> b!1386017 (= res!927373 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386018 () Bool)

(declare-fun res!927375 () Bool)

(assert (=> b!1386018 (=> (not res!927375) (not e!785246))))

(assert (=> b!1386018 (= res!927375 (validKeyInArray!0 (select (arr!45772 a!2938) startIndex!16)))))

(declare-fun b!1386019 () Bool)

(declare-fun res!927377 () Bool)

(assert (=> b!1386019 (=> (not res!927377) (not e!785246))))

(assert (=> b!1386019 (= res!927377 (and (= (size!46323 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46323 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46323 a!2938))))))

(assert (= (and start!118606 res!927372) b!1386019))

(assert (= (and b!1386019 res!927377) b!1386013))

(assert (= (and b!1386013 res!927374) b!1386014))

(assert (= (and b!1386014 res!927376) b!1386017))

(assert (= (and b!1386017 res!927373) b!1386015))

(assert (= (and b!1386015 res!927378) b!1386018))

(assert (= (and b!1386018 res!927375) b!1386016))

(declare-fun m!1271387 () Bool)

(assert (=> b!1386014 m!1271387))

(declare-fun m!1271389 () Bool)

(assert (=> b!1386016 m!1271389))

(assert (=> b!1386016 m!1271389))

(declare-fun m!1271391 () Bool)

(assert (=> b!1386016 m!1271391))

(declare-fun m!1271393 () Bool)

(assert (=> b!1386016 m!1271393))

(declare-fun m!1271395 () Bool)

(assert (=> b!1386016 m!1271395))

(declare-fun m!1271397 () Bool)

(assert (=> b!1386016 m!1271397))

(assert (=> b!1386016 m!1271397))

(declare-fun m!1271399 () Bool)

(assert (=> b!1386016 m!1271399))

(declare-fun m!1271401 () Bool)

(assert (=> b!1386013 m!1271401))

(assert (=> b!1386013 m!1271401))

(declare-fun m!1271403 () Bool)

(assert (=> b!1386013 m!1271403))

(assert (=> b!1386015 m!1271401))

(declare-fun m!1271405 () Bool)

(assert (=> start!118606 m!1271405))

(declare-fun m!1271407 () Bool)

(assert (=> start!118606 m!1271407))

(assert (=> b!1386018 m!1271397))

(assert (=> b!1386018 m!1271397))

(declare-fun m!1271409 () Bool)

(assert (=> b!1386018 m!1271409))

(declare-fun m!1271411 () Bool)

(assert (=> b!1386017 m!1271411))

(push 1)

(assert (not b!1386013))

(assert (not start!118606))

(assert (not b!1386018))

(assert (not b!1386017))

(assert (not b!1386016))

(assert (not b!1386014))

(check-sat)

(pop 1)

(push 1)

(check-sat)

