; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118364 () Bool)

(assert start!118364)

(declare-fun b!1383812 () Bool)

(declare-datatypes ((Unit!46056 0))(
  ( (Unit!46057) )
))
(declare-fun e!784239 () Unit!46056)

(declare-fun Unit!46058 () Unit!46056)

(assert (=> b!1383812 (= e!784239 Unit!46058)))

(declare-fun b!1383813 () Bool)

(declare-fun e!784241 () Bool)

(assert (=> b!1383813 (= e!784241 false)))

(declare-fun lt!608648 () Unit!46056)

(assert (=> b!1383813 (= lt!608648 e!784239)))

(declare-fun c!128609 () Bool)

(declare-fun e!784238 () Bool)

(assert (=> b!1383813 (= c!128609 e!784238)))

(declare-fun res!925485 () Bool)

(assert (=> b!1383813 (=> (not res!925485) (not e!784238))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1383813 (= res!925485 (not (= startIndex!16 i!1065)))))

(declare-fun res!925483 () Bool)

(assert (=> start!118364 (=> (not res!925483) (not e!784241))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118364 (= res!925483 (validMask!0 mask!2987))))

(assert (=> start!118364 e!784241))

(assert (=> start!118364 true))

(declare-datatypes ((array!94585 0))(
  ( (array!94586 (arr!45666 (Array (_ BitVec 32) (_ BitVec 64))) (size!46217 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94585)

(declare-fun array_inv!34611 (array!94585) Bool)

(assert (=> start!118364 (array_inv!34611 a!2938)))

(declare-fun b!1383814 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383814 (= e!784238 (validKeyInArray!0 (select (arr!45666 a!2938) startIndex!16)))))

(declare-fun b!1383815 () Bool)

(declare-fun res!925479 () Bool)

(assert (=> b!1383815 (=> (not res!925479) (not e!784241))))

(assert (=> b!1383815 (= res!925479 (validKeyInArray!0 (select (arr!45666 a!2938) i!1065)))))

(declare-fun b!1383816 () Bool)

(declare-fun lt!608650 () Unit!46056)

(assert (=> b!1383816 (= e!784239 lt!608650)))

(declare-fun lt!608649 () Unit!46056)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94585 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46056)

(assert (=> b!1383816 (= lt!608649 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10080 0))(
  ( (MissingZero!10080 (index!42690 (_ BitVec 32))) (Found!10080 (index!42691 (_ BitVec 32))) (Intermediate!10080 (undefined!10892 Bool) (index!42692 (_ BitVec 32)) (x!124204 (_ BitVec 32))) (Undefined!10080) (MissingVacant!10080 (index!42693 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94585 (_ BitVec 32)) SeekEntryResult!10080)

(assert (=> b!1383816 (= (seekEntryOrOpen!0 (select (arr!45666 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45666 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94586 (store (arr!45666 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46217 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94585 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46056)

(assert (=> b!1383816 (= lt!608650 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94585 (_ BitVec 32)) Bool)

(assert (=> b!1383816 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1383817 () Bool)

(declare-fun res!925482 () Bool)

(assert (=> b!1383817 (=> (not res!925482) (not e!784241))))

(declare-datatypes ((List!32374 0))(
  ( (Nil!32371) (Cons!32370 (h!33579 (_ BitVec 64)) (t!47075 List!32374)) )
))
(declare-fun arrayNoDuplicates!0 (array!94585 (_ BitVec 32) List!32374) Bool)

(assert (=> b!1383817 (= res!925482 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32371))))

(declare-fun b!1383818 () Bool)

(declare-fun res!925484 () Bool)

(assert (=> b!1383818 (=> (not res!925484) (not e!784241))))

(assert (=> b!1383818 (= res!925484 (and (= (size!46217 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46217 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46217 a!2938))))))

(declare-fun b!1383819 () Bool)

(declare-fun res!925480 () Bool)

(assert (=> b!1383819 (=> (not res!925480) (not e!784241))))

(assert (=> b!1383819 (= res!925480 (and (not (= (select (arr!45666 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45666 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1383820 () Bool)

(declare-fun res!925481 () Bool)

(assert (=> b!1383820 (=> (not res!925481) (not e!784241))))

(assert (=> b!1383820 (= res!925481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118364 res!925483) b!1383818))

(assert (= (and b!1383818 res!925484) b!1383815))

(assert (= (and b!1383815 res!925479) b!1383817))

(assert (= (and b!1383817 res!925482) b!1383820))

(assert (= (and b!1383820 res!925481) b!1383819))

(assert (= (and b!1383819 res!925480) b!1383813))

(assert (= (and b!1383813 res!925485) b!1383814))

(assert (= (and b!1383813 c!128609) b!1383816))

(assert (= (and b!1383813 (not c!128609)) b!1383812))

(declare-fun m!1269053 () Bool)

(assert (=> b!1383819 m!1269053))

(declare-fun m!1269055 () Bool)

(assert (=> b!1383816 m!1269055))

(declare-fun m!1269057 () Bool)

(assert (=> b!1383816 m!1269057))

(assert (=> b!1383816 m!1269057))

(declare-fun m!1269059 () Bool)

(assert (=> b!1383816 m!1269059))

(declare-fun m!1269061 () Bool)

(assert (=> b!1383816 m!1269061))

(declare-fun m!1269063 () Bool)

(assert (=> b!1383816 m!1269063))

(declare-fun m!1269065 () Bool)

(assert (=> b!1383816 m!1269065))

(declare-fun m!1269067 () Bool)

(assert (=> b!1383816 m!1269067))

(assert (=> b!1383816 m!1269065))

(declare-fun m!1269069 () Bool)

(assert (=> b!1383816 m!1269069))

(assert (=> b!1383815 m!1269053))

(assert (=> b!1383815 m!1269053))

(declare-fun m!1269071 () Bool)

(assert (=> b!1383815 m!1269071))

(declare-fun m!1269073 () Bool)

(assert (=> b!1383820 m!1269073))

(assert (=> b!1383814 m!1269065))

(assert (=> b!1383814 m!1269065))

(declare-fun m!1269075 () Bool)

(assert (=> b!1383814 m!1269075))

(declare-fun m!1269077 () Bool)

(assert (=> start!118364 m!1269077))

(declare-fun m!1269079 () Bool)

(assert (=> start!118364 m!1269079))

(declare-fun m!1269081 () Bool)

(assert (=> b!1383817 m!1269081))

(push 1)

(assert (not b!1383815))

(assert (not b!1383816))

(assert (not b!1383817))

(assert (not b!1383820))

(assert (not start!118364))

(assert (not b!1383814))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

