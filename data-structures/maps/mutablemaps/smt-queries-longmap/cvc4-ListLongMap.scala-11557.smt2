; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134656 () Bool)

(assert start!134656)

(declare-fun res!1073507 () Bool)

(declare-fun e!876045 () Bool)

(assert (=> start!134656 (=> (not res!1073507) (not e!876045))))

(declare-fun mask!4043 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134656 (= res!1073507 (validMask!0 mask!4043))))

(assert (=> start!134656 e!876045))

(assert (=> start!134656 true))

(declare-datatypes ((array!104801 0))(
  ( (array!104802 (arr!50574 (Array (_ BitVec 32) (_ BitVec 64))) (size!51125 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104801)

(declare-fun array_inv!39219 (array!104801) Bool)

(assert (=> start!134656 (array_inv!39219 a!3462)))

(declare-fun b!1571131 () Bool)

(declare-fun res!1073506 () Bool)

(assert (=> b!1571131 (=> (not res!1073506) (not e!876045))))

(assert (=> b!1571131 (= res!1073506 (= (size!51125 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun b!1571132 () Bool)

(assert (=> b!1571132 (= e!876045 false)))

(declare-fun lt!673447 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104801 (_ BitVec 32)) Bool)

(assert (=> b!1571132 (= lt!673447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(assert (= (and start!134656 res!1073507) b!1571131))

(assert (= (and b!1571131 res!1073506) b!1571132))

(declare-fun m!1445167 () Bool)

(assert (=> start!134656 m!1445167))

(declare-fun m!1445169 () Bool)

(assert (=> start!134656 m!1445169))

(declare-fun m!1445171 () Bool)

(assert (=> b!1571132 m!1445171))

(push 1)

(assert (not start!134656))

(assert (not b!1571132))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

