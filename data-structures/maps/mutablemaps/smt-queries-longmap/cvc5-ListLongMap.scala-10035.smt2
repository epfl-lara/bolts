; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118354 () Bool)

(assert start!118354)

(declare-fun b!1383677 () Bool)

(declare-fun e!784180 () Bool)

(declare-datatypes ((array!94575 0))(
  ( (array!94576 (arr!45661 (Array (_ BitVec 32) (_ BitVec 64))) (size!46212 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94575)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383677 (= e!784180 (validKeyInArray!0 (select (arr!45661 a!2938) startIndex!16)))))

(declare-fun res!925376 () Bool)

(declare-fun e!784181 () Bool)

(assert (=> start!118354 (=> (not res!925376) (not e!784181))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118354 (= res!925376 (validMask!0 mask!2987))))

(assert (=> start!118354 e!784181))

(assert (=> start!118354 true))

(declare-fun array_inv!34606 (array!94575) Bool)

(assert (=> start!118354 (array_inv!34606 a!2938)))

(declare-fun b!1383678 () Bool)

(declare-datatypes ((Unit!46041 0))(
  ( (Unit!46042) )
))
(declare-fun e!784178 () Unit!46041)

(declare-fun Unit!46043 () Unit!46041)

(assert (=> b!1383678 (= e!784178 Unit!46043)))

(declare-fun b!1383679 () Bool)

(declare-fun res!925378 () Bool)

(assert (=> b!1383679 (=> (not res!925378) (not e!784181))))

(declare-datatypes ((List!32369 0))(
  ( (Nil!32366) (Cons!32365 (h!33574 (_ BitVec 64)) (t!47070 List!32369)) )
))
(declare-fun arrayNoDuplicates!0 (array!94575 (_ BitVec 32) List!32369) Bool)

(assert (=> b!1383679 (= res!925378 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32366))))

(declare-fun b!1383680 () Bool)

(declare-fun res!925374 () Bool)

(assert (=> b!1383680 (=> (not res!925374) (not e!784181))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1383680 (= res!925374 (validKeyInArray!0 (select (arr!45661 a!2938) i!1065)))))

(declare-fun b!1383681 () Bool)

(declare-fun res!925377 () Bool)

(assert (=> b!1383681 (=> (not res!925377) (not e!784181))))

(assert (=> b!1383681 (= res!925377 (and (not (= (select (arr!45661 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45661 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1383682 () Bool)

(declare-fun lt!608604 () Unit!46041)

(assert (=> b!1383682 (= e!784178 lt!608604)))

(declare-fun lt!608605 () Unit!46041)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94575 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46041)

(assert (=> b!1383682 (= lt!608605 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10075 0))(
  ( (MissingZero!10075 (index!42670 (_ BitVec 32))) (Found!10075 (index!42671 (_ BitVec 32))) (Intermediate!10075 (undefined!10887 Bool) (index!42672 (_ BitVec 32)) (x!124191 (_ BitVec 32))) (Undefined!10075) (MissingVacant!10075 (index!42673 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94575 (_ BitVec 32)) SeekEntryResult!10075)

(assert (=> b!1383682 (= (seekEntryOrOpen!0 (select (arr!45661 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45661 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94576 (store (arr!45661 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46212 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94575 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46041)

(assert (=> b!1383682 (= lt!608604 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94575 (_ BitVec 32)) Bool)

(assert (=> b!1383682 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1383683 () Bool)

(declare-fun res!925380 () Bool)

(assert (=> b!1383683 (=> (not res!925380) (not e!784181))))

(assert (=> b!1383683 (= res!925380 (and (= (size!46212 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46212 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46212 a!2938))))))

(declare-fun b!1383684 () Bool)

(declare-fun res!925375 () Bool)

(assert (=> b!1383684 (=> (not res!925375) (not e!784181))))

(assert (=> b!1383684 (= res!925375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383685 () Bool)

(assert (=> b!1383685 (= e!784181 false)))

(declare-fun lt!608603 () Unit!46041)

(assert (=> b!1383685 (= lt!608603 e!784178)))

(declare-fun c!128594 () Bool)

(assert (=> b!1383685 (= c!128594 e!784180)))

(declare-fun res!925379 () Bool)

(assert (=> b!1383685 (=> (not res!925379) (not e!784180))))

(assert (=> b!1383685 (= res!925379 (not (= startIndex!16 i!1065)))))

(assert (= (and start!118354 res!925376) b!1383683))

(assert (= (and b!1383683 res!925380) b!1383680))

(assert (= (and b!1383680 res!925374) b!1383679))

(assert (= (and b!1383679 res!925378) b!1383684))

(assert (= (and b!1383684 res!925375) b!1383681))

(assert (= (and b!1383681 res!925377) b!1383685))

(assert (= (and b!1383685 res!925379) b!1383677))

(assert (= (and b!1383685 c!128594) b!1383682))

(assert (= (and b!1383685 (not c!128594)) b!1383678))

(declare-fun m!1268903 () Bool)

(assert (=> start!118354 m!1268903))

(declare-fun m!1268905 () Bool)

(assert (=> start!118354 m!1268905))

(declare-fun m!1268907 () Bool)

(assert (=> b!1383681 m!1268907))

(declare-fun m!1268909 () Bool)

(assert (=> b!1383677 m!1268909))

(assert (=> b!1383677 m!1268909))

(declare-fun m!1268911 () Bool)

(assert (=> b!1383677 m!1268911))

(declare-fun m!1268913 () Bool)

(assert (=> b!1383682 m!1268913))

(declare-fun m!1268915 () Bool)

(assert (=> b!1383682 m!1268915))

(assert (=> b!1383682 m!1268915))

(declare-fun m!1268917 () Bool)

(assert (=> b!1383682 m!1268917))

(declare-fun m!1268919 () Bool)

(assert (=> b!1383682 m!1268919))

(declare-fun m!1268921 () Bool)

(assert (=> b!1383682 m!1268921))

(assert (=> b!1383682 m!1268909))

(declare-fun m!1268923 () Bool)

(assert (=> b!1383682 m!1268923))

(assert (=> b!1383682 m!1268909))

(declare-fun m!1268925 () Bool)

(assert (=> b!1383682 m!1268925))

(declare-fun m!1268927 () Bool)

(assert (=> b!1383684 m!1268927))

(declare-fun m!1268929 () Bool)

(assert (=> b!1383679 m!1268929))

(assert (=> b!1383680 m!1268907))

(assert (=> b!1383680 m!1268907))

(declare-fun m!1268931 () Bool)

(assert (=> b!1383680 m!1268931))

(push 1)

(assert (not b!1383679))

(assert (not b!1383680))

(assert (not start!118354))

(assert (not b!1383682))

(assert (not b!1383684))

(assert (not b!1383677))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

