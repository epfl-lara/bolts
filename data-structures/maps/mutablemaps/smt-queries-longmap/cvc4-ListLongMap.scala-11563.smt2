; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134728 () Bool)

(assert start!134728)

(declare-fun res!1073722 () Bool)

(declare-fun e!876234 () Bool)

(assert (=> start!134728 (=> (not res!1073722) (not e!876234))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134728 (= res!1073722 (validMask!0 mask!889))))

(assert (=> start!134728 e!876234))

(assert (=> start!134728 true))

(declare-datatypes ((array!104840 0))(
  ( (array!104841 (arr!50592 (Array (_ BitVec 32) (_ BitVec 64))) (size!51143 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104840)

(declare-fun array_inv!39237 (array!104840) Bool)

(assert (=> start!134728 (array_inv!39237 _keys!600)))

(declare-fun b!1571472 () Bool)

(declare-fun res!1073721 () Bool)

(assert (=> b!1571472 (=> (not res!1073721) (not e!876234))))

(assert (=> b!1571472 (= res!1073721 (= (size!51143 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571473 () Bool)

(declare-fun res!1073723 () Bool)

(assert (=> b!1571473 (=> (not res!1073723) (not e!876234))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571473 (= res!1073723 (validKeyInArray!0 k!754))))

(declare-fun b!1571474 () Bool)

(assert (=> b!1571474 (= e!876234 (bvslt mask!889 #b00000000000000000000000000000000))))

(assert (= (and start!134728 res!1073722) b!1571472))

(assert (= (and b!1571472 res!1073721) b!1571473))

(assert (= (and b!1571473 res!1073723) b!1571474))

(declare-fun m!1445425 () Bool)

(assert (=> start!134728 m!1445425))

(declare-fun m!1445427 () Bool)

(assert (=> start!134728 m!1445427))

(declare-fun m!1445429 () Bool)

(assert (=> b!1571473 m!1445429))

(push 1)

(assert (not start!134728))

(assert (not b!1571473))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164485 () Bool)

(assert (=> d!164485 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!134728 d!164485))

(declare-fun d!164495 () Bool)

(assert (=> d!164495 (= (array_inv!39237 _keys!600) (bvsge (size!51143 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!134728 d!164495))

(declare-fun d!164497 () Bool)

(assert (=> d!164497 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1571473 d!164497))

