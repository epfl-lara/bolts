; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118632 () Bool)

(assert start!118632)

(declare-fun b!1386332 () Bool)

(declare-fun res!927647 () Bool)

(declare-fun e!785372 () Bool)

(assert (=> b!1386332 (=> (not res!927647) (not e!785372))))

(declare-datatypes ((array!94826 0))(
  ( (array!94827 (arr!45785 (Array (_ BitVec 32) (_ BitVec 64))) (size!46336 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94826)

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1386332 (= res!927647 (and (not (= (select (arr!45785 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45785 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386333 () Bool)

(declare-fun res!927650 () Bool)

(assert (=> b!1386333 (=> (not res!927650) (not e!785372))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386333 (= res!927650 (validKeyInArray!0 (select (arr!45785 a!2938) i!1065)))))

(declare-fun b!1386334 () Bool)

(declare-fun e!785371 () Bool)

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1386334 (= e!785371 (validKeyInArray!0 (select (arr!45785 a!2938) startIndex!16)))))

(declare-fun b!1386335 () Bool)

(declare-fun res!927651 () Bool)

(assert (=> b!1386335 (=> (not res!927651) (not e!785372))))

(declare-datatypes ((List!32493 0))(
  ( (Nil!32490) (Cons!32489 (h!33698 (_ BitVec 64)) (t!47194 List!32493)) )
))
(declare-fun arrayNoDuplicates!0 (array!94826 (_ BitVec 32) List!32493) Bool)

(assert (=> b!1386335 (= res!927651 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32490))))

(declare-fun b!1386336 () Bool)

(declare-fun res!927649 () Bool)

(assert (=> b!1386336 (=> (not res!927649) (not e!785372))))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1386336 (= res!927649 (and (= (size!46336 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46336 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46336 a!2938))))))

(declare-fun res!927645 () Bool)

(assert (=> start!118632 (=> (not res!927645) (not e!785372))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118632 (= res!927645 (validMask!0 mask!2987))))

(assert (=> start!118632 e!785372))

(assert (=> start!118632 true))

(declare-fun array_inv!34730 (array!94826) Bool)

(assert (=> start!118632 (array_inv!34730 a!2938)))

(declare-fun b!1386337 () Bool)

(assert (=> b!1386337 (= e!785372 false)))

(declare-datatypes ((Unit!46249 0))(
  ( (Unit!46250) )
))
(declare-fun lt!609396 () Unit!46249)

(declare-fun e!785369 () Unit!46249)

(assert (=> b!1386337 (= lt!609396 e!785369)))

(declare-fun c!128786 () Bool)

(assert (=> b!1386337 (= c!128786 e!785371)))

(declare-fun res!927648 () Bool)

(assert (=> b!1386337 (=> (not res!927648) (not e!785371))))

(assert (=> b!1386337 (= res!927648 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386338 () Bool)

(declare-fun res!927646 () Bool)

(assert (=> b!1386338 (=> (not res!927646) (not e!785372))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94826 (_ BitVec 32)) Bool)

(assert (=> b!1386338 (= res!927646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386339 () Bool)

(declare-fun lt!609395 () Unit!46249)

(assert (=> b!1386339 (= e!785369 lt!609395)))

(declare-fun lt!609397 () Unit!46249)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94826 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46249)

(assert (=> b!1386339 (= lt!609397 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10150 0))(
  ( (MissingZero!10150 (index!42970 (_ BitVec 32))) (Found!10150 (index!42971 (_ BitVec 32))) (Intermediate!10150 (undefined!10962 Bool) (index!42972 (_ BitVec 32)) (x!124594 (_ BitVec 32))) (Undefined!10150) (MissingVacant!10150 (index!42973 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94826 (_ BitVec 32)) SeekEntryResult!10150)

(assert (=> b!1386339 (= (seekEntryOrOpen!0 (select (arr!45785 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45785 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94827 (store (arr!45785 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46336 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94826 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46249)

(assert (=> b!1386339 (= lt!609395 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1386339 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386340 () Bool)

(declare-fun Unit!46251 () Unit!46249)

(assert (=> b!1386340 (= e!785369 Unit!46251)))

(assert (= (and start!118632 res!927645) b!1386336))

(assert (= (and b!1386336 res!927649) b!1386333))

(assert (= (and b!1386333 res!927650) b!1386335))

(assert (= (and b!1386335 res!927651) b!1386338))

(assert (= (and b!1386338 res!927646) b!1386332))

(assert (= (and b!1386332 res!927647) b!1386337))

(assert (= (and b!1386337 res!927648) b!1386334))

(assert (= (and b!1386337 c!128786) b!1386339))

(assert (= (and b!1386337 (not c!128786)) b!1386340))

(declare-fun m!1271753 () Bool)

(assert (=> b!1386338 m!1271753))

(declare-fun m!1271755 () Bool)

(assert (=> start!118632 m!1271755))

(declare-fun m!1271757 () Bool)

(assert (=> start!118632 m!1271757))

(declare-fun m!1271759 () Bool)

(assert (=> b!1386333 m!1271759))

(assert (=> b!1386333 m!1271759))

(declare-fun m!1271761 () Bool)

(assert (=> b!1386333 m!1271761))

(declare-fun m!1271763 () Bool)

(assert (=> b!1386334 m!1271763))

(assert (=> b!1386334 m!1271763))

(declare-fun m!1271765 () Bool)

(assert (=> b!1386334 m!1271765))

(declare-fun m!1271767 () Bool)

(assert (=> b!1386335 m!1271767))

(assert (=> b!1386332 m!1271759))

(declare-fun m!1271769 () Bool)

(assert (=> b!1386339 m!1271769))

(declare-fun m!1271771 () Bool)

(assert (=> b!1386339 m!1271771))

(assert (=> b!1386339 m!1271771))

(declare-fun m!1271773 () Bool)

(assert (=> b!1386339 m!1271773))

(declare-fun m!1271775 () Bool)

(assert (=> b!1386339 m!1271775))

(declare-fun m!1271777 () Bool)

(assert (=> b!1386339 m!1271777))

(assert (=> b!1386339 m!1271763))

(declare-fun m!1271779 () Bool)

(assert (=> b!1386339 m!1271779))

(assert (=> b!1386339 m!1271763))

(declare-fun m!1271781 () Bool)

(assert (=> b!1386339 m!1271781))

(check-sat (not b!1386339) (not b!1386333) (not b!1386335) (not b!1386338) (not start!118632) (not b!1386334))
