; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134810 () Bool)

(assert start!134810)

(declare-fun res!1073823 () Bool)

(declare-fun e!876299 () Bool)

(assert (=> start!134810 (=> (not res!1073823) (not e!876299))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134810 (= res!1073823 (validMask!0 mask!889))))

(assert (=> start!134810 e!876299))

(assert (=> start!134810 true))

(declare-datatypes ((array!104871 0))(
  ( (array!104872 (arr!50603 (Array (_ BitVec 32) (_ BitVec 64))) (size!51154 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104871)

(declare-fun array_inv!39248 (array!104871) Bool)

(assert (=> start!134810 (array_inv!39248 _keys!600)))

(declare-fun b!1571571 () Bool)

(declare-fun res!1073825 () Bool)

(assert (=> b!1571571 (=> (not res!1073825) (not e!876299))))

(assert (=> b!1571571 (= res!1073825 (= (size!51154 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571572 () Bool)

(declare-fun res!1073824 () Bool)

(assert (=> b!1571572 (=> (not res!1073824) (not e!876299))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571572 (= res!1073824 (validKeyInArray!0 k0!754))))

(declare-fun b!1571573 () Bool)

(assert (=> b!1571573 (= e!876299 false)))

(declare-fun lt!673615 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571573 (= lt!673615 (toIndex!0 k0!754 mask!889))))

(assert (= (and start!134810 res!1073823) b!1571571))

(assert (= (and b!1571571 res!1073825) b!1571572))

(assert (= (and b!1571572 res!1073824) b!1571573))

(declare-fun m!1445505 () Bool)

(assert (=> start!134810 m!1445505))

(declare-fun m!1445507 () Bool)

(assert (=> start!134810 m!1445507))

(declare-fun m!1445509 () Bool)

(assert (=> b!1571572 m!1445509))

(declare-fun m!1445511 () Bool)

(assert (=> b!1571573 m!1445511))

(check-sat (not start!134810) (not b!1571573) (not b!1571572))
(check-sat)
