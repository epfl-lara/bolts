; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134620 () Bool)

(assert start!134620)

(declare-fun res!1073434 () Bool)

(declare-fun e!875982 () Bool)

(assert (=> start!134620 (=> (not res!1073434) (not e!875982))))

(declare-fun mask!4043 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134620 (= res!1073434 (validMask!0 mask!4043))))

(assert (=> start!134620 e!875982))

(assert (=> start!134620 true))

(declare-datatypes ((array!104786 0))(
  ( (array!104787 (arr!50568 (Array (_ BitVec 32) (_ BitVec 64))) (size!51119 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104786)

(declare-fun array_inv!39213 (array!104786) Bool)

(assert (=> start!134620 (array_inv!39213 a!3462)))

(declare-fun b!1571041 () Bool)

(declare-fun res!1073435 () Bool)

(assert (=> b!1571041 (=> (not res!1073435) (not e!875982))))

(assert (=> b!1571041 (= res!1073435 (= (size!51119 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun b!1571042 () Bool)

(assert (=> b!1571042 (= e!875982 false)))

(declare-fun lt!673411 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104786 (_ BitVec 32)) Bool)

(assert (=> b!1571042 (= lt!673411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(assert (= (and start!134620 res!1073434) b!1571041))

(assert (= (and b!1571041 res!1073435) b!1571042))

(declare-fun m!1445089 () Bool)

(assert (=> start!134620 m!1445089))

(declare-fun m!1445091 () Bool)

(assert (=> start!134620 m!1445091))

(declare-fun m!1445093 () Bool)

(assert (=> b!1571042 m!1445093))

(push 1)

(assert (not b!1571042))

(assert (not start!134620))

(check-sat)

(pop 1)

