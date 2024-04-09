; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118430 () Bool)

(assert start!118430)

(declare-fun b!1384738 () Bool)

(declare-fun res!926208 () Bool)

(declare-fun e!784673 () Bool)

(assert (=> b!1384738 (=> (not res!926208) (not e!784673))))

(declare-datatypes ((array!94651 0))(
  ( (array!94652 (arr!45699 (Array (_ BitVec 32) (_ BitVec 64))) (size!46250 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94651)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94651 (_ BitVec 32)) Bool)

(assert (=> b!1384738 (= res!926208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384739 () Bool)

(declare-fun res!926209 () Bool)

(assert (=> b!1384739 (=> (not res!926209) (not e!784673))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1384739 (= res!926209 (and (= (size!46250 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46250 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46250 a!2938))))))

(declare-fun b!1384740 () Bool)

(declare-fun res!926211 () Bool)

(assert (=> b!1384740 (=> (not res!926211) (not e!784673))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384740 (= res!926211 (validKeyInArray!0 (select (arr!45699 a!2938) i!1065)))))

(declare-fun b!1384741 () Bool)

(declare-fun e!784669 () Bool)

(assert (=> b!1384741 (= e!784669 (not (bvsle startIndex!16 (size!46250 a!2938))))))

(declare-fun lt!609015 () array!94651)

(assert (=> b!1384741 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) lt!609015 mask!2987)))

(declare-datatypes ((Unit!46155 0))(
  ( (Unit!46156) )
))
(declare-fun lt!609017 () Unit!46155)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94651 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46155)

(assert (=> b!1384741 (= lt!609017 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987))))

(declare-fun b!1384742 () Bool)

(declare-fun res!926213 () Bool)

(assert (=> b!1384742 (=> (not res!926213) (not e!784673))))

