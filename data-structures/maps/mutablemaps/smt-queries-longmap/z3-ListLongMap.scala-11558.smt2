; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134660 () Bool)

(assert start!134660)

(declare-fun res!1073519 () Bool)

(declare-fun e!876056 () Bool)

(assert (=> start!134660 (=> (not res!1073519) (not e!876056))))

(declare-fun mask!4043 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134660 (= res!1073519 (validMask!0 mask!4043))))

(assert (=> start!134660 e!876056))

(assert (=> start!134660 true))

(declare-datatypes ((array!104805 0))(
  ( (array!104806 (arr!50576 (Array (_ BitVec 32) (_ BitVec 64))) (size!51127 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104805)

(declare-fun array_inv!39221 (array!104805) Bool)

(assert (=> start!134660 (array_inv!39221 a!3462)))

(declare-fun b!1571143 () Bool)

(declare-fun res!1073518 () Bool)

(assert (=> b!1571143 (=> (not res!1073518) (not e!876056))))

(assert (=> b!1571143 (= res!1073518 (= (size!51127 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun b!1571144 () Bool)

(assert (=> b!1571144 (= e!876056 false)))

(declare-fun lt!673453 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104805 (_ BitVec 32)) Bool)

(assert (=> b!1571144 (= lt!673453 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(assert (= (and start!134660 res!1073519) b!1571143))

(assert (= (and b!1571143 res!1073518) b!1571144))

(declare-fun m!1445179 () Bool)

(assert (=> start!134660 m!1445179))

(declare-fun m!1445181 () Bool)

(assert (=> start!134660 m!1445181))

(declare-fun m!1445183 () Bool)

(assert (=> b!1571144 m!1445183))

(check-sat (not start!134660) (not b!1571144))
