; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111396 () Bool)

(assert start!111396)

(declare-fun b_free!30017 () Bool)

(declare-fun b_next!30017 () Bool)

(assert (=> start!111396 (= b_free!30017 (not b_next!30017))))

(declare-fun tp!105528 () Bool)

(declare-fun b_and!48247 () Bool)

(assert (=> start!111396 (= tp!105528 b_and!48247)))

(declare-fun b!1317623 () Bool)

(declare-fun res!874569 () Bool)

(declare-fun e!751941 () Bool)

(assert (=> b!1317623 (=> (not res!874569) (not e!751941))))

(declare-datatypes ((array!88579 0))(
  ( (array!88580 (arr!42759 (Array (_ BitVec 32) (_ BitVec 64))) (size!43310 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88579)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1317623 (= res!874569 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43310 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!55403 () Bool)

(declare-fun mapRes!55403 () Bool)

(assert (=> mapIsEmpty!55403 mapRes!55403))

(declare-fun b!1317624 () Bool)

(declare-fun res!874567 () Bool)

(assert (=> b!1317624 (=> (not res!874567) (not e!751941))))

(declare-datatypes ((V!52885 0))(
  ( (V!52886 (val!17993 Int)) )
))
(declare-datatypes ((ValueCell!17020 0))(
  ( (ValueCellFull!17020 (v!20621 V!52885)) (EmptyCell!17020) )
))
(declare-datatypes ((array!88581 0))(
  ( (array!88582 (arr!42760 (Array (_ BitVec 32) ValueCell!17020)) (size!43311 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88581)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1317624 (= res!874567 (and (= (size!43311 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43310 _keys!1609) (size!43311 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!55403 () Bool)

(declare-fun tp!105527 () Bool)

(declare-fun e!751938 () Bool)

(assert (=> mapNonEmpty!55403 (= mapRes!55403 (and tp!105527 e!751938))))

(declare-fun mapRest!55403 () (Array (_ BitVec 32) ValueCell!17020))

(declare-fun mapValue!55403 () ValueCell!17020)

(declare-fun mapKey!55403 () (_ BitVec 32))

(assert (=> mapNonEmpty!55403 (= (arr!42760 _values!1337) (store mapRest!55403 mapKey!55403 mapValue!55403))))

(declare-fun b!1317626 () Bool)

(declare-fun e!751942 () Bool)

(declare-fun tp_is_empty!35837 () Bool)

(assert (=> b!1317626 (= e!751942 tp_is_empty!35837)))

(declare-fun b!1317627 () Bool)

(assert (=> b!1317627 (= e!751938 tp_is_empty!35837)))

(declare-fun b!1317628 () Bool)

(declare-fun e!751940 () Bool)

(assert (=> b!1317628 (= e!751940 (and e!751942 mapRes!55403))))

(declare-fun condMapEmpty!55403 () Bool)

(declare-fun mapDefault!55403 () ValueCell!17020)

