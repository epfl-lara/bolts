; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118578 () Bool)

(assert start!118578)

(declare-fun res!927118 () Bool)

(declare-fun e!785161 () Bool)

(assert (=> start!118578 (=> (not res!927118) (not e!785161))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118578 (= res!927118 (validMask!0 mask!2987))))

(assert (=> start!118578 e!785161))

(assert (=> start!118578 true))

(declare-datatypes ((array!94772 0))(
  ( (array!94773 (arr!45758 (Array (_ BitVec 32) (_ BitVec 64))) (size!46309 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94772)

(declare-fun array_inv!34703 (array!94772) Bool)

(assert (=> start!118578 (array_inv!34703 a!2938)))

(declare-fun b!1385759 () Bool)

(declare-fun res!927117 () Bool)

(assert (=> b!1385759 (=> (not res!927117) (not e!785161))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385759 (= res!927117 (validKeyInArray!0 (select (arr!45758 a!2938) i!1065)))))

(declare-fun b!1385760 () Bool)

(declare-fun res!927120 () Bool)

(assert (=> b!1385760 (=> (not res!927120) (not e!785161))))

(declare-datatypes ((List!32466 0))(
  ( (Nil!32463) (Cons!32462 (h!33671 (_ BitVec 64)) (t!47167 List!32466)) )
))
(declare-fun arrayNoDuplicates!0 (array!94772 (_ BitVec 32) List!32466) Bool)

(assert (=> b!1385760 (= res!927120 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32463))))

(declare-fun b!1385761 () Bool)

(assert (=> b!1385761 (= e!785161 false)))

(declare-fun lt!609268 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94772 (_ BitVec 32)) Bool)

(assert (=> b!1385761 (= lt!609268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385758 () Bool)

(declare-fun res!927119 () Bool)

(assert (=> b!1385758 (=> (not res!927119) (not e!785161))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385758 (= res!927119 (and (= (size!46309 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46309 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46309 a!2938))))))

(assert (= (and start!118578 res!927118) b!1385758))

(assert (= (and b!1385758 res!927119) b!1385759))

(assert (= (and b!1385759 res!927117) b!1385760))

(assert (= (and b!1385760 res!927120) b!1385761))

(declare-fun m!1271093 () Bool)

(assert (=> start!118578 m!1271093))

(declare-fun m!1271095 () Bool)

(assert (=> start!118578 m!1271095))

(declare-fun m!1271097 () Bool)

(assert (=> b!1385759 m!1271097))

(assert (=> b!1385759 m!1271097))

(declare-fun m!1271099 () Bool)

(assert (=> b!1385759 m!1271099))

(declare-fun m!1271101 () Bool)

(assert (=> b!1385760 m!1271101))

(declare-fun m!1271103 () Bool)

(assert (=> b!1385761 m!1271103))

(check-sat (not b!1385761) (not start!118578) (not b!1385760) (not b!1385759))
