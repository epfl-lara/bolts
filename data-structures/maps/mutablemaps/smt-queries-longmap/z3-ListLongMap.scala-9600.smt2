; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113500 () Bool)

(assert start!113500)

(declare-fun b_free!31515 () Bool)

(declare-fun b_next!31515 () Bool)

(assert (=> start!113500 (= b_free!31515 (not b_next!31515))))

(declare-fun tp!110351 () Bool)

(declare-fun b_and!50815 () Bool)

(assert (=> start!113500 (= tp!110351 b_and!50815)))

(declare-fun b!1346942 () Bool)

(declare-fun res!893873 () Bool)

(declare-fun e!766395 () Bool)

(assert (=> b!1346942 (=> (not res!893873) (not e!766395))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1346942 (= res!893873 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1346943 () Bool)

(declare-fun res!893868 () Bool)

(assert (=> b!1346943 (=> (not res!893868) (not e!766395))))

(declare-datatypes ((array!91819 0))(
  ( (array!91820 (arr!44361 (Array (_ BitVec 32) (_ BitVec 64))) (size!44912 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91819)

(declare-datatypes ((List!31585 0))(
  ( (Nil!31582) (Cons!31581 (h!32790 (_ BitVec 64)) (t!46186 List!31585)) )
))
(declare-fun arrayNoDuplicates!0 (array!91819 (_ BitVec 32) List!31585) Bool)

(assert (=> b!1346943 (= res!893868 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31582))))

(declare-fun b!1346944 () Bool)

(declare-fun res!893871 () Bool)

(assert (=> b!1346944 (=> (not res!893871) (not e!766395))))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1346944 (= res!893871 (validKeyInArray!0 (select (arr!44361 _keys!1571) from!1960)))))

(declare-fun b!1346945 () Bool)

(declare-fun res!893866 () Bool)

(assert (=> b!1346945 (=> (not res!893866) (not e!766395))))

(declare-datatypes ((V!55123 0))(
  ( (V!55124 (val!18832 Int)) )
))
(declare-fun minValue!1245 () V!55123)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!55123)

(declare-datatypes ((ValueCell!17859 0))(
  ( (ValueCellFull!17859 (v!21478 V!55123)) (EmptyCell!17859) )
))
(declare-datatypes ((array!91821 0))(
  ( (array!91822 (arr!44362 (Array (_ BitVec 32) ValueCell!17859)) (size!44913 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91821)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24414 0))(
  ( (tuple2!24415 (_1!12217 (_ BitVec 64)) (_2!12217 V!55123)) )
))
(declare-datatypes ((List!31586 0))(
  ( (Nil!31583) (Cons!31582 (h!32791 tuple2!24414) (t!46187 List!31586)) )
))
(declare-datatypes ((ListLongMap!22083 0))(
  ( (ListLongMap!22084 (toList!11057 List!31586)) )
))
(declare-fun contains!9168 (ListLongMap!22083 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5947 (array!91819 array!91821 (_ BitVec 32) (_ BitVec 32) V!55123 V!55123 (_ BitVec 32) Int) ListLongMap!22083)

(assert (=> b!1346945 (= res!893866 (contains!9168 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun mapNonEmpty!57979 () Bool)

(declare-fun mapRes!57979 () Bool)

(declare-fun tp!110350 () Bool)

(declare-fun e!766397 () Bool)

(assert (=> mapNonEmpty!57979 (= mapRes!57979 (and tp!110350 e!766397))))

(declare-fun mapValue!57979 () ValueCell!17859)

(declare-fun mapKey!57979 () (_ BitVec 32))

(declare-fun mapRest!57979 () (Array (_ BitVec 32) ValueCell!17859))

(assert (=> mapNonEmpty!57979 (= (arr!44362 _values!1303) (store mapRest!57979 mapKey!57979 mapValue!57979))))

(declare-fun b!1346946 () Bool)

(declare-fun tp_is_empty!37515 () Bool)

(assert (=> b!1346946 (= e!766397 tp_is_empty!37515)))

(declare-fun b!1346947 () Bool)

(declare-fun e!766393 () Bool)

(assert (=> b!1346947 (= e!766393 tp_is_empty!37515)))

(declare-fun b!1346949 () Bool)

(declare-fun res!893872 () Bool)

(assert (=> b!1346949 (=> (not res!893872) (not e!766395))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91819 (_ BitVec 32)) Bool)

(assert (=> b!1346949 (= res!893872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1346950 () Bool)

(declare-fun res!893869 () Bool)

(assert (=> b!1346950 (=> (not res!893869) (not e!766395))))

(assert (=> b!1346950 (= res!893869 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44912 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1346951 () Bool)

(declare-fun +!4812 (ListLongMap!22083 tuple2!24414) ListLongMap!22083)

(declare-fun getCurrentListMapNoExtraKeys!6539 (array!91819 array!91821 (_ BitVec 32) (_ BitVec 32) V!55123 V!55123 (_ BitVec 32) Int) ListLongMap!22083)

(declare-fun get!22445 (ValueCell!17859 V!55123) V!55123)

(declare-fun dynLambda!3849 (Int (_ BitVec 64)) V!55123)

(assert (=> b!1346951 (= e!766395 (not (contains!9168 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k0!1142)))))

(declare-fun b!1346952 () Bool)

(declare-fun res!893865 () Bool)

(assert (=> b!1346952 (=> (not res!893865) (not e!766395))))

(assert (=> b!1346952 (= res!893865 (and (= (size!44913 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44912 _keys!1571) (size!44913 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1346953 () Bool)

(declare-fun e!766394 () Bool)

(assert (=> b!1346953 (= e!766394 (and e!766393 mapRes!57979))))

(declare-fun condMapEmpty!57979 () Bool)

(declare-fun mapDefault!57979 () ValueCell!17859)

(assert (=> b!1346953 (= condMapEmpty!57979 (= (arr!44362 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17859)) mapDefault!57979)))))

(declare-fun mapIsEmpty!57979 () Bool)

(assert (=> mapIsEmpty!57979 mapRes!57979))

(declare-fun b!1346948 () Bool)

(declare-fun res!893870 () Bool)

(assert (=> b!1346948 (=> (not res!893870) (not e!766395))))

(assert (=> b!1346948 (= res!893870 (not (= (select (arr!44361 _keys!1571) from!1960) k0!1142)))))

(declare-fun res!893867 () Bool)

(assert (=> start!113500 (=> (not res!893867) (not e!766395))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113500 (= res!893867 (validMask!0 mask!1977))))

(assert (=> start!113500 e!766395))

(assert (=> start!113500 tp_is_empty!37515))

(assert (=> start!113500 true))

(declare-fun array_inv!33335 (array!91819) Bool)

(assert (=> start!113500 (array_inv!33335 _keys!1571)))

(declare-fun array_inv!33336 (array!91821) Bool)

(assert (=> start!113500 (and (array_inv!33336 _values!1303) e!766394)))

(assert (=> start!113500 tp!110351))

(assert (= (and start!113500 res!893867) b!1346952))

(assert (= (and b!1346952 res!893865) b!1346949))

(assert (= (and b!1346949 res!893872) b!1346943))

(assert (= (and b!1346943 res!893868) b!1346950))

(assert (= (and b!1346950 res!893869) b!1346945))

(assert (= (and b!1346945 res!893866) b!1346948))

(assert (= (and b!1346948 res!893870) b!1346944))

(assert (= (and b!1346944 res!893871) b!1346942))

(assert (= (and b!1346942 res!893873) b!1346951))

(assert (= (and b!1346953 condMapEmpty!57979) mapIsEmpty!57979))

(assert (= (and b!1346953 (not condMapEmpty!57979)) mapNonEmpty!57979))

(get-info :version)

(assert (= (and mapNonEmpty!57979 ((_ is ValueCellFull!17859) mapValue!57979)) b!1346946))

(assert (= (and b!1346953 ((_ is ValueCellFull!17859) mapDefault!57979)) b!1346947))

(assert (= start!113500 b!1346953))

(declare-fun b_lambda!24569 () Bool)

(assert (=> (not b_lambda!24569) (not b!1346951)))

(declare-fun t!46185 () Bool)

(declare-fun tb!12405 () Bool)

(assert (=> (and start!113500 (= defaultEntry!1306 defaultEntry!1306) t!46185) tb!12405))

(declare-fun result!25893 () Bool)

(assert (=> tb!12405 (= result!25893 tp_is_empty!37515)))

(assert (=> b!1346951 t!46185))

(declare-fun b_and!50817 () Bool)

(assert (= b_and!50815 (and (=> t!46185 result!25893) b_and!50817)))

(declare-fun m!1233917 () Bool)

(assert (=> b!1346944 m!1233917))

(assert (=> b!1346944 m!1233917))

(declare-fun m!1233919 () Bool)

(assert (=> b!1346944 m!1233919))

(declare-fun m!1233921 () Bool)

(assert (=> b!1346943 m!1233921))

(declare-fun m!1233923 () Bool)

(assert (=> b!1346951 m!1233923))

(declare-fun m!1233925 () Bool)

(assert (=> b!1346951 m!1233925))

(declare-fun m!1233927 () Bool)

(assert (=> b!1346951 m!1233927))

(declare-fun m!1233929 () Bool)

(assert (=> b!1346951 m!1233929))

(declare-fun m!1233931 () Bool)

(assert (=> b!1346951 m!1233931))

(declare-fun m!1233933 () Bool)

(assert (=> b!1346951 m!1233933))

(assert (=> b!1346951 m!1233927))

(declare-fun m!1233935 () Bool)

(assert (=> b!1346951 m!1233935))

(assert (=> b!1346951 m!1233929))

(assert (=> b!1346951 m!1233931))

(assert (=> b!1346951 m!1233917))

(assert (=> b!1346951 m!1233935))

(assert (=> b!1346951 m!1233923))

(declare-fun m!1233937 () Bool)

(assert (=> b!1346945 m!1233937))

(assert (=> b!1346945 m!1233937))

(declare-fun m!1233939 () Bool)

(assert (=> b!1346945 m!1233939))

(declare-fun m!1233941 () Bool)

(assert (=> b!1346949 m!1233941))

(declare-fun m!1233943 () Bool)

(assert (=> start!113500 m!1233943))

(declare-fun m!1233945 () Bool)

(assert (=> start!113500 m!1233945))

(declare-fun m!1233947 () Bool)

(assert (=> start!113500 m!1233947))

(declare-fun m!1233949 () Bool)

(assert (=> mapNonEmpty!57979 m!1233949))

(assert (=> b!1346948 m!1233917))

(check-sat (not b!1346951) (not mapNonEmpty!57979) (not b!1346944) (not start!113500) b_and!50817 (not b!1346949) (not b_lambda!24569) (not b!1346943) (not b!1346945) (not b_next!31515) tp_is_empty!37515)
(check-sat b_and!50817 (not b_next!31515))
(get-model)

(declare-fun b_lambda!24573 () Bool)

(assert (= b_lambda!24569 (or (and start!113500 b_free!31515) b_lambda!24573)))

(check-sat (not b!1346951) (not mapNonEmpty!57979) (not b!1346944) (not start!113500) b_and!50817 (not b!1346949) (not b_lambda!24573) (not b!1346943) (not b!1346945) (not b_next!31515) tp_is_empty!37515)
(check-sat b_and!50817 (not b_next!31515))
(get-model)

(declare-fun d!144211 () Bool)

(declare-fun e!766415 () Bool)

(assert (=> d!144211 e!766415))

(declare-fun res!893906 () Bool)

(assert (=> d!144211 (=> (not res!893906) (not e!766415))))

(declare-fun lt!595504 () ListLongMap!22083)

(assert (=> d!144211 (= res!893906 (contains!9168 lt!595504 (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!595503 () List!31586)

(assert (=> d!144211 (= lt!595504 (ListLongMap!22084 lt!595503))))

(declare-datatypes ((Unit!44083 0))(
  ( (Unit!44084) )
))
(declare-fun lt!595501 () Unit!44083)

(declare-fun lt!595502 () Unit!44083)

(assert (=> d!144211 (= lt!595501 lt!595502)))

(declare-datatypes ((Option!773 0))(
  ( (Some!772 (v!21480 V!55123)) (None!771) )
))
(declare-fun getValueByKey!722 (List!31586 (_ BitVec 64)) Option!773)

(assert (=> d!144211 (= (getValueByKey!722 lt!595503 (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!772 (_2!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!365 (List!31586 (_ BitVec 64) V!55123) Unit!44083)

(assert (=> d!144211 (= lt!595502 (lemmaContainsTupThenGetReturnValue!365 lt!595503 (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun insertStrictlySorted!494 (List!31586 (_ BitVec 64) V!55123) List!31586)

(assert (=> d!144211 (= lt!595503 (insertStrictlySorted!494 (toList!11057 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!144211 (= (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!595504)))

(declare-fun b!1346998 () Bool)

(declare-fun res!893905 () Bool)

(assert (=> b!1346998 (=> (not res!893905) (not e!766415))))

(assert (=> b!1346998 (= res!893905 (= (getValueByKey!722 (toList!11057 lt!595504) (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!772 (_2!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1346999 () Bool)

(declare-fun contains!9170 (List!31586 tuple2!24414) Bool)

(assert (=> b!1346999 (= e!766415 (contains!9170 (toList!11057 lt!595504) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!144211 res!893906) b!1346998))

(assert (= (and b!1346998 res!893905) b!1346999))

(declare-fun m!1233985 () Bool)

(assert (=> d!144211 m!1233985))

(declare-fun m!1233987 () Bool)

(assert (=> d!144211 m!1233987))

(declare-fun m!1233989 () Bool)

(assert (=> d!144211 m!1233989))

(declare-fun m!1233991 () Bool)

(assert (=> d!144211 m!1233991))

(declare-fun m!1233993 () Bool)

(assert (=> b!1346998 m!1233993))

(declare-fun m!1233995 () Bool)

(assert (=> b!1346999 m!1233995))

(assert (=> b!1346951 d!144211))

(declare-fun d!144213 () Bool)

(declare-fun c!126243 () Bool)

(assert (=> d!144213 (= c!126243 ((_ is ValueCellFull!17859) (select (arr!44362 _values!1303) from!1960)))))

(declare-fun e!766418 () V!55123)

(assert (=> d!144213 (= (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)) e!766418)))

(declare-fun b!1347004 () Bool)

(declare-fun get!22447 (ValueCell!17859 V!55123) V!55123)

(assert (=> b!1347004 (= e!766418 (get!22447 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1347005 () Bool)

(declare-fun get!22448 (ValueCell!17859 V!55123) V!55123)

(assert (=> b!1347005 (= e!766418 (get!22448 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144213 c!126243) b!1347004))

(assert (= (and d!144213 (not c!126243)) b!1347005))

(assert (=> b!1347004 m!1233929))

(assert (=> b!1347004 m!1233931))

(declare-fun m!1233997 () Bool)

(assert (=> b!1347004 m!1233997))

(assert (=> b!1347005 m!1233929))

(assert (=> b!1347005 m!1233931))

(declare-fun m!1233999 () Bool)

(assert (=> b!1347005 m!1233999))

(assert (=> b!1346951 d!144213))

(declare-fun d!144215 () Bool)

(declare-fun e!766419 () Bool)

(assert (=> d!144215 e!766419))

(declare-fun res!893908 () Bool)

(assert (=> d!144215 (=> (not res!893908) (not e!766419))))

(declare-fun lt!595508 () ListLongMap!22083)

(assert (=> d!144215 (= res!893908 (contains!9168 lt!595508 (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))))

(declare-fun lt!595507 () List!31586)

(assert (=> d!144215 (= lt!595508 (ListLongMap!22084 lt!595507))))

(declare-fun lt!595505 () Unit!44083)

(declare-fun lt!595506 () Unit!44083)

(assert (=> d!144215 (= lt!595505 lt!595506)))

(assert (=> d!144215 (= (getValueByKey!722 lt!595507 (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) (Some!772 (_2!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))))

(assert (=> d!144215 (= lt!595506 (lemmaContainsTupThenGetReturnValue!365 lt!595507 (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) (_2!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))))

(assert (=> d!144215 (= lt!595507 (insertStrictlySorted!494 (toList!11057 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) (_2!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))))

(assert (=> d!144215 (= (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) lt!595508)))

(declare-fun b!1347006 () Bool)

(declare-fun res!893907 () Bool)

(assert (=> b!1347006 (=> (not res!893907) (not e!766419))))

(assert (=> b!1347006 (= res!893907 (= (getValueByKey!722 (toList!11057 lt!595508) (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) (Some!772 (_2!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))))))

(declare-fun b!1347007 () Bool)

(assert (=> b!1347007 (= e!766419 (contains!9170 (toList!11057 lt!595508) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))))

(assert (= (and d!144215 res!893908) b!1347006))

(assert (= (and b!1347006 res!893907) b!1347007))

(declare-fun m!1234001 () Bool)

(assert (=> d!144215 m!1234001))

(declare-fun m!1234003 () Bool)

(assert (=> d!144215 m!1234003))

(declare-fun m!1234005 () Bool)

(assert (=> d!144215 m!1234005))

(declare-fun m!1234007 () Bool)

(assert (=> d!144215 m!1234007))

(declare-fun m!1234009 () Bool)

(assert (=> b!1347006 m!1234009))

(declare-fun m!1234011 () Bool)

(assert (=> b!1347007 m!1234011))

(assert (=> b!1346951 d!144215))

(declare-fun d!144217 () Bool)

(declare-fun e!766424 () Bool)

(assert (=> d!144217 e!766424))

(declare-fun res!893911 () Bool)

(assert (=> d!144217 (=> res!893911 e!766424)))

(declare-fun lt!595519 () Bool)

(assert (=> d!144217 (= res!893911 (not lt!595519))))

(declare-fun lt!595518 () Bool)

(assert (=> d!144217 (= lt!595519 lt!595518)))

(declare-fun lt!595517 () Unit!44083)

(declare-fun e!766425 () Unit!44083)

(assert (=> d!144217 (= lt!595517 e!766425)))

(declare-fun c!126246 () Bool)

(assert (=> d!144217 (= c!126246 lt!595518)))

(declare-fun containsKey!740 (List!31586 (_ BitVec 64)) Bool)

(assert (=> d!144217 (= lt!595518 (containsKey!740 (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) k0!1142))))

(assert (=> d!144217 (= (contains!9168 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k0!1142) lt!595519)))

(declare-fun b!1347014 () Bool)

(declare-fun lt!595520 () Unit!44083)

(assert (=> b!1347014 (= e!766425 lt!595520)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!485 (List!31586 (_ BitVec 64)) Unit!44083)

(assert (=> b!1347014 (= lt!595520 (lemmaContainsKeyImpliesGetValueByKeyDefined!485 (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) k0!1142))))

(declare-fun isDefined!525 (Option!773) Bool)

(assert (=> b!1347014 (isDefined!525 (getValueByKey!722 (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) k0!1142))))

(declare-fun b!1347015 () Bool)

(declare-fun Unit!44085 () Unit!44083)

(assert (=> b!1347015 (= e!766425 Unit!44085)))

(declare-fun b!1347016 () Bool)

(assert (=> b!1347016 (= e!766424 (isDefined!525 (getValueByKey!722 (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) k0!1142)))))

(assert (= (and d!144217 c!126246) b!1347014))

(assert (= (and d!144217 (not c!126246)) b!1347015))

(assert (= (and d!144217 (not res!893911)) b!1347016))

(declare-fun m!1234013 () Bool)

(assert (=> d!144217 m!1234013))

(declare-fun m!1234015 () Bool)

(assert (=> b!1347014 m!1234015))

(declare-fun m!1234017 () Bool)

(assert (=> b!1347014 m!1234017))

(assert (=> b!1347014 m!1234017))

(declare-fun m!1234019 () Bool)

(assert (=> b!1347014 m!1234019))

(assert (=> b!1347016 m!1234017))

(assert (=> b!1347016 m!1234017))

(assert (=> b!1347016 m!1234019))

(assert (=> b!1346951 d!144217))

(declare-fun b!1347041 () Bool)

(assert (=> b!1347041 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44912 _keys!1571)))))

(assert (=> b!1347041 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44913 _values!1303)))))

(declare-fun lt!595535 () ListLongMap!22083)

(declare-fun e!766440 () Bool)

(declare-fun apply!1072 (ListLongMap!22083 (_ BitVec 64)) V!55123)

(assert (=> b!1347041 (= e!766440 (= (apply!1072 lt!595535 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))) (get!22445 (select (arr!44362 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1347042 () Bool)

(declare-fun e!766445 () Bool)

(declare-fun e!766446 () Bool)

(assert (=> b!1347042 (= e!766445 e!766446)))

(declare-fun c!126257 () Bool)

(assert (=> b!1347042 (= c!126257 (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44912 _keys!1571)))))

(declare-fun call!65036 () ListLongMap!22083)

(declare-fun bm!65033 () Bool)

(assert (=> bm!65033 (= call!65036 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) defaultEntry!1306))))

(declare-fun b!1347043 () Bool)

(assert (=> b!1347043 (= e!766445 e!766440)))

(assert (=> b!1347043 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44912 _keys!1571)))))

(declare-fun res!893921 () Bool)

(assert (=> b!1347043 (= res!893921 (contains!9168 lt!595535 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(assert (=> b!1347043 (=> (not res!893921) (not e!766440))))

(declare-fun b!1347044 () Bool)

(assert (=> b!1347044 (= e!766446 (= lt!595535 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) defaultEntry!1306)))))

(declare-fun b!1347045 () Bool)

(declare-fun e!766442 () Bool)

(assert (=> b!1347045 (= e!766442 e!766445)))

(declare-fun c!126256 () Bool)

(declare-fun e!766443 () Bool)

(assert (=> b!1347045 (= c!126256 e!766443)))

(declare-fun res!893920 () Bool)

(assert (=> b!1347045 (=> (not res!893920) (not e!766443))))

(assert (=> b!1347045 (= res!893920 (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44912 _keys!1571)))))

(declare-fun d!144219 () Bool)

(assert (=> d!144219 e!766442))

(declare-fun res!893922 () Bool)

(assert (=> d!144219 (=> (not res!893922) (not e!766442))))

(assert (=> d!144219 (= res!893922 (not (contains!9168 lt!595535 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!766441 () ListLongMap!22083)

(assert (=> d!144219 (= lt!595535 e!766441)))

(declare-fun c!126258 () Bool)

(assert (=> d!144219 (= c!126258 (bvsge (bvadd #b00000000000000000000000000000001 from!1960) (size!44912 _keys!1571)))))

(assert (=> d!144219 (validMask!0 mask!1977)))

(assert (=> d!144219 (= (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) lt!595535)))

(declare-fun b!1347046 () Bool)

(assert (=> b!1347046 (= e!766443 (validKeyInArray!0 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(assert (=> b!1347046 (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000)))

(declare-fun b!1347047 () Bool)

(declare-fun e!766444 () ListLongMap!22083)

(assert (=> b!1347047 (= e!766444 call!65036)))

(declare-fun b!1347048 () Bool)

(declare-fun lt!595541 () Unit!44083)

(declare-fun lt!595537 () Unit!44083)

(assert (=> b!1347048 (= lt!595541 lt!595537)))

(declare-fun lt!595538 () ListLongMap!22083)

(declare-fun lt!595536 () (_ BitVec 64))

(declare-fun lt!595539 () (_ BitVec 64))

(declare-fun lt!595540 () V!55123)

(assert (=> b!1347048 (not (contains!9168 (+!4812 lt!595538 (tuple2!24415 lt!595539 lt!595540)) lt!595536))))

(declare-fun addStillNotContains!510 (ListLongMap!22083 (_ BitVec 64) V!55123 (_ BitVec 64)) Unit!44083)

(assert (=> b!1347048 (= lt!595537 (addStillNotContains!510 lt!595538 lt!595539 lt!595540 lt!595536))))

(assert (=> b!1347048 (= lt!595536 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1347048 (= lt!595540 (get!22445 (select (arr!44362 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1347048 (= lt!595539 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))

(assert (=> b!1347048 (= lt!595538 call!65036)))

(assert (=> b!1347048 (= e!766444 (+!4812 call!65036 (tuple2!24415 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22445 (select (arr!44362 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1347049 () Bool)

(assert (=> b!1347049 (= e!766441 e!766444)))

(declare-fun c!126255 () Bool)

(assert (=> b!1347049 (= c!126255 (validKeyInArray!0 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(declare-fun b!1347050 () Bool)

(assert (=> b!1347050 (= e!766441 (ListLongMap!22084 Nil!31583))))

(declare-fun b!1347051 () Bool)

(declare-fun isEmpty!1094 (ListLongMap!22083) Bool)

(assert (=> b!1347051 (= e!766446 (isEmpty!1094 lt!595535))))

(declare-fun b!1347052 () Bool)

(declare-fun res!893923 () Bool)

(assert (=> b!1347052 (=> (not res!893923) (not e!766442))))

(assert (=> b!1347052 (= res!893923 (not (contains!9168 lt!595535 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144219 c!126258) b!1347050))

(assert (= (and d!144219 (not c!126258)) b!1347049))

(assert (= (and b!1347049 c!126255) b!1347048))

(assert (= (and b!1347049 (not c!126255)) b!1347047))

(assert (= (or b!1347048 b!1347047) bm!65033))

(assert (= (and d!144219 res!893922) b!1347052))

(assert (= (and b!1347052 res!893923) b!1347045))

(assert (= (and b!1347045 res!893920) b!1347046))

(assert (= (and b!1347045 c!126256) b!1347043))

(assert (= (and b!1347045 (not c!126256)) b!1347042))

(assert (= (and b!1347043 res!893921) b!1347041))

(assert (= (and b!1347042 c!126257) b!1347044))

(assert (= (and b!1347042 (not c!126257)) b!1347051))

(declare-fun b_lambda!24575 () Bool)

(assert (=> (not b_lambda!24575) (not b!1347041)))

(assert (=> b!1347041 t!46185))

(declare-fun b_and!50823 () Bool)

(assert (= b_and!50817 (and (=> t!46185 result!25893) b_and!50823)))

(declare-fun b_lambda!24577 () Bool)

(assert (=> (not b_lambda!24577) (not b!1347048)))

(assert (=> b!1347048 t!46185))

(declare-fun b_and!50825 () Bool)

(assert (= b_and!50823 (and (=> t!46185 result!25893) b_and!50825)))

(declare-fun m!1234021 () Bool)

(assert (=> b!1347043 m!1234021))

(assert (=> b!1347043 m!1234021))

(declare-fun m!1234023 () Bool)

(assert (=> b!1347043 m!1234023))

(declare-fun m!1234025 () Bool)

(assert (=> bm!65033 m!1234025))

(declare-fun m!1234027 () Bool)

(assert (=> b!1347051 m!1234027))

(assert (=> b!1347044 m!1234025))

(assert (=> b!1347049 m!1234021))

(assert (=> b!1347049 m!1234021))

(declare-fun m!1234029 () Bool)

(assert (=> b!1347049 m!1234029))

(assert (=> b!1347041 m!1234021))

(declare-fun m!1234031 () Bool)

(assert (=> b!1347041 m!1234031))

(assert (=> b!1347041 m!1234021))

(declare-fun m!1234033 () Bool)

(assert (=> b!1347041 m!1234033))

(assert (=> b!1347041 m!1234033))

(assert (=> b!1347041 m!1233931))

(declare-fun m!1234035 () Bool)

(assert (=> b!1347041 m!1234035))

(assert (=> b!1347041 m!1233931))

(assert (=> b!1347046 m!1234021))

(assert (=> b!1347046 m!1234021))

(assert (=> b!1347046 m!1234029))

(declare-fun m!1234037 () Bool)

(assert (=> d!144219 m!1234037))

(assert (=> d!144219 m!1233943))

(assert (=> b!1347048 m!1234021))

(declare-fun m!1234039 () Bool)

(assert (=> b!1347048 m!1234039))

(declare-fun m!1234041 () Bool)

(assert (=> b!1347048 m!1234041))

(assert (=> b!1347048 m!1234033))

(assert (=> b!1347048 m!1233931))

(assert (=> b!1347048 m!1234035))

(assert (=> b!1347048 m!1233931))

(declare-fun m!1234043 () Bool)

(assert (=> b!1347048 m!1234043))

(assert (=> b!1347048 m!1234033))

(assert (=> b!1347048 m!1234043))

(declare-fun m!1234045 () Bool)

(assert (=> b!1347048 m!1234045))

(declare-fun m!1234047 () Bool)

(assert (=> b!1347052 m!1234047))

(assert (=> b!1346951 d!144219))

(declare-fun d!144221 () Bool)

(assert (=> d!144221 (= (validMask!0 mask!1977) (and (or (= mask!1977 #b00000000000000000000000000000111) (= mask!1977 #b00000000000000000000000000001111) (= mask!1977 #b00000000000000000000000000011111) (= mask!1977 #b00000000000000000000000000111111) (= mask!1977 #b00000000000000000000000001111111) (= mask!1977 #b00000000000000000000000011111111) (= mask!1977 #b00000000000000000000000111111111) (= mask!1977 #b00000000000000000000001111111111) (= mask!1977 #b00000000000000000000011111111111) (= mask!1977 #b00000000000000000000111111111111) (= mask!1977 #b00000000000000000001111111111111) (= mask!1977 #b00000000000000000011111111111111) (= mask!1977 #b00000000000000000111111111111111) (= mask!1977 #b00000000000000001111111111111111) (= mask!1977 #b00000000000000011111111111111111) (= mask!1977 #b00000000000000111111111111111111) (= mask!1977 #b00000000000001111111111111111111) (= mask!1977 #b00000000000011111111111111111111) (= mask!1977 #b00000000000111111111111111111111) (= mask!1977 #b00000000001111111111111111111111) (= mask!1977 #b00000000011111111111111111111111) (= mask!1977 #b00000000111111111111111111111111) (= mask!1977 #b00000001111111111111111111111111) (= mask!1977 #b00000011111111111111111111111111) (= mask!1977 #b00000111111111111111111111111111) (= mask!1977 #b00001111111111111111111111111111) (= mask!1977 #b00011111111111111111111111111111) (= mask!1977 #b00111111111111111111111111111111)) (bvsle mask!1977 #b00111111111111111111111111111111)))))

(assert (=> start!113500 d!144221))

(declare-fun d!144223 () Bool)

(assert (=> d!144223 (= (array_inv!33335 _keys!1571) (bvsge (size!44912 _keys!1571) #b00000000000000000000000000000000))))

(assert (=> start!113500 d!144223))

(declare-fun d!144225 () Bool)

(assert (=> d!144225 (= (array_inv!33336 _values!1303) (bvsge (size!44913 _values!1303) #b00000000000000000000000000000000))))

(assert (=> start!113500 d!144225))

(declare-fun d!144227 () Bool)

(assert (=> d!144227 (= (validKeyInArray!0 (select (arr!44361 _keys!1571) from!1960)) (and (not (= (select (arr!44361 _keys!1571) from!1960) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44361 _keys!1571) from!1960) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1346944 d!144227))

(declare-fun b!1347063 () Bool)

(declare-fun e!766457 () Bool)

(declare-fun call!65039 () Bool)

(assert (=> b!1347063 (= e!766457 call!65039)))

(declare-fun b!1347064 () Bool)

(assert (=> b!1347064 (= e!766457 call!65039)))

(declare-fun bm!65036 () Bool)

(declare-fun c!126261 () Bool)

(assert (=> bm!65036 (= call!65039 (arrayNoDuplicates!0 _keys!1571 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!126261 (Cons!31581 (select (arr!44361 _keys!1571) #b00000000000000000000000000000000) Nil!31582) Nil!31582)))))

(declare-fun d!144229 () Bool)

(declare-fun res!893931 () Bool)

(declare-fun e!766458 () Bool)

(assert (=> d!144229 (=> res!893931 e!766458)))

(assert (=> d!144229 (= res!893931 (bvsge #b00000000000000000000000000000000 (size!44912 _keys!1571)))))

(assert (=> d!144229 (= (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31582) e!766458)))

(declare-fun b!1347065 () Bool)

(declare-fun e!766455 () Bool)

(assert (=> b!1347065 (= e!766455 e!766457)))

(assert (=> b!1347065 (= c!126261 (validKeyInArray!0 (select (arr!44361 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun b!1347066 () Bool)

(assert (=> b!1347066 (= e!766458 e!766455)))

(declare-fun res!893930 () Bool)

(assert (=> b!1347066 (=> (not res!893930) (not e!766455))))

(declare-fun e!766456 () Bool)

(assert (=> b!1347066 (= res!893930 (not e!766456))))

(declare-fun res!893932 () Bool)

(assert (=> b!1347066 (=> (not res!893932) (not e!766456))))

(assert (=> b!1347066 (= res!893932 (validKeyInArray!0 (select (arr!44361 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun b!1347067 () Bool)

(declare-fun contains!9171 (List!31585 (_ BitVec 64)) Bool)

(assert (=> b!1347067 (= e!766456 (contains!9171 Nil!31582 (select (arr!44361 _keys!1571) #b00000000000000000000000000000000)))))

(assert (= (and d!144229 (not res!893931)) b!1347066))

(assert (= (and b!1347066 res!893932) b!1347067))

(assert (= (and b!1347066 res!893930) b!1347065))

(assert (= (and b!1347065 c!126261) b!1347063))

(assert (= (and b!1347065 (not c!126261)) b!1347064))

(assert (= (or b!1347063 b!1347064) bm!65036))

(declare-fun m!1234049 () Bool)

(assert (=> bm!65036 m!1234049))

(declare-fun m!1234051 () Bool)

(assert (=> bm!65036 m!1234051))

(assert (=> b!1347065 m!1234049))

(assert (=> b!1347065 m!1234049))

(declare-fun m!1234053 () Bool)

(assert (=> b!1347065 m!1234053))

(assert (=> b!1347066 m!1234049))

(assert (=> b!1347066 m!1234049))

(assert (=> b!1347066 m!1234053))

(assert (=> b!1347067 m!1234049))

(assert (=> b!1347067 m!1234049))

(declare-fun m!1234055 () Bool)

(assert (=> b!1347067 m!1234055))

(assert (=> b!1346943 d!144229))

(declare-fun d!144231 () Bool)

(declare-fun e!766459 () Bool)

(assert (=> d!144231 e!766459))

(declare-fun res!893933 () Bool)

(assert (=> d!144231 (=> res!893933 e!766459)))

(declare-fun lt!595544 () Bool)

(assert (=> d!144231 (= res!893933 (not lt!595544))))

(declare-fun lt!595543 () Bool)

(assert (=> d!144231 (= lt!595544 lt!595543)))

(declare-fun lt!595542 () Unit!44083)

(declare-fun e!766460 () Unit!44083)

(assert (=> d!144231 (= lt!595542 e!766460)))

(declare-fun c!126262 () Bool)

(assert (=> d!144231 (= c!126262 lt!595543)))

(assert (=> d!144231 (= lt!595543 (containsKey!740 (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(assert (=> d!144231 (= (contains!9168 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142) lt!595544)))

(declare-fun b!1347068 () Bool)

(declare-fun lt!595545 () Unit!44083)

(assert (=> b!1347068 (= e!766460 lt!595545)))

(assert (=> b!1347068 (= lt!595545 (lemmaContainsKeyImpliesGetValueByKeyDefined!485 (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(assert (=> b!1347068 (isDefined!525 (getValueByKey!722 (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(declare-fun b!1347069 () Bool)

(declare-fun Unit!44086 () Unit!44083)

(assert (=> b!1347069 (= e!766460 Unit!44086)))

(declare-fun b!1347070 () Bool)

(assert (=> b!1347070 (= e!766459 (isDefined!525 (getValueByKey!722 (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142)))))

(assert (= (and d!144231 c!126262) b!1347068))

(assert (= (and d!144231 (not c!126262)) b!1347069))

(assert (= (and d!144231 (not res!893933)) b!1347070))

(declare-fun m!1234057 () Bool)

(assert (=> d!144231 m!1234057))

(declare-fun m!1234059 () Bool)

(assert (=> b!1347068 m!1234059))

(declare-fun m!1234061 () Bool)

(assert (=> b!1347068 m!1234061))

(assert (=> b!1347068 m!1234061))

(declare-fun m!1234063 () Bool)

(assert (=> b!1347068 m!1234063))

(assert (=> b!1347070 m!1234061))

(assert (=> b!1347070 m!1234061))

(assert (=> b!1347070 m!1234063))

(assert (=> b!1346945 d!144231))

(declare-fun bm!65051 () Bool)

(declare-fun call!65058 () Bool)

(declare-fun lt!595609 () ListLongMap!22083)

(assert (=> bm!65051 (= call!65058 (contains!9168 lt!595609 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1347113 () Bool)

(declare-fun e!766492 () ListLongMap!22083)

(declare-fun e!766490 () ListLongMap!22083)

(assert (=> b!1347113 (= e!766492 e!766490)))

(declare-fun c!126277 () Bool)

(assert (=> b!1347113 (= c!126277 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1347114 () Bool)

(declare-fun e!766495 () Bool)

(assert (=> b!1347114 (= e!766495 (= (apply!1072 lt!595609 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1245))))

(declare-fun b!1347115 () Bool)

(declare-fun e!766498 () Bool)

(assert (=> b!1347115 (= e!766498 (not call!65058))))

(declare-fun b!1347116 () Bool)

(declare-fun e!766494 () ListLongMap!22083)

(declare-fun call!65054 () ListLongMap!22083)

(assert (=> b!1347116 (= e!766494 call!65054)))

(declare-fun e!766497 () Bool)

(declare-fun b!1347117 () Bool)

(assert (=> b!1347117 (= e!766497 (= (apply!1072 lt!595609 (select (arr!44361 _keys!1571) from!1960)) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1347117 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44913 _values!1303)))))

(assert (=> b!1347117 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44912 _keys!1571)))))

(declare-fun b!1347118 () Bool)

(declare-fun e!766496 () Unit!44083)

(declare-fun lt!595603 () Unit!44083)

(assert (=> b!1347118 (= e!766496 lt!595603)))

(declare-fun lt!595610 () ListLongMap!22083)

(assert (=> b!1347118 (= lt!595610 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun lt!595595 () (_ BitVec 64))

(assert (=> b!1347118 (= lt!595595 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!595607 () (_ BitVec 64))

(assert (=> b!1347118 (= lt!595607 (select (arr!44361 _keys!1571) from!1960))))

(declare-fun lt!595600 () Unit!44083)

(declare-fun addStillContains!1216 (ListLongMap!22083 (_ BitVec 64) V!55123 (_ BitVec 64)) Unit!44083)

(assert (=> b!1347118 (= lt!595600 (addStillContains!1216 lt!595610 lt!595595 zeroValue!1245 lt!595607))))

(assert (=> b!1347118 (contains!9168 (+!4812 lt!595610 (tuple2!24415 lt!595595 zeroValue!1245)) lt!595607)))

(declare-fun lt!595591 () Unit!44083)

(assert (=> b!1347118 (= lt!595591 lt!595600)))

(declare-fun lt!595605 () ListLongMap!22083)

(assert (=> b!1347118 (= lt!595605 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun lt!595593 () (_ BitVec 64))

(assert (=> b!1347118 (= lt!595593 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!595594 () (_ BitVec 64))

(assert (=> b!1347118 (= lt!595594 (select (arr!44361 _keys!1571) from!1960))))

(declare-fun lt!595592 () Unit!44083)

(declare-fun addApplyDifferent!575 (ListLongMap!22083 (_ BitVec 64) V!55123 (_ BitVec 64)) Unit!44083)

(assert (=> b!1347118 (= lt!595592 (addApplyDifferent!575 lt!595605 lt!595593 minValue!1245 lt!595594))))

(assert (=> b!1347118 (= (apply!1072 (+!4812 lt!595605 (tuple2!24415 lt!595593 minValue!1245)) lt!595594) (apply!1072 lt!595605 lt!595594))))

(declare-fun lt!595601 () Unit!44083)

(assert (=> b!1347118 (= lt!595601 lt!595592)))

(declare-fun lt!595602 () ListLongMap!22083)

(assert (=> b!1347118 (= lt!595602 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun lt!595597 () (_ BitVec 64))

(assert (=> b!1347118 (= lt!595597 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!595590 () (_ BitVec 64))

(assert (=> b!1347118 (= lt!595590 (select (arr!44361 _keys!1571) from!1960))))

(declare-fun lt!595611 () Unit!44083)

(assert (=> b!1347118 (= lt!595611 (addApplyDifferent!575 lt!595602 lt!595597 zeroValue!1245 lt!595590))))

(assert (=> b!1347118 (= (apply!1072 (+!4812 lt!595602 (tuple2!24415 lt!595597 zeroValue!1245)) lt!595590) (apply!1072 lt!595602 lt!595590))))

(declare-fun lt!595598 () Unit!44083)

(assert (=> b!1347118 (= lt!595598 lt!595611)))

(declare-fun lt!595606 () ListLongMap!22083)

(assert (=> b!1347118 (= lt!595606 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun lt!595604 () (_ BitVec 64))

(assert (=> b!1347118 (= lt!595604 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!595599 () (_ BitVec 64))

(assert (=> b!1347118 (= lt!595599 (select (arr!44361 _keys!1571) from!1960))))

(assert (=> b!1347118 (= lt!595603 (addApplyDifferent!575 lt!595606 lt!595604 minValue!1245 lt!595599))))

(assert (=> b!1347118 (= (apply!1072 (+!4812 lt!595606 (tuple2!24415 lt!595604 minValue!1245)) lt!595599) (apply!1072 lt!595606 lt!595599))))

(declare-fun b!1347119 () Bool)

(declare-fun e!766488 () Bool)

(assert (=> b!1347119 (= e!766498 e!766488)))

(declare-fun res!893960 () Bool)

(assert (=> b!1347119 (= res!893960 call!65058)))

(assert (=> b!1347119 (=> (not res!893960) (not e!766488))))

(declare-fun b!1347120 () Bool)

(declare-fun Unit!44087 () Unit!44083)

(assert (=> b!1347120 (= e!766496 Unit!44087)))

(declare-fun b!1347121 () Bool)

(declare-fun res!893957 () Bool)

(declare-fun e!766487 () Bool)

(assert (=> b!1347121 (=> (not res!893957) (not e!766487))))

(declare-fun e!766499 () Bool)

(assert (=> b!1347121 (= res!893957 e!766499)))

(declare-fun res!893954 () Bool)

(assert (=> b!1347121 (=> res!893954 e!766499)))

(declare-fun e!766491 () Bool)

(assert (=> b!1347121 (= res!893954 (not e!766491))))

(declare-fun res!893953 () Bool)

(assert (=> b!1347121 (=> (not res!893953) (not e!766491))))

(assert (=> b!1347121 (= res!893953 (bvslt from!1960 (size!44912 _keys!1571)))))

(declare-fun call!65057 () ListLongMap!22083)

(declare-fun call!65060 () ListLongMap!22083)

(declare-fun call!65059 () ListLongMap!22083)

(declare-fun bm!65052 () Bool)

(declare-fun call!65056 () ListLongMap!22083)

(declare-fun c!126276 () Bool)

(assert (=> bm!65052 (= call!65060 (+!4812 (ite c!126276 call!65057 (ite c!126277 call!65059 call!65056)) (ite (or c!126276 c!126277) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(declare-fun bm!65053 () Bool)

(assert (=> bm!65053 (= call!65059 call!65057)))

(declare-fun b!1347122 () Bool)

(assert (=> b!1347122 (= e!766487 e!766498)))

(declare-fun c!126275 () Bool)

(assert (=> b!1347122 (= c!126275 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1347123 () Bool)

(assert (=> b!1347123 (= e!766491 (validKeyInArray!0 (select (arr!44361 _keys!1571) from!1960)))))

(declare-fun b!1347124 () Bool)

(declare-fun e!766493 () Bool)

(assert (=> b!1347124 (= e!766493 (validKeyInArray!0 (select (arr!44361 _keys!1571) from!1960)))))

(declare-fun bm!65054 () Bool)

(assert (=> bm!65054 (= call!65057 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun bm!65055 () Bool)

(assert (=> bm!65055 (= call!65054 call!65060)))

(declare-fun b!1347125 () Bool)

(declare-fun res!893958 () Bool)

(assert (=> b!1347125 (=> (not res!893958) (not e!766487))))

(declare-fun e!766489 () Bool)

(assert (=> b!1347125 (= res!893958 e!766489)))

(declare-fun c!126278 () Bool)

(assert (=> b!1347125 (= c!126278 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1347126 () Bool)

(assert (=> b!1347126 (= e!766488 (= (apply!1072 lt!595609 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1245))))

(declare-fun b!1347127 () Bool)

(assert (=> b!1347127 (= e!766494 call!65056)))

(declare-fun bm!65056 () Bool)

(declare-fun call!65055 () Bool)

(assert (=> bm!65056 (= call!65055 (contains!9168 lt!595609 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1347128 () Bool)

(assert (=> b!1347128 (= e!766499 e!766497)))

(declare-fun res!893955 () Bool)

(assert (=> b!1347128 (=> (not res!893955) (not e!766497))))

(assert (=> b!1347128 (= res!893955 (contains!9168 lt!595609 (select (arr!44361 _keys!1571) from!1960)))))

(assert (=> b!1347128 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44912 _keys!1571)))))

(declare-fun b!1347129 () Bool)

(assert (=> b!1347129 (= e!766490 call!65054)))

(declare-fun b!1347130 () Bool)

(assert (=> b!1347130 (= e!766489 e!766495)))

(declare-fun res!893956 () Bool)

(assert (=> b!1347130 (= res!893956 call!65055)))

(assert (=> b!1347130 (=> (not res!893956) (not e!766495))))

(declare-fun b!1347131 () Bool)

(assert (=> b!1347131 (= e!766489 (not call!65055))))

(declare-fun b!1347132 () Bool)

(declare-fun c!126280 () Bool)

(assert (=> b!1347132 (= c!126280 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1347132 (= e!766490 e!766494)))

(declare-fun d!144233 () Bool)

(assert (=> d!144233 e!766487))

(declare-fun res!893952 () Bool)

(assert (=> d!144233 (=> (not res!893952) (not e!766487))))

(assert (=> d!144233 (= res!893952 (or (bvsge from!1960 (size!44912 _keys!1571)) (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44912 _keys!1571)))))))

(declare-fun lt!595608 () ListLongMap!22083)

(assert (=> d!144233 (= lt!595609 lt!595608)))

(declare-fun lt!595596 () Unit!44083)

(assert (=> d!144233 (= lt!595596 e!766496)))

(declare-fun c!126279 () Bool)

(assert (=> d!144233 (= c!126279 e!766493)))

(declare-fun res!893959 () Bool)

(assert (=> d!144233 (=> (not res!893959) (not e!766493))))

(assert (=> d!144233 (= res!893959 (bvslt from!1960 (size!44912 _keys!1571)))))

(assert (=> d!144233 (= lt!595608 e!766492)))

(assert (=> d!144233 (= c!126276 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!144233 (validMask!0 mask!1977)))

(assert (=> d!144233 (= (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) lt!595609)))

(declare-fun bm!65057 () Bool)

(assert (=> bm!65057 (= call!65056 call!65059)))

(declare-fun b!1347133 () Bool)

(assert (=> b!1347133 (= e!766492 (+!4812 call!65060 (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))

(assert (= (and d!144233 c!126276) b!1347133))

(assert (= (and d!144233 (not c!126276)) b!1347113))

(assert (= (and b!1347113 c!126277) b!1347129))

(assert (= (and b!1347113 (not c!126277)) b!1347132))

(assert (= (and b!1347132 c!126280) b!1347116))

(assert (= (and b!1347132 (not c!126280)) b!1347127))

(assert (= (or b!1347116 b!1347127) bm!65057))

(assert (= (or b!1347129 bm!65057) bm!65053))

(assert (= (or b!1347129 b!1347116) bm!65055))

(assert (= (or b!1347133 bm!65053) bm!65054))

(assert (= (or b!1347133 bm!65055) bm!65052))

(assert (= (and d!144233 res!893959) b!1347124))

(assert (= (and d!144233 c!126279) b!1347118))

(assert (= (and d!144233 (not c!126279)) b!1347120))

(assert (= (and d!144233 res!893952) b!1347121))

(assert (= (and b!1347121 res!893953) b!1347123))

(assert (= (and b!1347121 (not res!893954)) b!1347128))

(assert (= (and b!1347128 res!893955) b!1347117))

(assert (= (and b!1347121 res!893957) b!1347125))

(assert (= (and b!1347125 c!126278) b!1347130))

(assert (= (and b!1347125 (not c!126278)) b!1347131))

(assert (= (and b!1347130 res!893956) b!1347114))

(assert (= (or b!1347130 b!1347131) bm!65056))

(assert (= (and b!1347125 res!893958) b!1347122))

(assert (= (and b!1347122 c!126275) b!1347119))

(assert (= (and b!1347122 (not c!126275)) b!1347115))

(assert (= (and b!1347119 res!893960) b!1347126))

(assert (= (or b!1347119 b!1347115) bm!65051))

(declare-fun b_lambda!24579 () Bool)

(assert (=> (not b_lambda!24579) (not b!1347117)))

(assert (=> b!1347117 t!46185))

(declare-fun b_and!50827 () Bool)

(assert (= b_and!50825 (and (=> t!46185 result!25893) b_and!50827)))

(assert (=> b!1347128 m!1233917))

(assert (=> b!1347128 m!1233917))

(declare-fun m!1234065 () Bool)

(assert (=> b!1347128 m!1234065))

(declare-fun m!1234067 () Bool)

(assert (=> b!1347126 m!1234067))

(declare-fun m!1234069 () Bool)

(assert (=> b!1347114 m!1234069))

(declare-fun m!1234071 () Bool)

(assert (=> bm!65051 m!1234071))

(assert (=> d!144233 m!1233943))

(declare-fun m!1234073 () Bool)

(assert (=> bm!65052 m!1234073))

(declare-fun m!1234075 () Bool)

(assert (=> bm!65056 m!1234075))

(assert (=> b!1347123 m!1233917))

(assert (=> b!1347123 m!1233917))

(assert (=> b!1347123 m!1233919))

(declare-fun m!1234077 () Bool)

(assert (=> b!1347118 m!1234077))

(declare-fun m!1234079 () Bool)

(assert (=> b!1347118 m!1234079))

(declare-fun m!1234081 () Bool)

(assert (=> b!1347118 m!1234081))

(assert (=> b!1347118 m!1233917))

(declare-fun m!1234083 () Bool)

(assert (=> b!1347118 m!1234083))

(declare-fun m!1234085 () Bool)

(assert (=> b!1347118 m!1234085))

(declare-fun m!1234087 () Bool)

(assert (=> b!1347118 m!1234087))

(declare-fun m!1234089 () Bool)

(assert (=> b!1347118 m!1234089))

(declare-fun m!1234091 () Bool)

(assert (=> b!1347118 m!1234091))

(declare-fun m!1234093 () Bool)

(assert (=> b!1347118 m!1234093))

(declare-fun m!1234095 () Bool)

(assert (=> b!1347118 m!1234095))

(assert (=> b!1347118 m!1234087))

(assert (=> b!1347118 m!1234077))

(declare-fun m!1234097 () Bool)

(assert (=> b!1347118 m!1234097))

(assert (=> b!1347118 m!1234097))

(declare-fun m!1234099 () Bool)

(assert (=> b!1347118 m!1234099))

(declare-fun m!1234101 () Bool)

(assert (=> b!1347118 m!1234101))

(declare-fun m!1234103 () Bool)

(assert (=> b!1347118 m!1234103))

(declare-fun m!1234105 () Bool)

(assert (=> b!1347118 m!1234105))

(assert (=> b!1347118 m!1234095))

(declare-fun m!1234107 () Bool)

(assert (=> b!1347118 m!1234107))

(assert (=> bm!65054 m!1234105))

(assert (=> b!1347117 m!1233917))

(assert (=> b!1347117 m!1233929))

(assert (=> b!1347117 m!1233929))

(assert (=> b!1347117 m!1233931))

(assert (=> b!1347117 m!1233933))

(assert (=> b!1347117 m!1233917))

(declare-fun m!1234109 () Bool)

(assert (=> b!1347117 m!1234109))

(assert (=> b!1347117 m!1233931))

(declare-fun m!1234111 () Bool)

(assert (=> b!1347133 m!1234111))

(assert (=> b!1347124 m!1233917))

(assert (=> b!1347124 m!1233917))

(assert (=> b!1347124 m!1233919))

(assert (=> b!1346945 d!144233))

(declare-fun d!144235 () Bool)

(declare-fun res!893965 () Bool)

(declare-fun e!766508 () Bool)

(assert (=> d!144235 (=> res!893965 e!766508)))

(assert (=> d!144235 (= res!893965 (bvsge #b00000000000000000000000000000000 (size!44912 _keys!1571)))))

(assert (=> d!144235 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977) e!766508)))

(declare-fun b!1347142 () Bool)

(declare-fun e!766507 () Bool)

(declare-fun call!65063 () Bool)

(assert (=> b!1347142 (= e!766507 call!65063)))

(declare-fun b!1347143 () Bool)

(assert (=> b!1347143 (= e!766508 e!766507)))

(declare-fun c!126283 () Bool)

(assert (=> b!1347143 (= c!126283 (validKeyInArray!0 (select (arr!44361 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun b!1347144 () Bool)

(declare-fun e!766506 () Bool)

(assert (=> b!1347144 (= e!766506 call!65063)))

(declare-fun b!1347145 () Bool)

(assert (=> b!1347145 (= e!766507 e!766506)))

(declare-fun lt!595620 () (_ BitVec 64))

(assert (=> b!1347145 (= lt!595620 (select (arr!44361 _keys!1571) #b00000000000000000000000000000000))))

(declare-fun lt!595618 () Unit!44083)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!91819 (_ BitVec 64) (_ BitVec 32)) Unit!44083)

(assert (=> b!1347145 (= lt!595618 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1571 lt!595620 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!91819 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1347145 (arrayContainsKey!0 _keys!1571 lt!595620 #b00000000000000000000000000000000)))

(declare-fun lt!595619 () Unit!44083)

(assert (=> b!1347145 (= lt!595619 lt!595618)))

(declare-fun res!893966 () Bool)

(declare-datatypes ((SeekEntryResult!10053 0))(
  ( (MissingZero!10053 (index!42582 (_ BitVec 32))) (Found!10053 (index!42583 (_ BitVec 32))) (Intermediate!10053 (undefined!10865 Bool) (index!42584 (_ BitVec 32)) (x!120552 (_ BitVec 32))) (Undefined!10053) (MissingVacant!10053 (index!42585 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!91819 (_ BitVec 32)) SeekEntryResult!10053)

(assert (=> b!1347145 (= res!893966 (= (seekEntryOrOpen!0 (select (arr!44361 _keys!1571) #b00000000000000000000000000000000) _keys!1571 mask!1977) (Found!10053 #b00000000000000000000000000000000)))))

(assert (=> b!1347145 (=> (not res!893966) (not e!766506))))

(declare-fun bm!65060 () Bool)

(assert (=> bm!65060 (= call!65063 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1571 mask!1977))))

(assert (= (and d!144235 (not res!893965)) b!1347143))

(assert (= (and b!1347143 c!126283) b!1347145))

(assert (= (and b!1347143 (not c!126283)) b!1347142))

(assert (= (and b!1347145 res!893966) b!1347144))

(assert (= (or b!1347144 b!1347142) bm!65060))

(assert (=> b!1347143 m!1234049))

(assert (=> b!1347143 m!1234049))

(assert (=> b!1347143 m!1234053))

(assert (=> b!1347145 m!1234049))

(declare-fun m!1234113 () Bool)

(assert (=> b!1347145 m!1234113))

(declare-fun m!1234115 () Bool)

(assert (=> b!1347145 m!1234115))

(assert (=> b!1347145 m!1234049))

(declare-fun m!1234117 () Bool)

(assert (=> b!1347145 m!1234117))

(declare-fun m!1234119 () Bool)

(assert (=> bm!65060 m!1234119))

(assert (=> b!1346949 d!144235))

(declare-fun mapNonEmpty!57985 () Bool)

(declare-fun mapRes!57985 () Bool)

(declare-fun tp!110360 () Bool)

(declare-fun e!766513 () Bool)

(assert (=> mapNonEmpty!57985 (= mapRes!57985 (and tp!110360 e!766513))))

(declare-fun mapRest!57985 () (Array (_ BitVec 32) ValueCell!17859))

(declare-fun mapValue!57985 () ValueCell!17859)

(declare-fun mapKey!57985 () (_ BitVec 32))

(assert (=> mapNonEmpty!57985 (= mapRest!57979 (store mapRest!57985 mapKey!57985 mapValue!57985))))

(declare-fun mapIsEmpty!57985 () Bool)

(assert (=> mapIsEmpty!57985 mapRes!57985))

(declare-fun b!1347152 () Bool)

(assert (=> b!1347152 (= e!766513 tp_is_empty!37515)))

(declare-fun condMapEmpty!57985 () Bool)

(declare-fun mapDefault!57985 () ValueCell!17859)

(assert (=> mapNonEmpty!57979 (= condMapEmpty!57985 (= mapRest!57979 ((as const (Array (_ BitVec 32) ValueCell!17859)) mapDefault!57985)))))

(declare-fun e!766514 () Bool)

(assert (=> mapNonEmpty!57979 (= tp!110350 (and e!766514 mapRes!57985))))

(declare-fun b!1347153 () Bool)

(assert (=> b!1347153 (= e!766514 tp_is_empty!37515)))

(assert (= (and mapNonEmpty!57979 condMapEmpty!57985) mapIsEmpty!57985))

(assert (= (and mapNonEmpty!57979 (not condMapEmpty!57985)) mapNonEmpty!57985))

(assert (= (and mapNonEmpty!57985 ((_ is ValueCellFull!17859) mapValue!57985)) b!1347152))

(assert (= (and mapNonEmpty!57979 ((_ is ValueCellFull!17859) mapDefault!57985)) b!1347153))

(declare-fun m!1234121 () Bool)

(assert (=> mapNonEmpty!57985 m!1234121))

(declare-fun b_lambda!24581 () Bool)

(assert (= b_lambda!24579 (or (and start!113500 b_free!31515) b_lambda!24581)))

(declare-fun b_lambda!24583 () Bool)

(assert (= b_lambda!24577 (or (and start!113500 b_free!31515) b_lambda!24583)))

(declare-fun b_lambda!24585 () Bool)

(assert (= b_lambda!24575 (or (and start!113500 b_free!31515) b_lambda!24585)))

(check-sat (not bm!65033) b_and!50827 (not bm!65036) (not d!144211) (not b!1347005) (not b!1347044) (not mapNonEmpty!57985) (not b!1347143) (not b!1347133) (not b!1347124) (not b!1347128) (not b!1347068) (not b_lambda!24585) (not b!1347043) (not b!1347070) (not b!1346998) (not bm!65051) (not bm!65056) (not b!1347048) (not b!1347016) (not b!1347066) (not b!1347014) (not d!144217) (not bm!65060) (not b_next!31515) tp_is_empty!37515 (not bm!65054) (not b!1347004) (not b!1347118) (not b!1347049) (not b!1346999) (not b!1347145) (not b!1347046) (not b!1347051) (not b!1347114) (not d!144215) (not b!1347067) (not b_lambda!24583) (not b!1347041) (not b!1347007) (not b!1347126) (not b!1347123) (not d!144231) (not b!1347052) (not b!1347117) (not bm!65052) (not b!1347065) (not b_lambda!24581) (not d!144233) (not d!144219) (not b!1347006) (not b_lambda!24573))
(check-sat b_and!50827 (not b_next!31515))
(get-model)

(assert (=> b!1347124 d!144227))

(assert (=> b!1347123 d!144227))

(declare-fun b!1347154 () Bool)

(assert (=> b!1347154 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44912 _keys!1571)))))

(assert (=> b!1347154 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44913 _values!1303)))))

(declare-fun lt!595621 () ListLongMap!22083)

(declare-fun e!766515 () Bool)

(assert (=> b!1347154 (= e!766515 (= (apply!1072 lt!595621 (select (arr!44361 _keys!1571) from!1960)) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1347155 () Bool)

(declare-fun e!766520 () Bool)

(declare-fun e!766521 () Bool)

(assert (=> b!1347155 (= e!766520 e!766521)))

(declare-fun c!126286 () Bool)

(assert (=> b!1347155 (= c!126286 (bvslt from!1960 (size!44912 _keys!1571)))))

(declare-fun call!65064 () ListLongMap!22083)

(declare-fun bm!65061 () Bool)

(assert (=> bm!65061 (= call!65064 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd from!1960 #b00000000000000000000000000000001) defaultEntry!1306))))

(declare-fun b!1347156 () Bool)

(assert (=> b!1347156 (= e!766520 e!766515)))

(assert (=> b!1347156 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44912 _keys!1571)))))

(declare-fun res!893968 () Bool)

(assert (=> b!1347156 (= res!893968 (contains!9168 lt!595621 (select (arr!44361 _keys!1571) from!1960)))))

(assert (=> b!1347156 (=> (not res!893968) (not e!766515))))

(declare-fun b!1347157 () Bool)

(assert (=> b!1347157 (= e!766521 (= lt!595621 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd from!1960 #b00000000000000000000000000000001) defaultEntry!1306)))))

(declare-fun b!1347158 () Bool)

(declare-fun e!766517 () Bool)

(assert (=> b!1347158 (= e!766517 e!766520)))

(declare-fun c!126285 () Bool)

(declare-fun e!766518 () Bool)

(assert (=> b!1347158 (= c!126285 e!766518)))

(declare-fun res!893967 () Bool)

(assert (=> b!1347158 (=> (not res!893967) (not e!766518))))

(assert (=> b!1347158 (= res!893967 (bvslt from!1960 (size!44912 _keys!1571)))))

(declare-fun d!144237 () Bool)

(assert (=> d!144237 e!766517))

(declare-fun res!893969 () Bool)

(assert (=> d!144237 (=> (not res!893969) (not e!766517))))

(assert (=> d!144237 (= res!893969 (not (contains!9168 lt!595621 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!766516 () ListLongMap!22083)

(assert (=> d!144237 (= lt!595621 e!766516)))

(declare-fun c!126287 () Bool)

(assert (=> d!144237 (= c!126287 (bvsge from!1960 (size!44912 _keys!1571)))))

(assert (=> d!144237 (validMask!0 mask!1977)))

(assert (=> d!144237 (= (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) lt!595621)))

(declare-fun b!1347159 () Bool)

(assert (=> b!1347159 (= e!766518 (validKeyInArray!0 (select (arr!44361 _keys!1571) from!1960)))))

(assert (=> b!1347159 (bvsge from!1960 #b00000000000000000000000000000000)))

(declare-fun b!1347160 () Bool)

(declare-fun e!766519 () ListLongMap!22083)

(assert (=> b!1347160 (= e!766519 call!65064)))

(declare-fun b!1347161 () Bool)

(declare-fun lt!595627 () Unit!44083)

(declare-fun lt!595623 () Unit!44083)

(assert (=> b!1347161 (= lt!595627 lt!595623)))

(declare-fun lt!595626 () V!55123)

(declare-fun lt!595624 () ListLongMap!22083)

(declare-fun lt!595622 () (_ BitVec 64))

(declare-fun lt!595625 () (_ BitVec 64))

(assert (=> b!1347161 (not (contains!9168 (+!4812 lt!595624 (tuple2!24415 lt!595625 lt!595626)) lt!595622))))

(assert (=> b!1347161 (= lt!595623 (addStillNotContains!510 lt!595624 lt!595625 lt!595626 lt!595622))))

(assert (=> b!1347161 (= lt!595622 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1347161 (= lt!595626 (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1347161 (= lt!595625 (select (arr!44361 _keys!1571) from!1960))))

(assert (=> b!1347161 (= lt!595624 call!65064)))

(assert (=> b!1347161 (= e!766519 (+!4812 call!65064 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1347162 () Bool)

(assert (=> b!1347162 (= e!766516 e!766519)))

(declare-fun c!126284 () Bool)

(assert (=> b!1347162 (= c!126284 (validKeyInArray!0 (select (arr!44361 _keys!1571) from!1960)))))

(declare-fun b!1347163 () Bool)

(assert (=> b!1347163 (= e!766516 (ListLongMap!22084 Nil!31583))))

(declare-fun b!1347164 () Bool)

(assert (=> b!1347164 (= e!766521 (isEmpty!1094 lt!595621))))

(declare-fun b!1347165 () Bool)

(declare-fun res!893970 () Bool)

(assert (=> b!1347165 (=> (not res!893970) (not e!766517))))

(assert (=> b!1347165 (= res!893970 (not (contains!9168 lt!595621 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144237 c!126287) b!1347163))

(assert (= (and d!144237 (not c!126287)) b!1347162))

(assert (= (and b!1347162 c!126284) b!1347161))

(assert (= (and b!1347162 (not c!126284)) b!1347160))

(assert (= (or b!1347161 b!1347160) bm!65061))

(assert (= (and d!144237 res!893969) b!1347165))

(assert (= (and b!1347165 res!893970) b!1347158))

(assert (= (and b!1347158 res!893967) b!1347159))

(assert (= (and b!1347158 c!126285) b!1347156))

(assert (= (and b!1347158 (not c!126285)) b!1347155))

(assert (= (and b!1347156 res!893968) b!1347154))

(assert (= (and b!1347155 c!126286) b!1347157))

(assert (= (and b!1347155 (not c!126286)) b!1347164))

(declare-fun b_lambda!24587 () Bool)

(assert (=> (not b_lambda!24587) (not b!1347154)))

(assert (=> b!1347154 t!46185))

(declare-fun b_and!50829 () Bool)

(assert (= b_and!50827 (and (=> t!46185 result!25893) b_and!50829)))

(declare-fun b_lambda!24589 () Bool)

(assert (=> (not b_lambda!24589) (not b!1347161)))

(assert (=> b!1347161 t!46185))

(declare-fun b_and!50831 () Bool)

(assert (= b_and!50829 (and (=> t!46185 result!25893) b_and!50831)))

(assert (=> b!1347156 m!1233917))

(assert (=> b!1347156 m!1233917))

(declare-fun m!1234123 () Bool)

(assert (=> b!1347156 m!1234123))

(declare-fun m!1234125 () Bool)

(assert (=> bm!65061 m!1234125))

(declare-fun m!1234127 () Bool)

(assert (=> b!1347164 m!1234127))

(assert (=> b!1347157 m!1234125))

(assert (=> b!1347162 m!1233917))

(assert (=> b!1347162 m!1233917))

(assert (=> b!1347162 m!1233919))

(assert (=> b!1347154 m!1233917))

(declare-fun m!1234129 () Bool)

(assert (=> b!1347154 m!1234129))

(assert (=> b!1347154 m!1233917))

(assert (=> b!1347154 m!1233929))

(assert (=> b!1347154 m!1233929))

(assert (=> b!1347154 m!1233931))

(assert (=> b!1347154 m!1233933))

(assert (=> b!1347154 m!1233931))

(assert (=> b!1347159 m!1233917))

(assert (=> b!1347159 m!1233917))

(assert (=> b!1347159 m!1233919))

(declare-fun m!1234131 () Bool)

(assert (=> d!144237 m!1234131))

(assert (=> d!144237 m!1233943))

(assert (=> b!1347161 m!1233917))

(declare-fun m!1234133 () Bool)

(assert (=> b!1347161 m!1234133))

(declare-fun m!1234135 () Bool)

(assert (=> b!1347161 m!1234135))

(assert (=> b!1347161 m!1233929))

(assert (=> b!1347161 m!1233931))

(assert (=> b!1347161 m!1233933))

(assert (=> b!1347161 m!1233931))

(declare-fun m!1234137 () Bool)

(assert (=> b!1347161 m!1234137))

(assert (=> b!1347161 m!1233929))

(assert (=> b!1347161 m!1234137))

(declare-fun m!1234139 () Bool)

(assert (=> b!1347161 m!1234139))

(declare-fun m!1234141 () Bool)

(assert (=> b!1347165 m!1234141))

(assert (=> bm!65054 d!144237))

(declare-fun d!144239 () Bool)

(declare-fun res!893975 () Bool)

(declare-fun e!766526 () Bool)

(assert (=> d!144239 (=> res!893975 e!766526)))

(assert (=> d!144239 (= res!893975 (and ((_ is Cons!31582) (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))) (= (_1!12217 (h!32791 (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))) k0!1142)))))

(assert (=> d!144239 (= (containsKey!740 (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) k0!1142) e!766526)))

(declare-fun b!1347170 () Bool)

(declare-fun e!766527 () Bool)

(assert (=> b!1347170 (= e!766526 e!766527)))

(declare-fun res!893976 () Bool)

(assert (=> b!1347170 (=> (not res!893976) (not e!766527))))

(assert (=> b!1347170 (= res!893976 (and (or (not ((_ is Cons!31582) (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))) (bvsle (_1!12217 (h!32791 (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))) k0!1142)) ((_ is Cons!31582) (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))) (bvslt (_1!12217 (h!32791 (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))) k0!1142)))))

(declare-fun b!1347171 () Bool)

(assert (=> b!1347171 (= e!766527 (containsKey!740 (t!46187 (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))) k0!1142))))

(assert (= (and d!144239 (not res!893975)) b!1347170))

(assert (= (and b!1347170 res!893976) b!1347171))

(declare-fun m!1234143 () Bool)

(assert (=> b!1347171 m!1234143))

(assert (=> d!144217 d!144239))

(declare-fun d!144241 () Bool)

(declare-fun lt!595630 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!670 (List!31585) (InoxSet (_ BitVec 64)))

(assert (=> d!144241 (= lt!595630 (select (content!670 Nil!31582) (select (arr!44361 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun e!766532 () Bool)

(assert (=> d!144241 (= lt!595630 e!766532)))

(declare-fun res!893981 () Bool)

(assert (=> d!144241 (=> (not res!893981) (not e!766532))))

(assert (=> d!144241 (= res!893981 ((_ is Cons!31581) Nil!31582))))

(assert (=> d!144241 (= (contains!9171 Nil!31582 (select (arr!44361 _keys!1571) #b00000000000000000000000000000000)) lt!595630)))

(declare-fun b!1347176 () Bool)

(declare-fun e!766533 () Bool)

(assert (=> b!1347176 (= e!766532 e!766533)))

(declare-fun res!893982 () Bool)

(assert (=> b!1347176 (=> res!893982 e!766533)))

(assert (=> b!1347176 (= res!893982 (= (h!32790 Nil!31582) (select (arr!44361 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun b!1347177 () Bool)

(assert (=> b!1347177 (= e!766533 (contains!9171 (t!46186 Nil!31582) (select (arr!44361 _keys!1571) #b00000000000000000000000000000000)))))

(assert (= (and d!144241 res!893981) b!1347176))

(assert (= (and b!1347176 (not res!893982)) b!1347177))

(declare-fun m!1234145 () Bool)

(assert (=> d!144241 m!1234145))

(assert (=> d!144241 m!1234049))

(declare-fun m!1234147 () Bool)

(assert (=> d!144241 m!1234147))

(assert (=> b!1347177 m!1234049))

(declare-fun m!1234149 () Bool)

(assert (=> b!1347177 m!1234149))

(assert (=> b!1347067 d!144241))

(declare-fun d!144243 () Bool)

(declare-fun isEmpty!1095 (Option!773) Bool)

(assert (=> d!144243 (= (isDefined!525 (getValueByKey!722 (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142)) (not (isEmpty!1095 (getValueByKey!722 (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))))

(declare-fun bs!38606 () Bool)

(assert (= bs!38606 d!144243))

(assert (=> bs!38606 m!1234061))

(declare-fun m!1234151 () Bool)

(assert (=> bs!38606 m!1234151))

(assert (=> b!1347070 d!144243))

(declare-fun c!126292 () Bool)

(declare-fun d!144245 () Bool)

(assert (=> d!144245 (= c!126292 (and ((_ is Cons!31582) (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))) (= (_1!12217 (h!32791 (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)))) k0!1142)))))

(declare-fun e!766538 () Option!773)

(assert (=> d!144245 (= (getValueByKey!722 (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142) e!766538)))

(declare-fun b!1347189 () Bool)

(declare-fun e!766539 () Option!773)

(assert (=> b!1347189 (= e!766539 None!771)))

(declare-fun b!1347186 () Bool)

(assert (=> b!1347186 (= e!766538 (Some!772 (_2!12217 (h!32791 (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))))))

(declare-fun b!1347187 () Bool)

(assert (=> b!1347187 (= e!766538 e!766539)))

(declare-fun c!126293 () Bool)

(assert (=> b!1347187 (= c!126293 (and ((_ is Cons!31582) (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))) (not (= (_1!12217 (h!32791 (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)))) k0!1142))))))

(declare-fun b!1347188 () Bool)

(assert (=> b!1347188 (= e!766539 (getValueByKey!722 (t!46187 (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))) k0!1142))))

(assert (= (and d!144245 c!126292) b!1347186))

(assert (= (and d!144245 (not c!126292)) b!1347187))

(assert (= (and b!1347187 c!126293) b!1347188))

(assert (= (and b!1347187 (not c!126293)) b!1347189))

(declare-fun m!1234153 () Bool)

(assert (=> b!1347188 m!1234153))

(assert (=> b!1347070 d!144245))

(declare-fun d!144247 () Bool)

(declare-fun e!766540 () Bool)

(assert (=> d!144247 e!766540))

(declare-fun res!893983 () Bool)

(assert (=> d!144247 (=> res!893983 e!766540)))

(declare-fun lt!595633 () Bool)

(assert (=> d!144247 (= res!893983 (not lt!595633))))

(declare-fun lt!595632 () Bool)

(assert (=> d!144247 (= lt!595633 lt!595632)))

(declare-fun lt!595631 () Unit!44083)

(declare-fun e!766541 () Unit!44083)

(assert (=> d!144247 (= lt!595631 e!766541)))

(declare-fun c!126294 () Bool)

(assert (=> d!144247 (= c!126294 lt!595632)))

(assert (=> d!144247 (= lt!595632 (containsKey!740 (toList!11057 lt!595508) (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))))

(assert (=> d!144247 (= (contains!9168 lt!595508 (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) lt!595633)))

(declare-fun b!1347190 () Bool)

(declare-fun lt!595634 () Unit!44083)

(assert (=> b!1347190 (= e!766541 lt!595634)))

(assert (=> b!1347190 (= lt!595634 (lemmaContainsKeyImpliesGetValueByKeyDefined!485 (toList!11057 lt!595508) (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))))

(assert (=> b!1347190 (isDefined!525 (getValueByKey!722 (toList!11057 lt!595508) (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))))

(declare-fun b!1347191 () Bool)

(declare-fun Unit!44088 () Unit!44083)

(assert (=> b!1347191 (= e!766541 Unit!44088)))

(declare-fun b!1347192 () Bool)

(assert (=> b!1347192 (= e!766540 (isDefined!525 (getValueByKey!722 (toList!11057 lt!595508) (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))))))

(assert (= (and d!144247 c!126294) b!1347190))

(assert (= (and d!144247 (not c!126294)) b!1347191))

(assert (= (and d!144247 (not res!893983)) b!1347192))

(declare-fun m!1234155 () Bool)

(assert (=> d!144247 m!1234155))

(declare-fun m!1234157 () Bool)

(assert (=> b!1347190 m!1234157))

(assert (=> b!1347190 m!1234009))

(assert (=> b!1347190 m!1234009))

(declare-fun m!1234159 () Bool)

(assert (=> b!1347190 m!1234159))

(assert (=> b!1347192 m!1234009))

(assert (=> b!1347192 m!1234009))

(assert (=> b!1347192 m!1234159))

(assert (=> d!144215 d!144247))

(declare-fun d!144249 () Bool)

(declare-fun c!126295 () Bool)

(assert (=> d!144249 (= c!126295 (and ((_ is Cons!31582) lt!595507) (= (_1!12217 (h!32791 lt!595507)) (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))))))

(declare-fun e!766542 () Option!773)

(assert (=> d!144249 (= (getValueByKey!722 lt!595507 (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) e!766542)))

(declare-fun b!1347196 () Bool)

(declare-fun e!766543 () Option!773)

(assert (=> b!1347196 (= e!766543 None!771)))

(declare-fun b!1347193 () Bool)

(assert (=> b!1347193 (= e!766542 (Some!772 (_2!12217 (h!32791 lt!595507))))))

(declare-fun b!1347194 () Bool)

(assert (=> b!1347194 (= e!766542 e!766543)))

(declare-fun c!126296 () Bool)

(assert (=> b!1347194 (= c!126296 (and ((_ is Cons!31582) lt!595507) (not (= (_1!12217 (h!32791 lt!595507)) (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))))))

(declare-fun b!1347195 () Bool)

(assert (=> b!1347195 (= e!766543 (getValueByKey!722 (t!46187 lt!595507) (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))))

(assert (= (and d!144249 c!126295) b!1347193))

(assert (= (and d!144249 (not c!126295)) b!1347194))

(assert (= (and b!1347194 c!126296) b!1347195))

(assert (= (and b!1347194 (not c!126296)) b!1347196))

(declare-fun m!1234161 () Bool)

(assert (=> b!1347195 m!1234161))

(assert (=> d!144215 d!144249))

(declare-fun d!144251 () Bool)

(assert (=> d!144251 (= (getValueByKey!722 lt!595507 (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) (Some!772 (_2!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))))

(declare-fun lt!595637 () Unit!44083)

(declare-fun choose!1980 (List!31586 (_ BitVec 64) V!55123) Unit!44083)

(assert (=> d!144251 (= lt!595637 (choose!1980 lt!595507 (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) (_2!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))))

(declare-fun e!766546 () Bool)

(assert (=> d!144251 e!766546))

(declare-fun res!893988 () Bool)

(assert (=> d!144251 (=> (not res!893988) (not e!766546))))

(declare-fun isStrictlySorted!878 (List!31586) Bool)

(assert (=> d!144251 (= res!893988 (isStrictlySorted!878 lt!595507))))

(assert (=> d!144251 (= (lemmaContainsTupThenGetReturnValue!365 lt!595507 (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) (_2!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) lt!595637)))

(declare-fun b!1347201 () Bool)

(declare-fun res!893989 () Bool)

(assert (=> b!1347201 (=> (not res!893989) (not e!766546))))

(assert (=> b!1347201 (= res!893989 (containsKey!740 lt!595507 (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))))

(declare-fun b!1347202 () Bool)

(assert (=> b!1347202 (= e!766546 (contains!9170 lt!595507 (tuple2!24415 (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) (_2!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))))))

(assert (= (and d!144251 res!893988) b!1347201))

(assert (= (and b!1347201 res!893989) b!1347202))

(assert (=> d!144251 m!1234003))

(declare-fun m!1234163 () Bool)

(assert (=> d!144251 m!1234163))

(declare-fun m!1234165 () Bool)

(assert (=> d!144251 m!1234165))

(declare-fun m!1234167 () Bool)

(assert (=> b!1347201 m!1234167))

(declare-fun m!1234169 () Bool)

(assert (=> b!1347202 m!1234169))

(assert (=> d!144215 d!144251))

(declare-fun b!1347223 () Bool)

(declare-fun e!766558 () List!31586)

(declare-fun call!65073 () List!31586)

(assert (=> b!1347223 (= e!766558 call!65073)))

(declare-fun c!126305 () Bool)

(declare-fun b!1347224 () Bool)

(assert (=> b!1347224 (= c!126305 (and ((_ is Cons!31582) (toList!11057 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (bvsgt (_1!12217 (h!32791 (toList!11057 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))) (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))))))

(declare-fun e!766560 () List!31586)

(assert (=> b!1347224 (= e!766560 e!766558)))

(declare-fun bm!65068 () Bool)

(declare-fun call!65071 () List!31586)

(assert (=> bm!65068 (= call!65073 call!65071)))

(declare-fun b!1347225 () Bool)

(declare-fun e!766559 () Bool)

(declare-fun lt!595640 () List!31586)

(assert (=> b!1347225 (= e!766559 (contains!9170 lt!595640 (tuple2!24415 (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) (_2!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))))))

(declare-fun b!1347226 () Bool)

(assert (=> b!1347226 (= e!766560 call!65071)))

(declare-fun b!1347227 () Bool)

(declare-fun e!766561 () List!31586)

(assert (=> b!1347227 (= e!766561 e!766560)))

(declare-fun c!126308 () Bool)

(assert (=> b!1347227 (= c!126308 (and ((_ is Cons!31582) (toList!11057 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (= (_1!12217 (h!32791 (toList!11057 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))) (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))))))

(declare-fun b!1347228 () Bool)

(declare-fun e!766557 () List!31586)

(assert (=> b!1347228 (= e!766557 (insertStrictlySorted!494 (t!46187 (toList!11057 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) (_2!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))))

(declare-fun b!1347230 () Bool)

(declare-fun call!65072 () List!31586)

(assert (=> b!1347230 (= e!766561 call!65072)))

(declare-fun bm!65069 () Bool)

(declare-fun c!126307 () Bool)

(declare-fun $colon$colon!674 (List!31586 tuple2!24414) List!31586)

(assert (=> bm!65069 (= call!65072 ($colon$colon!674 e!766557 (ite c!126307 (h!32791 (toList!11057 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (tuple2!24415 (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) (_2!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))))))

(declare-fun c!126306 () Bool)

(assert (=> bm!65069 (= c!126306 c!126307)))

(declare-fun b!1347231 () Bool)

(assert (=> b!1347231 (= e!766558 call!65073)))

(declare-fun b!1347232 () Bool)

(assert (=> b!1347232 (= e!766557 (ite c!126308 (t!46187 (toList!11057 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (ite c!126305 (Cons!31582 (h!32791 (toList!11057 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (t!46187 (toList!11057 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))) Nil!31583)))))

(declare-fun bm!65070 () Bool)

(assert (=> bm!65070 (= call!65071 call!65072)))

(declare-fun b!1347229 () Bool)

(declare-fun res!893995 () Bool)

(assert (=> b!1347229 (=> (not res!893995) (not e!766559))))

(assert (=> b!1347229 (= res!893995 (containsKey!740 lt!595640 (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))))

(declare-fun d!144253 () Bool)

(assert (=> d!144253 e!766559))

(declare-fun res!893994 () Bool)

(assert (=> d!144253 (=> (not res!893994) (not e!766559))))

(assert (=> d!144253 (= res!893994 (isStrictlySorted!878 lt!595640))))

(assert (=> d!144253 (= lt!595640 e!766561)))

(assert (=> d!144253 (= c!126307 (and ((_ is Cons!31582) (toList!11057 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (bvslt (_1!12217 (h!32791 (toList!11057 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))) (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))))))

(assert (=> d!144253 (isStrictlySorted!878 (toList!11057 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!144253 (= (insertStrictlySorted!494 (toList!11057 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) (_2!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) lt!595640)))

(assert (= (and d!144253 c!126307) b!1347230))

(assert (= (and d!144253 (not c!126307)) b!1347227))

(assert (= (and b!1347227 c!126308) b!1347226))

(assert (= (and b!1347227 (not c!126308)) b!1347224))

(assert (= (and b!1347224 c!126305) b!1347223))

(assert (= (and b!1347224 (not c!126305)) b!1347231))

(assert (= (or b!1347223 b!1347231) bm!65068))

(assert (= (or b!1347226 bm!65068) bm!65070))

(assert (= (or b!1347230 bm!65070) bm!65069))

(assert (= (and bm!65069 c!126306) b!1347228))

(assert (= (and bm!65069 (not c!126306)) b!1347232))

(assert (= (and d!144253 res!893994) b!1347229))

(assert (= (and b!1347229 res!893995) b!1347225))

(declare-fun m!1234171 () Bool)

(assert (=> bm!65069 m!1234171))

(declare-fun m!1234173 () Bool)

(assert (=> b!1347229 m!1234173))

(declare-fun m!1234175 () Bool)

(assert (=> b!1347225 m!1234175))

(declare-fun m!1234177 () Bool)

(assert (=> d!144253 m!1234177))

(declare-fun m!1234179 () Bool)

(assert (=> d!144253 m!1234179))

(declare-fun m!1234181 () Bool)

(assert (=> b!1347228 m!1234181))

(assert (=> d!144215 d!144253))

(declare-fun d!144255 () Bool)

(declare-fun e!766562 () Bool)

(assert (=> d!144255 e!766562))

(declare-fun res!893997 () Bool)

(assert (=> d!144255 (=> (not res!893997) (not e!766562))))

(declare-fun lt!595644 () ListLongMap!22083)

(assert (=> d!144255 (= res!893997 (contains!9168 lt!595644 (_1!12217 (ite (or c!126276 c!126277) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))))

(declare-fun lt!595643 () List!31586)

(assert (=> d!144255 (= lt!595644 (ListLongMap!22084 lt!595643))))

(declare-fun lt!595641 () Unit!44083)

(declare-fun lt!595642 () Unit!44083)

(assert (=> d!144255 (= lt!595641 lt!595642)))

(assert (=> d!144255 (= (getValueByKey!722 lt!595643 (_1!12217 (ite (or c!126276 c!126277) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))) (Some!772 (_2!12217 (ite (or c!126276 c!126277) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))))

(assert (=> d!144255 (= lt!595642 (lemmaContainsTupThenGetReturnValue!365 lt!595643 (_1!12217 (ite (or c!126276 c!126277) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))) (_2!12217 (ite (or c!126276 c!126277) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))))

(assert (=> d!144255 (= lt!595643 (insertStrictlySorted!494 (toList!11057 (ite c!126276 call!65057 (ite c!126277 call!65059 call!65056))) (_1!12217 (ite (or c!126276 c!126277) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))) (_2!12217 (ite (or c!126276 c!126277) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))))

(assert (=> d!144255 (= (+!4812 (ite c!126276 call!65057 (ite c!126277 call!65059 call!65056)) (ite (or c!126276 c!126277) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))) lt!595644)))

(declare-fun b!1347233 () Bool)

(declare-fun res!893996 () Bool)

(assert (=> b!1347233 (=> (not res!893996) (not e!766562))))

(assert (=> b!1347233 (= res!893996 (= (getValueByKey!722 (toList!11057 lt!595644) (_1!12217 (ite (or c!126276 c!126277) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))) (Some!772 (_2!12217 (ite (or c!126276 c!126277) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))))

(declare-fun b!1347234 () Bool)

(assert (=> b!1347234 (= e!766562 (contains!9170 (toList!11057 lt!595644) (ite (or c!126276 c!126277) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(assert (= (and d!144255 res!893997) b!1347233))

(assert (= (and b!1347233 res!893996) b!1347234))

(declare-fun m!1234183 () Bool)

(assert (=> d!144255 m!1234183))

(declare-fun m!1234185 () Bool)

(assert (=> d!144255 m!1234185))

(declare-fun m!1234187 () Bool)

(assert (=> d!144255 m!1234187))

(declare-fun m!1234189 () Bool)

(assert (=> d!144255 m!1234189))

(declare-fun m!1234191 () Bool)

(assert (=> b!1347233 m!1234191))

(declare-fun m!1234193 () Bool)

(assert (=> b!1347234 m!1234193))

(assert (=> bm!65052 d!144255))

(declare-fun d!144257 () Bool)

(assert (=> d!144257 (= (isDefined!525 (getValueByKey!722 (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) k0!1142)) (not (isEmpty!1095 (getValueByKey!722 (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) k0!1142))))))

(declare-fun bs!38607 () Bool)

(assert (= bs!38607 d!144257))

(assert (=> bs!38607 m!1234017))

(declare-fun m!1234195 () Bool)

(assert (=> bs!38607 m!1234195))

(assert (=> b!1347016 d!144257))

(declare-fun c!126309 () Bool)

(declare-fun d!144259 () Bool)

(assert (=> d!144259 (= c!126309 (and ((_ is Cons!31582) (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))) (= (_1!12217 (h!32791 (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))) k0!1142)))))

(declare-fun e!766563 () Option!773)

(assert (=> d!144259 (= (getValueByKey!722 (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) k0!1142) e!766563)))

(declare-fun b!1347238 () Bool)

(declare-fun e!766564 () Option!773)

(assert (=> b!1347238 (= e!766564 None!771)))

(declare-fun b!1347235 () Bool)

(assert (=> b!1347235 (= e!766563 (Some!772 (_2!12217 (h!32791 (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))))))))

(declare-fun b!1347236 () Bool)

(assert (=> b!1347236 (= e!766563 e!766564)))

(declare-fun c!126310 () Bool)

(assert (=> b!1347236 (= c!126310 (and ((_ is Cons!31582) (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))) (not (= (_1!12217 (h!32791 (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))) k0!1142))))))

(declare-fun b!1347237 () Bool)

(assert (=> b!1347237 (= e!766564 (getValueByKey!722 (t!46187 (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))) k0!1142))))

(assert (= (and d!144259 c!126309) b!1347235))

(assert (= (and d!144259 (not c!126309)) b!1347236))

(assert (= (and b!1347236 c!126310) b!1347237))

(assert (= (and b!1347236 (not c!126310)) b!1347238))

(declare-fun m!1234197 () Bool)

(assert (=> b!1347237 m!1234197))

(assert (=> b!1347016 d!144259))

(declare-fun d!144261 () Bool)

(declare-fun isEmpty!1096 (List!31586) Bool)

(assert (=> d!144261 (= (isEmpty!1094 lt!595535) (isEmpty!1096 (toList!11057 lt!595535)))))

(declare-fun bs!38608 () Bool)

(assert (= bs!38608 d!144261))

(declare-fun m!1234199 () Bool)

(assert (=> bs!38608 m!1234199))

(assert (=> b!1347051 d!144261))

(declare-fun d!144263 () Bool)

(declare-fun e!766565 () Bool)

(assert (=> d!144263 e!766565))

(declare-fun res!893999 () Bool)

(assert (=> d!144263 (=> (not res!893999) (not e!766565))))

(declare-fun lt!595648 () ListLongMap!22083)

(assert (=> d!144263 (= res!893999 (contains!9168 lt!595648 (_1!12217 (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(declare-fun lt!595647 () List!31586)

(assert (=> d!144263 (= lt!595648 (ListLongMap!22084 lt!595647))))

(declare-fun lt!595645 () Unit!44083)

(declare-fun lt!595646 () Unit!44083)

(assert (=> d!144263 (= lt!595645 lt!595646)))

(assert (=> d!144263 (= (getValueByKey!722 lt!595647 (_1!12217 (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))) (Some!772 (_2!12217 (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(assert (=> d!144263 (= lt!595646 (lemmaContainsTupThenGetReturnValue!365 lt!595647 (_1!12217 (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)) (_2!12217 (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(assert (=> d!144263 (= lt!595647 (insertStrictlySorted!494 (toList!11057 call!65060) (_1!12217 (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)) (_2!12217 (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(assert (=> d!144263 (= (+!4812 call!65060 (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)) lt!595648)))

(declare-fun b!1347239 () Bool)

(declare-fun res!893998 () Bool)

(assert (=> b!1347239 (=> (not res!893998) (not e!766565))))

(assert (=> b!1347239 (= res!893998 (= (getValueByKey!722 (toList!11057 lt!595648) (_1!12217 (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))) (Some!772 (_2!12217 (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))))

(declare-fun b!1347240 () Bool)

(assert (=> b!1347240 (= e!766565 (contains!9170 (toList!11057 lt!595648) (tuple2!24415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))

(assert (= (and d!144263 res!893999) b!1347239))

(assert (= (and b!1347239 res!893998) b!1347240))

(declare-fun m!1234201 () Bool)

(assert (=> d!144263 m!1234201))

(declare-fun m!1234203 () Bool)

(assert (=> d!144263 m!1234203))

(declare-fun m!1234205 () Bool)

(assert (=> d!144263 m!1234205))

(declare-fun m!1234207 () Bool)

(assert (=> d!144263 m!1234207))

(declare-fun m!1234209 () Bool)

(assert (=> b!1347239 m!1234209))

(declare-fun m!1234211 () Bool)

(assert (=> b!1347240 m!1234211))

(assert (=> b!1347133 d!144263))

(declare-fun d!144265 () Bool)

(assert (=> d!144265 (isDefined!525 (getValueByKey!722 (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(declare-fun lt!595651 () Unit!44083)

(declare-fun choose!1981 (List!31586 (_ BitVec 64)) Unit!44083)

(assert (=> d!144265 (= lt!595651 (choose!1981 (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(declare-fun e!766568 () Bool)

(assert (=> d!144265 e!766568))

(declare-fun res!894002 () Bool)

(assert (=> d!144265 (=> (not res!894002) (not e!766568))))

(assert (=> d!144265 (= res!894002 (isStrictlySorted!878 (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))))

(assert (=> d!144265 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!485 (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142) lt!595651)))

(declare-fun b!1347243 () Bool)

(assert (=> b!1347243 (= e!766568 (containsKey!740 (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(assert (= (and d!144265 res!894002) b!1347243))

(assert (=> d!144265 m!1234061))

(assert (=> d!144265 m!1234061))

(assert (=> d!144265 m!1234063))

(declare-fun m!1234213 () Bool)

(assert (=> d!144265 m!1234213))

(declare-fun m!1234215 () Bool)

(assert (=> d!144265 m!1234215))

(assert (=> b!1347243 m!1234057))

(assert (=> b!1347068 d!144265))

(assert (=> b!1347068 d!144243))

(assert (=> b!1347068 d!144245))

(declare-fun d!144267 () Bool)

(declare-fun e!766569 () Bool)

(assert (=> d!144267 e!766569))

(declare-fun res!894004 () Bool)

(assert (=> d!144267 (=> (not res!894004) (not e!766569))))

(declare-fun lt!595655 () ListLongMap!22083)

(assert (=> d!144267 (= res!894004 (contains!9168 lt!595655 (_1!12217 (tuple2!24415 lt!595593 minValue!1245))))))

(declare-fun lt!595654 () List!31586)

(assert (=> d!144267 (= lt!595655 (ListLongMap!22084 lt!595654))))

(declare-fun lt!595652 () Unit!44083)

(declare-fun lt!595653 () Unit!44083)

(assert (=> d!144267 (= lt!595652 lt!595653)))

(assert (=> d!144267 (= (getValueByKey!722 lt!595654 (_1!12217 (tuple2!24415 lt!595593 minValue!1245))) (Some!772 (_2!12217 (tuple2!24415 lt!595593 minValue!1245))))))

(assert (=> d!144267 (= lt!595653 (lemmaContainsTupThenGetReturnValue!365 lt!595654 (_1!12217 (tuple2!24415 lt!595593 minValue!1245)) (_2!12217 (tuple2!24415 lt!595593 minValue!1245))))))

(assert (=> d!144267 (= lt!595654 (insertStrictlySorted!494 (toList!11057 lt!595605) (_1!12217 (tuple2!24415 lt!595593 minValue!1245)) (_2!12217 (tuple2!24415 lt!595593 minValue!1245))))))

(assert (=> d!144267 (= (+!4812 lt!595605 (tuple2!24415 lt!595593 minValue!1245)) lt!595655)))

(declare-fun b!1347244 () Bool)

(declare-fun res!894003 () Bool)

(assert (=> b!1347244 (=> (not res!894003) (not e!766569))))

(assert (=> b!1347244 (= res!894003 (= (getValueByKey!722 (toList!11057 lt!595655) (_1!12217 (tuple2!24415 lt!595593 minValue!1245))) (Some!772 (_2!12217 (tuple2!24415 lt!595593 minValue!1245)))))))

(declare-fun b!1347245 () Bool)

(assert (=> b!1347245 (= e!766569 (contains!9170 (toList!11057 lt!595655) (tuple2!24415 lt!595593 minValue!1245)))))

(assert (= (and d!144267 res!894004) b!1347244))

(assert (= (and b!1347244 res!894003) b!1347245))

(declare-fun m!1234217 () Bool)

(assert (=> d!144267 m!1234217))

(declare-fun m!1234219 () Bool)

(assert (=> d!144267 m!1234219))

(declare-fun m!1234221 () Bool)

(assert (=> d!144267 m!1234221))

(declare-fun m!1234223 () Bool)

(assert (=> d!144267 m!1234223))

(declare-fun m!1234225 () Bool)

(assert (=> b!1347244 m!1234225))

(declare-fun m!1234227 () Bool)

(assert (=> b!1347245 m!1234227))

(assert (=> b!1347118 d!144267))

(declare-fun d!144269 () Bool)

(declare-fun e!766570 () Bool)

(assert (=> d!144269 e!766570))

(declare-fun res!894006 () Bool)

(assert (=> d!144269 (=> (not res!894006) (not e!766570))))

(declare-fun lt!595659 () ListLongMap!22083)

(assert (=> d!144269 (= res!894006 (contains!9168 lt!595659 (_1!12217 (tuple2!24415 lt!595595 zeroValue!1245))))))

(declare-fun lt!595658 () List!31586)

(assert (=> d!144269 (= lt!595659 (ListLongMap!22084 lt!595658))))

(declare-fun lt!595656 () Unit!44083)

(declare-fun lt!595657 () Unit!44083)

(assert (=> d!144269 (= lt!595656 lt!595657)))

(assert (=> d!144269 (= (getValueByKey!722 lt!595658 (_1!12217 (tuple2!24415 lt!595595 zeroValue!1245))) (Some!772 (_2!12217 (tuple2!24415 lt!595595 zeroValue!1245))))))

(assert (=> d!144269 (= lt!595657 (lemmaContainsTupThenGetReturnValue!365 lt!595658 (_1!12217 (tuple2!24415 lt!595595 zeroValue!1245)) (_2!12217 (tuple2!24415 lt!595595 zeroValue!1245))))))

(assert (=> d!144269 (= lt!595658 (insertStrictlySorted!494 (toList!11057 lt!595610) (_1!12217 (tuple2!24415 lt!595595 zeroValue!1245)) (_2!12217 (tuple2!24415 lt!595595 zeroValue!1245))))))

(assert (=> d!144269 (= (+!4812 lt!595610 (tuple2!24415 lt!595595 zeroValue!1245)) lt!595659)))

(declare-fun b!1347246 () Bool)

(declare-fun res!894005 () Bool)

(assert (=> b!1347246 (=> (not res!894005) (not e!766570))))

(assert (=> b!1347246 (= res!894005 (= (getValueByKey!722 (toList!11057 lt!595659) (_1!12217 (tuple2!24415 lt!595595 zeroValue!1245))) (Some!772 (_2!12217 (tuple2!24415 lt!595595 zeroValue!1245)))))))

(declare-fun b!1347247 () Bool)

(assert (=> b!1347247 (= e!766570 (contains!9170 (toList!11057 lt!595659) (tuple2!24415 lt!595595 zeroValue!1245)))))

(assert (= (and d!144269 res!894006) b!1347246))

(assert (= (and b!1347246 res!894005) b!1347247))

(declare-fun m!1234229 () Bool)

(assert (=> d!144269 m!1234229))

(declare-fun m!1234231 () Bool)

(assert (=> d!144269 m!1234231))

(declare-fun m!1234233 () Bool)

(assert (=> d!144269 m!1234233))

(declare-fun m!1234235 () Bool)

(assert (=> d!144269 m!1234235))

(declare-fun m!1234237 () Bool)

(assert (=> b!1347246 m!1234237))

(declare-fun m!1234239 () Bool)

(assert (=> b!1347247 m!1234239))

(assert (=> b!1347118 d!144269))

(declare-fun d!144271 () Bool)

(assert (=> d!144271 (= (apply!1072 (+!4812 lt!595606 (tuple2!24415 lt!595604 minValue!1245)) lt!595599) (apply!1072 lt!595606 lt!595599))))

(declare-fun lt!595662 () Unit!44083)

(declare-fun choose!1982 (ListLongMap!22083 (_ BitVec 64) V!55123 (_ BitVec 64)) Unit!44083)

(assert (=> d!144271 (= lt!595662 (choose!1982 lt!595606 lt!595604 minValue!1245 lt!595599))))

(declare-fun e!766573 () Bool)

(assert (=> d!144271 e!766573))

(declare-fun res!894009 () Bool)

(assert (=> d!144271 (=> (not res!894009) (not e!766573))))

(assert (=> d!144271 (= res!894009 (contains!9168 lt!595606 lt!595599))))

(assert (=> d!144271 (= (addApplyDifferent!575 lt!595606 lt!595604 minValue!1245 lt!595599) lt!595662)))

(declare-fun b!1347251 () Bool)

(assert (=> b!1347251 (= e!766573 (not (= lt!595599 lt!595604)))))

(assert (= (and d!144271 res!894009) b!1347251))

(declare-fun m!1234241 () Bool)

(assert (=> d!144271 m!1234241))

(assert (=> d!144271 m!1234095))

(assert (=> d!144271 m!1234095))

(assert (=> d!144271 m!1234107))

(declare-fun m!1234243 () Bool)

(assert (=> d!144271 m!1234243))

(assert (=> d!144271 m!1234081))

(assert (=> b!1347118 d!144271))

(declare-fun d!144273 () Bool)

(declare-fun e!766574 () Bool)

(assert (=> d!144273 e!766574))

(declare-fun res!894011 () Bool)

(assert (=> d!144273 (=> (not res!894011) (not e!766574))))

(declare-fun lt!595666 () ListLongMap!22083)

(assert (=> d!144273 (= res!894011 (contains!9168 lt!595666 (_1!12217 (tuple2!24415 lt!595604 minValue!1245))))))

(declare-fun lt!595665 () List!31586)

(assert (=> d!144273 (= lt!595666 (ListLongMap!22084 lt!595665))))

(declare-fun lt!595663 () Unit!44083)

(declare-fun lt!595664 () Unit!44083)

(assert (=> d!144273 (= lt!595663 lt!595664)))

(assert (=> d!144273 (= (getValueByKey!722 lt!595665 (_1!12217 (tuple2!24415 lt!595604 minValue!1245))) (Some!772 (_2!12217 (tuple2!24415 lt!595604 minValue!1245))))))

(assert (=> d!144273 (= lt!595664 (lemmaContainsTupThenGetReturnValue!365 lt!595665 (_1!12217 (tuple2!24415 lt!595604 minValue!1245)) (_2!12217 (tuple2!24415 lt!595604 minValue!1245))))))

(assert (=> d!144273 (= lt!595665 (insertStrictlySorted!494 (toList!11057 lt!595606) (_1!12217 (tuple2!24415 lt!595604 minValue!1245)) (_2!12217 (tuple2!24415 lt!595604 minValue!1245))))))

(assert (=> d!144273 (= (+!4812 lt!595606 (tuple2!24415 lt!595604 minValue!1245)) lt!595666)))

(declare-fun b!1347252 () Bool)

(declare-fun res!894010 () Bool)

(assert (=> b!1347252 (=> (not res!894010) (not e!766574))))

(assert (=> b!1347252 (= res!894010 (= (getValueByKey!722 (toList!11057 lt!595666) (_1!12217 (tuple2!24415 lt!595604 minValue!1245))) (Some!772 (_2!12217 (tuple2!24415 lt!595604 minValue!1245)))))))

(declare-fun b!1347253 () Bool)

(assert (=> b!1347253 (= e!766574 (contains!9170 (toList!11057 lt!595666) (tuple2!24415 lt!595604 minValue!1245)))))

(assert (= (and d!144273 res!894011) b!1347252))

(assert (= (and b!1347252 res!894010) b!1347253))

(declare-fun m!1234245 () Bool)

(assert (=> d!144273 m!1234245))

(declare-fun m!1234247 () Bool)

(assert (=> d!144273 m!1234247))

(declare-fun m!1234249 () Bool)

(assert (=> d!144273 m!1234249))

(declare-fun m!1234251 () Bool)

(assert (=> d!144273 m!1234251))

(declare-fun m!1234253 () Bool)

(assert (=> b!1347252 m!1234253))

(declare-fun m!1234255 () Bool)

(assert (=> b!1347253 m!1234255))

(assert (=> b!1347118 d!144273))

(declare-fun d!144275 () Bool)

(declare-fun e!766575 () Bool)

(assert (=> d!144275 e!766575))

(declare-fun res!894012 () Bool)

(assert (=> d!144275 (=> res!894012 e!766575)))

(declare-fun lt!595669 () Bool)

(assert (=> d!144275 (= res!894012 (not lt!595669))))

(declare-fun lt!595668 () Bool)

(assert (=> d!144275 (= lt!595669 lt!595668)))

(declare-fun lt!595667 () Unit!44083)

(declare-fun e!766576 () Unit!44083)

(assert (=> d!144275 (= lt!595667 e!766576)))

(declare-fun c!126311 () Bool)

(assert (=> d!144275 (= c!126311 lt!595668)))

(assert (=> d!144275 (= lt!595668 (containsKey!740 (toList!11057 (+!4812 lt!595610 (tuple2!24415 lt!595595 zeroValue!1245))) lt!595607))))

(assert (=> d!144275 (= (contains!9168 (+!4812 lt!595610 (tuple2!24415 lt!595595 zeroValue!1245)) lt!595607) lt!595669)))

(declare-fun b!1347254 () Bool)

(declare-fun lt!595670 () Unit!44083)

(assert (=> b!1347254 (= e!766576 lt!595670)))

(assert (=> b!1347254 (= lt!595670 (lemmaContainsKeyImpliesGetValueByKeyDefined!485 (toList!11057 (+!4812 lt!595610 (tuple2!24415 lt!595595 zeroValue!1245))) lt!595607))))

(assert (=> b!1347254 (isDefined!525 (getValueByKey!722 (toList!11057 (+!4812 lt!595610 (tuple2!24415 lt!595595 zeroValue!1245))) lt!595607))))

(declare-fun b!1347255 () Bool)

(declare-fun Unit!44089 () Unit!44083)

(assert (=> b!1347255 (= e!766576 Unit!44089)))

(declare-fun b!1347256 () Bool)

(assert (=> b!1347256 (= e!766575 (isDefined!525 (getValueByKey!722 (toList!11057 (+!4812 lt!595610 (tuple2!24415 lt!595595 zeroValue!1245))) lt!595607)))))

(assert (= (and d!144275 c!126311) b!1347254))

(assert (= (and d!144275 (not c!126311)) b!1347255))

(assert (= (and d!144275 (not res!894012)) b!1347256))

(declare-fun m!1234257 () Bool)

(assert (=> d!144275 m!1234257))

(declare-fun m!1234259 () Bool)

(assert (=> b!1347254 m!1234259))

(declare-fun m!1234261 () Bool)

(assert (=> b!1347254 m!1234261))

(assert (=> b!1347254 m!1234261))

(declare-fun m!1234263 () Bool)

(assert (=> b!1347254 m!1234263))

(assert (=> b!1347256 m!1234261))

(assert (=> b!1347256 m!1234261))

(assert (=> b!1347256 m!1234263))

(assert (=> b!1347118 d!144275))

(assert (=> b!1347118 d!144237))

(declare-fun d!144277 () Bool)

(declare-fun get!22449 (Option!773) V!55123)

(assert (=> d!144277 (= (apply!1072 (+!4812 lt!595606 (tuple2!24415 lt!595604 minValue!1245)) lt!595599) (get!22449 (getValueByKey!722 (toList!11057 (+!4812 lt!595606 (tuple2!24415 lt!595604 minValue!1245))) lt!595599)))))

(declare-fun bs!38609 () Bool)

(assert (= bs!38609 d!144277))

(declare-fun m!1234265 () Bool)

(assert (=> bs!38609 m!1234265))

(assert (=> bs!38609 m!1234265))

(declare-fun m!1234267 () Bool)

(assert (=> bs!38609 m!1234267))

(assert (=> b!1347118 d!144277))

(declare-fun d!144279 () Bool)

(declare-fun e!766577 () Bool)

(assert (=> d!144279 e!766577))

(declare-fun res!894014 () Bool)

(assert (=> d!144279 (=> (not res!894014) (not e!766577))))

(declare-fun lt!595674 () ListLongMap!22083)

(assert (=> d!144279 (= res!894014 (contains!9168 lt!595674 (_1!12217 (tuple2!24415 lt!595597 zeroValue!1245))))))

(declare-fun lt!595673 () List!31586)

(assert (=> d!144279 (= lt!595674 (ListLongMap!22084 lt!595673))))

(declare-fun lt!595671 () Unit!44083)

(declare-fun lt!595672 () Unit!44083)

(assert (=> d!144279 (= lt!595671 lt!595672)))

(assert (=> d!144279 (= (getValueByKey!722 lt!595673 (_1!12217 (tuple2!24415 lt!595597 zeroValue!1245))) (Some!772 (_2!12217 (tuple2!24415 lt!595597 zeroValue!1245))))))

(assert (=> d!144279 (= lt!595672 (lemmaContainsTupThenGetReturnValue!365 lt!595673 (_1!12217 (tuple2!24415 lt!595597 zeroValue!1245)) (_2!12217 (tuple2!24415 lt!595597 zeroValue!1245))))))

(assert (=> d!144279 (= lt!595673 (insertStrictlySorted!494 (toList!11057 lt!595602) (_1!12217 (tuple2!24415 lt!595597 zeroValue!1245)) (_2!12217 (tuple2!24415 lt!595597 zeroValue!1245))))))

(assert (=> d!144279 (= (+!4812 lt!595602 (tuple2!24415 lt!595597 zeroValue!1245)) lt!595674)))

(declare-fun b!1347257 () Bool)

(declare-fun res!894013 () Bool)

(assert (=> b!1347257 (=> (not res!894013) (not e!766577))))

(assert (=> b!1347257 (= res!894013 (= (getValueByKey!722 (toList!11057 lt!595674) (_1!12217 (tuple2!24415 lt!595597 zeroValue!1245))) (Some!772 (_2!12217 (tuple2!24415 lt!595597 zeroValue!1245)))))))

(declare-fun b!1347258 () Bool)

(assert (=> b!1347258 (= e!766577 (contains!9170 (toList!11057 lt!595674) (tuple2!24415 lt!595597 zeroValue!1245)))))

(assert (= (and d!144279 res!894014) b!1347257))

(assert (= (and b!1347257 res!894013) b!1347258))

(declare-fun m!1234269 () Bool)

(assert (=> d!144279 m!1234269))

(declare-fun m!1234271 () Bool)

(assert (=> d!144279 m!1234271))

(declare-fun m!1234273 () Bool)

(assert (=> d!144279 m!1234273))

(declare-fun m!1234275 () Bool)

(assert (=> d!144279 m!1234275))

(declare-fun m!1234277 () Bool)

(assert (=> b!1347257 m!1234277))

(declare-fun m!1234279 () Bool)

(assert (=> b!1347258 m!1234279))

(assert (=> b!1347118 d!144279))

(declare-fun d!144281 () Bool)

(assert (=> d!144281 (= (apply!1072 (+!4812 lt!595605 (tuple2!24415 lt!595593 minValue!1245)) lt!595594) (apply!1072 lt!595605 lt!595594))))

(declare-fun lt!595675 () Unit!44083)

(assert (=> d!144281 (= lt!595675 (choose!1982 lt!595605 lt!595593 minValue!1245 lt!595594))))

(declare-fun e!766578 () Bool)

(assert (=> d!144281 e!766578))

(declare-fun res!894015 () Bool)

(assert (=> d!144281 (=> (not res!894015) (not e!766578))))

(assert (=> d!144281 (= res!894015 (contains!9168 lt!595605 lt!595594))))

(assert (=> d!144281 (= (addApplyDifferent!575 lt!595605 lt!595593 minValue!1245 lt!595594) lt!595675)))

(declare-fun b!1347259 () Bool)

(assert (=> b!1347259 (= e!766578 (not (= lt!595594 lt!595593)))))

(assert (= (and d!144281 res!894015) b!1347259))

(declare-fun m!1234281 () Bool)

(assert (=> d!144281 m!1234281))

(assert (=> d!144281 m!1234077))

(assert (=> d!144281 m!1234077))

(assert (=> d!144281 m!1234079))

(declare-fun m!1234283 () Bool)

(assert (=> d!144281 m!1234283))

(assert (=> d!144281 m!1234091))

(assert (=> b!1347118 d!144281))

(declare-fun d!144283 () Bool)

(assert (=> d!144283 (= (apply!1072 lt!595606 lt!595599) (get!22449 (getValueByKey!722 (toList!11057 lt!595606) lt!595599)))))

(declare-fun bs!38610 () Bool)

(assert (= bs!38610 d!144283))

(declare-fun m!1234285 () Bool)

(assert (=> bs!38610 m!1234285))

(assert (=> bs!38610 m!1234285))

(declare-fun m!1234287 () Bool)

(assert (=> bs!38610 m!1234287))

(assert (=> b!1347118 d!144283))

(declare-fun d!144285 () Bool)

(assert (=> d!144285 (= (apply!1072 (+!4812 lt!595605 (tuple2!24415 lt!595593 minValue!1245)) lt!595594) (get!22449 (getValueByKey!722 (toList!11057 (+!4812 lt!595605 (tuple2!24415 lt!595593 minValue!1245))) lt!595594)))))

(declare-fun bs!38611 () Bool)

(assert (= bs!38611 d!144285))

(declare-fun m!1234289 () Bool)

(assert (=> bs!38611 m!1234289))

(assert (=> bs!38611 m!1234289))

(declare-fun m!1234291 () Bool)

(assert (=> bs!38611 m!1234291))

(assert (=> b!1347118 d!144285))

(declare-fun d!144287 () Bool)

(assert (=> d!144287 (= (apply!1072 (+!4812 lt!595602 (tuple2!24415 lt!595597 zeroValue!1245)) lt!595590) (apply!1072 lt!595602 lt!595590))))

(declare-fun lt!595676 () Unit!44083)

(assert (=> d!144287 (= lt!595676 (choose!1982 lt!595602 lt!595597 zeroValue!1245 lt!595590))))

(declare-fun e!766579 () Bool)

(assert (=> d!144287 e!766579))

(declare-fun res!894016 () Bool)

(assert (=> d!144287 (=> (not res!894016) (not e!766579))))

(assert (=> d!144287 (= res!894016 (contains!9168 lt!595602 lt!595590))))

(assert (=> d!144287 (= (addApplyDifferent!575 lt!595602 lt!595597 zeroValue!1245 lt!595590) lt!595676)))

(declare-fun b!1347260 () Bool)

(assert (=> b!1347260 (= e!766579 (not (= lt!595590 lt!595597)))))

(assert (= (and d!144287 res!894016) b!1347260))

(declare-fun m!1234293 () Bool)

(assert (=> d!144287 m!1234293))

(assert (=> d!144287 m!1234087))

(assert (=> d!144287 m!1234087))

(assert (=> d!144287 m!1234089))

(declare-fun m!1234295 () Bool)

(assert (=> d!144287 m!1234295))

(assert (=> d!144287 m!1234085))

(assert (=> b!1347118 d!144287))

(declare-fun d!144289 () Bool)

(assert (=> d!144289 (= (apply!1072 lt!595602 lt!595590) (get!22449 (getValueByKey!722 (toList!11057 lt!595602) lt!595590)))))

(declare-fun bs!38612 () Bool)

(assert (= bs!38612 d!144289))

(declare-fun m!1234297 () Bool)

(assert (=> bs!38612 m!1234297))

(assert (=> bs!38612 m!1234297))

(declare-fun m!1234299 () Bool)

(assert (=> bs!38612 m!1234299))

(assert (=> b!1347118 d!144289))

(declare-fun d!144291 () Bool)

(assert (=> d!144291 (contains!9168 (+!4812 lt!595610 (tuple2!24415 lt!595595 zeroValue!1245)) lt!595607)))

(declare-fun lt!595679 () Unit!44083)

(declare-fun choose!1983 (ListLongMap!22083 (_ BitVec 64) V!55123 (_ BitVec 64)) Unit!44083)

(assert (=> d!144291 (= lt!595679 (choose!1983 lt!595610 lt!595595 zeroValue!1245 lt!595607))))

(assert (=> d!144291 (contains!9168 lt!595610 lt!595607)))

(assert (=> d!144291 (= (addStillContains!1216 lt!595610 lt!595595 zeroValue!1245 lt!595607) lt!595679)))

(declare-fun bs!38613 () Bool)

(assert (= bs!38613 d!144291))

(assert (=> bs!38613 m!1234097))

(assert (=> bs!38613 m!1234097))

(assert (=> bs!38613 m!1234099))

(declare-fun m!1234301 () Bool)

(assert (=> bs!38613 m!1234301))

(declare-fun m!1234303 () Bool)

(assert (=> bs!38613 m!1234303))

(assert (=> b!1347118 d!144291))

(declare-fun d!144293 () Bool)

(assert (=> d!144293 (= (apply!1072 lt!595605 lt!595594) (get!22449 (getValueByKey!722 (toList!11057 lt!595605) lt!595594)))))

(declare-fun bs!38614 () Bool)

(assert (= bs!38614 d!144293))

(declare-fun m!1234305 () Bool)

(assert (=> bs!38614 m!1234305))

(assert (=> bs!38614 m!1234305))

(declare-fun m!1234307 () Bool)

(assert (=> bs!38614 m!1234307))

(assert (=> b!1347118 d!144293))

(declare-fun d!144295 () Bool)

(assert (=> d!144295 (= (apply!1072 (+!4812 lt!595602 (tuple2!24415 lt!595597 zeroValue!1245)) lt!595590) (get!22449 (getValueByKey!722 (toList!11057 (+!4812 lt!595602 (tuple2!24415 lt!595597 zeroValue!1245))) lt!595590)))))

(declare-fun bs!38615 () Bool)

(assert (= bs!38615 d!144295))

(declare-fun m!1234309 () Bool)

(assert (=> bs!38615 m!1234309))

(assert (=> bs!38615 m!1234309))

(declare-fun m!1234311 () Bool)

(assert (=> bs!38615 m!1234311))

(assert (=> b!1347118 d!144295))

(declare-fun d!144297 () Bool)

(assert (=> d!144297 (= (apply!1072 lt!595609 (select (arr!44361 _keys!1571) from!1960)) (get!22449 (getValueByKey!722 (toList!11057 lt!595609) (select (arr!44361 _keys!1571) from!1960))))))

(declare-fun bs!38616 () Bool)

(assert (= bs!38616 d!144297))

(assert (=> bs!38616 m!1233917))

(declare-fun m!1234313 () Bool)

(assert (=> bs!38616 m!1234313))

(assert (=> bs!38616 m!1234313))

(declare-fun m!1234315 () Bool)

(assert (=> bs!38616 m!1234315))

(assert (=> b!1347117 d!144297))

(assert (=> b!1347117 d!144213))

(declare-fun b!1347262 () Bool)

(declare-fun e!766582 () Bool)

(declare-fun call!65074 () Bool)

(assert (=> b!1347262 (= e!766582 call!65074)))

(declare-fun b!1347263 () Bool)

(assert (=> b!1347263 (= e!766582 call!65074)))

(declare-fun bm!65071 () Bool)

(declare-fun c!126312 () Bool)

(assert (=> bm!65071 (= call!65074 (arrayNoDuplicates!0 _keys!1571 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!126312 (Cons!31581 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!126261 (Cons!31581 (select (arr!44361 _keys!1571) #b00000000000000000000000000000000) Nil!31582) Nil!31582)) (ite c!126261 (Cons!31581 (select (arr!44361 _keys!1571) #b00000000000000000000000000000000) Nil!31582) Nil!31582))))))

(declare-fun d!144299 () Bool)

(declare-fun res!894018 () Bool)

(declare-fun e!766583 () Bool)

(assert (=> d!144299 (=> res!894018 e!766583)))

(assert (=> d!144299 (= res!894018 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!44912 _keys!1571)))))

(assert (=> d!144299 (= (arrayNoDuplicates!0 _keys!1571 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!126261 (Cons!31581 (select (arr!44361 _keys!1571) #b00000000000000000000000000000000) Nil!31582) Nil!31582)) e!766583)))

(declare-fun b!1347264 () Bool)

(declare-fun e!766580 () Bool)

(assert (=> b!1347264 (= e!766580 e!766582)))

(assert (=> b!1347264 (= c!126312 (validKeyInArray!0 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1347265 () Bool)

(assert (=> b!1347265 (= e!766583 e!766580)))

(declare-fun res!894017 () Bool)

(assert (=> b!1347265 (=> (not res!894017) (not e!766580))))

(declare-fun e!766581 () Bool)

(assert (=> b!1347265 (= res!894017 (not e!766581))))

(declare-fun res!894019 () Bool)

(assert (=> b!1347265 (=> (not res!894019) (not e!766581))))

(assert (=> b!1347265 (= res!894019 (validKeyInArray!0 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1347266 () Bool)

(assert (=> b!1347266 (= e!766581 (contains!9171 (ite c!126261 (Cons!31581 (select (arr!44361 _keys!1571) #b00000000000000000000000000000000) Nil!31582) Nil!31582) (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!144299 (not res!894018)) b!1347265))

(assert (= (and b!1347265 res!894019) b!1347266))

(assert (= (and b!1347265 res!894017) b!1347264))

(assert (= (and b!1347264 c!126312) b!1347262))

(assert (= (and b!1347264 (not c!126312)) b!1347263))

(assert (= (or b!1347262 b!1347263) bm!65071))

(declare-fun m!1234317 () Bool)

(assert (=> bm!65071 m!1234317))

(declare-fun m!1234319 () Bool)

(assert (=> bm!65071 m!1234319))

(assert (=> b!1347264 m!1234317))

(assert (=> b!1347264 m!1234317))

(declare-fun m!1234321 () Bool)

(assert (=> b!1347264 m!1234321))

(assert (=> b!1347265 m!1234317))

(assert (=> b!1347265 m!1234317))

(assert (=> b!1347265 m!1234321))

(assert (=> b!1347266 m!1234317))

(assert (=> b!1347266 m!1234317))

(declare-fun m!1234323 () Bool)

(assert (=> b!1347266 m!1234323))

(assert (=> bm!65036 d!144299))

(declare-fun d!144301 () Bool)

(declare-fun e!766584 () Bool)

(assert (=> d!144301 e!766584))

(declare-fun res!894020 () Bool)

(assert (=> d!144301 (=> res!894020 e!766584)))

(declare-fun lt!595682 () Bool)

(assert (=> d!144301 (= res!894020 (not lt!595682))))

(declare-fun lt!595681 () Bool)

(assert (=> d!144301 (= lt!595682 lt!595681)))

(declare-fun lt!595680 () Unit!44083)

(declare-fun e!766585 () Unit!44083)

(assert (=> d!144301 (= lt!595680 e!766585)))

(declare-fun c!126313 () Bool)

(assert (=> d!144301 (= c!126313 lt!595681)))

(assert (=> d!144301 (= lt!595681 (containsKey!740 (toList!11057 lt!595504) (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!144301 (= (contains!9168 lt!595504 (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!595682)))

(declare-fun b!1347267 () Bool)

(declare-fun lt!595683 () Unit!44083)

(assert (=> b!1347267 (= e!766585 lt!595683)))

(assert (=> b!1347267 (= lt!595683 (lemmaContainsKeyImpliesGetValueByKeyDefined!485 (toList!11057 lt!595504) (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!1347267 (isDefined!525 (getValueByKey!722 (toList!11057 lt!595504) (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1347268 () Bool)

(declare-fun Unit!44090 () Unit!44083)

(assert (=> b!1347268 (= e!766585 Unit!44090)))

(declare-fun b!1347269 () Bool)

(assert (=> b!1347269 (= e!766584 (isDefined!525 (getValueByKey!722 (toList!11057 lt!595504) (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!144301 c!126313) b!1347267))

(assert (= (and d!144301 (not c!126313)) b!1347268))

(assert (= (and d!144301 (not res!894020)) b!1347269))

(declare-fun m!1234325 () Bool)

(assert (=> d!144301 m!1234325))

(declare-fun m!1234327 () Bool)

(assert (=> b!1347267 m!1234327))

(assert (=> b!1347267 m!1233993))

(assert (=> b!1347267 m!1233993))

(declare-fun m!1234329 () Bool)

(assert (=> b!1347267 m!1234329))

(assert (=> b!1347269 m!1233993))

(assert (=> b!1347269 m!1233993))

(assert (=> b!1347269 m!1234329))

(assert (=> d!144211 d!144301))

(declare-fun d!144303 () Bool)

(declare-fun c!126314 () Bool)

(assert (=> d!144303 (= c!126314 (and ((_ is Cons!31582) lt!595503) (= (_1!12217 (h!32791 lt!595503)) (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!766586 () Option!773)

(assert (=> d!144303 (= (getValueByKey!722 lt!595503 (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!766586)))

(declare-fun b!1347273 () Bool)

(declare-fun e!766587 () Option!773)

(assert (=> b!1347273 (= e!766587 None!771)))

(declare-fun b!1347270 () Bool)

(assert (=> b!1347270 (= e!766586 (Some!772 (_2!12217 (h!32791 lt!595503))))))

(declare-fun b!1347271 () Bool)

(assert (=> b!1347271 (= e!766586 e!766587)))

(declare-fun c!126315 () Bool)

(assert (=> b!1347271 (= c!126315 (and ((_ is Cons!31582) lt!595503) (not (= (_1!12217 (h!32791 lt!595503)) (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!1347272 () Bool)

(assert (=> b!1347272 (= e!766587 (getValueByKey!722 (t!46187 lt!595503) (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!144303 c!126314) b!1347270))

(assert (= (and d!144303 (not c!126314)) b!1347271))

(assert (= (and b!1347271 c!126315) b!1347272))

(assert (= (and b!1347271 (not c!126315)) b!1347273))

(declare-fun m!1234331 () Bool)

(assert (=> b!1347272 m!1234331))

(assert (=> d!144211 d!144303))

(declare-fun d!144305 () Bool)

(assert (=> d!144305 (= (getValueByKey!722 lt!595503 (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!772 (_2!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!595684 () Unit!44083)

(assert (=> d!144305 (= lt!595684 (choose!1980 lt!595503 (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!766588 () Bool)

(assert (=> d!144305 e!766588))

(declare-fun res!894021 () Bool)

(assert (=> d!144305 (=> (not res!894021) (not e!766588))))

(assert (=> d!144305 (= res!894021 (isStrictlySorted!878 lt!595503))))

(assert (=> d!144305 (= (lemmaContainsTupThenGetReturnValue!365 lt!595503 (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!595684)))

(declare-fun b!1347274 () Bool)

(declare-fun res!894022 () Bool)

(assert (=> b!1347274 (=> (not res!894022) (not e!766588))))

(assert (=> b!1347274 (= res!894022 (containsKey!740 lt!595503 (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1347275 () Bool)

(assert (=> b!1347275 (= e!766588 (contains!9170 lt!595503 (tuple2!24415 (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!144305 res!894021) b!1347274))

(assert (= (and b!1347274 res!894022) b!1347275))

(assert (=> d!144305 m!1233987))

(declare-fun m!1234333 () Bool)

(assert (=> d!144305 m!1234333))

(declare-fun m!1234335 () Bool)

(assert (=> d!144305 m!1234335))

(declare-fun m!1234337 () Bool)

(assert (=> b!1347274 m!1234337))

(declare-fun m!1234339 () Bool)

(assert (=> b!1347275 m!1234339))

(assert (=> d!144211 d!144305))

(declare-fun b!1347276 () Bool)

(declare-fun e!766590 () List!31586)

(declare-fun call!65077 () List!31586)

(assert (=> b!1347276 (= e!766590 call!65077)))

(declare-fun c!126316 () Bool)

(declare-fun b!1347277 () Bool)

(assert (=> b!1347277 (= c!126316 (and ((_ is Cons!31582) (toList!11057 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))) (bvsgt (_1!12217 (h!32791 (toList!11057 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)))) (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!766592 () List!31586)

(assert (=> b!1347277 (= e!766592 e!766590)))

(declare-fun bm!65072 () Bool)

(declare-fun call!65075 () List!31586)

(assert (=> bm!65072 (= call!65077 call!65075)))

(declare-fun lt!595685 () List!31586)

(declare-fun e!766591 () Bool)

(declare-fun b!1347278 () Bool)

(assert (=> b!1347278 (= e!766591 (contains!9170 lt!595685 (tuple2!24415 (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1347279 () Bool)

(assert (=> b!1347279 (= e!766592 call!65075)))

(declare-fun b!1347280 () Bool)

(declare-fun e!766593 () List!31586)

(assert (=> b!1347280 (= e!766593 e!766592)))

(declare-fun c!126319 () Bool)

(assert (=> b!1347280 (= c!126319 (and ((_ is Cons!31582) (toList!11057 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))) (= (_1!12217 (h!32791 (toList!11057 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)))) (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!766589 () List!31586)

(declare-fun b!1347281 () Bool)

(assert (=> b!1347281 (= e!766589 (insertStrictlySorted!494 (t!46187 (toList!11057 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))) (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1347283 () Bool)

(declare-fun call!65076 () List!31586)

(assert (=> b!1347283 (= e!766593 call!65076)))

(declare-fun c!126318 () Bool)

(declare-fun bm!65073 () Bool)

(assert (=> bm!65073 (= call!65076 ($colon$colon!674 e!766589 (ite c!126318 (h!32791 (toList!11057 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))) (tuple2!24415 (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun c!126317 () Bool)

(assert (=> bm!65073 (= c!126317 c!126318)))

(declare-fun b!1347284 () Bool)

(assert (=> b!1347284 (= e!766590 call!65077)))

(declare-fun b!1347285 () Bool)

(assert (=> b!1347285 (= e!766589 (ite c!126319 (t!46187 (toList!11057 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))) (ite c!126316 (Cons!31582 (h!32791 (toList!11057 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))) (t!46187 (toList!11057 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)))) Nil!31583)))))

(declare-fun bm!65074 () Bool)

(assert (=> bm!65074 (= call!65075 call!65076)))

(declare-fun b!1347282 () Bool)

(declare-fun res!894024 () Bool)

(assert (=> b!1347282 (=> (not res!894024) (not e!766591))))

(assert (=> b!1347282 (= res!894024 (containsKey!740 lt!595685 (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun d!144307 () Bool)

(assert (=> d!144307 e!766591))

(declare-fun res!894023 () Bool)

(assert (=> d!144307 (=> (not res!894023) (not e!766591))))

(assert (=> d!144307 (= res!894023 (isStrictlySorted!878 lt!595685))))

(assert (=> d!144307 (= lt!595685 e!766593)))

(assert (=> d!144307 (= c!126318 (and ((_ is Cons!31582) (toList!11057 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))) (bvslt (_1!12217 (h!32791 (toList!11057 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)))) (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!144307 (isStrictlySorted!878 (toList!11057 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)))))

(assert (=> d!144307 (= (insertStrictlySorted!494 (toList!11057 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!595685)))

(assert (= (and d!144307 c!126318) b!1347283))

(assert (= (and d!144307 (not c!126318)) b!1347280))

(assert (= (and b!1347280 c!126319) b!1347279))

(assert (= (and b!1347280 (not c!126319)) b!1347277))

(assert (= (and b!1347277 c!126316) b!1347276))

(assert (= (and b!1347277 (not c!126316)) b!1347284))

(assert (= (or b!1347276 b!1347284) bm!65072))

(assert (= (or b!1347279 bm!65072) bm!65074))

(assert (= (or b!1347283 bm!65074) bm!65073))

(assert (= (and bm!65073 c!126317) b!1347281))

(assert (= (and bm!65073 (not c!126317)) b!1347285))

(assert (= (and d!144307 res!894023) b!1347282))

(assert (= (and b!1347282 res!894024) b!1347278))

(declare-fun m!1234341 () Bool)

(assert (=> bm!65073 m!1234341))

(declare-fun m!1234343 () Bool)

(assert (=> b!1347282 m!1234343))

(declare-fun m!1234345 () Bool)

(assert (=> b!1347278 m!1234345))

(declare-fun m!1234347 () Bool)

(assert (=> d!144307 m!1234347))

(declare-fun m!1234349 () Bool)

(assert (=> d!144307 m!1234349))

(declare-fun m!1234351 () Bool)

(assert (=> b!1347281 m!1234351))

(assert (=> d!144211 d!144307))

(declare-fun d!144309 () Bool)

(declare-fun e!766594 () Bool)

(assert (=> d!144309 e!766594))

(declare-fun res!894025 () Bool)

(assert (=> d!144309 (=> res!894025 e!766594)))

(declare-fun lt!595688 () Bool)

(assert (=> d!144309 (= res!894025 (not lt!595688))))

(declare-fun lt!595687 () Bool)

(assert (=> d!144309 (= lt!595688 lt!595687)))

(declare-fun lt!595686 () Unit!44083)

(declare-fun e!766595 () Unit!44083)

(assert (=> d!144309 (= lt!595686 e!766595)))

(declare-fun c!126320 () Bool)

(assert (=> d!144309 (= c!126320 lt!595687)))

(assert (=> d!144309 (= lt!595687 (containsKey!740 (toList!11057 lt!595535) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!144309 (= (contains!9168 lt!595535 #b1000000000000000000000000000000000000000000000000000000000000000) lt!595688)))

(declare-fun b!1347286 () Bool)

(declare-fun lt!595689 () Unit!44083)

(assert (=> b!1347286 (= e!766595 lt!595689)))

(assert (=> b!1347286 (= lt!595689 (lemmaContainsKeyImpliesGetValueByKeyDefined!485 (toList!11057 lt!595535) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1347286 (isDefined!525 (getValueByKey!722 (toList!11057 lt!595535) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1347287 () Bool)

(declare-fun Unit!44091 () Unit!44083)

(assert (=> b!1347287 (= e!766595 Unit!44091)))

(declare-fun b!1347288 () Bool)

(assert (=> b!1347288 (= e!766594 (isDefined!525 (getValueByKey!722 (toList!11057 lt!595535) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144309 c!126320) b!1347286))

(assert (= (and d!144309 (not c!126320)) b!1347287))

(assert (= (and d!144309 (not res!894025)) b!1347288))

(declare-fun m!1234353 () Bool)

(assert (=> d!144309 m!1234353))

(declare-fun m!1234355 () Bool)

(assert (=> b!1347286 m!1234355))

(declare-fun m!1234357 () Bool)

(assert (=> b!1347286 m!1234357))

(assert (=> b!1347286 m!1234357))

(declare-fun m!1234359 () Bool)

(assert (=> b!1347286 m!1234359))

(assert (=> b!1347288 m!1234357))

(assert (=> b!1347288 m!1234357))

(assert (=> b!1347288 m!1234359))

(assert (=> b!1347052 d!144309))

(declare-fun d!144311 () Bool)

(assert (=> d!144311 (= (validKeyInArray!0 (select (arr!44361 _keys!1571) #b00000000000000000000000000000000)) (and (not (= (select (arr!44361 _keys!1571) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44361 _keys!1571) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1347066 d!144311))

(assert (=> b!1347065 d!144311))

(declare-fun d!144313 () Bool)

(declare-fun res!894026 () Bool)

(declare-fun e!766598 () Bool)

(assert (=> d!144313 (=> res!894026 e!766598)))

(assert (=> d!144313 (= res!894026 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!44912 _keys!1571)))))

(assert (=> d!144313 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1571 mask!1977) e!766598)))

(declare-fun b!1347289 () Bool)

(declare-fun e!766597 () Bool)

(declare-fun call!65078 () Bool)

(assert (=> b!1347289 (= e!766597 call!65078)))

(declare-fun b!1347290 () Bool)

(assert (=> b!1347290 (= e!766598 e!766597)))

(declare-fun c!126321 () Bool)

(assert (=> b!1347290 (= c!126321 (validKeyInArray!0 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1347291 () Bool)

(declare-fun e!766596 () Bool)

(assert (=> b!1347291 (= e!766596 call!65078)))

(declare-fun b!1347292 () Bool)

(assert (=> b!1347292 (= e!766597 e!766596)))

(declare-fun lt!595692 () (_ BitVec 64))

(assert (=> b!1347292 (= lt!595692 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!595690 () Unit!44083)

(assert (=> b!1347292 (= lt!595690 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1571 lt!595692 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1347292 (arrayContainsKey!0 _keys!1571 lt!595692 #b00000000000000000000000000000000)))

(declare-fun lt!595691 () Unit!44083)

(assert (=> b!1347292 (= lt!595691 lt!595690)))

(declare-fun res!894027 () Bool)

(assert (=> b!1347292 (= res!894027 (= (seekEntryOrOpen!0 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1571 mask!1977) (Found!10053 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1347292 (=> (not res!894027) (not e!766596))))

(declare-fun bm!65075 () Bool)

(assert (=> bm!65075 (= call!65078 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1571 mask!1977))))

(assert (= (and d!144313 (not res!894026)) b!1347290))

(assert (= (and b!1347290 c!126321) b!1347292))

(assert (= (and b!1347290 (not c!126321)) b!1347289))

(assert (= (and b!1347292 res!894027) b!1347291))

(assert (= (or b!1347291 b!1347289) bm!65075))

(assert (=> b!1347290 m!1234317))

(assert (=> b!1347290 m!1234317))

(assert (=> b!1347290 m!1234321))

(assert (=> b!1347292 m!1234317))

(declare-fun m!1234361 () Bool)

(assert (=> b!1347292 m!1234361))

(declare-fun m!1234363 () Bool)

(assert (=> b!1347292 m!1234363))

(assert (=> b!1347292 m!1234317))

(declare-fun m!1234365 () Bool)

(assert (=> b!1347292 m!1234365))

(declare-fun m!1234367 () Bool)

(assert (=> bm!65075 m!1234367))

(assert (=> bm!65060 d!144313))

(declare-fun d!144315 () Bool)

(assert (=> d!144315 (= (get!22447 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)) (v!21478 (select (arr!44362 _values!1303) from!1960)))))

(assert (=> b!1347004 d!144315))

(declare-fun d!144317 () Bool)

(declare-fun e!766599 () Bool)

(assert (=> d!144317 e!766599))

(declare-fun res!894029 () Bool)

(assert (=> d!144317 (=> (not res!894029) (not e!766599))))

(declare-fun lt!595696 () ListLongMap!22083)

(assert (=> d!144317 (= res!894029 (contains!9168 lt!595696 (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22445 (select (arr!44362 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!595695 () List!31586)

(assert (=> d!144317 (= lt!595696 (ListLongMap!22084 lt!595695))))

(declare-fun lt!595693 () Unit!44083)

(declare-fun lt!595694 () Unit!44083)

(assert (=> d!144317 (= lt!595693 lt!595694)))

(assert (=> d!144317 (= (getValueByKey!722 lt!595695 (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22445 (select (arr!44362 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!772 (_2!12217 (tuple2!24415 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22445 (select (arr!44362 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!144317 (= lt!595694 (lemmaContainsTupThenGetReturnValue!365 lt!595695 (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22445 (select (arr!44362 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12217 (tuple2!24415 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22445 (select (arr!44362 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!144317 (= lt!595695 (insertStrictlySorted!494 (toList!11057 call!65036) (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22445 (select (arr!44362 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12217 (tuple2!24415 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22445 (select (arr!44362 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!144317 (= (+!4812 call!65036 (tuple2!24415 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22445 (select (arr!44362 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!595696)))

(declare-fun b!1347293 () Bool)

(declare-fun res!894028 () Bool)

(assert (=> b!1347293 (=> (not res!894028) (not e!766599))))

(assert (=> b!1347293 (= res!894028 (= (getValueByKey!722 (toList!11057 lt!595696) (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22445 (select (arr!44362 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!772 (_2!12217 (tuple2!24415 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22445 (select (arr!44362 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1347294 () Bool)

(assert (=> b!1347294 (= e!766599 (contains!9170 (toList!11057 lt!595696) (tuple2!24415 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22445 (select (arr!44362 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!144317 res!894029) b!1347293))

(assert (= (and b!1347293 res!894028) b!1347294))

(declare-fun m!1234369 () Bool)

(assert (=> d!144317 m!1234369))

(declare-fun m!1234371 () Bool)

(assert (=> d!144317 m!1234371))

(declare-fun m!1234373 () Bool)

(assert (=> d!144317 m!1234373))

(declare-fun m!1234375 () Bool)

(assert (=> d!144317 m!1234375))

(declare-fun m!1234377 () Bool)

(assert (=> b!1347293 m!1234377))

(declare-fun m!1234379 () Bool)

(assert (=> b!1347294 m!1234379))

(assert (=> b!1347048 d!144317))

(declare-fun d!144319 () Bool)

(assert (=> d!144319 (not (contains!9168 (+!4812 lt!595538 (tuple2!24415 lt!595539 lt!595540)) lt!595536))))

(declare-fun lt!595699 () Unit!44083)

(declare-fun choose!1984 (ListLongMap!22083 (_ BitVec 64) V!55123 (_ BitVec 64)) Unit!44083)

(assert (=> d!144319 (= lt!595699 (choose!1984 lt!595538 lt!595539 lt!595540 lt!595536))))

(declare-fun e!766602 () Bool)

(assert (=> d!144319 e!766602))

(declare-fun res!894032 () Bool)

(assert (=> d!144319 (=> (not res!894032) (not e!766602))))

(assert (=> d!144319 (= res!894032 (not (contains!9168 lt!595538 lt!595536)))))

(assert (=> d!144319 (= (addStillNotContains!510 lt!595538 lt!595539 lt!595540 lt!595536) lt!595699)))

(declare-fun b!1347298 () Bool)

(assert (=> b!1347298 (= e!766602 (not (= lt!595539 lt!595536)))))

(assert (= (and d!144319 res!894032) b!1347298))

(assert (=> d!144319 m!1234043))

(assert (=> d!144319 m!1234043))

(assert (=> d!144319 m!1234045))

(declare-fun m!1234381 () Bool)

(assert (=> d!144319 m!1234381))

(declare-fun m!1234383 () Bool)

(assert (=> d!144319 m!1234383))

(assert (=> b!1347048 d!144319))

(declare-fun d!144321 () Bool)

(declare-fun c!126322 () Bool)

(assert (=> d!144321 (= c!126322 ((_ is ValueCellFull!17859) (select (arr!44362 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960))))))

(declare-fun e!766603 () V!55123)

(assert (=> d!144321 (= (get!22445 (select (arr!44362 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)) e!766603)))

(declare-fun b!1347299 () Bool)

(assert (=> b!1347299 (= e!766603 (get!22447 (select (arr!44362 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1347300 () Bool)

(assert (=> b!1347300 (= e!766603 (get!22448 (select (arr!44362 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144321 c!126322) b!1347299))

(assert (= (and d!144321 (not c!126322)) b!1347300))

(assert (=> b!1347299 m!1234033))

(assert (=> b!1347299 m!1233931))

(declare-fun m!1234385 () Bool)

(assert (=> b!1347299 m!1234385))

(assert (=> b!1347300 m!1234033))

(assert (=> b!1347300 m!1233931))

(declare-fun m!1234387 () Bool)

(assert (=> b!1347300 m!1234387))

(assert (=> b!1347048 d!144321))

(declare-fun d!144323 () Bool)

(declare-fun e!766604 () Bool)

(assert (=> d!144323 e!766604))

(declare-fun res!894034 () Bool)

(assert (=> d!144323 (=> (not res!894034) (not e!766604))))

(declare-fun lt!595703 () ListLongMap!22083)

(assert (=> d!144323 (= res!894034 (contains!9168 lt!595703 (_1!12217 (tuple2!24415 lt!595539 lt!595540))))))

(declare-fun lt!595702 () List!31586)

(assert (=> d!144323 (= lt!595703 (ListLongMap!22084 lt!595702))))

(declare-fun lt!595700 () Unit!44083)

(declare-fun lt!595701 () Unit!44083)

(assert (=> d!144323 (= lt!595700 lt!595701)))

(assert (=> d!144323 (= (getValueByKey!722 lt!595702 (_1!12217 (tuple2!24415 lt!595539 lt!595540))) (Some!772 (_2!12217 (tuple2!24415 lt!595539 lt!595540))))))

(assert (=> d!144323 (= lt!595701 (lemmaContainsTupThenGetReturnValue!365 lt!595702 (_1!12217 (tuple2!24415 lt!595539 lt!595540)) (_2!12217 (tuple2!24415 lt!595539 lt!595540))))))

(assert (=> d!144323 (= lt!595702 (insertStrictlySorted!494 (toList!11057 lt!595538) (_1!12217 (tuple2!24415 lt!595539 lt!595540)) (_2!12217 (tuple2!24415 lt!595539 lt!595540))))))

(assert (=> d!144323 (= (+!4812 lt!595538 (tuple2!24415 lt!595539 lt!595540)) lt!595703)))

(declare-fun b!1347301 () Bool)

(declare-fun res!894033 () Bool)

(assert (=> b!1347301 (=> (not res!894033) (not e!766604))))

(assert (=> b!1347301 (= res!894033 (= (getValueByKey!722 (toList!11057 lt!595703) (_1!12217 (tuple2!24415 lt!595539 lt!595540))) (Some!772 (_2!12217 (tuple2!24415 lt!595539 lt!595540)))))))

(declare-fun b!1347302 () Bool)

(assert (=> b!1347302 (= e!766604 (contains!9170 (toList!11057 lt!595703) (tuple2!24415 lt!595539 lt!595540)))))

(assert (= (and d!144323 res!894034) b!1347301))

(assert (= (and b!1347301 res!894033) b!1347302))

(declare-fun m!1234389 () Bool)

(assert (=> d!144323 m!1234389))

(declare-fun m!1234391 () Bool)

(assert (=> d!144323 m!1234391))

(declare-fun m!1234393 () Bool)

(assert (=> d!144323 m!1234393))

(declare-fun m!1234395 () Bool)

(assert (=> d!144323 m!1234395))

(declare-fun m!1234397 () Bool)

(assert (=> b!1347301 m!1234397))

(declare-fun m!1234399 () Bool)

(assert (=> b!1347302 m!1234399))

(assert (=> b!1347048 d!144323))

(declare-fun d!144325 () Bool)

(declare-fun e!766605 () Bool)

(assert (=> d!144325 e!766605))

(declare-fun res!894035 () Bool)

(assert (=> d!144325 (=> res!894035 e!766605)))

(declare-fun lt!595706 () Bool)

(assert (=> d!144325 (= res!894035 (not lt!595706))))

(declare-fun lt!595705 () Bool)

(assert (=> d!144325 (= lt!595706 lt!595705)))

(declare-fun lt!595704 () Unit!44083)

(declare-fun e!766606 () Unit!44083)

(assert (=> d!144325 (= lt!595704 e!766606)))

(declare-fun c!126323 () Bool)

(assert (=> d!144325 (= c!126323 lt!595705)))

(assert (=> d!144325 (= lt!595705 (containsKey!740 (toList!11057 (+!4812 lt!595538 (tuple2!24415 lt!595539 lt!595540))) lt!595536))))

(assert (=> d!144325 (= (contains!9168 (+!4812 lt!595538 (tuple2!24415 lt!595539 lt!595540)) lt!595536) lt!595706)))

(declare-fun b!1347303 () Bool)

(declare-fun lt!595707 () Unit!44083)

(assert (=> b!1347303 (= e!766606 lt!595707)))

(assert (=> b!1347303 (= lt!595707 (lemmaContainsKeyImpliesGetValueByKeyDefined!485 (toList!11057 (+!4812 lt!595538 (tuple2!24415 lt!595539 lt!595540))) lt!595536))))

(assert (=> b!1347303 (isDefined!525 (getValueByKey!722 (toList!11057 (+!4812 lt!595538 (tuple2!24415 lt!595539 lt!595540))) lt!595536))))

(declare-fun b!1347304 () Bool)

(declare-fun Unit!44092 () Unit!44083)

(assert (=> b!1347304 (= e!766606 Unit!44092)))

(declare-fun b!1347305 () Bool)

(assert (=> b!1347305 (= e!766605 (isDefined!525 (getValueByKey!722 (toList!11057 (+!4812 lt!595538 (tuple2!24415 lt!595539 lt!595540))) lt!595536)))))

(assert (= (and d!144325 c!126323) b!1347303))

(assert (= (and d!144325 (not c!126323)) b!1347304))

(assert (= (and d!144325 (not res!894035)) b!1347305))

(declare-fun m!1234401 () Bool)

(assert (=> d!144325 m!1234401))

(declare-fun m!1234403 () Bool)

(assert (=> b!1347303 m!1234403))

(declare-fun m!1234405 () Bool)

(assert (=> b!1347303 m!1234405))

(assert (=> b!1347303 m!1234405))

(declare-fun m!1234407 () Bool)

(assert (=> b!1347303 m!1234407))

(assert (=> b!1347305 m!1234405))

(assert (=> b!1347305 m!1234405))

(assert (=> b!1347305 m!1234407))

(assert (=> b!1347048 d!144325))

(declare-fun d!144327 () Bool)

(assert (=> d!144327 (= (get!22448 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1347005 d!144327))

(declare-fun d!144329 () Bool)

(assert (=> d!144329 (isDefined!525 (getValueByKey!722 (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) k0!1142))))

(declare-fun lt!595708 () Unit!44083)

(assert (=> d!144329 (= lt!595708 (choose!1981 (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) k0!1142))))

(declare-fun e!766607 () Bool)

(assert (=> d!144329 e!766607))

(declare-fun res!894036 () Bool)

(assert (=> d!144329 (=> (not res!894036) (not e!766607))))

(assert (=> d!144329 (= res!894036 (isStrictlySorted!878 (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))))))

(assert (=> d!144329 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!485 (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) k0!1142) lt!595708)))

(declare-fun b!1347306 () Bool)

(assert (=> b!1347306 (= e!766607 (containsKey!740 (toList!11057 (+!4812 (+!4812 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) k0!1142))))

(assert (= (and d!144329 res!894036) b!1347306))

(assert (=> d!144329 m!1234017))

(assert (=> d!144329 m!1234017))

(assert (=> d!144329 m!1234019))

(declare-fun m!1234409 () Bool)

(assert (=> d!144329 m!1234409))

(declare-fun m!1234411 () Bool)

(assert (=> d!144329 m!1234411))

(assert (=> b!1347306 m!1234013))

(assert (=> b!1347014 d!144329))

(assert (=> b!1347014 d!144257))

(assert (=> b!1347014 d!144259))

(declare-fun d!144331 () Bool)

(assert (=> d!144331 (= (validKeyInArray!0 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))) (and (not (= (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1347049 d!144331))

(declare-fun d!144333 () Bool)

(declare-fun e!766608 () Bool)

(assert (=> d!144333 e!766608))

(declare-fun res!894037 () Bool)

(assert (=> d!144333 (=> res!894037 e!766608)))

(declare-fun lt!595711 () Bool)

(assert (=> d!144333 (= res!894037 (not lt!595711))))

(declare-fun lt!595710 () Bool)

(assert (=> d!144333 (= lt!595711 lt!595710)))

(declare-fun lt!595709 () Unit!44083)

(declare-fun e!766609 () Unit!44083)

(assert (=> d!144333 (= lt!595709 e!766609)))

(declare-fun c!126324 () Bool)

(assert (=> d!144333 (= c!126324 lt!595710)))

(assert (=> d!144333 (= lt!595710 (containsKey!740 (toList!11057 lt!595609) (select (arr!44361 _keys!1571) from!1960)))))

(assert (=> d!144333 (= (contains!9168 lt!595609 (select (arr!44361 _keys!1571) from!1960)) lt!595711)))

(declare-fun b!1347307 () Bool)

(declare-fun lt!595712 () Unit!44083)

(assert (=> b!1347307 (= e!766609 lt!595712)))

(assert (=> b!1347307 (= lt!595712 (lemmaContainsKeyImpliesGetValueByKeyDefined!485 (toList!11057 lt!595609) (select (arr!44361 _keys!1571) from!1960)))))

(assert (=> b!1347307 (isDefined!525 (getValueByKey!722 (toList!11057 lt!595609) (select (arr!44361 _keys!1571) from!1960)))))

(declare-fun b!1347308 () Bool)

(declare-fun Unit!44093 () Unit!44083)

(assert (=> b!1347308 (= e!766609 Unit!44093)))

(declare-fun b!1347309 () Bool)

(assert (=> b!1347309 (= e!766608 (isDefined!525 (getValueByKey!722 (toList!11057 lt!595609) (select (arr!44361 _keys!1571) from!1960))))))

(assert (= (and d!144333 c!126324) b!1347307))

(assert (= (and d!144333 (not c!126324)) b!1347308))

(assert (= (and d!144333 (not res!894037)) b!1347309))

(assert (=> d!144333 m!1233917))

(declare-fun m!1234413 () Bool)

(assert (=> d!144333 m!1234413))

(assert (=> b!1347307 m!1233917))

(declare-fun m!1234415 () Bool)

(assert (=> b!1347307 m!1234415))

(assert (=> b!1347307 m!1233917))

(assert (=> b!1347307 m!1234313))

(assert (=> b!1347307 m!1234313))

(declare-fun m!1234417 () Bool)

(assert (=> b!1347307 m!1234417))

(assert (=> b!1347309 m!1233917))

(assert (=> b!1347309 m!1234313))

(assert (=> b!1347309 m!1234313))

(assert (=> b!1347309 m!1234417))

(assert (=> b!1347128 d!144333))

(declare-fun d!144335 () Bool)

(declare-fun e!766610 () Bool)

(assert (=> d!144335 e!766610))

(declare-fun res!894038 () Bool)

(assert (=> d!144335 (=> res!894038 e!766610)))

(declare-fun lt!595715 () Bool)

(assert (=> d!144335 (= res!894038 (not lt!595715))))

(declare-fun lt!595714 () Bool)

(assert (=> d!144335 (= lt!595715 lt!595714)))

(declare-fun lt!595713 () Unit!44083)

(declare-fun e!766611 () Unit!44083)

(assert (=> d!144335 (= lt!595713 e!766611)))

(declare-fun c!126325 () Bool)

(assert (=> d!144335 (= c!126325 lt!595714)))

(assert (=> d!144335 (= lt!595714 (containsKey!740 (toList!11057 lt!595609) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!144335 (= (contains!9168 lt!595609 #b1000000000000000000000000000000000000000000000000000000000000000) lt!595715)))

(declare-fun b!1347310 () Bool)

(declare-fun lt!595716 () Unit!44083)

(assert (=> b!1347310 (= e!766611 lt!595716)))

(assert (=> b!1347310 (= lt!595716 (lemmaContainsKeyImpliesGetValueByKeyDefined!485 (toList!11057 lt!595609) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1347310 (isDefined!525 (getValueByKey!722 (toList!11057 lt!595609) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1347311 () Bool)

(declare-fun Unit!44094 () Unit!44083)

(assert (=> b!1347311 (= e!766611 Unit!44094)))

(declare-fun b!1347312 () Bool)

(assert (=> b!1347312 (= e!766610 (isDefined!525 (getValueByKey!722 (toList!11057 lt!595609) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144335 c!126325) b!1347310))

(assert (= (and d!144335 (not c!126325)) b!1347311))

(assert (= (and d!144335 (not res!894038)) b!1347312))

(declare-fun m!1234419 () Bool)

(assert (=> d!144335 m!1234419))

(declare-fun m!1234421 () Bool)

(assert (=> b!1347310 m!1234421))

(declare-fun m!1234423 () Bool)

(assert (=> b!1347310 m!1234423))

(assert (=> b!1347310 m!1234423))

(declare-fun m!1234425 () Bool)

(assert (=> b!1347310 m!1234425))

(assert (=> b!1347312 m!1234423))

(assert (=> b!1347312 m!1234423))

(assert (=> b!1347312 m!1234425))

(assert (=> bm!65051 d!144335))

(assert (=> b!1347143 d!144311))

(declare-fun d!144337 () Bool)

(assert (=> d!144337 (= (apply!1072 lt!595609 #b0000000000000000000000000000000000000000000000000000000000000000) (get!22449 (getValueByKey!722 (toList!11057 lt!595609) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!38617 () Bool)

(assert (= bs!38617 d!144337))

(declare-fun m!1234427 () Bool)

(assert (=> bs!38617 m!1234427))

(assert (=> bs!38617 m!1234427))

(declare-fun m!1234429 () Bool)

(assert (=> bs!38617 m!1234429))

(assert (=> b!1347114 d!144337))

(declare-fun d!144339 () Bool)

(assert (=> d!144339 (arrayContainsKey!0 _keys!1571 lt!595620 #b00000000000000000000000000000000)))

(declare-fun lt!595719 () Unit!44083)

(declare-fun choose!13 (array!91819 (_ BitVec 64) (_ BitVec 32)) Unit!44083)

(assert (=> d!144339 (= lt!595719 (choose!13 _keys!1571 lt!595620 #b00000000000000000000000000000000))))

(assert (=> d!144339 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!144339 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1571 lt!595620 #b00000000000000000000000000000000) lt!595719)))

(declare-fun bs!38618 () Bool)

(assert (= bs!38618 d!144339))

(assert (=> bs!38618 m!1234115))

(declare-fun m!1234431 () Bool)

(assert (=> bs!38618 m!1234431))

(assert (=> b!1347145 d!144339))

(declare-fun d!144341 () Bool)

(declare-fun res!894043 () Bool)

(declare-fun e!766616 () Bool)

(assert (=> d!144341 (=> res!894043 e!766616)))

(assert (=> d!144341 (= res!894043 (= (select (arr!44361 _keys!1571) #b00000000000000000000000000000000) lt!595620))))

(assert (=> d!144341 (= (arrayContainsKey!0 _keys!1571 lt!595620 #b00000000000000000000000000000000) e!766616)))

(declare-fun b!1347317 () Bool)

(declare-fun e!766617 () Bool)

(assert (=> b!1347317 (= e!766616 e!766617)))

(declare-fun res!894044 () Bool)

(assert (=> b!1347317 (=> (not res!894044) (not e!766617))))

(assert (=> b!1347317 (= res!894044 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!44912 _keys!1571)))))

(declare-fun b!1347318 () Bool)

(assert (=> b!1347318 (= e!766617 (arrayContainsKey!0 _keys!1571 lt!595620 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!144341 (not res!894043)) b!1347317))

(assert (= (and b!1347317 res!894044) b!1347318))

(assert (=> d!144341 m!1234049))

(declare-fun m!1234433 () Bool)

(assert (=> b!1347318 m!1234433))

(assert (=> b!1347145 d!144341))

(declare-fun b!1347331 () Bool)

(declare-fun c!126333 () Bool)

(declare-fun lt!595726 () (_ BitVec 64))

(assert (=> b!1347331 (= c!126333 (= lt!595726 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!766626 () SeekEntryResult!10053)

(declare-fun e!766624 () SeekEntryResult!10053)

(assert (=> b!1347331 (= e!766626 e!766624)))

(declare-fun b!1347332 () Bool)

(declare-fun e!766625 () SeekEntryResult!10053)

(assert (=> b!1347332 (= e!766625 e!766626)))

(declare-fun lt!595728 () SeekEntryResult!10053)

(assert (=> b!1347332 (= lt!595726 (select (arr!44361 _keys!1571) (index!42584 lt!595728)))))

(declare-fun c!126334 () Bool)

(assert (=> b!1347332 (= c!126334 (= lt!595726 (select (arr!44361 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun b!1347333 () Bool)

(assert (=> b!1347333 (= e!766626 (Found!10053 (index!42584 lt!595728)))))

(declare-fun d!144343 () Bool)

(declare-fun lt!595727 () SeekEntryResult!10053)

(assert (=> d!144343 (and (or ((_ is Undefined!10053) lt!595727) (not ((_ is Found!10053) lt!595727)) (and (bvsge (index!42583 lt!595727) #b00000000000000000000000000000000) (bvslt (index!42583 lt!595727) (size!44912 _keys!1571)))) (or ((_ is Undefined!10053) lt!595727) ((_ is Found!10053) lt!595727) (not ((_ is MissingZero!10053) lt!595727)) (and (bvsge (index!42582 lt!595727) #b00000000000000000000000000000000) (bvslt (index!42582 lt!595727) (size!44912 _keys!1571)))) (or ((_ is Undefined!10053) lt!595727) ((_ is Found!10053) lt!595727) ((_ is MissingZero!10053) lt!595727) (not ((_ is MissingVacant!10053) lt!595727)) (and (bvsge (index!42585 lt!595727) #b00000000000000000000000000000000) (bvslt (index!42585 lt!595727) (size!44912 _keys!1571)))) (or ((_ is Undefined!10053) lt!595727) (ite ((_ is Found!10053) lt!595727) (= (select (arr!44361 _keys!1571) (index!42583 lt!595727)) (select (arr!44361 _keys!1571) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!10053) lt!595727) (= (select (arr!44361 _keys!1571) (index!42582 lt!595727)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10053) lt!595727) (= (select (arr!44361 _keys!1571) (index!42585 lt!595727)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!144343 (= lt!595727 e!766625)))

(declare-fun c!126332 () Bool)

(assert (=> d!144343 (= c!126332 (and ((_ is Intermediate!10053) lt!595728) (undefined!10865 lt!595728)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!91819 (_ BitVec 32)) SeekEntryResult!10053)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!144343 (= lt!595728 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!44361 _keys!1571) #b00000000000000000000000000000000) mask!1977) (select (arr!44361 _keys!1571) #b00000000000000000000000000000000) _keys!1571 mask!1977))))

(assert (=> d!144343 (validMask!0 mask!1977)))

(assert (=> d!144343 (= (seekEntryOrOpen!0 (select (arr!44361 _keys!1571) #b00000000000000000000000000000000) _keys!1571 mask!1977) lt!595727)))

(declare-fun b!1347334 () Bool)

(assert (=> b!1347334 (= e!766625 Undefined!10053)))

(declare-fun b!1347335 () Bool)

(assert (=> b!1347335 (= e!766624 (MissingZero!10053 (index!42584 lt!595728)))))

(declare-fun b!1347336 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!91819 (_ BitVec 32)) SeekEntryResult!10053)

(assert (=> b!1347336 (= e!766624 (seekKeyOrZeroReturnVacant!0 (x!120552 lt!595728) (index!42584 lt!595728) (index!42584 lt!595728) (select (arr!44361 _keys!1571) #b00000000000000000000000000000000) _keys!1571 mask!1977))))

(assert (= (and d!144343 c!126332) b!1347334))

(assert (= (and d!144343 (not c!126332)) b!1347332))

(assert (= (and b!1347332 c!126334) b!1347333))

(assert (= (and b!1347332 (not c!126334)) b!1347331))

(assert (= (and b!1347331 c!126333) b!1347335))

(assert (= (and b!1347331 (not c!126333)) b!1347336))

(declare-fun m!1234435 () Bool)

(assert (=> b!1347332 m!1234435))

(declare-fun m!1234437 () Bool)

(assert (=> d!144343 m!1234437))

(declare-fun m!1234439 () Bool)

(assert (=> d!144343 m!1234439))

(declare-fun m!1234441 () Bool)

(assert (=> d!144343 m!1234441))

(assert (=> d!144343 m!1234049))

(declare-fun m!1234443 () Bool)

(assert (=> d!144343 m!1234443))

(assert (=> d!144343 m!1233943))

(assert (=> d!144343 m!1234443))

(assert (=> d!144343 m!1234049))

(declare-fun m!1234445 () Bool)

(assert (=> d!144343 m!1234445))

(assert (=> b!1347336 m!1234049))

(declare-fun m!1234447 () Bool)

(assert (=> b!1347336 m!1234447))

(assert (=> b!1347145 d!144343))

(assert (=> b!1347046 d!144331))

(declare-fun d!144345 () Bool)

(declare-fun e!766627 () Bool)

(assert (=> d!144345 e!766627))

(declare-fun res!894045 () Bool)

(assert (=> d!144345 (=> res!894045 e!766627)))

(declare-fun lt!595731 () Bool)

(assert (=> d!144345 (= res!894045 (not lt!595731))))

(declare-fun lt!595730 () Bool)

(assert (=> d!144345 (= lt!595731 lt!595730)))

(declare-fun lt!595729 () Unit!44083)

(declare-fun e!766628 () Unit!44083)

(assert (=> d!144345 (= lt!595729 e!766628)))

(declare-fun c!126335 () Bool)

(assert (=> d!144345 (= c!126335 lt!595730)))

(assert (=> d!144345 (= lt!595730 (containsKey!740 (toList!11057 lt!595535) (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(assert (=> d!144345 (= (contains!9168 lt!595535 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))) lt!595731)))

(declare-fun b!1347337 () Bool)

(declare-fun lt!595732 () Unit!44083)

(assert (=> b!1347337 (= e!766628 lt!595732)))

(assert (=> b!1347337 (= lt!595732 (lemmaContainsKeyImpliesGetValueByKeyDefined!485 (toList!11057 lt!595535) (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(assert (=> b!1347337 (isDefined!525 (getValueByKey!722 (toList!11057 lt!595535) (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(declare-fun b!1347338 () Bool)

(declare-fun Unit!44095 () Unit!44083)

(assert (=> b!1347338 (= e!766628 Unit!44095)))

(declare-fun b!1347339 () Bool)

(assert (=> b!1347339 (= e!766627 (isDefined!525 (getValueByKey!722 (toList!11057 lt!595535) (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))))

(assert (= (and d!144345 c!126335) b!1347337))

(assert (= (and d!144345 (not c!126335)) b!1347338))

(assert (= (and d!144345 (not res!894045)) b!1347339))

(assert (=> d!144345 m!1234021))

(declare-fun m!1234449 () Bool)

(assert (=> d!144345 m!1234449))

(assert (=> b!1347337 m!1234021))

(declare-fun m!1234451 () Bool)

(assert (=> b!1347337 m!1234451))

(assert (=> b!1347337 m!1234021))

(declare-fun m!1234453 () Bool)

(assert (=> b!1347337 m!1234453))

(assert (=> b!1347337 m!1234453))

(declare-fun m!1234455 () Bool)

(assert (=> b!1347337 m!1234455))

(assert (=> b!1347339 m!1234021))

(assert (=> b!1347339 m!1234453))

(assert (=> b!1347339 m!1234453))

(assert (=> b!1347339 m!1234455))

(assert (=> b!1347043 d!144345))

(declare-fun d!144347 () Bool)

(declare-fun lt!595735 () Bool)

(declare-fun content!671 (List!31586) (InoxSet tuple2!24414))

(assert (=> d!144347 (= lt!595735 (select (content!671 (toList!11057 lt!595508)) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))))

(declare-fun e!766633 () Bool)

(assert (=> d!144347 (= lt!595735 e!766633)))

(declare-fun res!894051 () Bool)

(assert (=> d!144347 (=> (not res!894051) (not e!766633))))

(assert (=> d!144347 (= res!894051 ((_ is Cons!31582) (toList!11057 lt!595508)))))

(assert (=> d!144347 (= (contains!9170 (toList!11057 lt!595508) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) lt!595735)))

(declare-fun b!1347344 () Bool)

(declare-fun e!766634 () Bool)

(assert (=> b!1347344 (= e!766633 e!766634)))

(declare-fun res!894050 () Bool)

(assert (=> b!1347344 (=> res!894050 e!766634)))

(assert (=> b!1347344 (= res!894050 (= (h!32791 (toList!11057 lt!595508)) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))))

(declare-fun b!1347345 () Bool)

(assert (=> b!1347345 (= e!766634 (contains!9170 (t!46187 (toList!11057 lt!595508)) (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))))

(assert (= (and d!144347 res!894051) b!1347344))

(assert (= (and b!1347344 (not res!894050)) b!1347345))

(declare-fun m!1234457 () Bool)

(assert (=> d!144347 m!1234457))

(declare-fun m!1234459 () Bool)

(assert (=> d!144347 m!1234459))

(declare-fun m!1234461 () Bool)

(assert (=> b!1347345 m!1234461))

(assert (=> b!1347007 d!144347))

(declare-fun d!144349 () Bool)

(declare-fun res!894052 () Bool)

(declare-fun e!766635 () Bool)

(assert (=> d!144349 (=> res!894052 e!766635)))

(assert (=> d!144349 (= res!894052 (and ((_ is Cons!31582) (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))) (= (_1!12217 (h!32791 (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)))) k0!1142)))))

(assert (=> d!144349 (= (containsKey!740 (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142) e!766635)))

(declare-fun b!1347346 () Bool)

(declare-fun e!766636 () Bool)

(assert (=> b!1347346 (= e!766635 e!766636)))

(declare-fun res!894053 () Bool)

(assert (=> b!1347346 (=> (not res!894053) (not e!766636))))

(assert (=> b!1347346 (= res!894053 (and (or (not ((_ is Cons!31582) (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)))) (bvsle (_1!12217 (h!32791 (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)))) k0!1142)) ((_ is Cons!31582) (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))) (bvslt (_1!12217 (h!32791 (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)))) k0!1142)))))

(declare-fun b!1347347 () Bool)

(assert (=> b!1347347 (= e!766636 (containsKey!740 (t!46187 (toList!11057 (getCurrentListMap!5947 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))) k0!1142))))

(assert (= (and d!144349 (not res!894052)) b!1347346))

(assert (= (and b!1347346 res!894053) b!1347347))

(declare-fun m!1234463 () Bool)

(assert (=> b!1347347 m!1234463))

(assert (=> d!144231 d!144349))

(declare-fun b!1347348 () Bool)

(assert (=> b!1347348 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) (size!44912 _keys!1571)))))

(assert (=> b!1347348 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) (size!44913 _values!1303)))))

(declare-fun e!766637 () Bool)

(declare-fun lt!595736 () ListLongMap!22083)

(assert (=> b!1347348 (= e!766637 (= (apply!1072 lt!595736 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001))) (get!22445 (select (arr!44362 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001)) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1347349 () Bool)

(declare-fun e!766642 () Bool)

(declare-fun e!766643 () Bool)

(assert (=> b!1347349 (= e!766642 e!766643)))

(declare-fun c!126338 () Bool)

(assert (=> b!1347349 (= c!126338 (bvslt (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) (size!44912 _keys!1571)))))

(declare-fun bm!65076 () Bool)

(declare-fun call!65079 () ListLongMap!22083)

(assert (=> bm!65076 (= call!65079 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1306))))

(declare-fun b!1347350 () Bool)

(assert (=> b!1347350 (= e!766642 e!766637)))

(assert (=> b!1347350 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) (size!44912 _keys!1571)))))

(declare-fun res!894055 () Bool)

(assert (=> b!1347350 (= res!894055 (contains!9168 lt!595736 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001))))))

(assert (=> b!1347350 (=> (not res!894055) (not e!766637))))

(declare-fun b!1347351 () Bool)

(assert (=> b!1347351 (= e!766643 (= lt!595736 (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1306)))))

(declare-fun b!1347352 () Bool)

(declare-fun e!766639 () Bool)

(assert (=> b!1347352 (= e!766639 e!766642)))

(declare-fun c!126337 () Bool)

(declare-fun e!766640 () Bool)

(assert (=> b!1347352 (= c!126337 e!766640)))

(declare-fun res!894054 () Bool)

(assert (=> b!1347352 (=> (not res!894054) (not e!766640))))

(assert (=> b!1347352 (= res!894054 (bvslt (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) (size!44912 _keys!1571)))))

(declare-fun d!144351 () Bool)

(assert (=> d!144351 e!766639))

(declare-fun res!894056 () Bool)

(assert (=> d!144351 (=> (not res!894056) (not e!766639))))

(assert (=> d!144351 (= res!894056 (not (contains!9168 lt!595736 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!766638 () ListLongMap!22083)

(assert (=> d!144351 (= lt!595736 e!766638)))

(declare-fun c!126339 () Bool)

(assert (=> d!144351 (= c!126339 (bvsge (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) (size!44912 _keys!1571)))))

(assert (=> d!144351 (validMask!0 mask!1977)))

(assert (=> d!144351 (= (getCurrentListMapNoExtraKeys!6539 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) defaultEntry!1306) lt!595736)))

(declare-fun b!1347353 () Bool)

(assert (=> b!1347353 (= e!766640 (validKeyInArray!0 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001))))))

(assert (=> b!1347353 (bvsge (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1347354 () Bool)

(declare-fun e!766641 () ListLongMap!22083)

(assert (=> b!1347354 (= e!766641 call!65079)))

(declare-fun b!1347355 () Bool)

(declare-fun lt!595742 () Unit!44083)

(declare-fun lt!595738 () Unit!44083)

(assert (=> b!1347355 (= lt!595742 lt!595738)))

(declare-fun lt!595739 () ListLongMap!22083)

(declare-fun lt!595740 () (_ BitVec 64))

(declare-fun lt!595737 () (_ BitVec 64))

(declare-fun lt!595741 () V!55123)

(assert (=> b!1347355 (not (contains!9168 (+!4812 lt!595739 (tuple2!24415 lt!595740 lt!595741)) lt!595737))))

(assert (=> b!1347355 (= lt!595738 (addStillNotContains!510 lt!595739 lt!595740 lt!595741 lt!595737))))

(assert (=> b!1347355 (= lt!595737 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1347355 (= lt!595741 (get!22445 (select (arr!44362 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001)) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1347355 (= lt!595740 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001)))))

(assert (=> b!1347355 (= lt!595739 call!65079)))

(assert (=> b!1347355 (= e!766641 (+!4812 call!65079 (tuple2!24415 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001)) (get!22445 (select (arr!44362 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001)) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1347356 () Bool)

(assert (=> b!1347356 (= e!766638 e!766641)))

(declare-fun c!126336 () Bool)

(assert (=> b!1347356 (= c!126336 (validKeyInArray!0 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001))))))

(declare-fun b!1347357 () Bool)

(assert (=> b!1347357 (= e!766638 (ListLongMap!22084 Nil!31583))))

(declare-fun b!1347358 () Bool)

(assert (=> b!1347358 (= e!766643 (isEmpty!1094 lt!595736))))

(declare-fun b!1347359 () Bool)

(declare-fun res!894057 () Bool)

(assert (=> b!1347359 (=> (not res!894057) (not e!766639))))

(assert (=> b!1347359 (= res!894057 (not (contains!9168 lt!595736 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144351 c!126339) b!1347357))

(assert (= (and d!144351 (not c!126339)) b!1347356))

(assert (= (and b!1347356 c!126336) b!1347355))

(assert (= (and b!1347356 (not c!126336)) b!1347354))

(assert (= (or b!1347355 b!1347354) bm!65076))

(assert (= (and d!144351 res!894056) b!1347359))

(assert (= (and b!1347359 res!894057) b!1347352))

(assert (= (and b!1347352 res!894054) b!1347353))

(assert (= (and b!1347352 c!126337) b!1347350))

(assert (= (and b!1347352 (not c!126337)) b!1347349))

(assert (= (and b!1347350 res!894055) b!1347348))

(assert (= (and b!1347349 c!126338) b!1347351))

(assert (= (and b!1347349 (not c!126338)) b!1347358))

(declare-fun b_lambda!24591 () Bool)

(assert (=> (not b_lambda!24591) (not b!1347348)))

(assert (=> b!1347348 t!46185))

(declare-fun b_and!50833 () Bool)

(assert (= b_and!50831 (and (=> t!46185 result!25893) b_and!50833)))

(declare-fun b_lambda!24593 () Bool)

(assert (=> (not b_lambda!24593) (not b!1347355)))

(assert (=> b!1347355 t!46185))

(declare-fun b_and!50835 () Bool)

(assert (= b_and!50833 (and (=> t!46185 result!25893) b_and!50835)))

(declare-fun m!1234465 () Bool)

(assert (=> b!1347350 m!1234465))

(assert (=> b!1347350 m!1234465))

(declare-fun m!1234467 () Bool)

(assert (=> b!1347350 m!1234467))

(declare-fun m!1234469 () Bool)

(assert (=> bm!65076 m!1234469))

(declare-fun m!1234471 () Bool)

(assert (=> b!1347358 m!1234471))

(assert (=> b!1347351 m!1234469))

(assert (=> b!1347356 m!1234465))

(assert (=> b!1347356 m!1234465))

(declare-fun m!1234473 () Bool)

(assert (=> b!1347356 m!1234473))

(assert (=> b!1347348 m!1234465))

(declare-fun m!1234475 () Bool)

(assert (=> b!1347348 m!1234475))

(assert (=> b!1347348 m!1234465))

(declare-fun m!1234477 () Bool)

(assert (=> b!1347348 m!1234477))

(assert (=> b!1347348 m!1234477))

(assert (=> b!1347348 m!1233931))

(declare-fun m!1234479 () Bool)

(assert (=> b!1347348 m!1234479))

(assert (=> b!1347348 m!1233931))

(assert (=> b!1347353 m!1234465))

(assert (=> b!1347353 m!1234465))

(assert (=> b!1347353 m!1234473))

(declare-fun m!1234481 () Bool)

(assert (=> d!144351 m!1234481))

(assert (=> d!144351 m!1233943))

(assert (=> b!1347355 m!1234465))

(declare-fun m!1234483 () Bool)

(assert (=> b!1347355 m!1234483))

(declare-fun m!1234485 () Bool)

(assert (=> b!1347355 m!1234485))

(assert (=> b!1347355 m!1234477))

(assert (=> b!1347355 m!1233931))

(assert (=> b!1347355 m!1234479))

(assert (=> b!1347355 m!1233931))

(declare-fun m!1234487 () Bool)

(assert (=> b!1347355 m!1234487))

(assert (=> b!1347355 m!1234477))

(assert (=> b!1347355 m!1234487))

(declare-fun m!1234489 () Bool)

(assert (=> b!1347355 m!1234489))

(declare-fun m!1234491 () Bool)

(assert (=> b!1347359 m!1234491))

(assert (=> bm!65033 d!144351))

(assert (=> b!1347044 d!144351))

(declare-fun d!144353 () Bool)

(declare-fun e!766644 () Bool)

(assert (=> d!144353 e!766644))

(declare-fun res!894058 () Bool)

(assert (=> d!144353 (=> res!894058 e!766644)))

(declare-fun lt!595745 () Bool)

(assert (=> d!144353 (= res!894058 (not lt!595745))))

(declare-fun lt!595744 () Bool)

(assert (=> d!144353 (= lt!595745 lt!595744)))

(declare-fun lt!595743 () Unit!44083)

(declare-fun e!766645 () Unit!44083)

(assert (=> d!144353 (= lt!595743 e!766645)))

(declare-fun c!126340 () Bool)

(assert (=> d!144353 (= c!126340 lt!595744)))

(assert (=> d!144353 (= lt!595744 (containsKey!740 (toList!11057 lt!595609) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!144353 (= (contains!9168 lt!595609 #b0000000000000000000000000000000000000000000000000000000000000000) lt!595745)))

(declare-fun b!1347360 () Bool)

(declare-fun lt!595746 () Unit!44083)

(assert (=> b!1347360 (= e!766645 lt!595746)))

(assert (=> b!1347360 (= lt!595746 (lemmaContainsKeyImpliesGetValueByKeyDefined!485 (toList!11057 lt!595609) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1347360 (isDefined!525 (getValueByKey!722 (toList!11057 lt!595609) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1347361 () Bool)

(declare-fun Unit!44096 () Unit!44083)

(assert (=> b!1347361 (= e!766645 Unit!44096)))

(declare-fun b!1347362 () Bool)

(assert (=> b!1347362 (= e!766644 (isDefined!525 (getValueByKey!722 (toList!11057 lt!595609) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144353 c!126340) b!1347360))

(assert (= (and d!144353 (not c!126340)) b!1347361))

(assert (= (and d!144353 (not res!894058)) b!1347362))

(declare-fun m!1234493 () Bool)

(assert (=> d!144353 m!1234493))

(declare-fun m!1234495 () Bool)

(assert (=> b!1347360 m!1234495))

(assert (=> b!1347360 m!1234427))

(assert (=> b!1347360 m!1234427))

(declare-fun m!1234497 () Bool)

(assert (=> b!1347360 m!1234497))

(assert (=> b!1347362 m!1234427))

(assert (=> b!1347362 m!1234427))

(assert (=> b!1347362 m!1234497))

(assert (=> bm!65056 d!144353))

(declare-fun d!144355 () Bool)

(declare-fun lt!595747 () Bool)

(assert (=> d!144355 (= lt!595747 (select (content!671 (toList!11057 lt!595504)) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!766646 () Bool)

(assert (=> d!144355 (= lt!595747 e!766646)))

(declare-fun res!894060 () Bool)

(assert (=> d!144355 (=> (not res!894060) (not e!766646))))

(assert (=> d!144355 (= res!894060 ((_ is Cons!31582) (toList!11057 lt!595504)))))

(assert (=> d!144355 (= (contains!9170 (toList!11057 lt!595504) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!595747)))

(declare-fun b!1347363 () Bool)

(declare-fun e!766647 () Bool)

(assert (=> b!1347363 (= e!766646 e!766647)))

(declare-fun res!894059 () Bool)

(assert (=> b!1347363 (=> res!894059 e!766647)))

(assert (=> b!1347363 (= res!894059 (= (h!32791 (toList!11057 lt!595504)) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1347364 () Bool)

(assert (=> b!1347364 (= e!766647 (contains!9170 (t!46187 (toList!11057 lt!595504)) (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!144355 res!894060) b!1347363))

(assert (= (and b!1347363 (not res!894059)) b!1347364))

(declare-fun m!1234499 () Bool)

(assert (=> d!144355 m!1234499))

(declare-fun m!1234501 () Bool)

(assert (=> d!144355 m!1234501))

(declare-fun m!1234503 () Bool)

(assert (=> b!1347364 m!1234503))

(assert (=> b!1346999 d!144355))

(declare-fun d!144357 () Bool)

(assert (=> d!144357 (= (apply!1072 lt!595535 (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))) (get!22449 (getValueByKey!722 (toList!11057 lt!595535) (select (arr!44361 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))))

(declare-fun bs!38619 () Bool)

(assert (= bs!38619 d!144357))

(assert (=> bs!38619 m!1234021))

(assert (=> bs!38619 m!1234453))

(assert (=> bs!38619 m!1234453))

(declare-fun m!1234505 () Bool)

(assert (=> bs!38619 m!1234505))

(assert (=> b!1347041 d!144357))

(assert (=> b!1347041 d!144321))

(declare-fun d!144359 () Bool)

(declare-fun e!766648 () Bool)

(assert (=> d!144359 e!766648))

(declare-fun res!894061 () Bool)

(assert (=> d!144359 (=> res!894061 e!766648)))

(declare-fun lt!595750 () Bool)

(assert (=> d!144359 (= res!894061 (not lt!595750))))

(declare-fun lt!595749 () Bool)

(assert (=> d!144359 (= lt!595750 lt!595749)))

(declare-fun lt!595748 () Unit!44083)

(declare-fun e!766649 () Unit!44083)

(assert (=> d!144359 (= lt!595748 e!766649)))

(declare-fun c!126341 () Bool)

(assert (=> d!144359 (= c!126341 lt!595749)))

(assert (=> d!144359 (= lt!595749 (containsKey!740 (toList!11057 lt!595535) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!144359 (= (contains!9168 lt!595535 #b0000000000000000000000000000000000000000000000000000000000000000) lt!595750)))

(declare-fun b!1347365 () Bool)

(declare-fun lt!595751 () Unit!44083)

(assert (=> b!1347365 (= e!766649 lt!595751)))

(assert (=> b!1347365 (= lt!595751 (lemmaContainsKeyImpliesGetValueByKeyDefined!485 (toList!11057 lt!595535) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1347365 (isDefined!525 (getValueByKey!722 (toList!11057 lt!595535) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1347366 () Bool)

(declare-fun Unit!44097 () Unit!44083)

(assert (=> b!1347366 (= e!766649 Unit!44097)))

(declare-fun b!1347367 () Bool)

(assert (=> b!1347367 (= e!766648 (isDefined!525 (getValueByKey!722 (toList!11057 lt!595535) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144359 c!126341) b!1347365))

(assert (= (and d!144359 (not c!126341)) b!1347366))

(assert (= (and d!144359 (not res!894061)) b!1347367))

(declare-fun m!1234507 () Bool)

(assert (=> d!144359 m!1234507))

(declare-fun m!1234509 () Bool)

(assert (=> b!1347365 m!1234509))

(declare-fun m!1234511 () Bool)

(assert (=> b!1347365 m!1234511))

(assert (=> b!1347365 m!1234511))

(declare-fun m!1234513 () Bool)

(assert (=> b!1347365 m!1234513))

(assert (=> b!1347367 m!1234511))

(assert (=> b!1347367 m!1234511))

(assert (=> b!1347367 m!1234513))

(assert (=> d!144219 d!144359))

(assert (=> d!144219 d!144221))

(declare-fun d!144361 () Bool)

(declare-fun c!126342 () Bool)

(assert (=> d!144361 (= c!126342 (and ((_ is Cons!31582) (toList!11057 lt!595504)) (= (_1!12217 (h!32791 (toList!11057 lt!595504))) (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!766650 () Option!773)

(assert (=> d!144361 (= (getValueByKey!722 (toList!11057 lt!595504) (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!766650)))

(declare-fun b!1347371 () Bool)

(declare-fun e!766651 () Option!773)

(assert (=> b!1347371 (= e!766651 None!771)))

(declare-fun b!1347368 () Bool)

(assert (=> b!1347368 (= e!766650 (Some!772 (_2!12217 (h!32791 (toList!11057 lt!595504)))))))

(declare-fun b!1347369 () Bool)

(assert (=> b!1347369 (= e!766650 e!766651)))

(declare-fun c!126343 () Bool)

(assert (=> b!1347369 (= c!126343 (and ((_ is Cons!31582) (toList!11057 lt!595504)) (not (= (_1!12217 (h!32791 (toList!11057 lt!595504))) (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!1347370 () Bool)

(assert (=> b!1347370 (= e!766651 (getValueByKey!722 (t!46187 (toList!11057 lt!595504)) (_1!12217 (tuple2!24415 (select (arr!44361 _keys!1571) from!1960) (get!22445 (select (arr!44362 _values!1303) from!1960) (dynLambda!3849 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!144361 c!126342) b!1347368))

(assert (= (and d!144361 (not c!126342)) b!1347369))

(assert (= (and b!1347369 c!126343) b!1347370))

(assert (= (and b!1347369 (not c!126343)) b!1347371))

(declare-fun m!1234515 () Bool)

(assert (=> b!1347370 m!1234515))

(assert (=> b!1346998 d!144361))

(declare-fun d!144363 () Bool)

(declare-fun c!126344 () Bool)

(assert (=> d!144363 (= c!126344 (and ((_ is Cons!31582) (toList!11057 lt!595508)) (= (_1!12217 (h!32791 (toList!11057 lt!595508))) (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)))))))

(declare-fun e!766652 () Option!773)

(assert (=> d!144363 (= (getValueByKey!722 (toList!11057 lt!595508) (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))) e!766652)))

(declare-fun b!1347375 () Bool)

(declare-fun e!766653 () Option!773)

(assert (=> b!1347375 (= e!766653 None!771)))

(declare-fun b!1347372 () Bool)

(assert (=> b!1347372 (= e!766652 (Some!772 (_2!12217 (h!32791 (toList!11057 lt!595508)))))))

(declare-fun b!1347373 () Bool)

(assert (=> b!1347373 (= e!766652 e!766653)))

(declare-fun c!126345 () Bool)

(assert (=> b!1347373 (= c!126345 (and ((_ is Cons!31582) (toList!11057 lt!595508)) (not (= (_1!12217 (h!32791 (toList!11057 lt!595508))) (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))))))

(declare-fun b!1347374 () Bool)

(assert (=> b!1347374 (= e!766653 (getValueByKey!722 (t!46187 (toList!11057 lt!595508)) (_1!12217 (tuple2!24415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245))))))

(assert (= (and d!144363 c!126344) b!1347372))

(assert (= (and d!144363 (not c!126344)) b!1347373))

(assert (= (and b!1347373 c!126345) b!1347374))

(assert (= (and b!1347373 (not c!126345)) b!1347375))

(declare-fun m!1234517 () Bool)

(assert (=> b!1347374 m!1234517))

(assert (=> b!1347006 d!144363))

(assert (=> d!144233 d!144221))

(declare-fun d!144365 () Bool)

(assert (=> d!144365 (= (apply!1072 lt!595609 #b1000000000000000000000000000000000000000000000000000000000000000) (get!22449 (getValueByKey!722 (toList!11057 lt!595609) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!38620 () Bool)

(assert (= bs!38620 d!144365))

(assert (=> bs!38620 m!1234423))

(assert (=> bs!38620 m!1234423))

(declare-fun m!1234519 () Bool)

(assert (=> bs!38620 m!1234519))

(assert (=> b!1347126 d!144365))

(declare-fun mapNonEmpty!57986 () Bool)

(declare-fun mapRes!57986 () Bool)

(declare-fun tp!110361 () Bool)

(declare-fun e!766654 () Bool)

(assert (=> mapNonEmpty!57986 (= mapRes!57986 (and tp!110361 e!766654))))

(declare-fun mapValue!57986 () ValueCell!17859)

(declare-fun mapKey!57986 () (_ BitVec 32))

(declare-fun mapRest!57986 () (Array (_ BitVec 32) ValueCell!17859))

(assert (=> mapNonEmpty!57986 (= mapRest!57985 (store mapRest!57986 mapKey!57986 mapValue!57986))))

(declare-fun mapIsEmpty!57986 () Bool)

(assert (=> mapIsEmpty!57986 mapRes!57986))

(declare-fun b!1347376 () Bool)

(assert (=> b!1347376 (= e!766654 tp_is_empty!37515)))

(declare-fun condMapEmpty!57986 () Bool)

(declare-fun mapDefault!57986 () ValueCell!17859)

(assert (=> mapNonEmpty!57985 (= condMapEmpty!57986 (= mapRest!57985 ((as const (Array (_ BitVec 32) ValueCell!17859)) mapDefault!57986)))))

(declare-fun e!766655 () Bool)

(assert (=> mapNonEmpty!57985 (= tp!110360 (and e!766655 mapRes!57986))))

(declare-fun b!1347377 () Bool)

(assert (=> b!1347377 (= e!766655 tp_is_empty!37515)))

(assert (= (and mapNonEmpty!57985 condMapEmpty!57986) mapIsEmpty!57986))

(assert (= (and mapNonEmpty!57985 (not condMapEmpty!57986)) mapNonEmpty!57986))

(assert (= (and mapNonEmpty!57986 ((_ is ValueCellFull!17859) mapValue!57986)) b!1347376))

(assert (= (and mapNonEmpty!57985 ((_ is ValueCellFull!17859) mapDefault!57986)) b!1347377))

(declare-fun m!1234521 () Bool)

(assert (=> mapNonEmpty!57986 m!1234521))

(declare-fun b_lambda!24595 () Bool)

(assert (= b_lambda!24593 (or (and start!113500 b_free!31515) b_lambda!24595)))

(declare-fun b_lambda!24597 () Bool)

(assert (= b_lambda!24587 (or (and start!113500 b_free!31515) b_lambda!24597)))

(declare-fun b_lambda!24599 () Bool)

(assert (= b_lambda!24589 (or (and start!113500 b_free!31515) b_lambda!24599)))

(declare-fun b_lambda!24601 () Bool)

(assert (= b_lambda!24591 (or (and start!113500 b_free!31515) b_lambda!24601)))

(check-sat (not d!144241) (not b!1347274) (not d!144305) (not d!144237) (not b!1347350) (not b!1347347) (not d!144267) (not b!1347252) (not d!144289) (not b!1347364) (not d!144255) (not b!1347301) (not d!144275) (not d!144287) (not b!1347190) (not d!144297) (not b!1347312) (not d!144283) (not b!1347154) (not b!1347272) (not d!144251) (not d!144309) (not d!144273) (not b!1347156) (not b!1347257) (not d!144301) (not b!1347266) (not b!1347258) (not b!1347360) (not d!144355) (not d!144291) (not b!1347337) (not d!144293) (not d!144351) (not d!144307) (not bm!65075) (not b!1347225) (not b!1347157) (not b!1347233) (not b!1347244) (not b!1347165) (not b!1347359) (not b!1347245) (not b!1347264) (not d!144271) (not b!1347286) (not d!144325) (not d!144343) (not mapNonEmpty!57986) (not b!1347265) (not b!1347177) tp_is_empty!37515 (not b!1347374) (not d!144263) (not b_lambda!24597) (not b_next!31515) (not d!144295) (not b!1347254) (not b!1347237) (not b!1347309) (not b!1347164) (not b!1347195) (not d!144323) (not d!144253) (not b!1347306) (not b!1347161) (not d!144261) (not bm!65076) (not d!144329) (not b!1347171) (not b!1347339) (not b!1347294) (not d!144319) (not d!144269) (not d!144335) (not d!144365) (not b!1347228) (not b!1347303) (not b!1347362) (not b!1347188) (not b!1347356) (not b!1347307) (not b!1347281) (not b!1347345) (not bm!65071) (not b!1347275) (not b!1347256) (not d!144357) (not d!144247) (not b_lambda!24599) (not b!1347246) (not b!1347290) (not d!144353) (not b!1347234) (not d!144333) (not b!1347253) (not b!1347288) (not d!144279) (not b!1347282) (not d!144337) (not b!1347247) (not b_lambda!24583) (not b_lambda!24595) (not b!1347299) (not d!144277) (not b!1347348) (not b!1347370) b_and!50835 (not b!1347355) (not b!1347365) (not b!1347267) (not d!144265) (not d!144317) (not d!144285) (not b_lambda!24581) (not d!144281) (not b!1347192) (not b!1347293) (not b!1347292) (not b_lambda!24601) (not b!1347229) (not b!1347367) (not b!1347300) (not b!1347351) (not d!144257) (not b!1347353) (not bm!65069) (not b!1347240) (not b!1347310) (not b!1347358) (not b!1347269) (not bm!65073) (not b!1347305) (not b!1347202) (not b!1347162) (not b!1347239) (not b!1347243) (not b!1347159) (not d!144339) (not b_lambda!24573) (not b!1347201) (not b!1347336) (not b_lambda!24585) (not d!144359) (not d!144347) (not b!1347318) (not bm!65061) (not b!1347278) (not b!1347302) (not d!144345) (not d!144243))
(check-sat b_and!50835 (not b_next!31515))
