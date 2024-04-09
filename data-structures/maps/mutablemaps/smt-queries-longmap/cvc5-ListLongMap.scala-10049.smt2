; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118438 () Bool)

(assert start!118438)

(declare-fun b!1384847 () Bool)

(declare-fun res!926297 () Bool)

(declare-fun e!784721 () Bool)

(assert (=> b!1384847 (=> (not res!926297) (not e!784721))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94659 0))(
  ( (array!94660 (arr!45703 (Array (_ BitVec 32) (_ BitVec 64))) (size!46254 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94659)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1384847 (= res!926297 (and (= (size!46254 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46254 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46254 a!2938))))))

(declare-fun res!926295 () Bool)

(assert (=> start!118438 (=> (not res!926295) (not e!784721))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118438 (= res!926295 (validMask!0 mask!2987))))

(assert (=> start!118438 e!784721))

(assert (=> start!118438 true))

(declare-fun array_inv!34648 (array!94659) Bool)

(assert (=> start!118438 (array_inv!34648 a!2938)))

(declare-fun b!1384848 () Bool)

(declare-fun e!784719 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384848 (= e!784719 (validKeyInArray!0 (select (arr!45703 a!2938) startIndex!16)))))

(declare-fun b!1384849 () Bool)

(declare-datatypes ((Unit!46167 0))(
  ( (Unit!46168) )
))
(declare-fun e!784718 () Unit!46167)

(declare-fun Unit!46169 () Unit!46167)

(assert (=> b!1384849 (= e!784718 Unit!46169)))

(declare-fun b!1384850 () Bool)

(declare-fun res!926294 () Bool)

(assert (=> b!1384850 (=> (not res!926294) (not e!784721))))

(assert (=> b!1384850 (= res!926294 (validKeyInArray!0 (select (arr!45703 a!2938) i!1065)))))

(declare-fun b!1384851 () Bool)

(declare-fun res!926296 () Bool)

(assert (=> b!1384851 (=> (not res!926296) (not e!784721))))

(declare-datatypes ((List!32411 0))(
  ( (Nil!32408) (Cons!32407 (h!33616 (_ BitVec 64)) (t!47112 List!32411)) )
))
(declare-fun arrayNoDuplicates!0 (array!94659 (_ BitVec 32) List!32411) Bool)

(assert (=> b!1384851 (= res!926296 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32408))))

(declare-fun b!1384852 () Bool)

(declare-fun res!926298 () Bool)

(assert (=> b!1384852 (=> (not res!926298) (not e!784721))))

(assert (=> b!1384852 (= res!926298 (and (not (= (select (arr!45703 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45703 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384853 () Bool)

(declare-fun res!926292 () Bool)

(assert (=> b!1384853 (=> (not res!926292) (not e!784721))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94659 (_ BitVec 32)) Bool)

(assert (=> b!1384853 (= res!926292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384854 () Bool)

(assert (=> b!1384854 (= e!784721 false)))

(declare-fun lt!609054 () Unit!46167)

(assert (=> b!1384854 (= lt!609054 e!784718)))

(declare-fun c!128720 () Bool)

(assert (=> b!1384854 (= c!128720 e!784719)))

(declare-fun res!926293 () Bool)

(assert (=> b!1384854 (=> (not res!926293) (not e!784719))))

(assert (=> b!1384854 (= res!926293 (not (= startIndex!16 i!1065)))))

(declare-fun b!1384855 () Bool)

(declare-fun lt!609055 () Unit!46167)

(assert (=> b!1384855 (= e!784718 lt!609055)))

(declare-fun lt!609053 () Unit!46167)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94659 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46167)

(assert (=> b!1384855 (= lt!609053 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10117 0))(
  ( (MissingZero!10117 (index!42838 (_ BitVec 32))) (Found!10117 (index!42839 (_ BitVec 32))) (Intermediate!10117 (undefined!10929 Bool) (index!42840 (_ BitVec 32)) (x!124345 (_ BitVec 32))) (Undefined!10117) (MissingVacant!10117 (index!42841 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94659 (_ BitVec 32)) SeekEntryResult!10117)

(assert (=> b!1384855 (= (seekEntryOrOpen!0 (select (arr!45703 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45703 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94660 (store (arr!45703 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46254 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94659 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46167)

(assert (=> b!1384855 (= lt!609055 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384855 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(assert (= (and start!118438 res!926295) b!1384847))

(assert (= (and b!1384847 res!926297) b!1384850))

(assert (= (and b!1384850 res!926294) b!1384851))

(assert (= (and b!1384851 res!926296) b!1384853))

(assert (= (and b!1384853 res!926292) b!1384852))

(assert (= (and b!1384852 res!926298) b!1384854))

(assert (= (and b!1384854 res!926293) b!1384848))

(assert (= (and b!1384854 c!128720) b!1384855))

(assert (= (and b!1384854 (not c!128720)) b!1384849))

(declare-fun m!1270211 () Bool)

(assert (=> b!1384853 m!1270211))

(declare-fun m!1270213 () Bool)

(assert (=> b!1384851 m!1270213))

(declare-fun m!1270215 () Bool)

(assert (=> b!1384848 m!1270215))

(assert (=> b!1384848 m!1270215))

(declare-fun m!1270217 () Bool)

(assert (=> b!1384848 m!1270217))

(declare-fun m!1270219 () Bool)

(assert (=> start!118438 m!1270219))

(declare-fun m!1270221 () Bool)

(assert (=> start!118438 m!1270221))

(declare-fun m!1270223 () Bool)

(assert (=> b!1384855 m!1270223))

(declare-fun m!1270225 () Bool)

(assert (=> b!1384855 m!1270225))

(assert (=> b!1384855 m!1270225))

(declare-fun m!1270227 () Bool)

(assert (=> b!1384855 m!1270227))

(declare-fun m!1270229 () Bool)

(assert (=> b!1384855 m!1270229))

(declare-fun m!1270231 () Bool)

(assert (=> b!1384855 m!1270231))

(assert (=> b!1384855 m!1270215))

(declare-fun m!1270233 () Bool)

(assert (=> b!1384855 m!1270233))

(assert (=> b!1384855 m!1270215))

(declare-fun m!1270235 () Bool)

(assert (=> b!1384855 m!1270235))

(declare-fun m!1270237 () Bool)

(assert (=> b!1384852 m!1270237))

(assert (=> b!1384850 m!1270237))

(assert (=> b!1384850 m!1270237))

(declare-fun m!1270239 () Bool)

(assert (=> b!1384850 m!1270239))

(push 1)

(assert (not b!1384848))

(assert (not b!1384855))

(assert (not b!1384851))

(assert (not start!118438))

(assert (not b!1384850))

(assert (not b!1384853))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

