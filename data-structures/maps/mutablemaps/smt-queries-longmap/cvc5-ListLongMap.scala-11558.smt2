; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134658 () Bool)

(assert start!134658)

(declare-fun res!1073512 () Bool)

(declare-fun e!876051 () Bool)

(assert (=> start!134658 (=> (not res!1073512) (not e!876051))))

(declare-fun mask!4043 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134658 (= res!1073512 (validMask!0 mask!4043))))

(assert (=> start!134658 e!876051))

(assert (=> start!134658 true))

(declare-datatypes ((array!104803 0))(
  ( (array!104804 (arr!50575 (Array (_ BitVec 32) (_ BitVec 64))) (size!51126 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104803)

(declare-fun array_inv!39220 (array!104803) Bool)

(assert (=> start!134658 (array_inv!39220 a!3462)))

(declare-fun b!1571137 () Bool)

(declare-fun res!1073513 () Bool)

(assert (=> b!1571137 (=> (not res!1073513) (not e!876051))))

(assert (=> b!1571137 (= res!1073513 (= (size!51126 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun b!1571138 () Bool)

(assert (=> b!1571138 (= e!876051 false)))

(declare-fun lt!673450 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104803 (_ BitVec 32)) Bool)

(assert (=> b!1571138 (= lt!673450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(assert (= (and start!134658 res!1073512) b!1571137))

(assert (= (and b!1571137 res!1073513) b!1571138))

(declare-fun m!1445173 () Bool)

(assert (=> start!134658 m!1445173))

(declare-fun m!1445175 () Bool)

(assert (=> start!134658 m!1445175))

(declare-fun m!1445177 () Bool)

(assert (=> b!1571138 m!1445177))

(push 1)

(assert (not start!134658))

(assert (not b!1571138))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

