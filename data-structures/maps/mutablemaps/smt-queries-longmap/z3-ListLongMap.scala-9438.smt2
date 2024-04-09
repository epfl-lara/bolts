; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112274 () Bool)

(assert start!112274)

(declare-fun b_free!30633 () Bool)

(declare-fun b_next!30633 () Bool)

(assert (=> start!112274 (= b_free!30633 (not b_next!30633))))

(declare-fun tp!107537 () Bool)

(declare-fun b_and!49331 () Bool)

(assert (=> start!112274 (= tp!107537 b_and!49331)))

(declare-fun b!1329488 () Bool)

(declare-fun res!882226 () Bool)

(declare-fun e!757921 () Bool)

(assert (=> b!1329488 (=> (not res!882226) (not e!757921))))

(declare-datatypes ((array!89941 0))(
  ( (array!89942 (arr!43432 (Array (_ BitVec 32) (_ BitVec 64))) (size!43983 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89941)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1329488 (= res!882226 (validKeyInArray!0 (select (arr!43432 _keys!1590) from!1980)))))

(declare-fun b!1329489 () Bool)

(declare-fun res!882228 () Bool)

(assert (=> b!1329489 (=> (not res!882228) (not e!757921))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1329489 (= res!882228 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!56488 () Bool)

(declare-fun mapRes!56488 () Bool)

(assert (=> mapIsEmpty!56488 mapRes!56488))

(declare-fun b!1329490 () Bool)

(declare-fun res!882225 () Bool)

(assert (=> b!1329490 (=> (not res!882225) (not e!757921))))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1329490 (= res!882225 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43983 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1329491 () Bool)

(declare-fun e!757924 () Bool)

(declare-fun e!757923 () Bool)

(assert (=> b!1329491 (= e!757924 (and e!757923 mapRes!56488))))

(declare-fun condMapEmpty!56488 () Bool)

(declare-datatypes ((V!53827 0))(
  ( (V!53828 (val!18346 Int)) )
))
(declare-datatypes ((ValueCell!17373 0))(
  ( (ValueCellFull!17373 (v!20981 V!53827)) (EmptyCell!17373) )
))
(declare-datatypes ((array!89943 0))(
  ( (array!89944 (arr!43433 (Array (_ BitVec 32) ValueCell!17373)) (size!43984 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89943)

(declare-fun mapDefault!56488 () ValueCell!17373)

(assert (=> b!1329491 (= condMapEmpty!56488 (= (arr!43433 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17373)) mapDefault!56488)))))

(declare-fun b!1329492 () Bool)

(declare-fun res!882230 () Bool)

(assert (=> b!1329492 (=> (not res!882230) (not e!757921))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!53827)

(declare-fun zeroValue!1262 () V!53827)

(declare-datatypes ((tuple2!23766 0))(
  ( (tuple2!23767 (_1!11893 (_ BitVec 64)) (_2!11893 V!53827)) )
))
(declare-datatypes ((List!30955 0))(
  ( (Nil!30952) (Cons!30951 (h!32160 tuple2!23766) (t!45008 List!30955)) )
))
(declare-datatypes ((ListLongMap!21435 0))(
  ( (ListLongMap!21436 (toList!10733 List!30955)) )
))
(declare-fun contains!8833 (ListLongMap!21435 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5665 (array!89941 array!89943 (_ BitVec 32) (_ BitVec 32) V!53827 V!53827 (_ BitVec 32) Int) ListLongMap!21435)

(assert (=> b!1329492 (= res!882230 (contains!8833 (getCurrentListMap!5665 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1329493 () Bool)

(declare-fun res!882223 () Bool)

(assert (=> b!1329493 (=> (not res!882223) (not e!757921))))

(assert (=> b!1329493 (= res!882223 (and (= (size!43984 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43983 _keys!1590) (size!43984 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1329494 () Bool)

(declare-fun res!882229 () Bool)

(assert (=> b!1329494 (=> (not res!882229) (not e!757921))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89941 (_ BitVec 32)) Bool)

(assert (=> b!1329494 (= res!882229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1329495 () Bool)

(declare-fun e!757920 () Bool)

(declare-fun tp_is_empty!36543 () Bool)

(assert (=> b!1329495 (= e!757920 tp_is_empty!36543)))

(declare-fun b!1329496 () Bool)

(assert (=> b!1329496 (= e!757923 tp_is_empty!36543)))

(declare-fun b!1329497 () Bool)

(declare-fun res!882222 () Bool)

(assert (=> b!1329497 (=> (not res!882222) (not e!757921))))

(assert (=> b!1329497 (= res!882222 (not (= (select (arr!43432 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1329498 () Bool)

(assert (=> b!1329498 (= e!757921 (not true))))

(declare-fun lt!590912 () ListLongMap!21435)

(assert (=> b!1329498 (contains!8833 lt!590912 k0!1153)))

(declare-datatypes ((Unit!43685 0))(
  ( (Unit!43686) )
))
(declare-fun lt!590911 () Unit!43685)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!234 ((_ BitVec 64) (_ BitVec 64) V!53827 ListLongMap!21435) Unit!43685)

(assert (=> b!1329498 (= lt!590911 (lemmaInListMapAfterAddingDiffThenInBefore!234 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!590912))))

(declare-fun +!4629 (ListLongMap!21435 tuple2!23766) ListLongMap!21435)

(declare-fun getCurrentListMapNoExtraKeys!6347 (array!89941 array!89943 (_ BitVec 32) (_ BitVec 32) V!53827 V!53827 (_ BitVec 32) Int) ListLongMap!21435)

(declare-fun get!21925 (ValueCell!17373 V!53827) V!53827)

(declare-fun dynLambda!3666 (Int (_ BitVec 64)) V!53827)

(assert (=> b!1329498 (= lt!590912 (+!4629 (getCurrentListMapNoExtraKeys!6347 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23767 (select (arr!43432 _keys!1590) from!1980) (get!21925 (select (arr!43433 _values!1320) from!1980) (dynLambda!3666 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1329499 () Bool)

(declare-fun res!882224 () Bool)

(assert (=> b!1329499 (=> (not res!882224) (not e!757921))))

(declare-datatypes ((List!30956 0))(
  ( (Nil!30953) (Cons!30952 (h!32161 (_ BitVec 64)) (t!45009 List!30956)) )
))
(declare-fun arrayNoDuplicates!0 (array!89941 (_ BitVec 32) List!30956) Bool)

(assert (=> b!1329499 (= res!882224 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30953))))

(declare-fun res!882227 () Bool)

(assert (=> start!112274 (=> (not res!882227) (not e!757921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112274 (= res!882227 (validMask!0 mask!1998))))

(assert (=> start!112274 e!757921))

(declare-fun array_inv!32719 (array!89943) Bool)

(assert (=> start!112274 (and (array_inv!32719 _values!1320) e!757924)))

(assert (=> start!112274 true))

(declare-fun array_inv!32720 (array!89941) Bool)

(assert (=> start!112274 (array_inv!32720 _keys!1590)))

(assert (=> start!112274 tp!107537))

(assert (=> start!112274 tp_is_empty!36543))

(declare-fun mapNonEmpty!56488 () Bool)

(declare-fun tp!107536 () Bool)

(assert (=> mapNonEmpty!56488 (= mapRes!56488 (and tp!107536 e!757920))))

(declare-fun mapRest!56488 () (Array (_ BitVec 32) ValueCell!17373))

(declare-fun mapKey!56488 () (_ BitVec 32))

(declare-fun mapValue!56488 () ValueCell!17373)

(assert (=> mapNonEmpty!56488 (= (arr!43433 _values!1320) (store mapRest!56488 mapKey!56488 mapValue!56488))))

(assert (= (and start!112274 res!882227) b!1329493))

(assert (= (and b!1329493 res!882223) b!1329494))

(assert (= (and b!1329494 res!882229) b!1329499))

(assert (= (and b!1329499 res!882224) b!1329490))

(assert (= (and b!1329490 res!882225) b!1329492))

(assert (= (and b!1329492 res!882230) b!1329497))

(assert (= (and b!1329497 res!882222) b!1329488))

(assert (= (and b!1329488 res!882226) b!1329489))

(assert (= (and b!1329489 res!882228) b!1329498))

(assert (= (and b!1329491 condMapEmpty!56488) mapIsEmpty!56488))

(assert (= (and b!1329491 (not condMapEmpty!56488)) mapNonEmpty!56488))

(get-info :version)

(assert (= (and mapNonEmpty!56488 ((_ is ValueCellFull!17373) mapValue!56488)) b!1329495))

(assert (= (and b!1329491 ((_ is ValueCellFull!17373) mapDefault!56488)) b!1329496))

(assert (= start!112274 b!1329491))

(declare-fun b_lambda!23903 () Bool)

(assert (=> (not b_lambda!23903) (not b!1329498)))

(declare-fun t!45007 () Bool)

(declare-fun tb!11857 () Bool)

(assert (=> (and start!112274 (= defaultEntry!1323 defaultEntry!1323) t!45007) tb!11857))

(declare-fun result!24777 () Bool)

(assert (=> tb!11857 (= result!24777 tp_is_empty!36543)))

(assert (=> b!1329498 t!45007))

(declare-fun b_and!49333 () Bool)

(assert (= b_and!49331 (and (=> t!45007 result!24777) b_and!49333)))

(declare-fun m!1218271 () Bool)

(assert (=> b!1329494 m!1218271))

(declare-fun m!1218273 () Bool)

(assert (=> b!1329497 m!1218273))

(declare-fun m!1218275 () Bool)

(assert (=> mapNonEmpty!56488 m!1218275))

(declare-fun m!1218277 () Bool)

(assert (=> b!1329499 m!1218277))

(declare-fun m!1218279 () Bool)

(assert (=> start!112274 m!1218279))

(declare-fun m!1218281 () Bool)

(assert (=> start!112274 m!1218281))

(declare-fun m!1218283 () Bool)

(assert (=> start!112274 m!1218283))

(declare-fun m!1218285 () Bool)

(assert (=> b!1329498 m!1218285))

(declare-fun m!1218287 () Bool)

(assert (=> b!1329498 m!1218287))

(declare-fun m!1218289 () Bool)

(assert (=> b!1329498 m!1218289))

(declare-fun m!1218291 () Bool)

(assert (=> b!1329498 m!1218291))

(declare-fun m!1218293 () Bool)

(assert (=> b!1329498 m!1218293))

(assert (=> b!1329498 m!1218287))

(declare-fun m!1218295 () Bool)

(assert (=> b!1329498 m!1218295))

(assert (=> b!1329498 m!1218289))

(assert (=> b!1329498 m!1218293))

(declare-fun m!1218297 () Bool)

(assert (=> b!1329498 m!1218297))

(assert (=> b!1329498 m!1218273))

(assert (=> b!1329488 m!1218273))

(assert (=> b!1329488 m!1218273))

(declare-fun m!1218299 () Bool)

(assert (=> b!1329488 m!1218299))

(declare-fun m!1218301 () Bool)

(assert (=> b!1329492 m!1218301))

(assert (=> b!1329492 m!1218301))

(declare-fun m!1218303 () Bool)

(assert (=> b!1329492 m!1218303))

(check-sat (not b!1329499) (not b!1329492) (not mapNonEmpty!56488) (not b_lambda!23903) (not b!1329488) tp_is_empty!36543 b_and!49333 (not b!1329494) (not start!112274) (not b!1329498) (not b_next!30633))
(check-sat b_and!49333 (not b_next!30633))
