; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118622 () Bool)

(assert start!118622)

(declare-fun b!1386197 () Bool)

(declare-fun res!927541 () Bool)

(declare-fun e!785312 () Bool)

(assert (=> b!1386197 (=> (not res!927541) (not e!785312))))

(declare-datatypes ((array!94816 0))(
  ( (array!94817 (arr!45780 (Array (_ BitVec 32) (_ BitVec 64))) (size!46331 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94816)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94816 (_ BitVec 32)) Bool)

(assert (=> b!1386197 (= res!927541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386198 () Bool)

(declare-fun e!785311 () Bool)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386198 (= e!785311 (validKeyInArray!0 (select (arr!45780 a!2938) startIndex!16)))))

(declare-fun b!1386199 () Bool)

(declare-fun res!927546 () Bool)

(assert (=> b!1386199 (=> (not res!927546) (not e!785312))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1386199 (= res!927546 (and (= (size!46331 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46331 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46331 a!2938))))))

(declare-fun b!1386201 () Bool)

(declare-fun res!927544 () Bool)

(assert (=> b!1386201 (=> (not res!927544) (not e!785312))))

(assert (=> b!1386201 (= res!927544 (and (not (= (select (arr!45780 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45780 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386202 () Bool)

(declare-fun res!927540 () Bool)

(assert (=> b!1386202 (=> (not res!927540) (not e!785312))))

(declare-datatypes ((List!32488 0))(
  ( (Nil!32485) (Cons!32484 (h!33693 (_ BitVec 64)) (t!47189 List!32488)) )
))
(declare-fun arrayNoDuplicates!0 (array!94816 (_ BitVec 32) List!32488) Bool)

(assert (=> b!1386202 (= res!927540 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32485))))

(declare-fun b!1386203 () Bool)

(assert (=> b!1386203 (= e!785312 false)))

(declare-datatypes ((Unit!46234 0))(
  ( (Unit!46235) )
))
(declare-fun lt!609351 () Unit!46234)

(declare-fun e!785309 () Unit!46234)

(assert (=> b!1386203 (= lt!609351 e!785309)))

(declare-fun c!128771 () Bool)

(assert (=> b!1386203 (= c!128771 e!785311)))

(declare-fun res!927543 () Bool)

(assert (=> b!1386203 (=> (not res!927543) (not e!785311))))

(assert (=> b!1386203 (= res!927543 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386204 () Bool)

(declare-fun lt!609352 () Unit!46234)

(assert (=> b!1386204 (= e!785309 lt!609352)))

(declare-fun lt!609350 () Unit!46234)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94816 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46234)

(assert (=> b!1386204 (= lt!609350 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10145 0))(
  ( (MissingZero!10145 (index!42950 (_ BitVec 32))) (Found!10145 (index!42951 (_ BitVec 32))) (Intermediate!10145 (undefined!10957 Bool) (index!42952 (_ BitVec 32)) (x!124573 (_ BitVec 32))) (Undefined!10145) (MissingVacant!10145 (index!42953 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94816 (_ BitVec 32)) SeekEntryResult!10145)

(assert (=> b!1386204 (= (seekEntryOrOpen!0 (select (arr!45780 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45780 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94817 (store (arr!45780 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46331 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94816 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46234)

(assert (=> b!1386204 (= lt!609352 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1386204 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386205 () Bool)

(declare-fun res!927545 () Bool)

(assert (=> b!1386205 (=> (not res!927545) (not e!785312))))

(assert (=> b!1386205 (= res!927545 (validKeyInArray!0 (select (arr!45780 a!2938) i!1065)))))

(declare-fun b!1386200 () Bool)

(declare-fun Unit!46236 () Unit!46234)

(assert (=> b!1386200 (= e!785309 Unit!46236)))

(declare-fun res!927542 () Bool)

(assert (=> start!118622 (=> (not res!927542) (not e!785312))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118622 (= res!927542 (validMask!0 mask!2987))))

(assert (=> start!118622 e!785312))

(assert (=> start!118622 true))

(declare-fun array_inv!34725 (array!94816) Bool)

(assert (=> start!118622 (array_inv!34725 a!2938)))

(assert (= (and start!118622 res!927542) b!1386199))

(assert (= (and b!1386199 res!927546) b!1386205))

(assert (= (and b!1386205 res!927545) b!1386202))

(assert (= (and b!1386202 res!927540) b!1386197))

(assert (= (and b!1386197 res!927541) b!1386201))

(assert (= (and b!1386201 res!927544) b!1386203))

(assert (= (and b!1386203 res!927543) b!1386198))

(assert (= (and b!1386203 c!128771) b!1386204))

(assert (= (and b!1386203 (not c!128771)) b!1386200))

(declare-fun m!1271603 () Bool)

(assert (=> b!1386198 m!1271603))

(assert (=> b!1386198 m!1271603))

(declare-fun m!1271605 () Bool)

(assert (=> b!1386198 m!1271605))

(declare-fun m!1271607 () Bool)

(assert (=> b!1386201 m!1271607))

(declare-fun m!1271609 () Bool)

(assert (=> b!1386204 m!1271609))

(declare-fun m!1271611 () Bool)

(assert (=> b!1386204 m!1271611))

(assert (=> b!1386204 m!1271611))

(declare-fun m!1271613 () Bool)

(assert (=> b!1386204 m!1271613))

(declare-fun m!1271615 () Bool)

(assert (=> b!1386204 m!1271615))

(declare-fun m!1271617 () Bool)

(assert (=> b!1386204 m!1271617))

(assert (=> b!1386204 m!1271603))

(declare-fun m!1271619 () Bool)

(assert (=> b!1386204 m!1271619))

(assert (=> b!1386204 m!1271603))

(declare-fun m!1271621 () Bool)

(assert (=> b!1386204 m!1271621))

(declare-fun m!1271623 () Bool)

(assert (=> b!1386202 m!1271623))

(declare-fun m!1271625 () Bool)

(assert (=> b!1386197 m!1271625))

(assert (=> b!1386205 m!1271607))

(assert (=> b!1386205 m!1271607))

(declare-fun m!1271627 () Bool)

(assert (=> b!1386205 m!1271627))

(declare-fun m!1271629 () Bool)

(assert (=> start!118622 m!1271629))

(declare-fun m!1271631 () Bool)

(assert (=> start!118622 m!1271631))

(push 1)

(assert (not start!118622))

(assert (not b!1386198))

(assert (not b!1386202))

(assert (not b!1386197))

(assert (not b!1386204))

(assert (not b!1386205))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

