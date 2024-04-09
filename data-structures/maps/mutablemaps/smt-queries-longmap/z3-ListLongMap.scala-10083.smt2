; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118674 () Bool)

(assert start!118674)

(declare-fun b!1386899 () Bool)

(declare-fun res!928089 () Bool)

(declare-fun e!785622 () Bool)

(assert (=> b!1386899 (=> (not res!928089) (not e!785622))))

(declare-datatypes ((array!94868 0))(
  ( (array!94869 (arr!45806 (Array (_ BitVec 32) (_ BitVec 64))) (size!46357 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94868)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94868 (_ BitVec 32)) Bool)

(assert (=> b!1386899 (= res!928089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!928088 () Bool)

(assert (=> start!118674 (=> (not res!928088) (not e!785622))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118674 (= res!928088 (validMask!0 mask!2987))))

(assert (=> start!118674 e!785622))

(assert (=> start!118674 true))

(declare-fun array_inv!34751 (array!94868) Bool)

(assert (=> start!118674 (array_inv!34751 a!2938)))

(declare-fun b!1386900 () Bool)

(declare-datatypes ((Unit!46312 0))(
  ( (Unit!46313) )
))
(declare-fun e!785621 () Unit!46312)

(declare-fun lt!609586 () Unit!46312)

(assert (=> b!1386900 (= e!785621 lt!609586)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun lt!609585 () Unit!46312)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94868 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46312)

(assert (=> b!1386900 (= lt!609585 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10171 0))(
  ( (MissingZero!10171 (index!43054 (_ BitVec 32))) (Found!10171 (index!43055 (_ BitVec 32))) (Intermediate!10171 (undefined!10983 Bool) (index!43056 (_ BitVec 32)) (x!124671 (_ BitVec 32))) (Undefined!10171) (MissingVacant!10171 (index!43057 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94868 (_ BitVec 32)) SeekEntryResult!10171)

(assert (=> b!1386900 (= (seekEntryOrOpen!0 (select (arr!45806 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45806 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94869 (store (arr!45806 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46357 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94868 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46312)

(assert (=> b!1386900 (= lt!609586 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1386900 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386901 () Bool)

(declare-fun Unit!46314 () Unit!46312)

(assert (=> b!1386901 (= e!785621 Unit!46314)))

(declare-fun b!1386902 () Bool)

(declare-fun res!928091 () Bool)

(assert (=> b!1386902 (=> (not res!928091) (not e!785622))))

(assert (=> b!1386902 (= res!928091 (and (not (= (select (arr!45806 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45806 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386903 () Bool)

(declare-fun res!928086 () Bool)

(assert (=> b!1386903 (=> (not res!928086) (not e!785622))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386903 (= res!928086 (validKeyInArray!0 (select (arr!45806 a!2938) i!1065)))))

(declare-fun b!1386904 () Bool)

(assert (=> b!1386904 (= e!785622 (and (bvslt startIndex!16 (bvsub (size!46357 a!2938) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000) (bvsge (bvsub (size!46357 a!2938) (bvadd #b00000000000000000000000000000001 startIndex!16)) (bvsub (size!46357 a!2938) startIndex!16))))))

(declare-fun lt!609584 () Unit!46312)

(assert (=> b!1386904 (= lt!609584 e!785621)))

(declare-fun c!128849 () Bool)

(declare-fun e!785624 () Bool)

(assert (=> b!1386904 (= c!128849 e!785624)))

(declare-fun res!928092 () Bool)

(assert (=> b!1386904 (=> (not res!928092) (not e!785624))))

(assert (=> b!1386904 (= res!928092 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386905 () Bool)

(declare-fun res!928087 () Bool)

(assert (=> b!1386905 (=> (not res!928087) (not e!785622))))

(declare-datatypes ((List!32514 0))(
  ( (Nil!32511) (Cons!32510 (h!33719 (_ BitVec 64)) (t!47215 List!32514)) )
))
(declare-fun arrayNoDuplicates!0 (array!94868 (_ BitVec 32) List!32514) Bool)

(assert (=> b!1386905 (= res!928087 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32511))))

(declare-fun b!1386906 () Bool)

(assert (=> b!1386906 (= e!785624 (validKeyInArray!0 (select (arr!45806 a!2938) startIndex!16)))))

(declare-fun b!1386907 () Bool)

(declare-fun res!928090 () Bool)

(assert (=> b!1386907 (=> (not res!928090) (not e!785622))))

(assert (=> b!1386907 (= res!928090 (and (= (size!46357 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46357 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46357 a!2938))))))

(assert (= (and start!118674 res!928088) b!1386907))

(assert (= (and b!1386907 res!928090) b!1386903))

(assert (= (and b!1386903 res!928086) b!1386905))

(assert (= (and b!1386905 res!928087) b!1386899))

(assert (= (and b!1386899 res!928089) b!1386902))

(assert (= (and b!1386902 res!928091) b!1386904))

(assert (= (and b!1386904 res!928092) b!1386906))

(assert (= (and b!1386904 c!128849) b!1386900))

(assert (= (and b!1386904 (not c!128849)) b!1386901))

(declare-fun m!1272383 () Bool)

(assert (=> b!1386902 m!1272383))

(declare-fun m!1272385 () Bool)

(assert (=> b!1386900 m!1272385))

(declare-fun m!1272387 () Bool)

(assert (=> b!1386900 m!1272387))

(assert (=> b!1386900 m!1272387))

(declare-fun m!1272389 () Bool)

(assert (=> b!1386900 m!1272389))

(declare-fun m!1272391 () Bool)

(assert (=> b!1386900 m!1272391))

(declare-fun m!1272393 () Bool)

(assert (=> b!1386900 m!1272393))

(declare-fun m!1272395 () Bool)

(assert (=> b!1386900 m!1272395))

(declare-fun m!1272397 () Bool)

(assert (=> b!1386900 m!1272397))

(assert (=> b!1386900 m!1272395))

(declare-fun m!1272399 () Bool)

(assert (=> b!1386900 m!1272399))

(declare-fun m!1272401 () Bool)

(assert (=> b!1386905 m!1272401))

(assert (=> b!1386906 m!1272395))

(assert (=> b!1386906 m!1272395))

(declare-fun m!1272403 () Bool)

(assert (=> b!1386906 m!1272403))

(declare-fun m!1272405 () Bool)

(assert (=> b!1386899 m!1272405))

(declare-fun m!1272407 () Bool)

(assert (=> start!118674 m!1272407))

(declare-fun m!1272409 () Bool)

(assert (=> start!118674 m!1272409))

(assert (=> b!1386903 m!1272383))

(assert (=> b!1386903 m!1272383))

(declare-fun m!1272411 () Bool)

(assert (=> b!1386903 m!1272411))

(check-sat (not start!118674) (not b!1386903) (not b!1386899) (not b!1386905) (not b!1386900) (not b!1386906))
(check-sat)
