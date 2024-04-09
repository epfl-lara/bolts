; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111422 () Bool)

(assert start!111422)

(declare-fun b_free!30043 () Bool)

(declare-fun b_next!30043 () Bool)

(assert (=> start!111422 (= b_free!30043 (not b_next!30043))))

(declare-fun tp!105606 () Bool)

(declare-fun b_and!48273 () Bool)

(assert (=> start!111422 (= tp!105606 b_and!48273)))

(declare-fun b!1317935 () Bool)

(declare-fun res!874762 () Bool)

(declare-fun e!752135 () Bool)

(assert (=> b!1317935 (=> (not res!874762) (not e!752135))))

(declare-datatypes ((array!88629 0))(
  ( (array!88630 (arr!42784 (Array (_ BitVec 32) (_ BitVec 64))) (size!43335 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88629)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1317935 (= res!874762 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43335 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1317936 () Bool)

(declare-fun e!752134 () Bool)

(declare-fun tp_is_empty!35863 () Bool)

(assert (=> b!1317936 (= e!752134 tp_is_empty!35863)))

(declare-fun mapNonEmpty!55442 () Bool)

(declare-fun mapRes!55442 () Bool)

(declare-fun tp!105605 () Bool)

(declare-fun e!752136 () Bool)

(assert (=> mapNonEmpty!55442 (= mapRes!55442 (and tp!105605 e!752136))))

(declare-fun mapKey!55442 () (_ BitVec 32))

(declare-datatypes ((V!52921 0))(
  ( (V!52922 (val!18006 Int)) )
))
(declare-datatypes ((ValueCell!17033 0))(
  ( (ValueCellFull!17033 (v!20634 V!52921)) (EmptyCell!17033) )
))
(declare-datatypes ((array!88631 0))(
  ( (array!88632 (arr!42785 (Array (_ BitVec 32) ValueCell!17033)) (size!43336 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88631)

(declare-fun mapRest!55442 () (Array (_ BitVec 32) ValueCell!17033))

(declare-fun mapValue!55442 () ValueCell!17033)

(assert (=> mapNonEmpty!55442 (= (arr!42785 _values!1337) (store mapRest!55442 mapKey!55442 mapValue!55442))))

(declare-fun b!1317937 () Bool)

(declare-fun e!752137 () Bool)

(assert (=> b!1317937 (= e!752137 (and e!752134 mapRes!55442))))

(declare-fun condMapEmpty!55442 () Bool)

(declare-fun mapDefault!55442 () ValueCell!17033)

