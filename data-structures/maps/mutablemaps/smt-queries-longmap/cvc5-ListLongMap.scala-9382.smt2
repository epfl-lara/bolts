; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111764 () Bool)

(assert start!111764)

(declare-fun b_free!30385 () Bool)

(declare-fun b_next!30385 () Bool)

(assert (=> start!111764 (= b_free!30385 (not b_next!30385))))

(declare-fun tp!106632 () Bool)

(declare-fun b_and!48933 () Bool)

(assert (=> start!111764 (= tp!106632 b_and!48933)))

(declare-fun b!1323815 () Bool)

(declare-fun e!754702 () Bool)

(declare-fun tp_is_empty!36205 () Bool)

(assert (=> b!1323815 (= e!754702 tp_is_empty!36205)))

(declare-fun mapNonEmpty!55955 () Bool)

(declare-fun mapRes!55955 () Bool)

(declare-fun tp!106631 () Bool)

(assert (=> mapNonEmpty!55955 (= mapRes!55955 (and tp!106631 e!754702))))

(declare-datatypes ((V!53377 0))(
  ( (V!53378 (val!18177 Int)) )
))
(declare-datatypes ((ValueCell!17204 0))(
  ( (ValueCellFull!17204 (v!20805 V!53377)) (EmptyCell!17204) )
))
(declare-datatypes ((array!89283 0))(
  ( (array!89284 (arr!43111 (Array (_ BitVec 32) ValueCell!17204)) (size!43662 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89283)

(declare-fun mapKey!55955 () (_ BitVec 32))

(declare-fun mapValue!55955 () ValueCell!17204)

(declare-fun mapRest!55955 () (Array (_ BitVec 32) ValueCell!17204))

(assert (=> mapNonEmpty!55955 (= (arr!43111 _values!1337) (store mapRest!55955 mapKey!55955 mapValue!55955))))

(declare-fun b!1323817 () Bool)

(declare-fun e!754700 () Bool)

(declare-fun e!754698 () Bool)

(assert (=> b!1323817 (= e!754700 (and e!754698 mapRes!55955))))

(declare-fun condMapEmpty!55955 () Bool)

(declare-fun mapDefault!55955 () ValueCell!17204)

