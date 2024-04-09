; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118380 () Bool)

(assert start!118380)

(declare-fun b!1384028 () Bool)

(declare-fun res!925651 () Bool)

(declare-fun e!784335 () Bool)

(assert (=> b!1384028 (=> (not res!925651) (not e!784335))))

(declare-datatypes ((array!94601 0))(
  ( (array!94602 (arr!45674 (Array (_ BitVec 32) (_ BitVec 64))) (size!46225 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94601)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94601 (_ BitVec 32)) Bool)

(assert (=> b!1384028 (= res!925651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384029 () Bool)

(declare-fun res!925647 () Bool)

(assert (=> b!1384029 (=> (not res!925647) (not e!784335))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1384029 (= res!925647 (and (= (size!46225 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46225 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46225 a!2938))))))

(declare-fun b!1384030 () Bool)

(declare-fun res!925652 () Bool)

(assert (=> b!1384030 (=> (not res!925652) (not e!784335))))

(assert (=> b!1384030 (= res!925652 (and (not (= (select (arr!45674 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45674 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!925648 () Bool)

(assert (=> start!118380 (=> (not res!925648) (not e!784335))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118380 (= res!925648 (validMask!0 mask!2987))))

(assert (=> start!118380 e!784335))

(assert (=> start!118380 true))

(declare-fun array_inv!34619 (array!94601) Bool)

(assert (=> start!118380 (array_inv!34619 a!2938)))

(declare-fun b!1384031 () Bool)

(declare-fun res!925649 () Bool)

(assert (=> b!1384031 (=> (not res!925649) (not e!784335))))

(declare-datatypes ((List!32382 0))(
  ( (Nil!32379) (Cons!32378 (h!33587 (_ BitVec 64)) (t!47083 List!32382)) )
))
(declare-fun arrayNoDuplicates!0 (array!94601 (_ BitVec 32) List!32382) Bool)

(assert (=> b!1384031 (= res!925649 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32379))))

(declare-fun b!1384032 () Bool)

(declare-datatypes ((Unit!46080 0))(
  ( (Unit!46081) )
))
(declare-fun e!784337 () Unit!46080)

(declare-fun lt!608722 () Unit!46080)

(assert (=> b!1384032 (= e!784337 lt!608722)))

(declare-fun lt!608721 () Unit!46080)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94601 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46080)

(assert (=> b!1384032 (= lt!608721 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10088 0))(
  ( (MissingZero!10088 (index!42722 (_ BitVec 32))) (Found!10088 (index!42723 (_ BitVec 32))) (Intermediate!10088 (undefined!10900 Bool) (index!42724 (_ BitVec 32)) (x!124236 (_ BitVec 32))) (Undefined!10088) (MissingVacant!10088 (index!42725 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94601 (_ BitVec 32)) SeekEntryResult!10088)

(assert (=> b!1384032 (= (seekEntryOrOpen!0 (select (arr!45674 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45674 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94602 (store (arr!45674 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46225 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94601 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46080)

(assert (=> b!1384032 (= lt!608722 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384032 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384033 () Bool)

(declare-fun e!784336 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384033 (= e!784336 (validKeyInArray!0 (select (arr!45674 a!2938) startIndex!16)))))

(declare-fun b!1384034 () Bool)

(declare-fun res!925650 () Bool)

(assert (=> b!1384034 (=> (not res!925650) (not e!784335))))

(assert (=> b!1384034 (= res!925650 (validKeyInArray!0 (select (arr!45674 a!2938) i!1065)))))

(declare-fun b!1384035 () Bool)

(declare-fun Unit!46082 () Unit!46080)

(assert (=> b!1384035 (= e!784337 Unit!46082)))

(declare-fun b!1384036 () Bool)

(assert (=> b!1384036 (= e!784335 false)))

(declare-fun lt!608720 () Unit!46080)

(assert (=> b!1384036 (= lt!608720 e!784337)))

(declare-fun c!128633 () Bool)

(assert (=> b!1384036 (= c!128633 e!784336)))

(declare-fun res!925653 () Bool)

(assert (=> b!1384036 (=> (not res!925653) (not e!784336))))

(assert (=> b!1384036 (= res!925653 (not (= startIndex!16 i!1065)))))

(assert (= (and start!118380 res!925648) b!1384029))

(assert (= (and b!1384029 res!925647) b!1384034))

(assert (= (and b!1384034 res!925650) b!1384031))

(assert (= (and b!1384031 res!925649) b!1384028))

(assert (= (and b!1384028 res!925651) b!1384030))

(assert (= (and b!1384030 res!925652) b!1384036))

(assert (= (and b!1384036 res!925653) b!1384033))

(assert (= (and b!1384036 c!128633) b!1384032))

(assert (= (and b!1384036 (not c!128633)) b!1384035))

(declare-fun m!1269293 () Bool)

(assert (=> b!1384031 m!1269293))

(declare-fun m!1269295 () Bool)

(assert (=> b!1384028 m!1269295))

(declare-fun m!1269297 () Bool)

(assert (=> b!1384032 m!1269297))

(declare-fun m!1269299 () Bool)

(assert (=> b!1384032 m!1269299))

(assert (=> b!1384032 m!1269299))

(declare-fun m!1269301 () Bool)

(assert (=> b!1384032 m!1269301))

(declare-fun m!1269303 () Bool)

(assert (=> b!1384032 m!1269303))

(declare-fun m!1269305 () Bool)

(assert (=> b!1384032 m!1269305))

(declare-fun m!1269307 () Bool)

(assert (=> b!1384032 m!1269307))

(declare-fun m!1269309 () Bool)

(assert (=> b!1384032 m!1269309))

(assert (=> b!1384032 m!1269307))

(declare-fun m!1269311 () Bool)

(assert (=> b!1384032 m!1269311))

(declare-fun m!1269313 () Bool)

(assert (=> start!118380 m!1269313))

(declare-fun m!1269315 () Bool)

(assert (=> start!118380 m!1269315))

(declare-fun m!1269317 () Bool)

(assert (=> b!1384034 m!1269317))

(assert (=> b!1384034 m!1269317))

(declare-fun m!1269319 () Bool)

(assert (=> b!1384034 m!1269319))

(assert (=> b!1384033 m!1269307))

(assert (=> b!1384033 m!1269307))

(declare-fun m!1269321 () Bool)

(assert (=> b!1384033 m!1269321))

(assert (=> b!1384030 m!1269317))

(check-sat (not b!1384028) (not b!1384034) (not b!1384031) (not b!1384032) (not start!118380) (not b!1384033))
