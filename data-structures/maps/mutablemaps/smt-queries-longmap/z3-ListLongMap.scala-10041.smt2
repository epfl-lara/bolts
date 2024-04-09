; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118392 () Bool)

(assert start!118392)

(declare-fun b!1384190 () Bool)

(declare-fun res!925774 () Bool)

(declare-fun e!784409 () Bool)

(assert (=> b!1384190 (=> (not res!925774) (not e!784409))))

(declare-datatypes ((array!94613 0))(
  ( (array!94614 (arr!45680 (Array (_ BitVec 32) (_ BitVec 64))) (size!46231 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94613)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384190 (= res!925774 (validKeyInArray!0 (select (arr!45680 a!2938) i!1065)))))

(declare-fun b!1384191 () Bool)

(declare-fun res!925775 () Bool)

(assert (=> b!1384191 (=> (not res!925775) (not e!784409))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1384191 (= res!925775 (and (= (size!46231 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46231 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46231 a!2938))))))

(declare-fun b!1384192 () Bool)

(declare-fun e!784406 () Bool)

(assert (=> b!1384192 (= e!784406 (validKeyInArray!0 (select (arr!45680 a!2938) startIndex!16)))))

(declare-fun b!1384193 () Bool)

(assert (=> b!1384193 (= e!784409 false)))

(declare-datatypes ((Unit!46098 0))(
  ( (Unit!46099) )
))
(declare-fun lt!608774 () Unit!46098)

(declare-fun e!784407 () Unit!46098)

(assert (=> b!1384193 (= lt!608774 e!784407)))

(declare-fun c!128651 () Bool)

(assert (=> b!1384193 (= c!128651 e!784406)))

(declare-fun res!925776 () Bool)

(assert (=> b!1384193 (=> (not res!925776) (not e!784406))))

(assert (=> b!1384193 (= res!925776 (not (= startIndex!16 i!1065)))))

(declare-fun b!1384195 () Bool)

(declare-fun res!925773 () Bool)

(assert (=> b!1384195 (=> (not res!925773) (not e!784409))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94613 (_ BitVec 32)) Bool)

(assert (=> b!1384195 (= res!925773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384196 () Bool)

(declare-fun lt!608775 () Unit!46098)

(assert (=> b!1384196 (= e!784407 lt!608775)))

(declare-fun lt!608776 () Unit!46098)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94613 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46098)

(assert (=> b!1384196 (= lt!608776 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10094 0))(
  ( (MissingZero!10094 (index!42746 (_ BitVec 32))) (Found!10094 (index!42747 (_ BitVec 32))) (Intermediate!10094 (undefined!10906 Bool) (index!42748 (_ BitVec 32)) (x!124258 (_ BitVec 32))) (Undefined!10094) (MissingVacant!10094 (index!42749 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94613 (_ BitVec 32)) SeekEntryResult!10094)

(assert (=> b!1384196 (= (seekEntryOrOpen!0 (select (arr!45680 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45680 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94614 (store (arr!45680 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46231 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94613 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46098)

(assert (=> b!1384196 (= lt!608775 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384196 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384197 () Bool)

(declare-fun Unit!46100 () Unit!46098)

(assert (=> b!1384197 (= e!784407 Unit!46100)))

(declare-fun b!1384198 () Bool)

(declare-fun res!925778 () Bool)

(assert (=> b!1384198 (=> (not res!925778) (not e!784409))))

(declare-datatypes ((List!32388 0))(
  ( (Nil!32385) (Cons!32384 (h!33593 (_ BitVec 64)) (t!47089 List!32388)) )
))
(declare-fun arrayNoDuplicates!0 (array!94613 (_ BitVec 32) List!32388) Bool)

(assert (=> b!1384198 (= res!925778 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32385))))

(declare-fun b!1384194 () Bool)

(declare-fun res!925779 () Bool)

(assert (=> b!1384194 (=> (not res!925779) (not e!784409))))

(assert (=> b!1384194 (= res!925779 (and (not (= (select (arr!45680 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45680 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!925777 () Bool)

(assert (=> start!118392 (=> (not res!925777) (not e!784409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118392 (= res!925777 (validMask!0 mask!2987))))

(assert (=> start!118392 e!784409))

(assert (=> start!118392 true))

(declare-fun array_inv!34625 (array!94613) Bool)

(assert (=> start!118392 (array_inv!34625 a!2938)))

(assert (= (and start!118392 res!925777) b!1384191))

(assert (= (and b!1384191 res!925775) b!1384190))

(assert (= (and b!1384190 res!925774) b!1384198))

(assert (= (and b!1384198 res!925778) b!1384195))

(assert (= (and b!1384195 res!925773) b!1384194))

(assert (= (and b!1384194 res!925779) b!1384193))

(assert (= (and b!1384193 res!925776) b!1384192))

(assert (= (and b!1384193 c!128651) b!1384196))

(assert (= (and b!1384193 (not c!128651)) b!1384197))

(declare-fun m!1269473 () Bool)

(assert (=> b!1384190 m!1269473))

(assert (=> b!1384190 m!1269473))

(declare-fun m!1269475 () Bool)

(assert (=> b!1384190 m!1269475))

(declare-fun m!1269477 () Bool)

(assert (=> b!1384198 m!1269477))

(declare-fun m!1269479 () Bool)

(assert (=> start!118392 m!1269479))

(declare-fun m!1269481 () Bool)

(assert (=> start!118392 m!1269481))

(declare-fun m!1269483 () Bool)

(assert (=> b!1384196 m!1269483))

(declare-fun m!1269485 () Bool)

(assert (=> b!1384196 m!1269485))

(assert (=> b!1384196 m!1269485))

(declare-fun m!1269487 () Bool)

(assert (=> b!1384196 m!1269487))

(declare-fun m!1269489 () Bool)

(assert (=> b!1384196 m!1269489))

(declare-fun m!1269491 () Bool)

(assert (=> b!1384196 m!1269491))

(declare-fun m!1269493 () Bool)

(assert (=> b!1384196 m!1269493))

(declare-fun m!1269495 () Bool)

(assert (=> b!1384196 m!1269495))

(assert (=> b!1384196 m!1269493))

(declare-fun m!1269497 () Bool)

(assert (=> b!1384196 m!1269497))

(assert (=> b!1384194 m!1269473))

(declare-fun m!1269499 () Bool)

(assert (=> b!1384195 m!1269499))

(assert (=> b!1384192 m!1269493))

(assert (=> b!1384192 m!1269493))

(declare-fun m!1269501 () Bool)

(assert (=> b!1384192 m!1269501))

(check-sat (not b!1384195) (not b!1384190) (not b!1384198) (not b!1384196) (not b!1384192) (not start!118392))
