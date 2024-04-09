; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118500 () Bool)

(assert start!118500)

(declare-fun b!1385265 () Bool)

(declare-fun res!926623 () Bool)

(declare-fun e!784927 () Bool)

(assert (=> b!1385265 (=> (not res!926623) (not e!784927))))

(declare-datatypes ((array!94694 0))(
  ( (array!94695 (arr!45719 (Array (_ BitVec 32) (_ BitVec 64))) (size!46270 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94694)

(declare-datatypes ((List!32427 0))(
  ( (Nil!32424) (Cons!32423 (h!33632 (_ BitVec 64)) (t!47128 List!32427)) )
))
(declare-fun arrayNoDuplicates!0 (array!94694 (_ BitVec 32) List!32427) Bool)

(assert (=> b!1385265 (= res!926623 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32424))))

(declare-fun res!926624 () Bool)

(assert (=> start!118500 (=> (not res!926624) (not e!784927))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118500 (= res!926624 (validMask!0 mask!2987))))

(assert (=> start!118500 e!784927))

(assert (=> start!118500 true))

(declare-fun array_inv!34664 (array!94694) Bool)

(assert (=> start!118500 (array_inv!34664 a!2938)))

(declare-fun b!1385266 () Bool)

(assert (=> b!1385266 (= e!784927 false)))

(declare-fun lt!609160 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94694 (_ BitVec 32)) Bool)

(assert (=> b!1385266 (= lt!609160 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385263 () Bool)

(declare-fun res!926622 () Bool)

(assert (=> b!1385263 (=> (not res!926622) (not e!784927))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385263 (= res!926622 (and (= (size!46270 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46270 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46270 a!2938))))))

(declare-fun b!1385264 () Bool)

(declare-fun res!926625 () Bool)

(assert (=> b!1385264 (=> (not res!926625) (not e!784927))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385264 (= res!926625 (validKeyInArray!0 (select (arr!45719 a!2938) i!1065)))))

(assert (= (and start!118500 res!926624) b!1385263))

(assert (= (and b!1385263 res!926622) b!1385264))

(assert (= (and b!1385264 res!926625) b!1385265))

(assert (= (and b!1385265 res!926623) b!1385266))

(declare-fun m!1270613 () Bool)

(assert (=> b!1385265 m!1270613))

(declare-fun m!1270615 () Bool)

(assert (=> start!118500 m!1270615))

(declare-fun m!1270617 () Bool)

(assert (=> start!118500 m!1270617))

(declare-fun m!1270619 () Bool)

(assert (=> b!1385266 m!1270619))

(declare-fun m!1270621 () Bool)

(assert (=> b!1385264 m!1270621))

(assert (=> b!1385264 m!1270621))

(declare-fun m!1270623 () Bool)

(assert (=> b!1385264 m!1270623))

(check-sat (not b!1385265) (not start!118500) (not b!1385264) (not b!1385266))
