; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118638 () Bool)

(assert start!118638)

(declare-fun b!1386414 () Bool)

(declare-fun res!927709 () Bool)

(declare-fun e!785407 () Bool)

(assert (=> b!1386414 (=> (not res!927709) (not e!785407))))

(declare-datatypes ((array!94832 0))(
  ( (array!94833 (arr!45788 (Array (_ BitVec 32) (_ BitVec 64))) (size!46339 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94832)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386414 (= res!927709 (validKeyInArray!0 (select (arr!45788 a!2938) i!1065)))))

(declare-fun b!1386415 () Bool)

(assert (=> b!1386415 (= e!785407 false)))

(declare-datatypes ((Unit!46258 0))(
  ( (Unit!46259) )
))
(declare-fun lt!609424 () Unit!46258)

(declare-fun e!785405 () Unit!46258)

(assert (=> b!1386415 (= lt!609424 e!785405)))

(declare-fun c!128795 () Bool)

(declare-fun e!785408 () Bool)

(assert (=> b!1386415 (= c!128795 e!785408)))

(declare-fun res!927713 () Bool)

(assert (=> b!1386415 (=> (not res!927713) (not e!785408))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1386415 (= res!927713 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386416 () Bool)

(declare-fun Unit!46260 () Unit!46258)

(assert (=> b!1386416 (= e!785405 Unit!46260)))

(declare-fun b!1386417 () Bool)

(declare-fun res!927714 () Bool)

(assert (=> b!1386417 (=> (not res!927714) (not e!785407))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94832 (_ BitVec 32)) Bool)

(assert (=> b!1386417 (= res!927714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386418 () Bool)

(declare-fun lt!609422 () Unit!46258)

(assert (=> b!1386418 (= e!785405 lt!609422)))

(declare-fun lt!609423 () Unit!46258)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94832 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46258)

(assert (=> b!1386418 (= lt!609423 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10153 0))(
  ( (MissingZero!10153 (index!42982 (_ BitVec 32))) (Found!10153 (index!42983 (_ BitVec 32))) (Intermediate!10153 (undefined!10965 Bool) (index!42984 (_ BitVec 32)) (x!124605 (_ BitVec 32))) (Undefined!10153) (MissingVacant!10153 (index!42985 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94832 (_ BitVec 32)) SeekEntryResult!10153)

(assert (=> b!1386418 (= (seekEntryOrOpen!0 (select (arr!45788 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45788 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94833 (store (arr!45788 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46339 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94832 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46258)

(assert (=> b!1386418 (= lt!609422 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1386418 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386419 () Bool)

(declare-fun res!927712 () Bool)

(assert (=> b!1386419 (=> (not res!927712) (not e!785407))))

(assert (=> b!1386419 (= res!927712 (and (not (= (select (arr!45788 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45788 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386413 () Bool)

(declare-fun res!927710 () Bool)

(assert (=> b!1386413 (=> (not res!927710) (not e!785407))))

(declare-datatypes ((List!32496 0))(
  ( (Nil!32493) (Cons!32492 (h!33701 (_ BitVec 64)) (t!47197 List!32496)) )
))
(declare-fun arrayNoDuplicates!0 (array!94832 (_ BitVec 32) List!32496) Bool)

(assert (=> b!1386413 (= res!927710 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32493))))

(declare-fun res!927711 () Bool)

(assert (=> start!118638 (=> (not res!927711) (not e!785407))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118638 (= res!927711 (validMask!0 mask!2987))))

(assert (=> start!118638 e!785407))

(assert (=> start!118638 true))

(declare-fun array_inv!34733 (array!94832) Bool)

(assert (=> start!118638 (array_inv!34733 a!2938)))

(declare-fun b!1386420 () Bool)

(assert (=> b!1386420 (= e!785408 (validKeyInArray!0 (select (arr!45788 a!2938) startIndex!16)))))

(declare-fun b!1386421 () Bool)

(declare-fun res!927708 () Bool)

(assert (=> b!1386421 (=> (not res!927708) (not e!785407))))

(assert (=> b!1386421 (= res!927708 (and (= (size!46339 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46339 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46339 a!2938))))))

(assert (= (and start!118638 res!927711) b!1386421))

(assert (= (and b!1386421 res!927708) b!1386414))

(assert (= (and b!1386414 res!927709) b!1386413))

(assert (= (and b!1386413 res!927710) b!1386417))

(assert (= (and b!1386417 res!927714) b!1386419))

(assert (= (and b!1386419 res!927712) b!1386415))

(assert (= (and b!1386415 res!927713) b!1386420))

(assert (= (and b!1386415 c!128795) b!1386418))

(assert (= (and b!1386415 (not c!128795)) b!1386416))

(declare-fun m!1271843 () Bool)

(assert (=> b!1386414 m!1271843))

(assert (=> b!1386414 m!1271843))

(declare-fun m!1271845 () Bool)

(assert (=> b!1386414 m!1271845))

(declare-fun m!1271847 () Bool)

(assert (=> b!1386413 m!1271847))

(declare-fun m!1271849 () Bool)

(assert (=> b!1386418 m!1271849))

(declare-fun m!1271851 () Bool)

(assert (=> b!1386418 m!1271851))

(assert (=> b!1386418 m!1271851))

(declare-fun m!1271853 () Bool)

(assert (=> b!1386418 m!1271853))

(declare-fun m!1271855 () Bool)

(assert (=> b!1386418 m!1271855))

(declare-fun m!1271857 () Bool)

(assert (=> b!1386418 m!1271857))

(declare-fun m!1271859 () Bool)

(assert (=> b!1386418 m!1271859))

(declare-fun m!1271861 () Bool)

(assert (=> b!1386418 m!1271861))

(assert (=> b!1386418 m!1271859))

(declare-fun m!1271863 () Bool)

(assert (=> b!1386418 m!1271863))

(assert (=> b!1386419 m!1271843))

(assert (=> b!1386420 m!1271859))

(assert (=> b!1386420 m!1271859))

(declare-fun m!1271865 () Bool)

(assert (=> b!1386420 m!1271865))

(declare-fun m!1271867 () Bool)

(assert (=> start!118638 m!1271867))

(declare-fun m!1271869 () Bool)

(assert (=> start!118638 m!1271869))

(declare-fun m!1271871 () Bool)

(assert (=> b!1386417 m!1271871))

(check-sat (not b!1386413) (not b!1386414) (not b!1386417) (not b!1386420) (not b!1386418) (not start!118638))
