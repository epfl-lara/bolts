; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134812 () Bool)

(assert start!134812)

(declare-fun res!1073832 () Bool)

(declare-fun e!876305 () Bool)

(assert (=> start!134812 (=> (not res!1073832) (not e!876305))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134812 (= res!1073832 (validMask!0 mask!889))))

(assert (=> start!134812 e!876305))

(assert (=> start!134812 true))

(declare-datatypes ((array!104873 0))(
  ( (array!104874 (arr!50604 (Array (_ BitVec 32) (_ BitVec 64))) (size!51155 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104873)

(declare-fun array_inv!39249 (array!104873) Bool)

(assert (=> start!134812 (array_inv!39249 _keys!600)))

(declare-fun b!1571580 () Bool)

(declare-fun res!1073834 () Bool)

(assert (=> b!1571580 (=> (not res!1073834) (not e!876305))))

(assert (=> b!1571580 (= res!1073834 (= (size!51155 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571581 () Bool)

(declare-fun res!1073833 () Bool)

(assert (=> b!1571581 (=> (not res!1073833) (not e!876305))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571581 (= res!1073833 (validKeyInArray!0 k!754))))

(declare-fun b!1571582 () Bool)

(assert (=> b!1571582 (= e!876305 false)))

(declare-fun lt!673618 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571582 (= lt!673618 (toIndex!0 k!754 mask!889))))

(assert (= (and start!134812 res!1073832) b!1571580))

(assert (= (and b!1571580 res!1073834) b!1571581))

(assert (= (and b!1571581 res!1073833) b!1571582))

(declare-fun m!1445513 () Bool)

(assert (=> start!134812 m!1445513))

(declare-fun m!1445515 () Bool)

(assert (=> start!134812 m!1445515))

(declare-fun m!1445517 () Bool)

(assert (=> b!1571581 m!1445517))

(declare-fun m!1445519 () Bool)

(assert (=> b!1571582 m!1445519))

(push 1)

(assert (not b!1571581))

(assert (not start!134812))

(assert (not b!1571582))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

