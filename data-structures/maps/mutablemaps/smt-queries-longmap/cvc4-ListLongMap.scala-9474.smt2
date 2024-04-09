; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112492 () Bool)

(assert start!112492)

(declare-fun b_free!30851 () Bool)

(declare-fun b_next!30851 () Bool)

(assert (=> start!112492 (= b_free!30851 (not b_next!30851))))

(declare-fun tp!108190 () Bool)

(declare-fun b_and!49713 () Bool)

(assert (=> start!112492 (= tp!108190 b_and!49713)))

(declare-fun b!1333279 () Bool)

(declare-fun e!759558 () Bool)

(declare-fun tp_is_empty!36761 () Bool)

(assert (=> b!1333279 (= e!759558 tp_is_empty!36761)))

(declare-fun mapIsEmpty!56815 () Bool)

(declare-fun mapRes!56815 () Bool)

(assert (=> mapIsEmpty!56815 mapRes!56815))

(declare-fun b!1333280 () Bool)

(declare-fun res!884869 () Bool)

(declare-fun e!759559 () Bool)

(assert (=> b!1333280 (=> (not res!884869) (not e!759559))))

(declare-datatypes ((array!90369 0))(
  ( (array!90370 (arr!43646 (Array (_ BitVec 32) (_ BitVec 64))) (size!44197 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90369)

(declare-datatypes ((List!31117 0))(
  ( (Nil!31114) (Cons!31113 (h!32322 (_ BitVec 64)) (t!45334 List!31117)) )
))
(declare-fun arrayNoDuplicates!0 (array!90369 (_ BitVec 32) List!31117) Bool)

(assert (=> b!1333280 (= res!884869 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31114))))

(declare-fun b!1333281 () Bool)

(assert (=> b!1333281 (= e!759559 false)))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun lt!592052 () Bool)

(declare-datatypes ((V!54117 0))(
  ( (V!54118 (val!18455 Int)) )
))
(declare-fun minValue!1262 () V!54117)

(declare-fun zeroValue!1262 () V!54117)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17482 0))(
  ( (ValueCellFull!17482 (v!21090 V!54117)) (EmptyCell!17482) )
))
(declare-datatypes ((array!90371 0))(
  ( (array!90372 (arr!43647 (Array (_ BitVec 32) ValueCell!17482)) (size!44198 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90371)

(declare-datatypes ((tuple2!23940 0))(
  ( (tuple2!23941 (_1!11980 (_ BitVec 64)) (_2!11980 V!54117)) )
))
(declare-datatypes ((List!31118 0))(
  ( (Nil!31115) (Cons!31114 (h!32323 tuple2!23940) (t!45335 List!31118)) )
))
(declare-datatypes ((ListLongMap!21609 0))(
  ( (ListLongMap!21610 (toList!10820 List!31118)) )
))
(declare-fun contains!8920 (ListLongMap!21609 (_ BitVec 64)) Bool)

(declare-fun +!4687 (ListLongMap!21609 tuple2!23940) ListLongMap!21609)

(declare-fun getCurrentListMapNoExtraKeys!6405 (array!90369 array!90371 (_ BitVec 32) (_ BitVec 32) V!54117 V!54117 (_ BitVec 32) Int) ListLongMap!21609)

(declare-fun get!22055 (ValueCell!17482 V!54117) V!54117)

(declare-fun dynLambda!3724 (Int (_ BitVec 64)) V!54117)

(assert (=> b!1333281 (= lt!592052 (contains!8920 (+!4687 (getCurrentListMapNoExtraKeys!6405 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23941 (select (arr!43646 _keys!1590) from!1980) (get!22055 (select (arr!43647 _values!1320) from!1980) (dynLambda!3724 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) k!1153))))

(declare-fun b!1333282 () Bool)

(declare-fun res!884876 () Bool)

(assert (=> b!1333282 (=> (not res!884876) (not e!759559))))

(assert (=> b!1333282 (= res!884876 (and (= (size!44198 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44197 _keys!1590) (size!44198 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!56815 () Bool)

(declare-fun tp!108191 () Bool)

(declare-fun e!759557 () Bool)

(assert (=> mapNonEmpty!56815 (= mapRes!56815 (and tp!108191 e!759557))))

(declare-fun mapValue!56815 () ValueCell!17482)

(declare-fun mapRest!56815 () (Array (_ BitVec 32) ValueCell!17482))

(declare-fun mapKey!56815 () (_ BitVec 32))

(assert (=> mapNonEmpty!56815 (= (arr!43647 _values!1320) (store mapRest!56815 mapKey!56815 mapValue!56815))))

(declare-fun b!1333283 () Bool)

(declare-fun e!759556 () Bool)

(assert (=> b!1333283 (= e!759556 (and e!759558 mapRes!56815))))

(declare-fun condMapEmpty!56815 () Bool)

(declare-fun mapDefault!56815 () ValueCell!17482)