(assert (=> b!1384742 (= res!926213 (and (not (= (select (arr!45699 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45699 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384743 () Bool)

(declare-fun e!784671 () Unit!46155)

(declare-fun Unit!46157 () Unit!46155)

(assert (=> b!1384743 (= e!784671 Unit!46157)))

(declare-fun b!1384744 () Bool)

(declare-fun lt!609019 () Unit!46155)

(assert (=> b!1384744 (= e!784671 lt!609019)))

(declare-fun lt!609018 () Unit!46155)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94651 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46155)

(assert (=> b!1384744 (= lt!609018 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10113 0))(
  ( (MissingZero!10113 (index!42822 (_ BitVec 32))) (Found!10113 (index!42823 (_ BitVec 32))) (Intermediate!10113 (undefined!10925 Bool) (index!42824 (_ BitVec 32)) (x!124325 (_ BitVec 32))) (Undefined!10113) (MissingVacant!10113 (index!42825 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94651 (_ BitVec 32)) SeekEntryResult!10113)

(assert (=> b!1384744 (= (seekEntryOrOpen!0 (select (arr!45699 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45699 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609015 mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94651 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46155)

(assert (=> b!1384744 (= lt!609019 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384744 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384745 () Bool)

(assert (=> b!1384745 (= e!784673 e!784669)))

(declare-fun res!926212 () Bool)

(assert (=> b!1384745 (=> (not res!926212) (not e!784669))))

(assert (=> b!1384745 (= res!926212 (and (bvslt startIndex!16 (bvsub (size!46250 a!2938) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))))

(declare-fun lt!609016 () Unit!46155)

(assert (=> b!1384745 (= lt!609016 e!784671)))

(declare-fun c!128708 () Bool)

(declare-fun e!784670 () Bool)

(assert (=> b!1384745 (= c!128708 e!784670)))

(declare-fun res!926210 () Bool)

(assert (=> b!1384745 (=> (not res!926210) (not e!784670))))

(assert (=> b!1384745 (= res!926210 (not (= startIndex!16 i!1065)))))

(assert (=> b!1384745 (= lt!609015 (array!94652 (store (arr!45699 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46250 a!2938)))))

(declare-fun res!926207 () Bool)

(assert (=> start!118430 (=> (not res!926207) (not e!784673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118430 (= res!926207 (validMask!0 mask!2987))))

(assert (=> start!118430 e!784673))

(assert (=> start!118430 true))

(declare-fun array_inv!34644 (array!94651) Bool)

(assert (=> start!118430 (array_inv!34644 a!2938)))

(declare-fun b!1384746 () Bool)

(assert (=> b!1384746 (= e!784670 (validKeyInArray!0 (select (arr!45699 a!2938) startIndex!16)))))

(declare-fun b!1384747 () Bool)

(declare-fun res!926214 () Bool)

(assert (=> b!1384747 (=> (not res!926214) (not e!784673))))

(declare-datatypes ((List!32407 0))(
  ( (Nil!32404) (Cons!32403 (h!33612 (_ BitVec 64)) (t!47108 List!32407)) )
))
(declare-fun arrayNoDuplicates!0 (array!94651 (_ BitVec 32) List!32407) Bool)

(assert (=> b!1384747 (= res!926214 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32404))))

(assert (= (and start!118430 res!926207) b!1384739))

(assert (= (and b!1384739 res!926209) b!1384740))

(assert (= (and b!1384740 res!926211) b!1384747))

(assert (= (and b!1384747 res!926214) b!1384738))

(assert (= (and b!1384738 res!926208) b!1384742))

(assert (= (and b!1384742 res!926213) b!1384745))

(assert (= (and b!1384745 res!926210) b!1384746))

(assert (= (and b!1384745 c!128708) b!1384744))

(assert (= (and b!1384745 (not c!128708)) b!1384743))

(assert (= (and b!1384745 res!926212) b!1384741))

(declare-fun m!1270087 () Bool)

(assert (=> b!1384745 m!1270087))

(declare-fun m!1270089 () Bool)

(assert (=> b!1384741 m!1270089))

(declare-fun m!1270091 () Bool)

(assert (=> b!1384741 m!1270091))

(declare-fun m!1270093 () Bool)

(assert (=> b!1384747 m!1270093))

(declare-fun m!1270095 () Bool)

(assert (=> b!1384746 m!1270095))

(assert (=> b!1384746 m!1270095))

(declare-fun m!1270097 () Bool)

(assert (=> b!1384746 m!1270097))

(declare-fun m!1270099 () Bool)

(assert (=> start!118430 m!1270099))

(declare-fun m!1270101 () Bool)

(assert (=> start!118430 m!1270101))

(declare-fun m!1270103 () Bool)

(assert (=> b!1384738 m!1270103))

(declare-fun m!1270105 () Bool)

(assert (=> b!1384740 m!1270105))

(assert (=> b!1384740 m!1270105))

(declare-fun m!1270107 () Bool)

(assert (=> b!1384740 m!1270107))

(declare-fun m!1270109 () Bool)

(assert (=> b!1384744 m!1270109))

(declare-fun m!1270111 () Bool)

(assert (=> b!1384744 m!1270111))

(assert (=> b!1384744 m!1270087))

(declare-fun m!1270113 () Bool)

(assert (=> b!1384744 m!1270113))

(assert (=> b!1384744 m!1270111))

(declare-fun m!1270115 () Bool)

(assert (=> b!1384744 m!1270115))

(assert (=> b!1384744 m!1270095))

(declare-fun m!1270117 () Bool)

(assert (=> b!1384744 m!1270117))

(assert (=> b!1384744 m!1270095))

(declare-fun m!1270119 () Bool)

(assert (=> b!1384744 m!1270119))

(assert (=> b!1384742 m!1270105))

(push 1)

(assert (not start!118430))

(assert (not b!1384744))

(assert (not b!1384747))

(assert (not b!1384738))

(assert (not b!1384740))

(assert (not b!1384746))

(assert (not b!1384741))

(check-sat)

(pop 1)

(push 1)

(check-sat)

