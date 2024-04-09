; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112262 () Bool)

(assert start!112262)

(declare-fun b_free!30621 () Bool)

(declare-fun b_next!30621 () Bool)

(assert (=> start!112262 (= b_free!30621 (not b_next!30621))))

(declare-fun tp!107500 () Bool)

(declare-fun b_and!49307 () Bool)

(assert (=> start!112262 (= tp!107500 b_and!49307)))

(declare-fun b!1329260 () Bool)

(declare-fun res!882068 () Bool)

(declare-fun e!757833 () Bool)

(assert (=> b!1329260 (=> (not res!882068) (not e!757833))))

(declare-datatypes ((array!89917 0))(
  ( (array!89918 (arr!43420 (Array (_ BitVec 32) (_ BitVec 64))) (size!43971 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89917)

(declare-datatypes ((List!30947 0))(
  ( (Nil!30944) (Cons!30943 (h!32152 (_ BitVec 64)) (t!44988 List!30947)) )
))
(declare-fun arrayNoDuplicates!0 (array!89917 (_ BitVec 32) List!30947) Bool)

(assert (=> b!1329260 (= res!882068 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30944))))

(declare-fun b!1329261 () Bool)

(declare-fun e!757834 () Bool)

(declare-fun tp_is_empty!36531 () Bool)

(assert (=> b!1329261 (= e!757834 tp_is_empty!36531)))

(declare-fun b!1329262 () Bool)

(declare-fun e!757831 () Bool)

(assert (=> b!1329262 (= e!757831 tp_is_empty!36531)))

(declare-fun b!1329263 () Bool)

(declare-fun res!882062 () Bool)

(assert (=> b!1329263 (=> (not res!882062) (not e!757833))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89917 (_ BitVec 32)) Bool)

(assert (=> b!1329263 (= res!882062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1329264 () Bool)

(declare-fun e!757830 () Bool)

(declare-fun mapRes!56470 () Bool)

(assert (=> b!1329264 (= e!757830 (and e!757831 mapRes!56470))))

(declare-fun condMapEmpty!56470 () Bool)

(declare-datatypes ((V!53811 0))(
  ( (V!53812 (val!18340 Int)) )
))
(declare-datatypes ((ValueCell!17367 0))(
  ( (ValueCellFull!17367 (v!20975 V!53811)) (EmptyCell!17367) )
))
(declare-datatypes ((array!89919 0))(
  ( (array!89920 (arr!43421 (Array (_ BitVec 32) ValueCell!17367)) (size!43972 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89919)

(declare-fun mapDefault!56470 () ValueCell!17367)

(assert (=> b!1329264 (= condMapEmpty!56470 (= (arr!43421 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17367)) mapDefault!56470)))))

(declare-fun mapNonEmpty!56470 () Bool)

(declare-fun tp!107501 () Bool)

(assert (=> mapNonEmpty!56470 (= mapRes!56470 (and tp!107501 e!757834))))

(declare-fun mapRest!56470 () (Array (_ BitVec 32) ValueCell!17367))

(declare-fun mapKey!56470 () (_ BitVec 32))

(declare-fun mapValue!56470 () ValueCell!17367)

(assert (=> mapNonEmpty!56470 (= (arr!43421 _values!1320) (store mapRest!56470 mapKey!56470 mapValue!56470))))

(declare-fun b!1329266 () Bool)

(declare-fun res!882065 () Bool)

(assert (=> b!1329266 (=> (not res!882065) (not e!757833))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1329266 (= res!882065 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43971 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1329267 () Bool)

(declare-fun res!882061 () Bool)

(assert (=> b!1329267 (=> (not res!882061) (not e!757833))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1329267 (= res!882061 (validKeyInArray!0 (select (arr!43420 _keys!1590) from!1980)))))

(declare-fun b!1329268 () Bool)

(declare-fun res!882063 () Bool)

(assert (=> b!1329268 (=> (not res!882063) (not e!757833))))

(assert (=> b!1329268 (= res!882063 (and (= (size!43972 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43971 _keys!1590) (size!43972 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1329269 () Bool)

(declare-fun res!882067 () Bool)

(assert (=> b!1329269 (=> (not res!882067) (not e!757833))))

(assert (=> b!1329269 (= res!882067 (not (= (select (arr!43420 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1329270 () Bool)

(assert (=> b!1329270 (= e!757833 (not true))))

(declare-datatypes ((tuple2!23756 0))(
  ( (tuple2!23757 (_1!11888 (_ BitVec 64)) (_2!11888 V!53811)) )
))
(declare-datatypes ((List!30948 0))(
  ( (Nil!30945) (Cons!30944 (h!32153 tuple2!23756) (t!44989 List!30948)) )
))
(declare-datatypes ((ListLongMap!21425 0))(
  ( (ListLongMap!21426 (toList!10728 List!30948)) )
))
(declare-fun lt!590875 () ListLongMap!21425)

(declare-fun contains!8828 (ListLongMap!21425 (_ BitVec 64)) Bool)

(assert (=> b!1329270 (contains!8828 lt!590875 k0!1153)))

(declare-datatypes ((Unit!43677 0))(
  ( (Unit!43678) )
))
(declare-fun lt!590876 () Unit!43677)

(declare-fun minValue!1262 () V!53811)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!230 ((_ BitVec 64) (_ BitVec 64) V!53811 ListLongMap!21425) Unit!43677)

(assert (=> b!1329270 (= lt!590876 (lemmaInListMapAfterAddingDiffThenInBefore!230 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!590875))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun zeroValue!1262 () V!53811)

(declare-fun +!4625 (ListLongMap!21425 tuple2!23756) ListLongMap!21425)

(declare-fun getCurrentListMapNoExtraKeys!6343 (array!89917 array!89919 (_ BitVec 32) (_ BitVec 32) V!53811 V!53811 (_ BitVec 32) Int) ListLongMap!21425)

(declare-fun get!21917 (ValueCell!17367 V!53811) V!53811)

(declare-fun dynLambda!3662 (Int (_ BitVec 64)) V!53811)

(assert (=> b!1329270 (= lt!590875 (+!4625 (getCurrentListMapNoExtraKeys!6343 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23757 (select (arr!43420 _keys!1590) from!1980) (get!21917 (select (arr!43421 _values!1320) from!1980) (dynLambda!3662 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1329265 () Bool)

(declare-fun res!882060 () Bool)

(assert (=> b!1329265 (=> (not res!882060) (not e!757833))))

(declare-fun getCurrentListMap!5660 (array!89917 array!89919 (_ BitVec 32) (_ BitVec 32) V!53811 V!53811 (_ BitVec 32) Int) ListLongMap!21425)

(assert (=> b!1329265 (= res!882060 (contains!8828 (getCurrentListMap!5660 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun res!882064 () Bool)

(assert (=> start!112262 (=> (not res!882064) (not e!757833))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112262 (= res!882064 (validMask!0 mask!1998))))

(assert (=> start!112262 e!757833))

(declare-fun array_inv!32711 (array!89919) Bool)

(assert (=> start!112262 (and (array_inv!32711 _values!1320) e!757830)))

(assert (=> start!112262 true))

(declare-fun array_inv!32712 (array!89917) Bool)

(assert (=> start!112262 (array_inv!32712 _keys!1590)))

(assert (=> start!112262 tp!107500))

(assert (=> start!112262 tp_is_empty!36531))

(declare-fun mapIsEmpty!56470 () Bool)

(assert (=> mapIsEmpty!56470 mapRes!56470))

(declare-fun b!1329271 () Bool)

(declare-fun res!882066 () Bool)

(assert (=> b!1329271 (=> (not res!882066) (not e!757833))))

(assert (=> b!1329271 (= res!882066 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!112262 res!882064) b!1329268))

(assert (= (and b!1329268 res!882063) b!1329263))

(assert (= (and b!1329263 res!882062) b!1329260))

(assert (= (and b!1329260 res!882068) b!1329266))

(assert (= (and b!1329266 res!882065) b!1329265))

(assert (= (and b!1329265 res!882060) b!1329269))

(assert (= (and b!1329269 res!882067) b!1329267))

(assert (= (and b!1329267 res!882061) b!1329271))

(assert (= (and b!1329271 res!882066) b!1329270))

(assert (= (and b!1329264 condMapEmpty!56470) mapIsEmpty!56470))

(assert (= (and b!1329264 (not condMapEmpty!56470)) mapNonEmpty!56470))

(get-info :version)

(assert (= (and mapNonEmpty!56470 ((_ is ValueCellFull!17367) mapValue!56470)) b!1329261))

(assert (= (and b!1329264 ((_ is ValueCellFull!17367) mapDefault!56470)) b!1329262))

(assert (= start!112262 b!1329264))

(declare-fun b_lambda!23891 () Bool)

(assert (=> (not b_lambda!23891) (not b!1329270)))

(declare-fun t!44987 () Bool)

(declare-fun tb!11845 () Bool)

(assert (=> (and start!112262 (= defaultEntry!1323 defaultEntry!1323) t!44987) tb!11845))

(declare-fun result!24753 () Bool)

(assert (=> tb!11845 (= result!24753 tp_is_empty!36531)))

(assert (=> b!1329270 t!44987))

(declare-fun b_and!49309 () Bool)

(assert (= b_and!49307 (and (=> t!44987 result!24753) b_and!49309)))

(declare-fun m!1218067 () Bool)

(assert (=> b!1329270 m!1218067))

(declare-fun m!1218069 () Bool)

(assert (=> b!1329270 m!1218069))

(declare-fun m!1218071 () Bool)

(assert (=> b!1329270 m!1218071))

(declare-fun m!1218073 () Bool)

(assert (=> b!1329270 m!1218073))

(assert (=> b!1329270 m!1218067))

(declare-fun m!1218075 () Bool)

(assert (=> b!1329270 m!1218075))

(declare-fun m!1218077 () Bool)

(assert (=> b!1329270 m!1218077))

(assert (=> b!1329270 m!1218069))

(assert (=> b!1329270 m!1218073))

(declare-fun m!1218079 () Bool)

(assert (=> b!1329270 m!1218079))

(declare-fun m!1218081 () Bool)

(assert (=> b!1329270 m!1218081))

(declare-fun m!1218083 () Bool)

(assert (=> b!1329260 m!1218083))

(declare-fun m!1218085 () Bool)

(assert (=> b!1329263 m!1218085))

(assert (=> b!1329267 m!1218081))

(assert (=> b!1329267 m!1218081))

(declare-fun m!1218087 () Bool)

(assert (=> b!1329267 m!1218087))

(declare-fun m!1218089 () Bool)

(assert (=> b!1329265 m!1218089))

(assert (=> b!1329265 m!1218089))

(declare-fun m!1218091 () Bool)

(assert (=> b!1329265 m!1218091))

(declare-fun m!1218093 () Bool)

(assert (=> start!112262 m!1218093))

(declare-fun m!1218095 () Bool)

(assert (=> start!112262 m!1218095))

(declare-fun m!1218097 () Bool)

(assert (=> start!112262 m!1218097))

(assert (=> b!1329269 m!1218081))

(declare-fun m!1218099 () Bool)

(assert (=> mapNonEmpty!56470 m!1218099))

(check-sat tp_is_empty!36531 (not b_next!30621) (not b!1329270) (not mapNonEmpty!56470) (not b!1329267) (not b!1329265) (not b!1329260) (not b_lambda!23891) (not b!1329263) (not start!112262) b_and!49309)
(check-sat b_and!49309 (not b_next!30621))
