; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112266 () Bool)

(assert start!112266)

(declare-fun b_free!30625 () Bool)

(declare-fun b_next!30625 () Bool)

(assert (=> start!112266 (= b_free!30625 (not b_next!30625))))

(declare-fun tp!107512 () Bool)

(declare-fun b_and!49315 () Bool)

(assert (=> start!112266 (= tp!107512 b_and!49315)))

(declare-fun b!1329336 () Bool)

(declare-fun e!757860 () Bool)

(declare-fun tp_is_empty!36535 () Bool)

(assert (=> b!1329336 (= e!757860 tp_is_empty!36535)))

(declare-fun res!882116 () Bool)

(declare-fun e!757862 () Bool)

(assert (=> start!112266 (=> (not res!882116) (not e!757862))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112266 (= res!882116 (validMask!0 mask!1998))))

(assert (=> start!112266 e!757862))

(declare-datatypes ((V!53817 0))(
  ( (V!53818 (val!18342 Int)) )
))
(declare-datatypes ((ValueCell!17369 0))(
  ( (ValueCellFull!17369 (v!20977 V!53817)) (EmptyCell!17369) )
))
(declare-datatypes ((array!89925 0))(
  ( (array!89926 (arr!43424 (Array (_ BitVec 32) ValueCell!17369)) (size!43975 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89925)

(declare-fun e!757864 () Bool)

(declare-fun array_inv!32713 (array!89925) Bool)

(assert (=> start!112266 (and (array_inv!32713 _values!1320) e!757864)))

(assert (=> start!112266 true))

(declare-datatypes ((array!89927 0))(
  ( (array!89928 (arr!43425 (Array (_ BitVec 32) (_ BitVec 64))) (size!43976 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89927)

(declare-fun array_inv!32714 (array!89927) Bool)

(assert (=> start!112266 (array_inv!32714 _keys!1590)))

(assert (=> start!112266 tp!107512))

(assert (=> start!112266 tp_is_empty!36535))

(declare-fun mapNonEmpty!56476 () Bool)

(declare-fun mapRes!56476 () Bool)

(declare-fun tp!107513 () Bool)

(declare-fun e!757863 () Bool)

(assert (=> mapNonEmpty!56476 (= mapRes!56476 (and tp!107513 e!757863))))

(declare-fun mapValue!56476 () ValueCell!17369)

(declare-fun mapRest!56476 () (Array (_ BitVec 32) ValueCell!17369))

(declare-fun mapKey!56476 () (_ BitVec 32))

(assert (=> mapNonEmpty!56476 (= (arr!43424 _values!1320) (store mapRest!56476 mapKey!56476 mapValue!56476))))

(declare-fun mapIsEmpty!56476 () Bool)

(assert (=> mapIsEmpty!56476 mapRes!56476))

(declare-fun b!1329337 () Bool)

(declare-fun res!882118 () Bool)

(assert (=> b!1329337 (=> (not res!882118) (not e!757862))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1329337 (= res!882118 (and (= (size!43975 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43976 _keys!1590) (size!43975 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1329338 () Bool)

(assert (=> b!1329338 (= e!757862 (not true))))

(declare-datatypes ((tuple2!23758 0))(
  ( (tuple2!23759 (_1!11889 (_ BitVec 64)) (_2!11889 V!53817)) )
))
(declare-datatypes ((List!30949 0))(
  ( (Nil!30946) (Cons!30945 (h!32154 tuple2!23758) (t!44994 List!30949)) )
))
(declare-datatypes ((ListLongMap!21427 0))(
  ( (ListLongMap!21428 (toList!10729 List!30949)) )
))
(declare-fun lt!590887 () ListLongMap!21427)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8829 (ListLongMap!21427 (_ BitVec 64)) Bool)

(assert (=> b!1329338 (contains!8829 lt!590887 k!1153)))

(declare-datatypes ((Unit!43679 0))(
  ( (Unit!43680) )
))
(declare-fun lt!590888 () Unit!43679)

(declare-fun minValue!1262 () V!53817)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!231 ((_ BitVec 64) (_ BitVec 64) V!53817 ListLongMap!21427) Unit!43679)

(assert (=> b!1329338 (= lt!590888 (lemmaInListMapAfterAddingDiffThenInBefore!231 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!590887))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun zeroValue!1262 () V!53817)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun +!4626 (ListLongMap!21427 tuple2!23758) ListLongMap!21427)

(declare-fun getCurrentListMapNoExtraKeys!6344 (array!89927 array!89925 (_ BitVec 32) (_ BitVec 32) V!53817 V!53817 (_ BitVec 32) Int) ListLongMap!21427)

(declare-fun get!21920 (ValueCell!17369 V!53817) V!53817)

(declare-fun dynLambda!3663 (Int (_ BitVec 64)) V!53817)

(assert (=> b!1329338 (= lt!590887 (+!4626 (getCurrentListMapNoExtraKeys!6344 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23759 (select (arr!43425 _keys!1590) from!1980) (get!21920 (select (arr!43424 _values!1320) from!1980) (dynLambda!3663 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1329339 () Bool)

(declare-fun res!882122 () Bool)

(assert (=> b!1329339 (=> (not res!882122) (not e!757862))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1329339 (= res!882122 (validKeyInArray!0 (select (arr!43425 _keys!1590) from!1980)))))

(declare-fun b!1329340 () Bool)

(declare-fun res!882121 () Bool)

(assert (=> b!1329340 (=> (not res!882121) (not e!757862))))

(declare-fun getCurrentListMap!5661 (array!89927 array!89925 (_ BitVec 32) (_ BitVec 32) V!53817 V!53817 (_ BitVec 32) Int) ListLongMap!21427)

(assert (=> b!1329340 (= res!882121 (contains!8829 (getCurrentListMap!5661 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1329341 () Bool)

(declare-fun res!882117 () Bool)

(assert (=> b!1329341 (=> (not res!882117) (not e!757862))))

(assert (=> b!1329341 (= res!882117 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43976 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1329342 () Bool)

(declare-fun res!882119 () Bool)

(assert (=> b!1329342 (=> (not res!882119) (not e!757862))))

(assert (=> b!1329342 (= res!882119 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1329343 () Bool)

(assert (=> b!1329343 (= e!757864 (and e!757860 mapRes!56476))))

(declare-fun condMapEmpty!56476 () Bool)

(declare-fun mapDefault!56476 () ValueCell!17369)

