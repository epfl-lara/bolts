; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134774 () Bool)

(assert start!134774)

(declare-fun res!1073766 () Bool)

(declare-fun e!876264 () Bool)

(assert (=> start!134774 (=> (not res!1073766) (not e!876264))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134774 (= res!1073766 (validMask!0 mask!889))))

(assert (=> start!134774 e!876264))

(assert (=> start!134774 true))

(declare-datatypes ((array!104856 0))(
  ( (array!104857 (arr!50597 (Array (_ BitVec 32) (_ BitVec 64))) (size!51148 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104856)

(declare-fun array_inv!39242 (array!104856) Bool)

(assert (=> start!134774 (array_inv!39242 _keys!600)))

(declare-fun b!1571517 () Bool)

(declare-fun res!1073768 () Bool)

(assert (=> b!1571517 (=> (not res!1073768) (not e!876264))))

(assert (=> b!1571517 (= res!1073768 (= (size!51148 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571518 () Bool)

(declare-fun res!1073767 () Bool)

(assert (=> b!1571518 (=> (not res!1073767) (not e!876264))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571518 (= res!1073767 (validKeyInArray!0 k0!754))))

(declare-fun b!1571519 () Bool)

(assert (=> b!1571519 (= e!876264 false)))

(declare-fun lt!673579 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571519 (= lt!673579 (toIndex!0 k0!754 mask!889))))

(assert (= (and start!134774 res!1073766) b!1571517))

(assert (= (and b!1571517 res!1073768) b!1571518))

(assert (= (and b!1571518 res!1073767) b!1571519))

(declare-fun m!1445457 () Bool)

(assert (=> start!134774 m!1445457))

(declare-fun m!1445459 () Bool)

(assert (=> start!134774 m!1445459))

(declare-fun m!1445461 () Bool)

(assert (=> b!1571518 m!1445461))

(declare-fun m!1445463 () Bool)

(assert (=> b!1571519 m!1445463))

(check-sat (not b!1571519) (not start!134774) (not b!1571518))
(check-sat)
