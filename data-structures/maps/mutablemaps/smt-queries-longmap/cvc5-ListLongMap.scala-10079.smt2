; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118648 () Bool)

(assert start!118648)

(declare-fun b!1386548 () Bool)

(declare-fun res!927815 () Bool)

(declare-fun e!785466 () Bool)

(assert (=> b!1386548 (=> (not res!927815) (not e!785466))))

(declare-datatypes ((array!94842 0))(
  ( (array!94843 (arr!45793 (Array (_ BitVec 32) (_ BitVec 64))) (size!46344 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94842)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94842 (_ BitVec 32)) Bool)

(assert (=> b!1386548 (= res!927815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386549 () Bool)

(declare-fun e!785468 () Bool)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386549 (= e!785468 (validKeyInArray!0 (select (arr!45793 a!2938) startIndex!16)))))

(declare-fun b!1386550 () Bool)

(declare-fun res!927813 () Bool)

(assert (=> b!1386550 (=> (not res!927813) (not e!785466))))

(declare-datatypes ((List!32501 0))(
  ( (Nil!32498) (Cons!32497 (h!33706 (_ BitVec 64)) (t!47202 List!32501)) )
))
(declare-fun arrayNoDuplicates!0 (array!94842 (_ BitVec 32) List!32501) Bool)

(assert (=> b!1386550 (= res!927813 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32498))))

(declare-fun b!1386551 () Bool)

(declare-fun res!927814 () Bool)

(assert (=> b!1386551 (=> (not res!927814) (not e!785466))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1386551 (= res!927814 (validKeyInArray!0 (select (arr!45793 a!2938) i!1065)))))

(declare-fun b!1386552 () Bool)

(declare-datatypes ((Unit!46273 0))(
  ( (Unit!46274) )
))
(declare-fun e!785467 () Unit!46273)

(declare-fun lt!609467 () Unit!46273)

(assert (=> b!1386552 (= e!785467 lt!609467)))

(declare-fun lt!609469 () Unit!46273)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94842 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46273)

(assert (=> b!1386552 (= lt!609469 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10158 0))(
  ( (MissingZero!10158 (index!43002 (_ BitVec 32))) (Found!10158 (index!43003 (_ BitVec 32))) (Intermediate!10158 (undefined!10970 Bool) (index!43004 (_ BitVec 32)) (x!124626 (_ BitVec 32))) (Undefined!10158) (MissingVacant!10158 (index!43005 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94842 (_ BitVec 32)) SeekEntryResult!10158)

(assert (=> b!1386552 (= (seekEntryOrOpen!0 (select (arr!45793 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45793 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94843 (store (arr!45793 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46344 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94842 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46273)

(assert (=> b!1386552 (= lt!609467 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1386552 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun res!927818 () Bool)

(assert (=> start!118648 (=> (not res!927818) (not e!785466))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118648 (= res!927818 (validMask!0 mask!2987))))

(assert (=> start!118648 e!785466))

(assert (=> start!118648 true))

(declare-fun array_inv!34738 (array!94842) Bool)

(assert (=> start!118648 (array_inv!34738 a!2938)))

(declare-fun b!1386553 () Bool)

(assert (=> b!1386553 (= e!785466 false)))

(declare-fun lt!609468 () Unit!46273)

(assert (=> b!1386553 (= lt!609468 e!785467)))

(declare-fun c!128810 () Bool)

(assert (=> b!1386553 (= c!128810 e!785468)))

(declare-fun res!927816 () Bool)

(assert (=> b!1386553 (=> (not res!927816) (not e!785468))))

(assert (=> b!1386553 (= res!927816 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386554 () Bool)

(declare-fun res!927817 () Bool)

(assert (=> b!1386554 (=> (not res!927817) (not e!785466))))

(assert (=> b!1386554 (= res!927817 (and (not (= (select (arr!45793 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45793 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386555 () Bool)

(declare-fun res!927819 () Bool)

(assert (=> b!1386555 (=> (not res!927819) (not e!785466))))

(assert (=> b!1386555 (= res!927819 (and (= (size!46344 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46344 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46344 a!2938))))))

(declare-fun b!1386556 () Bool)

(declare-fun Unit!46275 () Unit!46273)

(assert (=> b!1386556 (= e!785467 Unit!46275)))

(assert (= (and start!118648 res!927818) b!1386555))

(assert (= (and b!1386555 res!927819) b!1386551))

(assert (= (and b!1386551 res!927814) b!1386550))

(assert (= (and b!1386550 res!927813) b!1386548))

(assert (= (and b!1386548 res!927815) b!1386554))

(assert (= (and b!1386554 res!927817) b!1386553))

(assert (= (and b!1386553 res!927816) b!1386549))

(assert (= (and b!1386553 c!128810) b!1386552))

(assert (= (and b!1386553 (not c!128810)) b!1386556))

(declare-fun m!1271993 () Bool)

(assert (=> b!1386548 m!1271993))

(declare-fun m!1271995 () Bool)

(assert (=> b!1386554 m!1271995))

(assert (=> b!1386551 m!1271995))

(assert (=> b!1386551 m!1271995))

(declare-fun m!1271997 () Bool)

(assert (=> b!1386551 m!1271997))

(declare-fun m!1271999 () Bool)

(assert (=> start!118648 m!1271999))

(declare-fun m!1272001 () Bool)

(assert (=> start!118648 m!1272001))

(declare-fun m!1272003 () Bool)

(assert (=> b!1386552 m!1272003))

(declare-fun m!1272005 () Bool)

(assert (=> b!1386552 m!1272005))

(assert (=> b!1386552 m!1272005))

(declare-fun m!1272007 () Bool)

(assert (=> b!1386552 m!1272007))

(declare-fun m!1272009 () Bool)

(assert (=> b!1386552 m!1272009))

(declare-fun m!1272011 () Bool)

(assert (=> b!1386552 m!1272011))

(declare-fun m!1272013 () Bool)

(assert (=> b!1386552 m!1272013))

(declare-fun m!1272015 () Bool)

(assert (=> b!1386552 m!1272015))

(assert (=> b!1386552 m!1272013))

(declare-fun m!1272017 () Bool)

(assert (=> b!1386552 m!1272017))

(assert (=> b!1386549 m!1272013))

(assert (=> b!1386549 m!1272013))

(declare-fun m!1272019 () Bool)

(assert (=> b!1386549 m!1272019))

(declare-fun m!1272021 () Bool)

(assert (=> b!1386550 m!1272021))

(push 1)

(assert (not b!1386551))

(assert (not b!1386550))

(assert (not b!1386548))

(assert (not start!118648))

(assert (not b!1386552))

(assert (not b!1386549))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

