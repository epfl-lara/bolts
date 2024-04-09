; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118556 () Bool)

(assert start!118556)

(declare-fun res!926959 () Bool)

(declare-fun e!785095 () Bool)

(assert (=> start!118556 (=> (not res!926959) (not e!785095))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118556 (= res!926959 (validMask!0 mask!2987))))

(assert (=> start!118556 e!785095))

(assert (=> start!118556 true))

(declare-datatypes ((array!94750 0))(
  ( (array!94751 (arr!45747 (Array (_ BitVec 32) (_ BitVec 64))) (size!46298 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94750)

(declare-fun array_inv!34692 (array!94750) Bool)

(assert (=> start!118556 (array_inv!34692 a!2938)))

(declare-fun b!1385602 () Bool)

(assert (=> b!1385602 (= e!785095 false)))

(declare-fun lt!609244 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94750 (_ BitVec 32)) Bool)

(assert (=> b!1385602 (= lt!609244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385599 () Bool)

(declare-fun res!926958 () Bool)

(assert (=> b!1385599 (=> (not res!926958) (not e!785095))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385599 (= res!926958 (and (= (size!46298 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46298 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46298 a!2938))))))

(declare-fun b!1385601 () Bool)

(declare-fun res!926961 () Bool)

(assert (=> b!1385601 (=> (not res!926961) (not e!785095))))

(declare-datatypes ((List!32455 0))(
  ( (Nil!32452) (Cons!32451 (h!33660 (_ BitVec 64)) (t!47156 List!32455)) )
))
(declare-fun arrayNoDuplicates!0 (array!94750 (_ BitVec 32) List!32455) Bool)

(assert (=> b!1385601 (= res!926961 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32452))))

(declare-fun b!1385600 () Bool)

(declare-fun res!926960 () Bool)

(assert (=> b!1385600 (=> (not res!926960) (not e!785095))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385600 (= res!926960 (validKeyInArray!0 (select (arr!45747 a!2938) i!1065)))))

(assert (= (and start!118556 res!926959) b!1385599))

(assert (= (and b!1385599 res!926958) b!1385600))

(assert (= (and b!1385600 res!926960) b!1385601))

(assert (= (and b!1385601 res!926961) b!1385602))

(declare-fun m!1270949 () Bool)

(assert (=> start!118556 m!1270949))

(declare-fun m!1270951 () Bool)

(assert (=> start!118556 m!1270951))

(declare-fun m!1270953 () Bool)

(assert (=> b!1385602 m!1270953))

(declare-fun m!1270955 () Bool)

(assert (=> b!1385601 m!1270955))

(declare-fun m!1270957 () Bool)

(assert (=> b!1385600 m!1270957))

(assert (=> b!1385600 m!1270957))

(declare-fun m!1270959 () Bool)

(assert (=> b!1385600 m!1270959))

(push 1)

(assert (not b!1385600))

(assert (not b!1385601))

(assert (not start!118556))

(assert (not b!1385602))

(check-sat)

(pop 1)

