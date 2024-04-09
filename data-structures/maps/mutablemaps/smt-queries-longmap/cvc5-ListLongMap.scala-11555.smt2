; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134616 () Bool)

(assert start!134616)

(declare-fun res!1073423 () Bool)

(declare-fun e!875969 () Bool)

(assert (=> start!134616 (=> (not res!1073423) (not e!875969))))

(declare-fun mask!4043 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134616 (= res!1073423 (validMask!0 mask!4043))))

(assert (=> start!134616 e!875969))

(assert (=> start!134616 true))

(declare-datatypes ((array!104782 0))(
  ( (array!104783 (arr!50566 (Array (_ BitVec 32) (_ BitVec 64))) (size!51117 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104782)

(declare-fun array_inv!39211 (array!104782) Bool)

(assert (=> start!134616 (array_inv!39211 a!3462)))

(declare-fun b!1571029 () Bool)

(declare-fun res!1073422 () Bool)

(assert (=> b!1571029 (=> (not res!1073422) (not e!875969))))

(assert (=> b!1571029 (= res!1073422 (= (size!51117 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun b!1571030 () Bool)

(assert (=> b!1571030 (= e!875969 false)))

(declare-fun lt!673405 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104782 (_ BitVec 32)) Bool)

(assert (=> b!1571030 (= lt!673405 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(assert (= (and start!134616 res!1073423) b!1571029))

(assert (= (and b!1571029 res!1073422) b!1571030))

(declare-fun m!1445077 () Bool)

(assert (=> start!134616 m!1445077))

(declare-fun m!1445079 () Bool)

(assert (=> start!134616 m!1445079))

(declare-fun m!1445081 () Bool)

(assert (=> b!1571030 m!1445081))

(push 1)

(assert (not b!1571030))

(assert (not start!134616))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

