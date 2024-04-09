; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118284 () Bool)

(assert start!118284)

(declare-fun b!1383115 () Bool)

(declare-fun e!783965 () Bool)

(assert (=> b!1383115 (= e!783965 false)))

(declare-fun lt!608494 () Bool)

(declare-datatypes ((array!94505 0))(
  ( (array!94506 (arr!45626 (Array (_ BitVec 32) (_ BitVec 64))) (size!46177 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94505)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94505 (_ BitVec 32)) Bool)

(assert (=> b!1383115 (= lt!608494 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383113 () Bool)

(declare-fun res!924813 () Bool)

(assert (=> b!1383113 (=> (not res!924813) (not e!783965))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383113 (= res!924813 (validKeyInArray!0 (select (arr!45626 a!2938) i!1065)))))

(declare-fun b!1383114 () Bool)

(declare-fun res!924815 () Bool)

(assert (=> b!1383114 (=> (not res!924815) (not e!783965))))

(declare-datatypes ((List!32334 0))(
  ( (Nil!32331) (Cons!32330 (h!33539 (_ BitVec 64)) (t!47035 List!32334)) )
))
(declare-fun arrayNoDuplicates!0 (array!94505 (_ BitVec 32) List!32334) Bool)

(assert (=> b!1383114 (= res!924815 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32331))))

(declare-fun res!924814 () Bool)

(assert (=> start!118284 (=> (not res!924814) (not e!783965))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118284 (= res!924814 (validMask!0 mask!2987))))

(assert (=> start!118284 e!783965))

(assert (=> start!118284 true))

(declare-fun array_inv!34571 (array!94505) Bool)

(assert (=> start!118284 (array_inv!34571 a!2938)))

(declare-fun b!1383112 () Bool)

(declare-fun res!924816 () Bool)

(assert (=> b!1383112 (=> (not res!924816) (not e!783965))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383112 (= res!924816 (and (= (size!46177 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46177 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46177 a!2938))))))

(assert (= (and start!118284 res!924814) b!1383112))

(assert (= (and b!1383112 res!924816) b!1383113))

(assert (= (and b!1383113 res!924813) b!1383114))

(assert (= (and b!1383114 res!924815) b!1383115))

(declare-fun m!1268273 () Bool)

(assert (=> b!1383115 m!1268273))

(declare-fun m!1268275 () Bool)

(assert (=> b!1383113 m!1268275))

(assert (=> b!1383113 m!1268275))

(declare-fun m!1268277 () Bool)

(assert (=> b!1383113 m!1268277))

(declare-fun m!1268279 () Bool)

(assert (=> b!1383114 m!1268279))

(declare-fun m!1268281 () Bool)

(assert (=> start!118284 m!1268281))

(declare-fun m!1268283 () Bool)

(assert (=> start!118284 m!1268283))

(check-sat (not b!1383115) (not b!1383113) (not start!118284) (not b!1383114))
