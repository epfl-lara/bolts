; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118554 () Bool)

(assert start!118554)

(declare-fun b!1385590 () Bool)

(declare-fun e!785089 () Bool)

(assert (=> b!1385590 (= e!785089 false)))

(declare-fun lt!609241 () Bool)

(declare-datatypes ((array!94748 0))(
  ( (array!94749 (arr!45746 (Array (_ BitVec 32) (_ BitVec 64))) (size!46297 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94748)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94748 (_ BitVec 32)) Bool)

(assert (=> b!1385590 (= lt!609241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385589 () Bool)

(declare-fun res!926947 () Bool)

(assert (=> b!1385589 (=> (not res!926947) (not e!785089))))

(declare-datatypes ((List!32454 0))(
  ( (Nil!32451) (Cons!32450 (h!33659 (_ BitVec 64)) (t!47155 List!32454)) )
))
(declare-fun arrayNoDuplicates!0 (array!94748 (_ BitVec 32) List!32454) Bool)

(assert (=> b!1385589 (= res!926947 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32451))))

(declare-fun res!926946 () Bool)

(assert (=> start!118554 (=> (not res!926946) (not e!785089))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118554 (= res!926946 (validMask!0 mask!2987))))

(assert (=> start!118554 e!785089))

(assert (=> start!118554 true))

(declare-fun array_inv!34691 (array!94748) Bool)

(assert (=> start!118554 (array_inv!34691 a!2938)))

(declare-fun b!1385587 () Bool)

(declare-fun res!926949 () Bool)

(assert (=> b!1385587 (=> (not res!926949) (not e!785089))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385587 (= res!926949 (and (= (size!46297 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46297 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46297 a!2938))))))

(declare-fun b!1385588 () Bool)

(declare-fun res!926948 () Bool)

(assert (=> b!1385588 (=> (not res!926948) (not e!785089))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385588 (= res!926948 (validKeyInArray!0 (select (arr!45746 a!2938) i!1065)))))

(assert (= (and start!118554 res!926946) b!1385587))

(assert (= (and b!1385587 res!926949) b!1385588))

(assert (= (and b!1385588 res!926948) b!1385589))

(assert (= (and b!1385589 res!926947) b!1385590))

(declare-fun m!1270937 () Bool)

(assert (=> b!1385590 m!1270937))

(declare-fun m!1270939 () Bool)

(assert (=> b!1385589 m!1270939))

(declare-fun m!1270941 () Bool)

(assert (=> start!118554 m!1270941))

(declare-fun m!1270943 () Bool)

(assert (=> start!118554 m!1270943))

(declare-fun m!1270945 () Bool)

(assert (=> b!1385588 m!1270945))

(assert (=> b!1385588 m!1270945))

(declare-fun m!1270947 () Bool)

(assert (=> b!1385588 m!1270947))

(check-sat (not b!1385588) (not start!118554) (not b!1385589) (not b!1385590))
