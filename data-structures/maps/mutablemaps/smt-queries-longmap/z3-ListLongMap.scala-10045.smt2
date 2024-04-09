; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118416 () Bool)

(assert start!118416)

(declare-fun b!1384528 () Bool)

(declare-datatypes ((Unit!46134 0))(
  ( (Unit!46135) )
))
(declare-fun e!784565 () Unit!46134)

(declare-fun Unit!46136 () Unit!46134)

(assert (=> b!1384528 (= e!784565 Unit!46136)))

(declare-fun b!1384529 () Bool)

(declare-fun res!926046 () Bool)

(declare-fun e!784568 () Bool)

(assert (=> b!1384529 (=> (not res!926046) (not e!784568))))

(declare-datatypes ((array!94637 0))(
  ( (array!94638 (arr!45692 (Array (_ BitVec 32) (_ BitVec 64))) (size!46243 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94637)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384529 (= res!926046 (validKeyInArray!0 (select (arr!45692 a!2938) i!1065)))))

(declare-fun b!1384530 () Bool)

(declare-fun res!926045 () Bool)

(assert (=> b!1384530 (=> (not res!926045) (not e!784568))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94637 (_ BitVec 32)) Bool)

(assert (=> b!1384530 (= res!926045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384531 () Bool)

(declare-fun e!784567 () Bool)

(assert (=> b!1384531 (= e!784567 (not true))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun lt!608910 () array!94637)

(assert (=> b!1384531 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) lt!608910 mask!2987)))

(declare-fun lt!608911 () Unit!46134)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94637 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46134)

(assert (=> b!1384531 (= lt!608911 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987))))

(declare-fun b!1384533 () Bool)

(declare-fun lt!608914 () Unit!46134)

(assert (=> b!1384533 (= e!784565 lt!608914)))

(declare-fun lt!608913 () Unit!46134)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94637 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46134)

