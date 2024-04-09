; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118376 () Bool)

(assert start!118376)

(declare-fun b!1383974 () Bool)

(declare-fun e!784313 () Bool)

(declare-datatypes ((array!94597 0))(
  ( (array!94598 (arr!45672 (Array (_ BitVec 32) (_ BitVec 64))) (size!46223 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94597)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383974 (= e!784313 (validKeyInArray!0 (select (arr!45672 a!2938) startIndex!16)))))

(declare-fun res!925609 () Bool)

(declare-fun e!784310 () Bool)

(assert (=> start!118376 (=> (not res!925609) (not e!784310))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118376 (= res!925609 (validMask!0 mask!2987))))

(assert (=> start!118376 e!784310))

(assert (=> start!118376 true))

(declare-fun array_inv!34617 (array!94597) Bool)

(assert (=> start!118376 (array_inv!34617 a!2938)))

(declare-fun b!1383975 () Bool)

(declare-fun res!925607 () Bool)

(assert (=> b!1383975 (=> (not res!925607) (not e!784310))))

(declare-datatypes ((List!32380 0))(
  ( (Nil!32377) (Cons!32376 (h!33585 (_ BitVec 64)) (t!47081 List!32380)) )
))
(declare-fun arrayNoDuplicates!0 (array!94597 (_ BitVec 32) List!32380) Bool)

(assert (=> b!1383975 (= res!925607 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32377))))

(declare-fun b!1383976 () Bool)

(declare-fun res!925610 () Bool)

(assert (=> b!1383976 (=> (not res!925610) (not e!784310))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1383976 (= res!925610 (and (not (= (select (arr!45672 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45672 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1383977 () Bool)

(declare-datatypes ((Unit!46074 0))(
  ( (Unit!46075) )
))
(declare-fun e!784311 () Unit!46074)

(declare-fun Unit!46076 () Unit!46074)

(assert (=> b!1383977 (= e!784311 Unit!46076)))

(declare-fun b!1383978 () Bool)

(declare-fun res!925605 () Bool)

(assert (=> b!1383978 (=> (not res!925605) (not e!784310))))

(assert (=> b!1383978 (= res!925605 (validKeyInArray!0 (select (arr!45672 a!2938) i!1065)))))

(declare-fun b!1383979 () Bool)

(assert (=> b!1383979 (= e!784310 false)))

(declare-fun lt!608704 () Unit!46074)

(assert (=> b!1383979 (= lt!608704 e!784311)))

(declare-fun c!128627 () Bool)

(assert (=> b!1383979 (= c!128627 e!784313)))

(declare-fun res!925611 () Bool)

(assert (=> b!1383979 (=> (not res!925611) (not e!784313))))

(assert (=> b!1383979 (= res!925611 (not (= startIndex!16 i!1065)))))

(declare-fun b!1383980 () Bool)

(declare-fun lt!608703 () Unit!46074)

(assert (=> b!1383980 (= e!784311 lt!608703)))

(declare-fun lt!608702 () Unit!46074)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94597 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46074)

(assert (=> b!1383980 (= lt!608702 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10086 0))(
  ( (MissingZero!10086 (index!42714 (_ BitVec 32))) (Found!10086 (index!42715 (_ BitVec 32))) (Intermediate!10086 (undefined!10898 Bool) (index!42716 (_ BitVec 32)) (x!124226 (_ BitVec 32))) (Undefined!10086) (MissingVacant!10086 (index!42717 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94597 (_ BitVec 32)) SeekEntryResult!10086)

(assert (=> b!1383980 (= (seekEntryOrOpen!0 (select (arr!45672 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45672 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94598 (store (arr!45672 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46223 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94597 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46074)

(assert (=> b!1383980 (= lt!608703 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94597 (_ BitVec 32)) Bool)

(assert (=> b!1383980 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1383981 () Bool)

(declare-fun res!925608 () Bool)

(assert (=> b!1383981 (=> (not res!925608) (not e!784310))))

(assert (=> b!1383981 (= res!925608 (and (= (size!46223 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46223 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46223 a!2938))))))

(declare-fun b!1383982 () Bool)

(declare-fun res!925606 () Bool)

(assert (=> b!1383982 (=> (not res!925606) (not e!784310))))

(assert (=> b!1383982 (= res!925606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118376 res!925609) b!1383981))

(assert (= (and b!1383981 res!925608) b!1383978))

(assert (= (and b!1383978 res!925605) b!1383975))

(assert (= (and b!1383975 res!925607) b!1383982))

(assert (= (and b!1383982 res!925606) b!1383976))

(assert (= (and b!1383976 res!925610) b!1383979))

(assert (= (and b!1383979 res!925611) b!1383974))

(assert (= (and b!1383979 c!128627) b!1383980))

(assert (= (and b!1383979 (not c!128627)) b!1383977))

(declare-fun m!1269233 () Bool)

(assert (=> b!1383975 m!1269233))

(declare-fun m!1269235 () Bool)

(assert (=> b!1383982 m!1269235))

(declare-fun m!1269237 () Bool)

(assert (=> b!1383974 m!1269237))

(assert (=> b!1383974 m!1269237))

(declare-fun m!1269239 () Bool)

(assert (=> b!1383974 m!1269239))

(declare-fun m!1269241 () Bool)

(assert (=> b!1383976 m!1269241))

(assert (=> b!1383978 m!1269241))

(assert (=> b!1383978 m!1269241))

(declare-fun m!1269243 () Bool)

(assert (=> b!1383978 m!1269243))

(declare-fun m!1269245 () Bool)

(assert (=> start!118376 m!1269245))

(declare-fun m!1269247 () Bool)

(assert (=> start!118376 m!1269247))

(declare-fun m!1269249 () Bool)

(assert (=> b!1383980 m!1269249))

(declare-fun m!1269251 () Bool)

(assert (=> b!1383980 m!1269251))

(assert (=> b!1383980 m!1269251))

(declare-fun m!1269253 () Bool)

(assert (=> b!1383980 m!1269253))

(declare-fun m!1269255 () Bool)

(assert (=> b!1383980 m!1269255))

(declare-fun m!1269257 () Bool)

(assert (=> b!1383980 m!1269257))

(assert (=> b!1383980 m!1269237))

(declare-fun m!1269259 () Bool)

(assert (=> b!1383980 m!1269259))

(assert (=> b!1383980 m!1269237))

(declare-fun m!1269261 () Bool)

(assert (=> b!1383980 m!1269261))

(push 1)

(assert (not b!1383982))

(assert (not b!1383980))

(assert (not b!1383975))

(assert (not b!1383974))

(assert (not start!118376))

(assert (not b!1383978))

(check-sat)

(pop 1)

(push 1)

(check-sat)

