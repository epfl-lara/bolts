; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118450 () Bool)

(assert start!118450)

(declare-fun b!1385009 () Bool)

(declare-datatypes ((Unit!46185 0))(
  ( (Unit!46186) )
))
(declare-fun e!784791 () Unit!46185)

(declare-fun Unit!46187 () Unit!46185)

(assert (=> b!1385009 (= e!784791 Unit!46187)))

(declare-fun b!1385010 () Bool)

(declare-fun e!784790 () Bool)

(declare-datatypes ((array!94671 0))(
  ( (array!94672 (arr!45709 (Array (_ BitVec 32) (_ BitVec 64))) (size!46260 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94671)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385010 (= e!784790 (validKeyInArray!0 (select (arr!45709 a!2938) startIndex!16)))))

(declare-fun res!926419 () Bool)

(declare-fun e!784793 () Bool)

(assert (=> start!118450 (=> (not res!926419) (not e!784793))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118450 (= res!926419 (validMask!0 mask!2987))))

(assert (=> start!118450 e!784793))

(assert (=> start!118450 true))

(declare-fun array_inv!34654 (array!94671) Bool)

(assert (=> start!118450 (array_inv!34654 a!2938)))

(declare-fun b!1385011 () Bool)

(declare-fun res!926418 () Bool)

(assert (=> b!1385011 (=> (not res!926418) (not e!784793))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1385011 (= res!926418 (and (not (= (select (arr!45709 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45709 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1385012 () Bool)

(assert (=> b!1385012 (= e!784793 (and (bvsge startIndex!16 (bvsub (size!46260 a!2938) #b00000000000000000000000000000001)) (bvsgt startIndex!16 (size!46260 a!2938))))))

(declare-fun lt!609107 () Unit!46185)

(assert (=> b!1385012 (= lt!609107 e!784791)))

(declare-fun c!128738 () Bool)

(assert (=> b!1385012 (= c!128738 e!784790)))

(declare-fun res!926421 () Bool)

(assert (=> b!1385012 (=> (not res!926421) (not e!784790))))

(assert (=> b!1385012 (= res!926421 (not (= startIndex!16 i!1065)))))

(declare-fun b!1385013 () Bool)

(declare-fun res!926420 () Bool)

(assert (=> b!1385013 (=> (not res!926420) (not e!784793))))

(assert (=> b!1385013 (= res!926420 (and (= (size!46260 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46260 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46260 a!2938))))))

(declare-fun b!1385014 () Bool)

(declare-fun res!926422 () Bool)

(assert (=> b!1385014 (=> (not res!926422) (not e!784793))))

(declare-datatypes ((List!32417 0))(
  ( (Nil!32414) (Cons!32413 (h!33622 (_ BitVec 64)) (t!47118 List!32417)) )
))
(declare-fun arrayNoDuplicates!0 (array!94671 (_ BitVec 32) List!32417) Bool)

(assert (=> b!1385014 (= res!926422 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32414))))

(declare-fun b!1385015 () Bool)

(declare-fun lt!609109 () Unit!46185)

(assert (=> b!1385015 (= e!784791 lt!609109)))

(declare-fun lt!609108 () Unit!46185)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94671 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46185)

(assert (=> b!1385015 (= lt!609108 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10123 0))(
  ( (MissingZero!10123 (index!42862 (_ BitVec 32))) (Found!10123 (index!42863 (_ BitVec 32))) (Intermediate!10123 (undefined!10935 Bool) (index!42864 (_ BitVec 32)) (x!124367 (_ BitVec 32))) (Undefined!10123) (MissingVacant!10123 (index!42865 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94671 (_ BitVec 32)) SeekEntryResult!10123)

(assert (=> b!1385015 (= (seekEntryOrOpen!0 (select (arr!45709 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45709 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94672 (store (arr!45709 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46260 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94671 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46185)

(assert (=> b!1385015 (= lt!609109 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94671 (_ BitVec 32)) Bool)

(assert (=> b!1385015 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1385016 () Bool)

(declare-fun res!926423 () Bool)

(assert (=> b!1385016 (=> (not res!926423) (not e!784793))))

(assert (=> b!1385016 (= res!926423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385017 () Bool)

(declare-fun res!926424 () Bool)

(assert (=> b!1385017 (=> (not res!926424) (not e!784793))))

(assert (=> b!1385017 (= res!926424 (validKeyInArray!0 (select (arr!45709 a!2938) i!1065)))))

(assert (= (and start!118450 res!926419) b!1385013))

(assert (= (and b!1385013 res!926420) b!1385017))

(assert (= (and b!1385017 res!926424) b!1385014))

(assert (= (and b!1385014 res!926422) b!1385016))

(assert (= (and b!1385016 res!926423) b!1385011))

(assert (= (and b!1385011 res!926418) b!1385012))

(assert (= (and b!1385012 res!926421) b!1385010))

(assert (= (and b!1385012 c!128738) b!1385015))

(assert (= (and b!1385012 (not c!128738)) b!1385009))

(declare-fun m!1270391 () Bool)

(assert (=> b!1385016 m!1270391))

(declare-fun m!1270393 () Bool)

(assert (=> b!1385011 m!1270393))

(declare-fun m!1270395 () Bool)

(assert (=> b!1385010 m!1270395))

(assert (=> b!1385010 m!1270395))

(declare-fun m!1270397 () Bool)

(assert (=> b!1385010 m!1270397))

(declare-fun m!1270399 () Bool)

(assert (=> b!1385014 m!1270399))

(declare-fun m!1270401 () Bool)

(assert (=> start!118450 m!1270401))

(declare-fun m!1270403 () Bool)

(assert (=> start!118450 m!1270403))

(declare-fun m!1270405 () Bool)

(assert (=> b!1385015 m!1270405))

(declare-fun m!1270407 () Bool)

(assert (=> b!1385015 m!1270407))

(assert (=> b!1385015 m!1270407))

(declare-fun m!1270409 () Bool)

(assert (=> b!1385015 m!1270409))

(declare-fun m!1270411 () Bool)

(assert (=> b!1385015 m!1270411))

(declare-fun m!1270413 () Bool)

(assert (=> b!1385015 m!1270413))

(assert (=> b!1385015 m!1270395))

(declare-fun m!1270415 () Bool)

(assert (=> b!1385015 m!1270415))

(assert (=> b!1385015 m!1270395))

(declare-fun m!1270417 () Bool)

(assert (=> b!1385015 m!1270417))

(assert (=> b!1385017 m!1270393))

(assert (=> b!1385017 m!1270393))

(declare-fun m!1270419 () Bool)

(assert (=> b!1385017 m!1270419))

(push 1)

(assert (not b!1385015))

(assert (not b!1385010))

(assert (not start!118450))

(assert (not b!1385017))

(assert (not b!1385014))

(assert (not b!1385016))

(check-sat)

(pop 1)

(push 1)

(check-sat)

