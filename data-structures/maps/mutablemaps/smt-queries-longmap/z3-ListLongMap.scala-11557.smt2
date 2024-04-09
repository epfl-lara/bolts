; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134654 () Bool)

(assert start!134654)

(declare-fun res!1073500 () Bool)

(declare-fun e!876039 () Bool)

(assert (=> start!134654 (=> (not res!1073500) (not e!876039))))

(declare-fun mask!4043 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134654 (= res!1073500 (validMask!0 mask!4043))))

(assert (=> start!134654 e!876039))

(assert (=> start!134654 true))

(declare-datatypes ((array!104799 0))(
  ( (array!104800 (arr!50573 (Array (_ BitVec 32) (_ BitVec 64))) (size!51124 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104799)

(declare-fun array_inv!39218 (array!104799) Bool)

(assert (=> start!134654 (array_inv!39218 a!3462)))

(declare-fun b!1571125 () Bool)

(declare-fun res!1073501 () Bool)

(assert (=> b!1571125 (=> (not res!1073501) (not e!876039))))

(assert (=> b!1571125 (= res!1073501 (= (size!51124 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun b!1571126 () Bool)

(assert (=> b!1571126 (= e!876039 false)))

(declare-fun lt!673444 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104799 (_ BitVec 32)) Bool)

(assert (=> b!1571126 (= lt!673444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(assert (= (and start!134654 res!1073500) b!1571125))

(assert (= (and b!1571125 res!1073501) b!1571126))

(declare-fun m!1445161 () Bool)

(assert (=> start!134654 m!1445161))

(declare-fun m!1445163 () Bool)

(assert (=> start!134654 m!1445163))

(declare-fun m!1445165 () Bool)

(assert (=> b!1571126 m!1445165))

(check-sat (not start!134654) (not b!1571126))
(check-sat)
