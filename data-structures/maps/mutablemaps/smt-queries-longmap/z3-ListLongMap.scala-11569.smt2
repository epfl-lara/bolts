; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134846 () Bool)

(assert start!134846)

(declare-fun res!1073881 () Bool)

(declare-fun e!876336 () Bool)

(assert (=> start!134846 (=> (not res!1073881) (not e!876336))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134846 (= res!1073881 (validMask!0 mask!889))))

(assert (=> start!134846 e!876336))

(assert (=> start!134846 true))

(declare-datatypes ((array!104886 0))(
  ( (array!104887 (arr!50609 (Array (_ BitVec 32) (_ BitVec 64))) (size!51160 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104886)

(declare-fun array_inv!39254 (array!104886) Bool)

(assert (=> start!134846 (array_inv!39254 _keys!600)))

(declare-fun b!1571625 () Bool)

(declare-fun res!1073880 () Bool)

(assert (=> b!1571625 (=> (not res!1073880) (not e!876336))))

(assert (=> b!1571625 (= res!1073880 (= (size!51160 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571626 () Bool)

(declare-fun res!1073882 () Bool)

(assert (=> b!1571626 (=> (not res!1073882) (not e!876336))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571626 (= res!1073882 (validKeyInArray!0 k0!754))))

(declare-fun b!1571627 () Bool)

(assert (=> b!1571627 (= e!876336 false)))

(declare-fun lt!673651 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571627 (= lt!673651 (toIndex!0 k0!754 mask!889))))

(assert (= (and start!134846 res!1073881) b!1571625))

(assert (= (and b!1571625 res!1073880) b!1571626))

(assert (= (and b!1571626 res!1073882) b!1571627))

(declare-fun m!1445553 () Bool)

(assert (=> start!134846 m!1445553))

(declare-fun m!1445555 () Bool)

(assert (=> start!134846 m!1445555))

(declare-fun m!1445557 () Bool)

(assert (=> b!1571626 m!1445557))

(declare-fun m!1445559 () Bool)

(assert (=> b!1571627 m!1445559))

(check-sat (not start!134846) (not b!1571627) (not b!1571626))
(check-sat)
