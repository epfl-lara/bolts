; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134776 () Bool)

(assert start!134776)

(declare-fun res!1073775 () Bool)

(declare-fun e!876269 () Bool)

(assert (=> start!134776 (=> (not res!1073775) (not e!876269))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134776 (= res!1073775 (validMask!0 mask!889))))

(assert (=> start!134776 e!876269))

(assert (=> start!134776 true))

(declare-datatypes ((array!104858 0))(
  ( (array!104859 (arr!50598 (Array (_ BitVec 32) (_ BitVec 64))) (size!51149 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104858)

(declare-fun array_inv!39243 (array!104858) Bool)

(assert (=> start!134776 (array_inv!39243 _keys!600)))

(declare-fun b!1571526 () Bool)

(declare-fun res!1073776 () Bool)

(assert (=> b!1571526 (=> (not res!1073776) (not e!876269))))

(assert (=> b!1571526 (= res!1073776 (= (size!51149 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571527 () Bool)

(declare-fun res!1073777 () Bool)

(assert (=> b!1571527 (=> (not res!1073777) (not e!876269))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571527 (= res!1073777 (validKeyInArray!0 k!754))))

(declare-fun b!1571528 () Bool)

(assert (=> b!1571528 (= e!876269 false)))

(declare-fun lt!673582 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571528 (= lt!673582 (toIndex!0 k!754 mask!889))))

(assert (= (and start!134776 res!1073775) b!1571526))

(assert (= (and b!1571526 res!1073776) b!1571527))

(assert (= (and b!1571527 res!1073777) b!1571528))

(declare-fun m!1445465 () Bool)

(assert (=> start!134776 m!1445465))

(declare-fun m!1445467 () Bool)

(assert (=> start!134776 m!1445467))

(declare-fun m!1445469 () Bool)

(assert (=> b!1571527 m!1445469))

(declare-fun m!1445471 () Bool)

(assert (=> b!1571528 m!1445471))

(push 1)

(assert (not b!1571527))

(assert (not b!1571528))

(assert (not start!134776))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

