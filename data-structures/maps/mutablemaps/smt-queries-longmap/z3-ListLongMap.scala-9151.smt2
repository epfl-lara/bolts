; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109804 () Bool)

(assert start!109804)

(declare-fun b_free!29181 () Bool)

(declare-fun b_next!29181 () Bool)

(assert (=> start!109804 (= b_free!29181 (not b_next!29181))))

(declare-fun tp!102675 () Bool)

(declare-fun b_and!47299 () Bool)

(assert (=> start!109804 (= tp!102675 b_and!47299)))

(declare-fun b!1300160 () Bool)

(declare-fun e!741689 () Bool)

(declare-fun e!741686 () Bool)

(declare-fun mapRes!53804 () Bool)

(assert (=> b!1300160 (= e!741689 (and e!741686 mapRes!53804))))

(declare-fun condMapEmpty!53804 () Bool)

(declare-datatypes ((V!51531 0))(
  ( (V!51532 (val!17485 Int)) )
))
(declare-datatypes ((ValueCell!16512 0))(
  ( (ValueCellFull!16512 (v!20090 V!51531)) (EmptyCell!16512) )
))
(declare-datatypes ((array!86615 0))(
  ( (array!86616 (arr!41800 (Array (_ BitVec 32) ValueCell!16512)) (size!42351 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86615)

(declare-fun mapDefault!53804 () ValueCell!16512)

(assert (=> b!1300160 (= condMapEmpty!53804 (= (arr!41800 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16512)) mapDefault!53804)))))

(declare-fun b!1300161 () Bool)

(declare-fun res!864099 () Bool)

(declare-fun e!741685 () Bool)

(assert (=> b!1300161 (=> (not res!864099) (not e!741685))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86617 0))(
  ( (array!86618 (arr!41801 (Array (_ BitVec 32) (_ BitVec 64))) (size!42352 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86617)

(assert (=> b!1300161 (= res!864099 (and (= (size!42351 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42352 _keys!1741) (size!42351 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1300162 () Bool)

(declare-fun res!864095 () Bool)

(assert (=> b!1300162 (=> (not res!864095) (not e!741685))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1300162 (= res!864095 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42352 _keys!1741))))))

(declare-fun b!1300163 () Bool)

(declare-fun res!864094 () Bool)

(assert (=> b!1300163 (=> (not res!864094) (not e!741685))))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1300163 (= res!864094 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42352 _keys!1741))))))

(declare-fun res!864092 () Bool)

(assert (=> start!109804 (=> (not res!864092) (not e!741685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109804 (= res!864092 (validMask!0 mask!2175))))

(assert (=> start!109804 e!741685))

(declare-fun tp_is_empty!34821 () Bool)

(assert (=> start!109804 tp_is_empty!34821))

(assert (=> start!109804 true))

(declare-fun array_inv!31625 (array!86615) Bool)

(assert (=> start!109804 (and (array_inv!31625 _values!1445) e!741689)))

(declare-fun array_inv!31626 (array!86617) Bool)

(assert (=> start!109804 (array_inv!31626 _keys!1741)))

(assert (=> start!109804 tp!102675))

(declare-fun b!1300164 () Bool)

(assert (=> b!1300164 (= e!741686 tp_is_empty!34821)))

(declare-fun b!1300165 () Bool)

(declare-fun e!741688 () Bool)

(assert (=> b!1300165 (= e!741688 tp_is_empty!34821)))

(declare-fun mapIsEmpty!53804 () Bool)

(assert (=> mapIsEmpty!53804 mapRes!53804))

(declare-fun mapNonEmpty!53804 () Bool)

(declare-fun tp!102674 () Bool)

(assert (=> mapNonEmpty!53804 (= mapRes!53804 (and tp!102674 e!741688))))

(declare-fun mapValue!53804 () ValueCell!16512)

(declare-fun mapKey!53804 () (_ BitVec 32))

(declare-fun mapRest!53804 () (Array (_ BitVec 32) ValueCell!16512))

(assert (=> mapNonEmpty!53804 (= (arr!41800 _values!1445) (store mapRest!53804 mapKey!53804 mapValue!53804))))

(declare-fun b!1300166 () Bool)

(declare-fun res!864093 () Bool)

(assert (=> b!1300166 (=> (not res!864093) (not e!741685))))

(declare-fun minValue!1387 () V!51531)

(declare-fun zeroValue!1387 () V!51531)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22702 0))(
  ( (tuple2!22703 (_1!11361 (_ BitVec 64)) (_2!11361 V!51531)) )
))
(declare-datatypes ((List!29860 0))(
  ( (Nil!29857) (Cons!29856 (h!31065 tuple2!22702) (t!43439 List!29860)) )
))
(declare-datatypes ((ListLongMap!20371 0))(
  ( (ListLongMap!20372 (toList!10201 List!29860)) )
))
(declare-fun contains!8261 (ListLongMap!20371 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5174 (array!86617 array!86615 (_ BitVec 32) (_ BitVec 32) V!51531 V!51531 (_ BitVec 32) Int) ListLongMap!20371)

(assert (=> b!1300166 (= res!864093 (contains!8261 (getCurrentListMap!5174 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1300167 () Bool)

(declare-fun +!4429 (ListLongMap!20371 tuple2!22702) ListLongMap!20371)

(declare-fun getCurrentListMapNoExtraKeys!6142 (array!86617 array!86615 (_ BitVec 32) (_ BitVec 32) V!51531 V!51531 (_ BitVec 32) Int) ListLongMap!20371)

(assert (=> b!1300167 (= e!741685 (not (contains!8261 (+!4429 (getCurrentListMapNoExtraKeys!6142 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205)))))

(declare-fun b!1300168 () Bool)

(declare-fun res!864096 () Bool)

(assert (=> b!1300168 (=> (not res!864096) (not e!741685))))

(declare-datatypes ((List!29861 0))(
  ( (Nil!29858) (Cons!29857 (h!31066 (_ BitVec 64)) (t!43440 List!29861)) )
))
(declare-fun arrayNoDuplicates!0 (array!86617 (_ BitVec 32) List!29861) Bool)

(assert (=> b!1300168 (= res!864096 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29858))))

(declare-fun b!1300169 () Bool)

(declare-fun res!864097 () Bool)

(assert (=> b!1300169 (=> (not res!864097) (not e!741685))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1300169 (= res!864097 (validKeyInArray!0 (select (arr!41801 _keys!1741) from!2144)))))

(declare-fun b!1300170 () Bool)

(declare-fun res!864098 () Bool)

(assert (=> b!1300170 (=> (not res!864098) (not e!741685))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86617 (_ BitVec 32)) Bool)

(assert (=> b!1300170 (= res!864098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1300171 () Bool)

(declare-fun res!864100 () Bool)

(assert (=> b!1300171 (=> (not res!864100) (not e!741685))))

(assert (=> b!1300171 (= res!864100 (and (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!109804 res!864092) b!1300161))

(assert (= (and b!1300161 res!864099) b!1300170))

(assert (= (and b!1300170 res!864098) b!1300168))

(assert (= (and b!1300168 res!864096) b!1300162))

(assert (= (and b!1300162 res!864095) b!1300166))

(assert (= (and b!1300166 res!864093) b!1300163))

(assert (= (and b!1300163 res!864094) b!1300169))

(assert (= (and b!1300169 res!864097) b!1300171))

(assert (= (and b!1300171 res!864100) b!1300167))

(assert (= (and b!1300160 condMapEmpty!53804) mapIsEmpty!53804))

(assert (= (and b!1300160 (not condMapEmpty!53804)) mapNonEmpty!53804))

(get-info :version)

(assert (= (and mapNonEmpty!53804 ((_ is ValueCellFull!16512) mapValue!53804)) b!1300165))

(assert (= (and b!1300160 ((_ is ValueCellFull!16512) mapDefault!53804)) b!1300164))

(assert (= start!109804 b!1300160))

(declare-fun m!1191179 () Bool)

(assert (=> b!1300169 m!1191179))

(assert (=> b!1300169 m!1191179))

(declare-fun m!1191181 () Bool)

(assert (=> b!1300169 m!1191181))

(declare-fun m!1191183 () Bool)

(assert (=> b!1300167 m!1191183))

(assert (=> b!1300167 m!1191183))

(declare-fun m!1191185 () Bool)

(assert (=> b!1300167 m!1191185))

(assert (=> b!1300167 m!1191185))

(declare-fun m!1191187 () Bool)

(assert (=> b!1300167 m!1191187))

(declare-fun m!1191189 () Bool)

(assert (=> b!1300168 m!1191189))

(declare-fun m!1191191 () Bool)

(assert (=> mapNonEmpty!53804 m!1191191))

(declare-fun m!1191193 () Bool)

(assert (=> b!1300170 m!1191193))

(declare-fun m!1191195 () Bool)

(assert (=> b!1300166 m!1191195))

(assert (=> b!1300166 m!1191195))

(declare-fun m!1191197 () Bool)

(assert (=> b!1300166 m!1191197))

(declare-fun m!1191199 () Bool)

(assert (=> start!109804 m!1191199))

(declare-fun m!1191201 () Bool)

(assert (=> start!109804 m!1191201))

(declare-fun m!1191203 () Bool)

(assert (=> start!109804 m!1191203))

(check-sat (not b!1300167) (not b!1300168) (not b!1300170) b_and!47299 tp_is_empty!34821 (not b!1300169) (not mapNonEmpty!53804) (not start!109804) (not b_next!29181) (not b!1300166))
(check-sat b_and!47299 (not b_next!29181))
(get-model)

(declare-fun d!141075 () Bool)

(assert (=> d!141075 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!109804 d!141075))

(declare-fun d!141077 () Bool)

(assert (=> d!141077 (= (array_inv!31625 _values!1445) (bvsge (size!42351 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!109804 d!141077))

(declare-fun d!141079 () Bool)

(assert (=> d!141079 (= (array_inv!31626 _keys!1741) (bvsge (size!42352 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!109804 d!141079))

(declare-fun b!1300218 () Bool)

(declare-fun e!741713 () Bool)

(declare-fun e!741716 () Bool)

(assert (=> b!1300218 (= e!741713 e!741716)))

(declare-fun c!124504 () Bool)

(assert (=> b!1300218 (= c!124504 (validKeyInArray!0 (select (arr!41801 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1300219 () Bool)

(declare-fun call!63629 () Bool)

(assert (=> b!1300219 (= e!741716 call!63629)))

(declare-fun b!1300220 () Bool)

(assert (=> b!1300220 (= e!741716 call!63629)))

(declare-fun bm!63626 () Bool)

(assert (=> bm!63626 (= call!63629 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!124504 (Cons!29857 (select (arr!41801 _keys!1741) #b00000000000000000000000000000000) Nil!29858) Nil!29858)))))

(declare-fun d!141081 () Bool)

(declare-fun res!864136 () Bool)

(declare-fun e!741715 () Bool)

(assert (=> d!141081 (=> res!864136 e!741715)))

(assert (=> d!141081 (= res!864136 (bvsge #b00000000000000000000000000000000 (size!42352 _keys!1741)))))

(assert (=> d!141081 (= (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29858) e!741715)))

(declare-fun b!1300221 () Bool)

(assert (=> b!1300221 (= e!741715 e!741713)))

(declare-fun res!864135 () Bool)

(assert (=> b!1300221 (=> (not res!864135) (not e!741713))))

(declare-fun e!741714 () Bool)

(assert (=> b!1300221 (= res!864135 (not e!741714))))

(declare-fun res!864134 () Bool)

(assert (=> b!1300221 (=> (not res!864134) (not e!741714))))

(assert (=> b!1300221 (= res!864134 (validKeyInArray!0 (select (arr!41801 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1300222 () Bool)

(declare-fun contains!8262 (List!29861 (_ BitVec 64)) Bool)

(assert (=> b!1300222 (= e!741714 (contains!8262 Nil!29858 (select (arr!41801 _keys!1741) #b00000000000000000000000000000000)))))

(assert (= (and d!141081 (not res!864136)) b!1300221))

(assert (= (and b!1300221 res!864134) b!1300222))

(assert (= (and b!1300221 res!864135) b!1300218))

(assert (= (and b!1300218 c!124504) b!1300219))

(assert (= (and b!1300218 (not c!124504)) b!1300220))

(assert (= (or b!1300219 b!1300220) bm!63626))

(declare-fun m!1191231 () Bool)

(assert (=> b!1300218 m!1191231))

(assert (=> b!1300218 m!1191231))

(declare-fun m!1191233 () Bool)

(assert (=> b!1300218 m!1191233))

(assert (=> bm!63626 m!1191231))

(declare-fun m!1191235 () Bool)

(assert (=> bm!63626 m!1191235))

(assert (=> b!1300221 m!1191231))

(assert (=> b!1300221 m!1191231))

(assert (=> b!1300221 m!1191233))

(assert (=> b!1300222 m!1191231))

(assert (=> b!1300222 m!1191231))

(declare-fun m!1191237 () Bool)

(assert (=> b!1300222 m!1191237))

(assert (=> b!1300168 d!141081))

(declare-fun d!141083 () Bool)

(declare-fun e!741721 () Bool)

(assert (=> d!141083 e!741721))

(declare-fun res!864139 () Bool)

(assert (=> d!141083 (=> res!864139 e!741721)))

(declare-fun lt!581215 () Bool)

(assert (=> d!141083 (= res!864139 (not lt!581215))))

(declare-fun lt!581217 () Bool)

(assert (=> d!141083 (= lt!581215 lt!581217)))

(declare-datatypes ((Unit!42980 0))(
  ( (Unit!42981) )
))
(declare-fun lt!581216 () Unit!42980)

(declare-fun e!741722 () Unit!42980)

(assert (=> d!141083 (= lt!581216 e!741722)))

(declare-fun c!124507 () Bool)

(assert (=> d!141083 (= c!124507 lt!581217)))

(declare-fun containsKey!719 (List!29860 (_ BitVec 64)) Bool)

(assert (=> d!141083 (= lt!581217 (containsKey!719 (toList!10201 (+!4429 (getCurrentListMapNoExtraKeys!6142 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) k0!1205))))

(assert (=> d!141083 (= (contains!8261 (+!4429 (getCurrentListMapNoExtraKeys!6142 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205) lt!581215)))

(declare-fun b!1300229 () Bool)

(declare-fun lt!581214 () Unit!42980)

(assert (=> b!1300229 (= e!741722 lt!581214)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!464 (List!29860 (_ BitVec 64)) Unit!42980)

(assert (=> b!1300229 (= lt!581214 (lemmaContainsKeyImpliesGetValueByKeyDefined!464 (toList!10201 (+!4429 (getCurrentListMapNoExtraKeys!6142 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) k0!1205))))

(declare-datatypes ((Option!752 0))(
  ( (Some!751 (v!20092 V!51531)) (None!750) )
))
(declare-fun isDefined!504 (Option!752) Bool)

(declare-fun getValueByKey!701 (List!29860 (_ BitVec 64)) Option!752)

(assert (=> b!1300229 (isDefined!504 (getValueByKey!701 (toList!10201 (+!4429 (getCurrentListMapNoExtraKeys!6142 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) k0!1205))))

(declare-fun b!1300230 () Bool)

(declare-fun Unit!42982 () Unit!42980)

(assert (=> b!1300230 (= e!741722 Unit!42982)))

(declare-fun b!1300231 () Bool)

(assert (=> b!1300231 (= e!741721 (isDefined!504 (getValueByKey!701 (toList!10201 (+!4429 (getCurrentListMapNoExtraKeys!6142 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) k0!1205)))))

(assert (= (and d!141083 c!124507) b!1300229))

(assert (= (and d!141083 (not c!124507)) b!1300230))

(assert (= (and d!141083 (not res!864139)) b!1300231))

(declare-fun m!1191239 () Bool)

(assert (=> d!141083 m!1191239))

(declare-fun m!1191241 () Bool)

(assert (=> b!1300229 m!1191241))

(declare-fun m!1191243 () Bool)

(assert (=> b!1300229 m!1191243))

(assert (=> b!1300229 m!1191243))

(declare-fun m!1191245 () Bool)

(assert (=> b!1300229 m!1191245))

(assert (=> b!1300231 m!1191243))

(assert (=> b!1300231 m!1191243))

(assert (=> b!1300231 m!1191245))

(assert (=> b!1300167 d!141083))

(declare-fun d!141085 () Bool)

(declare-fun e!741725 () Bool)

(assert (=> d!141085 e!741725))

(declare-fun res!864145 () Bool)

(assert (=> d!141085 (=> (not res!864145) (not e!741725))))

(declare-fun lt!581227 () ListLongMap!20371)

(assert (=> d!141085 (= res!864145 (contains!8261 lt!581227 (_1!11361 (tuple2!22703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun lt!581229 () List!29860)

(assert (=> d!141085 (= lt!581227 (ListLongMap!20372 lt!581229))))

(declare-fun lt!581226 () Unit!42980)

(declare-fun lt!581228 () Unit!42980)

(assert (=> d!141085 (= lt!581226 lt!581228)))

(assert (=> d!141085 (= (getValueByKey!701 lt!581229 (_1!11361 (tuple2!22703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (Some!751 (_2!11361 (tuple2!22703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun lemmaContainsTupThenGetReturnValue!345 (List!29860 (_ BitVec 64) V!51531) Unit!42980)

(assert (=> d!141085 (= lt!581228 (lemmaContainsTupThenGetReturnValue!345 lt!581229 (_1!11361 (tuple2!22703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) (_2!11361 (tuple2!22703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun insertStrictlySorted!474 (List!29860 (_ BitVec 64) V!51531) List!29860)

(assert (=> d!141085 (= lt!581229 (insertStrictlySorted!474 (toList!10201 (getCurrentListMapNoExtraKeys!6142 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) (_1!11361 (tuple2!22703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) (_2!11361 (tuple2!22703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (=> d!141085 (= (+!4429 (getCurrentListMapNoExtraKeys!6142 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) lt!581227)))

(declare-fun b!1300236 () Bool)

(declare-fun res!864144 () Bool)

(assert (=> b!1300236 (=> (not res!864144) (not e!741725))))

(assert (=> b!1300236 (= res!864144 (= (getValueByKey!701 (toList!10201 lt!581227) (_1!11361 (tuple2!22703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (Some!751 (_2!11361 (tuple2!22703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(declare-fun b!1300237 () Bool)

(declare-fun contains!8263 (List!29860 tuple2!22702) Bool)

(assert (=> b!1300237 (= e!741725 (contains!8263 (toList!10201 lt!581227) (tuple2!22703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(assert (= (and d!141085 res!864145) b!1300236))

(assert (= (and b!1300236 res!864144) b!1300237))

(declare-fun m!1191247 () Bool)

(assert (=> d!141085 m!1191247))

(declare-fun m!1191249 () Bool)

(assert (=> d!141085 m!1191249))

(declare-fun m!1191251 () Bool)

(assert (=> d!141085 m!1191251))

(declare-fun m!1191253 () Bool)

(assert (=> d!141085 m!1191253))

(declare-fun m!1191255 () Bool)

(assert (=> b!1300236 m!1191255))

(declare-fun m!1191257 () Bool)

(assert (=> b!1300237 m!1191257))

(assert (=> b!1300167 d!141085))

(declare-fun b!1300262 () Bool)

(declare-fun e!741743 () Bool)

(assert (=> b!1300262 (= e!741743 (validKeyInArray!0 (select (arr!41801 _keys!1741) from!2144)))))

(assert (=> b!1300262 (bvsge from!2144 #b00000000000000000000000000000000)))

(declare-fun b!1300263 () Bool)

(declare-fun e!741741 () Bool)

(declare-fun e!741745 () Bool)

(assert (=> b!1300263 (= e!741741 e!741745)))

(declare-fun c!124517 () Bool)

(assert (=> b!1300263 (= c!124517 (bvslt from!2144 (size!42352 _keys!1741)))))

(declare-fun d!141087 () Bool)

(declare-fun e!741746 () Bool)

(assert (=> d!141087 e!741746))

(declare-fun res!864155 () Bool)

(assert (=> d!141087 (=> (not res!864155) (not e!741746))))

(declare-fun lt!581250 () ListLongMap!20371)

(assert (=> d!141087 (= res!864155 (not (contains!8261 lt!581250 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!741744 () ListLongMap!20371)

(assert (=> d!141087 (= lt!581250 e!741744)))

(declare-fun c!124516 () Bool)

(assert (=> d!141087 (= c!124516 (bvsge from!2144 (size!42352 _keys!1741)))))

(assert (=> d!141087 (validMask!0 mask!2175)))

(assert (=> d!141087 (= (getCurrentListMapNoExtraKeys!6142 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!581250)))

(declare-fun b!1300264 () Bool)

(declare-fun isEmpty!1055 (ListLongMap!20371) Bool)

(assert (=> b!1300264 (= e!741745 (isEmpty!1055 lt!581250))))

(declare-fun b!1300265 () Bool)

(declare-fun e!741740 () Bool)

(assert (=> b!1300265 (= e!741741 e!741740)))

(assert (=> b!1300265 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42352 _keys!1741)))))

(declare-fun res!864157 () Bool)

(assert (=> b!1300265 (= res!864157 (contains!8261 lt!581250 (select (arr!41801 _keys!1741) from!2144)))))

(assert (=> b!1300265 (=> (not res!864157) (not e!741740))))

(declare-fun call!63632 () ListLongMap!20371)

(declare-fun bm!63629 () Bool)

(assert (=> bm!63629 (= call!63632 (getCurrentListMapNoExtraKeys!6142 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448))))

(declare-fun b!1300266 () Bool)

(assert (=> b!1300266 (= e!741746 e!741741)))

(declare-fun c!124518 () Bool)

(assert (=> b!1300266 (= c!124518 e!741743)))

(declare-fun res!864154 () Bool)

(assert (=> b!1300266 (=> (not res!864154) (not e!741743))))

(assert (=> b!1300266 (= res!864154 (bvslt from!2144 (size!42352 _keys!1741)))))

(declare-fun b!1300267 () Bool)

(assert (=> b!1300267 (= e!741745 (= lt!581250 (getCurrentListMapNoExtraKeys!6142 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448)))))

(declare-fun b!1300268 () Bool)

(declare-fun e!741742 () ListLongMap!20371)

(assert (=> b!1300268 (= e!741742 call!63632)))

(declare-fun b!1300269 () Bool)

(declare-fun res!864156 () Bool)

(assert (=> b!1300269 (=> (not res!864156) (not e!741746))))

(assert (=> b!1300269 (= res!864156 (not (contains!8261 lt!581250 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1300270 () Bool)

(assert (=> b!1300270 (= e!741744 (ListLongMap!20372 Nil!29857))))

(declare-fun b!1300271 () Bool)

(assert (=> b!1300271 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42352 _keys!1741)))))

(assert (=> b!1300271 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42351 _values!1445)))))

(declare-fun apply!1051 (ListLongMap!20371 (_ BitVec 64)) V!51531)

(declare-fun get!21160 (ValueCell!16512 V!51531) V!51531)

(declare-fun dynLambda!3501 (Int (_ BitVec 64)) V!51531)

(assert (=> b!1300271 (= e!741740 (= (apply!1051 lt!581250 (select (arr!41801 _keys!1741) from!2144)) (get!21160 (select (arr!41800 _values!1445) from!2144) (dynLambda!3501 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1300272 () Bool)

(declare-fun lt!581247 () Unit!42980)

(declare-fun lt!581244 () Unit!42980)

(assert (=> b!1300272 (= lt!581247 lt!581244)))

(declare-fun lt!581249 () ListLongMap!20371)

(declare-fun lt!581246 () V!51531)

(declare-fun lt!581245 () (_ BitVec 64))

(declare-fun lt!581248 () (_ BitVec 64))

(assert (=> b!1300272 (not (contains!8261 (+!4429 lt!581249 (tuple2!22703 lt!581245 lt!581246)) lt!581248))))

(declare-fun addStillNotContains!464 (ListLongMap!20371 (_ BitVec 64) V!51531 (_ BitVec 64)) Unit!42980)

(assert (=> b!1300272 (= lt!581244 (addStillNotContains!464 lt!581249 lt!581245 lt!581246 lt!581248))))

(assert (=> b!1300272 (= lt!581248 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1300272 (= lt!581246 (get!21160 (select (arr!41800 _values!1445) from!2144) (dynLambda!3501 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1300272 (= lt!581245 (select (arr!41801 _keys!1741) from!2144))))

(assert (=> b!1300272 (= lt!581249 call!63632)))

(assert (=> b!1300272 (= e!741742 (+!4429 call!63632 (tuple2!22703 (select (arr!41801 _keys!1741) from!2144) (get!21160 (select (arr!41800 _values!1445) from!2144) (dynLambda!3501 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1300273 () Bool)

(assert (=> b!1300273 (= e!741744 e!741742)))

(declare-fun c!124519 () Bool)

(assert (=> b!1300273 (= c!124519 (validKeyInArray!0 (select (arr!41801 _keys!1741) from!2144)))))

(assert (= (and d!141087 c!124516) b!1300270))

(assert (= (and d!141087 (not c!124516)) b!1300273))

(assert (= (and b!1300273 c!124519) b!1300272))

(assert (= (and b!1300273 (not c!124519)) b!1300268))

(assert (= (or b!1300272 b!1300268) bm!63629))

(assert (= (and d!141087 res!864155) b!1300269))

(assert (= (and b!1300269 res!864156) b!1300266))

(assert (= (and b!1300266 res!864154) b!1300262))

(assert (= (and b!1300266 c!124518) b!1300265))

(assert (= (and b!1300266 (not c!124518)) b!1300263))

(assert (= (and b!1300265 res!864157) b!1300271))

(assert (= (and b!1300263 c!124517) b!1300267))

(assert (= (and b!1300263 (not c!124517)) b!1300264))

(declare-fun b_lambda!23183 () Bool)

(assert (=> (not b_lambda!23183) (not b!1300271)))

(declare-fun t!43442 () Bool)

(declare-fun tb!11385 () Bool)

(assert (=> (and start!109804 (= defaultEntry!1448 defaultEntry!1448) t!43442) tb!11385))

(declare-fun result!23771 () Bool)

(assert (=> tb!11385 (= result!23771 tp_is_empty!34821)))

(assert (=> b!1300271 t!43442))

(declare-fun b_and!47303 () Bool)

(assert (= b_and!47299 (and (=> t!43442 result!23771) b_and!47303)))

(declare-fun b_lambda!23185 () Bool)

(assert (=> (not b_lambda!23185) (not b!1300272)))

(assert (=> b!1300272 t!43442))

(declare-fun b_and!47305 () Bool)

(assert (= b_and!47303 (and (=> t!43442 result!23771) b_and!47305)))

(declare-fun m!1191259 () Bool)

(assert (=> d!141087 m!1191259))

(assert (=> d!141087 m!1191199))

(declare-fun m!1191261 () Bool)

(assert (=> b!1300269 m!1191261))

(assert (=> b!1300271 m!1191179))

(assert (=> b!1300271 m!1191179))

(declare-fun m!1191263 () Bool)

(assert (=> b!1300271 m!1191263))

(declare-fun m!1191265 () Bool)

(assert (=> b!1300271 m!1191265))

(declare-fun m!1191267 () Bool)

(assert (=> b!1300271 m!1191267))

(assert (=> b!1300271 m!1191265))

(assert (=> b!1300271 m!1191267))

(declare-fun m!1191269 () Bool)

(assert (=> b!1300271 m!1191269))

(assert (=> b!1300265 m!1191179))

(assert (=> b!1300265 m!1191179))

(declare-fun m!1191271 () Bool)

(assert (=> b!1300265 m!1191271))

(declare-fun m!1191273 () Bool)

(assert (=> bm!63629 m!1191273))

(declare-fun m!1191275 () Bool)

(assert (=> b!1300264 m!1191275))

(assert (=> b!1300267 m!1191273))

(assert (=> b!1300273 m!1191179))

(assert (=> b!1300273 m!1191179))

(assert (=> b!1300273 m!1191181))

(assert (=> b!1300272 m!1191179))

(declare-fun m!1191277 () Bool)

(assert (=> b!1300272 m!1191277))

(declare-fun m!1191279 () Bool)

(assert (=> b!1300272 m!1191279))

(declare-fun m!1191281 () Bool)

(assert (=> b!1300272 m!1191281))

(assert (=> b!1300272 m!1191265))

(declare-fun m!1191283 () Bool)

(assert (=> b!1300272 m!1191283))

(assert (=> b!1300272 m!1191265))

(assert (=> b!1300272 m!1191267))

(assert (=> b!1300272 m!1191269))

(assert (=> b!1300272 m!1191279))

(assert (=> b!1300272 m!1191267))

(assert (=> b!1300262 m!1191179))

(assert (=> b!1300262 m!1191179))

(assert (=> b!1300262 m!1191181))

(assert (=> b!1300167 d!141087))

(declare-fun d!141089 () Bool)

(assert (=> d!141089 (= (validKeyInArray!0 (select (arr!41801 _keys!1741) from!2144)) (and (not (= (select (arr!41801 _keys!1741) from!2144) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!41801 _keys!1741) from!2144) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1300169 d!141089))

(declare-fun b!1300284 () Bool)

(declare-fun e!741754 () Bool)

(declare-fun e!741753 () Bool)

(assert (=> b!1300284 (= e!741754 e!741753)))

(declare-fun c!124522 () Bool)

(assert (=> b!1300284 (= c!124522 (validKeyInArray!0 (select (arr!41801 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun d!141091 () Bool)

(declare-fun res!864162 () Bool)

(assert (=> d!141091 (=> res!864162 e!741754)))

(assert (=> d!141091 (= res!864162 (bvsge #b00000000000000000000000000000000 (size!42352 _keys!1741)))))

(assert (=> d!141091 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!741754)))

(declare-fun bm!63632 () Bool)

(declare-fun call!63635 () Bool)

(assert (=> bm!63632 (= call!63635 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1300285 () Bool)

(declare-fun e!741755 () Bool)

(assert (=> b!1300285 (= e!741753 e!741755)))

(declare-fun lt!581258 () (_ BitVec 64))

(assert (=> b!1300285 (= lt!581258 (select (arr!41801 _keys!1741) #b00000000000000000000000000000000))))

(declare-fun lt!581257 () Unit!42980)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!86617 (_ BitVec 64) (_ BitVec 32)) Unit!42980)

(assert (=> b!1300285 (= lt!581257 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!581258 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!86617 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1300285 (arrayContainsKey!0 _keys!1741 lt!581258 #b00000000000000000000000000000000)))

(declare-fun lt!581259 () Unit!42980)

(assert (=> b!1300285 (= lt!581259 lt!581257)))

(declare-fun res!864163 () Bool)

(declare-datatypes ((SeekEntryResult!10016 0))(
  ( (MissingZero!10016 (index!42434 (_ BitVec 32))) (Found!10016 (index!42435 (_ BitVec 32))) (Intermediate!10016 (undefined!10828 Bool) (index!42436 (_ BitVec 32)) (x!115494 (_ BitVec 32))) (Undefined!10016) (MissingVacant!10016 (index!42437 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!86617 (_ BitVec 32)) SeekEntryResult!10016)

(assert (=> b!1300285 (= res!864163 (= (seekEntryOrOpen!0 (select (arr!41801 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10016 #b00000000000000000000000000000000)))))

(assert (=> b!1300285 (=> (not res!864163) (not e!741755))))

(declare-fun b!1300286 () Bool)

(assert (=> b!1300286 (= e!741753 call!63635)))

(declare-fun b!1300287 () Bool)

(assert (=> b!1300287 (= e!741755 call!63635)))

(assert (= (and d!141091 (not res!864162)) b!1300284))

(assert (= (and b!1300284 c!124522) b!1300285))

(assert (= (and b!1300284 (not c!124522)) b!1300286))

(assert (= (and b!1300285 res!864163) b!1300287))

(assert (= (or b!1300287 b!1300286) bm!63632))

(assert (=> b!1300284 m!1191231))

(assert (=> b!1300284 m!1191231))

(assert (=> b!1300284 m!1191233))

(declare-fun m!1191285 () Bool)

(assert (=> bm!63632 m!1191285))

(assert (=> b!1300285 m!1191231))

(declare-fun m!1191287 () Bool)

(assert (=> b!1300285 m!1191287))

(declare-fun m!1191289 () Bool)

(assert (=> b!1300285 m!1191289))

(assert (=> b!1300285 m!1191231))

(declare-fun m!1191291 () Bool)

(assert (=> b!1300285 m!1191291))

(assert (=> b!1300170 d!141091))

(declare-fun d!141093 () Bool)

(declare-fun e!741756 () Bool)

(assert (=> d!141093 e!741756))

(declare-fun res!864164 () Bool)

(assert (=> d!141093 (=> res!864164 e!741756)))

(declare-fun lt!581261 () Bool)

(assert (=> d!141093 (= res!864164 (not lt!581261))))

(declare-fun lt!581263 () Bool)

(assert (=> d!141093 (= lt!581261 lt!581263)))

(declare-fun lt!581262 () Unit!42980)

(declare-fun e!741757 () Unit!42980)

(assert (=> d!141093 (= lt!581262 e!741757)))

(declare-fun c!124523 () Bool)

(assert (=> d!141093 (= c!124523 lt!581263)))

(assert (=> d!141093 (= lt!581263 (containsKey!719 (toList!10201 (getCurrentListMap!5174 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!141093 (= (contains!8261 (getCurrentListMap!5174 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!581261)))

(declare-fun b!1300288 () Bool)

(declare-fun lt!581260 () Unit!42980)

(assert (=> b!1300288 (= e!741757 lt!581260)))

(assert (=> b!1300288 (= lt!581260 (lemmaContainsKeyImpliesGetValueByKeyDefined!464 (toList!10201 (getCurrentListMap!5174 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> b!1300288 (isDefined!504 (getValueByKey!701 (toList!10201 (getCurrentListMap!5174 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1300289 () Bool)

(declare-fun Unit!42983 () Unit!42980)

(assert (=> b!1300289 (= e!741757 Unit!42983)))

(declare-fun b!1300290 () Bool)

(assert (=> b!1300290 (= e!741756 (isDefined!504 (getValueByKey!701 (toList!10201 (getCurrentListMap!5174 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!141093 c!124523) b!1300288))

(assert (= (and d!141093 (not c!124523)) b!1300289))

(assert (= (and d!141093 (not res!864164)) b!1300290))

(declare-fun m!1191293 () Bool)

(assert (=> d!141093 m!1191293))

(declare-fun m!1191295 () Bool)

(assert (=> b!1300288 m!1191295))

(declare-fun m!1191297 () Bool)

(assert (=> b!1300288 m!1191297))

(assert (=> b!1300288 m!1191297))

(declare-fun m!1191299 () Bool)

(assert (=> b!1300288 m!1191299))

(assert (=> b!1300290 m!1191297))

(assert (=> b!1300290 m!1191297))

(assert (=> b!1300290 m!1191299))

(assert (=> b!1300166 d!141093))

(declare-fun b!1300333 () Bool)

(declare-fun e!741786 () ListLongMap!20371)

(declare-fun e!741794 () ListLongMap!20371)

(assert (=> b!1300333 (= e!741786 e!741794)))

(declare-fun c!124539 () Bool)

(assert (=> b!1300333 (= c!124539 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1300334 () Bool)

(declare-fun res!864190 () Bool)

(declare-fun e!741788 () Bool)

(assert (=> b!1300334 (=> (not res!864190) (not e!741788))))

(declare-fun e!741785 () Bool)

(assert (=> b!1300334 (= res!864190 e!741785)))

(declare-fun res!864186 () Bool)

(assert (=> b!1300334 (=> res!864186 e!741785)))

(declare-fun e!741791 () Bool)

(assert (=> b!1300334 (= res!864186 (not e!741791))))

(declare-fun res!864188 () Bool)

(assert (=> b!1300334 (=> (not res!864188) (not e!741791))))

(assert (=> b!1300334 (= res!864188 (bvslt from!2144 (size!42352 _keys!1741)))))

(declare-fun b!1300335 () Bool)

(declare-fun call!63650 () ListLongMap!20371)

(assert (=> b!1300335 (= e!741794 call!63650)))

(declare-fun b!1300336 () Bool)

(declare-fun e!741790 () Bool)

(declare-fun lt!581326 () ListLongMap!20371)

(assert (=> b!1300336 (= e!741790 (= (apply!1051 lt!581326 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1387))))

(declare-fun b!1300337 () Bool)

(declare-fun e!741793 () Bool)

(assert (=> b!1300337 (= e!741793 e!741790)))

(declare-fun res!864183 () Bool)

(declare-fun call!63655 () Bool)

(assert (=> b!1300337 (= res!864183 call!63655)))

(assert (=> b!1300337 (=> (not res!864183) (not e!741790))))

(declare-fun b!1300338 () Bool)

(declare-fun e!741795 () Bool)

(assert (=> b!1300338 (= e!741795 (= (apply!1051 lt!581326 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1387))))

(declare-fun bm!63647 () Bool)

(declare-fun call!63653 () Bool)

(assert (=> bm!63647 (= call!63653 (contains!8261 lt!581326 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1300339 () Bool)

(declare-fun e!741792 () ListLongMap!20371)

(assert (=> b!1300339 (= e!741792 call!63650)))

(declare-fun bm!63648 () Bool)

(declare-fun call!63654 () ListLongMap!20371)

(assert (=> bm!63648 (= call!63650 call!63654)))

(declare-fun bm!63649 () Bool)

(declare-fun call!63651 () ListLongMap!20371)

(declare-fun call!63652 () ListLongMap!20371)

(assert (=> bm!63649 (= call!63651 call!63652)))

(declare-fun b!1300340 () Bool)

(declare-fun e!741796 () Bool)

(assert (=> b!1300340 (= e!741796 (not call!63653))))

(declare-fun b!1300341 () Bool)

(declare-fun e!741784 () Unit!42980)

(declare-fun Unit!42984 () Unit!42980)

(assert (=> b!1300341 (= e!741784 Unit!42984)))

(declare-fun bm!63650 () Bool)

(assert (=> bm!63650 (= call!63655 (contains!8261 lt!581326 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1300342 () Bool)

(declare-fun c!124538 () Bool)

(assert (=> b!1300342 (= c!124538 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1300342 (= e!741794 e!741792)))

(declare-fun d!141095 () Bool)

(assert (=> d!141095 e!741788))

(declare-fun res!864185 () Bool)

(assert (=> d!141095 (=> (not res!864185) (not e!741788))))

(assert (=> d!141095 (= res!864185 (or (bvsge from!2144 (size!42352 _keys!1741)) (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42352 _keys!1741)))))))

(declare-fun lt!581313 () ListLongMap!20371)

(assert (=> d!141095 (= lt!581326 lt!581313)))

(declare-fun lt!581325 () Unit!42980)

(assert (=> d!141095 (= lt!581325 e!741784)))

(declare-fun c!124541 () Bool)

(declare-fun e!741787 () Bool)

(assert (=> d!141095 (= c!124541 e!741787)))

(declare-fun res!864184 () Bool)

(assert (=> d!141095 (=> (not res!864184) (not e!741787))))

(assert (=> d!141095 (= res!864184 (bvslt from!2144 (size!42352 _keys!1741)))))

(assert (=> d!141095 (= lt!581313 e!741786)))

(declare-fun c!124537 () Bool)

(assert (=> d!141095 (= c!124537 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!141095 (validMask!0 mask!2175)))

(assert (=> d!141095 (= (getCurrentListMap!5174 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!581326)))

(declare-fun b!1300343 () Bool)

(declare-fun e!741789 () Bool)

(assert (=> b!1300343 (= e!741785 e!741789)))

(declare-fun res!864191 () Bool)

(assert (=> b!1300343 (=> (not res!864191) (not e!741789))))

(assert (=> b!1300343 (= res!864191 (contains!8261 lt!581326 (select (arr!41801 _keys!1741) from!2144)))))

(assert (=> b!1300343 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42352 _keys!1741)))))

(declare-fun b!1300344 () Bool)

(assert (=> b!1300344 (= e!741786 (+!4429 call!63654 (tuple2!22703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(declare-fun b!1300345 () Bool)

(assert (=> b!1300345 (= e!741793 (not call!63655))))

(declare-fun bm!63651 () Bool)

(declare-fun call!63656 () ListLongMap!20371)

(assert (=> bm!63651 (= call!63656 call!63651)))

(declare-fun b!1300346 () Bool)

(assert (=> b!1300346 (= e!741796 e!741795)))

(declare-fun res!864187 () Bool)

(assert (=> b!1300346 (= res!864187 call!63653)))

(assert (=> b!1300346 (=> (not res!864187) (not e!741795))))

(declare-fun b!1300347 () Bool)

(assert (=> b!1300347 (= e!741791 (validKeyInArray!0 (select (arr!41801 _keys!1741) from!2144)))))

(declare-fun b!1300348 () Bool)

(assert (=> b!1300348 (= e!741792 call!63656)))

(declare-fun bm!63652 () Bool)

(assert (=> bm!63652 (= call!63654 (+!4429 (ite c!124537 call!63652 (ite c!124539 call!63651 call!63656)) (ite (or c!124537 c!124539) (tuple2!22703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun b!1300349 () Bool)

(assert (=> b!1300349 (= e!741788 e!741793)))

(declare-fun c!124536 () Bool)

(assert (=> b!1300349 (= c!124536 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1300350 () Bool)

(assert (=> b!1300350 (= e!741787 (validKeyInArray!0 (select (arr!41801 _keys!1741) from!2144)))))

(declare-fun b!1300351 () Bool)

(assert (=> b!1300351 (= e!741789 (= (apply!1051 lt!581326 (select (arr!41801 _keys!1741) from!2144)) (get!21160 (select (arr!41800 _values!1445) from!2144) (dynLambda!3501 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1300351 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42351 _values!1445)))))

(assert (=> b!1300351 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42352 _keys!1741)))))

(declare-fun bm!63653 () Bool)

(assert (=> bm!63653 (= call!63652 (getCurrentListMapNoExtraKeys!6142 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1300352 () Bool)

(declare-fun lt!581323 () Unit!42980)

(assert (=> b!1300352 (= e!741784 lt!581323)))

(declare-fun lt!581322 () ListLongMap!20371)

(assert (=> b!1300352 (= lt!581322 (getCurrentListMapNoExtraKeys!6142 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!581319 () (_ BitVec 64))

(assert (=> b!1300352 (= lt!581319 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!581312 () (_ BitVec 64))

(assert (=> b!1300352 (= lt!581312 (select (arr!41801 _keys!1741) from!2144))))

(declare-fun lt!581317 () Unit!42980)

(declare-fun addStillContains!1120 (ListLongMap!20371 (_ BitVec 64) V!51531 (_ BitVec 64)) Unit!42980)

(assert (=> b!1300352 (= lt!581317 (addStillContains!1120 lt!581322 lt!581319 zeroValue!1387 lt!581312))))

(assert (=> b!1300352 (contains!8261 (+!4429 lt!581322 (tuple2!22703 lt!581319 zeroValue!1387)) lt!581312)))

(declare-fun lt!581311 () Unit!42980)

(assert (=> b!1300352 (= lt!581311 lt!581317)))

(declare-fun lt!581328 () ListLongMap!20371)

(assert (=> b!1300352 (= lt!581328 (getCurrentListMapNoExtraKeys!6142 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!581324 () (_ BitVec 64))

(assert (=> b!1300352 (= lt!581324 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!581309 () (_ BitVec 64))

(assert (=> b!1300352 (= lt!581309 (select (arr!41801 _keys!1741) from!2144))))

(declare-fun lt!581318 () Unit!42980)

(declare-fun addApplyDifferent!554 (ListLongMap!20371 (_ BitVec 64) V!51531 (_ BitVec 64)) Unit!42980)

(assert (=> b!1300352 (= lt!581318 (addApplyDifferent!554 lt!581328 lt!581324 minValue!1387 lt!581309))))

(assert (=> b!1300352 (= (apply!1051 (+!4429 lt!581328 (tuple2!22703 lt!581324 minValue!1387)) lt!581309) (apply!1051 lt!581328 lt!581309))))

(declare-fun lt!581316 () Unit!42980)

(assert (=> b!1300352 (= lt!581316 lt!581318)))

(declare-fun lt!581314 () ListLongMap!20371)

(assert (=> b!1300352 (= lt!581314 (getCurrentListMapNoExtraKeys!6142 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!581320 () (_ BitVec 64))

(assert (=> b!1300352 (= lt!581320 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!581321 () (_ BitVec 64))

(assert (=> b!1300352 (= lt!581321 (select (arr!41801 _keys!1741) from!2144))))

(declare-fun lt!581329 () Unit!42980)

(assert (=> b!1300352 (= lt!581329 (addApplyDifferent!554 lt!581314 lt!581320 zeroValue!1387 lt!581321))))

(assert (=> b!1300352 (= (apply!1051 (+!4429 lt!581314 (tuple2!22703 lt!581320 zeroValue!1387)) lt!581321) (apply!1051 lt!581314 lt!581321))))

(declare-fun lt!581310 () Unit!42980)

(assert (=> b!1300352 (= lt!581310 lt!581329)))

(declare-fun lt!581308 () ListLongMap!20371)

(assert (=> b!1300352 (= lt!581308 (getCurrentListMapNoExtraKeys!6142 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!581315 () (_ BitVec 64))

(assert (=> b!1300352 (= lt!581315 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!581327 () (_ BitVec 64))

(assert (=> b!1300352 (= lt!581327 (select (arr!41801 _keys!1741) from!2144))))

(assert (=> b!1300352 (= lt!581323 (addApplyDifferent!554 lt!581308 lt!581315 minValue!1387 lt!581327))))

(assert (=> b!1300352 (= (apply!1051 (+!4429 lt!581308 (tuple2!22703 lt!581315 minValue!1387)) lt!581327) (apply!1051 lt!581308 lt!581327))))

(declare-fun b!1300353 () Bool)

(declare-fun res!864189 () Bool)

(assert (=> b!1300353 (=> (not res!864189) (not e!741788))))

(assert (=> b!1300353 (= res!864189 e!741796)))

(declare-fun c!124540 () Bool)

(assert (=> b!1300353 (= c!124540 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!141095 c!124537) b!1300344))

(assert (= (and d!141095 (not c!124537)) b!1300333))

(assert (= (and b!1300333 c!124539) b!1300335))

(assert (= (and b!1300333 (not c!124539)) b!1300342))

(assert (= (and b!1300342 c!124538) b!1300339))

(assert (= (and b!1300342 (not c!124538)) b!1300348))

(assert (= (or b!1300339 b!1300348) bm!63651))

(assert (= (or b!1300335 bm!63651) bm!63649))

(assert (= (or b!1300335 b!1300339) bm!63648))

(assert (= (or b!1300344 bm!63649) bm!63653))

(assert (= (or b!1300344 bm!63648) bm!63652))

(assert (= (and d!141095 res!864184) b!1300350))

(assert (= (and d!141095 c!124541) b!1300352))

(assert (= (and d!141095 (not c!124541)) b!1300341))

(assert (= (and d!141095 res!864185) b!1300334))

(assert (= (and b!1300334 res!864188) b!1300347))

(assert (= (and b!1300334 (not res!864186)) b!1300343))

(assert (= (and b!1300343 res!864191) b!1300351))

(assert (= (and b!1300334 res!864190) b!1300353))

(assert (= (and b!1300353 c!124540) b!1300346))

(assert (= (and b!1300353 (not c!124540)) b!1300340))

(assert (= (and b!1300346 res!864187) b!1300338))

(assert (= (or b!1300346 b!1300340) bm!63647))

(assert (= (and b!1300353 res!864189) b!1300349))

(assert (= (and b!1300349 c!124536) b!1300337))

(assert (= (and b!1300349 (not c!124536)) b!1300345))

(assert (= (and b!1300337 res!864183) b!1300336))

(assert (= (or b!1300337 b!1300345) bm!63650))

(declare-fun b_lambda!23187 () Bool)

(assert (=> (not b_lambda!23187) (not b!1300351)))

(assert (=> b!1300351 t!43442))

(declare-fun b_and!47307 () Bool)

(assert (= b_and!47305 (and (=> t!43442 result!23771) b_and!47307)))

(declare-fun m!1191301 () Bool)

(assert (=> b!1300338 m!1191301))

(declare-fun m!1191303 () Bool)

(assert (=> b!1300344 m!1191303))

(assert (=> b!1300347 m!1191179))

(assert (=> b!1300347 m!1191179))

(assert (=> b!1300347 m!1191181))

(declare-fun m!1191305 () Bool)

(assert (=> bm!63647 m!1191305))

(assert (=> b!1300350 m!1191179))

(assert (=> b!1300350 m!1191179))

(assert (=> b!1300350 m!1191181))

(declare-fun m!1191307 () Bool)

(assert (=> bm!63652 m!1191307))

(assert (=> bm!63653 m!1191183))

(assert (=> d!141095 m!1191199))

(assert (=> b!1300343 m!1191179))

(assert (=> b!1300343 m!1191179))

(declare-fun m!1191309 () Bool)

(assert (=> b!1300343 m!1191309))

(declare-fun m!1191311 () Bool)

(assert (=> b!1300336 m!1191311))

(assert (=> b!1300351 m!1191267))

(assert (=> b!1300351 m!1191265))

(assert (=> b!1300351 m!1191179))

(assert (=> b!1300351 m!1191265))

(assert (=> b!1300351 m!1191267))

(assert (=> b!1300351 m!1191269))

(assert (=> b!1300351 m!1191179))

(declare-fun m!1191313 () Bool)

(assert (=> b!1300351 m!1191313))

(declare-fun m!1191315 () Bool)

(assert (=> bm!63650 m!1191315))

(declare-fun m!1191317 () Bool)

(assert (=> b!1300352 m!1191317))

(declare-fun m!1191319 () Bool)

(assert (=> b!1300352 m!1191319))

(declare-fun m!1191321 () Bool)

(assert (=> b!1300352 m!1191321))

(declare-fun m!1191323 () Bool)

(assert (=> b!1300352 m!1191323))

(declare-fun m!1191325 () Bool)

(assert (=> b!1300352 m!1191325))

(assert (=> b!1300352 m!1191179))

(declare-fun m!1191327 () Bool)

(assert (=> b!1300352 m!1191327))

(declare-fun m!1191329 () Bool)

(assert (=> b!1300352 m!1191329))

(declare-fun m!1191331 () Bool)

(assert (=> b!1300352 m!1191331))

(assert (=> b!1300352 m!1191327))

(declare-fun m!1191333 () Bool)

(assert (=> b!1300352 m!1191333))

(assert (=> b!1300352 m!1191183))

(assert (=> b!1300352 m!1191329))

(declare-fun m!1191335 () Bool)

(assert (=> b!1300352 m!1191335))

(assert (=> b!1300352 m!1191317))

(assert (=> b!1300352 m!1191321))

(declare-fun m!1191337 () Bool)

(assert (=> b!1300352 m!1191337))

(declare-fun m!1191339 () Bool)

(assert (=> b!1300352 m!1191339))

(declare-fun m!1191341 () Bool)

(assert (=> b!1300352 m!1191341))

(declare-fun m!1191343 () Bool)

(assert (=> b!1300352 m!1191343))

(declare-fun m!1191345 () Bool)

(assert (=> b!1300352 m!1191345))

(assert (=> b!1300166 d!141095))

(declare-fun condMapEmpty!53810 () Bool)

(declare-fun mapDefault!53810 () ValueCell!16512)

(assert (=> mapNonEmpty!53804 (= condMapEmpty!53810 (= mapRest!53804 ((as const (Array (_ BitVec 32) ValueCell!16512)) mapDefault!53810)))))

(declare-fun e!741802 () Bool)

(declare-fun mapRes!53810 () Bool)

(assert (=> mapNonEmpty!53804 (= tp!102674 (and e!741802 mapRes!53810))))

(declare-fun mapIsEmpty!53810 () Bool)

(assert (=> mapIsEmpty!53810 mapRes!53810))

(declare-fun b!1300361 () Bool)

(assert (=> b!1300361 (= e!741802 tp_is_empty!34821)))

(declare-fun b!1300360 () Bool)

(declare-fun e!741801 () Bool)

(assert (=> b!1300360 (= e!741801 tp_is_empty!34821)))

(declare-fun mapNonEmpty!53810 () Bool)

(declare-fun tp!102684 () Bool)

(assert (=> mapNonEmpty!53810 (= mapRes!53810 (and tp!102684 e!741801))))

(declare-fun mapRest!53810 () (Array (_ BitVec 32) ValueCell!16512))

(declare-fun mapKey!53810 () (_ BitVec 32))

(declare-fun mapValue!53810 () ValueCell!16512)

(assert (=> mapNonEmpty!53810 (= mapRest!53804 (store mapRest!53810 mapKey!53810 mapValue!53810))))

(assert (= (and mapNonEmpty!53804 condMapEmpty!53810) mapIsEmpty!53810))

(assert (= (and mapNonEmpty!53804 (not condMapEmpty!53810)) mapNonEmpty!53810))

(assert (= (and mapNonEmpty!53810 ((_ is ValueCellFull!16512) mapValue!53810)) b!1300360))

(assert (= (and mapNonEmpty!53804 ((_ is ValueCellFull!16512) mapDefault!53810)) b!1300361))

(declare-fun m!1191347 () Bool)

(assert (=> mapNonEmpty!53810 m!1191347))

(declare-fun b_lambda!23189 () Bool)

(assert (= b_lambda!23183 (or (and start!109804 b_free!29181) b_lambda!23189)))

(declare-fun b_lambda!23191 () Bool)

(assert (= b_lambda!23185 (or (and start!109804 b_free!29181) b_lambda!23191)))

(declare-fun b_lambda!23193 () Bool)

(assert (= b_lambda!23187 (or (and start!109804 b_free!29181) b_lambda!23193)))

(check-sat (not b!1300290) (not b!1300288) (not bm!63647) (not b!1300343) (not b!1300285) (not b!1300338) tp_is_empty!34821 b_and!47307 (not b!1300272) (not b!1300269) (not mapNonEmpty!53810) (not d!141085) (not b_lambda!23189) (not d!141083) (not bm!63632) (not bm!63626) (not bm!63650) (not bm!63652) (not b!1300350) (not b!1300351) (not b!1300229) (not b!1300236) (not b!1300265) (not b!1300352) (not b_next!29181) (not d!141093) (not b_lambda!23193) (not d!141095) (not b_lambda!23191) (not b!1300336) (not b!1300237) (not b!1300218) (not b!1300271) (not d!141087) (not b!1300267) (not b!1300231) (not bm!63629) (not b!1300273) (not b!1300264) (not b!1300284) (not bm!63653) (not b!1300347) (not b!1300262) (not b!1300222) (not b!1300344) (not b!1300221))
(check-sat b_and!47307 (not b_next!29181))
