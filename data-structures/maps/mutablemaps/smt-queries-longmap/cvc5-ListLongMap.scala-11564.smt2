; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134748 () Bool)

(assert start!134748)

(declare-fun res!1073732 () Bool)

(declare-fun e!876240 () Bool)

(assert (=> start!134748 (=> (not res!1073732) (not e!876240))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134748 (= res!1073732 (validMask!0 mask!889))))

(assert (=> start!134748 e!876240))

(assert (=> start!134748 true))

(declare-datatypes ((array!104845 0))(
  ( (array!104846 (arr!50593 (Array (_ BitVec 32) (_ BitVec 64))) (size!51144 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104845)

(declare-fun array_inv!39238 (array!104845) Bool)

(assert (=> start!134748 (array_inv!39238 _keys!600)))

(declare-fun b!1571481 () Bool)

(declare-fun res!1073731 () Bool)

(assert (=> b!1571481 (=> (not res!1073731) (not e!876240))))

(assert (=> b!1571481 (= res!1073731 (= (size!51144 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571482 () Bool)

(declare-fun res!1073730 () Bool)

(assert (=> b!1571482 (=> (not res!1073730) (not e!876240))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571482 (= res!1073730 (validKeyInArray!0 k!754))))

(declare-fun b!1571483 () Bool)

(assert (=> b!1571483 (= e!876240 (and (bvsge mask!889 #b00000000000000000000000000000000) (bvsgt mask!889 #b00111111111111111111111111111111)))))

(assert (= (and start!134748 res!1073732) b!1571481))

(assert (= (and b!1571481 res!1073731) b!1571482))

(assert (= (and b!1571482 res!1073730) b!1571483))

(declare-fun m!1445431 () Bool)

(assert (=> start!134748 m!1445431))

(declare-fun m!1445433 () Bool)

(assert (=> start!134748 m!1445433))

(declare-fun m!1445435 () Bool)

(assert (=> b!1571482 m!1445435))

(push 1)

(assert (not start!134748))

(assert (not b!1571482))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164503 () Bool)

(assert (=> d!164503 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!134748 d!164503))

(declare-fun d!164511 () Bool)

(assert (=> d!164511 (= (array_inv!39238 _keys!600) (bvsge (size!51144 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!134748 d!164511))

(declare-fun d!164513 () Bool)

