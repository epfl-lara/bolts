; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134752 () Bool)

(assert start!134752)

(declare-fun res!1073748 () Bool)

(declare-fun e!876251 () Bool)

(assert (=> start!134752 (=> (not res!1073748) (not e!876251))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134752 (= res!1073748 (validMask!0 mask!889))))

(assert (=> start!134752 e!876251))

(assert (=> start!134752 true))

(declare-datatypes ((array!104849 0))(
  ( (array!104850 (arr!50595 (Array (_ BitVec 32) (_ BitVec 64))) (size!51146 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104849)

(declare-fun array_inv!39240 (array!104849) Bool)

(assert (=> start!134752 (array_inv!39240 _keys!600)))

(declare-fun b!1571499 () Bool)

(declare-fun res!1073749 () Bool)

(assert (=> b!1571499 (=> (not res!1073749) (not e!876251))))

(assert (=> b!1571499 (= res!1073749 (= (size!51146 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571500 () Bool)

(declare-fun res!1073750 () Bool)

(assert (=> b!1571500 (=> (not res!1073750) (not e!876251))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571500 (= res!1073750 (validKeyInArray!0 k!754))))

(declare-fun b!1571501 () Bool)

(assert (=> b!1571501 (= e!876251 (and (bvsge mask!889 #b00000000000000000000000000000000) (bvsgt mask!889 #b00111111111111111111111111111111)))))

(assert (= (and start!134752 res!1073748) b!1571499))

(assert (= (and b!1571499 res!1073749) b!1571500))

(assert (= (and b!1571500 res!1073750) b!1571501))

(declare-fun m!1445443 () Bool)

(assert (=> start!134752 m!1445443))

(declare-fun m!1445445 () Bool)

(assert (=> start!134752 m!1445445))

(declare-fun m!1445447 () Bool)

(assert (=> b!1571500 m!1445447))

(push 1)

(assert (not start!134752))

(assert (not b!1571500))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164505 () Bool)

(assert (=> d!164505 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

