; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37812 () Bool)

(assert start!37812)

(declare-fun b_free!8907 () Bool)

(declare-fun b_next!8907 () Bool)

(assert (=> start!37812 (= b_free!8907 (not b_next!8907))))

(declare-fun tp!31473 () Bool)

(declare-fun b_and!16167 () Bool)

(assert (=> start!37812 (= tp!31473 b_and!16167)))

(declare-fun b!388201 () Bool)

(declare-fun res!222068 () Bool)

(declare-fun e!235228 () Bool)

(assert (=> b!388201 (=> (not res!222068) (not e!235228))))

(declare-datatypes ((array!23025 0))(
  ( (array!23026 (arr!10978 (Array (_ BitVec 32) (_ BitVec 64))) (size!11330 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23025)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23025 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!388201 (= res!222068 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!388202 () Bool)

(declare-fun e!235227 () Bool)

(declare-fun tp_is_empty!9579 () Bool)

(assert (=> b!388202 (= e!235227 tp_is_empty!9579)))

(declare-fun b!388203 () Bool)

(declare-fun res!222075 () Bool)

(assert (=> b!388203 (=> (not res!222075) (not e!235228))))

(declare-datatypes ((List!6324 0))(
  ( (Nil!6321) (Cons!6320 (h!7176 (_ BitVec 64)) (t!11482 List!6324)) )
))
(declare-fun arrayNoDuplicates!0 (array!23025 (_ BitVec 32) List!6324) Bool)

(assert (=> b!388203 (= res!222075 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6321))))

(declare-fun b!388204 () Bool)

(declare-fun e!235231 () Bool)

(declare-fun e!235232 () Bool)

(assert (=> b!388204 (= e!235231 (not e!235232))))

(declare-fun res!222076 () Bool)

(assert (=> b!388204 (=> res!222076 e!235232)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!388204 (= res!222076 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13877 0))(
  ( (V!13878 (val!4834 Int)) )
))
(declare-datatypes ((ValueCell!4446 0))(
  ( (ValueCellFull!4446 (v!7027 V!13877)) (EmptyCell!4446) )
))
(declare-datatypes ((array!23027 0))(
  ( (array!23028 (arr!10979 (Array (_ BitVec 32) ValueCell!4446)) (size!11331 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23027)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6440 0))(
  ( (tuple2!6441 (_1!3230 (_ BitVec 64)) (_2!3230 V!13877)) )
))
(declare-datatypes ((List!6325 0))(
  ( (Nil!6322) (Cons!6321 (h!7177 tuple2!6440) (t!11483 List!6325)) )
))
(declare-datatypes ((ListLongMap!5367 0))(
  ( (ListLongMap!5368 (toList!2699 List!6325)) )
))
(declare-fun lt!182299 () ListLongMap!5367)

(declare-fun zeroValue!472 () V!13877)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13877)

(declare-fun getCurrentListMap!2071 (array!23025 array!23027 (_ BitVec 32) (_ BitVec 32) V!13877 V!13877 (_ BitVec 32) Int) ListLongMap!5367)

(assert (=> b!388204 (= lt!182299 (getCurrentListMap!2071 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182305 () array!23025)

(declare-fun lt!182301 () array!23027)

(declare-fun lt!182304 () ListLongMap!5367)

(assert (=> b!388204 (= lt!182304 (getCurrentListMap!2071 lt!182305 lt!182301 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182300 () ListLongMap!5367)

(declare-fun lt!182298 () ListLongMap!5367)

(assert (=> b!388204 (and (= lt!182300 lt!182298) (= lt!182298 lt!182300))))

(declare-fun lt!182302 () ListLongMap!5367)

(declare-fun v!373 () V!13877)

(declare-fun +!997 (ListLongMap!5367 tuple2!6440) ListLongMap!5367)

(assert (=> b!388204 (= lt!182298 (+!997 lt!182302 (tuple2!6441 k0!778 v!373)))))

(declare-datatypes ((Unit!11883 0))(
  ( (Unit!11884) )
))
(declare-fun lt!182303 () Unit!11883)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!228 (array!23025 array!23027 (_ BitVec 32) (_ BitVec 32) V!13877 V!13877 (_ BitVec 32) (_ BitVec 64) V!13877 (_ BitVec 32) Int) Unit!11883)

(assert (=> b!388204 (= lt!182303 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!228 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!933 (array!23025 array!23027 (_ BitVec 32) (_ BitVec 32) V!13877 V!13877 (_ BitVec 32) Int) ListLongMap!5367)

(assert (=> b!388204 (= lt!182300 (getCurrentListMapNoExtraKeys!933 lt!182305 lt!182301 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!388204 (= lt!182301 (array!23028 (store (arr!10979 _values!506) i!548 (ValueCellFull!4446 v!373)) (size!11331 _values!506)))))

(assert (=> b!388204 (= lt!182302 (getCurrentListMapNoExtraKeys!933 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapNonEmpty!15933 () Bool)

(declare-fun mapRes!15933 () Bool)

(declare-fun tp!31472 () Bool)

(assert (=> mapNonEmpty!15933 (= mapRes!15933 (and tp!31472 e!235227))))

(declare-fun mapRest!15933 () (Array (_ BitVec 32) ValueCell!4446))

(declare-fun mapKey!15933 () (_ BitVec 32))

(declare-fun mapValue!15933 () ValueCell!4446)

(assert (=> mapNonEmpty!15933 (= (arr!10979 _values!506) (store mapRest!15933 mapKey!15933 mapValue!15933))))

(declare-fun b!388205 () Bool)

(declare-fun res!222074 () Bool)

(assert (=> b!388205 (=> (not res!222074) (not e!235228))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23025 (_ BitVec 32)) Bool)

(assert (=> b!388205 (= res!222074 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!388207 () Bool)

(declare-fun e!235230 () Bool)

(assert (=> b!388207 (= e!235230 tp_is_empty!9579)))

(declare-fun b!388208 () Bool)

(assert (=> b!388208 (= e!235228 e!235231)))

(declare-fun res!222067 () Bool)

(assert (=> b!388208 (=> (not res!222067) (not e!235231))))

(assert (=> b!388208 (= res!222067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182305 mask!970))))

(assert (=> b!388208 (= lt!182305 (array!23026 (store (arr!10978 _keys!658) i!548 k0!778) (size!11330 _keys!658)))))

(declare-fun mapIsEmpty!15933 () Bool)

(assert (=> mapIsEmpty!15933 mapRes!15933))

(declare-fun b!388209 () Bool)

(assert (=> b!388209 (= e!235232 (= lt!182304 (+!997 (+!997 lt!182300 (tuple2!6441 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472)) (tuple2!6441 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun b!388210 () Bool)

(declare-fun res!222072 () Bool)

(assert (=> b!388210 (=> (not res!222072) (not e!235228))))

(assert (=> b!388210 (= res!222072 (and (= (size!11331 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11330 _keys!658) (size!11331 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!388211 () Bool)

(declare-fun res!222073 () Bool)

(assert (=> b!388211 (=> (not res!222073) (not e!235228))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!388211 (= res!222073 (validKeyInArray!0 k0!778))))

(declare-fun b!388212 () Bool)

(declare-fun e!235233 () Bool)

(assert (=> b!388212 (= e!235233 (and e!235230 mapRes!15933))))

(declare-fun condMapEmpty!15933 () Bool)

(declare-fun mapDefault!15933 () ValueCell!4446)

(assert (=> b!388212 (= condMapEmpty!15933 (= (arr!10979 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4446)) mapDefault!15933)))))

(declare-fun res!222069 () Bool)

(assert (=> start!37812 (=> (not res!222069) (not e!235228))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37812 (= res!222069 (validMask!0 mask!970))))

(assert (=> start!37812 e!235228))

(declare-fun array_inv!8046 (array!23027) Bool)

(assert (=> start!37812 (and (array_inv!8046 _values!506) e!235233)))

(assert (=> start!37812 tp!31473))

(assert (=> start!37812 true))

(assert (=> start!37812 tp_is_empty!9579))

(declare-fun array_inv!8047 (array!23025) Bool)

(assert (=> start!37812 (array_inv!8047 _keys!658)))

(declare-fun b!388206 () Bool)

(declare-fun res!222070 () Bool)

(assert (=> b!388206 (=> (not res!222070) (not e!235228))))

(assert (=> b!388206 (= res!222070 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11330 _keys!658))))))

(declare-fun b!388213 () Bool)

(declare-fun res!222077 () Bool)

(assert (=> b!388213 (=> (not res!222077) (not e!235231))))

(assert (=> b!388213 (= res!222077 (arrayNoDuplicates!0 lt!182305 #b00000000000000000000000000000000 Nil!6321))))

(declare-fun b!388214 () Bool)

(declare-fun res!222071 () Bool)

(assert (=> b!388214 (=> (not res!222071) (not e!235228))))

(assert (=> b!388214 (= res!222071 (or (= (select (arr!10978 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10978 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!37812 res!222069) b!388210))

(assert (= (and b!388210 res!222072) b!388205))

(assert (= (and b!388205 res!222074) b!388203))

(assert (= (and b!388203 res!222075) b!388206))

(assert (= (and b!388206 res!222070) b!388211))

(assert (= (and b!388211 res!222073) b!388214))

(assert (= (and b!388214 res!222071) b!388201))

(assert (= (and b!388201 res!222068) b!388208))

(assert (= (and b!388208 res!222067) b!388213))

(assert (= (and b!388213 res!222077) b!388204))

(assert (= (and b!388204 (not res!222076)) b!388209))

(assert (= (and b!388212 condMapEmpty!15933) mapIsEmpty!15933))

(assert (= (and b!388212 (not condMapEmpty!15933)) mapNonEmpty!15933))

(get-info :version)

(assert (= (and mapNonEmpty!15933 ((_ is ValueCellFull!4446) mapValue!15933)) b!388202))

(assert (= (and b!388212 ((_ is ValueCellFull!4446) mapDefault!15933)) b!388207))

(assert (= start!37812 b!388212))

(declare-fun m!384179 () Bool)

(assert (=> b!388204 m!384179))

(declare-fun m!384181 () Bool)

(assert (=> b!388204 m!384181))

(declare-fun m!384183 () Bool)

(assert (=> b!388204 m!384183))

(declare-fun m!384185 () Bool)

(assert (=> b!388204 m!384185))

(declare-fun m!384187 () Bool)

(assert (=> b!388204 m!384187))

(declare-fun m!384189 () Bool)

(assert (=> b!388204 m!384189))

(declare-fun m!384191 () Bool)

(assert (=> b!388204 m!384191))

(declare-fun m!384193 () Bool)

(assert (=> b!388205 m!384193))

(declare-fun m!384195 () Bool)

(assert (=> b!388214 m!384195))

(declare-fun m!384197 () Bool)

(assert (=> b!388213 m!384197))

(declare-fun m!384199 () Bool)

(assert (=> b!388201 m!384199))

(declare-fun m!384201 () Bool)

(assert (=> b!388203 m!384201))

(declare-fun m!384203 () Bool)

(assert (=> start!37812 m!384203))

(declare-fun m!384205 () Bool)

(assert (=> start!37812 m!384205))

(declare-fun m!384207 () Bool)

(assert (=> start!37812 m!384207))

(declare-fun m!384209 () Bool)

(assert (=> b!388209 m!384209))

(assert (=> b!388209 m!384209))

(declare-fun m!384211 () Bool)

(assert (=> b!388209 m!384211))

(declare-fun m!384213 () Bool)

(assert (=> b!388211 m!384213))

(declare-fun m!384215 () Bool)

(assert (=> mapNonEmpty!15933 m!384215))

(declare-fun m!384217 () Bool)

(assert (=> b!388208 m!384217))

(declare-fun m!384219 () Bool)

(assert (=> b!388208 m!384219))

(check-sat (not b_next!8907) (not b!388204) (not b!388211) (not b!388209) (not b!388213) b_and!16167 (not start!37812) (not b!388208) (not b!388205) tp_is_empty!9579 (not mapNonEmpty!15933) (not b!388203) (not b!388201))
(check-sat b_and!16167 (not b_next!8907))
(get-model)

(declare-fun bm!27305 () Bool)

(declare-fun call!27308 () ListLongMap!5367)

(assert (=> bm!27305 (= call!27308 (getCurrentListMapNoExtraKeys!933 lt!182305 lt!182301 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!388281 () Bool)

(declare-fun lt!182344 () Unit!11883)

(declare-fun lt!182345 () Unit!11883)

(assert (=> b!388281 (= lt!182344 lt!182345)))

(declare-fun lt!182350 () ListLongMap!5367)

(declare-fun lt!182349 () V!13877)

(declare-fun lt!182347 () (_ BitVec 64))

(declare-fun lt!182348 () (_ BitVec 64))

(declare-fun contains!2441 (ListLongMap!5367 (_ BitVec 64)) Bool)

(assert (=> b!388281 (not (contains!2441 (+!997 lt!182350 (tuple2!6441 lt!182347 lt!182349)) lt!182348))))

(declare-fun addStillNotContains!132 (ListLongMap!5367 (_ BitVec 64) V!13877 (_ BitVec 64)) Unit!11883)

(assert (=> b!388281 (= lt!182345 (addStillNotContains!132 lt!182350 lt!182347 lt!182349 lt!182348))))

(assert (=> b!388281 (= lt!182348 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!5564 (ValueCell!4446 V!13877) V!13877)

(declare-fun dynLambda!635 (Int (_ BitVec 64)) V!13877)

(assert (=> b!388281 (= lt!182349 (get!5564 (select (arr!10979 lt!182301) #b00000000000000000000000000000000) (dynLambda!635 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!388281 (= lt!182347 (select (arr!10978 lt!182305) #b00000000000000000000000000000000))))

(assert (=> b!388281 (= lt!182350 call!27308)))

(declare-fun e!235274 () ListLongMap!5367)

(assert (=> b!388281 (= e!235274 (+!997 call!27308 (tuple2!6441 (select (arr!10978 lt!182305) #b00000000000000000000000000000000) (get!5564 (select (arr!10979 lt!182301) #b00000000000000000000000000000000) (dynLambda!635 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!388282 () Bool)

(declare-fun e!235273 () Bool)

(declare-fun lt!182346 () ListLongMap!5367)

(declare-fun isEmpty!548 (ListLongMap!5367) Bool)

(assert (=> b!388282 (= e!235273 (isEmpty!548 lt!182346))))

(declare-fun b!388284 () Bool)

(declare-fun e!235275 () Bool)

(assert (=> b!388284 (= e!235275 e!235273)))

(declare-fun c!53861 () Bool)

(assert (=> b!388284 (= c!53861 (bvslt #b00000000000000000000000000000000 (size!11330 lt!182305)))))

(declare-fun b!388285 () Bool)

(declare-fun e!235272 () ListLongMap!5367)

(assert (=> b!388285 (= e!235272 (ListLongMap!5368 Nil!6322))))

(declare-fun b!388286 () Bool)

(declare-fun res!222120 () Bool)

(declare-fun e!235270 () Bool)

(assert (=> b!388286 (=> (not res!222120) (not e!235270))))

(assert (=> b!388286 (= res!222120 (not (contains!2441 lt!182346 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!388287 () Bool)

(assert (=> b!388287 (= e!235274 call!27308)))

(declare-fun b!388288 () Bool)

(declare-fun e!235271 () Bool)

(assert (=> b!388288 (= e!235271 (validKeyInArray!0 (select (arr!10978 lt!182305) #b00000000000000000000000000000000)))))

(assert (=> b!388288 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!388289 () Bool)

(declare-fun e!235269 () Bool)

(assert (=> b!388289 (= e!235275 e!235269)))

(assert (=> b!388289 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11330 lt!182305)))))

(declare-fun res!222122 () Bool)

(assert (=> b!388289 (= res!222122 (contains!2441 lt!182346 (select (arr!10978 lt!182305) #b00000000000000000000000000000000)))))

(assert (=> b!388289 (=> (not res!222122) (not e!235269))))

(declare-fun b!388290 () Bool)

(assert (=> b!388290 (= e!235272 e!235274)))

(declare-fun c!53859 () Bool)

(assert (=> b!388290 (= c!53859 (validKeyInArray!0 (select (arr!10978 lt!182305) #b00000000000000000000000000000000)))))

(declare-fun d!72671 () Bool)

(assert (=> d!72671 e!235270))

(declare-fun res!222119 () Bool)

(assert (=> d!72671 (=> (not res!222119) (not e!235270))))

(assert (=> d!72671 (= res!222119 (not (contains!2441 lt!182346 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!72671 (= lt!182346 e!235272)))

(declare-fun c!53858 () Bool)

(assert (=> d!72671 (= c!53858 (bvsge #b00000000000000000000000000000000 (size!11330 lt!182305)))))

(assert (=> d!72671 (validMask!0 mask!970)))

(assert (=> d!72671 (= (getCurrentListMapNoExtraKeys!933 lt!182305 lt!182301 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!182346)))

(declare-fun b!388283 () Bool)

(assert (=> b!388283 (= e!235270 e!235275)))

(declare-fun c!53860 () Bool)

(assert (=> b!388283 (= c!53860 e!235271)))

(declare-fun res!222121 () Bool)

(assert (=> b!388283 (=> (not res!222121) (not e!235271))))

(assert (=> b!388283 (= res!222121 (bvslt #b00000000000000000000000000000000 (size!11330 lt!182305)))))

(declare-fun b!388291 () Bool)

(assert (=> b!388291 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11330 lt!182305)))))

(assert (=> b!388291 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11331 lt!182301)))))

(declare-fun apply!297 (ListLongMap!5367 (_ BitVec 64)) V!13877)

(assert (=> b!388291 (= e!235269 (= (apply!297 lt!182346 (select (arr!10978 lt!182305) #b00000000000000000000000000000000)) (get!5564 (select (arr!10979 lt!182301) #b00000000000000000000000000000000) (dynLambda!635 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!388292 () Bool)

(assert (=> b!388292 (= e!235273 (= lt!182346 (getCurrentListMapNoExtraKeys!933 lt!182305 lt!182301 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(assert (= (and d!72671 c!53858) b!388285))

(assert (= (and d!72671 (not c!53858)) b!388290))

(assert (= (and b!388290 c!53859) b!388281))

(assert (= (and b!388290 (not c!53859)) b!388287))

(assert (= (or b!388281 b!388287) bm!27305))

(assert (= (and d!72671 res!222119) b!388286))

(assert (= (and b!388286 res!222120) b!388283))

(assert (= (and b!388283 res!222121) b!388288))

(assert (= (and b!388283 c!53860) b!388289))

(assert (= (and b!388283 (not c!53860)) b!388284))

(assert (= (and b!388289 res!222122) b!388291))

(assert (= (and b!388284 c!53861) b!388292))

(assert (= (and b!388284 (not c!53861)) b!388282))

(declare-fun b_lambda!8557 () Bool)

(assert (=> (not b_lambda!8557) (not b!388281)))

(declare-fun t!11487 () Bool)

(declare-fun tb!3117 () Bool)

(assert (=> (and start!37812 (= defaultEntry!514 defaultEntry!514) t!11487) tb!3117))

(declare-fun result!5715 () Bool)

(assert (=> tb!3117 (= result!5715 tp_is_empty!9579)))

(assert (=> b!388281 t!11487))

(declare-fun b_and!16171 () Bool)

(assert (= b_and!16167 (and (=> t!11487 result!5715) b_and!16171)))

(declare-fun b_lambda!8559 () Bool)

(assert (=> (not b_lambda!8559) (not b!388291)))

(assert (=> b!388291 t!11487))

(declare-fun b_and!16173 () Bool)

(assert (= b_and!16171 (and (=> t!11487 result!5715) b_and!16173)))

(declare-fun m!384263 () Bool)

(assert (=> d!72671 m!384263))

(assert (=> d!72671 m!384203))

(declare-fun m!384265 () Bool)

(assert (=> b!388292 m!384265))

(declare-fun m!384267 () Bool)

(assert (=> b!388289 m!384267))

(assert (=> b!388289 m!384267))

(declare-fun m!384269 () Bool)

(assert (=> b!388289 m!384269))

(declare-fun m!384271 () Bool)

(assert (=> b!388281 m!384271))

(assert (=> b!388281 m!384267))

(declare-fun m!384273 () Bool)

(assert (=> b!388281 m!384273))

(declare-fun m!384275 () Bool)

(assert (=> b!388281 m!384275))

(assert (=> b!388281 m!384275))

(declare-fun m!384277 () Bool)

(assert (=> b!388281 m!384277))

(declare-fun m!384279 () Bool)

(assert (=> b!388281 m!384279))

(declare-fun m!384281 () Bool)

(assert (=> b!388281 m!384281))

(assert (=> b!388281 m!384277))

(assert (=> b!388281 m!384273))

(declare-fun m!384283 () Bool)

(assert (=> b!388281 m!384283))

(assert (=> bm!27305 m!384265))

(assert (=> b!388288 m!384267))

(assert (=> b!388288 m!384267))

(declare-fun m!384285 () Bool)

(assert (=> b!388288 m!384285))

(assert (=> b!388291 m!384267))

(declare-fun m!384287 () Bool)

(assert (=> b!388291 m!384287))

(assert (=> b!388291 m!384267))

(assert (=> b!388291 m!384275))

(assert (=> b!388291 m!384275))

(assert (=> b!388291 m!384277))

(assert (=> b!388291 m!384279))

(assert (=> b!388291 m!384277))

(declare-fun m!384289 () Bool)

(assert (=> b!388286 m!384289))

(declare-fun m!384291 () Bool)

(assert (=> b!388282 m!384291))

(assert (=> b!388290 m!384267))

(assert (=> b!388290 m!384267))

(assert (=> b!388290 m!384285))

(assert (=> b!388204 d!72671))

(declare-fun bm!27306 () Bool)

(declare-fun call!27309 () ListLongMap!5367)

(assert (=> bm!27306 (= call!27309 (getCurrentListMapNoExtraKeys!933 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!388295 () Bool)

(declare-fun lt!182351 () Unit!11883)

(declare-fun lt!182352 () Unit!11883)

(assert (=> b!388295 (= lt!182351 lt!182352)))

(declare-fun lt!182354 () (_ BitVec 64))

(declare-fun lt!182355 () (_ BitVec 64))

(declare-fun lt!182356 () V!13877)

(declare-fun lt!182357 () ListLongMap!5367)

(assert (=> b!388295 (not (contains!2441 (+!997 lt!182357 (tuple2!6441 lt!182354 lt!182356)) lt!182355))))

(assert (=> b!388295 (= lt!182352 (addStillNotContains!132 lt!182357 lt!182354 lt!182356 lt!182355))))

(assert (=> b!388295 (= lt!182355 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!388295 (= lt!182356 (get!5564 (select (arr!10979 _values!506) #b00000000000000000000000000000000) (dynLambda!635 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!388295 (= lt!182354 (select (arr!10978 _keys!658) #b00000000000000000000000000000000))))

(assert (=> b!388295 (= lt!182357 call!27309)))

(declare-fun e!235281 () ListLongMap!5367)

(assert (=> b!388295 (= e!235281 (+!997 call!27309 (tuple2!6441 (select (arr!10978 _keys!658) #b00000000000000000000000000000000) (get!5564 (select (arr!10979 _values!506) #b00000000000000000000000000000000) (dynLambda!635 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!388296 () Bool)

(declare-fun e!235280 () Bool)

(declare-fun lt!182353 () ListLongMap!5367)

(assert (=> b!388296 (= e!235280 (isEmpty!548 lt!182353))))

(declare-fun b!388298 () Bool)

(declare-fun e!235282 () Bool)

(assert (=> b!388298 (= e!235282 e!235280)))

(declare-fun c!53865 () Bool)

(assert (=> b!388298 (= c!53865 (bvslt #b00000000000000000000000000000000 (size!11330 _keys!658)))))

(declare-fun b!388299 () Bool)

(declare-fun e!235279 () ListLongMap!5367)

(assert (=> b!388299 (= e!235279 (ListLongMap!5368 Nil!6322))))

(declare-fun b!388300 () Bool)

(declare-fun res!222124 () Bool)

(declare-fun e!235277 () Bool)

(assert (=> b!388300 (=> (not res!222124) (not e!235277))))

(assert (=> b!388300 (= res!222124 (not (contains!2441 lt!182353 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!388301 () Bool)

(assert (=> b!388301 (= e!235281 call!27309)))

(declare-fun b!388302 () Bool)

(declare-fun e!235278 () Bool)

(assert (=> b!388302 (= e!235278 (validKeyInArray!0 (select (arr!10978 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!388302 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!388303 () Bool)

(declare-fun e!235276 () Bool)

(assert (=> b!388303 (= e!235282 e!235276)))

(assert (=> b!388303 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11330 _keys!658)))))

(declare-fun res!222126 () Bool)

(assert (=> b!388303 (= res!222126 (contains!2441 lt!182353 (select (arr!10978 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!388303 (=> (not res!222126) (not e!235276))))

(declare-fun b!388304 () Bool)

(assert (=> b!388304 (= e!235279 e!235281)))

(declare-fun c!53863 () Bool)

(assert (=> b!388304 (= c!53863 (validKeyInArray!0 (select (arr!10978 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun d!72673 () Bool)

(assert (=> d!72673 e!235277))

(declare-fun res!222123 () Bool)

(assert (=> d!72673 (=> (not res!222123) (not e!235277))))

(assert (=> d!72673 (= res!222123 (not (contains!2441 lt!182353 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!72673 (= lt!182353 e!235279)))

(declare-fun c!53862 () Bool)

(assert (=> d!72673 (= c!53862 (bvsge #b00000000000000000000000000000000 (size!11330 _keys!658)))))

(assert (=> d!72673 (validMask!0 mask!970)))

(assert (=> d!72673 (= (getCurrentListMapNoExtraKeys!933 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!182353)))

(declare-fun b!388297 () Bool)

(assert (=> b!388297 (= e!235277 e!235282)))

(declare-fun c!53864 () Bool)

(assert (=> b!388297 (= c!53864 e!235278)))

(declare-fun res!222125 () Bool)

(assert (=> b!388297 (=> (not res!222125) (not e!235278))))

(assert (=> b!388297 (= res!222125 (bvslt #b00000000000000000000000000000000 (size!11330 _keys!658)))))

(declare-fun b!388305 () Bool)

(assert (=> b!388305 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11330 _keys!658)))))

(assert (=> b!388305 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11331 _values!506)))))

(assert (=> b!388305 (= e!235276 (= (apply!297 lt!182353 (select (arr!10978 _keys!658) #b00000000000000000000000000000000)) (get!5564 (select (arr!10979 _values!506) #b00000000000000000000000000000000) (dynLambda!635 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!388306 () Bool)

(assert (=> b!388306 (= e!235280 (= lt!182353 (getCurrentListMapNoExtraKeys!933 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(assert (= (and d!72673 c!53862) b!388299))

(assert (= (and d!72673 (not c!53862)) b!388304))

(assert (= (and b!388304 c!53863) b!388295))

(assert (= (and b!388304 (not c!53863)) b!388301))

(assert (= (or b!388295 b!388301) bm!27306))

(assert (= (and d!72673 res!222123) b!388300))

(assert (= (and b!388300 res!222124) b!388297))

(assert (= (and b!388297 res!222125) b!388302))

(assert (= (and b!388297 c!53864) b!388303))

(assert (= (and b!388297 (not c!53864)) b!388298))

(assert (= (and b!388303 res!222126) b!388305))

(assert (= (and b!388298 c!53865) b!388306))

(assert (= (and b!388298 (not c!53865)) b!388296))

(declare-fun b_lambda!8561 () Bool)

(assert (=> (not b_lambda!8561) (not b!388295)))

(assert (=> b!388295 t!11487))

(declare-fun b_and!16175 () Bool)

(assert (= b_and!16173 (and (=> t!11487 result!5715) b_and!16175)))

(declare-fun b_lambda!8563 () Bool)

(assert (=> (not b_lambda!8563) (not b!388305)))

(assert (=> b!388305 t!11487))

(declare-fun b_and!16177 () Bool)

(assert (= b_and!16175 (and (=> t!11487 result!5715) b_and!16177)))

(declare-fun m!384293 () Bool)

(assert (=> d!72673 m!384293))

(assert (=> d!72673 m!384203))

(declare-fun m!384295 () Bool)

(assert (=> b!388306 m!384295))

(declare-fun m!384297 () Bool)

(assert (=> b!388303 m!384297))

(assert (=> b!388303 m!384297))

(declare-fun m!384299 () Bool)

(assert (=> b!388303 m!384299))

(declare-fun m!384301 () Bool)

(assert (=> b!388295 m!384301))

(assert (=> b!388295 m!384297))

(declare-fun m!384303 () Bool)

(assert (=> b!388295 m!384303))

(declare-fun m!384305 () Bool)

(assert (=> b!388295 m!384305))

(assert (=> b!388295 m!384305))

(assert (=> b!388295 m!384277))

(declare-fun m!384307 () Bool)

(assert (=> b!388295 m!384307))

(declare-fun m!384309 () Bool)

(assert (=> b!388295 m!384309))

(assert (=> b!388295 m!384277))

(assert (=> b!388295 m!384303))

(declare-fun m!384311 () Bool)

(assert (=> b!388295 m!384311))

(assert (=> bm!27306 m!384295))

(assert (=> b!388302 m!384297))

(assert (=> b!388302 m!384297))

(declare-fun m!384313 () Bool)

(assert (=> b!388302 m!384313))

(assert (=> b!388305 m!384297))

(declare-fun m!384315 () Bool)

(assert (=> b!388305 m!384315))

(assert (=> b!388305 m!384297))

(assert (=> b!388305 m!384305))

(assert (=> b!388305 m!384305))

(assert (=> b!388305 m!384277))

(assert (=> b!388305 m!384307))

(assert (=> b!388305 m!384277))

(declare-fun m!384317 () Bool)

(assert (=> b!388300 m!384317))

(declare-fun m!384319 () Bool)

(assert (=> b!388296 m!384319))

(assert (=> b!388304 m!384297))

(assert (=> b!388304 m!384297))

(assert (=> b!388304 m!384313))

(assert (=> b!388204 d!72673))

(declare-fun b!388349 () Bool)

(declare-fun e!235321 () Bool)

(declare-fun e!235315 () Bool)

(assert (=> b!388349 (= e!235321 e!235315)))

(declare-fun res!222149 () Bool)

(declare-fun call!27328 () Bool)

(assert (=> b!388349 (= res!222149 call!27328)))

(assert (=> b!388349 (=> (not res!222149) (not e!235315))))

(declare-fun b!388350 () Bool)

(declare-fun e!235319 () ListLongMap!5367)

(declare-fun call!27324 () ListLongMap!5367)

(assert (=> b!388350 (= e!235319 call!27324)))

(declare-fun b!388351 () Bool)

(declare-fun e!235316 () ListLongMap!5367)

(assert (=> b!388351 (= e!235316 e!235319)))

(declare-fun c!53883 () Bool)

(assert (=> b!388351 (= c!53883 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!388352 () Bool)

(declare-fun e!235320 () Bool)

(declare-fun e!235318 () Bool)

(assert (=> b!388352 (= e!235320 e!235318)))

(declare-fun res!222147 () Bool)

(assert (=> b!388352 (=> (not res!222147) (not e!235318))))

(declare-fun lt!182422 () ListLongMap!5367)

(assert (=> b!388352 (= res!222147 (contains!2441 lt!182422 (select (arr!10978 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!388352 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11330 _keys!658)))))

(declare-fun b!388353 () Bool)

(declare-fun e!235311 () Bool)

(declare-fun call!27326 () Bool)

(assert (=> b!388353 (= e!235311 (not call!27326))))

(declare-fun b!388354 () Bool)

(declare-fun e!235310 () Bool)

(assert (=> b!388354 (= e!235311 e!235310)))

(declare-fun res!222153 () Bool)

(assert (=> b!388354 (= res!222153 call!27326)))

(assert (=> b!388354 (=> (not res!222153) (not e!235310))))

(declare-fun d!72675 () Bool)

(declare-fun e!235317 () Bool)

(assert (=> d!72675 e!235317))

(declare-fun res!222146 () Bool)

(assert (=> d!72675 (=> (not res!222146) (not e!235317))))

(assert (=> d!72675 (= res!222146 (or (bvsge #b00000000000000000000000000000000 (size!11330 _keys!658)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11330 _keys!658)))))))

(declare-fun lt!182404 () ListLongMap!5367)

(assert (=> d!72675 (= lt!182422 lt!182404)))

(declare-fun lt!182405 () Unit!11883)

(declare-fun e!235314 () Unit!11883)

(assert (=> d!72675 (= lt!182405 e!235314)))

(declare-fun c!53880 () Bool)

(declare-fun e!235312 () Bool)

(assert (=> d!72675 (= c!53880 e!235312)))

(declare-fun res!222145 () Bool)

(assert (=> d!72675 (=> (not res!222145) (not e!235312))))

(assert (=> d!72675 (= res!222145 (bvslt #b00000000000000000000000000000000 (size!11330 _keys!658)))))

(assert (=> d!72675 (= lt!182404 e!235316)))

(declare-fun c!53878 () Bool)

(assert (=> d!72675 (= c!53878 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!72675 (validMask!0 mask!970)))

(assert (=> d!72675 (= (getCurrentListMap!2071 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!182422)))

(declare-fun call!27330 () ListLongMap!5367)

(declare-fun bm!27321 () Bool)

(assert (=> bm!27321 (= call!27330 (getCurrentListMapNoExtraKeys!933 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun bm!27322 () Bool)

(declare-fun call!27327 () ListLongMap!5367)

(assert (=> bm!27322 (= call!27327 call!27330)))

(declare-fun b!388355 () Bool)

(declare-fun e!235309 () ListLongMap!5367)

(assert (=> b!388355 (= e!235309 call!27324)))

(declare-fun b!388356 () Bool)

(assert (=> b!388356 (= e!235321 (not call!27328))))

(declare-fun bm!27323 () Bool)

(assert (=> bm!27323 (= call!27328 (contains!2441 lt!182422 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!388357 () Bool)

(declare-fun call!27325 () ListLongMap!5367)

(assert (=> b!388357 (= e!235309 call!27325)))

(declare-fun b!388358 () Bool)

(declare-fun Unit!11887 () Unit!11883)

(assert (=> b!388358 (= e!235314 Unit!11887)))

(declare-fun call!27329 () ListLongMap!5367)

(declare-fun bm!27324 () Bool)

(assert (=> bm!27324 (= call!27329 (+!997 (ite c!53878 call!27330 (ite c!53883 call!27327 call!27325)) (ite (or c!53878 c!53883) (tuple2!6441 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6441 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun b!388359 () Bool)

(declare-fun lt!182408 () Unit!11883)

(assert (=> b!388359 (= e!235314 lt!182408)))

(declare-fun lt!182420 () ListLongMap!5367)

(assert (=> b!388359 (= lt!182420 (getCurrentListMapNoExtraKeys!933 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182423 () (_ BitVec 64))

(assert (=> b!388359 (= lt!182423 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!182413 () (_ BitVec 64))

(assert (=> b!388359 (= lt!182413 (select (arr!10978 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!182414 () Unit!11883)

(declare-fun addStillContains!273 (ListLongMap!5367 (_ BitVec 64) V!13877 (_ BitVec 64)) Unit!11883)

(assert (=> b!388359 (= lt!182414 (addStillContains!273 lt!182420 lt!182423 zeroValue!472 lt!182413))))

(assert (=> b!388359 (contains!2441 (+!997 lt!182420 (tuple2!6441 lt!182423 zeroValue!472)) lt!182413)))

(declare-fun lt!182409 () Unit!11883)

(assert (=> b!388359 (= lt!182409 lt!182414)))

(declare-fun lt!182407 () ListLongMap!5367)

(assert (=> b!388359 (= lt!182407 (getCurrentListMapNoExtraKeys!933 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182416 () (_ BitVec 64))

(assert (=> b!388359 (= lt!182416 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!182418 () (_ BitVec 64))

(assert (=> b!388359 (= lt!182418 (select (arr!10978 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!182417 () Unit!11883)

(declare-fun addApplyDifferent!273 (ListLongMap!5367 (_ BitVec 64) V!13877 (_ BitVec 64)) Unit!11883)

(assert (=> b!388359 (= lt!182417 (addApplyDifferent!273 lt!182407 lt!182416 minValue!472 lt!182418))))

(assert (=> b!388359 (= (apply!297 (+!997 lt!182407 (tuple2!6441 lt!182416 minValue!472)) lt!182418) (apply!297 lt!182407 lt!182418))))

(declare-fun lt!182415 () Unit!11883)

(assert (=> b!388359 (= lt!182415 lt!182417)))

(declare-fun lt!182402 () ListLongMap!5367)

(assert (=> b!388359 (= lt!182402 (getCurrentListMapNoExtraKeys!933 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182406 () (_ BitVec 64))

(assert (=> b!388359 (= lt!182406 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!182419 () (_ BitVec 64))

(assert (=> b!388359 (= lt!182419 (select (arr!10978 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!182421 () Unit!11883)

(assert (=> b!388359 (= lt!182421 (addApplyDifferent!273 lt!182402 lt!182406 zeroValue!472 lt!182419))))

(assert (=> b!388359 (= (apply!297 (+!997 lt!182402 (tuple2!6441 lt!182406 zeroValue!472)) lt!182419) (apply!297 lt!182402 lt!182419))))

(declare-fun lt!182410 () Unit!11883)

(assert (=> b!388359 (= lt!182410 lt!182421)))

(declare-fun lt!182411 () ListLongMap!5367)

(assert (=> b!388359 (= lt!182411 (getCurrentListMapNoExtraKeys!933 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182412 () (_ BitVec 64))

(assert (=> b!388359 (= lt!182412 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!182403 () (_ BitVec 64))

(assert (=> b!388359 (= lt!182403 (select (arr!10978 _keys!658) #b00000000000000000000000000000000))))

(assert (=> b!388359 (= lt!182408 (addApplyDifferent!273 lt!182411 lt!182412 minValue!472 lt!182403))))

(assert (=> b!388359 (= (apply!297 (+!997 lt!182411 (tuple2!6441 lt!182412 minValue!472)) lt!182403) (apply!297 lt!182411 lt!182403))))

(declare-fun b!388360 () Bool)

(declare-fun res!222150 () Bool)

(assert (=> b!388360 (=> (not res!222150) (not e!235317))))

(assert (=> b!388360 (= res!222150 e!235311)))

(declare-fun c!53882 () Bool)

(assert (=> b!388360 (= c!53882 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!388361 () Bool)

(assert (=> b!388361 (= e!235318 (= (apply!297 lt!182422 (select (arr!10978 _keys!658) #b00000000000000000000000000000000)) (get!5564 (select (arr!10979 _values!506) #b00000000000000000000000000000000) (dynLambda!635 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!388361 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11331 _values!506)))))

(assert (=> b!388361 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11330 _keys!658)))))

(declare-fun b!388362 () Bool)

(assert (=> b!388362 (= e!235315 (= (apply!297 lt!182422 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun b!388363 () Bool)

(assert (=> b!388363 (= e!235312 (validKeyInArray!0 (select (arr!10978 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!388364 () Bool)

(assert (=> b!388364 (= e!235317 e!235321)))

(declare-fun c!53879 () Bool)

(assert (=> b!388364 (= c!53879 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!27325 () Bool)

(assert (=> bm!27325 (= call!27326 (contains!2441 lt!182422 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!388365 () Bool)

(declare-fun c!53881 () Bool)

(assert (=> b!388365 (= c!53881 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!388365 (= e!235319 e!235309)))

(declare-fun bm!27326 () Bool)

(assert (=> bm!27326 (= call!27325 call!27327)))

(declare-fun bm!27327 () Bool)

(assert (=> bm!27327 (= call!27324 call!27329)))

(declare-fun b!388366 () Bool)

(declare-fun res!222152 () Bool)

(assert (=> b!388366 (=> (not res!222152) (not e!235317))))

(assert (=> b!388366 (= res!222152 e!235320)))

(declare-fun res!222151 () Bool)

(assert (=> b!388366 (=> res!222151 e!235320)))

(declare-fun e!235313 () Bool)

(assert (=> b!388366 (= res!222151 (not e!235313))))

(declare-fun res!222148 () Bool)

(assert (=> b!388366 (=> (not res!222148) (not e!235313))))

(assert (=> b!388366 (= res!222148 (bvslt #b00000000000000000000000000000000 (size!11330 _keys!658)))))

(declare-fun b!388367 () Bool)

(assert (=> b!388367 (= e!235310 (= (apply!297 lt!182422 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun b!388368 () Bool)

(assert (=> b!388368 (= e!235313 (validKeyInArray!0 (select (arr!10978 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!388369 () Bool)

(assert (=> b!388369 (= e!235316 (+!997 call!27329 (tuple2!6441 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(assert (= (and d!72675 c!53878) b!388369))

(assert (= (and d!72675 (not c!53878)) b!388351))

(assert (= (and b!388351 c!53883) b!388350))

(assert (= (and b!388351 (not c!53883)) b!388365))

(assert (= (and b!388365 c!53881) b!388355))

(assert (= (and b!388365 (not c!53881)) b!388357))

(assert (= (or b!388355 b!388357) bm!27326))

(assert (= (or b!388350 bm!27326) bm!27322))

(assert (= (or b!388350 b!388355) bm!27327))

(assert (= (or b!388369 bm!27322) bm!27321))

(assert (= (or b!388369 bm!27327) bm!27324))

(assert (= (and d!72675 res!222145) b!388363))

(assert (= (and d!72675 c!53880) b!388359))

(assert (= (and d!72675 (not c!53880)) b!388358))

(assert (= (and d!72675 res!222146) b!388366))

(assert (= (and b!388366 res!222148) b!388368))

(assert (= (and b!388366 (not res!222151)) b!388352))

(assert (= (and b!388352 res!222147) b!388361))

(assert (= (and b!388366 res!222152) b!388360))

(assert (= (and b!388360 c!53882) b!388354))

(assert (= (and b!388360 (not c!53882)) b!388353))

(assert (= (and b!388354 res!222153) b!388367))

(assert (= (or b!388354 b!388353) bm!27325))

(assert (= (and b!388360 res!222150) b!388364))

(assert (= (and b!388364 c!53879) b!388349))

(assert (= (and b!388364 (not c!53879)) b!388356))

(assert (= (and b!388349 res!222149) b!388362))

(assert (= (or b!388349 b!388356) bm!27323))

(declare-fun b_lambda!8565 () Bool)

(assert (=> (not b_lambda!8565) (not b!388361)))

(assert (=> b!388361 t!11487))

(declare-fun b_and!16179 () Bool)

(assert (= b_and!16177 (and (=> t!11487 result!5715) b_and!16179)))

(declare-fun m!384321 () Bool)

(assert (=> b!388367 m!384321))

(declare-fun m!384323 () Bool)

(assert (=> bm!27323 m!384323))

(declare-fun m!384325 () Bool)

(assert (=> b!388369 m!384325))

(declare-fun m!384327 () Bool)

(assert (=> bm!27325 m!384327))

(assert (=> b!388368 m!384297))

(assert (=> b!388368 m!384297))

(assert (=> b!388368 m!384313))

(declare-fun m!384329 () Bool)

(assert (=> b!388362 m!384329))

(assert (=> b!388363 m!384297))

(assert (=> b!388363 m!384297))

(assert (=> b!388363 m!384313))

(assert (=> d!72675 m!384203))

(assert (=> b!388352 m!384297))

(assert (=> b!388352 m!384297))

(declare-fun m!384331 () Bool)

(assert (=> b!388352 m!384331))

(assert (=> bm!27321 m!384179))

(assert (=> b!388359 m!384297))

(declare-fun m!384333 () Bool)

(assert (=> b!388359 m!384333))

(declare-fun m!384335 () Bool)

(assert (=> b!388359 m!384335))

(declare-fun m!384337 () Bool)

(assert (=> b!388359 m!384337))

(declare-fun m!384339 () Bool)

(assert (=> b!388359 m!384339))

(declare-fun m!384341 () Bool)

(assert (=> b!388359 m!384341))

(declare-fun m!384343 () Bool)

(assert (=> b!388359 m!384343))

(declare-fun m!384345 () Bool)

(assert (=> b!388359 m!384345))

(declare-fun m!384347 () Bool)

(assert (=> b!388359 m!384347))

(assert (=> b!388359 m!384337))

(declare-fun m!384349 () Bool)

(assert (=> b!388359 m!384349))

(assert (=> b!388359 m!384333))

(assert (=> b!388359 m!384179))

(declare-fun m!384351 () Bool)

(assert (=> b!388359 m!384351))

(declare-fun m!384353 () Bool)

(assert (=> b!388359 m!384353))

(assert (=> b!388359 m!384343))

(declare-fun m!384355 () Bool)

(assert (=> b!388359 m!384355))

(declare-fun m!384357 () Bool)

(assert (=> b!388359 m!384357))

(declare-fun m!384359 () Bool)

(assert (=> b!388359 m!384359))

(assert (=> b!388359 m!384345))

(declare-fun m!384361 () Bool)

(assert (=> b!388359 m!384361))

(declare-fun m!384363 () Bool)

(assert (=> bm!27324 m!384363))

(assert (=> b!388361 m!384297))

(assert (=> b!388361 m!384297))

(declare-fun m!384365 () Bool)

(assert (=> b!388361 m!384365))

(assert (=> b!388361 m!384277))

(assert (=> b!388361 m!384305))

(assert (=> b!388361 m!384277))

(assert (=> b!388361 m!384307))

(assert (=> b!388361 m!384305))

(assert (=> b!388204 d!72675))

(declare-fun b!388376 () Bool)

(declare-fun call!27336 () ListLongMap!5367)

(declare-fun e!235327 () Bool)

(declare-fun call!27335 () ListLongMap!5367)

(assert (=> b!388376 (= e!235327 (= call!27336 (+!997 call!27335 (tuple2!6441 k0!778 v!373))))))

(declare-fun bm!27332 () Bool)

(assert (=> bm!27332 (= call!27336 (getCurrentListMapNoExtraKeys!933 (array!23026 (store (arr!10978 _keys!658) i!548 k0!778) (size!11330 _keys!658)) (array!23028 (store (arr!10979 _values!506) i!548 (ValueCellFull!4446 v!373)) (size!11331 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!388377 () Bool)

(assert (=> b!388377 (= e!235327 (= call!27336 call!27335))))

(declare-fun d!72677 () Bool)

(declare-fun e!235326 () Bool)

(assert (=> d!72677 e!235326))

(declare-fun res!222156 () Bool)

(assert (=> d!72677 (=> (not res!222156) (not e!235326))))

(assert (=> d!72677 (= res!222156 (and (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11330 _keys!658)))) (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11331 _values!506)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11330 _keys!658)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11331 _values!506))))))))

(declare-fun lt!182426 () Unit!11883)

(declare-fun choose!1319 (array!23025 array!23027 (_ BitVec 32) (_ BitVec 32) V!13877 V!13877 (_ BitVec 32) (_ BitVec 64) V!13877 (_ BitVec 32) Int) Unit!11883)

(assert (=> d!72677 (= lt!182426 (choose!1319 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> d!72677 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!11330 _keys!658)))))

(assert (=> d!72677 (= (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!228 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514) lt!182426)))

(declare-fun b!388378 () Bool)

(assert (=> b!388378 (= e!235326 e!235327)))

(declare-fun c!53886 () Bool)

(assert (=> b!388378 (= c!53886 (bvsle #b00000000000000000000000000000000 i!548))))

(declare-fun bm!27333 () Bool)

(assert (=> bm!27333 (= call!27335 (getCurrentListMapNoExtraKeys!933 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (= (and d!72677 res!222156) b!388378))

(assert (= (and b!388378 c!53886) b!388376))

(assert (= (and b!388378 (not c!53886)) b!388377))

(assert (= (or b!388376 b!388377) bm!27333))

(assert (= (or b!388376 b!388377) bm!27332))

(declare-fun m!384367 () Bool)

(assert (=> b!388376 m!384367))

(assert (=> bm!27332 m!384219))

(assert (=> bm!27332 m!384189))

(declare-fun m!384369 () Bool)

(assert (=> bm!27332 m!384369))

(declare-fun m!384371 () Bool)

(assert (=> d!72677 m!384371))

(assert (=> bm!27333 m!384179))

(assert (=> b!388204 d!72677))

(declare-fun b!388379 () Bool)

(declare-fun e!235340 () Bool)

(declare-fun e!235334 () Bool)

(assert (=> b!388379 (= e!235340 e!235334)))

(declare-fun res!222161 () Bool)

(declare-fun call!27341 () Bool)

(assert (=> b!388379 (= res!222161 call!27341)))

(assert (=> b!388379 (=> (not res!222161) (not e!235334))))

(declare-fun b!388380 () Bool)

(declare-fun e!235338 () ListLongMap!5367)

(declare-fun call!27337 () ListLongMap!5367)

(assert (=> b!388380 (= e!235338 call!27337)))

(declare-fun b!388381 () Bool)

(declare-fun e!235335 () ListLongMap!5367)

(assert (=> b!388381 (= e!235335 e!235338)))

(declare-fun c!53892 () Bool)

(assert (=> b!388381 (= c!53892 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!388382 () Bool)

(declare-fun e!235339 () Bool)

(declare-fun e!235337 () Bool)

(assert (=> b!388382 (= e!235339 e!235337)))

(declare-fun res!222159 () Bool)

(assert (=> b!388382 (=> (not res!222159) (not e!235337))))

(declare-fun lt!182447 () ListLongMap!5367)

(assert (=> b!388382 (= res!222159 (contains!2441 lt!182447 (select (arr!10978 lt!182305) #b00000000000000000000000000000000)))))

(assert (=> b!388382 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11330 lt!182305)))))

(declare-fun b!388383 () Bool)

(declare-fun e!235330 () Bool)

(declare-fun call!27339 () Bool)

(assert (=> b!388383 (= e!235330 (not call!27339))))

(declare-fun b!388384 () Bool)

(declare-fun e!235329 () Bool)

(assert (=> b!388384 (= e!235330 e!235329)))

(declare-fun res!222165 () Bool)

(assert (=> b!388384 (= res!222165 call!27339)))

(assert (=> b!388384 (=> (not res!222165) (not e!235329))))

(declare-fun d!72679 () Bool)

(declare-fun e!235336 () Bool)

(assert (=> d!72679 e!235336))

(declare-fun res!222158 () Bool)

(assert (=> d!72679 (=> (not res!222158) (not e!235336))))

(assert (=> d!72679 (= res!222158 (or (bvsge #b00000000000000000000000000000000 (size!11330 lt!182305)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11330 lt!182305)))))))

(declare-fun lt!182429 () ListLongMap!5367)

(assert (=> d!72679 (= lt!182447 lt!182429)))

(declare-fun lt!182430 () Unit!11883)

(declare-fun e!235333 () Unit!11883)

(assert (=> d!72679 (= lt!182430 e!235333)))

(declare-fun c!53889 () Bool)

(declare-fun e!235331 () Bool)

(assert (=> d!72679 (= c!53889 e!235331)))

(declare-fun res!222157 () Bool)

(assert (=> d!72679 (=> (not res!222157) (not e!235331))))

(assert (=> d!72679 (= res!222157 (bvslt #b00000000000000000000000000000000 (size!11330 lt!182305)))))

(assert (=> d!72679 (= lt!182429 e!235335)))

(declare-fun c!53887 () Bool)

(assert (=> d!72679 (= c!53887 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!72679 (validMask!0 mask!970)))

(assert (=> d!72679 (= (getCurrentListMap!2071 lt!182305 lt!182301 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!182447)))

(declare-fun bm!27334 () Bool)

(declare-fun call!27343 () ListLongMap!5367)

(assert (=> bm!27334 (= call!27343 (getCurrentListMapNoExtraKeys!933 lt!182305 lt!182301 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun bm!27335 () Bool)

(declare-fun call!27340 () ListLongMap!5367)

(assert (=> bm!27335 (= call!27340 call!27343)))

(declare-fun b!388385 () Bool)

(declare-fun e!235328 () ListLongMap!5367)

(assert (=> b!388385 (= e!235328 call!27337)))

(declare-fun b!388386 () Bool)

(assert (=> b!388386 (= e!235340 (not call!27341))))

(declare-fun bm!27336 () Bool)

(assert (=> bm!27336 (= call!27341 (contains!2441 lt!182447 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!388387 () Bool)

(declare-fun call!27338 () ListLongMap!5367)

(assert (=> b!388387 (= e!235328 call!27338)))

(declare-fun b!388388 () Bool)

(declare-fun Unit!11888 () Unit!11883)

(assert (=> b!388388 (= e!235333 Unit!11888)))

(declare-fun call!27342 () ListLongMap!5367)

(declare-fun bm!27337 () Bool)

(assert (=> bm!27337 (= call!27342 (+!997 (ite c!53887 call!27343 (ite c!53892 call!27340 call!27338)) (ite (or c!53887 c!53892) (tuple2!6441 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6441 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun b!388389 () Bool)

(declare-fun lt!182433 () Unit!11883)

(assert (=> b!388389 (= e!235333 lt!182433)))

(declare-fun lt!182445 () ListLongMap!5367)

(assert (=> b!388389 (= lt!182445 (getCurrentListMapNoExtraKeys!933 lt!182305 lt!182301 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182448 () (_ BitVec 64))

(assert (=> b!388389 (= lt!182448 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!182438 () (_ BitVec 64))

(assert (=> b!388389 (= lt!182438 (select (arr!10978 lt!182305) #b00000000000000000000000000000000))))

(declare-fun lt!182439 () Unit!11883)

(assert (=> b!388389 (= lt!182439 (addStillContains!273 lt!182445 lt!182448 zeroValue!472 lt!182438))))

(assert (=> b!388389 (contains!2441 (+!997 lt!182445 (tuple2!6441 lt!182448 zeroValue!472)) lt!182438)))

(declare-fun lt!182434 () Unit!11883)

(assert (=> b!388389 (= lt!182434 lt!182439)))

(declare-fun lt!182432 () ListLongMap!5367)

(assert (=> b!388389 (= lt!182432 (getCurrentListMapNoExtraKeys!933 lt!182305 lt!182301 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182441 () (_ BitVec 64))

(assert (=> b!388389 (= lt!182441 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!182443 () (_ BitVec 64))

(assert (=> b!388389 (= lt!182443 (select (arr!10978 lt!182305) #b00000000000000000000000000000000))))

(declare-fun lt!182442 () Unit!11883)

(assert (=> b!388389 (= lt!182442 (addApplyDifferent!273 lt!182432 lt!182441 minValue!472 lt!182443))))

(assert (=> b!388389 (= (apply!297 (+!997 lt!182432 (tuple2!6441 lt!182441 minValue!472)) lt!182443) (apply!297 lt!182432 lt!182443))))

(declare-fun lt!182440 () Unit!11883)

(assert (=> b!388389 (= lt!182440 lt!182442)))

(declare-fun lt!182427 () ListLongMap!5367)

(assert (=> b!388389 (= lt!182427 (getCurrentListMapNoExtraKeys!933 lt!182305 lt!182301 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182431 () (_ BitVec 64))

(assert (=> b!388389 (= lt!182431 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!182444 () (_ BitVec 64))

(assert (=> b!388389 (= lt!182444 (select (arr!10978 lt!182305) #b00000000000000000000000000000000))))

(declare-fun lt!182446 () Unit!11883)

(assert (=> b!388389 (= lt!182446 (addApplyDifferent!273 lt!182427 lt!182431 zeroValue!472 lt!182444))))

(assert (=> b!388389 (= (apply!297 (+!997 lt!182427 (tuple2!6441 lt!182431 zeroValue!472)) lt!182444) (apply!297 lt!182427 lt!182444))))

(declare-fun lt!182435 () Unit!11883)

(assert (=> b!388389 (= lt!182435 lt!182446)))

(declare-fun lt!182436 () ListLongMap!5367)

(assert (=> b!388389 (= lt!182436 (getCurrentListMapNoExtraKeys!933 lt!182305 lt!182301 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182437 () (_ BitVec 64))

(assert (=> b!388389 (= lt!182437 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!182428 () (_ BitVec 64))

(assert (=> b!388389 (= lt!182428 (select (arr!10978 lt!182305) #b00000000000000000000000000000000))))

(assert (=> b!388389 (= lt!182433 (addApplyDifferent!273 lt!182436 lt!182437 minValue!472 lt!182428))))

(assert (=> b!388389 (= (apply!297 (+!997 lt!182436 (tuple2!6441 lt!182437 minValue!472)) lt!182428) (apply!297 lt!182436 lt!182428))))

(declare-fun b!388390 () Bool)

(declare-fun res!222162 () Bool)

(assert (=> b!388390 (=> (not res!222162) (not e!235336))))

(assert (=> b!388390 (= res!222162 e!235330)))

(declare-fun c!53891 () Bool)

(assert (=> b!388390 (= c!53891 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!388391 () Bool)

(assert (=> b!388391 (= e!235337 (= (apply!297 lt!182447 (select (arr!10978 lt!182305) #b00000000000000000000000000000000)) (get!5564 (select (arr!10979 lt!182301) #b00000000000000000000000000000000) (dynLambda!635 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!388391 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11331 lt!182301)))))

(assert (=> b!388391 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11330 lt!182305)))))

(declare-fun b!388392 () Bool)

(assert (=> b!388392 (= e!235334 (= (apply!297 lt!182447 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun b!388393 () Bool)

(assert (=> b!388393 (= e!235331 (validKeyInArray!0 (select (arr!10978 lt!182305) #b00000000000000000000000000000000)))))

(declare-fun b!388394 () Bool)

(assert (=> b!388394 (= e!235336 e!235340)))

(declare-fun c!53888 () Bool)

(assert (=> b!388394 (= c!53888 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!27338 () Bool)

(assert (=> bm!27338 (= call!27339 (contains!2441 lt!182447 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!388395 () Bool)

(declare-fun c!53890 () Bool)

(assert (=> b!388395 (= c!53890 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!388395 (= e!235338 e!235328)))

(declare-fun bm!27339 () Bool)

(assert (=> bm!27339 (= call!27338 call!27340)))

(declare-fun bm!27340 () Bool)

(assert (=> bm!27340 (= call!27337 call!27342)))

(declare-fun b!388396 () Bool)

(declare-fun res!222164 () Bool)

(assert (=> b!388396 (=> (not res!222164) (not e!235336))))

(assert (=> b!388396 (= res!222164 e!235339)))

(declare-fun res!222163 () Bool)

(assert (=> b!388396 (=> res!222163 e!235339)))

(declare-fun e!235332 () Bool)

(assert (=> b!388396 (= res!222163 (not e!235332))))

(declare-fun res!222160 () Bool)

(assert (=> b!388396 (=> (not res!222160) (not e!235332))))

(assert (=> b!388396 (= res!222160 (bvslt #b00000000000000000000000000000000 (size!11330 lt!182305)))))

(declare-fun b!388397 () Bool)

(assert (=> b!388397 (= e!235329 (= (apply!297 lt!182447 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun b!388398 () Bool)

(assert (=> b!388398 (= e!235332 (validKeyInArray!0 (select (arr!10978 lt!182305) #b00000000000000000000000000000000)))))

(declare-fun b!388399 () Bool)

(assert (=> b!388399 (= e!235335 (+!997 call!27342 (tuple2!6441 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(assert (= (and d!72679 c!53887) b!388399))

(assert (= (and d!72679 (not c!53887)) b!388381))

(assert (= (and b!388381 c!53892) b!388380))

(assert (= (and b!388381 (not c!53892)) b!388395))

(assert (= (and b!388395 c!53890) b!388385))

(assert (= (and b!388395 (not c!53890)) b!388387))

(assert (= (or b!388385 b!388387) bm!27339))

(assert (= (or b!388380 bm!27339) bm!27335))

(assert (= (or b!388380 b!388385) bm!27340))

(assert (= (or b!388399 bm!27335) bm!27334))

(assert (= (or b!388399 bm!27340) bm!27337))

(assert (= (and d!72679 res!222157) b!388393))

(assert (= (and d!72679 c!53889) b!388389))

(assert (= (and d!72679 (not c!53889)) b!388388))

(assert (= (and d!72679 res!222158) b!388396))

(assert (= (and b!388396 res!222160) b!388398))

(assert (= (and b!388396 (not res!222163)) b!388382))

(assert (= (and b!388382 res!222159) b!388391))

(assert (= (and b!388396 res!222164) b!388390))

(assert (= (and b!388390 c!53891) b!388384))

(assert (= (and b!388390 (not c!53891)) b!388383))

(assert (= (and b!388384 res!222165) b!388397))

(assert (= (or b!388384 b!388383) bm!27338))

(assert (= (and b!388390 res!222162) b!388394))

(assert (= (and b!388394 c!53888) b!388379))

(assert (= (and b!388394 (not c!53888)) b!388386))

(assert (= (and b!388379 res!222161) b!388392))

(assert (= (or b!388379 b!388386) bm!27336))

(declare-fun b_lambda!8567 () Bool)

(assert (=> (not b_lambda!8567) (not b!388391)))

(assert (=> b!388391 t!11487))

(declare-fun b_and!16181 () Bool)

(assert (= b_and!16179 (and (=> t!11487 result!5715) b_and!16181)))

(declare-fun m!384373 () Bool)

(assert (=> b!388397 m!384373))

(declare-fun m!384375 () Bool)

(assert (=> bm!27336 m!384375))

(declare-fun m!384377 () Bool)

(assert (=> b!388399 m!384377))

(declare-fun m!384379 () Bool)

(assert (=> bm!27338 m!384379))

(assert (=> b!388398 m!384267))

(assert (=> b!388398 m!384267))

(assert (=> b!388398 m!384285))

(declare-fun m!384381 () Bool)

(assert (=> b!388392 m!384381))

(assert (=> b!388393 m!384267))

(assert (=> b!388393 m!384267))

(assert (=> b!388393 m!384285))

(assert (=> d!72679 m!384203))

(assert (=> b!388382 m!384267))

(assert (=> b!388382 m!384267))

(declare-fun m!384383 () Bool)

(assert (=> b!388382 m!384383))

(assert (=> bm!27334 m!384185))

(assert (=> b!388389 m!384267))

(declare-fun m!384385 () Bool)

(assert (=> b!388389 m!384385))

(declare-fun m!384387 () Bool)

(assert (=> b!388389 m!384387))

(declare-fun m!384389 () Bool)

(assert (=> b!388389 m!384389))

(declare-fun m!384391 () Bool)

(assert (=> b!388389 m!384391))

(declare-fun m!384393 () Bool)

(assert (=> b!388389 m!384393))

(declare-fun m!384395 () Bool)

(assert (=> b!388389 m!384395))

(declare-fun m!384397 () Bool)

(assert (=> b!388389 m!384397))

(declare-fun m!384399 () Bool)

(assert (=> b!388389 m!384399))

(assert (=> b!388389 m!384389))

(declare-fun m!384401 () Bool)

(assert (=> b!388389 m!384401))

(assert (=> b!388389 m!384385))

(assert (=> b!388389 m!384185))

(declare-fun m!384403 () Bool)

(assert (=> b!388389 m!384403))

(declare-fun m!384405 () Bool)

(assert (=> b!388389 m!384405))

(assert (=> b!388389 m!384395))

(declare-fun m!384407 () Bool)

(assert (=> b!388389 m!384407))

(declare-fun m!384409 () Bool)

(assert (=> b!388389 m!384409))

(declare-fun m!384411 () Bool)

(assert (=> b!388389 m!384411))

(assert (=> b!388389 m!384397))

(declare-fun m!384413 () Bool)

(assert (=> b!388389 m!384413))

(declare-fun m!384415 () Bool)

(assert (=> bm!27337 m!384415))

(assert (=> b!388391 m!384267))

(assert (=> b!388391 m!384267))

(declare-fun m!384417 () Bool)

(assert (=> b!388391 m!384417))

(assert (=> b!388391 m!384277))

(assert (=> b!388391 m!384275))

(assert (=> b!388391 m!384277))

(assert (=> b!388391 m!384279))

(assert (=> b!388391 m!384275))

(assert (=> b!388204 d!72679))

(declare-fun d!72681 () Bool)

(declare-fun e!235343 () Bool)

(assert (=> d!72681 e!235343))

(declare-fun res!222171 () Bool)

(assert (=> d!72681 (=> (not res!222171) (not e!235343))))

(declare-fun lt!182457 () ListLongMap!5367)

(assert (=> d!72681 (= res!222171 (contains!2441 lt!182457 (_1!3230 (tuple2!6441 k0!778 v!373))))))

(declare-fun lt!182460 () List!6325)

(assert (=> d!72681 (= lt!182457 (ListLongMap!5368 lt!182460))))

(declare-fun lt!182458 () Unit!11883)

(declare-fun lt!182459 () Unit!11883)

(assert (=> d!72681 (= lt!182458 lt!182459)))

(declare-datatypes ((Option!360 0))(
  ( (Some!359 (v!7032 V!13877)) (None!358) )
))
(declare-fun getValueByKey!354 (List!6325 (_ BitVec 64)) Option!360)

(assert (=> d!72681 (= (getValueByKey!354 lt!182460 (_1!3230 (tuple2!6441 k0!778 v!373))) (Some!359 (_2!3230 (tuple2!6441 k0!778 v!373))))))

(declare-fun lemmaContainsTupThenGetReturnValue!178 (List!6325 (_ BitVec 64) V!13877) Unit!11883)

(assert (=> d!72681 (= lt!182459 (lemmaContainsTupThenGetReturnValue!178 lt!182460 (_1!3230 (tuple2!6441 k0!778 v!373)) (_2!3230 (tuple2!6441 k0!778 v!373))))))

(declare-fun insertStrictlySorted!180 (List!6325 (_ BitVec 64) V!13877) List!6325)

(assert (=> d!72681 (= lt!182460 (insertStrictlySorted!180 (toList!2699 lt!182302) (_1!3230 (tuple2!6441 k0!778 v!373)) (_2!3230 (tuple2!6441 k0!778 v!373))))))

(assert (=> d!72681 (= (+!997 lt!182302 (tuple2!6441 k0!778 v!373)) lt!182457)))

(declare-fun b!388404 () Bool)

(declare-fun res!222170 () Bool)

(assert (=> b!388404 (=> (not res!222170) (not e!235343))))

(assert (=> b!388404 (= res!222170 (= (getValueByKey!354 (toList!2699 lt!182457) (_1!3230 (tuple2!6441 k0!778 v!373))) (Some!359 (_2!3230 (tuple2!6441 k0!778 v!373)))))))

(declare-fun b!388405 () Bool)

(declare-fun contains!2442 (List!6325 tuple2!6440) Bool)

(assert (=> b!388405 (= e!235343 (contains!2442 (toList!2699 lt!182457) (tuple2!6441 k0!778 v!373)))))

(assert (= (and d!72681 res!222171) b!388404))

(assert (= (and b!388404 res!222170) b!388405))

(declare-fun m!384419 () Bool)

(assert (=> d!72681 m!384419))

(declare-fun m!384421 () Bool)

(assert (=> d!72681 m!384421))

(declare-fun m!384423 () Bool)

(assert (=> d!72681 m!384423))

(declare-fun m!384425 () Bool)

(assert (=> d!72681 m!384425))

(declare-fun m!384427 () Bool)

(assert (=> b!388404 m!384427))

(declare-fun m!384429 () Bool)

(assert (=> b!388405 m!384429))

(assert (=> b!388204 d!72681))

(declare-fun b!388416 () Bool)

(declare-fun e!235355 () Bool)

(declare-fun e!235354 () Bool)

(assert (=> b!388416 (= e!235355 e!235354)))

(declare-fun res!222178 () Bool)

(assert (=> b!388416 (=> (not res!222178) (not e!235354))))

(declare-fun e!235353 () Bool)

(assert (=> b!388416 (= res!222178 (not e!235353))))

(declare-fun res!222179 () Bool)

(assert (=> b!388416 (=> (not res!222179) (not e!235353))))

(assert (=> b!388416 (= res!222179 (validKeyInArray!0 (select (arr!10978 lt!182305) #b00000000000000000000000000000000)))))

(declare-fun bm!27343 () Bool)

(declare-fun call!27346 () Bool)

(declare-fun c!53895 () Bool)

(assert (=> bm!27343 (= call!27346 (arrayNoDuplicates!0 lt!182305 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53895 (Cons!6320 (select (arr!10978 lt!182305) #b00000000000000000000000000000000) Nil!6321) Nil!6321)))))

(declare-fun d!72683 () Bool)

(declare-fun res!222180 () Bool)

(assert (=> d!72683 (=> res!222180 e!235355)))

(assert (=> d!72683 (= res!222180 (bvsge #b00000000000000000000000000000000 (size!11330 lt!182305)))))

(assert (=> d!72683 (= (arrayNoDuplicates!0 lt!182305 #b00000000000000000000000000000000 Nil!6321) e!235355)))

(declare-fun b!388417 () Bool)

(declare-fun e!235352 () Bool)

(assert (=> b!388417 (= e!235352 call!27346)))

(declare-fun b!388418 () Bool)

(declare-fun contains!2443 (List!6324 (_ BitVec 64)) Bool)

(assert (=> b!388418 (= e!235353 (contains!2443 Nil!6321 (select (arr!10978 lt!182305) #b00000000000000000000000000000000)))))

(declare-fun b!388419 () Bool)

(assert (=> b!388419 (= e!235354 e!235352)))

(assert (=> b!388419 (= c!53895 (validKeyInArray!0 (select (arr!10978 lt!182305) #b00000000000000000000000000000000)))))

(declare-fun b!388420 () Bool)

(assert (=> b!388420 (= e!235352 call!27346)))

(assert (= (and d!72683 (not res!222180)) b!388416))

(assert (= (and b!388416 res!222179) b!388418))

(assert (= (and b!388416 res!222178) b!388419))

(assert (= (and b!388419 c!53895) b!388420))

(assert (= (and b!388419 (not c!53895)) b!388417))

(assert (= (or b!388420 b!388417) bm!27343))

(assert (=> b!388416 m!384267))

(assert (=> b!388416 m!384267))

(assert (=> b!388416 m!384285))

(assert (=> bm!27343 m!384267))

(declare-fun m!384431 () Bool)

(assert (=> bm!27343 m!384431))

(assert (=> b!388418 m!384267))

(assert (=> b!388418 m!384267))

(declare-fun m!384433 () Bool)

(assert (=> b!388418 m!384433))

(assert (=> b!388419 m!384267))

(assert (=> b!388419 m!384267))

(assert (=> b!388419 m!384285))

(assert (=> b!388213 d!72683))

(declare-fun d!72685 () Bool)

(declare-fun e!235356 () Bool)

(assert (=> d!72685 e!235356))

(declare-fun res!222182 () Bool)

(assert (=> d!72685 (=> (not res!222182) (not e!235356))))

(declare-fun lt!182461 () ListLongMap!5367)

(assert (=> d!72685 (= res!222182 (contains!2441 lt!182461 (_1!3230 (tuple2!6441 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun lt!182464 () List!6325)

(assert (=> d!72685 (= lt!182461 (ListLongMap!5368 lt!182464))))

(declare-fun lt!182462 () Unit!11883)

(declare-fun lt!182463 () Unit!11883)

(assert (=> d!72685 (= lt!182462 lt!182463)))

(assert (=> d!72685 (= (getValueByKey!354 lt!182464 (_1!3230 (tuple2!6441 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))) (Some!359 (_2!3230 (tuple2!6441 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(assert (=> d!72685 (= lt!182463 (lemmaContainsTupThenGetReturnValue!178 lt!182464 (_1!3230 (tuple2!6441 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)) (_2!3230 (tuple2!6441 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(assert (=> d!72685 (= lt!182464 (insertStrictlySorted!180 (toList!2699 (+!997 lt!182300 (tuple2!6441 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))) (_1!3230 (tuple2!6441 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)) (_2!3230 (tuple2!6441 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(assert (=> d!72685 (= (+!997 (+!997 lt!182300 (tuple2!6441 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472)) (tuple2!6441 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)) lt!182461)))

(declare-fun b!388421 () Bool)

(declare-fun res!222181 () Bool)

(assert (=> b!388421 (=> (not res!222181) (not e!235356))))

(assert (=> b!388421 (= res!222181 (= (getValueByKey!354 (toList!2699 lt!182461) (_1!3230 (tuple2!6441 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))) (Some!359 (_2!3230 (tuple2!6441 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))))

(declare-fun b!388422 () Bool)

(assert (=> b!388422 (= e!235356 (contains!2442 (toList!2699 lt!182461) (tuple2!6441 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(assert (= (and d!72685 res!222182) b!388421))

(assert (= (and b!388421 res!222181) b!388422))

(declare-fun m!384435 () Bool)

(assert (=> d!72685 m!384435))

(declare-fun m!384437 () Bool)

(assert (=> d!72685 m!384437))

(declare-fun m!384439 () Bool)

(assert (=> d!72685 m!384439))

(declare-fun m!384441 () Bool)

(assert (=> d!72685 m!384441))

(declare-fun m!384443 () Bool)

(assert (=> b!388421 m!384443))

(declare-fun m!384445 () Bool)

(assert (=> b!388422 m!384445))

(assert (=> b!388209 d!72685))

(declare-fun d!72687 () Bool)

(declare-fun e!235357 () Bool)

(assert (=> d!72687 e!235357))

(declare-fun res!222184 () Bool)

(assert (=> d!72687 (=> (not res!222184) (not e!235357))))

(declare-fun lt!182465 () ListLongMap!5367)

(assert (=> d!72687 (= res!222184 (contains!2441 lt!182465 (_1!3230 (tuple2!6441 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))))

(declare-fun lt!182468 () List!6325)

(assert (=> d!72687 (= lt!182465 (ListLongMap!5368 lt!182468))))

(declare-fun lt!182466 () Unit!11883)

(declare-fun lt!182467 () Unit!11883)

(assert (=> d!72687 (= lt!182466 lt!182467)))

(assert (=> d!72687 (= (getValueByKey!354 lt!182468 (_1!3230 (tuple2!6441 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))) (Some!359 (_2!3230 (tuple2!6441 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))))

(assert (=> d!72687 (= lt!182467 (lemmaContainsTupThenGetReturnValue!178 lt!182468 (_1!3230 (tuple2!6441 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472)) (_2!3230 (tuple2!6441 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))))

(assert (=> d!72687 (= lt!182468 (insertStrictlySorted!180 (toList!2699 lt!182300) (_1!3230 (tuple2!6441 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472)) (_2!3230 (tuple2!6441 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))))

(assert (=> d!72687 (= (+!997 lt!182300 (tuple2!6441 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472)) lt!182465)))

(declare-fun b!388423 () Bool)

(declare-fun res!222183 () Bool)

(assert (=> b!388423 (=> (not res!222183) (not e!235357))))

(assert (=> b!388423 (= res!222183 (= (getValueByKey!354 (toList!2699 lt!182465) (_1!3230 (tuple2!6441 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))) (Some!359 (_2!3230 (tuple2!6441 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472)))))))

(declare-fun b!388424 () Bool)

(assert (=> b!388424 (= e!235357 (contains!2442 (toList!2699 lt!182465) (tuple2!6441 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472)))))

(assert (= (and d!72687 res!222184) b!388423))

(assert (= (and b!388423 res!222183) b!388424))

(declare-fun m!384447 () Bool)

(assert (=> d!72687 m!384447))

(declare-fun m!384449 () Bool)

(assert (=> d!72687 m!384449))

(declare-fun m!384451 () Bool)

(assert (=> d!72687 m!384451))

(declare-fun m!384453 () Bool)

(assert (=> d!72687 m!384453))

(declare-fun m!384455 () Bool)

(assert (=> b!388423 m!384455))

(declare-fun m!384457 () Bool)

(assert (=> b!388424 m!384457))

(assert (=> b!388209 d!72687))

(declare-fun b!388433 () Bool)

(declare-fun e!235364 () Bool)

(declare-fun e!235365 () Bool)

(assert (=> b!388433 (= e!235364 e!235365)))

(declare-fun lt!182477 () (_ BitVec 64))

(assert (=> b!388433 (= lt!182477 (select (arr!10978 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!182475 () Unit!11883)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23025 (_ BitVec 64) (_ BitVec 32)) Unit!11883)

(assert (=> b!388433 (= lt!182475 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!658 lt!182477 #b00000000000000000000000000000000))))

(assert (=> b!388433 (arrayContainsKey!0 _keys!658 lt!182477 #b00000000000000000000000000000000)))

(declare-fun lt!182476 () Unit!11883)

(assert (=> b!388433 (= lt!182476 lt!182475)))

(declare-fun res!222189 () Bool)

(declare-datatypes ((SeekEntryResult!3496 0))(
  ( (MissingZero!3496 (index!16163 (_ BitVec 32))) (Found!3496 (index!16164 (_ BitVec 32))) (Intermediate!3496 (undefined!4308 Bool) (index!16165 (_ BitVec 32)) (x!38164 (_ BitVec 32))) (Undefined!3496) (MissingVacant!3496 (index!16166 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!23025 (_ BitVec 32)) SeekEntryResult!3496)

(assert (=> b!388433 (= res!222189 (= (seekEntryOrOpen!0 (select (arr!10978 _keys!658) #b00000000000000000000000000000000) _keys!658 mask!970) (Found!3496 #b00000000000000000000000000000000)))))

(assert (=> b!388433 (=> (not res!222189) (not e!235365))))

(declare-fun b!388434 () Bool)

(declare-fun e!235366 () Bool)

(assert (=> b!388434 (= e!235366 e!235364)))

(declare-fun c!53898 () Bool)

(assert (=> b!388434 (= c!53898 (validKeyInArray!0 (select (arr!10978 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun bm!27346 () Bool)

(declare-fun call!27349 () Bool)

(assert (=> bm!27346 (= call!27349 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!658 mask!970))))

(declare-fun b!388435 () Bool)

(assert (=> b!388435 (= e!235364 call!27349)))

(declare-fun b!388436 () Bool)

(assert (=> b!388436 (= e!235365 call!27349)))

(declare-fun d!72689 () Bool)

(declare-fun res!222190 () Bool)

(assert (=> d!72689 (=> res!222190 e!235366)))

(assert (=> d!72689 (= res!222190 (bvsge #b00000000000000000000000000000000 (size!11330 _keys!658)))))

(assert (=> d!72689 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970) e!235366)))

(assert (= (and d!72689 (not res!222190)) b!388434))

(assert (= (and b!388434 c!53898) b!388433))

(assert (= (and b!388434 (not c!53898)) b!388435))

(assert (= (and b!388433 res!222189) b!388436))

(assert (= (or b!388436 b!388435) bm!27346))

(assert (=> b!388433 m!384297))

(declare-fun m!384459 () Bool)

(assert (=> b!388433 m!384459))

(declare-fun m!384461 () Bool)

(assert (=> b!388433 m!384461))

(assert (=> b!388433 m!384297))

(declare-fun m!384463 () Bool)

(assert (=> b!388433 m!384463))

(assert (=> b!388434 m!384297))

(assert (=> b!388434 m!384297))

(assert (=> b!388434 m!384313))

(declare-fun m!384465 () Bool)

(assert (=> bm!27346 m!384465))

(assert (=> b!388205 d!72689))

(declare-fun d!72691 () Bool)

(declare-fun res!222195 () Bool)

(declare-fun e!235371 () Bool)

(assert (=> d!72691 (=> res!222195 e!235371)))

(assert (=> d!72691 (= res!222195 (= (select (arr!10978 _keys!658) #b00000000000000000000000000000000) k0!778))))

(assert (=> d!72691 (= (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000) e!235371)))

(declare-fun b!388441 () Bool)

(declare-fun e!235372 () Bool)

(assert (=> b!388441 (= e!235371 e!235372)))

(declare-fun res!222196 () Bool)

(assert (=> b!388441 (=> (not res!222196) (not e!235372))))

(assert (=> b!388441 (= res!222196 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!11330 _keys!658)))))

(declare-fun b!388442 () Bool)

(assert (=> b!388442 (= e!235372 (arrayContainsKey!0 _keys!658 k0!778 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!72691 (not res!222195)) b!388441))

(assert (= (and b!388441 res!222196) b!388442))

(assert (=> d!72691 m!384297))

(declare-fun m!384467 () Bool)

(assert (=> b!388442 m!384467))

(assert (=> b!388201 d!72691))

(declare-fun d!72693 () Bool)

(assert (=> d!72693 (= (validKeyInArray!0 k0!778) (and (not (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!388211 d!72693))

(declare-fun d!72695 () Bool)

(assert (=> d!72695 (= (validMask!0 mask!970) (and (or (= mask!970 #b00000000000000000000000000000111) (= mask!970 #b00000000000000000000000000001111) (= mask!970 #b00000000000000000000000000011111) (= mask!970 #b00000000000000000000000000111111) (= mask!970 #b00000000000000000000000001111111) (= mask!970 #b00000000000000000000000011111111) (= mask!970 #b00000000000000000000000111111111) (= mask!970 #b00000000000000000000001111111111) (= mask!970 #b00000000000000000000011111111111) (= mask!970 #b00000000000000000000111111111111) (= mask!970 #b00000000000000000001111111111111) (= mask!970 #b00000000000000000011111111111111) (= mask!970 #b00000000000000000111111111111111) (= mask!970 #b00000000000000001111111111111111) (= mask!970 #b00000000000000011111111111111111) (= mask!970 #b00000000000000111111111111111111) (= mask!970 #b00000000000001111111111111111111) (= mask!970 #b00000000000011111111111111111111) (= mask!970 #b00000000000111111111111111111111) (= mask!970 #b00000000001111111111111111111111) (= mask!970 #b00000000011111111111111111111111) (= mask!970 #b00000000111111111111111111111111) (= mask!970 #b00000001111111111111111111111111) (= mask!970 #b00000011111111111111111111111111) (= mask!970 #b00000111111111111111111111111111) (= mask!970 #b00001111111111111111111111111111) (= mask!970 #b00011111111111111111111111111111) (= mask!970 #b00111111111111111111111111111111)) (bvsle mask!970 #b00111111111111111111111111111111)))))

(assert (=> start!37812 d!72695))

(declare-fun d!72697 () Bool)

(assert (=> d!72697 (= (array_inv!8046 _values!506) (bvsge (size!11331 _values!506) #b00000000000000000000000000000000))))

(assert (=> start!37812 d!72697))

(declare-fun d!72699 () Bool)

(assert (=> d!72699 (= (array_inv!8047 _keys!658) (bvsge (size!11330 _keys!658) #b00000000000000000000000000000000))))

(assert (=> start!37812 d!72699))

(declare-fun b!388443 () Bool)

(declare-fun e!235376 () Bool)

(declare-fun e!235375 () Bool)

(assert (=> b!388443 (= e!235376 e!235375)))

(declare-fun res!222197 () Bool)

(assert (=> b!388443 (=> (not res!222197) (not e!235375))))

(declare-fun e!235374 () Bool)

(assert (=> b!388443 (= res!222197 (not e!235374))))

(declare-fun res!222198 () Bool)

(assert (=> b!388443 (=> (not res!222198) (not e!235374))))

(assert (=> b!388443 (= res!222198 (validKeyInArray!0 (select (arr!10978 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun bm!27347 () Bool)

(declare-fun call!27350 () Bool)

(declare-fun c!53899 () Bool)

(assert (=> bm!27347 (= call!27350 (arrayNoDuplicates!0 _keys!658 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53899 (Cons!6320 (select (arr!10978 _keys!658) #b00000000000000000000000000000000) Nil!6321) Nil!6321)))))

(declare-fun d!72701 () Bool)

(declare-fun res!222199 () Bool)

(assert (=> d!72701 (=> res!222199 e!235376)))

(assert (=> d!72701 (= res!222199 (bvsge #b00000000000000000000000000000000 (size!11330 _keys!658)))))

(assert (=> d!72701 (= (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6321) e!235376)))

(declare-fun b!388444 () Bool)

(declare-fun e!235373 () Bool)

(assert (=> b!388444 (= e!235373 call!27350)))

(declare-fun b!388445 () Bool)

(assert (=> b!388445 (= e!235374 (contains!2443 Nil!6321 (select (arr!10978 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!388446 () Bool)

(assert (=> b!388446 (= e!235375 e!235373)))

(assert (=> b!388446 (= c!53899 (validKeyInArray!0 (select (arr!10978 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!388447 () Bool)

(assert (=> b!388447 (= e!235373 call!27350)))

(assert (= (and d!72701 (not res!222199)) b!388443))

(assert (= (and b!388443 res!222198) b!388445))

(assert (= (and b!388443 res!222197) b!388446))

(assert (= (and b!388446 c!53899) b!388447))

(assert (= (and b!388446 (not c!53899)) b!388444))

(assert (= (or b!388447 b!388444) bm!27347))

(assert (=> b!388443 m!384297))

(assert (=> b!388443 m!384297))

(assert (=> b!388443 m!384313))

(assert (=> bm!27347 m!384297))

(declare-fun m!384469 () Bool)

(assert (=> bm!27347 m!384469))

(assert (=> b!388445 m!384297))

(assert (=> b!388445 m!384297))

(declare-fun m!384471 () Bool)

(assert (=> b!388445 m!384471))

(assert (=> b!388446 m!384297))

(assert (=> b!388446 m!384297))

(assert (=> b!388446 m!384313))

(assert (=> b!388203 d!72701))

(declare-fun b!388448 () Bool)

(declare-fun e!235377 () Bool)

(declare-fun e!235378 () Bool)

(assert (=> b!388448 (= e!235377 e!235378)))

(declare-fun lt!182480 () (_ BitVec 64))

(assert (=> b!388448 (= lt!182480 (select (arr!10978 lt!182305) #b00000000000000000000000000000000))))

(declare-fun lt!182478 () Unit!11883)

(assert (=> b!388448 (= lt!182478 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!182305 lt!182480 #b00000000000000000000000000000000))))

(assert (=> b!388448 (arrayContainsKey!0 lt!182305 lt!182480 #b00000000000000000000000000000000)))

(declare-fun lt!182479 () Unit!11883)

(assert (=> b!388448 (= lt!182479 lt!182478)))

(declare-fun res!222200 () Bool)

(assert (=> b!388448 (= res!222200 (= (seekEntryOrOpen!0 (select (arr!10978 lt!182305) #b00000000000000000000000000000000) lt!182305 mask!970) (Found!3496 #b00000000000000000000000000000000)))))

(assert (=> b!388448 (=> (not res!222200) (not e!235378))))

(declare-fun b!388449 () Bool)

(declare-fun e!235379 () Bool)

(assert (=> b!388449 (= e!235379 e!235377)))

(declare-fun c!53900 () Bool)

(assert (=> b!388449 (= c!53900 (validKeyInArray!0 (select (arr!10978 lt!182305) #b00000000000000000000000000000000)))))

(declare-fun bm!27348 () Bool)

(declare-fun call!27351 () Bool)

(assert (=> bm!27348 (= call!27351 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!182305 mask!970))))

(declare-fun b!388450 () Bool)

(assert (=> b!388450 (= e!235377 call!27351)))

(declare-fun b!388451 () Bool)

(assert (=> b!388451 (= e!235378 call!27351)))

(declare-fun d!72703 () Bool)

(declare-fun res!222201 () Bool)

(assert (=> d!72703 (=> res!222201 e!235379)))

(assert (=> d!72703 (= res!222201 (bvsge #b00000000000000000000000000000000 (size!11330 lt!182305)))))

(assert (=> d!72703 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182305 mask!970) e!235379)))

(assert (= (and d!72703 (not res!222201)) b!388449))

(assert (= (and b!388449 c!53900) b!388448))

(assert (= (and b!388449 (not c!53900)) b!388450))

(assert (= (and b!388448 res!222200) b!388451))

(assert (= (or b!388451 b!388450) bm!27348))

(assert (=> b!388448 m!384267))

(declare-fun m!384473 () Bool)

(assert (=> b!388448 m!384473))

(declare-fun m!384475 () Bool)

(assert (=> b!388448 m!384475))

(assert (=> b!388448 m!384267))

(declare-fun m!384477 () Bool)

(assert (=> b!388448 m!384477))

(assert (=> b!388449 m!384267))

(assert (=> b!388449 m!384267))

(assert (=> b!388449 m!384285))

(declare-fun m!384479 () Bool)

(assert (=> bm!27348 m!384479))

(assert (=> b!388208 d!72703))

(declare-fun condMapEmpty!15939 () Bool)

(declare-fun mapDefault!15939 () ValueCell!4446)

(assert (=> mapNonEmpty!15933 (= condMapEmpty!15939 (= mapRest!15933 ((as const (Array (_ BitVec 32) ValueCell!4446)) mapDefault!15939)))))

(declare-fun e!235385 () Bool)

(declare-fun mapRes!15939 () Bool)

(assert (=> mapNonEmpty!15933 (= tp!31472 (and e!235385 mapRes!15939))))

(declare-fun mapNonEmpty!15939 () Bool)

(declare-fun tp!31482 () Bool)

(declare-fun e!235384 () Bool)

(assert (=> mapNonEmpty!15939 (= mapRes!15939 (and tp!31482 e!235384))))

(declare-fun mapRest!15939 () (Array (_ BitVec 32) ValueCell!4446))

(declare-fun mapKey!15939 () (_ BitVec 32))

(declare-fun mapValue!15939 () ValueCell!4446)

(assert (=> mapNonEmpty!15939 (= mapRest!15933 (store mapRest!15939 mapKey!15939 mapValue!15939))))

(declare-fun b!388458 () Bool)

(assert (=> b!388458 (= e!235384 tp_is_empty!9579)))

(declare-fun mapIsEmpty!15939 () Bool)

(assert (=> mapIsEmpty!15939 mapRes!15939))

(declare-fun b!388459 () Bool)

(assert (=> b!388459 (= e!235385 tp_is_empty!9579)))

(assert (= (and mapNonEmpty!15933 condMapEmpty!15939) mapIsEmpty!15939))

(assert (= (and mapNonEmpty!15933 (not condMapEmpty!15939)) mapNonEmpty!15939))

(assert (= (and mapNonEmpty!15939 ((_ is ValueCellFull!4446) mapValue!15939)) b!388458))

(assert (= (and mapNonEmpty!15933 ((_ is ValueCellFull!4446) mapDefault!15939)) b!388459))

(declare-fun m!384481 () Bool)

(assert (=> mapNonEmpty!15939 m!384481))

(declare-fun b_lambda!8569 () Bool)

(assert (= b_lambda!8557 (or (and start!37812 b_free!8907) b_lambda!8569)))

(declare-fun b_lambda!8571 () Bool)

(assert (= b_lambda!8563 (or (and start!37812 b_free!8907) b_lambda!8571)))

(declare-fun b_lambda!8573 () Bool)

(assert (= b_lambda!8565 (or (and start!37812 b_free!8907) b_lambda!8573)))

(declare-fun b_lambda!8575 () Bool)

(assert (= b_lambda!8561 (or (and start!37812 b_free!8907) b_lambda!8575)))

(declare-fun b_lambda!8577 () Bool)

(assert (= b_lambda!8567 (or (and start!37812 b_free!8907) b_lambda!8577)))

(declare-fun b_lambda!8579 () Bool)

(assert (= b_lambda!8559 (or (and start!37812 b_free!8907) b_lambda!8579)))

(check-sat (not b!388421) (not b!388295) (not d!72675) (not b!388303) (not b!388448) (not b!388306) (not b!388281) (not b!388446) (not d!72685) (not b_next!8907) (not bm!27336) (not b!388422) (not b_lambda!8571) (not b!388302) (not bm!27337) (not b!388443) (not b!388418) (not b!388404) (not bm!27343) (not b_lambda!8569) (not b!388433) (not b!388392) (not d!72673) (not b!388367) (not b!388445) (not b!388449) (not b!388369) (not bm!27324) (not mapNonEmpty!15939) (not b!388300) (not b!388416) (not b!388359) (not bm!27333) (not bm!27332) b_and!16181 (not b!388398) (not b!388376) (not b_lambda!8577) (not b!388352) (not b!388382) (not bm!27306) (not bm!27321) (not b!388289) (not bm!27346) (not bm!27305) (not bm!27323) (not bm!27325) tp_is_empty!9579 (not b!388391) (not b!388290) (not b!388393) (not bm!27348) (not d!72681) (not b!388282) (not d!72687) (not bm!27334) (not b!388389) (not b!388399) (not bm!27338) (not b!388361) (not b!388305) (not b!388442) (not b!388423) (not b_lambda!8579) (not d!72677) (not b_lambda!8573) (not b!388304) (not b!388419) (not b!388362) (not b!388368) (not b!388296) (not b!388434) (not b!388397) (not b_lambda!8575) (not b!388291) (not d!72671) (not b!388288) (not b!388292) (not d!72679) (not bm!27347) (not b!388363) (not b!388286) (not b!388424) (not b!388405))
(check-sat b_and!16181 (not b_next!8907))
