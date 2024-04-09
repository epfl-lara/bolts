; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118406 () Bool)

(assert start!118406)

(declare-fun b!1384379 () Bool)

(declare-fun e!784491 () Bool)

(declare-datatypes ((array!94627 0))(
  ( (array!94628 (arr!45687 (Array (_ BitVec 32) (_ BitVec 64))) (size!46238 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94627)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384379 (= e!784491 (validKeyInArray!0 (select (arr!45687 a!2938) startIndex!16)))))

(declare-fun b!1384380 () Bool)

(declare-fun res!925925 () Bool)

(declare-fun e!784490 () Bool)

(assert (=> b!1384380 (=> (not res!925925) (not e!784490))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1384380 (= res!925925 (validKeyInArray!0 (select (arr!45687 a!2938) i!1065)))))

(declare-fun res!925920 () Bool)

(assert (=> start!118406 (=> (not res!925920) (not e!784490))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118406 (= res!925920 (validMask!0 mask!2987))))

(assert (=> start!118406 e!784490))

(assert (=> start!118406 true))

(declare-fun array_inv!34632 (array!94627) Bool)

(assert (=> start!118406 (array_inv!34632 a!2938)))

(declare-fun b!1384381 () Bool)

(declare-datatypes ((Unit!46119 0))(
  ( (Unit!46120) )
))
(declare-fun e!784492 () Unit!46119)

(declare-fun Unit!46121 () Unit!46119)

(assert (=> b!1384381 (= e!784492 Unit!46121)))

(declare-fun b!1384382 () Bool)

(declare-fun res!925926 () Bool)

(assert (=> b!1384382 (=> (not res!925926) (not e!784490))))

(assert (=> b!1384382 (= res!925926 (and (not (= (select (arr!45687 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45687 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384383 () Bool)

(assert (=> b!1384383 (= e!784490 false)))

(declare-fun lt!608837 () Unit!46119)

(assert (=> b!1384383 (= lt!608837 e!784492)))

(declare-fun c!128672 () Bool)

(assert (=> b!1384383 (= c!128672 e!784491)))

(declare-fun res!925922 () Bool)

(assert (=> b!1384383 (=> (not res!925922) (not e!784491))))

(assert (=> b!1384383 (= res!925922 (not (= startIndex!16 i!1065)))))

(declare-fun b!1384384 () Bool)

(declare-fun lt!608838 () Unit!46119)

(assert (=> b!1384384 (= e!784492 lt!608838)))

(declare-fun lt!608839 () Unit!46119)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94627 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46119)

(assert (=> b!1384384 (= lt!608839 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10101 0))(
  ( (MissingZero!10101 (index!42774 (_ BitVec 32))) (Found!10101 (index!42775 (_ BitVec 32))) (Intermediate!10101 (undefined!10913 Bool) (index!42776 (_ BitVec 32)) (x!124281 (_ BitVec 32))) (Undefined!10101) (MissingVacant!10101 (index!42777 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94627 (_ BitVec 32)) SeekEntryResult!10101)

(assert (=> b!1384384 (= (seekEntryOrOpen!0 (select (arr!45687 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45687 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94628 (store (arr!45687 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46238 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94627 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46119)

(assert (=> b!1384384 (= lt!608838 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94627 (_ BitVec 32)) Bool)

(assert (=> b!1384384 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384385 () Bool)

(declare-fun res!925923 () Bool)

(assert (=> b!1384385 (=> (not res!925923) (not e!784490))))

(assert (=> b!1384385 (= res!925923 (and (= (size!46238 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46238 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46238 a!2938))))))

(declare-fun b!1384386 () Bool)

(declare-fun res!925921 () Bool)

(assert (=> b!1384386 (=> (not res!925921) (not e!784490))))

(assert (=> b!1384386 (= res!925921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384387 () Bool)

(declare-fun res!925924 () Bool)

(assert (=> b!1384387 (=> (not res!925924) (not e!784490))))

(declare-datatypes ((List!32395 0))(
  ( (Nil!32392) (Cons!32391 (h!33600 (_ BitVec 64)) (t!47096 List!32395)) )
))
(declare-fun arrayNoDuplicates!0 (array!94627 (_ BitVec 32) List!32395) Bool)

(assert (=> b!1384387 (= res!925924 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32392))))

(assert (= (and start!118406 res!925920) b!1384385))

(assert (= (and b!1384385 res!925923) b!1384380))

(assert (= (and b!1384380 res!925925) b!1384387))

(assert (= (and b!1384387 res!925924) b!1384386))

(assert (= (and b!1384386 res!925921) b!1384382))

(assert (= (and b!1384382 res!925926) b!1384383))

(assert (= (and b!1384383 res!925922) b!1384379))

(assert (= (and b!1384383 c!128672) b!1384384))

(assert (= (and b!1384383 (not c!128672)) b!1384381))

(declare-fun m!1269683 () Bool)

(assert (=> b!1384384 m!1269683))

(declare-fun m!1269685 () Bool)

(assert (=> b!1384384 m!1269685))

(assert (=> b!1384384 m!1269685))

(declare-fun m!1269687 () Bool)

(assert (=> b!1384384 m!1269687))

(declare-fun m!1269689 () Bool)

(assert (=> b!1384384 m!1269689))

(declare-fun m!1269691 () Bool)

(assert (=> b!1384384 m!1269691))

(declare-fun m!1269693 () Bool)

(assert (=> b!1384384 m!1269693))

(declare-fun m!1269695 () Bool)

(assert (=> b!1384384 m!1269695))

(assert (=> b!1384384 m!1269693))

(declare-fun m!1269697 () Bool)

(assert (=> b!1384384 m!1269697))

(declare-fun m!1269699 () Bool)

(assert (=> b!1384386 m!1269699))

(declare-fun m!1269701 () Bool)

(assert (=> b!1384380 m!1269701))

(assert (=> b!1384380 m!1269701))

(declare-fun m!1269703 () Bool)

(assert (=> b!1384380 m!1269703))

(assert (=> b!1384382 m!1269701))

(declare-fun m!1269705 () Bool)

(assert (=> start!118406 m!1269705))

(declare-fun m!1269707 () Bool)

(assert (=> start!118406 m!1269707))

(declare-fun m!1269709 () Bool)

(assert (=> b!1384387 m!1269709))

(assert (=> b!1384379 m!1269693))

(assert (=> b!1384379 m!1269693))

(declare-fun m!1269711 () Bool)

(assert (=> b!1384379 m!1269711))

(push 1)

(assert (not start!118406))

(assert (not b!1384380))

(assert (not b!1384387))

(assert (not b!1384379))

(assert (not b!1384384))

(assert (not b!1384386))

(check-sat)

(pop 1)

