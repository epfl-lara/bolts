; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134772 () Bool)

(assert start!134772)

(declare-fun res!1073757 () Bool)

(declare-fun e!876258 () Bool)

(assert (=> start!134772 (=> (not res!1073757) (not e!876258))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134772 (= res!1073757 (validMask!0 mask!889))))

(assert (=> start!134772 e!876258))

(assert (=> start!134772 true))

(declare-datatypes ((array!104854 0))(
  ( (array!104855 (arr!50596 (Array (_ BitVec 32) (_ BitVec 64))) (size!51147 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104854)

(declare-fun array_inv!39241 (array!104854) Bool)

(assert (=> start!134772 (array_inv!39241 _keys!600)))

(declare-fun b!1571508 () Bool)

(declare-fun res!1073758 () Bool)

(assert (=> b!1571508 (=> (not res!1073758) (not e!876258))))

(assert (=> b!1571508 (= res!1073758 (= (size!51147 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571509 () Bool)

(declare-fun res!1073759 () Bool)

(assert (=> b!1571509 (=> (not res!1073759) (not e!876258))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571509 (= res!1073759 (validKeyInArray!0 k!754))))

(declare-fun b!1571510 () Bool)

(assert (=> b!1571510 (= e!876258 false)))

(declare-fun lt!673576 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571510 (= lt!673576 (toIndex!0 k!754 mask!889))))

(assert (= (and start!134772 res!1073757) b!1571508))

(assert (= (and b!1571508 res!1073758) b!1571509))

(assert (= (and b!1571509 res!1073759) b!1571510))

(declare-fun m!1445449 () Bool)

(assert (=> start!134772 m!1445449))

(declare-fun m!1445451 () Bool)

(assert (=> start!134772 m!1445451))

(declare-fun m!1445453 () Bool)

(assert (=> b!1571509 m!1445453))

(declare-fun m!1445455 () Bool)

(assert (=> b!1571510 m!1445455))

(push 1)

(assert (not b!1571509))

(assert (not b!1571510))

(assert (not start!134772))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

