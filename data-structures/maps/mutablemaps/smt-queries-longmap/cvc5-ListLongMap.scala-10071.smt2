; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118600 () Bool)

(assert start!118600)

(declare-fun b!1385950 () Bool)

(declare-fun res!927312 () Bool)

(declare-fun e!785227 () Bool)

(assert (=> b!1385950 (=> (not res!927312) (not e!785227))))

(declare-datatypes ((array!94794 0))(
  ( (array!94795 (arr!45769 (Array (_ BitVec 32) (_ BitVec 64))) (size!46320 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94794)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385950 (= res!927312 (validKeyInArray!0 (select (arr!45769 a!2938) i!1065)))))

(declare-fun b!1385951 () Bool)

(declare-fun res!927309 () Bool)

(assert (=> b!1385951 (=> (not res!927309) (not e!785227))))

(declare-datatypes ((List!32477 0))(
  ( (Nil!32474) (Cons!32473 (h!33682 (_ BitVec 64)) (t!47178 List!32477)) )
))
(declare-fun arrayNoDuplicates!0 (array!94794 (_ BitVec 32) List!32477) Bool)

(assert (=> b!1385951 (= res!927309 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32474))))

(declare-fun res!927311 () Bool)

(assert (=> start!118600 (=> (not res!927311) (not e!785227))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118600 (= res!927311 (validMask!0 mask!2987))))

(assert (=> start!118600 e!785227))

(assert (=> start!118600 true))

(declare-fun array_inv!34714 (array!94794) Bool)

(assert (=> start!118600 (array_inv!34714 a!2938)))

(declare-fun b!1385952 () Bool)

(declare-fun res!927310 () Bool)

(assert (=> b!1385952 (=> (not res!927310) (not e!785227))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385952 (= res!927310 (validKeyInArray!0 (select (arr!45769 a!2938) startIndex!16)))))

(declare-fun b!1385953 () Bool)

(declare-fun res!927313 () Bool)

(assert (=> b!1385953 (=> (not res!927313) (not e!785227))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94794 (_ BitVec 32)) Bool)

(assert (=> b!1385953 (= res!927313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385954 () Bool)

(declare-fun res!927315 () Bool)

(assert (=> b!1385954 (=> (not res!927315) (not e!785227))))

(assert (=> b!1385954 (= res!927315 (and (not (= (select (arr!45769 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45769 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1385955 () Bool)

(assert (=> b!1385955 (= e!785227 (not (bvsle #b00000000000000000000000000000000 (size!46320 a!2938))))))

(declare-datatypes ((SeekEntryResult!10134 0))(
  ( (MissingZero!10134 (index!42906 (_ BitVec 32))) (Found!10134 (index!42907 (_ BitVec 32))) (Intermediate!10134 (undefined!10946 Bool) (index!42908 (_ BitVec 32)) (x!124538 (_ BitVec 32))) (Undefined!10134) (MissingVacant!10134 (index!42909 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94794 (_ BitVec 32)) SeekEntryResult!10134)

(assert (=> b!1385955 (= (seekEntryOrOpen!0 (select (arr!45769 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45769 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94795 (store (arr!45769 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46320 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46210 0))(
  ( (Unit!46211) )
))
(declare-fun lt!609301 () Unit!46210)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94794 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46210)

(assert (=> b!1385955 (= lt!609301 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun b!1385956 () Bool)

(declare-fun res!927314 () Bool)

(assert (=> b!1385956 (=> (not res!927314) (not e!785227))))

(assert (=> b!1385956 (= res!927314 (and (= (size!46320 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46320 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46320 a!2938))))))

(assert (= (and start!118600 res!927311) b!1385956))

(assert (= (and b!1385956 res!927314) b!1385950))

(assert (= (and b!1385950 res!927312) b!1385951))

(assert (= (and b!1385951 res!927309) b!1385953))

(assert (= (and b!1385953 res!927313) b!1385954))

(assert (= (and b!1385954 res!927315) b!1385952))

(assert (= (and b!1385952 res!927310) b!1385955))

(declare-fun m!1271309 () Bool)

(assert (=> start!118600 m!1271309))

(declare-fun m!1271311 () Bool)

(assert (=> start!118600 m!1271311))

(declare-fun m!1271313 () Bool)

(assert (=> b!1385954 m!1271313))

(assert (=> b!1385950 m!1271313))

(assert (=> b!1385950 m!1271313))

(declare-fun m!1271315 () Bool)

(assert (=> b!1385950 m!1271315))

(declare-fun m!1271317 () Bool)

(assert (=> b!1385952 m!1271317))

(assert (=> b!1385952 m!1271317))

(declare-fun m!1271319 () Bool)

(assert (=> b!1385952 m!1271319))

(declare-fun m!1271321 () Bool)

(assert (=> b!1385953 m!1271321))

(declare-fun m!1271323 () Bool)

(assert (=> b!1385955 m!1271323))

(assert (=> b!1385955 m!1271323))

(declare-fun m!1271325 () Bool)

(assert (=> b!1385955 m!1271325))

(declare-fun m!1271327 () Bool)

(assert (=> b!1385955 m!1271327))

(declare-fun m!1271329 () Bool)

(assert (=> b!1385955 m!1271329))

(assert (=> b!1385955 m!1271317))

(assert (=> b!1385955 m!1271317))

(declare-fun m!1271331 () Bool)

(assert (=> b!1385955 m!1271331))

(declare-fun m!1271333 () Bool)

(assert (=> b!1385951 m!1271333))

(push 1)

