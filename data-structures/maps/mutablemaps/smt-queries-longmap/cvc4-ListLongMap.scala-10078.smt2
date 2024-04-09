; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118646 () Bool)

(assert start!118646)

(declare-fun b!1386521 () Bool)

(declare-fun res!927797 () Bool)

(declare-fun e!785453 () Bool)

(assert (=> b!1386521 (=> (not res!927797) (not e!785453))))

(declare-datatypes ((array!94840 0))(
  ( (array!94841 (arr!45792 (Array (_ BitVec 32) (_ BitVec 64))) (size!46343 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94840)

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1386521 (= res!927797 (and (not (= (select (arr!45792 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45792 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!927795 () Bool)

(assert (=> start!118646 (=> (not res!927795) (not e!785453))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118646 (= res!927795 (validMask!0 mask!2987))))

(assert (=> start!118646 e!785453))

(assert (=> start!118646 true))

(declare-fun array_inv!34737 (array!94840) Bool)

(assert (=> start!118646 (array_inv!34737 a!2938)))

(declare-fun b!1386522 () Bool)

(declare-fun e!785454 () Bool)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386522 (= e!785454 (validKeyInArray!0 (select (arr!45792 a!2938) startIndex!16)))))

(declare-fun b!1386523 () Bool)

(declare-datatypes ((Unit!46270 0))(
  ( (Unit!46271) )
))
(declare-fun e!785455 () Unit!46270)

(declare-fun Unit!46272 () Unit!46270)

(assert (=> b!1386523 (= e!785455 Unit!46272)))

(declare-fun b!1386524 () Bool)

(assert (=> b!1386524 (= e!785453 (and (bvslt startIndex!16 (bvsub (size!46343 a!2938) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))))

(declare-fun lt!609459 () Unit!46270)

(assert (=> b!1386524 (= lt!609459 e!785455)))

(declare-fun c!128807 () Bool)

(assert (=> b!1386524 (= c!128807 e!785454)))

(declare-fun res!927794 () Bool)

(assert (=> b!1386524 (=> (not res!927794) (not e!785454))))

(assert (=> b!1386524 (= res!927794 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386525 () Bool)

(declare-fun res!927792 () Bool)

(assert (=> b!1386525 (=> (not res!927792) (not e!785453))))

(declare-datatypes ((List!32500 0))(
  ( (Nil!32497) (Cons!32496 (h!33705 (_ BitVec 64)) (t!47201 List!32500)) )
))
(declare-fun arrayNoDuplicates!0 (array!94840 (_ BitVec 32) List!32500) Bool)

(assert (=> b!1386525 (= res!927792 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32497))))

(declare-fun b!1386526 () Bool)

(declare-fun res!927793 () Bool)

(assert (=> b!1386526 (=> (not res!927793) (not e!785453))))

(assert (=> b!1386526 (= res!927793 (validKeyInArray!0 (select (arr!45792 a!2938) i!1065)))))

(declare-fun b!1386527 () Bool)

(declare-fun res!927798 () Bool)

(assert (=> b!1386527 (=> (not res!927798) (not e!785453))))

(assert (=> b!1386527 (= res!927798 (and (= (size!46343 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46343 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46343 a!2938))))))

(declare-fun b!1386528 () Bool)

(declare-fun res!927796 () Bool)

(assert (=> b!1386528 (=> (not res!927796) (not e!785453))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94840 (_ BitVec 32)) Bool)

(assert (=> b!1386528 (= res!927796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386529 () Bool)

(declare-fun lt!609458 () Unit!46270)

(assert (=> b!1386529 (= e!785455 lt!609458)))

(declare-fun lt!609460 () Unit!46270)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94840 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46270)

(assert (=> b!1386529 (= lt!609460 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10157 0))(
  ( (MissingZero!10157 (index!42998 (_ BitVec 32))) (Found!10157 (index!42999 (_ BitVec 32))) (Intermediate!10157 (undefined!10969 Bool) (index!43000 (_ BitVec 32)) (x!124617 (_ BitVec 32))) (Undefined!10157) (MissingVacant!10157 (index!43001 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94840 (_ BitVec 32)) SeekEntryResult!10157)

(assert (=> b!1386529 (= (seekEntryOrOpen!0 (select (arr!45792 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45792 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94841 (store (arr!45792 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46343 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94840 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46270)

(assert (=> b!1386529 (= lt!609458 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1386529 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(assert (= (and start!118646 res!927795) b!1386527))

(assert (= (and b!1386527 res!927798) b!1386526))

(assert (= (and b!1386526 res!927793) b!1386525))

(assert (= (and b!1386525 res!927792) b!1386528))

(assert (= (and b!1386528 res!927796) b!1386521))

(assert (= (and b!1386521 res!927797) b!1386524))

(assert (= (and b!1386524 res!927794) b!1386522))

(assert (= (and b!1386524 c!128807) b!1386529))

(assert (= (and b!1386524 (not c!128807)) b!1386523))

(declare-fun m!1271963 () Bool)

(assert (=> b!1386522 m!1271963))

(assert (=> b!1386522 m!1271963))

(declare-fun m!1271965 () Bool)

(assert (=> b!1386522 m!1271965))

(declare-fun m!1271967 () Bool)

(assert (=> b!1386526 m!1271967))

(assert (=> b!1386526 m!1271967))

(declare-fun m!1271969 () Bool)

(assert (=> b!1386526 m!1271969))

(declare-fun m!1271971 () Bool)

(assert (=> b!1386528 m!1271971))

(assert (=> b!1386521 m!1271967))

(declare-fun m!1271973 () Bool)

(assert (=> start!118646 m!1271973))

(declare-fun m!1271975 () Bool)

(assert (=> start!118646 m!1271975))

(declare-fun m!1271977 () Bool)

(assert (=> b!1386529 m!1271977))

(declare-fun m!1271979 () Bool)

(assert (=> b!1386529 m!1271979))

(assert (=> b!1386529 m!1271979))

(declare-fun m!1271981 () Bool)

(assert (=> b!1386529 m!1271981))

(declare-fun m!1271983 () Bool)

(assert (=> b!1386529 m!1271983))

(declare-fun m!1271985 () Bool)

(assert (=> b!1386529 m!1271985))

(assert (=> b!1386529 m!1271963))

(declare-fun m!1271987 () Bool)

(assert (=> b!1386529 m!1271987))

(assert (=> b!1386529 m!1271963))

(declare-fun m!1271989 () Bool)

(assert (=> b!1386529 m!1271989))

(declare-fun m!1271991 () Bool)

(assert (=> b!1386525 m!1271991))

(push 1)

(assert (not b!1386522))

(assert (not b!1386528))

(assert (not b!1386529))

