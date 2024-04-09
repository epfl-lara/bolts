; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118644 () Bool)

(assert start!118644)

(declare-fun b!1386494 () Bool)

(declare-datatypes ((Unit!46267 0))(
  ( (Unit!46268) )
))
(declare-fun e!785441 () Unit!46267)

(declare-fun Unit!46269 () Unit!46267)

(assert (=> b!1386494 (= e!785441 Unit!46269)))

(declare-fun b!1386495 () Bool)

(declare-fun e!785442 () Bool)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-datatypes ((array!94838 0))(
  ( (array!94839 (arr!45791 (Array (_ BitVec 32) (_ BitVec 64))) (size!46342 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94838)

(assert (=> b!1386495 (= e!785442 (and (bvslt startIndex!16 (bvsub (size!46342 a!2938) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))))

(declare-fun lt!609451 () Unit!46267)

(assert (=> b!1386495 (= lt!609451 e!785441)))

(declare-fun c!128804 () Bool)

(declare-fun e!785444 () Bool)

(assert (=> b!1386495 (= c!128804 e!785444)))

(declare-fun res!927776 () Bool)

(assert (=> b!1386495 (=> (not res!927776) (not e!785444))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1386495 (= res!927776 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386496 () Bool)

(declare-fun res!927774 () Bool)

(assert (=> b!1386496 (=> (not res!927774) (not e!785442))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386496 (= res!927774 (validKeyInArray!0 (select (arr!45791 a!2938) i!1065)))))

(declare-fun res!927775 () Bool)

(assert (=> start!118644 (=> (not res!927775) (not e!785442))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118644 (= res!927775 (validMask!0 mask!2987))))

(assert (=> start!118644 e!785442))

(assert (=> start!118644 true))

(declare-fun array_inv!34736 (array!94838) Bool)

(assert (=> start!118644 (array_inv!34736 a!2938)))

(declare-fun b!1386497 () Bool)

(assert (=> b!1386497 (= e!785444 (validKeyInArray!0 (select (arr!45791 a!2938) startIndex!16)))))

(declare-fun b!1386498 () Bool)

(declare-fun res!927773 () Bool)

(assert (=> b!1386498 (=> (not res!927773) (not e!785442))))

(assert (=> b!1386498 (= res!927773 (and (= (size!46342 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46342 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46342 a!2938))))))

(declare-fun b!1386499 () Bool)

(declare-fun res!927772 () Bool)

(assert (=> b!1386499 (=> (not res!927772) (not e!785442))))

(assert (=> b!1386499 (= res!927772 (and (not (= (select (arr!45791 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45791 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386500 () Bool)

(declare-fun res!927777 () Bool)

(assert (=> b!1386500 (=> (not res!927777) (not e!785442))))

(declare-datatypes ((List!32499 0))(
  ( (Nil!32496) (Cons!32495 (h!33704 (_ BitVec 64)) (t!47200 List!32499)) )
))
(declare-fun arrayNoDuplicates!0 (array!94838 (_ BitVec 32) List!32499) Bool)

(assert (=> b!1386500 (= res!927777 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32496))))

(declare-fun b!1386501 () Bool)

(declare-fun res!927771 () Bool)

(assert (=> b!1386501 (=> (not res!927771) (not e!785442))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94838 (_ BitVec 32)) Bool)

(assert (=> b!1386501 (= res!927771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386502 () Bool)

(declare-fun lt!609450 () Unit!46267)

(assert (=> b!1386502 (= e!785441 lt!609450)))

(declare-fun lt!609449 () Unit!46267)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94838 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46267)

(assert (=> b!1386502 (= lt!609449 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10156 0))(
  ( (MissingZero!10156 (index!42994 (_ BitVec 32))) (Found!10156 (index!42995 (_ BitVec 32))) (Intermediate!10156 (undefined!10968 Bool) (index!42996 (_ BitVec 32)) (x!124616 (_ BitVec 32))) (Undefined!10156) (MissingVacant!10156 (index!42997 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94838 (_ BitVec 32)) SeekEntryResult!10156)

(assert (=> b!1386502 (= (seekEntryOrOpen!0 (select (arr!45791 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45791 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94839 (store (arr!45791 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46342 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94838 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46267)

(assert (=> b!1386502 (= lt!609450 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1386502 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(assert (= (and start!118644 res!927775) b!1386498))

(assert (= (and b!1386498 res!927773) b!1386496))

(assert (= (and b!1386496 res!927774) b!1386500))

(assert (= (and b!1386500 res!927777) b!1386501))

(assert (= (and b!1386501 res!927771) b!1386499))

(assert (= (and b!1386499 res!927772) b!1386495))

(assert (= (and b!1386495 res!927776) b!1386497))

(assert (= (and b!1386495 c!128804) b!1386502))

(assert (= (and b!1386495 (not c!128804)) b!1386494))

(declare-fun m!1271933 () Bool)

(assert (=> b!1386502 m!1271933))

(declare-fun m!1271935 () Bool)

(assert (=> b!1386502 m!1271935))

(assert (=> b!1386502 m!1271935))

(declare-fun m!1271937 () Bool)

(assert (=> b!1386502 m!1271937))

(declare-fun m!1271939 () Bool)

(assert (=> b!1386502 m!1271939))

(declare-fun m!1271941 () Bool)

(assert (=> b!1386502 m!1271941))

(declare-fun m!1271943 () Bool)

(assert (=> b!1386502 m!1271943))

(declare-fun m!1271945 () Bool)

(assert (=> b!1386502 m!1271945))

(assert (=> b!1386502 m!1271943))

(declare-fun m!1271947 () Bool)

(assert (=> b!1386502 m!1271947))

(declare-fun m!1271949 () Bool)

(assert (=> b!1386501 m!1271949))

(declare-fun m!1271951 () Bool)

(assert (=> b!1386496 m!1271951))

(assert (=> b!1386496 m!1271951))

(declare-fun m!1271953 () Bool)

(assert (=> b!1386496 m!1271953))

(declare-fun m!1271955 () Bool)

(assert (=> b!1386500 m!1271955))

(assert (=> b!1386497 m!1271943))

(assert (=> b!1386497 m!1271943))

(declare-fun m!1271957 () Bool)

(assert (=> b!1386497 m!1271957))

(declare-fun m!1271959 () Bool)

(assert (=> start!118644 m!1271959))

(declare-fun m!1271961 () Bool)

(assert (=> start!118644 m!1271961))

(assert (=> b!1386499 m!1271951))

(check-sat (not b!1386500) (not b!1386497) (not b!1386501) (not start!118644) (not b!1386502) (not b!1386496))
(check-sat)
