; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133956 () Bool)

(assert start!133956)

(declare-fun b_free!32147 () Bool)

(declare-fun b_next!32147 () Bool)

(assert (=> start!133956 (= b_free!32147 (not b_next!32147))))

(declare-fun tp!113744 () Bool)

(declare-fun b_and!51745 () Bool)

(assert (=> start!133956 (= tp!113744 b_and!51745)))

(declare-fun mapNonEmpty!59773 () Bool)

(declare-fun mapRes!59773 () Bool)

(declare-fun tp!113743 () Bool)

(declare-fun e!872545 () Bool)

(assert (=> mapNonEmpty!59773 (= mapRes!59773 (and tp!113743 e!872545))))

(declare-datatypes ((V!60101 0))(
  ( (V!60102 (val!19544 Int)) )
))
(declare-datatypes ((ValueCell!18430 0))(
  ( (ValueCellFull!18430 (v!22297 V!60101)) (EmptyCell!18430) )
))
(declare-fun mapValue!59773 () ValueCell!18430)

(declare-fun mapKey!59773 () (_ BitVec 32))

(declare-datatypes ((array!104503 0))(
  ( (array!104504 (arr!50434 (Array (_ BitVec 32) ValueCell!18430)) (size!50985 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104503)

(declare-fun mapRest!59773 () (Array (_ BitVec 32) ValueCell!18430))

(assert (=> mapNonEmpty!59773 (= (arr!50434 _values!487) (store mapRest!59773 mapKey!59773 mapValue!59773))))

(declare-fun b!1565365 () Bool)

(declare-fun tp_is_empty!38921 () Bool)

(assert (=> b!1565365 (= e!872545 tp_is_empty!38921)))

(declare-fun b!1565366 () Bool)

(declare-fun res!1070145 () Bool)

(declare-fun e!872549 () Bool)

(assert (=> b!1565366 (=> (not res!1070145) (not e!872549))))

(declare-datatypes ((array!104505 0))(
  ( (array!104506 (arr!50435 (Array (_ BitVec 32) (_ BitVec 64))) (size!50986 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104505)

(declare-datatypes ((List!36764 0))(
  ( (Nil!36761) (Cons!36760 (h!38207 (_ BitVec 64)) (t!51632 List!36764)) )
))
(declare-fun arrayNoDuplicates!0 (array!104505 (_ BitVec 32) List!36764) Bool)

(assert (=> b!1565366 (= res!1070145 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36761))))

(declare-fun b!1565367 () Bool)

(declare-fun e!872546 () Bool)

(assert (=> b!1565367 (= e!872546 tp_is_empty!38921)))

(declare-fun b!1565368 () Bool)

(declare-fun res!1070143 () Bool)

(assert (=> b!1565368 (=> (not res!1070143) (not e!872549))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1565368 (= res!1070143 (and (= (size!50985 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50986 _keys!637) (size!50985 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1565369 () Bool)

(declare-fun e!872548 () Bool)

(assert (=> b!1565369 (= e!872548 (and e!872546 mapRes!59773))))

(declare-fun condMapEmpty!59773 () Bool)

(declare-fun mapDefault!59773 () ValueCell!18430)

