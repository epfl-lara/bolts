; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112408 () Bool)

(assert start!112408)

(declare-fun b_free!30767 () Bool)

(declare-fun b_next!30767 () Bool)

(assert (=> start!112408 (= b_free!30767 (not b_next!30767))))

(declare-fun tp!107938 () Bool)

(declare-fun b_and!49599 () Bool)

(assert (=> start!112408 (= tp!107938 b_and!49599)))

(declare-fun b!1332034 () Bool)

(declare-fun e!758925 () Bool)

(declare-fun tp_is_empty!36677 () Bool)

(assert (=> b!1332034 (= e!758925 tp_is_empty!36677)))

(declare-fun b!1332035 () Bool)

(declare-fun res!884031 () Bool)

(declare-fun e!758928 () Bool)

(assert (=> b!1332035 (=> (not res!884031) (not e!758928))))

(declare-datatypes ((V!54005 0))(
  ( (V!54006 (val!18413 Int)) )
))
(declare-datatypes ((ValueCell!17440 0))(
  ( (ValueCellFull!17440 (v!21048 V!54005)) (EmptyCell!17440) )
))
(declare-datatypes ((array!90203 0))(
  ( (array!90204 (arr!43563 (Array (_ BitVec 32) ValueCell!17440)) (size!44114 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90203)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90205 0))(
  ( (array!90206 (arr!43564 (Array (_ BitVec 32) (_ BitVec 64))) (size!44115 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90205)

(assert (=> b!1332035 (= res!884031 (and (= (size!44114 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44115 _keys!1590) (size!44114 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!56689 () Bool)

(declare-fun mapRes!56689 () Bool)

(declare-fun tp!107939 () Bool)

(declare-fun e!758927 () Bool)

(assert (=> mapNonEmpty!56689 (= mapRes!56689 (and tp!107939 e!758927))))

(declare-fun mapKey!56689 () (_ BitVec 32))

(declare-fun mapRest!56689 () (Array (_ BitVec 32) ValueCell!17440))

(declare-fun mapValue!56689 () ValueCell!17440)

(assert (=> mapNonEmpty!56689 (= (arr!43563 _values!1320) (store mapRest!56689 mapKey!56689 mapValue!56689))))

(declare-fun b!1332036 () Bool)

(assert (=> b!1332036 (= e!758928 (not true))))

(declare-datatypes ((tuple2!23876 0))(
  ( (tuple2!23877 (_1!11948 (_ BitVec 64)) (_2!11948 V!54005)) )
))
(declare-datatypes ((List!31056 0))(
  ( (Nil!31053) (Cons!31052 (h!32261 tuple2!23876) (t!45243 List!31056)) )
))
(declare-datatypes ((ListLongMap!21545 0))(
  ( (ListLongMap!21546 (toList!10788 List!31056)) )
))
(declare-fun lt!591797 () ListLongMap!21545)

(declare-fun minValue!1262 () V!54005)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8888 (ListLongMap!21545 (_ BitVec 64)) Bool)

(declare-fun +!4676 (ListLongMap!21545 tuple2!23876) ListLongMap!21545)

(assert (=> b!1332036 (contains!8888 (+!4676 lt!591797 (tuple2!23877 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k!1153)))

(declare-datatypes ((Unit!43779 0))(
  ( (Unit!43780) )
))
(declare-fun lt!591798 () Unit!43779)

(declare-fun addStillContains!1186 (ListLongMap!21545 (_ BitVec 64) V!54005 (_ BitVec 64)) Unit!43779)

(assert (=> b!1332036 (= lt!591798 (addStillContains!1186 lt!591797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k!1153))))

(assert (=> b!1332036 (contains!8888 lt!591797 k!1153)))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun lt!591795 () Unit!43779)

(declare-fun lt!591796 () V!54005)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!281 ((_ BitVec 64) (_ BitVec 64) V!54005 ListLongMap!21545) Unit!43779)

(assert (=> b!1332036 (= lt!591795 (lemmaInListMapAfterAddingDiffThenInBefore!281 k!1153 (select (arr!43564 _keys!1590) from!1980) lt!591796 lt!591797))))

(declare-fun lt!591800 () ListLongMap!21545)

(assert (=> b!1332036 (contains!8888 lt!591800 k!1153)))

(declare-fun lt!591799 () Unit!43779)

(assert (=> b!1332036 (= lt!591799 (lemmaInListMapAfterAddingDiffThenInBefore!281 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591800))))

(assert (=> b!1332036 (= lt!591800 (+!4676 lt!591797 (tuple2!23877 (select (arr!43564 _keys!1590) from!1980) lt!591796)))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!22016 (ValueCell!17440 V!54005) V!54005)

(declare-fun dynLambda!3713 (Int (_ BitVec 64)) V!54005)

(assert (=> b!1332036 (= lt!591796 (get!22016 (select (arr!43563 _values!1320) from!1980) (dynLambda!3713 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1262 () V!54005)

(declare-fun getCurrentListMapNoExtraKeys!6394 (array!90205 array!90203 (_ BitVec 32) (_ BitVec 32) V!54005 V!54005 (_ BitVec 32) Int) ListLongMap!21545)

(assert (=> b!1332036 (= lt!591797 (getCurrentListMapNoExtraKeys!6394 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1332037 () Bool)

(declare-fun e!758926 () Bool)

(assert (=> b!1332037 (= e!758926 (and e!758925 mapRes!56689))))

(declare-fun condMapEmpty!56689 () Bool)

(declare-fun mapDefault!56689 () ValueCell!17440)

