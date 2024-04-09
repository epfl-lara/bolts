; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112772 () Bool)

(assert start!112772)

(declare-fun b_free!31047 () Bool)

(declare-fun b_next!31047 () Bool)

(assert (=> start!112772 (= b_free!31047 (not b_next!31047))))

(declare-fun tp!108785 () Bool)

(declare-fun b_and!50037 () Bool)

(assert (=> start!112772 (= tp!108785 b_and!50037)))

(declare-fun b!1337236 () Bool)

(declare-fun e!761471 () Bool)

(declare-fun e!761474 () Bool)

(declare-fun mapRes!57116 () Bool)

(assert (=> b!1337236 (= e!761471 (and e!761474 mapRes!57116))))

(declare-fun condMapEmpty!57116 () Bool)

(declare-datatypes ((V!54379 0))(
  ( (V!54380 (val!18553 Int)) )
))
(declare-datatypes ((ValueCell!17580 0))(
  ( (ValueCellFull!17580 (v!21192 V!54379)) (EmptyCell!17580) )
))
(declare-datatypes ((array!90745 0))(
  ( (array!90746 (arr!43832 (Array (_ BitVec 32) ValueCell!17580)) (size!44383 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90745)

(declare-fun mapDefault!57116 () ValueCell!17580)

(assert (=> b!1337236 (= condMapEmpty!57116 (= (arr!43832 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17580)) mapDefault!57116)))))

(declare-fun b!1337237 () Bool)

(declare-fun res!887508 () Bool)

(declare-fun e!761472 () Bool)

(assert (=> b!1337237 (=> (not res!887508) (not e!761472))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90747 0))(
  ( (array!90748 (arr!43833 (Array (_ BitVec 32) (_ BitVec 64))) (size!44384 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90747)

(assert (=> b!1337237 (= res!887508 (and (= (size!44383 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44384 _keys!1590) (size!44383 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!57116 () Bool)

(assert (=> mapIsEmpty!57116 mapRes!57116))

(declare-fun b!1337238 () Bool)

(declare-fun res!887505 () Bool)

(assert (=> b!1337238 (=> (not res!887505) (not e!761472))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90747 (_ BitVec 32)) Bool)

(assert (=> b!1337238 (= res!887505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1337239 () Bool)

(declare-fun res!887507 () Bool)

(assert (=> b!1337239 (=> (not res!887507) (not e!761472))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1337239 (= res!887507 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44384 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1337240 () Bool)

(declare-fun tp_is_empty!36957 () Bool)

(assert (=> b!1337240 (= e!761474 tp_is_empty!36957)))

(declare-fun b!1337241 () Bool)

(declare-fun res!887501 () Bool)

(assert (=> b!1337241 (=> (not res!887501) (not e!761472))))

(assert (=> b!1337241 (= res!887501 (not (= (select (arr!43833 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1337243 () Bool)

(declare-fun res!887502 () Bool)

(assert (=> b!1337243 (=> (not res!887502) (not e!761472))))

(assert (=> b!1337243 (= res!887502 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1337244 () Bool)

(declare-fun e!761470 () Bool)

(assert (=> b!1337244 (= e!761470 tp_is_empty!36957)))

(declare-fun b!1337245 () Bool)

(declare-fun res!887506 () Bool)

(assert (=> b!1337245 (=> (not res!887506) (not e!761472))))

(declare-datatypes ((List!31245 0))(
  ( (Nil!31242) (Cons!31241 (h!32450 (_ BitVec 64)) (t!45568 List!31245)) )
))
(declare-fun arrayNoDuplicates!0 (array!90747 (_ BitVec 32) List!31245) Bool)

(assert (=> b!1337245 (= res!887506 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31242))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54379)

(declare-fun zeroValue!1262 () V!54379)

(declare-fun b!1337246 () Bool)

(declare-datatypes ((tuple2!24078 0))(
  ( (tuple2!24079 (_1!12049 (_ BitVec 64)) (_2!12049 V!54379)) )
))
(declare-datatypes ((List!31246 0))(
  ( (Nil!31243) (Cons!31242 (h!32451 tuple2!24078) (t!45569 List!31246)) )
))
(declare-datatypes ((ListLongMap!21747 0))(
  ( (ListLongMap!21748 (toList!10889 List!31246)) )
))
(declare-fun contains!8992 (ListLongMap!21747 (_ BitVec 64)) Bool)

(declare-fun +!4718 (ListLongMap!21747 tuple2!24078) ListLongMap!21747)

(declare-fun getCurrentListMapNoExtraKeys!6441 (array!90747 array!90745 (_ BitVec 32) (_ BitVec 32) V!54379 V!54379 (_ BitVec 32) Int) ListLongMap!21747)

(declare-fun get!22157 (ValueCell!17580 V!54379) V!54379)

(declare-fun dynLambda!3755 (Int (_ BitVec 64)) V!54379)

(assert (=> b!1337246 (= e!761472 (not (contains!8992 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) k0!1153)))))

(declare-fun mapNonEmpty!57116 () Bool)

(declare-fun tp!108786 () Bool)

(assert (=> mapNonEmpty!57116 (= mapRes!57116 (and tp!108786 e!761470))))

(declare-fun mapValue!57116 () ValueCell!17580)

(declare-fun mapKey!57116 () (_ BitVec 32))

(declare-fun mapRest!57116 () (Array (_ BitVec 32) ValueCell!17580))

(assert (=> mapNonEmpty!57116 (= (arr!43832 _values!1320) (store mapRest!57116 mapKey!57116 mapValue!57116))))

(declare-fun b!1337247 () Bool)

(declare-fun res!887503 () Bool)

(assert (=> b!1337247 (=> (not res!887503) (not e!761472))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1337247 (= res!887503 (validKeyInArray!0 (select (arr!43833 _keys!1590) from!1980)))))

(declare-fun res!887504 () Bool)

(assert (=> start!112772 (=> (not res!887504) (not e!761472))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112772 (= res!887504 (validMask!0 mask!1998))))

(assert (=> start!112772 e!761472))

(declare-fun array_inv!32981 (array!90745) Bool)

(assert (=> start!112772 (and (array_inv!32981 _values!1320) e!761471)))

(assert (=> start!112772 true))

(declare-fun array_inv!32982 (array!90747) Bool)

(assert (=> start!112772 (array_inv!32982 _keys!1590)))

(assert (=> start!112772 tp!108785))

(assert (=> start!112772 tp_is_empty!36957))

(declare-fun b!1337242 () Bool)

(declare-fun res!887509 () Bool)

(assert (=> b!1337242 (=> (not res!887509) (not e!761472))))

(declare-fun getCurrentListMap!5794 (array!90747 array!90745 (_ BitVec 32) (_ BitVec 32) V!54379 V!54379 (_ BitVec 32) Int) ListLongMap!21747)

(assert (=> b!1337242 (= res!887509 (contains!8992 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(assert (= (and start!112772 res!887504) b!1337237))

(assert (= (and b!1337237 res!887508) b!1337238))

(assert (= (and b!1337238 res!887505) b!1337245))

(assert (= (and b!1337245 res!887506) b!1337239))

(assert (= (and b!1337239 res!887507) b!1337242))

(assert (= (and b!1337242 res!887509) b!1337241))

(assert (= (and b!1337241 res!887501) b!1337247))

(assert (= (and b!1337247 res!887503) b!1337243))

(assert (= (and b!1337243 res!887502) b!1337246))

(assert (= (and b!1337236 condMapEmpty!57116) mapIsEmpty!57116))

(assert (= (and b!1337236 (not condMapEmpty!57116)) mapNonEmpty!57116))

(get-info :version)

(assert (= (and mapNonEmpty!57116 ((_ is ValueCellFull!17580) mapValue!57116)) b!1337244))

(assert (= (and b!1337236 ((_ is ValueCellFull!17580) mapDefault!57116)) b!1337240))

(assert (= start!112772 b!1337236))

(declare-fun b_lambda!24221 () Bool)

(assert (=> (not b_lambda!24221) (not b!1337246)))

(declare-fun t!45567 () Bool)

(declare-fun tb!12127 () Bool)

(assert (=> (and start!112772 (= defaultEntry!1323 defaultEntry!1323) t!45567) tb!12127))

(declare-fun result!25321 () Bool)

(assert (=> tb!12127 (= result!25321 tp_is_empty!36957)))

(assert (=> b!1337246 t!45567))

(declare-fun b_and!50039 () Bool)

(assert (= b_and!50037 (and (=> t!45567 result!25321) b_and!50039)))

(declare-fun m!1225327 () Bool)

(assert (=> b!1337245 m!1225327))

(declare-fun m!1225329 () Bool)

(assert (=> mapNonEmpty!57116 m!1225329))

(declare-fun m!1225331 () Bool)

(assert (=> b!1337242 m!1225331))

(assert (=> b!1337242 m!1225331))

(declare-fun m!1225333 () Bool)

(assert (=> b!1337242 m!1225333))

(declare-fun m!1225335 () Bool)

(assert (=> b!1337241 m!1225335))

(declare-fun m!1225337 () Bool)

(assert (=> b!1337238 m!1225337))

(declare-fun m!1225339 () Bool)

(assert (=> start!112772 m!1225339))

(declare-fun m!1225341 () Bool)

(assert (=> start!112772 m!1225341))

(declare-fun m!1225343 () Bool)

(assert (=> start!112772 m!1225343))

(assert (=> b!1337247 m!1225335))

(assert (=> b!1337247 m!1225335))

(declare-fun m!1225345 () Bool)

(assert (=> b!1337247 m!1225345))

(declare-fun m!1225347 () Bool)

(assert (=> b!1337246 m!1225347))

(declare-fun m!1225349 () Bool)

(assert (=> b!1337246 m!1225349))

(declare-fun m!1225351 () Bool)

(assert (=> b!1337246 m!1225351))

(declare-fun m!1225353 () Bool)

(assert (=> b!1337246 m!1225353))

(assert (=> b!1337246 m!1225347))

(declare-fun m!1225355 () Bool)

(assert (=> b!1337246 m!1225355))

(assert (=> b!1337246 m!1225351))

(declare-fun m!1225357 () Bool)

(assert (=> b!1337246 m!1225357))

(assert (=> b!1337246 m!1225349))

(assert (=> b!1337246 m!1225353))

(assert (=> b!1337246 m!1225335))

(check-sat (not mapNonEmpty!57116) (not b!1337238) (not b_lambda!24221) (not b!1337247) (not b_next!31047) (not b!1337245) b_and!50039 (not b!1337242) (not b!1337246) (not start!112772) tp_is_empty!36957)
(check-sat b_and!50039 (not b_next!31047))
(get-model)

(declare-fun b_lambda!24225 () Bool)

(assert (= b_lambda!24221 (or (and start!112772 b_free!31047) b_lambda!24225)))

(check-sat (not mapNonEmpty!57116) (not b!1337238) (not b_lambda!24225) (not b!1337247) (not b_next!31047) (not b!1337245) b_and!50039 (not b!1337242) (not b!1337246) (not start!112772) tp_is_empty!36957)
(check-sat b_and!50039 (not b_next!31047))
(get-model)

(declare-fun d!143653 () Bool)

(declare-fun e!761495 () Bool)

(assert (=> d!143653 e!761495))

(declare-fun res!887539 () Bool)

(assert (=> d!143653 (=> res!887539 e!761495)))

(declare-fun lt!593032 () Bool)

(assert (=> d!143653 (= res!887539 (not lt!593032))))

(declare-fun lt!593031 () Bool)

(assert (=> d!143653 (= lt!593032 lt!593031)))

(declare-datatypes ((Unit!43875 0))(
  ( (Unit!43876) )
))
(declare-fun lt!593030 () Unit!43875)

(declare-fun e!761494 () Unit!43875)

(assert (=> d!143653 (= lt!593030 e!761494)))

(declare-fun c!126003 () Bool)

(assert (=> d!143653 (= c!126003 lt!593031)))

(declare-fun containsKey!737 (List!31246 (_ BitVec 64)) Bool)

(assert (=> d!143653 (= lt!593031 (containsKey!737 (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1153))))

(assert (=> d!143653 (= (contains!8992 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) k0!1153) lt!593032)))

(declare-fun b!1337294 () Bool)

(declare-fun lt!593029 () Unit!43875)

(assert (=> b!1337294 (= e!761494 lt!593029)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!482 (List!31246 (_ BitVec 64)) Unit!43875)

(assert (=> b!1337294 (= lt!593029 (lemmaContainsKeyImpliesGetValueByKeyDefined!482 (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1153))))

(declare-datatypes ((Option!770 0))(
  ( (Some!769 (v!21194 V!54379)) (None!768) )
))
(declare-fun isDefined!522 (Option!770) Bool)

(declare-fun getValueByKey!719 (List!31246 (_ BitVec 64)) Option!770)

(assert (=> b!1337294 (isDefined!522 (getValueByKey!719 (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1153))))

(declare-fun b!1337295 () Bool)

(declare-fun Unit!43877 () Unit!43875)

(assert (=> b!1337295 (= e!761494 Unit!43877)))

(declare-fun b!1337296 () Bool)

(assert (=> b!1337296 (= e!761495 (isDefined!522 (getValueByKey!719 (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1153)))))

(assert (= (and d!143653 c!126003) b!1337294))

(assert (= (and d!143653 (not c!126003)) b!1337295))

(assert (= (and d!143653 (not res!887539)) b!1337296))

(declare-fun m!1225391 () Bool)

(assert (=> d!143653 m!1225391))

(declare-fun m!1225393 () Bool)

(assert (=> b!1337294 m!1225393))

(declare-fun m!1225395 () Bool)

(assert (=> b!1337294 m!1225395))

(assert (=> b!1337294 m!1225395))

(declare-fun m!1225397 () Bool)

(assert (=> b!1337294 m!1225397))

(assert (=> b!1337296 m!1225395))

(assert (=> b!1337296 m!1225395))

(assert (=> b!1337296 m!1225397))

(assert (=> b!1337246 d!143653))

(declare-fun d!143655 () Bool)

(declare-fun e!761498 () Bool)

(assert (=> d!143655 e!761498))

(declare-fun res!887544 () Bool)

(assert (=> d!143655 (=> (not res!887544) (not e!761498))))

(declare-fun lt!593044 () ListLongMap!21747)

(assert (=> d!143655 (= res!887544 (contains!8992 lt!593044 (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!593042 () List!31246)

(assert (=> d!143655 (= lt!593044 (ListLongMap!21748 lt!593042))))

(declare-fun lt!593043 () Unit!43875)

(declare-fun lt!593041 () Unit!43875)

(assert (=> d!143655 (= lt!593043 lt!593041)))

(assert (=> d!143655 (= (getValueByKey!719 lt!593042 (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!769 (_2!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!362 (List!31246 (_ BitVec 64) V!54379) Unit!43875)

(assert (=> d!143655 (= lt!593041 (lemmaContainsTupThenGetReturnValue!362 lt!593042 (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun insertStrictlySorted!491 (List!31246 (_ BitVec 64) V!54379) List!31246)

(assert (=> d!143655 (= lt!593042 (insertStrictlySorted!491 (toList!10889 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!143655 (= (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!593044)))

(declare-fun b!1337301 () Bool)

(declare-fun res!887545 () Bool)

(assert (=> b!1337301 (=> (not res!887545) (not e!761498))))

(assert (=> b!1337301 (= res!887545 (= (getValueByKey!719 (toList!10889 lt!593044) (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!769 (_2!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1337302 () Bool)

(declare-fun contains!8993 (List!31246 tuple2!24078) Bool)

(assert (=> b!1337302 (= e!761498 (contains!8993 (toList!10889 lt!593044) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!143655 res!887544) b!1337301))

(assert (= (and b!1337301 res!887545) b!1337302))

(declare-fun m!1225399 () Bool)

(assert (=> d!143655 m!1225399))

(declare-fun m!1225401 () Bool)

(assert (=> d!143655 m!1225401))

(declare-fun m!1225403 () Bool)

(assert (=> d!143655 m!1225403))

(declare-fun m!1225405 () Bool)

(assert (=> d!143655 m!1225405))

(declare-fun m!1225407 () Bool)

(assert (=> b!1337301 m!1225407))

(declare-fun m!1225409 () Bool)

(assert (=> b!1337302 m!1225409))

(assert (=> b!1337246 d!143655))

(declare-fun b!1337327 () Bool)

(declare-fun e!761518 () ListLongMap!21747)

(declare-fun call!64904 () ListLongMap!21747)

(assert (=> b!1337327 (= e!761518 call!64904)))

(declare-fun b!1337328 () Bool)

(declare-fun res!887556 () Bool)

(declare-fun e!761517 () Bool)

(assert (=> b!1337328 (=> (not res!887556) (not e!761517))))

(declare-fun lt!593064 () ListLongMap!21747)

(assert (=> b!1337328 (= res!887556 (not (contains!8992 lt!593064 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1337329 () Bool)

(declare-fun e!761513 () Bool)

(declare-fun e!761516 () Bool)

(assert (=> b!1337329 (= e!761513 e!761516)))

(declare-fun c!126014 () Bool)

(assert (=> b!1337329 (= c!126014 (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44384 _keys!1590)))))

(declare-fun b!1337330 () Bool)

(declare-fun isEmpty!1088 (ListLongMap!21747) Bool)

(assert (=> b!1337330 (= e!761516 (isEmpty!1088 lt!593064))))

(declare-fun b!1337331 () Bool)

(declare-fun e!761515 () Bool)

(assert (=> b!1337331 (= e!761515 (validKeyInArray!0 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(assert (=> b!1337331 (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000)))

(declare-fun bm!64901 () Bool)

(assert (=> bm!64901 (= call!64904 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) defaultEntry!1323))))

(declare-fun b!1337332 () Bool)

(assert (=> b!1337332 (= e!761516 (= lt!593064 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) defaultEntry!1323)))))

(declare-fun b!1337333 () Bool)

(assert (=> b!1337333 (= e!761517 e!761513)))

(declare-fun c!126013 () Bool)

(assert (=> b!1337333 (= c!126013 e!761515)))

(declare-fun res!887555 () Bool)

(assert (=> b!1337333 (=> (not res!887555) (not e!761515))))

(assert (=> b!1337333 (= res!887555 (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44384 _keys!1590)))))

(declare-fun b!1337335 () Bool)

(assert (=> b!1337335 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44384 _keys!1590)))))

(assert (=> b!1337335 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44383 _values!1320)))))

(declare-fun e!761514 () Bool)

(declare-fun apply!1069 (ListLongMap!21747 (_ BitVec 64)) V!54379)

(assert (=> b!1337335 (= e!761514 (= (apply!1069 lt!593064 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))) (get!22157 (select (arr!43832 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1337336 () Bool)

(assert (=> b!1337336 (= e!761513 e!761514)))

(assert (=> b!1337336 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44384 _keys!1590)))))

(declare-fun res!887554 () Bool)

(assert (=> b!1337336 (= res!887554 (contains!8992 lt!593064 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(assert (=> b!1337336 (=> (not res!887554) (not e!761514))))

(declare-fun b!1337337 () Bool)

(declare-fun e!761519 () ListLongMap!21747)

(assert (=> b!1337337 (= e!761519 (ListLongMap!21748 Nil!31243))))

(declare-fun b!1337338 () Bool)

(assert (=> b!1337338 (= e!761519 e!761518)))

(declare-fun c!126015 () Bool)

(assert (=> b!1337338 (= c!126015 (validKeyInArray!0 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(declare-fun d!143657 () Bool)

(assert (=> d!143657 e!761517))

(declare-fun res!887557 () Bool)

(assert (=> d!143657 (=> (not res!887557) (not e!761517))))

(assert (=> d!143657 (= res!887557 (not (contains!8992 lt!593064 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!143657 (= lt!593064 e!761519)))

(declare-fun c!126012 () Bool)

(assert (=> d!143657 (= c!126012 (bvsge (bvadd #b00000000000000000000000000000001 from!1980) (size!44384 _keys!1590)))))

(assert (=> d!143657 (validMask!0 mask!1998)))

(assert (=> d!143657 (= (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) lt!593064)))

(declare-fun b!1337334 () Bool)

(declare-fun lt!593065 () Unit!43875)

(declare-fun lt!593060 () Unit!43875)

(assert (=> b!1337334 (= lt!593065 lt!593060)))

(declare-fun lt!593062 () ListLongMap!21747)

(declare-fun lt!593059 () V!54379)

(declare-fun lt!593061 () (_ BitVec 64))

(declare-fun lt!593063 () (_ BitVec 64))

(assert (=> b!1337334 (not (contains!8992 (+!4718 lt!593062 (tuple2!24079 lt!593061 lt!593059)) lt!593063))))

(declare-fun addStillNotContains!507 (ListLongMap!21747 (_ BitVec 64) V!54379 (_ BitVec 64)) Unit!43875)

(assert (=> b!1337334 (= lt!593060 (addStillNotContains!507 lt!593062 lt!593061 lt!593059 lt!593063))))

(assert (=> b!1337334 (= lt!593063 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1337334 (= lt!593059 (get!22157 (select (arr!43832 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1337334 (= lt!593061 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))

(assert (=> b!1337334 (= lt!593062 call!64904)))

(assert (=> b!1337334 (= e!761518 (+!4718 call!64904 (tuple2!24079 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22157 (select (arr!43832 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!143657 c!126012) b!1337337))

(assert (= (and d!143657 (not c!126012)) b!1337338))

(assert (= (and b!1337338 c!126015) b!1337334))

(assert (= (and b!1337338 (not c!126015)) b!1337327))

(assert (= (or b!1337334 b!1337327) bm!64901))

(assert (= (and d!143657 res!887557) b!1337328))

(assert (= (and b!1337328 res!887556) b!1337333))

(assert (= (and b!1337333 res!887555) b!1337331))

(assert (= (and b!1337333 c!126013) b!1337336))

(assert (= (and b!1337333 (not c!126013)) b!1337329))

(assert (= (and b!1337336 res!887554) b!1337335))

(assert (= (and b!1337329 c!126014) b!1337332))

(assert (= (and b!1337329 (not c!126014)) b!1337330))

(declare-fun b_lambda!24227 () Bool)

(assert (=> (not b_lambda!24227) (not b!1337335)))

(assert (=> b!1337335 t!45567))

(declare-fun b_and!50045 () Bool)

(assert (= b_and!50039 (and (=> t!45567 result!25321) b_and!50045)))

(declare-fun b_lambda!24229 () Bool)

(assert (=> (not b_lambda!24229) (not b!1337334)))

(assert (=> b!1337334 t!45567))

(declare-fun b_and!50047 () Bool)

(assert (= b_and!50045 (and (=> t!45567 result!25321) b_and!50047)))

(declare-fun m!1225411 () Bool)

(assert (=> b!1337334 m!1225411))

(declare-fun m!1225413 () Bool)

(assert (=> b!1337334 m!1225413))

(declare-fun m!1225415 () Bool)

(assert (=> b!1337334 m!1225415))

(assert (=> b!1337334 m!1225347))

(assert (=> b!1337334 m!1225415))

(declare-fun m!1225417 () Bool)

(assert (=> b!1337334 m!1225417))

(declare-fun m!1225419 () Bool)

(assert (=> b!1337334 m!1225419))

(declare-fun m!1225421 () Bool)

(assert (=> b!1337334 m!1225421))

(assert (=> b!1337334 m!1225419))

(assert (=> b!1337334 m!1225347))

(declare-fun m!1225423 () Bool)

(assert (=> b!1337334 m!1225423))

(declare-fun m!1225425 () Bool)

(assert (=> b!1337332 m!1225425))

(assert (=> bm!64901 m!1225425))

(declare-fun m!1225427 () Bool)

(assert (=> d!143657 m!1225427))

(assert (=> d!143657 m!1225339))

(assert (=> b!1337336 m!1225413))

(assert (=> b!1337336 m!1225413))

(declare-fun m!1225429 () Bool)

(assert (=> b!1337336 m!1225429))

(declare-fun m!1225431 () Bool)

(assert (=> b!1337330 m!1225431))

(assert (=> b!1337331 m!1225413))

(assert (=> b!1337331 m!1225413))

(declare-fun m!1225433 () Bool)

(assert (=> b!1337331 m!1225433))

(assert (=> b!1337338 m!1225413))

(assert (=> b!1337338 m!1225413))

(assert (=> b!1337338 m!1225433))

(assert (=> b!1337335 m!1225413))

(declare-fun m!1225435 () Bool)

(assert (=> b!1337335 m!1225435))

(assert (=> b!1337335 m!1225419))

(assert (=> b!1337335 m!1225347))

(assert (=> b!1337335 m!1225423))

(assert (=> b!1337335 m!1225413))

(assert (=> b!1337335 m!1225347))

(assert (=> b!1337335 m!1225419))

(declare-fun m!1225437 () Bool)

(assert (=> b!1337328 m!1225437))

(assert (=> b!1337246 d!143657))

(declare-fun d!143659 () Bool)

(declare-fun c!126018 () Bool)

(assert (=> d!143659 (= c!126018 ((_ is ValueCellFull!17580) (select (arr!43832 _values!1320) from!1980)))))

(declare-fun e!761522 () V!54379)

(assert (=> d!143659 (= (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)) e!761522)))

(declare-fun b!1337343 () Bool)

(declare-fun get!22158 (ValueCell!17580 V!54379) V!54379)

(assert (=> b!1337343 (= e!761522 (get!22158 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1337344 () Bool)

(declare-fun get!22159 (ValueCell!17580 V!54379) V!54379)

(assert (=> b!1337344 (= e!761522 (get!22159 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143659 c!126018) b!1337343))

(assert (= (and d!143659 (not c!126018)) b!1337344))

(assert (=> b!1337343 m!1225353))

(assert (=> b!1337343 m!1225347))

(declare-fun m!1225439 () Bool)

(assert (=> b!1337343 m!1225439))

(assert (=> b!1337344 m!1225353))

(assert (=> b!1337344 m!1225347))

(declare-fun m!1225441 () Bool)

(assert (=> b!1337344 m!1225441))

(assert (=> b!1337246 d!143659))

(declare-fun b!1337355 () Bool)

(declare-fun e!761534 () Bool)

(declare-fun contains!8994 (List!31245 (_ BitVec 64)) Bool)

(assert (=> b!1337355 (= e!761534 (contains!8994 Nil!31242 (select (arr!43833 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun d!143661 () Bool)

(declare-fun res!887564 () Bool)

(declare-fun e!761531 () Bool)

(assert (=> d!143661 (=> res!887564 e!761531)))

(assert (=> d!143661 (= res!887564 (bvsge #b00000000000000000000000000000000 (size!44384 _keys!1590)))))

(assert (=> d!143661 (= (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31242) e!761531)))

(declare-fun bm!64904 () Bool)

(declare-fun call!64907 () Bool)

(declare-fun c!126021 () Bool)

(assert (=> bm!64904 (= call!64907 (arrayNoDuplicates!0 _keys!1590 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!126021 (Cons!31241 (select (arr!43833 _keys!1590) #b00000000000000000000000000000000) Nil!31242) Nil!31242)))))

(declare-fun b!1337356 () Bool)

(declare-fun e!761533 () Bool)

(declare-fun e!761532 () Bool)

(assert (=> b!1337356 (= e!761533 e!761532)))

(assert (=> b!1337356 (= c!126021 (validKeyInArray!0 (select (arr!43833 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun b!1337357 () Bool)

(assert (=> b!1337357 (= e!761532 call!64907)))

(declare-fun b!1337358 () Bool)

(assert (=> b!1337358 (= e!761531 e!761533)))

(declare-fun res!887565 () Bool)

(assert (=> b!1337358 (=> (not res!887565) (not e!761533))))

(assert (=> b!1337358 (= res!887565 (not e!761534))))

(declare-fun res!887566 () Bool)

(assert (=> b!1337358 (=> (not res!887566) (not e!761534))))

(assert (=> b!1337358 (= res!887566 (validKeyInArray!0 (select (arr!43833 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun b!1337359 () Bool)

(assert (=> b!1337359 (= e!761532 call!64907)))

(assert (= (and d!143661 (not res!887564)) b!1337358))

(assert (= (and b!1337358 res!887566) b!1337355))

(assert (= (and b!1337358 res!887565) b!1337356))

(assert (= (and b!1337356 c!126021) b!1337359))

(assert (= (and b!1337356 (not c!126021)) b!1337357))

(assert (= (or b!1337359 b!1337357) bm!64904))

(declare-fun m!1225443 () Bool)

(assert (=> b!1337355 m!1225443))

(assert (=> b!1337355 m!1225443))

(declare-fun m!1225445 () Bool)

(assert (=> b!1337355 m!1225445))

(assert (=> bm!64904 m!1225443))

(declare-fun m!1225447 () Bool)

(assert (=> bm!64904 m!1225447))

(assert (=> b!1337356 m!1225443))

(assert (=> b!1337356 m!1225443))

(declare-fun m!1225449 () Bool)

(assert (=> b!1337356 m!1225449))

(assert (=> b!1337358 m!1225443))

(assert (=> b!1337358 m!1225443))

(assert (=> b!1337358 m!1225449))

(assert (=> b!1337245 d!143661))

(declare-fun d!143663 () Bool)

(declare-fun e!761536 () Bool)

(assert (=> d!143663 e!761536))

(declare-fun res!887567 () Bool)

(assert (=> d!143663 (=> res!887567 e!761536)))

(declare-fun lt!593069 () Bool)

(assert (=> d!143663 (= res!887567 (not lt!593069))))

(declare-fun lt!593068 () Bool)

(assert (=> d!143663 (= lt!593069 lt!593068)))

(declare-fun lt!593067 () Unit!43875)

(declare-fun e!761535 () Unit!43875)

(assert (=> d!143663 (= lt!593067 e!761535)))

(declare-fun c!126022 () Bool)

(assert (=> d!143663 (= c!126022 lt!593068)))

(assert (=> d!143663 (= lt!593068 (containsKey!737 (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(assert (=> d!143663 (= (contains!8992 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153) lt!593069)))

(declare-fun b!1337360 () Bool)

(declare-fun lt!593066 () Unit!43875)

(assert (=> b!1337360 (= e!761535 lt!593066)))

(assert (=> b!1337360 (= lt!593066 (lemmaContainsKeyImpliesGetValueByKeyDefined!482 (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(assert (=> b!1337360 (isDefined!522 (getValueByKey!719 (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(declare-fun b!1337361 () Bool)

(declare-fun Unit!43878 () Unit!43875)

(assert (=> b!1337361 (= e!761535 Unit!43878)))

(declare-fun b!1337362 () Bool)

(assert (=> b!1337362 (= e!761536 (isDefined!522 (getValueByKey!719 (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153)))))

(assert (= (and d!143663 c!126022) b!1337360))

(assert (= (and d!143663 (not c!126022)) b!1337361))

(assert (= (and d!143663 (not res!887567)) b!1337362))

(declare-fun m!1225451 () Bool)

(assert (=> d!143663 m!1225451))

(declare-fun m!1225453 () Bool)

(assert (=> b!1337360 m!1225453))

(declare-fun m!1225455 () Bool)

(assert (=> b!1337360 m!1225455))

(assert (=> b!1337360 m!1225455))

(declare-fun m!1225457 () Bool)

(assert (=> b!1337360 m!1225457))

(assert (=> b!1337362 m!1225455))

(assert (=> b!1337362 m!1225455))

(assert (=> b!1337362 m!1225457))

(assert (=> b!1337242 d!143663))

(declare-fun bm!64919 () Bool)

(declare-fun call!64922 () Bool)

(declare-fun lt!593130 () ListLongMap!21747)

(assert (=> bm!64919 (= call!64922 (contains!8992 lt!593130 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1337405 () Bool)

(declare-fun e!761573 () Bool)

(declare-fun e!761571 () Bool)

(assert (=> b!1337405 (= e!761573 e!761571)))

(declare-fun res!887594 () Bool)

(assert (=> b!1337405 (= res!887594 call!64922)))

(assert (=> b!1337405 (=> (not res!887594) (not e!761571))))

(declare-fun b!1337406 () Bool)

(declare-fun e!761574 () Bool)

(assert (=> b!1337406 (= e!761574 (= (apply!1069 lt!593130 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1262))))

(declare-fun b!1337407 () Bool)

(declare-fun e!761564 () ListLongMap!21747)

(declare-fun call!64928 () ListLongMap!21747)

(assert (=> b!1337407 (= e!761564 call!64928)))

(declare-fun call!64925 () ListLongMap!21747)

(declare-fun bm!64920 () Bool)

(assert (=> bm!64920 (= call!64925 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun bm!64921 () Bool)

(declare-fun call!64926 () Bool)

(assert (=> bm!64921 (= call!64926 (contains!8992 lt!593130 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1337408 () Bool)

(declare-fun e!761563 () ListLongMap!21747)

(declare-fun call!64927 () ListLongMap!21747)

(assert (=> b!1337408 (= e!761563 call!64927)))

(declare-fun b!1337409 () Bool)

(assert (=> b!1337409 (= e!761564 call!64927)))

(declare-fun bm!64922 () Bool)

(declare-fun call!64923 () ListLongMap!21747)

(assert (=> bm!64922 (= call!64923 call!64925)))

(declare-fun d!143665 () Bool)

(declare-fun e!761566 () Bool)

(assert (=> d!143665 e!761566))

(declare-fun res!887587 () Bool)

(assert (=> d!143665 (=> (not res!887587) (not e!761566))))

(assert (=> d!143665 (= res!887587 (or (bvsge from!1980 (size!44384 _keys!1590)) (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44384 _keys!1590)))))))

(declare-fun lt!593134 () ListLongMap!21747)

(assert (=> d!143665 (= lt!593130 lt!593134)))

(declare-fun lt!593127 () Unit!43875)

(declare-fun e!761570 () Unit!43875)

(assert (=> d!143665 (= lt!593127 e!761570)))

(declare-fun c!126036 () Bool)

(declare-fun e!761572 () Bool)

(assert (=> d!143665 (= c!126036 e!761572)))

(declare-fun res!887591 () Bool)

(assert (=> d!143665 (=> (not res!887591) (not e!761572))))

(assert (=> d!143665 (= res!887591 (bvslt from!1980 (size!44384 _keys!1590)))))

(declare-fun e!761565 () ListLongMap!21747)

(assert (=> d!143665 (= lt!593134 e!761565)))

(declare-fun c!126039 () Bool)

(assert (=> d!143665 (= c!126039 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!143665 (validMask!0 mask!1998)))

(assert (=> d!143665 (= (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) lt!593130)))

(declare-fun b!1337410 () Bool)

(declare-fun e!761567 () Bool)

(assert (=> b!1337410 (= e!761567 e!761574)))

(declare-fun res!887586 () Bool)

(assert (=> b!1337410 (= res!887586 call!64926)))

(assert (=> b!1337410 (=> (not res!887586) (not e!761574))))

(declare-fun b!1337411 () Bool)

(declare-fun c!126038 () Bool)

(assert (=> b!1337411 (= c!126038 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1337411 (= e!761563 e!761564)))

(declare-fun b!1337412 () Bool)

(assert (=> b!1337412 (= e!761572 (validKeyInArray!0 (select (arr!43833 _keys!1590) from!1980)))))

(declare-fun call!64924 () ListLongMap!21747)

(declare-fun bm!64923 () Bool)

(declare-fun c!126040 () Bool)

(assert (=> bm!64923 (= call!64924 (+!4718 (ite c!126039 call!64925 (ite c!126040 call!64923 call!64928)) (ite (or c!126039 c!126040) (tuple2!24079 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun b!1337413 () Bool)

(assert (=> b!1337413 (= e!761573 (not call!64922))))

(declare-fun bm!64924 () Bool)

(assert (=> bm!64924 (= call!64927 call!64924)))

(declare-fun e!761575 () Bool)

(declare-fun b!1337414 () Bool)

(assert (=> b!1337414 (= e!761575 (= (apply!1069 lt!593130 (select (arr!43833 _keys!1590) from!1980)) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1337414 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44383 _values!1320)))))

(assert (=> b!1337414 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44384 _keys!1590)))))

(declare-fun b!1337415 () Bool)

(declare-fun res!887590 () Bool)

(assert (=> b!1337415 (=> (not res!887590) (not e!761566))))

(declare-fun e!761568 () Bool)

(assert (=> b!1337415 (= res!887590 e!761568)))

(declare-fun res!887589 () Bool)

(assert (=> b!1337415 (=> res!887589 e!761568)))

(declare-fun e!761569 () Bool)

(assert (=> b!1337415 (= res!887589 (not e!761569))))

(declare-fun res!887593 () Bool)

(assert (=> b!1337415 (=> (not res!887593) (not e!761569))))

(assert (=> b!1337415 (= res!887593 (bvslt from!1980 (size!44384 _keys!1590)))))

(declare-fun b!1337416 () Bool)

(declare-fun lt!593128 () Unit!43875)

(assert (=> b!1337416 (= e!761570 lt!593128)))

(declare-fun lt!593129 () ListLongMap!21747)

(assert (=> b!1337416 (= lt!593129 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun lt!593125 () (_ BitVec 64))

(assert (=> b!1337416 (= lt!593125 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593132 () (_ BitVec 64))

(assert (=> b!1337416 (= lt!593132 (select (arr!43833 _keys!1590) from!1980))))

(declare-fun lt!593116 () Unit!43875)

(declare-fun addStillContains!1195 (ListLongMap!21747 (_ BitVec 64) V!54379 (_ BitVec 64)) Unit!43875)

(assert (=> b!1337416 (= lt!593116 (addStillContains!1195 lt!593129 lt!593125 zeroValue!1262 lt!593132))))

(assert (=> b!1337416 (contains!8992 (+!4718 lt!593129 (tuple2!24079 lt!593125 zeroValue!1262)) lt!593132)))

(declare-fun lt!593119 () Unit!43875)

(assert (=> b!1337416 (= lt!593119 lt!593116)))

(declare-fun lt!593117 () ListLongMap!21747)

(assert (=> b!1337416 (= lt!593117 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun lt!593126 () (_ BitVec 64))

(assert (=> b!1337416 (= lt!593126 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593120 () (_ BitVec 64))

(assert (=> b!1337416 (= lt!593120 (select (arr!43833 _keys!1590) from!1980))))

(declare-fun lt!593131 () Unit!43875)

(declare-fun addApplyDifferent!572 (ListLongMap!21747 (_ BitVec 64) V!54379 (_ BitVec 64)) Unit!43875)

(assert (=> b!1337416 (= lt!593131 (addApplyDifferent!572 lt!593117 lt!593126 minValue!1262 lt!593120))))

(assert (=> b!1337416 (= (apply!1069 (+!4718 lt!593117 (tuple2!24079 lt!593126 minValue!1262)) lt!593120) (apply!1069 lt!593117 lt!593120))))

(declare-fun lt!593121 () Unit!43875)

(assert (=> b!1337416 (= lt!593121 lt!593131)))

(declare-fun lt!593135 () ListLongMap!21747)

(assert (=> b!1337416 (= lt!593135 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun lt!593118 () (_ BitVec 64))

(assert (=> b!1337416 (= lt!593118 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593114 () (_ BitVec 64))

(assert (=> b!1337416 (= lt!593114 (select (arr!43833 _keys!1590) from!1980))))

(declare-fun lt!593115 () Unit!43875)

(assert (=> b!1337416 (= lt!593115 (addApplyDifferent!572 lt!593135 lt!593118 zeroValue!1262 lt!593114))))

(assert (=> b!1337416 (= (apply!1069 (+!4718 lt!593135 (tuple2!24079 lt!593118 zeroValue!1262)) lt!593114) (apply!1069 lt!593135 lt!593114))))

(declare-fun lt!593123 () Unit!43875)

(assert (=> b!1337416 (= lt!593123 lt!593115)))

(declare-fun lt!593124 () ListLongMap!21747)

(assert (=> b!1337416 (= lt!593124 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun lt!593133 () (_ BitVec 64))

(assert (=> b!1337416 (= lt!593133 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593122 () (_ BitVec 64))

(assert (=> b!1337416 (= lt!593122 (select (arr!43833 _keys!1590) from!1980))))

(assert (=> b!1337416 (= lt!593128 (addApplyDifferent!572 lt!593124 lt!593133 minValue!1262 lt!593122))))

(assert (=> b!1337416 (= (apply!1069 (+!4718 lt!593124 (tuple2!24079 lt!593133 minValue!1262)) lt!593122) (apply!1069 lt!593124 lt!593122))))

(declare-fun b!1337417 () Bool)

(assert (=> b!1337417 (= e!761567 (not call!64926))))

(declare-fun bm!64925 () Bool)

(assert (=> bm!64925 (= call!64928 call!64923)))

(declare-fun b!1337418 () Bool)

(assert (=> b!1337418 (= e!761565 e!761563)))

(assert (=> b!1337418 (= c!126040 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1337419 () Bool)

(declare-fun Unit!43879 () Unit!43875)

(assert (=> b!1337419 (= e!761570 Unit!43879)))

(declare-fun b!1337420 () Bool)

(assert (=> b!1337420 (= e!761568 e!761575)))

(declare-fun res!887592 () Bool)

(assert (=> b!1337420 (=> (not res!887592) (not e!761575))))

(assert (=> b!1337420 (= res!887592 (contains!8992 lt!593130 (select (arr!43833 _keys!1590) from!1980)))))

(assert (=> b!1337420 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44384 _keys!1590)))))

(declare-fun b!1337421 () Bool)

(assert (=> b!1337421 (= e!761565 (+!4718 call!64924 (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))

(declare-fun b!1337422 () Bool)

(assert (=> b!1337422 (= e!761569 (validKeyInArray!0 (select (arr!43833 _keys!1590) from!1980)))))

(declare-fun b!1337423 () Bool)

(declare-fun res!887588 () Bool)

(assert (=> b!1337423 (=> (not res!887588) (not e!761566))))

(assert (=> b!1337423 (= res!887588 e!761573)))

(declare-fun c!126035 () Bool)

(assert (=> b!1337423 (= c!126035 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1337424 () Bool)

(assert (=> b!1337424 (= e!761571 (= (apply!1069 lt!593130 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1262))))

(declare-fun b!1337425 () Bool)

(assert (=> b!1337425 (= e!761566 e!761567)))

(declare-fun c!126037 () Bool)

(assert (=> b!1337425 (= c!126037 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!143665 c!126039) b!1337421))

(assert (= (and d!143665 (not c!126039)) b!1337418))

(assert (= (and b!1337418 c!126040) b!1337408))

(assert (= (and b!1337418 (not c!126040)) b!1337411))

(assert (= (and b!1337411 c!126038) b!1337409))

(assert (= (and b!1337411 (not c!126038)) b!1337407))

(assert (= (or b!1337409 b!1337407) bm!64925))

(assert (= (or b!1337408 bm!64925) bm!64922))

(assert (= (or b!1337408 b!1337409) bm!64924))

(assert (= (or b!1337421 bm!64922) bm!64920))

(assert (= (or b!1337421 bm!64924) bm!64923))

(assert (= (and d!143665 res!887591) b!1337412))

(assert (= (and d!143665 c!126036) b!1337416))

(assert (= (and d!143665 (not c!126036)) b!1337419))

(assert (= (and d!143665 res!887587) b!1337415))

(assert (= (and b!1337415 res!887593) b!1337422))

(assert (= (and b!1337415 (not res!887589)) b!1337420))

(assert (= (and b!1337420 res!887592) b!1337414))

(assert (= (and b!1337415 res!887590) b!1337423))

(assert (= (and b!1337423 c!126035) b!1337405))

(assert (= (and b!1337423 (not c!126035)) b!1337413))

(assert (= (and b!1337405 res!887594) b!1337424))

(assert (= (or b!1337405 b!1337413) bm!64919))

(assert (= (and b!1337423 res!887588) b!1337425))

(assert (= (and b!1337425 c!126037) b!1337410))

(assert (= (and b!1337425 (not c!126037)) b!1337417))

(assert (= (and b!1337410 res!887586) b!1337406))

(assert (= (or b!1337410 b!1337417) bm!64921))

(declare-fun b_lambda!24231 () Bool)

(assert (=> (not b_lambda!24231) (not b!1337414)))

(assert (=> b!1337414 t!45567))

(declare-fun b_and!50049 () Bool)

(assert (= b_and!50047 (and (=> t!45567 result!25321) b_and!50049)))

(assert (=> b!1337422 m!1225335))

(assert (=> b!1337422 m!1225335))

(assert (=> b!1337422 m!1225345))

(declare-fun m!1225459 () Bool)

(assert (=> b!1337406 m!1225459))

(assert (=> b!1337420 m!1225335))

(assert (=> b!1337420 m!1225335))

(declare-fun m!1225461 () Bool)

(assert (=> b!1337420 m!1225461))

(assert (=> b!1337414 m!1225335))

(assert (=> b!1337414 m!1225353))

(assert (=> b!1337414 m!1225335))

(declare-fun m!1225463 () Bool)

(assert (=> b!1337414 m!1225463))

(assert (=> b!1337414 m!1225347))

(assert (=> b!1337414 m!1225353))

(assert (=> b!1337414 m!1225347))

(assert (=> b!1337414 m!1225355))

(declare-fun m!1225465 () Bool)

(assert (=> bm!64923 m!1225465))

(declare-fun m!1225467 () Bool)

(assert (=> bm!64921 m!1225467))

(declare-fun m!1225469 () Bool)

(assert (=> b!1337416 m!1225469))

(declare-fun m!1225471 () Bool)

(assert (=> b!1337416 m!1225471))

(declare-fun m!1225473 () Bool)

(assert (=> b!1337416 m!1225473))

(declare-fun m!1225475 () Bool)

(assert (=> b!1337416 m!1225475))

(declare-fun m!1225477 () Bool)

(assert (=> b!1337416 m!1225477))

(declare-fun m!1225479 () Bool)

(assert (=> b!1337416 m!1225479))

(declare-fun m!1225481 () Bool)

(assert (=> b!1337416 m!1225481))

(declare-fun m!1225483 () Bool)

(assert (=> b!1337416 m!1225483))

(assert (=> b!1337416 m!1225479))

(declare-fun m!1225485 () Bool)

(assert (=> b!1337416 m!1225485))

(declare-fun m!1225487 () Bool)

(assert (=> b!1337416 m!1225487))

(declare-fun m!1225489 () Bool)

(assert (=> b!1337416 m!1225489))

(declare-fun m!1225491 () Bool)

(assert (=> b!1337416 m!1225491))

(declare-fun m!1225493 () Bool)

(assert (=> b!1337416 m!1225493))

(declare-fun m!1225495 () Bool)

(assert (=> b!1337416 m!1225495))

(assert (=> b!1337416 m!1225335))

(assert (=> b!1337416 m!1225491))

(assert (=> b!1337416 m!1225495))

(declare-fun m!1225497 () Bool)

(assert (=> b!1337416 m!1225497))

(assert (=> b!1337416 m!1225469))

(declare-fun m!1225499 () Bool)

(assert (=> b!1337416 m!1225499))

(assert (=> d!143665 m!1225339))

(assert (=> b!1337412 m!1225335))

(assert (=> b!1337412 m!1225335))

(assert (=> b!1337412 m!1225345))

(declare-fun m!1225501 () Bool)

(assert (=> bm!64919 m!1225501))

(declare-fun m!1225503 () Bool)

(assert (=> b!1337424 m!1225503))

(declare-fun m!1225505 () Bool)

(assert (=> b!1337421 m!1225505))

(assert (=> bm!64920 m!1225499))

(assert (=> b!1337242 d!143665))

(declare-fun b!1337434 () Bool)

(declare-fun e!761582 () Bool)

(declare-fun e!761583 () Bool)

(assert (=> b!1337434 (= e!761582 e!761583)))

(declare-fun lt!593142 () (_ BitVec 64))

(assert (=> b!1337434 (= lt!593142 (select (arr!43833 _keys!1590) #b00000000000000000000000000000000))))

(declare-fun lt!593143 () Unit!43875)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!90747 (_ BitVec 64) (_ BitVec 32)) Unit!43875)

(assert (=> b!1337434 (= lt!593143 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1590 lt!593142 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!90747 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1337434 (arrayContainsKey!0 _keys!1590 lt!593142 #b00000000000000000000000000000000)))

(declare-fun lt!593144 () Unit!43875)

(assert (=> b!1337434 (= lt!593144 lt!593143)))

(declare-fun res!887599 () Bool)

(declare-datatypes ((SeekEntryResult!10046 0))(
  ( (MissingZero!10046 (index!42554 (_ BitVec 32))) (Found!10046 (index!42555 (_ BitVec 32))) (Intermediate!10046 (undefined!10858 Bool) (index!42556 (_ BitVec 32)) (x!119474 (_ BitVec 32))) (Undefined!10046) (MissingVacant!10046 (index!42557 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!90747 (_ BitVec 32)) SeekEntryResult!10046)

(assert (=> b!1337434 (= res!887599 (= (seekEntryOrOpen!0 (select (arr!43833 _keys!1590) #b00000000000000000000000000000000) _keys!1590 mask!1998) (Found!10046 #b00000000000000000000000000000000)))))

(assert (=> b!1337434 (=> (not res!887599) (not e!761583))))

(declare-fun b!1337435 () Bool)

(declare-fun call!64931 () Bool)

(assert (=> b!1337435 (= e!761582 call!64931)))

(declare-fun b!1337436 () Bool)

(declare-fun e!761584 () Bool)

(assert (=> b!1337436 (= e!761584 e!761582)))

(declare-fun c!126043 () Bool)

(assert (=> b!1337436 (= c!126043 (validKeyInArray!0 (select (arr!43833 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun d!143667 () Bool)

(declare-fun res!887600 () Bool)

(assert (=> d!143667 (=> res!887600 e!761584)))

(assert (=> d!143667 (= res!887600 (bvsge #b00000000000000000000000000000000 (size!44384 _keys!1590)))))

(assert (=> d!143667 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998) e!761584)))

(declare-fun b!1337437 () Bool)

(assert (=> b!1337437 (= e!761583 call!64931)))

(declare-fun bm!64928 () Bool)

(assert (=> bm!64928 (= call!64931 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1590 mask!1998))))

(assert (= (and d!143667 (not res!887600)) b!1337436))

(assert (= (and b!1337436 c!126043) b!1337434))

(assert (= (and b!1337436 (not c!126043)) b!1337435))

(assert (= (and b!1337434 res!887599) b!1337437))

(assert (= (or b!1337437 b!1337435) bm!64928))

(assert (=> b!1337434 m!1225443))

(declare-fun m!1225507 () Bool)

(assert (=> b!1337434 m!1225507))

(declare-fun m!1225509 () Bool)

(assert (=> b!1337434 m!1225509))

(assert (=> b!1337434 m!1225443))

(declare-fun m!1225511 () Bool)

(assert (=> b!1337434 m!1225511))

(assert (=> b!1337436 m!1225443))

(assert (=> b!1337436 m!1225443))

(assert (=> b!1337436 m!1225449))

(declare-fun m!1225513 () Bool)

(assert (=> bm!64928 m!1225513))

(assert (=> b!1337238 d!143667))

(declare-fun d!143669 () Bool)

(assert (=> d!143669 (= (validKeyInArray!0 (select (arr!43833 _keys!1590) from!1980)) (and (not (= (select (arr!43833 _keys!1590) from!1980) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!43833 _keys!1590) from!1980) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1337247 d!143669))

(declare-fun d!143671 () Bool)

(assert (=> d!143671 (= (validMask!0 mask!1998) (and (or (= mask!1998 #b00000000000000000000000000000111) (= mask!1998 #b00000000000000000000000000001111) (= mask!1998 #b00000000000000000000000000011111) (= mask!1998 #b00000000000000000000000000111111) (= mask!1998 #b00000000000000000000000001111111) (= mask!1998 #b00000000000000000000000011111111) (= mask!1998 #b00000000000000000000000111111111) (= mask!1998 #b00000000000000000000001111111111) (= mask!1998 #b00000000000000000000011111111111) (= mask!1998 #b00000000000000000000111111111111) (= mask!1998 #b00000000000000000001111111111111) (= mask!1998 #b00000000000000000011111111111111) (= mask!1998 #b00000000000000000111111111111111) (= mask!1998 #b00000000000000001111111111111111) (= mask!1998 #b00000000000000011111111111111111) (= mask!1998 #b00000000000000111111111111111111) (= mask!1998 #b00000000000001111111111111111111) (= mask!1998 #b00000000000011111111111111111111) (= mask!1998 #b00000000000111111111111111111111) (= mask!1998 #b00000000001111111111111111111111) (= mask!1998 #b00000000011111111111111111111111) (= mask!1998 #b00000000111111111111111111111111) (= mask!1998 #b00000001111111111111111111111111) (= mask!1998 #b00000011111111111111111111111111) (= mask!1998 #b00000111111111111111111111111111) (= mask!1998 #b00001111111111111111111111111111) (= mask!1998 #b00011111111111111111111111111111) (= mask!1998 #b00111111111111111111111111111111)) (bvsle mask!1998 #b00111111111111111111111111111111)))))

(assert (=> start!112772 d!143671))

(declare-fun d!143673 () Bool)

(assert (=> d!143673 (= (array_inv!32981 _values!1320) (bvsge (size!44383 _values!1320) #b00000000000000000000000000000000))))

(assert (=> start!112772 d!143673))

(declare-fun d!143675 () Bool)

(assert (=> d!143675 (= (array_inv!32982 _keys!1590) (bvsge (size!44384 _keys!1590) #b00000000000000000000000000000000))))

(assert (=> start!112772 d!143675))

(declare-fun condMapEmpty!57122 () Bool)

(declare-fun mapDefault!57122 () ValueCell!17580)

(assert (=> mapNonEmpty!57116 (= condMapEmpty!57122 (= mapRest!57116 ((as const (Array (_ BitVec 32) ValueCell!17580)) mapDefault!57122)))))

(declare-fun e!761590 () Bool)

(declare-fun mapRes!57122 () Bool)

(assert (=> mapNonEmpty!57116 (= tp!108786 (and e!761590 mapRes!57122))))

(declare-fun mapNonEmpty!57122 () Bool)

(declare-fun tp!108795 () Bool)

(declare-fun e!761589 () Bool)

(assert (=> mapNonEmpty!57122 (= mapRes!57122 (and tp!108795 e!761589))))

(declare-fun mapRest!57122 () (Array (_ BitVec 32) ValueCell!17580))

(declare-fun mapKey!57122 () (_ BitVec 32))

(declare-fun mapValue!57122 () ValueCell!17580)

(assert (=> mapNonEmpty!57122 (= mapRest!57116 (store mapRest!57122 mapKey!57122 mapValue!57122))))

(declare-fun b!1337444 () Bool)

(assert (=> b!1337444 (= e!761589 tp_is_empty!36957)))

(declare-fun mapIsEmpty!57122 () Bool)

(assert (=> mapIsEmpty!57122 mapRes!57122))

(declare-fun b!1337445 () Bool)

(assert (=> b!1337445 (= e!761590 tp_is_empty!36957)))

(assert (= (and mapNonEmpty!57116 condMapEmpty!57122) mapIsEmpty!57122))

(assert (= (and mapNonEmpty!57116 (not condMapEmpty!57122)) mapNonEmpty!57122))

(assert (= (and mapNonEmpty!57122 ((_ is ValueCellFull!17580) mapValue!57122)) b!1337444))

(assert (= (and mapNonEmpty!57116 ((_ is ValueCellFull!17580) mapDefault!57122)) b!1337445))

(declare-fun m!1225515 () Bool)

(assert (=> mapNonEmpty!57122 m!1225515))

(declare-fun b_lambda!24233 () Bool)

(assert (= b_lambda!24227 (or (and start!112772 b_free!31047) b_lambda!24233)))

(declare-fun b_lambda!24235 () Bool)

(assert (= b_lambda!24231 (or (and start!112772 b_free!31047) b_lambda!24235)))

(declare-fun b_lambda!24237 () Bool)

(assert (= b_lambda!24229 (or (and start!112772 b_free!31047) b_lambda!24237)))

(check-sat (not d!143665) (not d!143655) (not mapNonEmpty!57122) (not b!1337358) (not b_next!31047) (not b_lambda!24233) (not b!1337412) (not bm!64904) (not b!1337406) (not b!1337336) (not b!1337344) (not b!1337421) (not b!1337334) (not bm!64928) (not b!1337332) (not b_lambda!24237) (not b!1337301) (not b_lambda!24225) (not b!1337436) (not b!1337422) (not d!143657) (not b!1337362) (not b!1337355) (not b!1337424) (not bm!64919) (not d!143653) (not b!1337338) (not bm!64920) (not b!1337416) (not b!1337296) (not b!1337331) (not b!1337335) (not b!1337343) (not b!1337360) (not bm!64901) (not b!1337302) (not b!1337328) b_and!50049 (not b_lambda!24235) (not b!1337294) (not b!1337414) (not bm!64921) (not b!1337356) (not bm!64923) (not d!143663) (not b!1337420) (not b!1337330) tp_is_empty!36957 (not b!1337434))
(check-sat b_and!50049 (not b_next!31047))
(get-model)

(declare-fun d!143677 () Bool)

(declare-fun e!761592 () Bool)

(assert (=> d!143677 e!761592))

(declare-fun res!887601 () Bool)

(assert (=> d!143677 (=> res!887601 e!761592)))

(declare-fun lt!593148 () Bool)

(assert (=> d!143677 (= res!887601 (not lt!593148))))

(declare-fun lt!593147 () Bool)

(assert (=> d!143677 (= lt!593148 lt!593147)))

(declare-fun lt!593146 () Unit!43875)

(declare-fun e!761591 () Unit!43875)

(assert (=> d!143677 (= lt!593146 e!761591)))

(declare-fun c!126044 () Bool)

(assert (=> d!143677 (= c!126044 lt!593147)))

(assert (=> d!143677 (= lt!593147 (containsKey!737 (toList!10889 lt!593064) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!143677 (= (contains!8992 lt!593064 #b1000000000000000000000000000000000000000000000000000000000000000) lt!593148)))

(declare-fun b!1337446 () Bool)

(declare-fun lt!593145 () Unit!43875)

(assert (=> b!1337446 (= e!761591 lt!593145)))

(assert (=> b!1337446 (= lt!593145 (lemmaContainsKeyImpliesGetValueByKeyDefined!482 (toList!10889 lt!593064) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1337446 (isDefined!522 (getValueByKey!719 (toList!10889 lt!593064) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1337447 () Bool)

(declare-fun Unit!43880 () Unit!43875)

(assert (=> b!1337447 (= e!761591 Unit!43880)))

(declare-fun b!1337448 () Bool)

(assert (=> b!1337448 (= e!761592 (isDefined!522 (getValueByKey!719 (toList!10889 lt!593064) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143677 c!126044) b!1337446))

(assert (= (and d!143677 (not c!126044)) b!1337447))

(assert (= (and d!143677 (not res!887601)) b!1337448))

(declare-fun m!1225517 () Bool)

(assert (=> d!143677 m!1225517))

(declare-fun m!1225519 () Bool)

(assert (=> b!1337446 m!1225519))

(declare-fun m!1225521 () Bool)

(assert (=> b!1337446 m!1225521))

(assert (=> b!1337446 m!1225521))

(declare-fun m!1225523 () Bool)

(assert (=> b!1337446 m!1225523))

(assert (=> b!1337448 m!1225521))

(assert (=> b!1337448 m!1225521))

(assert (=> b!1337448 m!1225523))

(assert (=> b!1337328 d!143677))

(declare-fun d!143679 () Bool)

(assert (=> d!143679 (= (get!22158 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)) (v!21192 (select (arr!43832 _values!1320) from!1980)))))

(assert (=> b!1337343 d!143679))

(declare-fun d!143681 () Bool)

(declare-fun get!22160 (Option!770) V!54379)

(assert (=> d!143681 (= (apply!1069 lt!593130 (select (arr!43833 _keys!1590) from!1980)) (get!22160 (getValueByKey!719 (toList!10889 lt!593130) (select (arr!43833 _keys!1590) from!1980))))))

(declare-fun bs!38288 () Bool)

(assert (= bs!38288 d!143681))

(assert (=> bs!38288 m!1225335))

(declare-fun m!1225525 () Bool)

(assert (=> bs!38288 m!1225525))

(assert (=> bs!38288 m!1225525))

(declare-fun m!1225527 () Bool)

(assert (=> bs!38288 m!1225527))

(assert (=> b!1337414 d!143681))

(assert (=> b!1337414 d!143659))

(declare-fun d!143683 () Bool)

(declare-fun e!761593 () Bool)

(assert (=> d!143683 e!761593))

(declare-fun res!887602 () Bool)

(assert (=> d!143683 (=> (not res!887602) (not e!761593))))

(declare-fun lt!593152 () ListLongMap!21747)

(assert (=> d!143683 (= res!887602 (contains!8992 lt!593152 (_1!12049 (tuple2!24079 lt!593133 minValue!1262))))))

(declare-fun lt!593150 () List!31246)

(assert (=> d!143683 (= lt!593152 (ListLongMap!21748 lt!593150))))

(declare-fun lt!593151 () Unit!43875)

(declare-fun lt!593149 () Unit!43875)

(assert (=> d!143683 (= lt!593151 lt!593149)))

(assert (=> d!143683 (= (getValueByKey!719 lt!593150 (_1!12049 (tuple2!24079 lt!593133 minValue!1262))) (Some!769 (_2!12049 (tuple2!24079 lt!593133 minValue!1262))))))

(assert (=> d!143683 (= lt!593149 (lemmaContainsTupThenGetReturnValue!362 lt!593150 (_1!12049 (tuple2!24079 lt!593133 minValue!1262)) (_2!12049 (tuple2!24079 lt!593133 minValue!1262))))))

(assert (=> d!143683 (= lt!593150 (insertStrictlySorted!491 (toList!10889 lt!593124) (_1!12049 (tuple2!24079 lt!593133 minValue!1262)) (_2!12049 (tuple2!24079 lt!593133 minValue!1262))))))

(assert (=> d!143683 (= (+!4718 lt!593124 (tuple2!24079 lt!593133 minValue!1262)) lt!593152)))

(declare-fun b!1337449 () Bool)

(declare-fun res!887603 () Bool)

(assert (=> b!1337449 (=> (not res!887603) (not e!761593))))

(assert (=> b!1337449 (= res!887603 (= (getValueByKey!719 (toList!10889 lt!593152) (_1!12049 (tuple2!24079 lt!593133 minValue!1262))) (Some!769 (_2!12049 (tuple2!24079 lt!593133 minValue!1262)))))))

(declare-fun b!1337450 () Bool)

(assert (=> b!1337450 (= e!761593 (contains!8993 (toList!10889 lt!593152) (tuple2!24079 lt!593133 minValue!1262)))))

(assert (= (and d!143683 res!887602) b!1337449))

(assert (= (and b!1337449 res!887603) b!1337450))

(declare-fun m!1225529 () Bool)

(assert (=> d!143683 m!1225529))

(declare-fun m!1225531 () Bool)

(assert (=> d!143683 m!1225531))

(declare-fun m!1225533 () Bool)

(assert (=> d!143683 m!1225533))

(declare-fun m!1225535 () Bool)

(assert (=> d!143683 m!1225535))

(declare-fun m!1225537 () Bool)

(assert (=> b!1337449 m!1225537))

(declare-fun m!1225539 () Bool)

(assert (=> b!1337450 m!1225539))

(assert (=> b!1337416 d!143683))

(declare-fun b!1337451 () Bool)

(declare-fun e!761599 () ListLongMap!21747)

(declare-fun call!64932 () ListLongMap!21747)

(assert (=> b!1337451 (= e!761599 call!64932)))

(declare-fun b!1337452 () Bool)

(declare-fun res!887606 () Bool)

(declare-fun e!761598 () Bool)

(assert (=> b!1337452 (=> (not res!887606) (not e!761598))))

(declare-fun lt!593158 () ListLongMap!21747)

(assert (=> b!1337452 (= res!887606 (not (contains!8992 lt!593158 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1337453 () Bool)

(declare-fun e!761594 () Bool)

(declare-fun e!761597 () Bool)

(assert (=> b!1337453 (= e!761594 e!761597)))

(declare-fun c!126047 () Bool)

(assert (=> b!1337453 (= c!126047 (bvslt from!1980 (size!44384 _keys!1590)))))

(declare-fun b!1337454 () Bool)

(assert (=> b!1337454 (= e!761597 (isEmpty!1088 lt!593158))))

(declare-fun b!1337455 () Bool)

(declare-fun e!761596 () Bool)

(assert (=> b!1337455 (= e!761596 (validKeyInArray!0 (select (arr!43833 _keys!1590) from!1980)))))

(assert (=> b!1337455 (bvsge from!1980 #b00000000000000000000000000000000)))

(declare-fun bm!64929 () Bool)

(assert (=> bm!64929 (= call!64932 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd from!1980 #b00000000000000000000000000000001) defaultEntry!1323))))

(declare-fun b!1337456 () Bool)

(assert (=> b!1337456 (= e!761597 (= lt!593158 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd from!1980 #b00000000000000000000000000000001) defaultEntry!1323)))))

(declare-fun b!1337457 () Bool)

(assert (=> b!1337457 (= e!761598 e!761594)))

(declare-fun c!126046 () Bool)

(assert (=> b!1337457 (= c!126046 e!761596)))

(declare-fun res!887605 () Bool)

(assert (=> b!1337457 (=> (not res!887605) (not e!761596))))

(assert (=> b!1337457 (= res!887605 (bvslt from!1980 (size!44384 _keys!1590)))))

(declare-fun b!1337459 () Bool)

(assert (=> b!1337459 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44384 _keys!1590)))))

(assert (=> b!1337459 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44383 _values!1320)))))

(declare-fun e!761595 () Bool)

(assert (=> b!1337459 (= e!761595 (= (apply!1069 lt!593158 (select (arr!43833 _keys!1590) from!1980)) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1337460 () Bool)

(assert (=> b!1337460 (= e!761594 e!761595)))

(assert (=> b!1337460 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44384 _keys!1590)))))

(declare-fun res!887604 () Bool)

(assert (=> b!1337460 (= res!887604 (contains!8992 lt!593158 (select (arr!43833 _keys!1590) from!1980)))))

(assert (=> b!1337460 (=> (not res!887604) (not e!761595))))

(declare-fun b!1337461 () Bool)

(declare-fun e!761600 () ListLongMap!21747)

(assert (=> b!1337461 (= e!761600 (ListLongMap!21748 Nil!31243))))

(declare-fun b!1337462 () Bool)

(assert (=> b!1337462 (= e!761600 e!761599)))

(declare-fun c!126048 () Bool)

(assert (=> b!1337462 (= c!126048 (validKeyInArray!0 (select (arr!43833 _keys!1590) from!1980)))))

(declare-fun d!143685 () Bool)

(assert (=> d!143685 e!761598))

(declare-fun res!887607 () Bool)

(assert (=> d!143685 (=> (not res!887607) (not e!761598))))

(assert (=> d!143685 (= res!887607 (not (contains!8992 lt!593158 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!143685 (= lt!593158 e!761600)))

(declare-fun c!126045 () Bool)

(assert (=> d!143685 (= c!126045 (bvsge from!1980 (size!44384 _keys!1590)))))

(assert (=> d!143685 (validMask!0 mask!1998)))

(assert (=> d!143685 (= (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) lt!593158)))

(declare-fun b!1337458 () Bool)

(declare-fun lt!593159 () Unit!43875)

(declare-fun lt!593154 () Unit!43875)

(assert (=> b!1337458 (= lt!593159 lt!593154)))

(declare-fun lt!593156 () ListLongMap!21747)

(declare-fun lt!593153 () V!54379)

(declare-fun lt!593157 () (_ BitVec 64))

(declare-fun lt!593155 () (_ BitVec 64))

(assert (=> b!1337458 (not (contains!8992 (+!4718 lt!593156 (tuple2!24079 lt!593155 lt!593153)) lt!593157))))

(assert (=> b!1337458 (= lt!593154 (addStillNotContains!507 lt!593156 lt!593155 lt!593153 lt!593157))))

(assert (=> b!1337458 (= lt!593157 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1337458 (= lt!593153 (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1337458 (= lt!593155 (select (arr!43833 _keys!1590) from!1980))))

(assert (=> b!1337458 (= lt!593156 call!64932)))

(assert (=> b!1337458 (= e!761599 (+!4718 call!64932 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!143685 c!126045) b!1337461))

(assert (= (and d!143685 (not c!126045)) b!1337462))

(assert (= (and b!1337462 c!126048) b!1337458))

(assert (= (and b!1337462 (not c!126048)) b!1337451))

(assert (= (or b!1337458 b!1337451) bm!64929))

(assert (= (and d!143685 res!887607) b!1337452))

(assert (= (and b!1337452 res!887606) b!1337457))

(assert (= (and b!1337457 res!887605) b!1337455))

(assert (= (and b!1337457 c!126046) b!1337460))

(assert (= (and b!1337457 (not c!126046)) b!1337453))

(assert (= (and b!1337460 res!887604) b!1337459))

(assert (= (and b!1337453 c!126047) b!1337456))

(assert (= (and b!1337453 (not c!126047)) b!1337454))

(declare-fun b_lambda!24239 () Bool)

(assert (=> (not b_lambda!24239) (not b!1337459)))

(assert (=> b!1337459 t!45567))

(declare-fun b_and!50051 () Bool)

(assert (= b_and!50049 (and (=> t!45567 result!25321) b_and!50051)))

(declare-fun b_lambda!24241 () Bool)

(assert (=> (not b_lambda!24241) (not b!1337458)))

(assert (=> b!1337458 t!45567))

(declare-fun b_and!50053 () Bool)

(assert (= b_and!50051 (and (=> t!45567 result!25321) b_and!50053)))

(declare-fun m!1225541 () Bool)

(assert (=> b!1337458 m!1225541))

(assert (=> b!1337458 m!1225335))

(declare-fun m!1225543 () Bool)

(assert (=> b!1337458 m!1225543))

(assert (=> b!1337458 m!1225347))

(assert (=> b!1337458 m!1225543))

(declare-fun m!1225545 () Bool)

(assert (=> b!1337458 m!1225545))

(assert (=> b!1337458 m!1225353))

(declare-fun m!1225547 () Bool)

(assert (=> b!1337458 m!1225547))

(assert (=> b!1337458 m!1225353))

(assert (=> b!1337458 m!1225347))

(assert (=> b!1337458 m!1225355))

(declare-fun m!1225549 () Bool)

(assert (=> b!1337456 m!1225549))

(assert (=> bm!64929 m!1225549))

(declare-fun m!1225551 () Bool)

(assert (=> d!143685 m!1225551))

(assert (=> d!143685 m!1225339))

(assert (=> b!1337460 m!1225335))

(assert (=> b!1337460 m!1225335))

(declare-fun m!1225553 () Bool)

(assert (=> b!1337460 m!1225553))

(declare-fun m!1225555 () Bool)

(assert (=> b!1337454 m!1225555))

(assert (=> b!1337455 m!1225335))

(assert (=> b!1337455 m!1225335))

(assert (=> b!1337455 m!1225345))

(assert (=> b!1337462 m!1225335))

(assert (=> b!1337462 m!1225335))

(assert (=> b!1337462 m!1225345))

(assert (=> b!1337459 m!1225335))

(declare-fun m!1225557 () Bool)

(assert (=> b!1337459 m!1225557))

(assert (=> b!1337459 m!1225353))

(assert (=> b!1337459 m!1225347))

(assert (=> b!1337459 m!1225355))

(assert (=> b!1337459 m!1225335))

(assert (=> b!1337459 m!1225347))

(assert (=> b!1337459 m!1225353))

(declare-fun m!1225559 () Bool)

(assert (=> b!1337452 m!1225559))

(assert (=> b!1337416 d!143685))

(declare-fun d!143687 () Bool)

(declare-fun e!761601 () Bool)

(assert (=> d!143687 e!761601))

(declare-fun res!887608 () Bool)

(assert (=> d!143687 (=> (not res!887608) (not e!761601))))

(declare-fun lt!593163 () ListLongMap!21747)

(assert (=> d!143687 (= res!887608 (contains!8992 lt!593163 (_1!12049 (tuple2!24079 lt!593125 zeroValue!1262))))))

(declare-fun lt!593161 () List!31246)

(assert (=> d!143687 (= lt!593163 (ListLongMap!21748 lt!593161))))

(declare-fun lt!593162 () Unit!43875)

(declare-fun lt!593160 () Unit!43875)

(assert (=> d!143687 (= lt!593162 lt!593160)))

(assert (=> d!143687 (= (getValueByKey!719 lt!593161 (_1!12049 (tuple2!24079 lt!593125 zeroValue!1262))) (Some!769 (_2!12049 (tuple2!24079 lt!593125 zeroValue!1262))))))

(assert (=> d!143687 (= lt!593160 (lemmaContainsTupThenGetReturnValue!362 lt!593161 (_1!12049 (tuple2!24079 lt!593125 zeroValue!1262)) (_2!12049 (tuple2!24079 lt!593125 zeroValue!1262))))))

(assert (=> d!143687 (= lt!593161 (insertStrictlySorted!491 (toList!10889 lt!593129) (_1!12049 (tuple2!24079 lt!593125 zeroValue!1262)) (_2!12049 (tuple2!24079 lt!593125 zeroValue!1262))))))

(assert (=> d!143687 (= (+!4718 lt!593129 (tuple2!24079 lt!593125 zeroValue!1262)) lt!593163)))

(declare-fun b!1337463 () Bool)

(declare-fun res!887609 () Bool)

(assert (=> b!1337463 (=> (not res!887609) (not e!761601))))

(assert (=> b!1337463 (= res!887609 (= (getValueByKey!719 (toList!10889 lt!593163) (_1!12049 (tuple2!24079 lt!593125 zeroValue!1262))) (Some!769 (_2!12049 (tuple2!24079 lt!593125 zeroValue!1262)))))))

(declare-fun b!1337464 () Bool)

(assert (=> b!1337464 (= e!761601 (contains!8993 (toList!10889 lt!593163) (tuple2!24079 lt!593125 zeroValue!1262)))))

(assert (= (and d!143687 res!887608) b!1337463))

(assert (= (and b!1337463 res!887609) b!1337464))

(declare-fun m!1225561 () Bool)

(assert (=> d!143687 m!1225561))

(declare-fun m!1225563 () Bool)

(assert (=> d!143687 m!1225563))

(declare-fun m!1225565 () Bool)

(assert (=> d!143687 m!1225565))

(declare-fun m!1225567 () Bool)

(assert (=> d!143687 m!1225567))

(declare-fun m!1225569 () Bool)

(assert (=> b!1337463 m!1225569))

(declare-fun m!1225571 () Bool)

(assert (=> b!1337464 m!1225571))

(assert (=> b!1337416 d!143687))

(declare-fun d!143689 () Bool)

(assert (=> d!143689 (= (apply!1069 (+!4718 lt!593117 (tuple2!24079 lt!593126 minValue!1262)) lt!593120) (apply!1069 lt!593117 lt!593120))))

(declare-fun lt!593166 () Unit!43875)

(declare-fun choose!1971 (ListLongMap!21747 (_ BitVec 64) V!54379 (_ BitVec 64)) Unit!43875)

(assert (=> d!143689 (= lt!593166 (choose!1971 lt!593117 lt!593126 minValue!1262 lt!593120))))

(declare-fun e!761604 () Bool)

(assert (=> d!143689 e!761604))

(declare-fun res!887612 () Bool)

(assert (=> d!143689 (=> (not res!887612) (not e!761604))))

(assert (=> d!143689 (= res!887612 (contains!8992 lt!593117 lt!593120))))

(assert (=> d!143689 (= (addApplyDifferent!572 lt!593117 lt!593126 minValue!1262 lt!593120) lt!593166)))

(declare-fun b!1337468 () Bool)

(assert (=> b!1337468 (= e!761604 (not (= lt!593120 lt!593126)))))

(assert (= (and d!143689 res!887612) b!1337468))

(assert (=> d!143689 m!1225475))

(assert (=> d!143689 m!1225469))

(assert (=> d!143689 m!1225471))

(declare-fun m!1225573 () Bool)

(assert (=> d!143689 m!1225573))

(assert (=> d!143689 m!1225469))

(declare-fun m!1225575 () Bool)

(assert (=> d!143689 m!1225575))

(assert (=> b!1337416 d!143689))

(declare-fun d!143691 () Bool)

(assert (=> d!143691 (= (apply!1069 (+!4718 lt!593135 (tuple2!24079 lt!593118 zeroValue!1262)) lt!593114) (get!22160 (getValueByKey!719 (toList!10889 (+!4718 lt!593135 (tuple2!24079 lt!593118 zeroValue!1262))) lt!593114)))))

(declare-fun bs!38289 () Bool)

(assert (= bs!38289 d!143691))

(declare-fun m!1225577 () Bool)

(assert (=> bs!38289 m!1225577))

(assert (=> bs!38289 m!1225577))

(declare-fun m!1225579 () Bool)

(assert (=> bs!38289 m!1225579))

(assert (=> b!1337416 d!143691))

(declare-fun d!143693 () Bool)

(assert (=> d!143693 (= (apply!1069 lt!593135 lt!593114) (get!22160 (getValueByKey!719 (toList!10889 lt!593135) lt!593114)))))

(declare-fun bs!38290 () Bool)

(assert (= bs!38290 d!143693))

(declare-fun m!1225581 () Bool)

(assert (=> bs!38290 m!1225581))

(assert (=> bs!38290 m!1225581))

(declare-fun m!1225583 () Bool)

(assert (=> bs!38290 m!1225583))

(assert (=> b!1337416 d!143693))

(declare-fun d!143695 () Bool)

(declare-fun e!761605 () Bool)

(assert (=> d!143695 e!761605))

(declare-fun res!887613 () Bool)

(assert (=> d!143695 (=> (not res!887613) (not e!761605))))

(declare-fun lt!593170 () ListLongMap!21747)

(assert (=> d!143695 (= res!887613 (contains!8992 lt!593170 (_1!12049 (tuple2!24079 lt!593126 minValue!1262))))))

(declare-fun lt!593168 () List!31246)

(assert (=> d!143695 (= lt!593170 (ListLongMap!21748 lt!593168))))

(declare-fun lt!593169 () Unit!43875)

(declare-fun lt!593167 () Unit!43875)

(assert (=> d!143695 (= lt!593169 lt!593167)))

(assert (=> d!143695 (= (getValueByKey!719 lt!593168 (_1!12049 (tuple2!24079 lt!593126 minValue!1262))) (Some!769 (_2!12049 (tuple2!24079 lt!593126 minValue!1262))))))

(assert (=> d!143695 (= lt!593167 (lemmaContainsTupThenGetReturnValue!362 lt!593168 (_1!12049 (tuple2!24079 lt!593126 minValue!1262)) (_2!12049 (tuple2!24079 lt!593126 minValue!1262))))))

(assert (=> d!143695 (= lt!593168 (insertStrictlySorted!491 (toList!10889 lt!593117) (_1!12049 (tuple2!24079 lt!593126 minValue!1262)) (_2!12049 (tuple2!24079 lt!593126 minValue!1262))))))

(assert (=> d!143695 (= (+!4718 lt!593117 (tuple2!24079 lt!593126 minValue!1262)) lt!593170)))

(declare-fun b!1337469 () Bool)

(declare-fun res!887614 () Bool)

(assert (=> b!1337469 (=> (not res!887614) (not e!761605))))

(assert (=> b!1337469 (= res!887614 (= (getValueByKey!719 (toList!10889 lt!593170) (_1!12049 (tuple2!24079 lt!593126 minValue!1262))) (Some!769 (_2!12049 (tuple2!24079 lt!593126 minValue!1262)))))))

(declare-fun b!1337470 () Bool)

(assert (=> b!1337470 (= e!761605 (contains!8993 (toList!10889 lt!593170) (tuple2!24079 lt!593126 minValue!1262)))))

(assert (= (and d!143695 res!887613) b!1337469))

(assert (= (and b!1337469 res!887614) b!1337470))

(declare-fun m!1225585 () Bool)

(assert (=> d!143695 m!1225585))

(declare-fun m!1225587 () Bool)

(assert (=> d!143695 m!1225587))

(declare-fun m!1225589 () Bool)

(assert (=> d!143695 m!1225589))

(declare-fun m!1225591 () Bool)

(assert (=> d!143695 m!1225591))

(declare-fun m!1225593 () Bool)

(assert (=> b!1337469 m!1225593))

(declare-fun m!1225595 () Bool)

(assert (=> b!1337470 m!1225595))

(assert (=> b!1337416 d!143695))

(declare-fun d!143697 () Bool)

(assert (=> d!143697 (= (apply!1069 lt!593124 lt!593122) (get!22160 (getValueByKey!719 (toList!10889 lt!593124) lt!593122)))))

(declare-fun bs!38291 () Bool)

(assert (= bs!38291 d!143697))

(declare-fun m!1225597 () Bool)

(assert (=> bs!38291 m!1225597))

(assert (=> bs!38291 m!1225597))

(declare-fun m!1225599 () Bool)

(assert (=> bs!38291 m!1225599))

(assert (=> b!1337416 d!143697))

(declare-fun d!143699 () Bool)

(declare-fun e!761607 () Bool)

(assert (=> d!143699 e!761607))

(declare-fun res!887615 () Bool)

(assert (=> d!143699 (=> res!887615 e!761607)))

(declare-fun lt!593174 () Bool)

(assert (=> d!143699 (= res!887615 (not lt!593174))))

(declare-fun lt!593173 () Bool)

(assert (=> d!143699 (= lt!593174 lt!593173)))

(declare-fun lt!593172 () Unit!43875)

(declare-fun e!761606 () Unit!43875)

(assert (=> d!143699 (= lt!593172 e!761606)))

(declare-fun c!126049 () Bool)

(assert (=> d!143699 (= c!126049 lt!593173)))

(assert (=> d!143699 (= lt!593173 (containsKey!737 (toList!10889 (+!4718 lt!593129 (tuple2!24079 lt!593125 zeroValue!1262))) lt!593132))))

(assert (=> d!143699 (= (contains!8992 (+!4718 lt!593129 (tuple2!24079 lt!593125 zeroValue!1262)) lt!593132) lt!593174)))

(declare-fun b!1337471 () Bool)

(declare-fun lt!593171 () Unit!43875)

(assert (=> b!1337471 (= e!761606 lt!593171)))

(assert (=> b!1337471 (= lt!593171 (lemmaContainsKeyImpliesGetValueByKeyDefined!482 (toList!10889 (+!4718 lt!593129 (tuple2!24079 lt!593125 zeroValue!1262))) lt!593132))))

(assert (=> b!1337471 (isDefined!522 (getValueByKey!719 (toList!10889 (+!4718 lt!593129 (tuple2!24079 lt!593125 zeroValue!1262))) lt!593132))))

(declare-fun b!1337472 () Bool)

(declare-fun Unit!43881 () Unit!43875)

(assert (=> b!1337472 (= e!761606 Unit!43881)))

(declare-fun b!1337473 () Bool)

(assert (=> b!1337473 (= e!761607 (isDefined!522 (getValueByKey!719 (toList!10889 (+!4718 lt!593129 (tuple2!24079 lt!593125 zeroValue!1262))) lt!593132)))))

(assert (= (and d!143699 c!126049) b!1337471))

(assert (= (and d!143699 (not c!126049)) b!1337472))

(assert (= (and d!143699 (not res!887615)) b!1337473))

(declare-fun m!1225601 () Bool)

(assert (=> d!143699 m!1225601))

(declare-fun m!1225603 () Bool)

(assert (=> b!1337471 m!1225603))

(declare-fun m!1225605 () Bool)

(assert (=> b!1337471 m!1225605))

(assert (=> b!1337471 m!1225605))

(declare-fun m!1225607 () Bool)

(assert (=> b!1337471 m!1225607))

(assert (=> b!1337473 m!1225605))

(assert (=> b!1337473 m!1225605))

(assert (=> b!1337473 m!1225607))

(assert (=> b!1337416 d!143699))

(declare-fun d!143701 () Bool)

(declare-fun e!761608 () Bool)

(assert (=> d!143701 e!761608))

(declare-fun res!887616 () Bool)

(assert (=> d!143701 (=> (not res!887616) (not e!761608))))

(declare-fun lt!593178 () ListLongMap!21747)

(assert (=> d!143701 (= res!887616 (contains!8992 lt!593178 (_1!12049 (tuple2!24079 lt!593118 zeroValue!1262))))))

(declare-fun lt!593176 () List!31246)

(assert (=> d!143701 (= lt!593178 (ListLongMap!21748 lt!593176))))

(declare-fun lt!593177 () Unit!43875)

(declare-fun lt!593175 () Unit!43875)

(assert (=> d!143701 (= lt!593177 lt!593175)))

(assert (=> d!143701 (= (getValueByKey!719 lt!593176 (_1!12049 (tuple2!24079 lt!593118 zeroValue!1262))) (Some!769 (_2!12049 (tuple2!24079 lt!593118 zeroValue!1262))))))

(assert (=> d!143701 (= lt!593175 (lemmaContainsTupThenGetReturnValue!362 lt!593176 (_1!12049 (tuple2!24079 lt!593118 zeroValue!1262)) (_2!12049 (tuple2!24079 lt!593118 zeroValue!1262))))))

(assert (=> d!143701 (= lt!593176 (insertStrictlySorted!491 (toList!10889 lt!593135) (_1!12049 (tuple2!24079 lt!593118 zeroValue!1262)) (_2!12049 (tuple2!24079 lt!593118 zeroValue!1262))))))

(assert (=> d!143701 (= (+!4718 lt!593135 (tuple2!24079 lt!593118 zeroValue!1262)) lt!593178)))

(declare-fun b!1337474 () Bool)

(declare-fun res!887617 () Bool)

(assert (=> b!1337474 (=> (not res!887617) (not e!761608))))

(assert (=> b!1337474 (= res!887617 (= (getValueByKey!719 (toList!10889 lt!593178) (_1!12049 (tuple2!24079 lt!593118 zeroValue!1262))) (Some!769 (_2!12049 (tuple2!24079 lt!593118 zeroValue!1262)))))))

(declare-fun b!1337475 () Bool)

(assert (=> b!1337475 (= e!761608 (contains!8993 (toList!10889 lt!593178) (tuple2!24079 lt!593118 zeroValue!1262)))))

(assert (= (and d!143701 res!887616) b!1337474))

(assert (= (and b!1337474 res!887617) b!1337475))

(declare-fun m!1225609 () Bool)

(assert (=> d!143701 m!1225609))

(declare-fun m!1225611 () Bool)

(assert (=> d!143701 m!1225611))

(declare-fun m!1225613 () Bool)

(assert (=> d!143701 m!1225613))

(declare-fun m!1225615 () Bool)

(assert (=> d!143701 m!1225615))

(declare-fun m!1225617 () Bool)

(assert (=> b!1337474 m!1225617))

(declare-fun m!1225619 () Bool)

(assert (=> b!1337475 m!1225619))

(assert (=> b!1337416 d!143701))

(declare-fun d!143703 () Bool)

(assert (=> d!143703 (= (apply!1069 (+!4718 lt!593124 (tuple2!24079 lt!593133 minValue!1262)) lt!593122) (get!22160 (getValueByKey!719 (toList!10889 (+!4718 lt!593124 (tuple2!24079 lt!593133 minValue!1262))) lt!593122)))))

(declare-fun bs!38292 () Bool)

(assert (= bs!38292 d!143703))

(declare-fun m!1225621 () Bool)

(assert (=> bs!38292 m!1225621))

(assert (=> bs!38292 m!1225621))

(declare-fun m!1225623 () Bool)

(assert (=> bs!38292 m!1225623))

(assert (=> b!1337416 d!143703))

(declare-fun d!143705 () Bool)

(assert (=> d!143705 (= (apply!1069 (+!4718 lt!593124 (tuple2!24079 lt!593133 minValue!1262)) lt!593122) (apply!1069 lt!593124 lt!593122))))

(declare-fun lt!593179 () Unit!43875)

(assert (=> d!143705 (= lt!593179 (choose!1971 lt!593124 lt!593133 minValue!1262 lt!593122))))

(declare-fun e!761609 () Bool)

(assert (=> d!143705 e!761609))

(declare-fun res!887618 () Bool)

(assert (=> d!143705 (=> (not res!887618) (not e!761609))))

(assert (=> d!143705 (= res!887618 (contains!8992 lt!593124 lt!593122))))

(assert (=> d!143705 (= (addApplyDifferent!572 lt!593124 lt!593133 minValue!1262 lt!593122) lt!593179)))

(declare-fun b!1337476 () Bool)

(assert (=> b!1337476 (= e!761609 (not (= lt!593122 lt!593133)))))

(assert (= (and d!143705 res!887618) b!1337476))

(assert (=> d!143705 m!1225481))

(assert (=> d!143705 m!1225491))

(assert (=> d!143705 m!1225493))

(declare-fun m!1225625 () Bool)

(assert (=> d!143705 m!1225625))

(assert (=> d!143705 m!1225491))

(declare-fun m!1225627 () Bool)

(assert (=> d!143705 m!1225627))

(assert (=> b!1337416 d!143705))

(declare-fun d!143707 () Bool)

(assert (=> d!143707 (= (apply!1069 (+!4718 lt!593135 (tuple2!24079 lt!593118 zeroValue!1262)) lt!593114) (apply!1069 lt!593135 lt!593114))))

(declare-fun lt!593180 () Unit!43875)

(assert (=> d!143707 (= lt!593180 (choose!1971 lt!593135 lt!593118 zeroValue!1262 lt!593114))))

(declare-fun e!761610 () Bool)

(assert (=> d!143707 e!761610))

(declare-fun res!887619 () Bool)

(assert (=> d!143707 (=> (not res!887619) (not e!761610))))

(assert (=> d!143707 (= res!887619 (contains!8992 lt!593135 lt!593114))))

(assert (=> d!143707 (= (addApplyDifferent!572 lt!593135 lt!593118 zeroValue!1262 lt!593114) lt!593180)))

(declare-fun b!1337477 () Bool)

(assert (=> b!1337477 (= e!761610 (not (= lt!593114 lt!593118)))))

(assert (= (and d!143707 res!887619) b!1337477))

(assert (=> d!143707 m!1225489))

(assert (=> d!143707 m!1225495))

(assert (=> d!143707 m!1225497))

(declare-fun m!1225629 () Bool)

(assert (=> d!143707 m!1225629))

(assert (=> d!143707 m!1225495))

(declare-fun m!1225631 () Bool)

(assert (=> d!143707 m!1225631))

(assert (=> b!1337416 d!143707))

(declare-fun d!143709 () Bool)

(assert (=> d!143709 (= (apply!1069 lt!593117 lt!593120) (get!22160 (getValueByKey!719 (toList!10889 lt!593117) lt!593120)))))

(declare-fun bs!38293 () Bool)

(assert (= bs!38293 d!143709))

(declare-fun m!1225633 () Bool)

(assert (=> bs!38293 m!1225633))

(assert (=> bs!38293 m!1225633))

(declare-fun m!1225635 () Bool)

(assert (=> bs!38293 m!1225635))

(assert (=> b!1337416 d!143709))

(declare-fun d!143711 () Bool)

(assert (=> d!143711 (contains!8992 (+!4718 lt!593129 (tuple2!24079 lt!593125 zeroValue!1262)) lt!593132)))

(declare-fun lt!593183 () Unit!43875)

(declare-fun choose!1972 (ListLongMap!21747 (_ BitVec 64) V!54379 (_ BitVec 64)) Unit!43875)

(assert (=> d!143711 (= lt!593183 (choose!1972 lt!593129 lt!593125 zeroValue!1262 lt!593132))))

(assert (=> d!143711 (contains!8992 lt!593129 lt!593132)))

(assert (=> d!143711 (= (addStillContains!1195 lt!593129 lt!593125 zeroValue!1262 lt!593132) lt!593183)))

(declare-fun bs!38294 () Bool)

(assert (= bs!38294 d!143711))

(assert (=> bs!38294 m!1225479))

(assert (=> bs!38294 m!1225479))

(assert (=> bs!38294 m!1225485))

(declare-fun m!1225637 () Bool)

(assert (=> bs!38294 m!1225637))

(declare-fun m!1225639 () Bool)

(assert (=> bs!38294 m!1225639))

(assert (=> b!1337416 d!143711))

(declare-fun d!143713 () Bool)

(assert (=> d!143713 (= (apply!1069 (+!4718 lt!593117 (tuple2!24079 lt!593126 minValue!1262)) lt!593120) (get!22160 (getValueByKey!719 (toList!10889 (+!4718 lt!593117 (tuple2!24079 lt!593126 minValue!1262))) lt!593120)))))

(declare-fun bs!38295 () Bool)

(assert (= bs!38295 d!143713))

(declare-fun m!1225641 () Bool)

(assert (=> bs!38295 m!1225641))

(assert (=> bs!38295 m!1225641))

(declare-fun m!1225643 () Bool)

(assert (=> bs!38295 m!1225643))

(assert (=> b!1337416 d!143713))

(declare-fun d!143715 () Bool)

(assert (=> d!143715 (= (get!22159 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1337344 d!143715))

(declare-fun d!143717 () Bool)

(declare-fun e!761611 () Bool)

(assert (=> d!143717 e!761611))

(declare-fun res!887620 () Bool)

(assert (=> d!143717 (=> (not res!887620) (not e!761611))))

(declare-fun lt!593187 () ListLongMap!21747)

(assert (=> d!143717 (= res!887620 (contains!8992 lt!593187 (_1!12049 (ite (or c!126039 c!126040) (tuple2!24079 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(declare-fun lt!593185 () List!31246)

(assert (=> d!143717 (= lt!593187 (ListLongMap!21748 lt!593185))))

(declare-fun lt!593186 () Unit!43875)

(declare-fun lt!593184 () Unit!43875)

(assert (=> d!143717 (= lt!593186 lt!593184)))

(assert (=> d!143717 (= (getValueByKey!719 lt!593185 (_1!12049 (ite (or c!126039 c!126040) (tuple2!24079 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))) (Some!769 (_2!12049 (ite (or c!126039 c!126040) (tuple2!24079 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(assert (=> d!143717 (= lt!593184 (lemmaContainsTupThenGetReturnValue!362 lt!593185 (_1!12049 (ite (or c!126039 c!126040) (tuple2!24079 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) (_2!12049 (ite (or c!126039 c!126040) (tuple2!24079 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(assert (=> d!143717 (= lt!593185 (insertStrictlySorted!491 (toList!10889 (ite c!126039 call!64925 (ite c!126040 call!64923 call!64928))) (_1!12049 (ite (or c!126039 c!126040) (tuple2!24079 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) (_2!12049 (ite (or c!126039 c!126040) (tuple2!24079 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(assert (=> d!143717 (= (+!4718 (ite c!126039 call!64925 (ite c!126040 call!64923 call!64928)) (ite (or c!126039 c!126040) (tuple2!24079 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) lt!593187)))

(declare-fun b!1337479 () Bool)

(declare-fun res!887621 () Bool)

(assert (=> b!1337479 (=> (not res!887621) (not e!761611))))

(assert (=> b!1337479 (= res!887621 (= (getValueByKey!719 (toList!10889 lt!593187) (_1!12049 (ite (or c!126039 c!126040) (tuple2!24079 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))) (Some!769 (_2!12049 (ite (or c!126039 c!126040) (tuple2!24079 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))))

(declare-fun b!1337480 () Bool)

(assert (=> b!1337480 (= e!761611 (contains!8993 (toList!10889 lt!593187) (ite (or c!126039 c!126040) (tuple2!24079 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (= (and d!143717 res!887620) b!1337479))

(assert (= (and b!1337479 res!887621) b!1337480))

(declare-fun m!1225645 () Bool)

(assert (=> d!143717 m!1225645))

(declare-fun m!1225647 () Bool)

(assert (=> d!143717 m!1225647))

(declare-fun m!1225649 () Bool)

(assert (=> d!143717 m!1225649))

(declare-fun m!1225651 () Bool)

(assert (=> d!143717 m!1225651))

(declare-fun m!1225653 () Bool)

(assert (=> b!1337479 m!1225653))

(declare-fun m!1225655 () Bool)

(assert (=> b!1337480 m!1225655))

(assert (=> bm!64923 d!143717))

(declare-fun d!143719 () Bool)

(declare-fun e!761613 () Bool)

(assert (=> d!143719 e!761613))

(declare-fun res!887622 () Bool)

(assert (=> d!143719 (=> res!887622 e!761613)))

(declare-fun lt!593191 () Bool)

(assert (=> d!143719 (= res!887622 (not lt!593191))))

(declare-fun lt!593190 () Bool)

(assert (=> d!143719 (= lt!593191 lt!593190)))

(declare-fun lt!593189 () Unit!43875)

(declare-fun e!761612 () Unit!43875)

(assert (=> d!143719 (= lt!593189 e!761612)))

(declare-fun c!126050 () Bool)

(assert (=> d!143719 (= c!126050 lt!593190)))

(assert (=> d!143719 (= lt!593190 (containsKey!737 (toList!10889 lt!593064) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!143719 (= (contains!8992 lt!593064 #b0000000000000000000000000000000000000000000000000000000000000000) lt!593191)))

(declare-fun b!1337481 () Bool)

(declare-fun lt!593188 () Unit!43875)

(assert (=> b!1337481 (= e!761612 lt!593188)))

(assert (=> b!1337481 (= lt!593188 (lemmaContainsKeyImpliesGetValueByKeyDefined!482 (toList!10889 lt!593064) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1337481 (isDefined!522 (getValueByKey!719 (toList!10889 lt!593064) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1337482 () Bool)

(declare-fun Unit!43882 () Unit!43875)

(assert (=> b!1337482 (= e!761612 Unit!43882)))

(declare-fun b!1337483 () Bool)

(assert (=> b!1337483 (= e!761613 (isDefined!522 (getValueByKey!719 (toList!10889 lt!593064) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143719 c!126050) b!1337481))

(assert (= (and d!143719 (not c!126050)) b!1337482))

(assert (= (and d!143719 (not res!887622)) b!1337483))

(declare-fun m!1225657 () Bool)

(assert (=> d!143719 m!1225657))

(declare-fun m!1225659 () Bool)

(assert (=> b!1337481 m!1225659))

(declare-fun m!1225661 () Bool)

(assert (=> b!1337481 m!1225661))

(assert (=> b!1337481 m!1225661))

(declare-fun m!1225663 () Bool)

(assert (=> b!1337481 m!1225663))

(assert (=> b!1337483 m!1225661))

(assert (=> b!1337483 m!1225661))

(assert (=> b!1337483 m!1225663))

(assert (=> d!143657 d!143719))

(assert (=> d!143657 d!143671))

(declare-fun d!143721 () Bool)

(declare-fun e!761615 () Bool)

(assert (=> d!143721 e!761615))

(declare-fun res!887623 () Bool)

(assert (=> d!143721 (=> res!887623 e!761615)))

(declare-fun lt!593195 () Bool)

(assert (=> d!143721 (= res!887623 (not lt!593195))))

(declare-fun lt!593194 () Bool)

(assert (=> d!143721 (= lt!593195 lt!593194)))

(declare-fun lt!593193 () Unit!43875)

(declare-fun e!761614 () Unit!43875)

(assert (=> d!143721 (= lt!593193 e!761614)))

(declare-fun c!126051 () Bool)

(assert (=> d!143721 (= c!126051 lt!593194)))

(assert (=> d!143721 (= lt!593194 (containsKey!737 (toList!10889 lt!593044) (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!143721 (= (contains!8992 lt!593044 (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!593195)))

(declare-fun b!1337484 () Bool)

(declare-fun lt!593192 () Unit!43875)

(assert (=> b!1337484 (= e!761614 lt!593192)))

(assert (=> b!1337484 (= lt!593192 (lemmaContainsKeyImpliesGetValueByKeyDefined!482 (toList!10889 lt!593044) (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!1337484 (isDefined!522 (getValueByKey!719 (toList!10889 lt!593044) (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1337485 () Bool)

(declare-fun Unit!43883 () Unit!43875)

(assert (=> b!1337485 (= e!761614 Unit!43883)))

(declare-fun b!1337486 () Bool)

(assert (=> b!1337486 (= e!761615 (isDefined!522 (getValueByKey!719 (toList!10889 lt!593044) (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!143721 c!126051) b!1337484))

(assert (= (and d!143721 (not c!126051)) b!1337485))

(assert (= (and d!143721 (not res!887623)) b!1337486))

(declare-fun m!1225665 () Bool)

(assert (=> d!143721 m!1225665))

(declare-fun m!1225667 () Bool)

(assert (=> b!1337484 m!1225667))

(assert (=> b!1337484 m!1225407))

(assert (=> b!1337484 m!1225407))

(declare-fun m!1225669 () Bool)

(assert (=> b!1337484 m!1225669))

(assert (=> b!1337486 m!1225407))

(assert (=> b!1337486 m!1225407))

(assert (=> b!1337486 m!1225669))

(assert (=> d!143655 d!143721))

(declare-fun d!143723 () Bool)

(declare-fun c!126056 () Bool)

(assert (=> d!143723 (= c!126056 (and ((_ is Cons!31242) lt!593042) (= (_1!12049 (h!32451 lt!593042)) (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!761620 () Option!770)

(assert (=> d!143723 (= (getValueByKey!719 lt!593042 (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!761620)))

(declare-fun b!1337495 () Bool)

(assert (=> b!1337495 (= e!761620 (Some!769 (_2!12049 (h!32451 lt!593042))))))

(declare-fun b!1337498 () Bool)

(declare-fun e!761621 () Option!770)

(assert (=> b!1337498 (= e!761621 None!768)))

(declare-fun b!1337497 () Bool)

(assert (=> b!1337497 (= e!761621 (getValueByKey!719 (t!45569 lt!593042) (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1337496 () Bool)

(assert (=> b!1337496 (= e!761620 e!761621)))

(declare-fun c!126057 () Bool)

(assert (=> b!1337496 (= c!126057 (and ((_ is Cons!31242) lt!593042) (not (= (_1!12049 (h!32451 lt!593042)) (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (= (and d!143723 c!126056) b!1337495))

(assert (= (and d!143723 (not c!126056)) b!1337496))

(assert (= (and b!1337496 c!126057) b!1337497))

(assert (= (and b!1337496 (not c!126057)) b!1337498))

(declare-fun m!1225671 () Bool)

(assert (=> b!1337497 m!1225671))

(assert (=> d!143655 d!143723))

(declare-fun d!143725 () Bool)

(assert (=> d!143725 (= (getValueByKey!719 lt!593042 (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!769 (_2!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!593198 () Unit!43875)

(declare-fun choose!1973 (List!31246 (_ BitVec 64) V!54379) Unit!43875)

(assert (=> d!143725 (= lt!593198 (choose!1973 lt!593042 (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!761624 () Bool)

(assert (=> d!143725 e!761624))

(declare-fun res!887628 () Bool)

(assert (=> d!143725 (=> (not res!887628) (not e!761624))))

(declare-fun isStrictlySorted!876 (List!31246) Bool)

(assert (=> d!143725 (= res!887628 (isStrictlySorted!876 lt!593042))))

(assert (=> d!143725 (= (lemmaContainsTupThenGetReturnValue!362 lt!593042 (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!593198)))

(declare-fun b!1337503 () Bool)

(declare-fun res!887629 () Bool)

(assert (=> b!1337503 (=> (not res!887629) (not e!761624))))

(assert (=> b!1337503 (= res!887629 (containsKey!737 lt!593042 (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1337504 () Bool)

(assert (=> b!1337504 (= e!761624 (contains!8993 lt!593042 (tuple2!24079 (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!143725 res!887628) b!1337503))

(assert (= (and b!1337503 res!887629) b!1337504))

(assert (=> d!143725 m!1225401))

(declare-fun m!1225673 () Bool)

(assert (=> d!143725 m!1225673))

(declare-fun m!1225675 () Bool)

(assert (=> d!143725 m!1225675))

(declare-fun m!1225677 () Bool)

(assert (=> b!1337503 m!1225677))

(declare-fun m!1225679 () Bool)

(assert (=> b!1337504 m!1225679))

(assert (=> d!143655 d!143725))

(declare-fun b!1337525 () Bool)

(declare-fun e!761635 () List!31246)

(declare-fun call!64939 () List!31246)

(assert (=> b!1337525 (= e!761635 call!64939)))

(declare-fun b!1337526 () Bool)

(declare-fun res!887634 () Bool)

(declare-fun e!761639 () Bool)

(assert (=> b!1337526 (=> (not res!887634) (not e!761639))))

(declare-fun lt!593201 () List!31246)

(assert (=> b!1337526 (= res!887634 (containsKey!737 lt!593201 (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1337527 () Bool)

(assert (=> b!1337527 (= e!761635 call!64939)))

(declare-fun b!1337528 () Bool)

(declare-fun e!761638 () List!31246)

(assert (=> b!1337528 (= e!761638 (insertStrictlySorted!491 (t!45569 (toList!10889 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))) (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun c!126067 () Bool)

(declare-fun c!126066 () Bool)

(declare-fun b!1337529 () Bool)

(assert (=> b!1337529 (= e!761638 (ite c!126067 (t!45569 (toList!10889 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))) (ite c!126066 (Cons!31242 (h!32451 (toList!10889 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))) (t!45569 (toList!10889 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)))) Nil!31243)))))

(declare-fun b!1337530 () Bool)

(declare-fun e!761636 () List!31246)

(declare-fun call!64940 () List!31246)

(assert (=> b!1337530 (= e!761636 call!64940)))

(declare-fun b!1337531 () Bool)

(declare-fun e!761637 () List!31246)

(assert (=> b!1337531 (= e!761637 e!761636)))

(assert (=> b!1337531 (= c!126067 (and ((_ is Cons!31242) (toList!10889 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))) (= (_1!12049 (h!32451 (toList!10889 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)))) (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun d!143727 () Bool)

(assert (=> d!143727 e!761639))

(declare-fun res!887635 () Bool)

(assert (=> d!143727 (=> (not res!887635) (not e!761639))))

(assert (=> d!143727 (= res!887635 (isStrictlySorted!876 lt!593201))))

(assert (=> d!143727 (= lt!593201 e!761637)))

(declare-fun c!126069 () Bool)

(assert (=> d!143727 (= c!126069 (and ((_ is Cons!31242) (toList!10889 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))) (bvslt (_1!12049 (h!32451 (toList!10889 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)))) (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!143727 (isStrictlySorted!876 (toList!10889 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)))))

(assert (=> d!143727 (= (insertStrictlySorted!491 (toList!10889 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!593201)))

(declare-fun b!1337532 () Bool)

(assert (=> b!1337532 (= c!126066 (and ((_ is Cons!31242) (toList!10889 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))) (bvsgt (_1!12049 (h!32451 (toList!10889 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)))) (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> b!1337532 (= e!761636 e!761635)))

(declare-fun b!1337533 () Bool)

(declare-fun call!64941 () List!31246)

(assert (=> b!1337533 (= e!761637 call!64941)))

(declare-fun bm!64936 () Bool)

(declare-fun $colon$colon!673 (List!31246 tuple2!24078) List!31246)

(assert (=> bm!64936 (= call!64941 ($colon$colon!673 e!761638 (ite c!126069 (h!32451 (toList!10889 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))) (tuple2!24079 (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun c!126068 () Bool)

(assert (=> bm!64936 (= c!126068 c!126069)))

(declare-fun bm!64937 () Bool)

(assert (=> bm!64937 (= call!64939 call!64940)))

(declare-fun b!1337534 () Bool)

(assert (=> b!1337534 (= e!761639 (contains!8993 lt!593201 (tuple2!24079 (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun bm!64938 () Bool)

(assert (=> bm!64938 (= call!64940 call!64941)))

(assert (= (and d!143727 c!126069) b!1337533))

(assert (= (and d!143727 (not c!126069)) b!1337531))

(assert (= (and b!1337531 c!126067) b!1337530))

(assert (= (and b!1337531 (not c!126067)) b!1337532))

(assert (= (and b!1337532 c!126066) b!1337527))

(assert (= (and b!1337532 (not c!126066)) b!1337525))

(assert (= (or b!1337527 b!1337525) bm!64937))

(assert (= (or b!1337530 bm!64937) bm!64938))

(assert (= (or b!1337533 bm!64938) bm!64936))

(assert (= (and bm!64936 c!126068) b!1337528))

(assert (= (and bm!64936 (not c!126068)) b!1337529))

(assert (= (and d!143727 res!887635) b!1337526))

(assert (= (and b!1337526 res!887634) b!1337534))

(declare-fun m!1225681 () Bool)

(assert (=> b!1337526 m!1225681))

(declare-fun m!1225683 () Bool)

(assert (=> b!1337528 m!1225683))

(declare-fun m!1225685 () Bool)

(assert (=> b!1337534 m!1225685))

(declare-fun m!1225687 () Bool)

(assert (=> bm!64936 m!1225687))

(declare-fun m!1225689 () Bool)

(assert (=> d!143727 m!1225689))

(declare-fun m!1225691 () Bool)

(assert (=> d!143727 m!1225691))

(assert (=> d!143655 d!143727))

(assert (=> b!1337412 d!143669))

(declare-fun d!143729 () Bool)

(declare-fun res!887640 () Bool)

(declare-fun e!761644 () Bool)

(assert (=> d!143729 (=> res!887640 e!761644)))

(assert (=> d!143729 (= res!887640 (and ((_ is Cons!31242) (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (= (_1!12049 (h!32451 (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))) k0!1153)))))

(assert (=> d!143729 (= (containsKey!737 (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1153) e!761644)))

(declare-fun b!1337539 () Bool)

(declare-fun e!761645 () Bool)

(assert (=> b!1337539 (= e!761644 e!761645)))

(declare-fun res!887641 () Bool)

(assert (=> b!1337539 (=> (not res!887641) (not e!761645))))

(assert (=> b!1337539 (= res!887641 (and (or (not ((_ is Cons!31242) (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))) (bvsle (_1!12049 (h!32451 (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))) k0!1153)) ((_ is Cons!31242) (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (bvslt (_1!12049 (h!32451 (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))) k0!1153)))))

(declare-fun b!1337540 () Bool)

(assert (=> b!1337540 (= e!761645 (containsKey!737 (t!45569 (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))) k0!1153))))

(assert (= (and d!143729 (not res!887640)) b!1337539))

(assert (= (and b!1337539 res!887641) b!1337540))

(declare-fun m!1225693 () Bool)

(assert (=> b!1337540 m!1225693))

(assert (=> d!143653 d!143729))

(declare-fun d!143731 () Bool)

(assert (=> d!143731 (= (validKeyInArray!0 (select (arr!43833 _keys!1590) #b00000000000000000000000000000000)) (and (not (= (select (arr!43833 _keys!1590) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!43833 _keys!1590) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1337358 d!143731))

(declare-fun d!143733 () Bool)

(declare-fun isEmpty!1089 (Option!770) Bool)

(assert (=> d!143733 (= (isDefined!522 (getValueByKey!719 (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153)) (not (isEmpty!1089 (getValueByKey!719 (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))))

(declare-fun bs!38296 () Bool)

(assert (= bs!38296 d!143733))

(assert (=> bs!38296 m!1225455))

(declare-fun m!1225695 () Bool)

(assert (=> bs!38296 m!1225695))

(assert (=> b!1337362 d!143733))

(declare-fun c!126070 () Bool)

(declare-fun d!143735 () Bool)

(assert (=> d!143735 (= c!126070 (and ((_ is Cons!31242) (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))) (= (_1!12049 (h!32451 (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)))) k0!1153)))))

(declare-fun e!761646 () Option!770)

(assert (=> d!143735 (= (getValueByKey!719 (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153) e!761646)))

(declare-fun b!1337541 () Bool)

(assert (=> b!1337541 (= e!761646 (Some!769 (_2!12049 (h!32451 (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))))))

(declare-fun b!1337544 () Bool)

(declare-fun e!761647 () Option!770)

(assert (=> b!1337544 (= e!761647 None!768)))

(declare-fun b!1337543 () Bool)

(assert (=> b!1337543 (= e!761647 (getValueByKey!719 (t!45569 (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))) k0!1153))))

(declare-fun b!1337542 () Bool)

(assert (=> b!1337542 (= e!761646 e!761647)))

(declare-fun c!126071 () Bool)

(assert (=> b!1337542 (= c!126071 (and ((_ is Cons!31242) (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))) (not (= (_1!12049 (h!32451 (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)))) k0!1153))))))

(assert (= (and d!143735 c!126070) b!1337541))

(assert (= (and d!143735 (not c!126070)) b!1337542))

(assert (= (and b!1337542 c!126071) b!1337543))

(assert (= (and b!1337542 (not c!126071)) b!1337544))

(declare-fun m!1225697 () Bool)

(assert (=> b!1337543 m!1225697))

(assert (=> b!1337362 d!143735))

(declare-fun d!143737 () Bool)

(assert (=> d!143737 (= (apply!1069 lt!593130 #b0000000000000000000000000000000000000000000000000000000000000000) (get!22160 (getValueByKey!719 (toList!10889 lt!593130) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!38297 () Bool)

(assert (= bs!38297 d!143737))

(declare-fun m!1225699 () Bool)

(assert (=> bs!38297 m!1225699))

(assert (=> bs!38297 m!1225699))

(declare-fun m!1225701 () Bool)

(assert (=> bs!38297 m!1225701))

(assert (=> b!1337424 d!143737))

(declare-fun d!143739 () Bool)

(assert (=> d!143739 (= (validKeyInArray!0 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))) (and (not (= (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1337338 d!143739))

(declare-fun d!143741 () Bool)

(declare-fun e!761649 () Bool)

(assert (=> d!143741 e!761649))

(declare-fun res!887642 () Bool)

(assert (=> d!143741 (=> res!887642 e!761649)))

(declare-fun lt!593205 () Bool)

(assert (=> d!143741 (= res!887642 (not lt!593205))))

(declare-fun lt!593204 () Bool)

(assert (=> d!143741 (= lt!593205 lt!593204)))

(declare-fun lt!593203 () Unit!43875)

(declare-fun e!761648 () Unit!43875)

(assert (=> d!143741 (= lt!593203 e!761648)))

(declare-fun c!126072 () Bool)

(assert (=> d!143741 (= c!126072 lt!593204)))

(assert (=> d!143741 (= lt!593204 (containsKey!737 (toList!10889 lt!593130) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!143741 (= (contains!8992 lt!593130 #b1000000000000000000000000000000000000000000000000000000000000000) lt!593205)))

(declare-fun b!1337545 () Bool)

(declare-fun lt!593202 () Unit!43875)

(assert (=> b!1337545 (= e!761648 lt!593202)))

(assert (=> b!1337545 (= lt!593202 (lemmaContainsKeyImpliesGetValueByKeyDefined!482 (toList!10889 lt!593130) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1337545 (isDefined!522 (getValueByKey!719 (toList!10889 lt!593130) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1337546 () Bool)

(declare-fun Unit!43884 () Unit!43875)

(assert (=> b!1337546 (= e!761648 Unit!43884)))

(declare-fun b!1337547 () Bool)

(assert (=> b!1337547 (= e!761649 (isDefined!522 (getValueByKey!719 (toList!10889 lt!593130) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143741 c!126072) b!1337545))

(assert (= (and d!143741 (not c!126072)) b!1337546))

(assert (= (and d!143741 (not res!887642)) b!1337547))

(declare-fun m!1225703 () Bool)

(assert (=> d!143741 m!1225703))

(declare-fun m!1225705 () Bool)

(assert (=> b!1337545 m!1225705))

(declare-fun m!1225707 () Bool)

(assert (=> b!1337545 m!1225707))

(assert (=> b!1337545 m!1225707))

(declare-fun m!1225709 () Bool)

(assert (=> b!1337545 m!1225709))

(assert (=> b!1337547 m!1225707))

(assert (=> b!1337547 m!1225707))

(assert (=> b!1337547 m!1225709))

(assert (=> bm!64921 d!143741))

(assert (=> bm!64920 d!143685))

(declare-fun b!1337548 () Bool)

(declare-fun e!761653 () Bool)

(assert (=> b!1337548 (= e!761653 (contains!8994 (ite c!126021 (Cons!31241 (select (arr!43833 _keys!1590) #b00000000000000000000000000000000) Nil!31242) Nil!31242) (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!143743 () Bool)

(declare-fun res!887643 () Bool)

(declare-fun e!761650 () Bool)

(assert (=> d!143743 (=> res!887643 e!761650)))

(assert (=> d!143743 (= res!887643 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!44384 _keys!1590)))))

(assert (=> d!143743 (= (arrayNoDuplicates!0 _keys!1590 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!126021 (Cons!31241 (select (arr!43833 _keys!1590) #b00000000000000000000000000000000) Nil!31242) Nil!31242)) e!761650)))

(declare-fun bm!64939 () Bool)

(declare-fun call!64942 () Bool)

(declare-fun c!126073 () Bool)

(assert (=> bm!64939 (= call!64942 (arrayNoDuplicates!0 _keys!1590 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!126073 (Cons!31241 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!126021 (Cons!31241 (select (arr!43833 _keys!1590) #b00000000000000000000000000000000) Nil!31242) Nil!31242)) (ite c!126021 (Cons!31241 (select (arr!43833 _keys!1590) #b00000000000000000000000000000000) Nil!31242) Nil!31242))))))

(declare-fun b!1337549 () Bool)

(declare-fun e!761652 () Bool)

(declare-fun e!761651 () Bool)

(assert (=> b!1337549 (= e!761652 e!761651)))

(assert (=> b!1337549 (= c!126073 (validKeyInArray!0 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1337550 () Bool)

(assert (=> b!1337550 (= e!761651 call!64942)))

(declare-fun b!1337551 () Bool)

(assert (=> b!1337551 (= e!761650 e!761652)))

(declare-fun res!887644 () Bool)

(assert (=> b!1337551 (=> (not res!887644) (not e!761652))))

(assert (=> b!1337551 (= res!887644 (not e!761653))))

(declare-fun res!887645 () Bool)

(assert (=> b!1337551 (=> (not res!887645) (not e!761653))))

(assert (=> b!1337551 (= res!887645 (validKeyInArray!0 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1337552 () Bool)

(assert (=> b!1337552 (= e!761651 call!64942)))

(assert (= (and d!143743 (not res!887643)) b!1337551))

(assert (= (and b!1337551 res!887645) b!1337548))

(assert (= (and b!1337551 res!887644) b!1337549))

(assert (= (and b!1337549 c!126073) b!1337552))

(assert (= (and b!1337549 (not c!126073)) b!1337550))

(assert (= (or b!1337552 b!1337550) bm!64939))

(declare-fun m!1225711 () Bool)

(assert (=> b!1337548 m!1225711))

(assert (=> b!1337548 m!1225711))

(declare-fun m!1225713 () Bool)

(assert (=> b!1337548 m!1225713))

(assert (=> bm!64939 m!1225711))

(declare-fun m!1225715 () Bool)

(assert (=> bm!64939 m!1225715))

(assert (=> b!1337549 m!1225711))

(assert (=> b!1337549 m!1225711))

(declare-fun m!1225717 () Bool)

(assert (=> b!1337549 m!1225717))

(assert (=> b!1337551 m!1225711))

(assert (=> b!1337551 m!1225711))

(assert (=> b!1337551 m!1225717))

(assert (=> bm!64904 d!143743))

(declare-fun d!143745 () Bool)

(assert (=> d!143745 (isDefined!522 (getValueByKey!719 (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(declare-fun lt!593208 () Unit!43875)

(declare-fun choose!1974 (List!31246 (_ BitVec 64)) Unit!43875)

(assert (=> d!143745 (= lt!593208 (choose!1974 (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(declare-fun e!761656 () Bool)

(assert (=> d!143745 e!761656))

(declare-fun res!887648 () Bool)

(assert (=> d!143745 (=> (not res!887648) (not e!761656))))

(assert (=> d!143745 (= res!887648 (isStrictlySorted!876 (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))))

(assert (=> d!143745 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!482 (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153) lt!593208)))

(declare-fun b!1337555 () Bool)

(assert (=> b!1337555 (= e!761656 (containsKey!737 (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(assert (= (and d!143745 res!887648) b!1337555))

(assert (=> d!143745 m!1225455))

(assert (=> d!143745 m!1225455))

(assert (=> d!143745 m!1225457))

(declare-fun m!1225719 () Bool)

(assert (=> d!143745 m!1225719))

(declare-fun m!1225721 () Bool)

(assert (=> d!143745 m!1225721))

(assert (=> b!1337555 m!1225451))

(assert (=> b!1337360 d!143745))

(assert (=> b!1337360 d!143733))

(assert (=> b!1337360 d!143735))

(assert (=> b!1337356 d!143731))

(declare-fun d!143747 () Bool)

(assert (=> d!143747 (= (apply!1069 lt!593064 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))) (get!22160 (getValueByKey!719 (toList!10889 lt!593064) (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))))

(declare-fun bs!38298 () Bool)

(assert (= bs!38298 d!143747))

(assert (=> bs!38298 m!1225413))

(declare-fun m!1225723 () Bool)

(assert (=> bs!38298 m!1225723))

(assert (=> bs!38298 m!1225723))

(declare-fun m!1225725 () Bool)

(assert (=> bs!38298 m!1225725))

(assert (=> b!1337335 d!143747))

(declare-fun d!143749 () Bool)

(declare-fun c!126074 () Bool)

(assert (=> d!143749 (= c!126074 ((_ is ValueCellFull!17580) (select (arr!43832 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980))))))

(declare-fun e!761657 () V!54379)

(assert (=> d!143749 (= (get!22157 (select (arr!43832 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)) e!761657)))

(declare-fun b!1337556 () Bool)

(assert (=> b!1337556 (= e!761657 (get!22158 (select (arr!43832 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1337557 () Bool)

(assert (=> b!1337557 (= e!761657 (get!22159 (select (arr!43832 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143749 c!126074) b!1337556))

(assert (= (and d!143749 (not c!126074)) b!1337557))

(assert (=> b!1337556 m!1225419))

(assert (=> b!1337556 m!1225347))

(declare-fun m!1225727 () Bool)

(assert (=> b!1337556 m!1225727))

(assert (=> b!1337557 m!1225419))

(assert (=> b!1337557 m!1225347))

(declare-fun m!1225729 () Bool)

(assert (=> b!1337557 m!1225729))

(assert (=> b!1337335 d!143749))

(declare-fun d!143751 () Bool)

(assert (=> d!143751 (= (apply!1069 lt!593130 #b1000000000000000000000000000000000000000000000000000000000000000) (get!22160 (getValueByKey!719 (toList!10889 lt!593130) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!38299 () Bool)

(assert (= bs!38299 d!143751))

(assert (=> bs!38299 m!1225707))

(assert (=> bs!38299 m!1225707))

(declare-fun m!1225731 () Bool)

(assert (=> bs!38299 m!1225731))

(assert (=> b!1337406 d!143751))

(declare-fun d!143753 () Bool)

(assert (=> d!143753 (= (isDefined!522 (getValueByKey!719 (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1153)) (not (isEmpty!1089 (getValueByKey!719 (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1153))))))

(declare-fun bs!38300 () Bool)

(assert (= bs!38300 d!143753))

(assert (=> bs!38300 m!1225395))

(declare-fun m!1225733 () Bool)

(assert (=> bs!38300 m!1225733))

(assert (=> b!1337296 d!143753))

(declare-fun c!126075 () Bool)

(declare-fun d!143755 () Bool)

(assert (=> d!143755 (= c!126075 (and ((_ is Cons!31242) (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (= (_1!12049 (h!32451 (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))) k0!1153)))))

(declare-fun e!761658 () Option!770)

(assert (=> d!143755 (= (getValueByKey!719 (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1153) e!761658)))

(declare-fun b!1337558 () Bool)

(assert (=> b!1337558 (= e!761658 (Some!769 (_2!12049 (h!32451 (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))))

(declare-fun b!1337561 () Bool)

(declare-fun e!761659 () Option!770)

(assert (=> b!1337561 (= e!761659 None!768)))

(declare-fun b!1337560 () Bool)

(assert (=> b!1337560 (= e!761659 (getValueByKey!719 (t!45569 (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))) k0!1153))))

(declare-fun b!1337559 () Bool)

(assert (=> b!1337559 (= e!761658 e!761659)))

(declare-fun c!126076 () Bool)

(assert (=> b!1337559 (= c!126076 (and ((_ is Cons!31242) (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (not (= (_1!12049 (h!32451 (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))) k0!1153))))))

(assert (= (and d!143755 c!126075) b!1337558))

(assert (= (and d!143755 (not c!126075)) b!1337559))

(assert (= (and b!1337559 c!126076) b!1337560))

(assert (= (and b!1337559 (not c!126076)) b!1337561))

(declare-fun m!1225735 () Bool)

(assert (=> b!1337560 m!1225735))

(assert (=> b!1337296 d!143755))

(declare-fun d!143757 () Bool)

(declare-fun e!761660 () Bool)

(assert (=> d!143757 e!761660))

(declare-fun res!887649 () Bool)

(assert (=> d!143757 (=> (not res!887649) (not e!761660))))

(declare-fun lt!593212 () ListLongMap!21747)

(assert (=> d!143757 (= res!887649 (contains!8992 lt!593212 (_1!12049 (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun lt!593210 () List!31246)

(assert (=> d!143757 (= lt!593212 (ListLongMap!21748 lt!593210))))

(declare-fun lt!593211 () Unit!43875)

(declare-fun lt!593209 () Unit!43875)

(assert (=> d!143757 (= lt!593211 lt!593209)))

(assert (=> d!143757 (= (getValueByKey!719 lt!593210 (_1!12049 (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) (Some!769 (_2!12049 (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (=> d!143757 (= lt!593209 (lemmaContainsTupThenGetReturnValue!362 lt!593210 (_1!12049 (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) (_2!12049 (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (=> d!143757 (= lt!593210 (insertStrictlySorted!491 (toList!10889 call!64924) (_1!12049 (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) (_2!12049 (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (=> d!143757 (= (+!4718 call!64924 (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) lt!593212)))

(declare-fun b!1337562 () Bool)

(declare-fun res!887650 () Bool)

(assert (=> b!1337562 (=> (not res!887650) (not e!761660))))

(assert (=> b!1337562 (= res!887650 (= (getValueByKey!719 (toList!10889 lt!593212) (_1!12049 (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) (Some!769 (_2!12049 (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(declare-fun b!1337563 () Bool)

(assert (=> b!1337563 (= e!761660 (contains!8993 (toList!10889 lt!593212) (tuple2!24079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))

(assert (= (and d!143757 res!887649) b!1337562))

(assert (= (and b!1337562 res!887650) b!1337563))

(declare-fun m!1225737 () Bool)

(assert (=> d!143757 m!1225737))

(declare-fun m!1225739 () Bool)

(assert (=> d!143757 m!1225739))

(declare-fun m!1225741 () Bool)

(assert (=> d!143757 m!1225741))

(declare-fun m!1225743 () Bool)

(assert (=> d!143757 m!1225743))

(declare-fun m!1225745 () Bool)

(assert (=> b!1337562 m!1225745))

(declare-fun m!1225747 () Bool)

(assert (=> b!1337563 m!1225747))

(assert (=> b!1337421 d!143757))

(declare-fun d!143759 () Bool)

(declare-fun lt!593215 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!666 (List!31245) (InoxSet (_ BitVec 64)))

(assert (=> d!143759 (= lt!593215 (select (content!666 Nil!31242) (select (arr!43833 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun e!761665 () Bool)

(assert (=> d!143759 (= lt!593215 e!761665)))

(declare-fun res!887655 () Bool)

(assert (=> d!143759 (=> (not res!887655) (not e!761665))))

(assert (=> d!143759 (= res!887655 ((_ is Cons!31241) Nil!31242))))

(assert (=> d!143759 (= (contains!8994 Nil!31242 (select (arr!43833 _keys!1590) #b00000000000000000000000000000000)) lt!593215)))

(declare-fun b!1337568 () Bool)

(declare-fun e!761666 () Bool)

(assert (=> b!1337568 (= e!761665 e!761666)))

(declare-fun res!887656 () Bool)

(assert (=> b!1337568 (=> res!887656 e!761666)))

(assert (=> b!1337568 (= res!887656 (= (h!32450 Nil!31242) (select (arr!43833 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun b!1337569 () Bool)

(assert (=> b!1337569 (= e!761666 (contains!8994 (t!45568 Nil!31242) (select (arr!43833 _keys!1590) #b00000000000000000000000000000000)))))

(assert (= (and d!143759 res!887655) b!1337568))

(assert (= (and b!1337568 (not res!887656)) b!1337569))

(declare-fun m!1225749 () Bool)

(assert (=> d!143759 m!1225749))

(assert (=> d!143759 m!1225443))

(declare-fun m!1225751 () Bool)

(assert (=> d!143759 m!1225751))

(assert (=> b!1337569 m!1225443))

(declare-fun m!1225753 () Bool)

(assert (=> b!1337569 m!1225753))

(assert (=> b!1337355 d!143759))

(declare-fun b!1337570 () Bool)

(declare-fun e!761667 () Bool)

(declare-fun e!761668 () Bool)

(assert (=> b!1337570 (= e!761667 e!761668)))

(declare-fun lt!593216 () (_ BitVec 64))

(assert (=> b!1337570 (= lt!593216 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!593217 () Unit!43875)

(assert (=> b!1337570 (= lt!593217 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1590 lt!593216 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1337570 (arrayContainsKey!0 _keys!1590 lt!593216 #b00000000000000000000000000000000)))

(declare-fun lt!593218 () Unit!43875)

(assert (=> b!1337570 (= lt!593218 lt!593217)))

(declare-fun res!887657 () Bool)

(assert (=> b!1337570 (= res!887657 (= (seekEntryOrOpen!0 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1590 mask!1998) (Found!10046 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1337570 (=> (not res!887657) (not e!761668))))

(declare-fun b!1337571 () Bool)

(declare-fun call!64943 () Bool)

(assert (=> b!1337571 (= e!761667 call!64943)))

(declare-fun b!1337572 () Bool)

(declare-fun e!761669 () Bool)

(assert (=> b!1337572 (= e!761669 e!761667)))

(declare-fun c!126077 () Bool)

(assert (=> b!1337572 (= c!126077 (validKeyInArray!0 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!143761 () Bool)

(declare-fun res!887658 () Bool)

(assert (=> d!143761 (=> res!887658 e!761669)))

(assert (=> d!143761 (= res!887658 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!44384 _keys!1590)))))

(assert (=> d!143761 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1590 mask!1998) e!761669)))

(declare-fun b!1337573 () Bool)

(assert (=> b!1337573 (= e!761668 call!64943)))

(declare-fun bm!64940 () Bool)

(assert (=> bm!64940 (= call!64943 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1590 mask!1998))))

(assert (= (and d!143761 (not res!887658)) b!1337572))

(assert (= (and b!1337572 c!126077) b!1337570))

(assert (= (and b!1337572 (not c!126077)) b!1337571))

(assert (= (and b!1337570 res!887657) b!1337573))

(assert (= (or b!1337573 b!1337571) bm!64940))

(assert (=> b!1337570 m!1225711))

(declare-fun m!1225755 () Bool)

(assert (=> b!1337570 m!1225755))

(declare-fun m!1225757 () Bool)

(assert (=> b!1337570 m!1225757))

(assert (=> b!1337570 m!1225711))

(declare-fun m!1225759 () Bool)

(assert (=> b!1337570 m!1225759))

(assert (=> b!1337572 m!1225711))

(assert (=> b!1337572 m!1225711))

(assert (=> b!1337572 m!1225717))

(declare-fun m!1225761 () Bool)

(assert (=> bm!64940 m!1225761))

(assert (=> bm!64928 d!143761))

(assert (=> b!1337422 d!143669))

(declare-fun d!143763 () Bool)

(declare-fun e!761671 () Bool)

(assert (=> d!143763 e!761671))

(declare-fun res!887659 () Bool)

(assert (=> d!143763 (=> res!887659 e!761671)))

(declare-fun lt!593222 () Bool)

(assert (=> d!143763 (= res!887659 (not lt!593222))))

(declare-fun lt!593221 () Bool)

(assert (=> d!143763 (= lt!593222 lt!593221)))

(declare-fun lt!593220 () Unit!43875)

(declare-fun e!761670 () Unit!43875)

(assert (=> d!143763 (= lt!593220 e!761670)))

(declare-fun c!126078 () Bool)

(assert (=> d!143763 (= c!126078 lt!593221)))

(assert (=> d!143763 (= lt!593221 (containsKey!737 (toList!10889 lt!593064) (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(assert (=> d!143763 (= (contains!8992 lt!593064 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))) lt!593222)))

(declare-fun b!1337574 () Bool)

(declare-fun lt!593219 () Unit!43875)

(assert (=> b!1337574 (= e!761670 lt!593219)))

(assert (=> b!1337574 (= lt!593219 (lemmaContainsKeyImpliesGetValueByKeyDefined!482 (toList!10889 lt!593064) (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(assert (=> b!1337574 (isDefined!522 (getValueByKey!719 (toList!10889 lt!593064) (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(declare-fun b!1337575 () Bool)

(declare-fun Unit!43885 () Unit!43875)

(assert (=> b!1337575 (= e!761670 Unit!43885)))

(declare-fun b!1337576 () Bool)

(assert (=> b!1337576 (= e!761671 (isDefined!522 (getValueByKey!719 (toList!10889 lt!593064) (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))))

(assert (= (and d!143763 c!126078) b!1337574))

(assert (= (and d!143763 (not c!126078)) b!1337575))

(assert (= (and d!143763 (not res!887659)) b!1337576))

(assert (=> d!143763 m!1225413))

(declare-fun m!1225763 () Bool)

(assert (=> d!143763 m!1225763))

(assert (=> b!1337574 m!1225413))

(declare-fun m!1225765 () Bool)

(assert (=> b!1337574 m!1225765))

(assert (=> b!1337574 m!1225413))

(assert (=> b!1337574 m!1225723))

(assert (=> b!1337574 m!1225723))

(declare-fun m!1225767 () Bool)

(assert (=> b!1337574 m!1225767))

(assert (=> b!1337576 m!1225413))

(assert (=> b!1337576 m!1225723))

(assert (=> b!1337576 m!1225723))

(assert (=> b!1337576 m!1225767))

(assert (=> b!1337336 d!143763))

(declare-fun d!143765 () Bool)

(assert (=> d!143765 (arrayContainsKey!0 _keys!1590 lt!593142 #b00000000000000000000000000000000)))

(declare-fun lt!593225 () Unit!43875)

(declare-fun choose!13 (array!90747 (_ BitVec 64) (_ BitVec 32)) Unit!43875)

(assert (=> d!143765 (= lt!593225 (choose!13 _keys!1590 lt!593142 #b00000000000000000000000000000000))))

(assert (=> d!143765 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!143765 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1590 lt!593142 #b00000000000000000000000000000000) lt!593225)))

(declare-fun bs!38301 () Bool)

(assert (= bs!38301 d!143765))

(assert (=> bs!38301 m!1225509))

(declare-fun m!1225769 () Bool)

(assert (=> bs!38301 m!1225769))

(assert (=> b!1337434 d!143765))

(declare-fun d!143767 () Bool)

(declare-fun res!887664 () Bool)

(declare-fun e!761676 () Bool)

(assert (=> d!143767 (=> res!887664 e!761676)))

(assert (=> d!143767 (= res!887664 (= (select (arr!43833 _keys!1590) #b00000000000000000000000000000000) lt!593142))))

(assert (=> d!143767 (= (arrayContainsKey!0 _keys!1590 lt!593142 #b00000000000000000000000000000000) e!761676)))

(declare-fun b!1337581 () Bool)

(declare-fun e!761677 () Bool)

(assert (=> b!1337581 (= e!761676 e!761677)))

(declare-fun res!887665 () Bool)

(assert (=> b!1337581 (=> (not res!887665) (not e!761677))))

(assert (=> b!1337581 (= res!887665 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!44384 _keys!1590)))))

(declare-fun b!1337582 () Bool)

(assert (=> b!1337582 (= e!761677 (arrayContainsKey!0 _keys!1590 lt!593142 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!143767 (not res!887664)) b!1337581))

(assert (= (and b!1337581 res!887665) b!1337582))

(assert (=> d!143767 m!1225443))

(declare-fun m!1225771 () Bool)

(assert (=> b!1337582 m!1225771))

(assert (=> b!1337434 d!143767))

(declare-fun b!1337595 () Bool)

(declare-fun e!761684 () SeekEntryResult!10046)

(declare-fun lt!593234 () SeekEntryResult!10046)

(assert (=> b!1337595 (= e!761684 (Found!10046 (index!42556 lt!593234)))))

(declare-fun d!143769 () Bool)

(declare-fun lt!593232 () SeekEntryResult!10046)

(assert (=> d!143769 (and (or ((_ is Undefined!10046) lt!593232) (not ((_ is Found!10046) lt!593232)) (and (bvsge (index!42555 lt!593232) #b00000000000000000000000000000000) (bvslt (index!42555 lt!593232) (size!44384 _keys!1590)))) (or ((_ is Undefined!10046) lt!593232) ((_ is Found!10046) lt!593232) (not ((_ is MissingZero!10046) lt!593232)) (and (bvsge (index!42554 lt!593232) #b00000000000000000000000000000000) (bvslt (index!42554 lt!593232) (size!44384 _keys!1590)))) (or ((_ is Undefined!10046) lt!593232) ((_ is Found!10046) lt!593232) ((_ is MissingZero!10046) lt!593232) (not ((_ is MissingVacant!10046) lt!593232)) (and (bvsge (index!42557 lt!593232) #b00000000000000000000000000000000) (bvslt (index!42557 lt!593232) (size!44384 _keys!1590)))) (or ((_ is Undefined!10046) lt!593232) (ite ((_ is Found!10046) lt!593232) (= (select (arr!43833 _keys!1590) (index!42555 lt!593232)) (select (arr!43833 _keys!1590) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!10046) lt!593232) (= (select (arr!43833 _keys!1590) (index!42554 lt!593232)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10046) lt!593232) (= (select (arr!43833 _keys!1590) (index!42557 lt!593232)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!761685 () SeekEntryResult!10046)

(assert (=> d!143769 (= lt!593232 e!761685)))

(declare-fun c!126085 () Bool)

(assert (=> d!143769 (= c!126085 (and ((_ is Intermediate!10046) lt!593234) (undefined!10858 lt!593234)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!90747 (_ BitVec 32)) SeekEntryResult!10046)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!143769 (= lt!593234 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!43833 _keys!1590) #b00000000000000000000000000000000) mask!1998) (select (arr!43833 _keys!1590) #b00000000000000000000000000000000) _keys!1590 mask!1998))))

(assert (=> d!143769 (validMask!0 mask!1998)))

(assert (=> d!143769 (= (seekEntryOrOpen!0 (select (arr!43833 _keys!1590) #b00000000000000000000000000000000) _keys!1590 mask!1998) lt!593232)))

(declare-fun b!1337596 () Bool)

(declare-fun e!761686 () SeekEntryResult!10046)

(assert (=> b!1337596 (= e!761686 (MissingZero!10046 (index!42556 lt!593234)))))

(declare-fun b!1337597 () Bool)

(assert (=> b!1337597 (= e!761685 e!761684)))

(declare-fun lt!593233 () (_ BitVec 64))

(assert (=> b!1337597 (= lt!593233 (select (arr!43833 _keys!1590) (index!42556 lt!593234)))))

(declare-fun c!126086 () Bool)

(assert (=> b!1337597 (= c!126086 (= lt!593233 (select (arr!43833 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun b!1337598 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!90747 (_ BitVec 32)) SeekEntryResult!10046)

(assert (=> b!1337598 (= e!761686 (seekKeyOrZeroReturnVacant!0 (x!119474 lt!593234) (index!42556 lt!593234) (index!42556 lt!593234) (select (arr!43833 _keys!1590) #b00000000000000000000000000000000) _keys!1590 mask!1998))))

(declare-fun b!1337599 () Bool)

(assert (=> b!1337599 (= e!761685 Undefined!10046)))

(declare-fun b!1337600 () Bool)

(declare-fun c!126087 () Bool)

(assert (=> b!1337600 (= c!126087 (= lt!593233 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1337600 (= e!761684 e!761686)))

(assert (= (and d!143769 c!126085) b!1337599))

(assert (= (and d!143769 (not c!126085)) b!1337597))

(assert (= (and b!1337597 c!126086) b!1337595))

(assert (= (and b!1337597 (not c!126086)) b!1337600))

(assert (= (and b!1337600 c!126087) b!1337596))

(assert (= (and b!1337600 (not c!126087)) b!1337598))

(assert (=> d!143769 m!1225339))

(assert (=> d!143769 m!1225443))

(declare-fun m!1225773 () Bool)

(assert (=> d!143769 m!1225773))

(declare-fun m!1225775 () Bool)

(assert (=> d!143769 m!1225775))

(declare-fun m!1225777 () Bool)

(assert (=> d!143769 m!1225777))

(declare-fun m!1225779 () Bool)

(assert (=> d!143769 m!1225779))

(assert (=> d!143769 m!1225773))

(assert (=> d!143769 m!1225443))

(declare-fun m!1225781 () Bool)

(assert (=> d!143769 m!1225781))

(declare-fun m!1225783 () Bool)

(assert (=> b!1337597 m!1225783))

(assert (=> b!1337598 m!1225443))

(declare-fun m!1225785 () Bool)

(assert (=> b!1337598 m!1225785))

(assert (=> b!1337434 d!143769))

(declare-fun d!143771 () Bool)

(assert (=> d!143771 (isDefined!522 (getValueByKey!719 (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1153))))

(declare-fun lt!593235 () Unit!43875)

(assert (=> d!143771 (= lt!593235 (choose!1974 (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1153))))

(declare-fun e!761687 () Bool)

(assert (=> d!143771 e!761687))

(declare-fun res!887666 () Bool)

(assert (=> d!143771 (=> (not res!887666) (not e!761687))))

(assert (=> d!143771 (= res!887666 (isStrictlySorted!876 (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!143771 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!482 (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1153) lt!593235)))

(declare-fun b!1337601 () Bool)

(assert (=> b!1337601 (= e!761687 (containsKey!737 (toList!10889 (+!4718 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1153))))

(assert (= (and d!143771 res!887666) b!1337601))

(assert (=> d!143771 m!1225395))

(assert (=> d!143771 m!1225395))

(assert (=> d!143771 m!1225397))

(declare-fun m!1225787 () Bool)

(assert (=> d!143771 m!1225787))

(declare-fun m!1225789 () Bool)

(assert (=> d!143771 m!1225789))

(assert (=> b!1337601 m!1225391))

(assert (=> b!1337294 d!143771))

(assert (=> b!1337294 d!143753))

(assert (=> b!1337294 d!143755))

(declare-fun c!126088 () Bool)

(declare-fun d!143773 () Bool)

(assert (=> d!143773 (= c!126088 (and ((_ is Cons!31242) (toList!10889 lt!593044)) (= (_1!12049 (h!32451 (toList!10889 lt!593044))) (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!761688 () Option!770)

(assert (=> d!143773 (= (getValueByKey!719 (toList!10889 lt!593044) (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!761688)))

(declare-fun b!1337602 () Bool)

(assert (=> b!1337602 (= e!761688 (Some!769 (_2!12049 (h!32451 (toList!10889 lt!593044)))))))

(declare-fun b!1337605 () Bool)

(declare-fun e!761689 () Option!770)

(assert (=> b!1337605 (= e!761689 None!768)))

(declare-fun b!1337604 () Bool)

(assert (=> b!1337604 (= e!761689 (getValueByKey!719 (t!45569 (toList!10889 lt!593044)) (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1337603 () Bool)

(assert (=> b!1337603 (= e!761688 e!761689)))

(declare-fun c!126089 () Bool)

(assert (=> b!1337603 (= c!126089 (and ((_ is Cons!31242) (toList!10889 lt!593044)) (not (= (_1!12049 (h!32451 (toList!10889 lt!593044))) (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (= (and d!143773 c!126088) b!1337602))

(assert (= (and d!143773 (not c!126088)) b!1337603))

(assert (= (and b!1337603 c!126089) b!1337604))

(assert (= (and b!1337603 (not c!126089)) b!1337605))

(declare-fun m!1225791 () Bool)

(assert (=> b!1337604 m!1225791))

(assert (=> b!1337301 d!143773))

(declare-fun b!1337606 () Bool)

(declare-fun e!761695 () ListLongMap!21747)

(declare-fun call!64944 () ListLongMap!21747)

(assert (=> b!1337606 (= e!761695 call!64944)))

(declare-fun b!1337607 () Bool)

(declare-fun res!887669 () Bool)

(declare-fun e!761694 () Bool)

(assert (=> b!1337607 (=> (not res!887669) (not e!761694))))

(declare-fun lt!593241 () ListLongMap!21747)

(assert (=> b!1337607 (= res!887669 (not (contains!8992 lt!593241 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1337608 () Bool)

(declare-fun e!761690 () Bool)

(declare-fun e!761693 () Bool)

(assert (=> b!1337608 (= e!761690 e!761693)))

(declare-fun c!126092 () Bool)

(assert (=> b!1337608 (= c!126092 (bvslt (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) (size!44384 _keys!1590)))))

(declare-fun b!1337609 () Bool)

(assert (=> b!1337609 (= e!761693 (isEmpty!1088 lt!593241))))

(declare-fun b!1337610 () Bool)

(declare-fun e!761692 () Bool)

(assert (=> b!1337610 (= e!761692 (validKeyInArray!0 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001))))))

(assert (=> b!1337610 (bvsge (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun bm!64941 () Bool)

(assert (=> bm!64941 (= call!64944 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1323))))

(declare-fun b!1337611 () Bool)

(assert (=> b!1337611 (= e!761693 (= lt!593241 (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1323)))))

(declare-fun b!1337612 () Bool)

(assert (=> b!1337612 (= e!761694 e!761690)))

(declare-fun c!126091 () Bool)

(assert (=> b!1337612 (= c!126091 e!761692)))

(declare-fun res!887668 () Bool)

(assert (=> b!1337612 (=> (not res!887668) (not e!761692))))

(assert (=> b!1337612 (= res!887668 (bvslt (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) (size!44384 _keys!1590)))))

(declare-fun b!1337614 () Bool)

(assert (=> b!1337614 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) (size!44384 _keys!1590)))))

(assert (=> b!1337614 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) (size!44383 _values!1320)))))

(declare-fun e!761691 () Bool)

(assert (=> b!1337614 (= e!761691 (= (apply!1069 lt!593241 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001))) (get!22157 (select (arr!43832 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001)) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1337615 () Bool)

(assert (=> b!1337615 (= e!761690 e!761691)))

(assert (=> b!1337615 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) (size!44384 _keys!1590)))))

(declare-fun res!887667 () Bool)

(assert (=> b!1337615 (= res!887667 (contains!8992 lt!593241 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001))))))

(assert (=> b!1337615 (=> (not res!887667) (not e!761691))))

(declare-fun b!1337616 () Bool)

(declare-fun e!761696 () ListLongMap!21747)

(assert (=> b!1337616 (= e!761696 (ListLongMap!21748 Nil!31243))))

(declare-fun b!1337617 () Bool)

(assert (=> b!1337617 (= e!761696 e!761695)))

(declare-fun c!126093 () Bool)

(assert (=> b!1337617 (= c!126093 (validKeyInArray!0 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001))))))

(declare-fun d!143775 () Bool)

(assert (=> d!143775 e!761694))

(declare-fun res!887670 () Bool)

(assert (=> d!143775 (=> (not res!887670) (not e!761694))))

(assert (=> d!143775 (= res!887670 (not (contains!8992 lt!593241 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!143775 (= lt!593241 e!761696)))

(declare-fun c!126090 () Bool)

(assert (=> d!143775 (= c!126090 (bvsge (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) (size!44384 _keys!1590)))))

(assert (=> d!143775 (validMask!0 mask!1998)))

(assert (=> d!143775 (= (getCurrentListMapNoExtraKeys!6441 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) defaultEntry!1323) lt!593241)))

(declare-fun b!1337613 () Bool)

(declare-fun lt!593242 () Unit!43875)

(declare-fun lt!593237 () Unit!43875)

(assert (=> b!1337613 (= lt!593242 lt!593237)))

(declare-fun lt!593236 () V!54379)

(declare-fun lt!593240 () (_ BitVec 64))

(declare-fun lt!593238 () (_ BitVec 64))

(declare-fun lt!593239 () ListLongMap!21747)

(assert (=> b!1337613 (not (contains!8992 (+!4718 lt!593239 (tuple2!24079 lt!593238 lt!593236)) lt!593240))))

(assert (=> b!1337613 (= lt!593237 (addStillNotContains!507 lt!593239 lt!593238 lt!593236 lt!593240))))

(assert (=> b!1337613 (= lt!593240 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1337613 (= lt!593236 (get!22157 (select (arr!43832 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001)) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1337613 (= lt!593238 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001)))))

(assert (=> b!1337613 (= lt!593239 call!64944)))

(assert (=> b!1337613 (= e!761695 (+!4718 call!64944 (tuple2!24079 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001)) (get!22157 (select (arr!43832 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001)) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!143775 c!126090) b!1337616))

(assert (= (and d!143775 (not c!126090)) b!1337617))

(assert (= (and b!1337617 c!126093) b!1337613))

(assert (= (and b!1337617 (not c!126093)) b!1337606))

(assert (= (or b!1337613 b!1337606) bm!64941))

(assert (= (and d!143775 res!887670) b!1337607))

(assert (= (and b!1337607 res!887669) b!1337612))

(assert (= (and b!1337612 res!887668) b!1337610))

(assert (= (and b!1337612 c!126091) b!1337615))

(assert (= (and b!1337612 (not c!126091)) b!1337608))

(assert (= (and b!1337615 res!887667) b!1337614))

(assert (= (and b!1337608 c!126092) b!1337611))

(assert (= (and b!1337608 (not c!126092)) b!1337609))

(declare-fun b_lambda!24243 () Bool)

(assert (=> (not b_lambda!24243) (not b!1337614)))

(assert (=> b!1337614 t!45567))

(declare-fun b_and!50055 () Bool)

(assert (= b_and!50053 (and (=> t!45567 result!25321) b_and!50055)))

(declare-fun b_lambda!24245 () Bool)

(assert (=> (not b_lambda!24245) (not b!1337613)))

(assert (=> b!1337613 t!45567))

(declare-fun b_and!50057 () Bool)

(assert (= b_and!50055 (and (=> t!45567 result!25321) b_and!50057)))

(declare-fun m!1225793 () Bool)

(assert (=> b!1337613 m!1225793))

(declare-fun m!1225795 () Bool)

(assert (=> b!1337613 m!1225795))

(declare-fun m!1225797 () Bool)

(assert (=> b!1337613 m!1225797))

(assert (=> b!1337613 m!1225347))

(assert (=> b!1337613 m!1225797))

(declare-fun m!1225799 () Bool)

(assert (=> b!1337613 m!1225799))

(declare-fun m!1225801 () Bool)

(assert (=> b!1337613 m!1225801))

(declare-fun m!1225803 () Bool)

(assert (=> b!1337613 m!1225803))

(assert (=> b!1337613 m!1225801))

(assert (=> b!1337613 m!1225347))

(declare-fun m!1225805 () Bool)

(assert (=> b!1337613 m!1225805))

(declare-fun m!1225807 () Bool)

(assert (=> b!1337611 m!1225807))

(assert (=> bm!64941 m!1225807))

(declare-fun m!1225809 () Bool)

(assert (=> d!143775 m!1225809))

(assert (=> d!143775 m!1225339))

(assert (=> b!1337615 m!1225795))

(assert (=> b!1337615 m!1225795))

(declare-fun m!1225811 () Bool)

(assert (=> b!1337615 m!1225811))

(declare-fun m!1225813 () Bool)

(assert (=> b!1337609 m!1225813))

(assert (=> b!1337610 m!1225795))

(assert (=> b!1337610 m!1225795))

(declare-fun m!1225815 () Bool)

(assert (=> b!1337610 m!1225815))

(assert (=> b!1337617 m!1225795))

(assert (=> b!1337617 m!1225795))

(assert (=> b!1337617 m!1225815))

(assert (=> b!1337614 m!1225795))

(declare-fun m!1225817 () Bool)

(assert (=> b!1337614 m!1225817))

(assert (=> b!1337614 m!1225801))

(assert (=> b!1337614 m!1225347))

(assert (=> b!1337614 m!1225805))

(assert (=> b!1337614 m!1225795))

(assert (=> b!1337614 m!1225347))

(assert (=> b!1337614 m!1225801))

(declare-fun m!1225819 () Bool)

(assert (=> b!1337607 m!1225819))

(assert (=> b!1337332 d!143775))

(declare-fun d!143777 () Bool)

(declare-fun e!761698 () Bool)

(assert (=> d!143777 e!761698))

(declare-fun res!887671 () Bool)

(assert (=> d!143777 (=> res!887671 e!761698)))

(declare-fun lt!593246 () Bool)

(assert (=> d!143777 (= res!887671 (not lt!593246))))

(declare-fun lt!593245 () Bool)

(assert (=> d!143777 (= lt!593246 lt!593245)))

(declare-fun lt!593244 () Unit!43875)

(declare-fun e!761697 () Unit!43875)

(assert (=> d!143777 (= lt!593244 e!761697)))

(declare-fun c!126094 () Bool)

(assert (=> d!143777 (= c!126094 lt!593245)))

(assert (=> d!143777 (= lt!593245 (containsKey!737 (toList!10889 lt!593130) (select (arr!43833 _keys!1590) from!1980)))))

(assert (=> d!143777 (= (contains!8992 lt!593130 (select (arr!43833 _keys!1590) from!1980)) lt!593246)))

(declare-fun b!1337618 () Bool)

(declare-fun lt!593243 () Unit!43875)

(assert (=> b!1337618 (= e!761697 lt!593243)))

(assert (=> b!1337618 (= lt!593243 (lemmaContainsKeyImpliesGetValueByKeyDefined!482 (toList!10889 lt!593130) (select (arr!43833 _keys!1590) from!1980)))))

(assert (=> b!1337618 (isDefined!522 (getValueByKey!719 (toList!10889 lt!593130) (select (arr!43833 _keys!1590) from!1980)))))

(declare-fun b!1337619 () Bool)

(declare-fun Unit!43886 () Unit!43875)

(assert (=> b!1337619 (= e!761697 Unit!43886)))

(declare-fun b!1337620 () Bool)

(assert (=> b!1337620 (= e!761698 (isDefined!522 (getValueByKey!719 (toList!10889 lt!593130) (select (arr!43833 _keys!1590) from!1980))))))

(assert (= (and d!143777 c!126094) b!1337618))

(assert (= (and d!143777 (not c!126094)) b!1337619))

(assert (= (and d!143777 (not res!887671)) b!1337620))

(assert (=> d!143777 m!1225335))

(declare-fun m!1225821 () Bool)

(assert (=> d!143777 m!1225821))

(assert (=> b!1337618 m!1225335))

(declare-fun m!1225823 () Bool)

(assert (=> b!1337618 m!1225823))

(assert (=> b!1337618 m!1225335))

(assert (=> b!1337618 m!1225525))

(assert (=> b!1337618 m!1225525))

(declare-fun m!1225825 () Bool)

(assert (=> b!1337618 m!1225825))

(assert (=> b!1337620 m!1225335))

(assert (=> b!1337620 m!1225525))

(assert (=> b!1337620 m!1225525))

(assert (=> b!1337620 m!1225825))

(assert (=> b!1337420 d!143777))

(declare-fun d!143779 () Bool)

(declare-fun e!761700 () Bool)

(assert (=> d!143779 e!761700))

(declare-fun res!887672 () Bool)

(assert (=> d!143779 (=> res!887672 e!761700)))

(declare-fun lt!593250 () Bool)

(assert (=> d!143779 (= res!887672 (not lt!593250))))

(declare-fun lt!593249 () Bool)

(assert (=> d!143779 (= lt!593250 lt!593249)))

(declare-fun lt!593248 () Unit!43875)

(declare-fun e!761699 () Unit!43875)

(assert (=> d!143779 (= lt!593248 e!761699)))

(declare-fun c!126095 () Bool)

(assert (=> d!143779 (= c!126095 lt!593249)))

(assert (=> d!143779 (= lt!593249 (containsKey!737 (toList!10889 (+!4718 lt!593062 (tuple2!24079 lt!593061 lt!593059))) lt!593063))))

(assert (=> d!143779 (= (contains!8992 (+!4718 lt!593062 (tuple2!24079 lt!593061 lt!593059)) lt!593063) lt!593250)))

(declare-fun b!1337621 () Bool)

(declare-fun lt!593247 () Unit!43875)

(assert (=> b!1337621 (= e!761699 lt!593247)))

(assert (=> b!1337621 (= lt!593247 (lemmaContainsKeyImpliesGetValueByKeyDefined!482 (toList!10889 (+!4718 lt!593062 (tuple2!24079 lt!593061 lt!593059))) lt!593063))))

(assert (=> b!1337621 (isDefined!522 (getValueByKey!719 (toList!10889 (+!4718 lt!593062 (tuple2!24079 lt!593061 lt!593059))) lt!593063))))

(declare-fun b!1337622 () Bool)

(declare-fun Unit!43887 () Unit!43875)

(assert (=> b!1337622 (= e!761699 Unit!43887)))

(declare-fun b!1337623 () Bool)

(assert (=> b!1337623 (= e!761700 (isDefined!522 (getValueByKey!719 (toList!10889 (+!4718 lt!593062 (tuple2!24079 lt!593061 lt!593059))) lt!593063)))))

(assert (= (and d!143779 c!126095) b!1337621))

(assert (= (and d!143779 (not c!126095)) b!1337622))

(assert (= (and d!143779 (not res!887672)) b!1337623))

(declare-fun m!1225827 () Bool)

(assert (=> d!143779 m!1225827))

(declare-fun m!1225829 () Bool)

(assert (=> b!1337621 m!1225829))

(declare-fun m!1225831 () Bool)

(assert (=> b!1337621 m!1225831))

(assert (=> b!1337621 m!1225831))

(declare-fun m!1225833 () Bool)

(assert (=> b!1337621 m!1225833))

(assert (=> b!1337623 m!1225831))

(assert (=> b!1337623 m!1225831))

(assert (=> b!1337623 m!1225833))

(assert (=> b!1337334 d!143779))

(declare-fun d!143781 () Bool)

(declare-fun e!761701 () Bool)

(assert (=> d!143781 e!761701))

(declare-fun res!887673 () Bool)

(assert (=> d!143781 (=> (not res!887673) (not e!761701))))

(declare-fun lt!593254 () ListLongMap!21747)

(assert (=> d!143781 (= res!887673 (contains!8992 lt!593254 (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22157 (select (arr!43832 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!593252 () List!31246)

(assert (=> d!143781 (= lt!593254 (ListLongMap!21748 lt!593252))))

(declare-fun lt!593253 () Unit!43875)

(declare-fun lt!593251 () Unit!43875)

(assert (=> d!143781 (= lt!593253 lt!593251)))

(assert (=> d!143781 (= (getValueByKey!719 lt!593252 (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22157 (select (arr!43832 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!769 (_2!12049 (tuple2!24079 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22157 (select (arr!43832 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!143781 (= lt!593251 (lemmaContainsTupThenGetReturnValue!362 lt!593252 (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22157 (select (arr!43832 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12049 (tuple2!24079 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22157 (select (arr!43832 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!143781 (= lt!593252 (insertStrictlySorted!491 (toList!10889 call!64904) (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22157 (select (arr!43832 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12049 (tuple2!24079 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22157 (select (arr!43832 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!143781 (= (+!4718 call!64904 (tuple2!24079 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22157 (select (arr!43832 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!593254)))

(declare-fun b!1337624 () Bool)

(declare-fun res!887674 () Bool)

(assert (=> b!1337624 (=> (not res!887674) (not e!761701))))

(assert (=> b!1337624 (= res!887674 (= (getValueByKey!719 (toList!10889 lt!593254) (_1!12049 (tuple2!24079 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22157 (select (arr!43832 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!769 (_2!12049 (tuple2!24079 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22157 (select (arr!43832 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1337625 () Bool)

(assert (=> b!1337625 (= e!761701 (contains!8993 (toList!10889 lt!593254) (tuple2!24079 (select (arr!43833 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22157 (select (arr!43832 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!143781 res!887673) b!1337624))

(assert (= (and b!1337624 res!887674) b!1337625))

(declare-fun m!1225835 () Bool)

(assert (=> d!143781 m!1225835))

(declare-fun m!1225837 () Bool)

(assert (=> d!143781 m!1225837))

(declare-fun m!1225839 () Bool)

(assert (=> d!143781 m!1225839))

(declare-fun m!1225841 () Bool)

(assert (=> d!143781 m!1225841))

(declare-fun m!1225843 () Bool)

(assert (=> b!1337624 m!1225843))

(declare-fun m!1225845 () Bool)

(assert (=> b!1337625 m!1225845))

(assert (=> b!1337334 d!143781))

(declare-fun d!143783 () Bool)

(assert (=> d!143783 (not (contains!8992 (+!4718 lt!593062 (tuple2!24079 lt!593061 lt!593059)) lt!593063))))

(declare-fun lt!593257 () Unit!43875)

(declare-fun choose!1975 (ListLongMap!21747 (_ BitVec 64) V!54379 (_ BitVec 64)) Unit!43875)

(assert (=> d!143783 (= lt!593257 (choose!1975 lt!593062 lt!593061 lt!593059 lt!593063))))

(declare-fun e!761704 () Bool)

(assert (=> d!143783 e!761704))

(declare-fun res!887677 () Bool)

(assert (=> d!143783 (=> (not res!887677) (not e!761704))))

(assert (=> d!143783 (= res!887677 (not (contains!8992 lt!593062 lt!593063)))))

(assert (=> d!143783 (= (addStillNotContains!507 lt!593062 lt!593061 lt!593059 lt!593063) lt!593257)))

(declare-fun b!1337629 () Bool)

(assert (=> b!1337629 (= e!761704 (not (= lt!593061 lt!593063)))))

(assert (= (and d!143783 res!887677) b!1337629))

(assert (=> d!143783 m!1225415))

(assert (=> d!143783 m!1225415))

(assert (=> d!143783 m!1225417))

(declare-fun m!1225847 () Bool)

(assert (=> d!143783 m!1225847))

(declare-fun m!1225849 () Bool)

(assert (=> d!143783 m!1225849))

(assert (=> b!1337334 d!143783))

(assert (=> b!1337334 d!143749))

(declare-fun d!143785 () Bool)

(declare-fun e!761705 () Bool)

(assert (=> d!143785 e!761705))

(declare-fun res!887678 () Bool)

(assert (=> d!143785 (=> (not res!887678) (not e!761705))))

(declare-fun lt!593261 () ListLongMap!21747)

(assert (=> d!143785 (= res!887678 (contains!8992 lt!593261 (_1!12049 (tuple2!24079 lt!593061 lt!593059))))))

(declare-fun lt!593259 () List!31246)

(assert (=> d!143785 (= lt!593261 (ListLongMap!21748 lt!593259))))

(declare-fun lt!593260 () Unit!43875)

(declare-fun lt!593258 () Unit!43875)

(assert (=> d!143785 (= lt!593260 lt!593258)))

(assert (=> d!143785 (= (getValueByKey!719 lt!593259 (_1!12049 (tuple2!24079 lt!593061 lt!593059))) (Some!769 (_2!12049 (tuple2!24079 lt!593061 lt!593059))))))

(assert (=> d!143785 (= lt!593258 (lemmaContainsTupThenGetReturnValue!362 lt!593259 (_1!12049 (tuple2!24079 lt!593061 lt!593059)) (_2!12049 (tuple2!24079 lt!593061 lt!593059))))))

(assert (=> d!143785 (= lt!593259 (insertStrictlySorted!491 (toList!10889 lt!593062) (_1!12049 (tuple2!24079 lt!593061 lt!593059)) (_2!12049 (tuple2!24079 lt!593061 lt!593059))))))

(assert (=> d!143785 (= (+!4718 lt!593062 (tuple2!24079 lt!593061 lt!593059)) lt!593261)))

(declare-fun b!1337630 () Bool)

(declare-fun res!887679 () Bool)

(assert (=> b!1337630 (=> (not res!887679) (not e!761705))))

(assert (=> b!1337630 (= res!887679 (= (getValueByKey!719 (toList!10889 lt!593261) (_1!12049 (tuple2!24079 lt!593061 lt!593059))) (Some!769 (_2!12049 (tuple2!24079 lt!593061 lt!593059)))))))

(declare-fun b!1337631 () Bool)

(assert (=> b!1337631 (= e!761705 (contains!8993 (toList!10889 lt!593261) (tuple2!24079 lt!593061 lt!593059)))))

(assert (= (and d!143785 res!887678) b!1337630))

(assert (= (and b!1337630 res!887679) b!1337631))

(declare-fun m!1225851 () Bool)

(assert (=> d!143785 m!1225851))

(declare-fun m!1225853 () Bool)

(assert (=> d!143785 m!1225853))

(declare-fun m!1225855 () Bool)

(assert (=> d!143785 m!1225855))

(declare-fun m!1225857 () Bool)

(assert (=> d!143785 m!1225857))

(declare-fun m!1225859 () Bool)

(assert (=> b!1337630 m!1225859))

(declare-fun m!1225861 () Bool)

(assert (=> b!1337631 m!1225861))

(assert (=> b!1337334 d!143785))

(declare-fun d!143787 () Bool)

(declare-fun lt!593264 () Bool)

(declare-fun content!667 (List!31246) (InoxSet tuple2!24078))

(assert (=> d!143787 (= lt!593264 (select (content!667 (toList!10889 lt!593044)) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!761711 () Bool)

(assert (=> d!143787 (= lt!593264 e!761711)))

(declare-fun res!887685 () Bool)

(assert (=> d!143787 (=> (not res!887685) (not e!761711))))

(assert (=> d!143787 (= res!887685 ((_ is Cons!31242) (toList!10889 lt!593044)))))

(assert (=> d!143787 (= (contains!8993 (toList!10889 lt!593044) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!593264)))

(declare-fun b!1337636 () Bool)

(declare-fun e!761710 () Bool)

(assert (=> b!1337636 (= e!761711 e!761710)))

(declare-fun res!887684 () Bool)

(assert (=> b!1337636 (=> res!887684 e!761710)))

(assert (=> b!1337636 (= res!887684 (= (h!32451 (toList!10889 lt!593044)) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1337637 () Bool)

(assert (=> b!1337637 (= e!761710 (contains!8993 (t!45569 (toList!10889 lt!593044)) (tuple2!24079 (select (arr!43833 _keys!1590) from!1980) (get!22157 (select (arr!43832 _values!1320) from!1980) (dynLambda!3755 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!143787 res!887685) b!1337636))

(assert (= (and b!1337636 (not res!887684)) b!1337637))

(declare-fun m!1225863 () Bool)

(assert (=> d!143787 m!1225863))

(declare-fun m!1225865 () Bool)

(assert (=> d!143787 m!1225865))

(declare-fun m!1225867 () Bool)

(assert (=> b!1337637 m!1225867))

(assert (=> b!1337302 d!143787))

(declare-fun d!143789 () Bool)

(declare-fun e!761713 () Bool)

(assert (=> d!143789 e!761713))

(declare-fun res!887686 () Bool)

(assert (=> d!143789 (=> res!887686 e!761713)))

(declare-fun lt!593268 () Bool)

(assert (=> d!143789 (= res!887686 (not lt!593268))))

(declare-fun lt!593267 () Bool)

(assert (=> d!143789 (= lt!593268 lt!593267)))

(declare-fun lt!593266 () Unit!43875)

(declare-fun e!761712 () Unit!43875)

(assert (=> d!143789 (= lt!593266 e!761712)))

(declare-fun c!126096 () Bool)

(assert (=> d!143789 (= c!126096 lt!593267)))

(assert (=> d!143789 (= lt!593267 (containsKey!737 (toList!10889 lt!593130) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!143789 (= (contains!8992 lt!593130 #b0000000000000000000000000000000000000000000000000000000000000000) lt!593268)))

(declare-fun b!1337638 () Bool)

(declare-fun lt!593265 () Unit!43875)

(assert (=> b!1337638 (= e!761712 lt!593265)))

(assert (=> b!1337638 (= lt!593265 (lemmaContainsKeyImpliesGetValueByKeyDefined!482 (toList!10889 lt!593130) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1337638 (isDefined!522 (getValueByKey!719 (toList!10889 lt!593130) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1337639 () Bool)

(declare-fun Unit!43888 () Unit!43875)

(assert (=> b!1337639 (= e!761712 Unit!43888)))

(declare-fun b!1337640 () Bool)

(assert (=> b!1337640 (= e!761713 (isDefined!522 (getValueByKey!719 (toList!10889 lt!593130) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143789 c!126096) b!1337638))

(assert (= (and d!143789 (not c!126096)) b!1337639))

(assert (= (and d!143789 (not res!887686)) b!1337640))

(declare-fun m!1225869 () Bool)

(assert (=> d!143789 m!1225869))

(declare-fun m!1225871 () Bool)

(assert (=> b!1337638 m!1225871))

(assert (=> b!1337638 m!1225699))

(assert (=> b!1337638 m!1225699))

(declare-fun m!1225873 () Bool)

(assert (=> b!1337638 m!1225873))

(assert (=> b!1337640 m!1225699))

(assert (=> b!1337640 m!1225699))

(assert (=> b!1337640 m!1225873))

(assert (=> bm!64919 d!143789))

(assert (=> b!1337436 d!143731))

(assert (=> d!143665 d!143671))

(assert (=> b!1337331 d!143739))

(declare-fun d!143791 () Bool)

(declare-fun res!887687 () Bool)

(declare-fun e!761714 () Bool)

(assert (=> d!143791 (=> res!887687 e!761714)))

(assert (=> d!143791 (= res!887687 (and ((_ is Cons!31242) (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))) (= (_1!12049 (h!32451 (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)))) k0!1153)))))

(assert (=> d!143791 (= (containsKey!737 (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153) e!761714)))

(declare-fun b!1337641 () Bool)

(declare-fun e!761715 () Bool)

(assert (=> b!1337641 (= e!761714 e!761715)))

(declare-fun res!887688 () Bool)

(assert (=> b!1337641 (=> (not res!887688) (not e!761715))))

(assert (=> b!1337641 (= res!887688 (and (or (not ((_ is Cons!31242) (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)))) (bvsle (_1!12049 (h!32451 (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)))) k0!1153)) ((_ is Cons!31242) (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))) (bvslt (_1!12049 (h!32451 (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)))) k0!1153)))))

(declare-fun b!1337642 () Bool)

(assert (=> b!1337642 (= e!761715 (containsKey!737 (t!45569 (toList!10889 (getCurrentListMap!5794 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))) k0!1153))))

(assert (= (and d!143791 (not res!887687)) b!1337641))

(assert (= (and b!1337641 res!887688) b!1337642))

(declare-fun m!1225875 () Bool)

(assert (=> b!1337642 m!1225875))

(assert (=> d!143663 d!143791))

(declare-fun d!143793 () Bool)

(declare-fun isEmpty!1090 (List!31246) Bool)

(assert (=> d!143793 (= (isEmpty!1088 lt!593064) (isEmpty!1090 (toList!10889 lt!593064)))))

(declare-fun bs!38302 () Bool)

(assert (= bs!38302 d!143793))

(declare-fun m!1225877 () Bool)

(assert (=> bs!38302 m!1225877))

(assert (=> b!1337330 d!143793))

(assert (=> bm!64901 d!143775))

(declare-fun condMapEmpty!57123 () Bool)

(declare-fun mapDefault!57123 () ValueCell!17580)

(assert (=> mapNonEmpty!57122 (= condMapEmpty!57123 (= mapRest!57122 ((as const (Array (_ BitVec 32) ValueCell!17580)) mapDefault!57123)))))

(declare-fun e!761717 () Bool)

(declare-fun mapRes!57123 () Bool)

(assert (=> mapNonEmpty!57122 (= tp!108795 (and e!761717 mapRes!57123))))

(declare-fun mapNonEmpty!57123 () Bool)

(declare-fun tp!108796 () Bool)

(declare-fun e!761716 () Bool)

(assert (=> mapNonEmpty!57123 (= mapRes!57123 (and tp!108796 e!761716))))

(declare-fun mapRest!57123 () (Array (_ BitVec 32) ValueCell!17580))

(declare-fun mapKey!57123 () (_ BitVec 32))

(declare-fun mapValue!57123 () ValueCell!17580)

(assert (=> mapNonEmpty!57123 (= mapRest!57122 (store mapRest!57123 mapKey!57123 mapValue!57123))))

(declare-fun b!1337643 () Bool)

(assert (=> b!1337643 (= e!761716 tp_is_empty!36957)))

(declare-fun mapIsEmpty!57123 () Bool)

(assert (=> mapIsEmpty!57123 mapRes!57123))

(declare-fun b!1337644 () Bool)

(assert (=> b!1337644 (= e!761717 tp_is_empty!36957)))

(assert (= (and mapNonEmpty!57122 condMapEmpty!57123) mapIsEmpty!57123))

(assert (= (and mapNonEmpty!57122 (not condMapEmpty!57123)) mapNonEmpty!57123))

(assert (= (and mapNonEmpty!57123 ((_ is ValueCellFull!17580) mapValue!57123)) b!1337643))

(assert (= (and mapNonEmpty!57122 ((_ is ValueCellFull!17580) mapDefault!57123)) b!1337644))

(declare-fun m!1225879 () Bool)

(assert (=> mapNonEmpty!57123 m!1225879))

(declare-fun b_lambda!24247 () Bool)

(assert (= b_lambda!24239 (or (and start!112772 b_free!31047) b_lambda!24247)))

(declare-fun b_lambda!24249 () Bool)

(assert (= b_lambda!24245 (or (and start!112772 b_free!31047) b_lambda!24249)))

(declare-fun b_lambda!24251 () Bool)

(assert (= b_lambda!24241 (or (and start!112772 b_free!31047) b_lambda!24251)))

(declare-fun b_lambda!24253 () Bool)

(assert (= b_lambda!24243 (or (and start!112772 b_free!31047) b_lambda!24253)))

(check-sat (not b!1337462) (not d!143725) (not b!1337463) (not d!143683) (not b!1337610) (not d!143751) (not b!1337446) (not b!1337624) (not b_lambda!24237) (not b!1337630) (not d!143753) (not b!1337555) (not d!143719) (not b_lambda!24251) (not b!1337480) (not d!143681) (not b!1337563) (not bm!64929) (not b_lambda!24225) (not b!1337609) (not d!143703) (not b!1337474) (not d!143687) (not b!1337528) (not b!1337469) (not b!1337637) (not b!1337504) (not b!1337475) (not d!143695) (not d!143787) (not b!1337601) (not b!1337617) (not b!1337545) (not b!1337484) (not b!1337471) (not b!1337569) (not d!143713) (not d!143717) (not d!143691) (not b!1337455) (not b!1337479) (not b!1337458) (not b!1337526) (not b!1337481) (not b_lambda!24249) (not d!143783) (not bm!64940) (not d!143693) (not b!1337570) (not b_next!31047) (not d!143769) (not bm!64939) (not d!143765) (not b!1337551) (not b!1337534) (not b!1337623) (not b!1337459) (not b!1337486) (not b!1337562) (not b!1337614) (not b_lambda!24233) (not b!1337473) (not d!143737) (not d!143677) (not b!1337448) (not b!1337543) (not b!1337574) (not d!143793) (not b!1337640) (not d!143757) (not b!1337638) (not b!1337540) (not b!1337503) (not b!1337547) (not d!143709) (not d!143759) (not b!1337611) (not b!1337621) (not b!1337631) (not d!143721) (not b!1337470) (not b_lambda!24253) (not b!1337620) (not b!1337452) (not b!1337483) (not b!1337607) (not d!143747) (not b_lambda!24247) (not b!1337560) (not b!1337456) (not d!143781) (not b!1337450) (not d!143685) (not b!1337598) (not b!1337549) (not b!1337572) (not d!143745) (not b!1337454) (not d!143763) (not d!143701) (not b!1337613) (not d!143705) (not b!1337582) (not d!143727) (not b!1337615) (not b!1337642) (not d!143711) (not b!1337497) (not d!143741) (not d!143771) (not b!1337557) (not d!143697) (not d!143699) (not b!1337604) (not d!143779) (not d!143789) (not d!143775) (not mapNonEmpty!57123) (not bm!64941) b_and!50057 (not bm!64936) (not b_lambda!24235) (not b!1337576) (not b!1337548) (not d!143689) (not b!1337449) (not d!143785) (not d!143707) (not b!1337460) (not d!143777) (not b!1337618) (not b!1337464) (not d!143733) tp_is_empty!36957 (not b!1337625) (not b!1337556))
(check-sat b_and!50057 (not b_next!31047))
