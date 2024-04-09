; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118400 () Bool)

(assert start!118400)

(declare-fun res!925861 () Bool)

(declare-fun e!784455 () Bool)

(assert (=> start!118400 (=> (not res!925861) (not e!784455))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118400 (= res!925861 (validMask!0 mask!2987))))

(assert (=> start!118400 e!784455))

(assert (=> start!118400 true))

(declare-datatypes ((array!94621 0))(
  ( (array!94622 (arr!45684 (Array (_ BitVec 32) (_ BitVec 64))) (size!46235 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94621)

(declare-fun array_inv!34629 (array!94621) Bool)

(assert (=> start!118400 (array_inv!34629 a!2938)))

(declare-fun b!1384298 () Bool)

(assert (=> b!1384298 (= e!784455 false)))

(declare-datatypes ((Unit!46110 0))(
  ( (Unit!46111) )
))
(declare-fun lt!608812 () Unit!46110)

(declare-fun e!784454 () Unit!46110)

(assert (=> b!1384298 (= lt!608812 e!784454)))

(declare-fun c!128663 () Bool)

(declare-fun e!784457 () Bool)

(assert (=> b!1384298 (= c!128663 e!784457)))

(declare-fun res!925862 () Bool)

(assert (=> b!1384298 (=> (not res!925862) (not e!784457))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1384298 (= res!925862 (not (= startIndex!16 i!1065)))))

(declare-fun b!1384299 () Bool)

(declare-fun lt!608810 () Unit!46110)

(assert (=> b!1384299 (= e!784454 lt!608810)))

(declare-fun lt!608811 () Unit!46110)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94621 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46110)

(assert (=> b!1384299 (= lt!608811 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10098 0))(
  ( (MissingZero!10098 (index!42762 (_ BitVec 32))) (Found!10098 (index!42763 (_ BitVec 32))) (Intermediate!10098 (undefined!10910 Bool) (index!42764 (_ BitVec 32)) (x!124270 (_ BitVec 32))) (Undefined!10098) (MissingVacant!10098 (index!42765 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94621 (_ BitVec 32)) SeekEntryResult!10098)

(assert (=> b!1384299 (= (seekEntryOrOpen!0 (select (arr!45684 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45684 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94622 (store (arr!45684 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46235 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94621 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46110)

(assert (=> b!1384299 (= lt!608810 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94621 (_ BitVec 32)) Bool)

(assert (=> b!1384299 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384300 () Bool)

(declare-fun res!925857 () Bool)

(assert (=> b!1384300 (=> (not res!925857) (not e!784455))))

(assert (=> b!1384300 (= res!925857 (and (= (size!46235 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46235 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46235 a!2938))))))

(declare-fun b!1384301 () Bool)

(declare-fun res!925863 () Bool)

(assert (=> b!1384301 (=> (not res!925863) (not e!784455))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384301 (= res!925863 (validKeyInArray!0 (select (arr!45684 a!2938) i!1065)))))

(declare-fun b!1384302 () Bool)

(declare-fun res!925859 () Bool)

(assert (=> b!1384302 (=> (not res!925859) (not e!784455))))

(assert (=> b!1384302 (= res!925859 (and (not (= (select (arr!45684 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45684 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384303 () Bool)

(declare-fun res!925858 () Bool)

(assert (=> b!1384303 (=> (not res!925858) (not e!784455))))

(assert (=> b!1384303 (= res!925858 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384304 () Bool)

(declare-fun Unit!46112 () Unit!46110)

(assert (=> b!1384304 (= e!784454 Unit!46112)))

(declare-fun b!1384305 () Bool)

(assert (=> b!1384305 (= e!784457 (validKeyInArray!0 (select (arr!45684 a!2938) startIndex!16)))))

(declare-fun b!1384306 () Bool)

(declare-fun res!925860 () Bool)

(assert (=> b!1384306 (=> (not res!925860) (not e!784455))))

(declare-datatypes ((List!32392 0))(
  ( (Nil!32389) (Cons!32388 (h!33597 (_ BitVec 64)) (t!47093 List!32392)) )
))
(declare-fun arrayNoDuplicates!0 (array!94621 (_ BitVec 32) List!32392) Bool)

(assert (=> b!1384306 (= res!925860 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32389))))

(assert (= (and start!118400 res!925861) b!1384300))

(assert (= (and b!1384300 res!925857) b!1384301))

(assert (= (and b!1384301 res!925863) b!1384306))

(assert (= (and b!1384306 res!925860) b!1384303))

(assert (= (and b!1384303 res!925858) b!1384302))

(assert (= (and b!1384302 res!925859) b!1384298))

(assert (= (and b!1384298 res!925862) b!1384305))

(assert (= (and b!1384298 c!128663) b!1384299))

(assert (= (and b!1384298 (not c!128663)) b!1384304))

(declare-fun m!1269593 () Bool)

(assert (=> b!1384305 m!1269593))

(assert (=> b!1384305 m!1269593))

(declare-fun m!1269595 () Bool)

(assert (=> b!1384305 m!1269595))

(declare-fun m!1269597 () Bool)

(assert (=> b!1384306 m!1269597))

(declare-fun m!1269599 () Bool)

(assert (=> b!1384299 m!1269599))

(declare-fun m!1269601 () Bool)

(assert (=> b!1384299 m!1269601))

(assert (=> b!1384299 m!1269601))

(declare-fun m!1269603 () Bool)

(assert (=> b!1384299 m!1269603))

(declare-fun m!1269605 () Bool)

(assert (=> b!1384299 m!1269605))

(declare-fun m!1269607 () Bool)

(assert (=> b!1384299 m!1269607))

(assert (=> b!1384299 m!1269593))

(declare-fun m!1269609 () Bool)

(assert (=> b!1384299 m!1269609))

(assert (=> b!1384299 m!1269593))

(declare-fun m!1269611 () Bool)

(assert (=> b!1384299 m!1269611))

(declare-fun m!1269613 () Bool)

(assert (=> b!1384301 m!1269613))

(assert (=> b!1384301 m!1269613))

(declare-fun m!1269615 () Bool)

(assert (=> b!1384301 m!1269615))

(declare-fun m!1269617 () Bool)

(assert (=> start!118400 m!1269617))

(declare-fun m!1269619 () Bool)

(assert (=> start!118400 m!1269619))

(assert (=> b!1384302 m!1269613))

(declare-fun m!1269621 () Bool)

(assert (=> b!1384303 m!1269621))

(push 1)

(assert (not b!1384301))

(assert (not b!1384303))

(assert (not b!1384306))

(assert (not b!1384305))

(assert (not b!1384299))

(assert (not start!118400))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

