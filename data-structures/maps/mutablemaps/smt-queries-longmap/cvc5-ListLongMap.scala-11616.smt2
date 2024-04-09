; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135576 () Bool)

(assert start!135576)

(declare-fun res!1075656 () Bool)

(declare-fun e!877958 () Bool)

(assert (=> start!135576 (=> (not res!1075656) (not e!877958))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135576 (= res!1075656 (validMask!0 mask!898))))

(assert (=> start!135576 e!877958))

(assert (=> start!135576 true))

(declare-datatypes ((array!105211 0))(
  ( (array!105212 (arr!50749 (Array (_ BitVec 32) (_ BitVec 64))) (size!51300 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105211)

(declare-fun array_inv!39394 (array!105211) Bool)

(assert (=> start!135576 (array_inv!39394 _keys!605)))

(declare-fun b!1574226 () Bool)

(declare-fun res!1075658 () Bool)

(assert (=> b!1574226 (=> (not res!1075658) (not e!877958))))

(assert (=> b!1574226 (= res!1075658 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51300 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574227 () Bool)

(declare-fun res!1075657 () Bool)

(assert (=> b!1574227 (=> (not res!1075657) (not e!877958))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574227 (= res!1075657 (validKeyInArray!0 k!761))))

(declare-fun b!1574228 () Bool)

(assert (=> b!1574228 (= e!877958 (bvsgt mask!898 #b00111111111111111111111111111111))))

(assert (= (and start!135576 res!1075656) b!1574226))

(assert (= (and b!1574226 res!1075658) b!1574227))

(assert (= (and b!1574227 res!1075657) b!1574228))

(declare-fun m!1447525 () Bool)

(assert (=> start!135576 m!1447525))

(declare-fun m!1447527 () Bool)

(assert (=> start!135576 m!1447527))

(declare-fun m!1447529 () Bool)

(assert (=> b!1574227 m!1447529))

(push 1)

(assert (not b!1574227))

(assert (not start!135576))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165125 () Bool)

(assert (=> d!165125 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1574227 d!165125))

(declare-fun d!165129 () Bool)

