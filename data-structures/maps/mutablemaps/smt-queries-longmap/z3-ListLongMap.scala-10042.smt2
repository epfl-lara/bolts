; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118398 () Bool)

(assert start!118398)

(declare-fun b!1384271 () Bool)

(declare-fun res!925837 () Bool)

(declare-fun e!784445 () Bool)

(assert (=> b!1384271 (=> (not res!925837) (not e!784445))))

(declare-datatypes ((array!94619 0))(
  ( (array!94620 (arr!45683 (Array (_ BitVec 32) (_ BitVec 64))) (size!46234 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94619)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94619 (_ BitVec 32)) Bool)

(assert (=> b!1384271 (= res!925837 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384272 () Bool)

(declare-fun e!784442 () Bool)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384272 (= e!784442 (validKeyInArray!0 (select (arr!45683 a!2938) startIndex!16)))))

(declare-fun res!925841 () Bool)

(assert (=> start!118398 (=> (not res!925841) (not e!784445))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118398 (= res!925841 (validMask!0 mask!2987))))

(assert (=> start!118398 e!784445))

(assert (=> start!118398 true))

(declare-fun array_inv!34628 (array!94619) Bool)

(assert (=> start!118398 (array_inv!34628 a!2938)))

(declare-fun b!1384273 () Bool)

(declare-fun res!925838 () Bool)

(assert (=> b!1384273 (=> (not res!925838) (not e!784445))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1384273 (= res!925838 (validKeyInArray!0 (select (arr!45683 a!2938) i!1065)))))

(declare-fun b!1384274 () Bool)

(declare-fun res!925839 () Bool)

(assert (=> b!1384274 (=> (not res!925839) (not e!784445))))

(assert (=> b!1384274 (= res!925839 (and (= (size!46234 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46234 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46234 a!2938))))))

(declare-fun b!1384275 () Bool)

(assert (=> b!1384275 (= e!784445 false)))

(declare-datatypes ((Unit!46107 0))(
  ( (Unit!46108) )
))
(declare-fun lt!608802 () Unit!46107)

(declare-fun e!784444 () Unit!46107)

(assert (=> b!1384275 (= lt!608802 e!784444)))

(declare-fun c!128660 () Bool)

(assert (=> b!1384275 (= c!128660 e!784442)))

(declare-fun res!925840 () Bool)

(assert (=> b!1384275 (=> (not res!925840) (not e!784442))))

(assert (=> b!1384275 (= res!925840 (not (= startIndex!16 i!1065)))))

(declare-fun b!1384276 () Bool)

(declare-fun res!925842 () Bool)

(assert (=> b!1384276 (=> (not res!925842) (not e!784445))))

(assert (=> b!1384276 (= res!925842 (and (not (= (select (arr!45683 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45683 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384277 () Bool)

(declare-fun Unit!46109 () Unit!46107)

(assert (=> b!1384277 (= e!784444 Unit!46109)))

(declare-fun b!1384278 () Bool)

(declare-fun res!925836 () Bool)

(assert (=> b!1384278 (=> (not res!925836) (not e!784445))))

(declare-datatypes ((List!32391 0))(
  ( (Nil!32388) (Cons!32387 (h!33596 (_ BitVec 64)) (t!47092 List!32391)) )
))
(declare-fun arrayNoDuplicates!0 (array!94619 (_ BitVec 32) List!32391) Bool)

(assert (=> b!1384278 (= res!925836 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32388))))

(declare-fun b!1384279 () Bool)

(declare-fun lt!608801 () Unit!46107)

(assert (=> b!1384279 (= e!784444 lt!608801)))

(declare-fun lt!608803 () Unit!46107)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94619 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46107)

(assert (=> b!1384279 (= lt!608803 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10097 0))(
  ( (MissingZero!10097 (index!42758 (_ BitVec 32))) (Found!10097 (index!42759 (_ BitVec 32))) (Intermediate!10097 (undefined!10909 Bool) (index!42760 (_ BitVec 32)) (x!124269 (_ BitVec 32))) (Undefined!10097) (MissingVacant!10097 (index!42761 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94619 (_ BitVec 32)) SeekEntryResult!10097)

(assert (=> b!1384279 (= (seekEntryOrOpen!0 (select (arr!45683 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45683 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94620 (store (arr!45683 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46234 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94619 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46107)

(assert (=> b!1384279 (= lt!608801 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384279 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(assert (= (and start!118398 res!925841) b!1384274))

(assert (= (and b!1384274 res!925839) b!1384273))

(assert (= (and b!1384273 res!925838) b!1384278))

(assert (= (and b!1384278 res!925836) b!1384271))

(assert (= (and b!1384271 res!925837) b!1384276))

(assert (= (and b!1384276 res!925842) b!1384275))

(assert (= (and b!1384275 res!925840) b!1384272))

(assert (= (and b!1384275 c!128660) b!1384279))

(assert (= (and b!1384275 (not c!128660)) b!1384277))

(declare-fun m!1269563 () Bool)

(assert (=> b!1384279 m!1269563))

(declare-fun m!1269565 () Bool)

(assert (=> b!1384279 m!1269565))

(assert (=> b!1384279 m!1269565))

(declare-fun m!1269567 () Bool)

(assert (=> b!1384279 m!1269567))

(declare-fun m!1269569 () Bool)

(assert (=> b!1384279 m!1269569))

(declare-fun m!1269571 () Bool)

(assert (=> b!1384279 m!1269571))

(declare-fun m!1269573 () Bool)

(assert (=> b!1384279 m!1269573))

(declare-fun m!1269575 () Bool)

(assert (=> b!1384279 m!1269575))

(assert (=> b!1384279 m!1269573))

(declare-fun m!1269577 () Bool)

(assert (=> b!1384279 m!1269577))

(declare-fun m!1269579 () Bool)

(assert (=> start!118398 m!1269579))

(declare-fun m!1269581 () Bool)

(assert (=> start!118398 m!1269581))

(declare-fun m!1269583 () Bool)

(assert (=> b!1384273 m!1269583))

(assert (=> b!1384273 m!1269583))

(declare-fun m!1269585 () Bool)

(assert (=> b!1384273 m!1269585))

(declare-fun m!1269587 () Bool)

(assert (=> b!1384278 m!1269587))

(declare-fun m!1269589 () Bool)

(assert (=> b!1384271 m!1269589))

(assert (=> b!1384276 m!1269583))

(assert (=> b!1384272 m!1269573))

(assert (=> b!1384272 m!1269573))

(declare-fun m!1269591 () Bool)

(assert (=> b!1384272 m!1269591))

(check-sat (not b!1384279) (not b!1384278) (not b!1384271) (not start!118398) (not b!1384273) (not b!1384272))
