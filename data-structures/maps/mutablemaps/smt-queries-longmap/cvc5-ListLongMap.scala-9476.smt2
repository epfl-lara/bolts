; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112500 () Bool)

(assert start!112500)

(declare-fun b_free!30859 () Bool)

(declare-fun b_next!30859 () Bool)

(assert (=> start!112500 (= b_free!30859 (not b_next!30859))))

(declare-fun tp!108215 () Bool)

(declare-fun b_and!49729 () Bool)

(assert (=> start!112500 (= tp!108215 b_and!49729)))

(declare-fun b!1333453 () Bool)

(declare-fun e!759630 () Bool)

(assert (=> b!1333453 (= e!759630 (not true))))

(declare-datatypes ((V!54129 0))(
  ( (V!54130 (val!18459 Int)) )
))
(declare-datatypes ((tuple2!23948 0))(
  ( (tuple2!23949 (_1!11984 (_ BitVec 64)) (_2!11984 V!54129)) )
))
(declare-datatypes ((List!31125 0))(
  ( (Nil!31122) (Cons!31121 (h!32330 tuple2!23948) (t!45350 List!31125)) )
))
(declare-datatypes ((ListLongMap!21617 0))(
  ( (ListLongMap!21618 (toList!10824 List!31125)) )
))
(declare-fun lt!592088 () ListLongMap!21617)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8924 (ListLongMap!21617 (_ BitVec 64)) Bool)

(assert (=> b!1333453 (contains!8924 lt!592088 k!1153)))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90385 0))(
  ( (array!90386 (arr!43654 (Array (_ BitVec 32) (_ BitVec 64))) (size!44205 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90385)

(declare-fun lt!592087 () V!54129)

(declare-datatypes ((Unit!43797 0))(
  ( (Unit!43798) )
))
(declare-fun lt!592086 () Unit!43797)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!290 ((_ BitVec 64) (_ BitVec 64) V!54129 ListLongMap!21617) Unit!43797)

(assert (=> b!1333453 (= lt!592086 (lemmaInListMapAfterAddingDiffThenInBefore!290 k!1153 (select (arr!43654 _keys!1590) from!1980) lt!592087 lt!592088))))

(declare-fun b!1333455 () Bool)

(declare-fun res!884998 () Bool)

(declare-fun e!759629 () Bool)

(assert (=> b!1333455 (=> (not res!884998) (not e!759629))))

(declare-datatypes ((ValueCell!17486 0))(
  ( (ValueCellFull!17486 (v!21094 V!54129)) (EmptyCell!17486) )
))
(declare-datatypes ((array!90387 0))(
  ( (array!90388 (arr!43655 (Array (_ BitVec 32) ValueCell!17486)) (size!44206 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90387)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54129)

(declare-fun zeroValue!1262 () V!54129)

(declare-fun getCurrentListMap!5744 (array!90385 array!90387 (_ BitVec 32) (_ BitVec 32) V!54129 V!54129 (_ BitVec 32) Int) ListLongMap!21617)

(assert (=> b!1333455 (= res!884998 (contains!8924 (getCurrentListMap!5744 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1333456 () Bool)

(declare-fun res!885002 () Bool)

(assert (=> b!1333456 (=> (not res!885002) (not e!759629))))

(assert (=> b!1333456 (= res!885002 (and (= (size!44206 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44205 _keys!1590) (size!44206 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1333457 () Bool)

(declare-fun res!885001 () Bool)

(assert (=> b!1333457 (=> (not res!885001) (not e!759629))))

(assert (=> b!1333457 (= res!885001 (not (= (select (arr!43654 _keys!1590) from!1980) k!1153)))))

(declare-fun mapNonEmpty!56827 () Bool)

(declare-fun mapRes!56827 () Bool)

(declare-fun tp!108214 () Bool)

(declare-fun e!759628 () Bool)

(assert (=> mapNonEmpty!56827 (= mapRes!56827 (and tp!108214 e!759628))))

(declare-fun mapKey!56827 () (_ BitVec 32))

(declare-fun mapRest!56827 () (Array (_ BitVec 32) ValueCell!17486))

(declare-fun mapValue!56827 () ValueCell!17486)

(assert (=> mapNonEmpty!56827 (= (arr!43655 _values!1320) (store mapRest!56827 mapKey!56827 mapValue!56827))))

(declare-fun b!1333458 () Bool)

(declare-fun e!759627 () Bool)

(declare-fun tp_is_empty!36769 () Bool)

(assert (=> b!1333458 (= e!759627 tp_is_empty!36769)))

(declare-fun b!1333459 () Bool)

(declare-fun e!759631 () Bool)

(assert (=> b!1333459 (= e!759631 (and e!759627 mapRes!56827))))

(declare-fun condMapEmpty!56827 () Bool)

(declare-fun mapDefault!56827 () ValueCell!17486)

