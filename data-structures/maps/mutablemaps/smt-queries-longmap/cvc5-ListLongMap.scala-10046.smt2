; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118420 () Bool)

(assert start!118420)

(declare-fun b!1384588 () Bool)

(declare-fun e!784597 () Bool)

(declare-datatypes ((array!94641 0))(
  ( (array!94642 (arr!45694 (Array (_ BitVec 32) (_ BitVec 64))) (size!46245 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94641)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384588 (= e!784597 (validKeyInArray!0 (select (arr!45694 a!2938) startIndex!16)))))

(declare-fun b!1384589 () Bool)

(declare-fun res!926090 () Bool)

(declare-fun e!784595 () Bool)

(assert (=> b!1384589 (=> (not res!926090) (not e!784595))))

(declare-datatypes ((List!32402 0))(
  ( (Nil!32399) (Cons!32398 (h!33607 (_ BitVec 64)) (t!47103 List!32402)) )
))
(declare-fun arrayNoDuplicates!0 (array!94641 (_ BitVec 32) List!32402) Bool)

(assert (=> b!1384589 (= res!926090 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32399))))

(declare-fun b!1384590 () Bool)

(declare-fun e!784598 () Bool)

(assert (=> b!1384590 (= e!784595 e!784598)))

(declare-fun res!926087 () Bool)

(assert (=> b!1384590 (=> (not res!926087) (not e!784598))))

(assert (=> b!1384590 (= res!926087 (and (bvslt startIndex!16 (bvsub (size!46245 a!2938) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!46140 0))(
  ( (Unit!46141) )
))
(declare-fun lt!608942 () Unit!46140)

(declare-fun e!784594 () Unit!46140)

(assert (=> b!1384590 (= lt!608942 e!784594)))

(declare-fun c!128693 () Bool)

(assert (=> b!1384590 (= c!128693 e!784597)))

(declare-fun res!926093 () Bool)

(assert (=> b!1384590 (=> (not res!926093) (not e!784597))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1384590 (= res!926093 (not (= startIndex!16 i!1065)))))

(declare-fun lt!608943 () array!94641)

(assert (=> b!1384590 (= lt!608943 (array!94642 (store (arr!45694 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46245 a!2938)))))

(declare-fun res!926089 () Bool)

(assert (=> start!118420 (=> (not res!926089) (not e!784595))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118420 (= res!926089 (validMask!0 mask!2987))))

(assert (=> start!118420 e!784595))

(assert (=> start!118420 true))

(declare-fun array_inv!34639 (array!94641) Bool)

(assert (=> start!118420 (array_inv!34639 a!2938)))

(declare-fun b!1384591 () Bool)

(declare-fun res!926094 () Bool)

(assert (=> b!1384591 (=> (not res!926094) (not e!784595))))

(assert (=> b!1384591 (= res!926094 (validKeyInArray!0 (select (arr!45694 a!2938) i!1065)))))

(declare-fun b!1384592 () Bool)

(assert (=> b!1384592 (= e!784598 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94641 (_ BitVec 32)) Bool)

(assert (=> b!1384592 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) lt!608943 mask!2987)))

(declare-fun lt!608944 () Unit!46140)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94641 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46140)

(assert (=> b!1384592 (= lt!608944 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987))))

(declare-fun b!1384593 () Bool)

(declare-fun res!926088 () Bool)

(assert (=> b!1384593 (=> (not res!926088) (not e!784595))))

(assert (=> b!1384593 (= res!926088 (and (= (size!46245 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46245 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46245 a!2938))))))

(declare-fun b!1384594 () Bool)

(declare-fun res!926092 () Bool)

(assert (=> b!1384594 (=> (not res!926092) (not e!784595))))

(assert (=> b!1384594 (= res!926092 (and (not (= (select (arr!45694 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45694 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384595 () Bool)

(declare-fun res!926091 () Bool)

(assert (=> b!1384595 (=> (not res!926091) (not e!784595))))

(assert (=> b!1384595 (= res!926091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384596 () Bool)

(declare-fun lt!608940 () Unit!46140)

(assert (=> b!1384596 (= e!784594 lt!608940)))

(declare-fun lt!608941 () Unit!46140)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94641 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46140)

(assert (=> b!1384596 (= lt!608941 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10108 0))(
  ( (MissingZero!10108 (index!42802 (_ BitVec 32))) (Found!10108 (index!42803 (_ BitVec 32))) (Intermediate!10108 (undefined!10920 Bool) (index!42804 (_ BitVec 32)) (x!124312 (_ BitVec 32))) (Undefined!10108) (MissingVacant!10108 (index!42805 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94641 (_ BitVec 32)) SeekEntryResult!10108)

(assert (=> b!1384596 (= (seekEntryOrOpen!0 (select (arr!45694 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45694 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!608943 mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94641 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46140)

(assert (=> b!1384596 (= lt!608940 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384596 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384597 () Bool)

(declare-fun Unit!46142 () Unit!46140)

(assert (=> b!1384597 (= e!784594 Unit!46142)))

(assert (= (and start!118420 res!926089) b!1384593))

(assert (= (and b!1384593 res!926088) b!1384591))

(assert (= (and b!1384591 res!926094) b!1384589))

(assert (= (and b!1384589 res!926090) b!1384595))

(assert (= (and b!1384595 res!926091) b!1384594))

(assert (= (and b!1384594 res!926092) b!1384590))

(assert (= (and b!1384590 res!926093) b!1384588))

(assert (= (and b!1384590 c!128693) b!1384596))

(assert (= (and b!1384590 (not c!128693)) b!1384597))

(assert (= (and b!1384590 res!926087) b!1384592))

(declare-fun m!1269917 () Bool)

(assert (=> b!1384594 m!1269917))

(assert (=> b!1384591 m!1269917))

(assert (=> b!1384591 m!1269917))

(declare-fun m!1269919 () Bool)

(assert (=> b!1384591 m!1269919))

(declare-fun m!1269921 () Bool)

(assert (=> b!1384592 m!1269921))

(declare-fun m!1269923 () Bool)

(assert (=> b!1384592 m!1269923))

(declare-fun m!1269925 () Bool)

(assert (=> b!1384590 m!1269925))

(declare-fun m!1269927 () Bool)

(assert (=> b!1384588 m!1269927))

(assert (=> b!1384588 m!1269927))

(declare-fun m!1269929 () Bool)

(assert (=> b!1384588 m!1269929))

(declare-fun m!1269931 () Bool)

(assert (=> b!1384589 m!1269931))

(declare-fun m!1269933 () Bool)

(assert (=> start!118420 m!1269933))

(declare-fun m!1269935 () Bool)

(assert (=> start!118420 m!1269935))

(declare-fun m!1269937 () Bool)

(assert (=> b!1384596 m!1269937))

(declare-fun m!1269939 () Bool)

(assert (=> b!1384596 m!1269939))

(assert (=> b!1384596 m!1269939))

(declare-fun m!1269941 () Bool)

(assert (=> b!1384596 m!1269941))

(assert (=> b!1384596 m!1269925))

(declare-fun m!1269943 () Bool)

(assert (=> b!1384596 m!1269943))

(assert (=> b!1384596 m!1269927))

(declare-fun m!1269945 () Bool)

(assert (=> b!1384596 m!1269945))

(assert (=> b!1384596 m!1269927))

(declare-fun m!1269947 () Bool)

(assert (=> b!1384596 m!1269947))

(declare-fun m!1269949 () Bool)

(assert (=> b!1384595 m!1269949))

(push 1)

