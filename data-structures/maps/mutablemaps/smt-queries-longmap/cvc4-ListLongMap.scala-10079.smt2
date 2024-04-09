; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118652 () Bool)

(assert start!118652)

(declare-fun b!1386602 () Bool)

(declare-fun res!927861 () Bool)

(declare-fun e!785491 () Bool)

(assert (=> b!1386602 (=> (not res!927861) (not e!785491))))

(declare-datatypes ((array!94846 0))(
  ( (array!94847 (arr!45795 (Array (_ BitVec 32) (_ BitVec 64))) (size!46346 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94846)

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1386602 (= res!927861 (and (not (= (select (arr!45795 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45795 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386603 () Bool)

(declare-fun res!927855 () Bool)

(assert (=> b!1386603 (=> (not res!927855) (not e!785491))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386603 (= res!927855 (validKeyInArray!0 (select (arr!45795 a!2938) i!1065)))))

(declare-fun b!1386604 () Bool)

(declare-fun res!927859 () Bool)

(assert (=> b!1386604 (=> (not res!927859) (not e!785491))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94846 (_ BitVec 32)) Bool)

(assert (=> b!1386604 (= res!927859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386605 () Bool)

(declare-datatypes ((Unit!46279 0))(
  ( (Unit!46280) )
))
(declare-fun e!785490 () Unit!46279)

(declare-fun lt!609487 () Unit!46279)

(assert (=> b!1386605 (= e!785490 lt!609487)))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun lt!609485 () Unit!46279)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94846 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46279)

(assert (=> b!1386605 (= lt!609485 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10160 0))(
  ( (MissingZero!10160 (index!43010 (_ BitVec 32))) (Found!10160 (index!43011 (_ BitVec 32))) (Intermediate!10160 (undefined!10972 Bool) (index!43012 (_ BitVec 32)) (x!124628 (_ BitVec 32))) (Undefined!10160) (MissingVacant!10160 (index!43013 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94846 (_ BitVec 32)) SeekEntryResult!10160)

(assert (=> b!1386605 (= (seekEntryOrOpen!0 (select (arr!45795 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45795 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94847 (store (arr!45795 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46346 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94846 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46279)

(assert (=> b!1386605 (= lt!609487 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1386605 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386606 () Bool)

(assert (=> b!1386606 (= e!785491 false)))

(declare-fun lt!609486 () Unit!46279)

(assert (=> b!1386606 (= lt!609486 e!785490)))

(declare-fun c!128816 () Bool)

(declare-fun e!785489 () Bool)

(assert (=> b!1386606 (= c!128816 e!785489)))

(declare-fun res!927856 () Bool)

(assert (=> b!1386606 (=> (not res!927856) (not e!785489))))

(assert (=> b!1386606 (= res!927856 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386607 () Bool)

(declare-fun Unit!46281 () Unit!46279)

(assert (=> b!1386607 (= e!785490 Unit!46281)))

(declare-fun b!1386608 () Bool)

(declare-fun res!927857 () Bool)

(assert (=> b!1386608 (=> (not res!927857) (not e!785491))))

(assert (=> b!1386608 (= res!927857 (and (= (size!46346 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46346 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46346 a!2938))))))

(declare-fun res!927858 () Bool)

(assert (=> start!118652 (=> (not res!927858) (not e!785491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118652 (= res!927858 (validMask!0 mask!2987))))

(assert (=> start!118652 e!785491))

(assert (=> start!118652 true))

(declare-fun array_inv!34740 (array!94846) Bool)

(assert (=> start!118652 (array_inv!34740 a!2938)))

(declare-fun b!1386609 () Bool)

(declare-fun res!927860 () Bool)

(assert (=> b!1386609 (=> (not res!927860) (not e!785491))))

(declare-datatypes ((List!32503 0))(
  ( (Nil!32500) (Cons!32499 (h!33708 (_ BitVec 64)) (t!47204 List!32503)) )
))
(declare-fun arrayNoDuplicates!0 (array!94846 (_ BitVec 32) List!32503) Bool)

(assert (=> b!1386609 (= res!927860 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32500))))

(declare-fun b!1386610 () Bool)

(assert (=> b!1386610 (= e!785489 (validKeyInArray!0 (select (arr!45795 a!2938) startIndex!16)))))

(assert (= (and start!118652 res!927858) b!1386608))

(assert (= (and b!1386608 res!927857) b!1386603))

(assert (= (and b!1386603 res!927855) b!1386609))

(assert (= (and b!1386609 res!927860) b!1386604))

(assert (= (and b!1386604 res!927859) b!1386602))

(assert (= (and b!1386602 res!927861) b!1386606))

(assert (= (and b!1386606 res!927856) b!1386610))

(assert (= (and b!1386606 c!128816) b!1386605))

(assert (= (and b!1386606 (not c!128816)) b!1386607))

(declare-fun m!1272053 () Bool)

(assert (=> b!1386602 m!1272053))

(declare-fun m!1272055 () Bool)

(assert (=> b!1386604 m!1272055))

(declare-fun m!1272057 () Bool)

(assert (=> start!118652 m!1272057))

(declare-fun m!1272059 () Bool)

(assert (=> start!118652 m!1272059))

(declare-fun m!1272061 () Bool)

(assert (=> b!1386609 m!1272061))

(declare-fun m!1272063 () Bool)

(assert (=> b!1386610 m!1272063))

(assert (=> b!1386610 m!1272063))

(declare-fun m!1272065 () Bool)

(assert (=> b!1386610 m!1272065))

(declare-fun m!1272067 () Bool)

(assert (=> b!1386605 m!1272067))

(declare-fun m!1272069 () Bool)

(assert (=> b!1386605 m!1272069))

(assert (=> b!1386605 m!1272069))

(declare-fun m!1272071 () Bool)

(assert (=> b!1386605 m!1272071))

(declare-fun m!1272073 () Bool)

(assert (=> b!1386605 m!1272073))

(declare-fun m!1272075 () Bool)

(assert (=> b!1386605 m!1272075))

(assert (=> b!1386605 m!1272063))

(declare-fun m!1272077 () Bool)

(assert (=> b!1386605 m!1272077))

(assert (=> b!1386605 m!1272063))

(declare-fun m!1272079 () Bool)

(assert (=> b!1386605 m!1272079))

(assert (=> b!1386603 m!1272053))

(assert (=> b!1386603 m!1272053))

(declare-fun m!1272081 () Bool)

(assert (=> b!1386603 m!1272081))

(push 1)

(assert (not b!1386603))

(assert (not b!1386605))

(assert (not b!1386609))

(assert (not b!1386610))

(assert (not b!1386604))

(assert (not start!118652))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

