; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134652 () Bool)

(assert start!134652)

(declare-fun res!1073494 () Bool)

(declare-fun e!876033 () Bool)

(assert (=> start!134652 (=> (not res!1073494) (not e!876033))))

(declare-fun mask!4043 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134652 (= res!1073494 (validMask!0 mask!4043))))

(assert (=> start!134652 e!876033))

(assert (=> start!134652 true))

(declare-datatypes ((array!104797 0))(
  ( (array!104798 (arr!50572 (Array (_ BitVec 32) (_ BitVec 64))) (size!51123 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104797)

(declare-fun array_inv!39217 (array!104797) Bool)

(assert (=> start!134652 (array_inv!39217 a!3462)))

(declare-fun b!1571119 () Bool)

(declare-fun res!1073495 () Bool)

(assert (=> b!1571119 (=> (not res!1073495) (not e!876033))))

(assert (=> b!1571119 (= res!1073495 (= (size!51123 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun b!1571120 () Bool)

(assert (=> b!1571120 (= e!876033 false)))

(declare-fun lt!673441 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104797 (_ BitVec 32)) Bool)

(assert (=> b!1571120 (= lt!673441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(assert (= (and start!134652 res!1073494) b!1571119))

(assert (= (and b!1571119 res!1073495) b!1571120))

(declare-fun m!1445155 () Bool)

(assert (=> start!134652 m!1445155))

(declare-fun m!1445157 () Bool)

(assert (=> start!134652 m!1445157))

(declare-fun m!1445159 () Bool)

(assert (=> b!1571120 m!1445159))

(push 1)

(assert (not start!134652))

(assert (not b!1571120))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

