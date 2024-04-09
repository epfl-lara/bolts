; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134850 () Bool)

(assert start!134850)

(declare-fun res!1073900 () Bool)

(declare-fun e!876348 () Bool)

(assert (=> start!134850 (=> (not res!1073900) (not e!876348))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134850 (= res!1073900 (validMask!0 mask!889))))

(assert (=> start!134850 e!876348))

(assert (=> start!134850 true))

(declare-datatypes ((array!104890 0))(
  ( (array!104891 (arr!50611 (Array (_ BitVec 32) (_ BitVec 64))) (size!51162 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104890)

(declare-fun array_inv!39256 (array!104890) Bool)

(assert (=> start!134850 (array_inv!39256 _keys!600)))

(declare-fun b!1571643 () Bool)

(declare-fun res!1073899 () Bool)

(assert (=> b!1571643 (=> (not res!1073899) (not e!876348))))

(assert (=> b!1571643 (= res!1073899 (= (size!51162 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571644 () Bool)

(declare-fun res!1073898 () Bool)

(assert (=> b!1571644 (=> (not res!1073898) (not e!876348))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571644 (= res!1073898 (validKeyInArray!0 k!754))))

(declare-fun b!1571645 () Bool)

(assert (=> b!1571645 (= e!876348 false)))

(declare-fun lt!673657 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571645 (= lt!673657 (toIndex!0 k!754 mask!889))))

(assert (= (and start!134850 res!1073900) b!1571643))

(assert (= (and b!1571643 res!1073899) b!1571644))

(assert (= (and b!1571644 res!1073898) b!1571645))

(declare-fun m!1445569 () Bool)

(assert (=> start!134850 m!1445569))

(declare-fun m!1445571 () Bool)

(assert (=> start!134850 m!1445571))

(declare-fun m!1445573 () Bool)

(assert (=> b!1571644 m!1445573))

(declare-fun m!1445575 () Bool)

(assert (=> b!1571645 m!1445575))

(push 1)

(assert (not b!1571645))

(assert (not b!1571644))

(assert (not start!134850))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

