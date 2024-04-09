; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134808 () Bool)

(assert start!134808)

(declare-fun res!1073816 () Bool)

(declare-fun e!876293 () Bool)

(assert (=> start!134808 (=> (not res!1073816) (not e!876293))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134808 (= res!1073816 (validMask!0 mask!889))))

(assert (=> start!134808 e!876293))

(assert (=> start!134808 true))

(declare-datatypes ((array!104869 0))(
  ( (array!104870 (arr!50602 (Array (_ BitVec 32) (_ BitVec 64))) (size!51153 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104869)

(declare-fun array_inv!39247 (array!104869) Bool)

(assert (=> start!134808 (array_inv!39247 _keys!600)))

(declare-fun b!1571562 () Bool)

(declare-fun res!1073815 () Bool)

(assert (=> b!1571562 (=> (not res!1073815) (not e!876293))))

(assert (=> b!1571562 (= res!1073815 (= (size!51153 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571563 () Bool)

(declare-fun res!1073814 () Bool)

(assert (=> b!1571563 (=> (not res!1073814) (not e!876293))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571563 (= res!1073814 (validKeyInArray!0 k!754))))

(declare-fun b!1571564 () Bool)

(assert (=> b!1571564 (= e!876293 false)))

(declare-fun lt!673612 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571564 (= lt!673612 (toIndex!0 k!754 mask!889))))

(assert (= (and start!134808 res!1073816) b!1571562))

(assert (= (and b!1571562 res!1073815) b!1571563))

(assert (= (and b!1571563 res!1073814) b!1571564))

(declare-fun m!1445497 () Bool)

(assert (=> start!134808 m!1445497))

(declare-fun m!1445499 () Bool)

(assert (=> start!134808 m!1445499))

(declare-fun m!1445501 () Bool)

(assert (=> b!1571563 m!1445501))

(declare-fun m!1445503 () Bool)

(assert (=> b!1571564 m!1445503))

(push 1)

(assert (not start!134808))

(assert (not b!1571564))

(assert (not b!1571563))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

