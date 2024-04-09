; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118422 () Bool)

(assert start!118422)

(declare-fun b!1384618 () Bool)

(declare-fun e!784612 () Bool)

(assert (=> b!1384618 (= e!784612 (not true))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-datatypes ((array!94643 0))(
  ( (array!94644 (arr!45695 (Array (_ BitVec 32) (_ BitVec 64))) (size!46246 (_ BitVec 32))) )
))
(declare-fun lt!608956 () array!94643)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94643 (_ BitVec 32)) Bool)

(assert (=> b!1384618 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) lt!608956 mask!2987)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((Unit!46143 0))(
  ( (Unit!46144) )
))
(declare-fun lt!608957 () Unit!46143)

(declare-fun a!2938 () array!94643)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94643 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46143)

(assert (=> b!1384618 (= lt!608957 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987))))

(declare-fun b!1384619 () Bool)

(declare-fun e!784611 () Bool)

(assert (=> b!1384619 (= e!784611 e!784612)))

(declare-fun res!926117 () Bool)

(assert (=> b!1384619 (=> (not res!926117) (not e!784612))))

(assert (=> b!1384619 (= res!926117 (and (bvslt startIndex!16 (bvsub (size!46246 a!2938) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))))

(declare-fun lt!608955 () Unit!46143)

(declare-fun e!784609 () Unit!46143)

(assert (=> b!1384619 (= lt!608955 e!784609)))

(declare-fun c!128696 () Bool)

(declare-fun e!784610 () Bool)

(assert (=> b!1384619 (= c!128696 e!784610)))

(declare-fun res!926115 () Bool)

(assert (=> b!1384619 (=> (not res!926115) (not e!784610))))

(assert (=> b!1384619 (= res!926115 (not (= startIndex!16 i!1065)))))

(assert (=> b!1384619 (= lt!608956 (array!94644 (store (arr!45695 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46246 a!2938)))))

(declare-fun b!1384620 () Bool)

(declare-fun res!926113 () Bool)

(assert (=> b!1384620 (=> (not res!926113) (not e!784611))))

(assert (=> b!1384620 (= res!926113 (and (= (size!46246 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46246 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46246 a!2938))))))

(declare-fun b!1384621 () Bool)

(declare-fun Unit!46145 () Unit!46143)

(assert (=> b!1384621 (= e!784609 Unit!46145)))

(declare-fun b!1384623 () Bool)

(declare-fun res!926111 () Bool)

(assert (=> b!1384623 (=> (not res!926111) (not e!784611))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384623 (= res!926111 (validKeyInArray!0 (select (arr!45695 a!2938) i!1065)))))

(declare-fun b!1384624 () Bool)

(declare-fun res!926114 () Bool)

(assert (=> b!1384624 (=> (not res!926114) (not e!784611))))

(assert (=> b!1384624 (= res!926114 (and (not (= (select (arr!45695 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45695 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384625 () Bool)

(declare-fun res!926112 () Bool)

(assert (=> b!1384625 (=> (not res!926112) (not e!784611))))

(declare-datatypes ((List!32403 0))(
  ( (Nil!32400) (Cons!32399 (h!33608 (_ BitVec 64)) (t!47104 List!32403)) )
))
(declare-fun arrayNoDuplicates!0 (array!94643 (_ BitVec 32) List!32403) Bool)

(assert (=> b!1384625 (= res!926112 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32400))))

(declare-fun b!1384626 () Bool)

(declare-fun res!926116 () Bool)

(assert (=> b!1384626 (=> (not res!926116) (not e!784611))))

(assert (=> b!1384626 (= res!926116 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384627 () Bool)

(assert (=> b!1384627 (= e!784610 (validKeyInArray!0 (select (arr!45695 a!2938) startIndex!16)))))

(declare-fun res!926118 () Bool)

(assert (=> start!118422 (=> (not res!926118) (not e!784611))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118422 (= res!926118 (validMask!0 mask!2987))))

(assert (=> start!118422 e!784611))

(assert (=> start!118422 true))

(declare-fun array_inv!34640 (array!94643) Bool)

(assert (=> start!118422 (array_inv!34640 a!2938)))

(declare-fun b!1384622 () Bool)

(declare-fun lt!608958 () Unit!46143)

(assert (=> b!1384622 (= e!784609 lt!608958)))

(declare-fun lt!608959 () Unit!46143)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94643 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46143)

(assert (=> b!1384622 (= lt!608959 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10109 0))(
  ( (MissingZero!10109 (index!42806 (_ BitVec 32))) (Found!10109 (index!42807 (_ BitVec 32))) (Intermediate!10109 (undefined!10921 Bool) (index!42808 (_ BitVec 32)) (x!124313 (_ BitVec 32))) (Undefined!10109) (MissingVacant!10109 (index!42809 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94643 (_ BitVec 32)) SeekEntryResult!10109)

(assert (=> b!1384622 (= (seekEntryOrOpen!0 (select (arr!45695 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45695 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!608956 mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94643 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46143)

(assert (=> b!1384622 (= lt!608958 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384622 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(assert (= (and start!118422 res!926118) b!1384620))

(assert (= (and b!1384620 res!926113) b!1384623))

(assert (= (and b!1384623 res!926111) b!1384625))

(assert (= (and b!1384625 res!926112) b!1384626))

(assert (= (and b!1384626 res!926116) b!1384624))

(assert (= (and b!1384624 res!926114) b!1384619))

(assert (= (and b!1384619 res!926115) b!1384627))

(assert (= (and b!1384619 c!128696) b!1384622))

(assert (= (and b!1384619 (not c!128696)) b!1384621))

(assert (= (and b!1384619 res!926117) b!1384618))

(declare-fun m!1269951 () Bool)

(assert (=> b!1384618 m!1269951))

(declare-fun m!1269953 () Bool)

(assert (=> b!1384618 m!1269953))

(declare-fun m!1269955 () Bool)

(assert (=> b!1384627 m!1269955))

(assert (=> b!1384627 m!1269955))

(declare-fun m!1269957 () Bool)

(assert (=> b!1384627 m!1269957))

(declare-fun m!1269959 () Bool)

(assert (=> b!1384623 m!1269959))

(assert (=> b!1384623 m!1269959))

(declare-fun m!1269961 () Bool)

(assert (=> b!1384623 m!1269961))

(assert (=> b!1384624 m!1269959))

(declare-fun m!1269963 () Bool)

(assert (=> b!1384626 m!1269963))

(declare-fun m!1269965 () Bool)

(assert (=> b!1384619 m!1269965))

(declare-fun m!1269967 () Bool)

(assert (=> b!1384625 m!1269967))

(declare-fun m!1269969 () Bool)

(assert (=> start!118422 m!1269969))

(declare-fun m!1269971 () Bool)

(assert (=> start!118422 m!1269971))

(declare-fun m!1269973 () Bool)

(assert (=> b!1384622 m!1269973))

(declare-fun m!1269975 () Bool)

(assert (=> b!1384622 m!1269975))

(assert (=> b!1384622 m!1269965))

(declare-fun m!1269977 () Bool)

(assert (=> b!1384622 m!1269977))

(assert (=> b!1384622 m!1269975))

(declare-fun m!1269979 () Bool)

(assert (=> b!1384622 m!1269979))

(assert (=> b!1384622 m!1269955))

(declare-fun m!1269981 () Bool)

(assert (=> b!1384622 m!1269981))

(assert (=> b!1384622 m!1269955))

(declare-fun m!1269983 () Bool)

(assert (=> b!1384622 m!1269983))

(check-sat (not start!118422) (not b!1384623) (not b!1384626) (not b!1384627) (not b!1384625) (not b!1384622) (not b!1384618))
(check-sat)
