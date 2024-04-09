; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118614 () Bool)

(assert start!118614)

(declare-fun b!1386097 () Bool)

(declare-fun res!927458 () Bool)

(declare-fun e!785270 () Bool)

(assert (=> b!1386097 (=> (not res!927458) (not e!785270))))

(declare-datatypes ((array!94808 0))(
  ( (array!94809 (arr!45776 (Array (_ BitVec 32) (_ BitVec 64))) (size!46327 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94808)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386097 (= res!927458 (validKeyInArray!0 (select (arr!45776 a!2938) i!1065)))))

(declare-fun b!1386098 () Bool)

(assert (=> b!1386098 (= e!785270 (not true))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10141 0))(
  ( (MissingZero!10141 (index!42934 (_ BitVec 32))) (Found!10141 (index!42935 (_ BitVec 32))) (Intermediate!10141 (undefined!10953 Bool) (index!42936 (_ BitVec 32)) (x!124561 (_ BitVec 32))) (Undefined!10141) (MissingVacant!10141 (index!42937 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94808 (_ BitVec 32)) SeekEntryResult!10141)

(assert (=> b!1386098 (= (seekEntryOrOpen!0 (select (arr!45776 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45776 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94809 (store (arr!45776 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46327 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46224 0))(
  ( (Unit!46225) )
))
(declare-fun lt!609322 () Unit!46224)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94808 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46224)

(assert (=> b!1386098 (= lt!609322 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun res!927462 () Bool)

(assert (=> start!118614 (=> (not res!927462) (not e!785270))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118614 (= res!927462 (validMask!0 mask!2987))))

(assert (=> start!118614 e!785270))

(assert (=> start!118614 true))

(declare-fun array_inv!34721 (array!94808) Bool)

(assert (=> start!118614 (array_inv!34721 a!2938)))

(declare-fun b!1386099 () Bool)

(declare-fun res!927457 () Bool)

(assert (=> b!1386099 (=> (not res!927457) (not e!785270))))

(assert (=> b!1386099 (= res!927457 (and (not (= (select (arr!45776 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45776 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1386100 () Bool)

(declare-fun res!927459 () Bool)

(assert (=> b!1386100 (=> (not res!927459) (not e!785270))))

(assert (=> b!1386100 (= res!927459 (and (= (size!46327 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46327 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46327 a!2938))))))

(declare-fun b!1386101 () Bool)

(declare-fun res!927460 () Bool)

(assert (=> b!1386101 (=> (not res!927460) (not e!785270))))

(assert (=> b!1386101 (= res!927460 (validKeyInArray!0 (select (arr!45776 a!2938) startIndex!16)))))

(declare-fun b!1386102 () Bool)

(declare-fun res!927461 () Bool)

(assert (=> b!1386102 (=> (not res!927461) (not e!785270))))

(declare-datatypes ((List!32484 0))(
  ( (Nil!32481) (Cons!32480 (h!33689 (_ BitVec 64)) (t!47185 List!32484)) )
))
(declare-fun arrayNoDuplicates!0 (array!94808 (_ BitVec 32) List!32484) Bool)

(assert (=> b!1386102 (= res!927461 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32481))))

(declare-fun b!1386103 () Bool)

(declare-fun res!927456 () Bool)

(assert (=> b!1386103 (=> (not res!927456) (not e!785270))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94808 (_ BitVec 32)) Bool)

(assert (=> b!1386103 (= res!927456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118614 res!927462) b!1386100))

(assert (= (and b!1386100 res!927459) b!1386097))

(assert (= (and b!1386097 res!927458) b!1386102))

(assert (= (and b!1386102 res!927461) b!1386103))

(assert (= (and b!1386103 res!927456) b!1386099))

(assert (= (and b!1386099 res!927457) b!1386101))

(assert (= (and b!1386101 res!927460) b!1386098))

(declare-fun m!1271491 () Bool)

(assert (=> b!1386098 m!1271491))

(assert (=> b!1386098 m!1271491))

(declare-fun m!1271493 () Bool)

(assert (=> b!1386098 m!1271493))

(declare-fun m!1271495 () Bool)

(assert (=> b!1386098 m!1271495))

(declare-fun m!1271497 () Bool)

(assert (=> b!1386098 m!1271497))

(declare-fun m!1271499 () Bool)

(assert (=> b!1386098 m!1271499))

(assert (=> b!1386098 m!1271499))

(declare-fun m!1271501 () Bool)

(assert (=> b!1386098 m!1271501))

(declare-fun m!1271503 () Bool)

(assert (=> start!118614 m!1271503))

(declare-fun m!1271505 () Bool)

(assert (=> start!118614 m!1271505))

(assert (=> b!1386101 m!1271499))

(assert (=> b!1386101 m!1271499))

(declare-fun m!1271507 () Bool)

(assert (=> b!1386101 m!1271507))

(declare-fun m!1271509 () Bool)

(assert (=> b!1386103 m!1271509))

(declare-fun m!1271511 () Bool)

(assert (=> b!1386099 m!1271511))

(assert (=> b!1386097 m!1271511))

(assert (=> b!1386097 m!1271511))

(declare-fun m!1271513 () Bool)

(assert (=> b!1386097 m!1271513))

(declare-fun m!1271515 () Bool)

(assert (=> b!1386102 m!1271515))

(check-sat (not b!1386101) (not start!118614) (not b!1386098) (not b!1386102) (not b!1386103) (not b!1386097))
