; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118524 () Bool)

(assert start!118524)

(declare-fun b!1385408 () Bool)

(declare-fun res!926769 () Bool)

(declare-fun e!785000 () Bool)

(assert (=> b!1385408 (=> (not res!926769) (not e!785000))))

(declare-datatypes ((array!94718 0))(
  ( (array!94719 (arr!45731 (Array (_ BitVec 32) (_ BitVec 64))) (size!46282 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94718)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385408 (= res!926769 (validKeyInArray!0 (select (arr!45731 a!2938) i!1065)))))

(declare-fun b!1385407 () Bool)

(declare-fun res!926768 () Bool)

(assert (=> b!1385407 (=> (not res!926768) (not e!785000))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1385407 (= res!926768 (and (= (size!46282 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46282 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46282 a!2938))))))

(declare-fun b!1385410 () Bool)

(assert (=> b!1385410 (= e!785000 false)))

(declare-fun lt!609196 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94718 (_ BitVec 32)) Bool)

(assert (=> b!1385410 (= lt!609196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!926766 () Bool)

(assert (=> start!118524 (=> (not res!926766) (not e!785000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118524 (= res!926766 (validMask!0 mask!2987))))

(assert (=> start!118524 e!785000))

(assert (=> start!118524 true))

(declare-fun array_inv!34676 (array!94718) Bool)

(assert (=> start!118524 (array_inv!34676 a!2938)))

(declare-fun b!1385409 () Bool)

(declare-fun res!926767 () Bool)

(assert (=> b!1385409 (=> (not res!926767) (not e!785000))))

(declare-datatypes ((List!32439 0))(
  ( (Nil!32436) (Cons!32435 (h!33644 (_ BitVec 64)) (t!47140 List!32439)) )
))
(declare-fun arrayNoDuplicates!0 (array!94718 (_ BitVec 32) List!32439) Bool)

(assert (=> b!1385409 (= res!926767 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32436))))

(assert (= (and start!118524 res!926766) b!1385407))

(assert (= (and b!1385407 res!926768) b!1385408))

(assert (= (and b!1385408 res!926769) b!1385409))

(assert (= (and b!1385409 res!926767) b!1385410))

(declare-fun m!1270757 () Bool)

(assert (=> b!1385408 m!1270757))

(assert (=> b!1385408 m!1270757))

(declare-fun m!1270759 () Bool)

(assert (=> b!1385408 m!1270759))

(declare-fun m!1270761 () Bool)

(assert (=> b!1385410 m!1270761))

(declare-fun m!1270763 () Bool)

(assert (=> start!118524 m!1270763))

(declare-fun m!1270765 () Bool)

(assert (=> start!118524 m!1270765))

(declare-fun m!1270767 () Bool)

(assert (=> b!1385409 m!1270767))

(check-sat (not b!1385410) (not start!118524) (not b!1385409) (not b!1385408))
(check-sat)
