; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134724 () Bool)

(assert start!134724)

(declare-fun res!1073704 () Bool)

(declare-fun e!876222 () Bool)

(assert (=> start!134724 (=> (not res!1073704) (not e!876222))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134724 (= res!1073704 (validMask!0 mask!889))))

(assert (=> start!134724 e!876222))

(assert (=> start!134724 true))

(declare-datatypes ((array!104836 0))(
  ( (array!104837 (arr!50590 (Array (_ BitVec 32) (_ BitVec 64))) (size!51141 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104836)

(declare-fun array_inv!39235 (array!104836) Bool)

(assert (=> start!134724 (array_inv!39235 _keys!600)))

(declare-fun b!1571454 () Bool)

(declare-fun res!1073703 () Bool)

(assert (=> b!1571454 (=> (not res!1073703) (not e!876222))))

(assert (=> b!1571454 (= res!1073703 (= (size!51141 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571455 () Bool)

(declare-fun res!1073705 () Bool)

(assert (=> b!1571455 (=> (not res!1073705) (not e!876222))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571455 (= res!1073705 (validKeyInArray!0 k!754))))

(declare-fun b!1571456 () Bool)

(assert (=> b!1571456 (= e!876222 (bvslt mask!889 #b00000000000000000000000000000000))))

(assert (= (and start!134724 res!1073704) b!1571454))

(assert (= (and b!1571454 res!1073703) b!1571455))

(assert (= (and b!1571455 res!1073705) b!1571456))

(declare-fun m!1445413 () Bool)

(assert (=> start!134724 m!1445413))

(declare-fun m!1445415 () Bool)

(assert (=> start!134724 m!1445415))

(declare-fun m!1445417 () Bool)

(assert (=> b!1571455 m!1445417))

(push 1)

(assert (not start!134724))

(assert (not b!1571455))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164483 () Bool)

(assert (=> d!164483 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!134724 d!164483))

(declare-fun d!164491 () Bool)

(assert (=> d!164491 (= (array_inv!39235 _keys!600) (bvsge (size!51141 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!134724 d!164491))

(declare-fun d!164493 () Bool)

(assert (=> d!164493 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1571455 d!164493))

(push 1)

