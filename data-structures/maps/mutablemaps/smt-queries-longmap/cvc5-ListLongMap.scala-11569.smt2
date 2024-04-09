; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134844 () Bool)

(assert start!134844)

(declare-fun res!1073871 () Bool)

(declare-fun e!876330 () Bool)

(assert (=> start!134844 (=> (not res!1073871) (not e!876330))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134844 (= res!1073871 (validMask!0 mask!889))))

(assert (=> start!134844 e!876330))

(assert (=> start!134844 true))

(declare-datatypes ((array!104884 0))(
  ( (array!104885 (arr!50608 (Array (_ BitVec 32) (_ BitVec 64))) (size!51159 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104884)

(declare-fun array_inv!39253 (array!104884) Bool)

(assert (=> start!134844 (array_inv!39253 _keys!600)))

(declare-fun b!1571616 () Bool)

(declare-fun res!1073873 () Bool)

(assert (=> b!1571616 (=> (not res!1073873) (not e!876330))))

(assert (=> b!1571616 (= res!1073873 (= (size!51159 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571617 () Bool)

(declare-fun res!1073872 () Bool)

(assert (=> b!1571617 (=> (not res!1073872) (not e!876330))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571617 (= res!1073872 (validKeyInArray!0 k!754))))

(declare-fun b!1571618 () Bool)

(assert (=> b!1571618 (= e!876330 false)))

(declare-fun lt!673648 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571618 (= lt!673648 (toIndex!0 k!754 mask!889))))

(assert (= (and start!134844 res!1073871) b!1571616))

(assert (= (and b!1571616 res!1073873) b!1571617))

(assert (= (and b!1571617 res!1073872) b!1571618))

(declare-fun m!1445545 () Bool)

(assert (=> start!134844 m!1445545))

(declare-fun m!1445547 () Bool)

(assert (=> start!134844 m!1445547))

(declare-fun m!1445549 () Bool)

(assert (=> b!1571617 m!1445549))

(declare-fun m!1445551 () Bool)

(assert (=> b!1571618 m!1445551))

(push 1)

(assert (not b!1571617))

(assert (not start!134844))

(assert (not b!1571618))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

