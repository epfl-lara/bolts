; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118348 () Bool)

(assert start!118348)

(declare-fun b!1383610 () Bool)

(declare-fun res!925313 () Bool)

(declare-fun e!784157 () Bool)

(assert (=> b!1383610 (=> (not res!925313) (not e!784157))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94569 0))(
  ( (array!94570 (arr!45658 (Array (_ BitVec 32) (_ BitVec 64))) (size!46209 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94569)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1383610 (= res!925313 (and (= (size!46209 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46209 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46209 a!2938))))))

(declare-fun res!925316 () Bool)

(assert (=> start!118348 (=> (not res!925316) (not e!784157))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118348 (= res!925316 (validMask!0 mask!2987))))

(assert (=> start!118348 e!784157))

(assert (=> start!118348 true))

(declare-fun array_inv!34603 (array!94569) Bool)

(assert (=> start!118348 (array_inv!34603 a!2938)))

(declare-fun b!1383611 () Bool)

(declare-fun res!925314 () Bool)

(assert (=> b!1383611 (=> (not res!925314) (not e!784157))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383611 (= res!925314 (validKeyInArray!0 (select (arr!45658 a!2938) i!1065)))))

(declare-fun b!1383612 () Bool)

(declare-fun res!925311 () Bool)

(assert (=> b!1383612 (=> (not res!925311) (not e!784157))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94569 (_ BitVec 32)) Bool)

(assert (=> b!1383612 (= res!925311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383613 () Bool)

(declare-fun res!925317 () Bool)

(assert (=> b!1383613 (=> (not res!925317) (not e!784157))))

(assert (=> b!1383613 (= res!925317 (and (not (= (select (arr!45658 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45658 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1383614 () Bool)

(declare-fun res!925315 () Bool)

(assert (=> b!1383614 (=> (not res!925315) (not e!784157))))

(assert (=> b!1383614 (= res!925315 (validKeyInArray!0 (select (arr!45658 a!2938) startIndex!16)))))

(declare-fun b!1383615 () Bool)

(declare-fun res!925312 () Bool)

(assert (=> b!1383615 (=> (not res!925312) (not e!784157))))

(declare-datatypes ((List!32366 0))(
  ( (Nil!32363) (Cons!32362 (h!33571 (_ BitVec 64)) (t!47067 List!32366)) )
))
(declare-fun arrayNoDuplicates!0 (array!94569 (_ BitVec 32) List!32366) Bool)

(assert (=> b!1383615 (= res!925312 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32363))))

(declare-fun b!1383616 () Bool)

(assert (=> b!1383616 (= e!784157 (not true))))

(declare-datatypes ((SeekEntryResult!10072 0))(
  ( (MissingZero!10072 (index!42658 (_ BitVec 32))) (Found!10072 (index!42659 (_ BitVec 32))) (Intermediate!10072 (undefined!10884 Bool) (index!42660 (_ BitVec 32)) (x!124180 (_ BitVec 32))) (Undefined!10072) (MissingVacant!10072 (index!42661 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94569 (_ BitVec 32)) SeekEntryResult!10072)

(assert (=> b!1383616 (= (seekEntryOrOpen!0 (select (arr!45658 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45658 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94570 (store (arr!45658 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46209 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46035 0))(
  ( (Unit!46036) )
))
(declare-fun lt!608590 () Unit!46035)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94569 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46035)

(assert (=> b!1383616 (= lt!608590 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(assert (= (and start!118348 res!925316) b!1383610))

(assert (= (and b!1383610 res!925313) b!1383611))

(assert (= (and b!1383611 res!925314) b!1383615))

(assert (= (and b!1383615 res!925312) b!1383612))

(assert (= (and b!1383612 res!925311) b!1383613))

(assert (= (and b!1383613 res!925317) b!1383614))

(assert (= (and b!1383614 res!925315) b!1383616))

(declare-fun m!1268825 () Bool)

(assert (=> b!1383611 m!1268825))

(assert (=> b!1383611 m!1268825))

(declare-fun m!1268827 () Bool)

(assert (=> b!1383611 m!1268827))

(declare-fun m!1268829 () Bool)

(assert (=> b!1383616 m!1268829))

(assert (=> b!1383616 m!1268829))

(declare-fun m!1268831 () Bool)

(assert (=> b!1383616 m!1268831))

(declare-fun m!1268833 () Bool)

(assert (=> b!1383616 m!1268833))

(declare-fun m!1268835 () Bool)

(assert (=> b!1383616 m!1268835))

(declare-fun m!1268837 () Bool)

(assert (=> b!1383616 m!1268837))

(assert (=> b!1383616 m!1268837))

(declare-fun m!1268839 () Bool)

(assert (=> b!1383616 m!1268839))

(declare-fun m!1268841 () Bool)

(assert (=> start!118348 m!1268841))

(declare-fun m!1268843 () Bool)

(assert (=> start!118348 m!1268843))

(declare-fun m!1268845 () Bool)

(assert (=> b!1383612 m!1268845))

(assert (=> b!1383613 m!1268825))

(declare-fun m!1268847 () Bool)

(assert (=> b!1383615 m!1268847))

(assert (=> b!1383614 m!1268837))

(assert (=> b!1383614 m!1268837))

(declare-fun m!1268849 () Bool)

(assert (=> b!1383614 m!1268849))

(push 1)

(assert (not start!118348))

(assert (not b!1383616))

(assert (not b!1383611))

(assert (not b!1383614))

(assert (not b!1383615))

(assert (not b!1383612))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

