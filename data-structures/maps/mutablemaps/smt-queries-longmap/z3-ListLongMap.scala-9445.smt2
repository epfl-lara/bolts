; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112316 () Bool)

(assert start!112316)

(declare-fun b_free!30675 () Bool)

(declare-fun b_next!30675 () Bool)

(assert (=> start!112316 (= b_free!30675 (not b_next!30675))))

(declare-fun tp!107663 () Bool)

(declare-fun b_and!49415 () Bool)

(assert (=> start!112316 (= tp!107663 b_and!49415)))

(declare-fun b!1330286 () Bool)

(declare-fun res!882794 () Bool)

(declare-fun e!758239 () Bool)

(assert (=> b!1330286 (=> (not res!882794) (not e!758239))))

(declare-datatypes ((array!90025 0))(
  ( (array!90026 (arr!43474 (Array (_ BitVec 32) (_ BitVec 64))) (size!44025 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90025)

(declare-datatypes ((List!30988 0))(
  ( (Nil!30985) (Cons!30984 (h!32193 (_ BitVec 64)) (t!45083 List!30988)) )
))
(declare-fun arrayNoDuplicates!0 (array!90025 (_ BitVec 32) List!30988) Bool)

(assert (=> b!1330286 (= res!882794 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30985))))

(declare-fun b!1330287 () Bool)

(declare-fun res!882792 () Bool)

(assert (=> b!1330287 (=> (not res!882792) (not e!758239))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90025 (_ BitVec 32)) Bool)

(assert (=> b!1330287 (= res!882792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1330288 () Bool)

(declare-fun res!882790 () Bool)

(assert (=> b!1330288 (=> (not res!882790) (not e!758239))))

(declare-datatypes ((V!53883 0))(
  ( (V!53884 (val!18367 Int)) )
))
(declare-datatypes ((ValueCell!17394 0))(
  ( (ValueCellFull!17394 (v!21002 V!53883)) (EmptyCell!17394) )
))
(declare-datatypes ((array!90027 0))(
  ( (array!90028 (arr!43475 (Array (_ BitVec 32) ValueCell!17394)) (size!44026 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90027)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1330288 (= res!882790 (and (= (size!44026 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44025 _keys!1590) (size!44026 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1330289 () Bool)

(assert (=> b!1330289 (= e!758239 (not true))))

(declare-datatypes ((tuple2!23800 0))(
  ( (tuple2!23801 (_1!11910 (_ BitVec 64)) (_2!11910 V!53883)) )
))
(declare-datatypes ((List!30989 0))(
  ( (Nil!30986) (Cons!30985 (h!32194 tuple2!23800) (t!45084 List!30989)) )
))
(declare-datatypes ((ListLongMap!21469 0))(
  ( (ListLongMap!21470 (toList!10750 List!30989)) )
))
(declare-fun lt!591055 () ListLongMap!21469)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun contains!8850 (ListLongMap!21469 (_ BitVec 64)) Bool)

(assert (=> b!1330289 (contains!8850 lt!591055 k0!1153)))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((Unit!43713 0))(
  ( (Unit!43714) )
))
(declare-fun lt!591052 () Unit!43713)

(declare-fun lt!591053 () V!53883)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!248 ((_ BitVec 64) (_ BitVec 64) V!53883 ListLongMap!21469) Unit!43713)

(assert (=> b!1330289 (= lt!591052 (lemmaInListMapAfterAddingDiffThenInBefore!248 k0!1153 (select (arr!43474 _keys!1590) from!1980) lt!591053 lt!591055))))

(declare-fun lt!591054 () ListLongMap!21469)

(assert (=> b!1330289 (contains!8850 lt!591054 k0!1153)))

(declare-fun lt!591056 () Unit!43713)

(declare-fun minValue!1262 () V!53883)

(assert (=> b!1330289 (= lt!591056 (lemmaInListMapAfterAddingDiffThenInBefore!248 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591054))))

(declare-fun +!4643 (ListLongMap!21469 tuple2!23800) ListLongMap!21469)

(assert (=> b!1330289 (= lt!591054 (+!4643 lt!591055 (tuple2!23801 (select (arr!43474 _keys!1590) from!1980) lt!591053)))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!21953 (ValueCell!17394 V!53883) V!53883)

(declare-fun dynLambda!3680 (Int (_ BitVec 64)) V!53883)

(assert (=> b!1330289 (= lt!591053 (get!21953 (select (arr!43475 _values!1320) from!1980) (dynLambda!3680 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1262 () V!53883)

(declare-fun getCurrentListMapNoExtraKeys!6361 (array!90025 array!90027 (_ BitVec 32) (_ BitVec 32) V!53883 V!53883 (_ BitVec 32) Int) ListLongMap!21469)

(assert (=> b!1330289 (= lt!591055 (getCurrentListMapNoExtraKeys!6361 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1330290 () Bool)

(declare-fun e!758238 () Bool)

(declare-fun tp_is_empty!36585 () Bool)

(assert (=> b!1330290 (= e!758238 tp_is_empty!36585)))

(declare-fun b!1330291 () Bool)

(declare-fun res!882796 () Bool)

(assert (=> b!1330291 (=> (not res!882796) (not e!758239))))

(assert (=> b!1330291 (= res!882796 (not (= (select (arr!43474 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1330292 () Bool)

(declare-fun e!758237 () Bool)

(assert (=> b!1330292 (= e!758237 tp_is_empty!36585)))

(declare-fun b!1330294 () Bool)

(declare-fun res!882789 () Bool)

(assert (=> b!1330294 (=> (not res!882789) (not e!758239))))

(assert (=> b!1330294 (= res!882789 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44025 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!56551 () Bool)

(declare-fun mapRes!56551 () Bool)

(assert (=> mapIsEmpty!56551 mapRes!56551))

(declare-fun b!1330295 () Bool)

(declare-fun e!758236 () Bool)

(assert (=> b!1330295 (= e!758236 (and e!758238 mapRes!56551))))

(declare-fun condMapEmpty!56551 () Bool)

(declare-fun mapDefault!56551 () ValueCell!17394)

(assert (=> b!1330295 (= condMapEmpty!56551 (= (arr!43475 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17394)) mapDefault!56551)))))

(declare-fun b!1330296 () Bool)

(declare-fun res!882791 () Bool)

(assert (=> b!1330296 (=> (not res!882791) (not e!758239))))

(declare-fun getCurrentListMap!5679 (array!90025 array!90027 (_ BitVec 32) (_ BitVec 32) V!53883 V!53883 (_ BitVec 32) Int) ListLongMap!21469)

(assert (=> b!1330296 (= res!882791 (contains!8850 (getCurrentListMap!5679 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun mapNonEmpty!56551 () Bool)

(declare-fun tp!107662 () Bool)

(assert (=> mapNonEmpty!56551 (= mapRes!56551 (and tp!107662 e!758237))))

(declare-fun mapValue!56551 () ValueCell!17394)

(declare-fun mapKey!56551 () (_ BitVec 32))

(declare-fun mapRest!56551 () (Array (_ BitVec 32) ValueCell!17394))

(assert (=> mapNonEmpty!56551 (= (arr!43475 _values!1320) (store mapRest!56551 mapKey!56551 mapValue!56551))))

(declare-fun b!1330297 () Bool)

(declare-fun res!882797 () Bool)

(assert (=> b!1330297 (=> (not res!882797) (not e!758239))))

(assert (=> b!1330297 (= res!882797 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!882795 () Bool)

(assert (=> start!112316 (=> (not res!882795) (not e!758239))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112316 (= res!882795 (validMask!0 mask!1998))))

(assert (=> start!112316 e!758239))

(declare-fun array_inv!32751 (array!90027) Bool)

(assert (=> start!112316 (and (array_inv!32751 _values!1320) e!758236)))

(assert (=> start!112316 true))

(declare-fun array_inv!32752 (array!90025) Bool)

(assert (=> start!112316 (array_inv!32752 _keys!1590)))

(assert (=> start!112316 tp!107663))

(assert (=> start!112316 tp_is_empty!36585))

(declare-fun b!1330293 () Bool)

(declare-fun res!882793 () Bool)

(assert (=> b!1330293 (=> (not res!882793) (not e!758239))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1330293 (= res!882793 (validKeyInArray!0 (select (arr!43474 _keys!1590) from!1980)))))

(assert (= (and start!112316 res!882795) b!1330288))

(assert (= (and b!1330288 res!882790) b!1330287))

(assert (= (and b!1330287 res!882792) b!1330286))

(assert (= (and b!1330286 res!882794) b!1330294))

(assert (= (and b!1330294 res!882789) b!1330296))

(assert (= (and b!1330296 res!882791) b!1330291))

(assert (= (and b!1330291 res!882796) b!1330293))

(assert (= (and b!1330293 res!882793) b!1330297))

(assert (= (and b!1330297 res!882797) b!1330289))

(assert (= (and b!1330295 condMapEmpty!56551) mapIsEmpty!56551))

(assert (= (and b!1330295 (not condMapEmpty!56551)) mapNonEmpty!56551))

(get-info :version)

(assert (= (and mapNonEmpty!56551 ((_ is ValueCellFull!17394) mapValue!56551)) b!1330292))

(assert (= (and b!1330295 ((_ is ValueCellFull!17394) mapDefault!56551)) b!1330290))

(assert (= start!112316 b!1330295))

(declare-fun b_lambda!23945 () Bool)

(assert (=> (not b_lambda!23945) (not b!1330289)))

(declare-fun t!45082 () Bool)

(declare-fun tb!11899 () Bool)

(assert (=> (and start!112316 (= defaultEntry!1323 defaultEntry!1323) t!45082) tb!11899))

(declare-fun result!24861 () Bool)

(assert (=> tb!11899 (= result!24861 tp_is_empty!36585)))

(assert (=> b!1330289 t!45082))

(declare-fun b_and!49417 () Bool)

(assert (= b_and!49415 (and (=> t!45082 result!24861) b_and!49417)))

(declare-fun m!1218989 () Bool)

(assert (=> b!1330286 m!1218989))

(declare-fun m!1218991 () Bool)

(assert (=> b!1330291 m!1218991))

(declare-fun m!1218993 () Bool)

(assert (=> mapNonEmpty!56551 m!1218993))

(assert (=> b!1330293 m!1218991))

(assert (=> b!1330293 m!1218991))

(declare-fun m!1218995 () Bool)

(assert (=> b!1330293 m!1218995))

(declare-fun m!1218997 () Bool)

(assert (=> b!1330296 m!1218997))

(assert (=> b!1330296 m!1218997))

(declare-fun m!1218999 () Bool)

(assert (=> b!1330296 m!1218999))

(declare-fun m!1219001 () Bool)

(assert (=> b!1330287 m!1219001))

(declare-fun m!1219003 () Bool)

(assert (=> b!1330289 m!1219003))

(declare-fun m!1219005 () Bool)

(assert (=> b!1330289 m!1219005))

(declare-fun m!1219007 () Bool)

(assert (=> b!1330289 m!1219007))

(declare-fun m!1219009 () Bool)

(assert (=> b!1330289 m!1219009))

(assert (=> b!1330289 m!1219007))

(declare-fun m!1219011 () Bool)

(assert (=> b!1330289 m!1219011))

(declare-fun m!1219013 () Bool)

(assert (=> b!1330289 m!1219013))

(declare-fun m!1219015 () Bool)

(assert (=> b!1330289 m!1219015))

(declare-fun m!1219017 () Bool)

(assert (=> b!1330289 m!1219017))

(assert (=> b!1330289 m!1219009))

(assert (=> b!1330289 m!1218991))

(declare-fun m!1219019 () Bool)

(assert (=> b!1330289 m!1219019))

(assert (=> b!1330289 m!1218991))

(declare-fun m!1219021 () Bool)

(assert (=> start!112316 m!1219021))

(declare-fun m!1219023 () Bool)

(assert (=> start!112316 m!1219023))

(declare-fun m!1219025 () Bool)

(assert (=> start!112316 m!1219025))

(check-sat b_and!49417 tp_is_empty!36585 (not b!1330296) (not b_next!30675) (not b!1330293) (not b!1330286) (not b_lambda!23945) (not b!1330289) (not start!112316) (not b!1330287) (not mapNonEmpty!56551))
(check-sat b_and!49417 (not b_next!30675))
