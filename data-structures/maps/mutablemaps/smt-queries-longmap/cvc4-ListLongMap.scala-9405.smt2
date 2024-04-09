; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111964 () Bool)

(assert start!111964)

(declare-fun b_free!30527 () Bool)

(declare-fun b_next!30527 () Bool)

(assert (=> start!111964 (= b_free!30527 (not b_next!30527))))

(declare-fun tp!107061 () Bool)

(declare-fun b_and!49159 () Bool)

(assert (=> start!111964 (= tp!107061 b_and!49159)))

(declare-fun b!1326402 () Bool)

(declare-fun res!880424 () Bool)

(declare-fun e!756024 () Bool)

(assert (=> b!1326402 (=> (not res!880424) (not e!756024))))

(declare-datatypes ((array!89561 0))(
  ( (array!89562 (arr!43249 (Array (_ BitVec 32) (_ BitVec 64))) (size!43800 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89561)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53565 0))(
  ( (V!53566 (val!18248 Int)) )
))
(declare-fun zeroValue!1279 () V!53565)

(declare-datatypes ((ValueCell!17275 0))(
  ( (ValueCellFull!17275 (v!20879 V!53565)) (EmptyCell!17275) )
))
(declare-datatypes ((array!89563 0))(
  ( (array!89564 (arr!43250 (Array (_ BitVec 32) ValueCell!17275)) (size!43801 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89563)

(declare-fun minValue!1279 () V!53565)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23694 0))(
  ( (tuple2!23695 (_1!11857 (_ BitVec 64)) (_2!11857 V!53565)) )
))
(declare-datatypes ((List!30859 0))(
  ( (Nil!30856) (Cons!30855 (h!32064 tuple2!23694) (t!44864 List!30859)) )
))
(declare-datatypes ((ListLongMap!21363 0))(
  ( (ListLongMap!21364 (toList!10697 List!30859)) )
))
(declare-fun contains!8790 (ListLongMap!21363 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5629 (array!89561 array!89563 (_ BitVec 32) (_ BitVec 32) V!53565 V!53565 (_ BitVec 32) Int) ListLongMap!21363)

(assert (=> b!1326402 (= res!880424 (contains!8790 (getCurrentListMap!5629 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun res!880421 () Bool)

(assert (=> start!111964 (=> (not res!880421) (not e!756024))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111964 (= res!880421 (validMask!0 mask!2019))))

(assert (=> start!111964 e!756024))

(declare-fun array_inv!32585 (array!89561) Bool)

(assert (=> start!111964 (array_inv!32585 _keys!1609)))

(assert (=> start!111964 true))

(declare-fun tp_is_empty!36347 () Bool)

(assert (=> start!111964 tp_is_empty!36347))

(declare-fun e!756025 () Bool)

(declare-fun array_inv!32586 (array!89563) Bool)

(assert (=> start!111964 (and (array_inv!32586 _values!1337) e!756025)))

(assert (=> start!111964 tp!107061))

(declare-fun b!1326403 () Bool)

(declare-fun e!756022 () Bool)

(assert (=> b!1326403 (= e!756022 tp_is_empty!36347)))

(declare-fun b!1326404 () Bool)

(declare-fun res!880428 () Bool)

(assert (=> b!1326404 (=> (not res!880428) (not e!756024))))

(assert (=> b!1326404 (= res!880428 (and (= (size!43801 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43800 _keys!1609) (size!43801 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!56172 () Bool)

(declare-fun mapRes!56172 () Bool)

(assert (=> mapIsEmpty!56172 mapRes!56172))

(declare-fun b!1326405 () Bool)

(declare-fun res!880425 () Bool)

(assert (=> b!1326405 (=> (not res!880425) (not e!756024))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1326405 (= res!880425 (validKeyInArray!0 (select (arr!43249 _keys!1609) from!2000)))))

(declare-fun b!1326406 () Bool)

(declare-fun res!880423 () Bool)

(assert (=> b!1326406 (=> (not res!880423) (not e!756024))))

(declare-datatypes ((List!30860 0))(
  ( (Nil!30857) (Cons!30856 (h!32065 (_ BitVec 64)) (t!44865 List!30860)) )
))
(declare-fun arrayNoDuplicates!0 (array!89561 (_ BitVec 32) List!30860) Bool)

(assert (=> b!1326406 (= res!880423 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30857))))

(declare-fun b!1326407 () Bool)

(assert (=> b!1326407 (= e!756024 (not true))))

(declare-fun lt!590075 () ListLongMap!21363)

(declare-fun lt!590071 () tuple2!23694)

(declare-fun +!4612 (ListLongMap!21363 tuple2!23694) ListLongMap!21363)

(assert (=> b!1326407 (contains!8790 (+!4612 lt!590075 lt!590071) k!1164)))

(declare-datatypes ((Unit!43630 0))(
  ( (Unit!43631) )
))
(declare-fun lt!590073 () Unit!43630)

(declare-fun addStillContains!1169 (ListLongMap!21363 (_ BitVec 64) V!53565 (_ BitVec 64)) Unit!43630)

(assert (=> b!1326407 (= lt!590073 (addStillContains!1169 lt!590075 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k!1164))))

(assert (=> b!1326407 (contains!8790 lt!590075 k!1164)))

(declare-fun lt!590076 () Unit!43630)

(declare-fun lt!590070 () V!53565)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!222 ((_ BitVec 64) (_ BitVec 64) V!53565 ListLongMap!21363) Unit!43630)

(assert (=> b!1326407 (= lt!590076 (lemmaInListMapAfterAddingDiffThenInBefore!222 k!1164 (select (arr!43249 _keys!1609) from!2000) lt!590070 lt!590075))))

(declare-fun lt!590072 () ListLongMap!21363)

(assert (=> b!1326407 (contains!8790 lt!590072 k!1164)))

(declare-fun lt!590074 () Unit!43630)

(assert (=> b!1326407 (= lt!590074 (lemmaInListMapAfterAddingDiffThenInBefore!222 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!590072))))

(declare-fun lt!590069 () ListLongMap!21363)

(assert (=> b!1326407 (contains!8790 lt!590069 k!1164)))

(declare-fun lt!590077 () Unit!43630)

(assert (=> b!1326407 (= lt!590077 (lemmaInListMapAfterAddingDiffThenInBefore!222 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!590069))))

(assert (=> b!1326407 (= lt!590069 (+!4612 lt!590072 lt!590071))))

(assert (=> b!1326407 (= lt!590071 (tuple2!23695 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1326407 (= lt!590072 (+!4612 lt!590075 (tuple2!23695 (select (arr!43249 _keys!1609) from!2000) lt!590070)))))

(declare-fun get!21837 (ValueCell!17275 V!53565) V!53565)

(declare-fun dynLambda!3649 (Int (_ BitVec 64)) V!53565)

(assert (=> b!1326407 (= lt!590070 (get!21837 (select (arr!43250 _values!1337) from!2000) (dynLambda!3649 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6330 (array!89561 array!89563 (_ BitVec 32) (_ BitVec 32) V!53565 V!53565 (_ BitVec 32) Int) ListLongMap!21363)

(assert (=> b!1326407 (= lt!590075 (getCurrentListMapNoExtraKeys!6330 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1326408 () Bool)

(declare-fun e!756021 () Bool)

(assert (=> b!1326408 (= e!756021 tp_is_empty!36347)))

(declare-fun mapNonEmpty!56172 () Bool)

(declare-fun tp!107062 () Bool)

(assert (=> mapNonEmpty!56172 (= mapRes!56172 (and tp!107062 e!756022))))

(declare-fun mapRest!56172 () (Array (_ BitVec 32) ValueCell!17275))

(declare-fun mapKey!56172 () (_ BitVec 32))

(declare-fun mapValue!56172 () ValueCell!17275)

(assert (=> mapNonEmpty!56172 (= (arr!43250 _values!1337) (store mapRest!56172 mapKey!56172 mapValue!56172))))

(declare-fun b!1326409 () Bool)

(declare-fun res!880422 () Bool)

(assert (=> b!1326409 (=> (not res!880422) (not e!756024))))

(assert (=> b!1326409 (= res!880422 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43800 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1326410 () Bool)

(declare-fun res!880426 () Bool)

(assert (=> b!1326410 (=> (not res!880426) (not e!756024))))

(assert (=> b!1326410 (= res!880426 (not (= (select (arr!43249 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1326411 () Bool)

(declare-fun res!880427 () Bool)

(assert (=> b!1326411 (=> (not res!880427) (not e!756024))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89561 (_ BitVec 32)) Bool)

(assert (=> b!1326411 (= res!880427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1326412 () Bool)

(assert (=> b!1326412 (= e!756025 (and e!756021 mapRes!56172))))

(declare-fun condMapEmpty!56172 () Bool)

(declare-fun mapDefault!56172 () ValueCell!17275)

