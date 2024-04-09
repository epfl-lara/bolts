; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134618 () Bool)

(assert start!134618)

(declare-fun res!1073428 () Bool)

(declare-fun e!875976 () Bool)

(assert (=> start!134618 (=> (not res!1073428) (not e!875976))))

(declare-fun mask!4043 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134618 (= res!1073428 (validMask!0 mask!4043))))

(assert (=> start!134618 e!875976))

(assert (=> start!134618 true))

(declare-datatypes ((array!104784 0))(
  ( (array!104785 (arr!50567 (Array (_ BitVec 32) (_ BitVec 64))) (size!51118 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104784)

(declare-fun array_inv!39212 (array!104784) Bool)

(assert (=> start!134618 (array_inv!39212 a!3462)))

(declare-fun b!1571035 () Bool)

(declare-fun res!1073429 () Bool)

(assert (=> b!1571035 (=> (not res!1073429) (not e!875976))))

(assert (=> b!1571035 (= res!1073429 (= (size!51118 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun b!1571036 () Bool)

(assert (=> b!1571036 (= e!875976 false)))

(declare-fun lt!673408 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104784 (_ BitVec 32)) Bool)

(assert (=> b!1571036 (= lt!673408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(assert (= (and start!134618 res!1073428) b!1571035))

(assert (= (and b!1571035 res!1073429) b!1571036))

(declare-fun m!1445083 () Bool)

(assert (=> start!134618 m!1445083))

(declare-fun m!1445085 () Bool)

(assert (=> start!134618 m!1445085))

(declare-fun m!1445087 () Bool)

(assert (=> b!1571036 m!1445087))

(check-sat (not b!1571036) (not start!134618))
