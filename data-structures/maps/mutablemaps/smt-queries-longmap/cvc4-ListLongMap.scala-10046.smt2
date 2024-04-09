; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118424 () Bool)

(assert start!118424)

(declare-fun b!1384648 () Bool)

(declare-fun res!926136 () Bool)

(declare-fun e!784626 () Bool)

(assert (=> b!1384648 (=> (not res!926136) (not e!784626))))

(declare-datatypes ((array!94645 0))(
  ( (array!94646 (arr!45696 (Array (_ BitVec 32) (_ BitVec 64))) (size!46247 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94645)

(declare-datatypes ((List!32404 0))(
  ( (Nil!32401) (Cons!32400 (h!33609 (_ BitVec 64)) (t!47105 List!32404)) )
))
(declare-fun arrayNoDuplicates!0 (array!94645 (_ BitVec 32) List!32404) Bool)

(assert (=> b!1384648 (= res!926136 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32401))))

(declare-fun b!1384649 () Bool)

(declare-fun res!926142 () Bool)

(assert (=> b!1384649 (=> (not res!926142) (not e!784626))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384649 (= res!926142 (validKeyInArray!0 (select (arr!45696 a!2938) i!1065)))))

(declare-fun b!1384650 () Bool)

(declare-datatypes ((Unit!46146 0))(
  ( (Unit!46147) )
))
(declare-fun e!784624 () Unit!46146)

(declare-fun Unit!46148 () Unit!46146)

(assert (=> b!1384650 (= e!784624 Unit!46148)))

(declare-fun b!1384651 () Bool)

(declare-fun res!926135 () Bool)

(assert (=> b!1384651 (=> (not res!926135) (not e!784626))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1384651 (= res!926135 (and (= (size!46247 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46247 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46247 a!2938))))))

(declare-fun b!1384652 () Bool)

(declare-fun res!926141 () Bool)

(assert (=> b!1384652 (=> (not res!926141) (not e!784626))))

(assert (=> b!1384652 (= res!926141 (and (not (= (select (arr!45696 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45696 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!926138 () Bool)

(assert (=> start!118424 (=> (not res!926138) (not e!784626))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118424 (= res!926138 (validMask!0 mask!2987))))

(assert (=> start!118424 e!784626))

(assert (=> start!118424 true))

(declare-fun array_inv!34641 (array!94645) Bool)

(assert (=> start!118424 (array_inv!34641 a!2938)))

(declare-fun b!1384653 () Bool)

(declare-fun e!784625 () Bool)

(assert (=> b!1384653 (= e!784626 e!784625)))

(declare-fun res!926139 () Bool)

(assert (=> b!1384653 (=> (not res!926139) (not e!784625))))

(assert (=> b!1384653 (= res!926139 (and (bvslt startIndex!16 (bvsub (size!46247 a!2938) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))))

(declare-fun lt!608972 () Unit!46146)

(assert (=> b!1384653 (= lt!608972 e!784624)))

(declare-fun c!128699 () Bool)

(declare-fun e!784628 () Bool)

(assert (=> b!1384653 (= c!128699 e!784628)))

(declare-fun res!926137 () Bool)

(assert (=> b!1384653 (=> (not res!926137) (not e!784628))))

(assert (=> b!1384653 (= res!926137 (not (= startIndex!16 i!1065)))))

(declare-fun lt!608970 () array!94645)

(assert (=> b!1384653 (= lt!608970 (array!94646 (store (arr!45696 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46247 a!2938)))))

(declare-fun b!1384654 () Bool)

(declare-fun res!926140 () Bool)

(assert (=> b!1384654 (=> (not res!926140) (not e!784626))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94645 (_ BitVec 32)) Bool)

(assert (=> b!1384654 (= res!926140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384655 () Bool)

(assert (=> b!1384655 (= e!784625 (not true))))

(assert (=> b!1384655 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) lt!608970 mask!2987)))

(declare-fun lt!608973 () Unit!46146)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94645 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46146)

(assert (=> b!1384655 (= lt!608973 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987))))

(declare-fun b!1384656 () Bool)

(assert (=> b!1384656 (= e!784628 (validKeyInArray!0 (select (arr!45696 a!2938) startIndex!16)))))

(declare-fun b!1384657 () Bool)

(declare-fun lt!608971 () Unit!46146)

(assert (=> b!1384657 (= e!784624 lt!608971)))

(declare-fun lt!608974 () Unit!46146)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94645 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46146)

(assert (=> b!1384657 (= lt!608974 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10110 0))(
  ( (MissingZero!10110 (index!42810 (_ BitVec 32))) (Found!10110 (index!42811 (_ BitVec 32))) (Intermediate!10110 (undefined!10922 Bool) (index!42812 (_ BitVec 32)) (x!124314 (_ BitVec 32))) (Undefined!10110) (MissingVacant!10110 (index!42813 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94645 (_ BitVec 32)) SeekEntryResult!10110)

(assert (=> b!1384657 (= (seekEntryOrOpen!0 (select (arr!45696 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45696 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!608970 mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94645 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46146)

(assert (=> b!1384657 (= lt!608971 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384657 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(assert (= (and start!118424 res!926138) b!1384651))

(assert (= (and b!1384651 res!926135) b!1384649))

(assert (= (and b!1384649 res!926142) b!1384648))

(assert (= (and b!1384648 res!926136) b!1384654))

(assert (= (and b!1384654 res!926140) b!1384652))

(assert (= (and b!1384652 res!926141) b!1384653))

(assert (= (and b!1384653 res!926137) b!1384656))

(assert (= (and b!1384653 c!128699) b!1384657))

(assert (= (and b!1384653 (not c!128699)) b!1384650))

(assert (= (and b!1384653 res!926139) b!1384655))

(declare-fun m!1269985 () Bool)

(assert (=> b!1384657 m!1269985))

(declare-fun m!1269987 () Bool)

(assert (=> b!1384657 m!1269987))

(declare-fun m!1269989 () Bool)

(assert (=> b!1384657 m!1269989))

(assert (=> b!1384657 m!1269987))

(declare-fun m!1269991 () Bool)

(assert (=> b!1384657 m!1269991))

(declare-fun m!1269993 () Bool)

(assert (=> b!1384657 m!1269993))

(declare-fun m!1269995 () Bool)

(assert (=> b!1384657 m!1269995))

(declare-fun m!1269997 () Bool)

(assert (=> b!1384657 m!1269997))

(assert (=> b!1384657 m!1269995))

(declare-fun m!1269999 () Bool)

(assert (=> b!1384657 m!1269999))

(assert (=> b!1384653 m!1269989))

(assert (=> b!1384656 m!1269995))

(assert (=> b!1384656 m!1269995))

(declare-fun m!1270001 () Bool)

(assert (=> b!1384656 m!1270001))

(declare-fun m!1270003 () Bool)

(assert (=> b!1384652 m!1270003))

(declare-fun m!1270005 () Bool)

(assert (=> b!1384655 m!1270005))

(declare-fun m!1270007 () Bool)

(assert (=> b!1384655 m!1270007))

(declare-fun m!1270009 () Bool)

(assert (=> start!118424 m!1270009))

(declare-fun m!1270011 () Bool)

(assert (=> start!118424 m!1270011))

(assert (=> b!1384649 m!1270003))

(assert (=> b!1384649 m!1270003))

(declare-fun m!1270013 () Bool)

(assert (=> b!1384649 m!1270013))

(declare-fun m!1270015 () Bool)

(assert (=> b!1384654 m!1270015))

(declare-fun m!1270017 () Bool)

(assert (=> b!1384648 m!1270017))

(push 1)

