; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134848 () Bool)

(assert start!134848)

(declare-fun res!1073889 () Bool)

(declare-fun e!876341 () Bool)

(assert (=> start!134848 (=> (not res!1073889) (not e!876341))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134848 (= res!1073889 (validMask!0 mask!889))))

(assert (=> start!134848 e!876341))

(assert (=> start!134848 true))

(declare-datatypes ((array!104888 0))(
  ( (array!104889 (arr!50610 (Array (_ BitVec 32) (_ BitVec 64))) (size!51161 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104888)

(declare-fun array_inv!39255 (array!104888) Bool)

(assert (=> start!134848 (array_inv!39255 _keys!600)))

(declare-fun b!1571634 () Bool)

(declare-fun res!1073890 () Bool)

(assert (=> b!1571634 (=> (not res!1073890) (not e!876341))))

(assert (=> b!1571634 (= res!1073890 (= (size!51161 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571635 () Bool)

(declare-fun res!1073891 () Bool)

(assert (=> b!1571635 (=> (not res!1073891) (not e!876341))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571635 (= res!1073891 (validKeyInArray!0 k!754))))

(declare-fun b!1571636 () Bool)

(assert (=> b!1571636 (= e!876341 false)))

(declare-fun lt!673654 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571636 (= lt!673654 (toIndex!0 k!754 mask!889))))

(assert (= (and start!134848 res!1073889) b!1571634))

(assert (= (and b!1571634 res!1073890) b!1571635))

(assert (= (and b!1571635 res!1073891) b!1571636))

(declare-fun m!1445561 () Bool)

(assert (=> start!134848 m!1445561))

(declare-fun m!1445563 () Bool)

(assert (=> start!134848 m!1445563))

(declare-fun m!1445565 () Bool)

(assert (=> b!1571635 m!1445565))

(declare-fun m!1445567 () Bool)

(assert (=> b!1571636 m!1445567))

(push 1)

(assert (not start!134848))

(assert (not b!1571636))

(assert (not b!1571635))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

