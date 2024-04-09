; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112424 () Bool)

(assert start!112424)

(declare-fun b_free!30783 () Bool)

(declare-fun b_next!30783 () Bool)

(assert (=> start!112424 (= b_free!30783 (not b_next!30783))))

(declare-fun tp!107986 () Bool)

(declare-fun b_and!49631 () Bool)

(assert (=> start!112424 (= tp!107986 b_and!49631)))

(declare-fun b!1332338 () Bool)

(declare-fun res!884254 () Bool)

(declare-fun e!759045 () Bool)

(assert (=> b!1332338 (=> (not res!884254) (not e!759045))))

(declare-datatypes ((array!90235 0))(
  ( (array!90236 (arr!43579 (Array (_ BitVec 32) (_ BitVec 64))) (size!44130 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90235)

(declare-datatypes ((List!31068 0))(
  ( (Nil!31065) (Cons!31064 (h!32273 (_ BitVec 64)) (t!45271 List!31068)) )
))
(declare-fun arrayNoDuplicates!0 (array!90235 (_ BitVec 32) List!31068) Bool)

(assert (=> b!1332338 (= res!884254 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31065))))

(declare-fun b!1332339 () Bool)

(declare-fun res!884249 () Bool)

(assert (=> b!1332339 (=> (not res!884249) (not e!759045))))

(declare-datatypes ((V!54027 0))(
  ( (V!54028 (val!18421 Int)) )
))
(declare-datatypes ((ValueCell!17448 0))(
  ( (ValueCellFull!17448 (v!21056 V!54027)) (EmptyCell!17448) )
))
(declare-datatypes ((array!90237 0))(
  ( (array!90238 (arr!43580 (Array (_ BitVec 32) ValueCell!17448)) (size!44131 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90237)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54027)

(declare-fun zeroValue!1262 () V!54027)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-datatypes ((tuple2!23890 0))(
  ( (tuple2!23891 (_1!11955 (_ BitVec 64)) (_2!11955 V!54027)) )
))
(declare-datatypes ((List!31069 0))(
  ( (Nil!31066) (Cons!31065 (h!32274 tuple2!23890) (t!45272 List!31069)) )
))
(declare-datatypes ((ListLongMap!21559 0))(
  ( (ListLongMap!21560 (toList!10795 List!31069)) )
))
(declare-fun contains!8895 (ListLongMap!21559 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5716 (array!90235 array!90237 (_ BitVec 32) (_ BitVec 32) V!54027 V!54027 (_ BitVec 32) Int) ListLongMap!21559)

(assert (=> b!1332339 (= res!884249 (contains!8895 (getCurrentListMap!5716 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1332340 () Bool)

(declare-fun res!884250 () Bool)

(assert (=> b!1332340 (=> (not res!884250) (not e!759045))))

(assert (=> b!1332340 (= res!884250 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1332341 () Bool)

(declare-fun res!884247 () Bool)

(assert (=> b!1332341 (=> (not res!884247) (not e!759045))))

(assert (=> b!1332341 (= res!884247 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44130 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1332342 () Bool)

(declare-fun res!884255 () Bool)

(assert (=> b!1332342 (=> (not res!884255) (not e!759045))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90235 (_ BitVec 32)) Bool)

(assert (=> b!1332342 (= res!884255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1332343 () Bool)

(declare-fun e!759048 () Bool)

(declare-fun e!759046 () Bool)

(declare-fun mapRes!56713 () Bool)

(assert (=> b!1332343 (= e!759048 (and e!759046 mapRes!56713))))

(declare-fun condMapEmpty!56713 () Bool)

(declare-fun mapDefault!56713 () ValueCell!17448)

(assert (=> b!1332343 (= condMapEmpty!56713 (= (arr!43580 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17448)) mapDefault!56713)))))

(declare-fun mapIsEmpty!56713 () Bool)

(assert (=> mapIsEmpty!56713 mapRes!56713))

(declare-fun mapNonEmpty!56713 () Bool)

(declare-fun tp!107987 () Bool)

(declare-fun e!759049 () Bool)

(assert (=> mapNonEmpty!56713 (= mapRes!56713 (and tp!107987 e!759049))))

(declare-fun mapRest!56713 () (Array (_ BitVec 32) ValueCell!17448))

(declare-fun mapValue!56713 () ValueCell!17448)

(declare-fun mapKey!56713 () (_ BitVec 32))

(assert (=> mapNonEmpty!56713 (= (arr!43580 _values!1320) (store mapRest!56713 mapKey!56713 mapValue!56713))))

(declare-fun b!1332345 () Bool)

(declare-fun res!884253 () Bool)

(assert (=> b!1332345 (=> (not res!884253) (not e!759045))))

(assert (=> b!1332345 (= res!884253 (and (= (size!44131 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44130 _keys!1590) (size!44131 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1332346 () Bool)

(declare-fun res!884248 () Bool)

(assert (=> b!1332346 (=> (not res!884248) (not e!759045))))

(assert (=> b!1332346 (= res!884248 (not (= (select (arr!43579 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1332347 () Bool)

(declare-fun tp_is_empty!36693 () Bool)

(assert (=> b!1332347 (= e!759049 tp_is_empty!36693)))

(declare-fun b!1332348 () Bool)

(declare-fun res!884251 () Bool)

(assert (=> b!1332348 (=> (not res!884251) (not e!759045))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1332348 (= res!884251 (validKeyInArray!0 (select (arr!43579 _keys!1590) from!1980)))))

(declare-fun b!1332349 () Bool)

(assert (=> b!1332349 (= e!759045 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000)))))

(declare-fun lt!591940 () ListLongMap!21559)

(declare-fun +!4682 (ListLongMap!21559 tuple2!23890) ListLongMap!21559)

(assert (=> b!1332349 (contains!8895 (+!4682 lt!591940 (tuple2!23891 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k0!1153)))

(declare-datatypes ((Unit!43791 0))(
  ( (Unit!43792) )
))
(declare-fun lt!591944 () Unit!43791)

(declare-fun addStillContains!1192 (ListLongMap!21559 (_ BitVec 64) V!54027 (_ BitVec 64)) Unit!43791)

(assert (=> b!1332349 (= lt!591944 (addStillContains!1192 lt!591940 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k0!1153))))

(assert (=> b!1332349 (contains!8895 lt!591940 k0!1153)))

(declare-fun lt!591942 () V!54027)

(declare-fun lt!591939 () Unit!43791)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!287 ((_ BitVec 64) (_ BitVec 64) V!54027 ListLongMap!21559) Unit!43791)

(assert (=> b!1332349 (= lt!591939 (lemmaInListMapAfterAddingDiffThenInBefore!287 k0!1153 (select (arr!43579 _keys!1590) from!1980) lt!591942 lt!591940))))

(declare-fun lt!591941 () ListLongMap!21559)

(assert (=> b!1332349 (contains!8895 lt!591941 k0!1153)))

(declare-fun lt!591943 () Unit!43791)

(assert (=> b!1332349 (= lt!591943 (lemmaInListMapAfterAddingDiffThenInBefore!287 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591941))))

(assert (=> b!1332349 (= lt!591941 (+!4682 lt!591940 (tuple2!23891 (select (arr!43579 _keys!1590) from!1980) lt!591942)))))

(declare-fun get!22028 (ValueCell!17448 V!54027) V!54027)

(declare-fun dynLambda!3719 (Int (_ BitVec 64)) V!54027)

(assert (=> b!1332349 (= lt!591942 (get!22028 (select (arr!43580 _values!1320) from!1980) (dynLambda!3719 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6400 (array!90235 array!90237 (_ BitVec 32) (_ BitVec 32) V!54027 V!54027 (_ BitVec 32) Int) ListLongMap!21559)

(assert (=> b!1332349 (= lt!591940 (getCurrentListMapNoExtraKeys!6400 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1332344 () Bool)

(assert (=> b!1332344 (= e!759046 tp_is_empty!36693)))

(declare-fun res!884252 () Bool)

(assert (=> start!112424 (=> (not res!884252) (not e!759045))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112424 (= res!884252 (validMask!0 mask!1998))))

(assert (=> start!112424 e!759045))

(declare-fun array_inv!32819 (array!90237) Bool)

(assert (=> start!112424 (and (array_inv!32819 _values!1320) e!759048)))

(assert (=> start!112424 true))

(declare-fun array_inv!32820 (array!90235) Bool)

(assert (=> start!112424 (array_inv!32820 _keys!1590)))

(assert (=> start!112424 tp!107986))

(assert (=> start!112424 tp_is_empty!36693))

(assert (= (and start!112424 res!884252) b!1332345))

(assert (= (and b!1332345 res!884253) b!1332342))

(assert (= (and b!1332342 res!884255) b!1332338))

(assert (= (and b!1332338 res!884254) b!1332341))

(assert (= (and b!1332341 res!884247) b!1332339))

(assert (= (and b!1332339 res!884249) b!1332346))

(assert (= (and b!1332346 res!884248) b!1332348))

(assert (= (and b!1332348 res!884251) b!1332340))

(assert (= (and b!1332340 res!884250) b!1332349))

(assert (= (and b!1332343 condMapEmpty!56713) mapIsEmpty!56713))

(assert (= (and b!1332343 (not condMapEmpty!56713)) mapNonEmpty!56713))

(get-info :version)

(assert (= (and mapNonEmpty!56713 ((_ is ValueCellFull!17448) mapValue!56713)) b!1332347))

(assert (= (and b!1332343 ((_ is ValueCellFull!17448) mapDefault!56713)) b!1332344))

(assert (= start!112424 b!1332343))

(declare-fun b_lambda!24053 () Bool)

(assert (=> (not b_lambda!24053) (not b!1332349)))

(declare-fun t!45270 () Bool)

(declare-fun tb!12007 () Bool)

(assert (=> (and start!112424 (= defaultEntry!1323 defaultEntry!1323) t!45270) tb!12007))

(declare-fun result!25077 () Bool)

(assert (=> tb!12007 (= result!25077 tp_is_empty!36693)))

(assert (=> b!1332349 t!45270))

(declare-fun b_and!49633 () Bool)

(assert (= b_and!49631 (and (=> t!45270 result!25077) b_and!49633)))

(declare-fun m!1221191 () Bool)

(assert (=> start!112424 m!1221191))

(declare-fun m!1221193 () Bool)

(assert (=> start!112424 m!1221193))

(declare-fun m!1221195 () Bool)

(assert (=> start!112424 m!1221195))

(declare-fun m!1221197 () Bool)

(assert (=> b!1332349 m!1221197))

(declare-fun m!1221199 () Bool)

(assert (=> b!1332349 m!1221199))

(declare-fun m!1221201 () Bool)

(assert (=> b!1332349 m!1221201))

(declare-fun m!1221203 () Bool)

(assert (=> b!1332349 m!1221203))

(declare-fun m!1221205 () Bool)

(assert (=> b!1332349 m!1221205))

(assert (=> b!1332349 m!1221199))

(declare-fun m!1221207 () Bool)

(assert (=> b!1332349 m!1221207))

(declare-fun m!1221209 () Bool)

(assert (=> b!1332349 m!1221209))

(declare-fun m!1221211 () Bool)

(assert (=> b!1332349 m!1221211))

(assert (=> b!1332349 m!1221201))

(assert (=> b!1332349 m!1221209))

(declare-fun m!1221213 () Bool)

(assert (=> b!1332349 m!1221213))

(declare-fun m!1221215 () Bool)

(assert (=> b!1332349 m!1221215))

(declare-fun m!1221217 () Bool)

(assert (=> b!1332349 m!1221217))

(assert (=> b!1332349 m!1221211))

(declare-fun m!1221219 () Bool)

(assert (=> b!1332349 m!1221219))

(declare-fun m!1221221 () Bool)

(assert (=> b!1332349 m!1221221))

(declare-fun m!1221223 () Bool)

(assert (=> b!1332338 m!1221223))

(declare-fun m!1221225 () Bool)

(assert (=> mapNonEmpty!56713 m!1221225))

(assert (=> b!1332346 m!1221211))

(assert (=> b!1332348 m!1221211))

(assert (=> b!1332348 m!1221211))

(declare-fun m!1221227 () Bool)

(assert (=> b!1332348 m!1221227))

(declare-fun m!1221229 () Bool)

(assert (=> b!1332342 m!1221229))

(declare-fun m!1221231 () Bool)

(assert (=> b!1332339 m!1221231))

(assert (=> b!1332339 m!1221231))

(declare-fun m!1221233 () Bool)

(assert (=> b!1332339 m!1221233))

(check-sat b_and!49633 (not b!1332349) (not b!1332339) (not b_next!30783) (not b_lambda!24053) (not b!1332338) (not b!1332348) (not b!1332342) (not start!112424) (not mapNonEmpty!56713) tp_is_empty!36693)
(check-sat b_and!49633 (not b_next!30783))
