; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118402 () Bool)

(assert start!118402)

(declare-fun b!1384325 () Bool)

(declare-datatypes ((Unit!46113 0))(
  ( (Unit!46114) )
))
(declare-fun e!784466 () Unit!46113)

(declare-fun lt!608820 () Unit!46113)

(assert (=> b!1384325 (= e!784466 lt!608820)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94623 0))(
  ( (array!94624 (arr!45685 (Array (_ BitVec 32) (_ BitVec 64))) (size!46236 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94623)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun lt!608819 () Unit!46113)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94623 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46113)

(assert (=> b!1384325 (= lt!608819 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10099 0))(
  ( (MissingZero!10099 (index!42766 (_ BitVec 32))) (Found!10099 (index!42767 (_ BitVec 32))) (Intermediate!10099 (undefined!10911 Bool) (index!42768 (_ BitVec 32)) (x!124279 (_ BitVec 32))) (Undefined!10099) (MissingVacant!10099 (index!42769 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94623 (_ BitVec 32)) SeekEntryResult!10099)

(assert (=> b!1384325 (= (seekEntryOrOpen!0 (select (arr!45685 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45685 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94624 (store (arr!45685 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46236 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94623 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46113)

(assert (=> b!1384325 (= lt!608820 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94623 (_ BitVec 32)) Bool)

(assert (=> b!1384325 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384326 () Bool)

(declare-fun e!784468 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384326 (= e!784468 (validKeyInArray!0 (select (arr!45685 a!2938) startIndex!16)))))

(declare-fun b!1384327 () Bool)

(declare-fun res!925881 () Bool)

(declare-fun e!784469 () Bool)

(assert (=> b!1384327 (=> (not res!925881) (not e!784469))))

(assert (=> b!1384327 (= res!925881 (validKeyInArray!0 (select (arr!45685 a!2938) i!1065)))))

(declare-fun b!1384329 () Bool)

(declare-fun res!925879 () Bool)

(assert (=> b!1384329 (=> (not res!925879) (not e!784469))))

(assert (=> b!1384329 (= res!925879 (and (not (= (select (arr!45685 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45685 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384330 () Bool)

(declare-fun res!925878 () Bool)

(assert (=> b!1384330 (=> (not res!925878) (not e!784469))))

(declare-datatypes ((List!32393 0))(
  ( (Nil!32390) (Cons!32389 (h!33598 (_ BitVec 64)) (t!47094 List!32393)) )
))
(declare-fun arrayNoDuplicates!0 (array!94623 (_ BitVec 32) List!32393) Bool)

(assert (=> b!1384330 (= res!925878 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32390))))

(declare-fun b!1384331 () Bool)

(declare-fun res!925882 () Bool)

(assert (=> b!1384331 (=> (not res!925882) (not e!784469))))

(assert (=> b!1384331 (= res!925882 (and (= (size!46236 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46236 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46236 a!2938))))))

(declare-fun b!1384332 () Bool)

(declare-fun Unit!46115 () Unit!46113)

(assert (=> b!1384332 (= e!784466 Unit!46115)))

(declare-fun b!1384333 () Bool)

(declare-fun res!925880 () Bool)

(assert (=> b!1384333 (=> (not res!925880) (not e!784469))))

(assert (=> b!1384333 (= res!925880 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384328 () Bool)

(assert (=> b!1384328 (= e!784469 false)))

(declare-fun lt!608821 () Unit!46113)

(assert (=> b!1384328 (= lt!608821 e!784466)))

(declare-fun c!128666 () Bool)

(assert (=> b!1384328 (= c!128666 e!784468)))

(declare-fun res!925883 () Bool)

(assert (=> b!1384328 (=> (not res!925883) (not e!784468))))

(assert (=> b!1384328 (= res!925883 (not (= startIndex!16 i!1065)))))

(declare-fun res!925884 () Bool)

(assert (=> start!118402 (=> (not res!925884) (not e!784469))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118402 (= res!925884 (validMask!0 mask!2987))))

(assert (=> start!118402 e!784469))

(assert (=> start!118402 true))

(declare-fun array_inv!34630 (array!94623) Bool)

(assert (=> start!118402 (array_inv!34630 a!2938)))

(assert (= (and start!118402 res!925884) b!1384331))

(assert (= (and b!1384331 res!925882) b!1384327))

(assert (= (and b!1384327 res!925881) b!1384330))

(assert (= (and b!1384330 res!925878) b!1384333))

(assert (= (and b!1384333 res!925880) b!1384329))

(assert (= (and b!1384329 res!925879) b!1384328))

(assert (= (and b!1384328 res!925883) b!1384326))

(assert (= (and b!1384328 c!128666) b!1384325))

(assert (= (and b!1384328 (not c!128666)) b!1384332))

(declare-fun m!1269623 () Bool)

(assert (=> b!1384333 m!1269623))

(declare-fun m!1269625 () Bool)

(assert (=> b!1384327 m!1269625))

(assert (=> b!1384327 m!1269625))

(declare-fun m!1269627 () Bool)

(assert (=> b!1384327 m!1269627))

(declare-fun m!1269629 () Bool)

(assert (=> b!1384326 m!1269629))

(assert (=> b!1384326 m!1269629))

(declare-fun m!1269631 () Bool)

(assert (=> b!1384326 m!1269631))

(assert (=> b!1384329 m!1269625))

(declare-fun m!1269633 () Bool)

(assert (=> b!1384330 m!1269633))

(declare-fun m!1269635 () Bool)

(assert (=> start!118402 m!1269635))

(declare-fun m!1269637 () Bool)

(assert (=> start!118402 m!1269637))

(declare-fun m!1269639 () Bool)

(assert (=> b!1384325 m!1269639))

(declare-fun m!1269641 () Bool)

(assert (=> b!1384325 m!1269641))

(assert (=> b!1384325 m!1269641))

(declare-fun m!1269643 () Bool)

(assert (=> b!1384325 m!1269643))

(declare-fun m!1269645 () Bool)

(assert (=> b!1384325 m!1269645))

(declare-fun m!1269647 () Bool)

(assert (=> b!1384325 m!1269647))

(assert (=> b!1384325 m!1269629))

(declare-fun m!1269649 () Bool)

(assert (=> b!1384325 m!1269649))

(assert (=> b!1384325 m!1269629))

(declare-fun m!1269651 () Bool)

(assert (=> b!1384325 m!1269651))

(push 1)

(assert (not b!1384333))

(assert (not b!1384330))

(assert (not b!1384326))

(assert (not start!118402))

(assert (not b!1384325))

(assert (not b!1384327))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