(assert (=> b!1384533 (= lt!608913 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10106 0))(
  ( (MissingZero!10106 (index!42794 (_ BitVec 32))) (Found!10106 (index!42795 (_ BitVec 32))) (Intermediate!10106 (undefined!10918 Bool) (index!42796 (_ BitVec 32)) (x!124302 (_ BitVec 32))) (Undefined!10106) (MissingVacant!10106 (index!42797 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94637 (_ BitVec 32)) SeekEntryResult!10106)

(assert (=> b!1384533 (= (seekEntryOrOpen!0 (select (arr!45692 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45692 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!608910 mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94637 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46134)

(assert (=> b!1384533 (= lt!608914 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384533 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384534 () Bool)

(declare-fun res!926040 () Bool)

(assert (=> b!1384534 (=> (not res!926040) (not e!784568))))

(declare-datatypes ((List!32400 0))(
  ( (Nil!32397) (Cons!32396 (h!33605 (_ BitVec 64)) (t!47101 List!32400)) )
))
(declare-fun arrayNoDuplicates!0 (array!94637 (_ BitVec 32) List!32400) Bool)

(assert (=> b!1384534 (= res!926040 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32397))))

(declare-fun b!1384535 () Bool)

(assert (=> b!1384535 (= e!784568 e!784567)))

(declare-fun res!926042 () Bool)

(assert (=> b!1384535 (=> (not res!926042) (not e!784567))))

(assert (=> b!1384535 (= res!926042 (and (bvslt startIndex!16 (bvsub (size!46243 a!2938) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))))

(declare-fun lt!608912 () Unit!46134)

(assert (=> b!1384535 (= lt!608912 e!784565)))

(declare-fun c!128687 () Bool)

(declare-fun e!784564 () Bool)

(assert (=> b!1384535 (= c!128687 e!784564)))

(declare-fun res!926039 () Bool)

(assert (=> b!1384535 (=> (not res!926039) (not e!784564))))

(assert (=> b!1384535 (= res!926039 (not (= startIndex!16 i!1065)))))

(assert (=> b!1384535 (= lt!608910 (array!94638 (store (arr!45692 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46243 a!2938)))))

(declare-fun b!1384536 () Bool)

(declare-fun res!926044 () Bool)

(assert (=> b!1384536 (=> (not res!926044) (not e!784568))))

(assert (=> b!1384536 (= res!926044 (and (not (= (select (arr!45692 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45692 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384537 () Bool)

(assert (=> b!1384537 (= e!784564 (validKeyInArray!0 (select (arr!45692 a!2938) startIndex!16)))))

(declare-fun b!1384532 () Bool)

(declare-fun res!926041 () Bool)

(assert (=> b!1384532 (=> (not res!926041) (not e!784568))))

(assert (=> b!1384532 (= res!926041 (and (= (size!46243 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46243 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46243 a!2938))))))

(declare-fun res!926043 () Bool)

(assert (=> start!118416 (=> (not res!926043) (not e!784568))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118416 (= res!926043 (validMask!0 mask!2987))))

(assert (=> start!118416 e!784568))

(assert (=> start!118416 true))

(declare-fun array_inv!34637 (array!94637) Bool)

(assert (=> start!118416 (array_inv!34637 a!2938)))

(assert (= (and start!118416 res!926043) b!1384532))

(assert (= (and b!1384532 res!926041) b!1384529))

(assert (= (and b!1384529 res!926046) b!1384534))

(assert (= (and b!1384534 res!926040) b!1384530))

(assert (= (and b!1384530 res!926045) b!1384536))

(assert (= (and b!1384536 res!926044) b!1384535))

(assert (= (and b!1384535 res!926039) b!1384537))

(assert (= (and b!1384535 c!128687) b!1384533))

(assert (= (and b!1384535 (not c!128687)) b!1384528))

(assert (= (and b!1384535 res!926042) b!1384531))

(declare-fun m!1269849 () Bool)

(assert (=> b!1384534 m!1269849))

(declare-fun m!1269851 () Bool)

(assert (=> b!1384533 m!1269851))

(declare-fun m!1269853 () Bool)

(assert (=> b!1384533 m!1269853))

(declare-fun m!1269855 () Bool)

(assert (=> b!1384533 m!1269855))

(declare-fun m!1269857 () Bool)

(assert (=> b!1384533 m!1269857))

(assert (=> b!1384533 m!1269853))

(declare-fun m!1269859 () Bool)

(assert (=> b!1384533 m!1269859))

(declare-fun m!1269861 () Bool)

(assert (=> b!1384533 m!1269861))

(declare-fun m!1269863 () Bool)

(assert (=> b!1384533 m!1269863))

(assert (=> b!1384533 m!1269861))

(declare-fun m!1269865 () Bool)

(assert (=> b!1384533 m!1269865))

(declare-fun m!1269867 () Bool)

(assert (=> b!1384530 m!1269867))

(declare-fun m!1269869 () Bool)

(assert (=> b!1384531 m!1269869))

(declare-fun m!1269871 () Bool)

(assert (=> b!1384531 m!1269871))

(assert (=> b!1384535 m!1269855))

(declare-fun m!1269873 () Bool)

(assert (=> start!118416 m!1269873))

(declare-fun m!1269875 () Bool)

(assert (=> start!118416 m!1269875))

(declare-fun m!1269877 () Bool)

(assert (=> b!1384529 m!1269877))

(assert (=> b!1384529 m!1269877))

(declare-fun m!1269879 () Bool)

(assert (=> b!1384529 m!1269879))

(assert (=> b!1384537 m!1269861))

(assert (=> b!1384537 m!1269861))

(declare-fun m!1269881 () Bool)

(assert (=> b!1384537 m!1269881))

(assert (=> b!1384536 m!1269877))

(check-sat (not b!1384533) (not b!1384537) (not b!1384531) (not b!1384529) (not start!118416) (not b!1384534) (not b!1384530))
(check-sat)
