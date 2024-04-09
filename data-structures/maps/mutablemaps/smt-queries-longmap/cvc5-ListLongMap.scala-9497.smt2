; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112626 () Bool)

(assert start!112626)

(declare-fun b_free!30985 () Bool)

(declare-fun b_next!30985 () Bool)

(assert (=> start!112626 (= b_free!30985 (not b_next!30985))))

(declare-fun tp!108593 () Bool)

(declare-fun b_and!49903 () Bool)

(assert (=> start!112626 (= tp!108593 b_and!49903)))

(declare-fun mapNonEmpty!57016 () Bool)

(declare-fun mapRes!57016 () Bool)

(declare-fun tp!108592 () Bool)

(declare-fun e!760641 () Bool)

(assert (=> mapNonEmpty!57016 (= mapRes!57016 (and tp!108592 e!760641))))

(declare-datatypes ((V!54297 0))(
  ( (V!54298 (val!18522 Int)) )
))
(declare-datatypes ((ValueCell!17549 0))(
  ( (ValueCellFull!17549 (v!21157 V!54297)) (EmptyCell!17549) )
))
(declare-fun mapRest!57016 () (Array (_ BitVec 32) ValueCell!17549))

(declare-datatypes ((array!90627 0))(
  ( (array!90628 (arr!43775 (Array (_ BitVec 32) ValueCell!17549)) (size!44326 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90627)

(declare-fun mapValue!57016 () ValueCell!17549)

(declare-fun mapKey!57016 () (_ BitVec 32))

(assert (=> mapNonEmpty!57016 (= (arr!43775 _values!1320) (store mapRest!57016 mapKey!57016 mapValue!57016))))

(declare-fun b!1335540 () Bool)

(declare-fun e!760644 () Bool)

(declare-fun tp_is_empty!36895 () Bool)

(assert (=> b!1335540 (= e!760644 tp_is_empty!36895)))

(declare-fun mapIsEmpty!57016 () Bool)

(assert (=> mapIsEmpty!57016 mapRes!57016))

(declare-fun b!1335541 () Bool)

(assert (=> b!1335541 (= e!760641 tp_is_empty!36895)))

(declare-fun b!1335542 () Bool)

(declare-fun e!760642 () Bool)

(assert (=> b!1335542 (= e!760642 (and e!760644 mapRes!57016))))

(declare-fun condMapEmpty!57016 () Bool)

(declare-fun mapDefault!57016 () ValueCell!17549)

