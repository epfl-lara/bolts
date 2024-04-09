; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117934 () Bool)

(assert start!117934)

(declare-fun res!923101 () Bool)

(declare-fun e!783071 () Bool)

(assert (=> start!117934 (=> (not res!923101) (not e!783071))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117934 (= res!923101 (validMask!0 mask!3034))))

(assert (=> start!117934 e!783071))

(assert (=> start!117934 true))

(declare-datatypes ((array!94241 0))(
  ( (array!94242 (arr!45499 (Array (_ BitVec 32) (_ BitVec 64))) (size!46050 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94241)

(declare-fun array_inv!34444 (array!94241) Bool)

(assert (=> start!117934 (array_inv!34444 a!2971)))

(declare-fun b!1381364 () Bool)

(declare-fun res!923102 () Bool)

(assert (=> b!1381364 (=> (not res!923102) (not e!783071))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381364 (= res!923102 (and (= (size!46050 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46050 a!2971))))))

(declare-fun b!1381365 () Bool)

(declare-fun res!923103 () Bool)

(assert (=> b!1381365 (=> (not res!923103) (not e!783071))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381365 (= res!923103 (validKeyInArray!0 (select (arr!45499 a!2971) i!1094)))))

(declare-fun b!1381366 () Bool)

(assert (=> b!1381366 (= e!783071 false)))

(declare-fun lt!608146 () Bool)

(declare-datatypes ((List!32213 0))(
  ( (Nil!32210) (Cons!32209 (h!33418 (_ BitVec 64)) (t!46914 List!32213)) )
))
(declare-fun arrayNoDuplicates!0 (array!94241 (_ BitVec 32) List!32213) Bool)

(assert (=> b!1381366 (= lt!608146 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32210))))

(assert (= (and start!117934 res!923101) b!1381364))

(assert (= (and b!1381364 res!923102) b!1381365))

(assert (= (and b!1381365 res!923103) b!1381366))

(declare-fun m!1266609 () Bool)

(assert (=> start!117934 m!1266609))

(declare-fun m!1266611 () Bool)

(assert (=> start!117934 m!1266611))

(declare-fun m!1266613 () Bool)

(assert (=> b!1381365 m!1266613))

(assert (=> b!1381365 m!1266613))

(declare-fun m!1266615 () Bool)

(assert (=> b!1381365 m!1266615))

(declare-fun m!1266617 () Bool)

(assert (=> b!1381366 m!1266617))

(push 1)

(assert (not start!117934))

(assert (not b!1381366))

(assert (not b!1381365))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

