; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37950 () Bool)

(assert start!37950)

(declare-fun b_free!8955 () Bool)

(declare-fun b_next!8955 () Bool)

(assert (=> start!37950 (= b_free!8955 (not b_next!8955))))

(declare-fun tp!31629 () Bool)

(declare-fun b_and!16263 () Bool)

(assert (=> start!37950 (= tp!31629 b_and!16263)))

(declare-fun b!390097 () Bool)

(declare-fun res!223307 () Bool)

(declare-fun e!236311 () Bool)

(assert (=> b!390097 (=> (not res!223307) (not e!236311))))

(declare-datatypes ((array!23129 0))(
  ( (array!23130 (arr!11026 (Array (_ BitVec 32) (_ BitVec 64))) (size!11378 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23129)

(declare-datatypes ((List!6364 0))(
  ( (Nil!6361) (Cons!6360 (h!7216 (_ BitVec 64)) (t!11530 List!6364)) )
))
(declare-fun arrayNoDuplicates!0 (array!23129 (_ BitVec 32) List!6364) Bool)

(assert (=> b!390097 (= res!223307 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6361))))

(declare-fun b!390098 () Bool)

(declare-fun e!236317 () Bool)

(declare-fun tp_is_empty!9627 () Bool)

(assert (=> b!390098 (= e!236317 tp_is_empty!9627)))

(declare-fun b!390099 () Bool)

(declare-fun res!223309 () Bool)

(assert (=> b!390099 (=> (not res!223309) (not e!236311))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13941 0))(
  ( (V!13942 (val!4858 Int)) )
))
(declare-datatypes ((ValueCell!4470 0))(
  ( (ValueCellFull!4470 (v!7067 V!13941)) (EmptyCell!4470) )
))
(declare-datatypes ((array!23131 0))(
  ( (array!23132 (arr!11027 (Array (_ BitVec 32) ValueCell!4470)) (size!11379 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23131)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!390099 (= res!223309 (and (= (size!11379 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11378 _keys!658) (size!11379 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!390100 () Bool)

(declare-fun res!223299 () Bool)

(assert (=> b!390100 (=> (not res!223299) (not e!236311))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!390100 (= res!223299 (or (= (select (arr!11026 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11026 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!390101 () Bool)

(declare-fun e!236316 () Bool)

(assert (=> b!390101 (= e!236316 tp_is_empty!9627)))

(declare-fun mapIsEmpty!16017 () Bool)

(declare-fun mapRes!16017 () Bool)

(assert (=> mapIsEmpty!16017 mapRes!16017))

(declare-fun b!390102 () Bool)

(declare-fun e!236313 () Bool)

(declare-fun e!236312 () Bool)

(assert (=> b!390102 (= e!236313 (not e!236312))))

(declare-fun res!223304 () Bool)

(assert (=> b!390102 (=> res!223304 e!236312)))

(assert (=> b!390102 (= res!223304 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13941)

(declare-datatypes ((tuple2!6482 0))(
  ( (tuple2!6483 (_1!3251 (_ BitVec 64)) (_2!3251 V!13941)) )
))
(declare-datatypes ((List!6365 0))(
  ( (Nil!6362) (Cons!6361 (h!7217 tuple2!6482) (t!11531 List!6365)) )
))
(declare-datatypes ((ListLongMap!5409 0))(
  ( (ListLongMap!5410 (toList!2720 List!6365)) )
))
(declare-fun lt!183880 () ListLongMap!5409)

(declare-fun minValue!472 () V!13941)

(declare-fun getCurrentListMap!2087 (array!23129 array!23131 (_ BitVec 32) (_ BitVec 32) V!13941 V!13941 (_ BitVec 32) Int) ListLongMap!5409)

(assert (=> b!390102 (= lt!183880 (getCurrentListMap!2087 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183877 () array!23131)

(declare-fun lt!183876 () ListLongMap!5409)

(declare-fun lt!183878 () array!23129)

(assert (=> b!390102 (= lt!183876 (getCurrentListMap!2087 lt!183878 lt!183877 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183882 () ListLongMap!5409)

(declare-fun lt!183883 () ListLongMap!5409)

(assert (=> b!390102 (and (= lt!183882 lt!183883) (= lt!183883 lt!183882))))

(declare-fun v!373 () V!13941)

(declare-fun lt!183879 () ListLongMap!5409)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun +!1018 (ListLongMap!5409 tuple2!6482) ListLongMap!5409)

(assert (=> b!390102 (= lt!183883 (+!1018 lt!183879 (tuple2!6483 k0!778 v!373)))))

(declare-datatypes ((Unit!11925 0))(
  ( (Unit!11926) )
))
(declare-fun lt!183881 () Unit!11925)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!244 (array!23129 array!23131 (_ BitVec 32) (_ BitVec 32) V!13941 V!13941 (_ BitVec 32) (_ BitVec 64) V!13941 (_ BitVec 32) Int) Unit!11925)

(assert (=> b!390102 (= lt!183881 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!244 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!949 (array!23129 array!23131 (_ BitVec 32) (_ BitVec 32) V!13941 V!13941 (_ BitVec 32) Int) ListLongMap!5409)

(assert (=> b!390102 (= lt!183882 (getCurrentListMapNoExtraKeys!949 lt!183878 lt!183877 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!390102 (= lt!183877 (array!23132 (store (arr!11027 _values!506) i!548 (ValueCellFull!4470 v!373)) (size!11379 _values!506)))))

(assert (=> b!390102 (= lt!183879 (getCurrentListMapNoExtraKeys!949 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!390103 () Bool)

(assert (=> b!390103 (= e!236312 (= lt!183876 (+!1018 lt!183882 (tuple2!6483 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))))

(declare-fun res!223302 () Bool)

(assert (=> start!37950 (=> (not res!223302) (not e!236311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37950 (= res!223302 (validMask!0 mask!970))))

(assert (=> start!37950 e!236311))

(declare-fun e!236314 () Bool)

(declare-fun array_inv!8084 (array!23131) Bool)

(assert (=> start!37950 (and (array_inv!8084 _values!506) e!236314)))

(assert (=> start!37950 tp!31629))

(assert (=> start!37950 true))

(assert (=> start!37950 tp_is_empty!9627))

(declare-fun array_inv!8085 (array!23129) Bool)

(assert (=> start!37950 (array_inv!8085 _keys!658)))

(declare-fun mapNonEmpty!16017 () Bool)

(declare-fun tp!31628 () Bool)

(assert (=> mapNonEmpty!16017 (= mapRes!16017 (and tp!31628 e!236317))))

(declare-fun mapRest!16017 () (Array (_ BitVec 32) ValueCell!4470))

(declare-fun mapKey!16017 () (_ BitVec 32))

(declare-fun mapValue!16017 () ValueCell!4470)

(assert (=> mapNonEmpty!16017 (= (arr!11027 _values!506) (store mapRest!16017 mapKey!16017 mapValue!16017))))

(declare-fun b!390104 () Bool)

(declare-fun res!223301 () Bool)

(assert (=> b!390104 (=> (not res!223301) (not e!236311))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!390104 (= res!223301 (validKeyInArray!0 k0!778))))

(declare-fun b!390105 () Bool)

(declare-fun res!223305 () Bool)

(assert (=> b!390105 (=> (not res!223305) (not e!236311))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23129 (_ BitVec 32)) Bool)

(assert (=> b!390105 (= res!223305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!390106 () Bool)

(assert (=> b!390106 (= e!236311 e!236313)))

(declare-fun res!223303 () Bool)

(assert (=> b!390106 (=> (not res!223303) (not e!236313))))

(assert (=> b!390106 (= res!223303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!183878 mask!970))))

(assert (=> b!390106 (= lt!183878 (array!23130 (store (arr!11026 _keys!658) i!548 k0!778) (size!11378 _keys!658)))))

(declare-fun b!390107 () Bool)

(declare-fun res!223300 () Bool)

(assert (=> b!390107 (=> (not res!223300) (not e!236313))))

(assert (=> b!390107 (= res!223300 (arrayNoDuplicates!0 lt!183878 #b00000000000000000000000000000000 Nil!6361))))

(declare-fun b!390108 () Bool)

(assert (=> b!390108 (= e!236314 (and e!236316 mapRes!16017))))

(declare-fun condMapEmpty!16017 () Bool)

(declare-fun mapDefault!16017 () ValueCell!4470)

(assert (=> b!390108 (= condMapEmpty!16017 (= (arr!11027 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4470)) mapDefault!16017)))))

(declare-fun b!390109 () Bool)

(declare-fun res!223306 () Bool)

(assert (=> b!390109 (=> (not res!223306) (not e!236311))))

(declare-fun arrayContainsKey!0 (array!23129 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!390109 (= res!223306 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!390110 () Bool)

(declare-fun res!223308 () Bool)

(assert (=> b!390110 (=> (not res!223308) (not e!236311))))

(assert (=> b!390110 (= res!223308 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11378 _keys!658))))))

(assert (= (and start!37950 res!223302) b!390099))

(assert (= (and b!390099 res!223309) b!390105))

(assert (= (and b!390105 res!223305) b!390097))

(assert (= (and b!390097 res!223307) b!390110))

(assert (= (and b!390110 res!223308) b!390104))

(assert (= (and b!390104 res!223301) b!390100))

(assert (= (and b!390100 res!223299) b!390109))

(assert (= (and b!390109 res!223306) b!390106))

(assert (= (and b!390106 res!223303) b!390107))

(assert (= (and b!390107 res!223300) b!390102))

(assert (= (and b!390102 (not res!223304)) b!390103))

(assert (= (and b!390108 condMapEmpty!16017) mapIsEmpty!16017))

(assert (= (and b!390108 (not condMapEmpty!16017)) mapNonEmpty!16017))

(get-info :version)

(assert (= (and mapNonEmpty!16017 ((_ is ValueCellFull!4470) mapValue!16017)) b!390098))

(assert (= (and b!390108 ((_ is ValueCellFull!4470) mapDefault!16017)) b!390101))

(assert (= start!37950 b!390108))

(declare-fun m!386471 () Bool)

(assert (=> mapNonEmpty!16017 m!386471))

(declare-fun m!386473 () Bool)

(assert (=> b!390105 m!386473))

(declare-fun m!386475 () Bool)

(assert (=> b!390104 m!386475))

(declare-fun m!386477 () Bool)

(assert (=> b!390109 m!386477))

(declare-fun m!386479 () Bool)

(assert (=> b!390100 m!386479))

(declare-fun m!386481 () Bool)

(assert (=> b!390107 m!386481))

(declare-fun m!386483 () Bool)

(assert (=> b!390106 m!386483))

(declare-fun m!386485 () Bool)

(assert (=> b!390106 m!386485))

(declare-fun m!386487 () Bool)

(assert (=> start!37950 m!386487))

(declare-fun m!386489 () Bool)

(assert (=> start!37950 m!386489))

(declare-fun m!386491 () Bool)

(assert (=> start!37950 m!386491))

(declare-fun m!386493 () Bool)

(assert (=> b!390097 m!386493))

(declare-fun m!386495 () Bool)

(assert (=> b!390103 m!386495))

(declare-fun m!386497 () Bool)

(assert (=> b!390102 m!386497))

(declare-fun m!386499 () Bool)

(assert (=> b!390102 m!386499))

(declare-fun m!386501 () Bool)

(assert (=> b!390102 m!386501))

(declare-fun m!386503 () Bool)

(assert (=> b!390102 m!386503))

(declare-fun m!386505 () Bool)

(assert (=> b!390102 m!386505))

(declare-fun m!386507 () Bool)

(assert (=> b!390102 m!386507))

(declare-fun m!386509 () Bool)

(assert (=> b!390102 m!386509))

(check-sat b_and!16263 (not b!390106) (not b!390104) tp_is_empty!9627 (not b!390097) (not b!390109) (not b_next!8955) (not b!390102) (not b!390107) (not b!390105) (not mapNonEmpty!16017) (not start!37950) (not b!390103))
(check-sat b_and!16263 (not b_next!8955))
(get-model)

(declare-fun d!72847 () Bool)

(declare-fun res!223347 () Bool)

(declare-fun e!236343 () Bool)

(assert (=> d!72847 (=> res!223347 e!236343)))

(assert (=> d!72847 (= res!223347 (= (select (arr!11026 _keys!658) #b00000000000000000000000000000000) k0!778))))

(assert (=> d!72847 (= (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000) e!236343)))

(declare-fun b!390157 () Bool)

(declare-fun e!236344 () Bool)

(assert (=> b!390157 (= e!236343 e!236344)))

(declare-fun res!223348 () Bool)

(assert (=> b!390157 (=> (not res!223348) (not e!236344))))

(assert (=> b!390157 (= res!223348 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!11378 _keys!658)))))

(declare-fun b!390158 () Bool)

(assert (=> b!390158 (= e!236344 (arrayContainsKey!0 _keys!658 k0!778 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!72847 (not res!223347)) b!390157))

(assert (= (and b!390157 res!223348) b!390158))

(declare-fun m!386551 () Bool)

(assert (=> d!72847 m!386551))

(declare-fun m!386553 () Bool)

(assert (=> b!390158 m!386553))

(assert (=> b!390109 d!72847))

(declare-fun d!72849 () Bool)

(assert (=> d!72849 (= (validKeyInArray!0 k0!778) (and (not (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!390104 d!72849))

(declare-fun bm!27489 () Bool)

(declare-fun call!27492 () Bool)

(declare-fun c!54056 () Bool)

(assert (=> bm!27489 (= call!27492 (arrayNoDuplicates!0 lt!183878 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54056 (Cons!6360 (select (arr!11026 lt!183878) #b00000000000000000000000000000000) Nil!6361) Nil!6361)))))

(declare-fun b!390169 () Bool)

(declare-fun e!236353 () Bool)

(declare-fun contains!2453 (List!6364 (_ BitVec 64)) Bool)

(assert (=> b!390169 (= e!236353 (contains!2453 Nil!6361 (select (arr!11026 lt!183878) #b00000000000000000000000000000000)))))

(declare-fun b!390170 () Bool)

(declare-fun e!236356 () Bool)

(declare-fun e!236355 () Bool)

(assert (=> b!390170 (= e!236356 e!236355)))

(declare-fun res!223356 () Bool)

(assert (=> b!390170 (=> (not res!223356) (not e!236355))))

(assert (=> b!390170 (= res!223356 (not e!236353))))

(declare-fun res!223357 () Bool)

(assert (=> b!390170 (=> (not res!223357) (not e!236353))))

(assert (=> b!390170 (= res!223357 (validKeyInArray!0 (select (arr!11026 lt!183878) #b00000000000000000000000000000000)))))

(declare-fun b!390171 () Bool)

(declare-fun e!236354 () Bool)

(assert (=> b!390171 (= e!236354 call!27492)))

(declare-fun d!72851 () Bool)

(declare-fun res!223355 () Bool)

(assert (=> d!72851 (=> res!223355 e!236356)))

(assert (=> d!72851 (= res!223355 (bvsge #b00000000000000000000000000000000 (size!11378 lt!183878)))))

(assert (=> d!72851 (= (arrayNoDuplicates!0 lt!183878 #b00000000000000000000000000000000 Nil!6361) e!236356)))

(declare-fun b!390172 () Bool)

(assert (=> b!390172 (= e!236354 call!27492)))

(declare-fun b!390173 () Bool)

(assert (=> b!390173 (= e!236355 e!236354)))

(assert (=> b!390173 (= c!54056 (validKeyInArray!0 (select (arr!11026 lt!183878) #b00000000000000000000000000000000)))))

(assert (= (and d!72851 (not res!223355)) b!390170))

(assert (= (and b!390170 res!223357) b!390169))

(assert (= (and b!390170 res!223356) b!390173))

(assert (= (and b!390173 c!54056) b!390171))

(assert (= (and b!390173 (not c!54056)) b!390172))

(assert (= (or b!390171 b!390172) bm!27489))

(declare-fun m!386555 () Bool)

(assert (=> bm!27489 m!386555))

(declare-fun m!386557 () Bool)

(assert (=> bm!27489 m!386557))

(assert (=> b!390169 m!386555))

(assert (=> b!390169 m!386555))

(declare-fun m!386559 () Bool)

(assert (=> b!390169 m!386559))

(assert (=> b!390170 m!386555))

(assert (=> b!390170 m!386555))

(declare-fun m!386561 () Bool)

(assert (=> b!390170 m!386561))

(assert (=> b!390173 m!386555))

(assert (=> b!390173 m!386555))

(assert (=> b!390173 m!386561))

(assert (=> b!390107 d!72851))

(declare-fun d!72853 () Bool)

(declare-fun e!236359 () Bool)

(assert (=> d!72853 e!236359))

(declare-fun res!223363 () Bool)

(assert (=> d!72853 (=> (not res!223363) (not e!236359))))

(declare-fun lt!183916 () ListLongMap!5409)

(declare-fun contains!2454 (ListLongMap!5409 (_ BitVec 64)) Bool)

(assert (=> d!72853 (= res!223363 (contains!2454 lt!183916 (_1!3251 (tuple2!6483 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))))

(declare-fun lt!183918 () List!6365)

(assert (=> d!72853 (= lt!183916 (ListLongMap!5410 lt!183918))))

(declare-fun lt!183917 () Unit!11925)

(declare-fun lt!183919 () Unit!11925)

(assert (=> d!72853 (= lt!183917 lt!183919)))

(declare-datatypes ((Option!364 0))(
  ( (Some!363 (v!7072 V!13941)) (None!362) )
))
(declare-fun getValueByKey!358 (List!6365 (_ BitVec 64)) Option!364)

(assert (=> d!72853 (= (getValueByKey!358 lt!183918 (_1!3251 (tuple2!6483 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))) (Some!363 (_2!3251 (tuple2!6483 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))))

(declare-fun lemmaContainsTupThenGetReturnValue!182 (List!6365 (_ BitVec 64) V!13941) Unit!11925)

(assert (=> d!72853 (= lt!183919 (lemmaContainsTupThenGetReturnValue!182 lt!183918 (_1!3251 (tuple2!6483 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472)) (_2!3251 (tuple2!6483 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))))

(declare-fun insertStrictlySorted!184 (List!6365 (_ BitVec 64) V!13941) List!6365)

(assert (=> d!72853 (= lt!183918 (insertStrictlySorted!184 (toList!2720 lt!183882) (_1!3251 (tuple2!6483 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472)) (_2!3251 (tuple2!6483 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))))

(assert (=> d!72853 (= (+!1018 lt!183882 (tuple2!6483 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472)) lt!183916)))

(declare-fun b!390178 () Bool)

(declare-fun res!223362 () Bool)

(assert (=> b!390178 (=> (not res!223362) (not e!236359))))

(assert (=> b!390178 (= res!223362 (= (getValueByKey!358 (toList!2720 lt!183916) (_1!3251 (tuple2!6483 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))) (Some!363 (_2!3251 (tuple2!6483 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472)))))))

(declare-fun b!390179 () Bool)

(declare-fun contains!2455 (List!6365 tuple2!6482) Bool)

(assert (=> b!390179 (= e!236359 (contains!2455 (toList!2720 lt!183916) (tuple2!6483 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472)))))

(assert (= (and d!72853 res!223363) b!390178))

(assert (= (and b!390178 res!223362) b!390179))

(declare-fun m!386563 () Bool)

(assert (=> d!72853 m!386563))

(declare-fun m!386565 () Bool)

(assert (=> d!72853 m!386565))

(declare-fun m!386567 () Bool)

(assert (=> d!72853 m!386567))

(declare-fun m!386569 () Bool)

(assert (=> d!72853 m!386569))

(declare-fun m!386571 () Bool)

(assert (=> b!390178 m!386571))

(declare-fun m!386573 () Bool)

(assert (=> b!390179 m!386573))

(assert (=> b!390103 d!72853))

(declare-fun d!72855 () Bool)

(assert (=> d!72855 (= (validMask!0 mask!970) (and (or (= mask!970 #b00000000000000000000000000000111) (= mask!970 #b00000000000000000000000000001111) (= mask!970 #b00000000000000000000000000011111) (= mask!970 #b00000000000000000000000000111111) (= mask!970 #b00000000000000000000000001111111) (= mask!970 #b00000000000000000000000011111111) (= mask!970 #b00000000000000000000000111111111) (= mask!970 #b00000000000000000000001111111111) (= mask!970 #b00000000000000000000011111111111) (= mask!970 #b00000000000000000000111111111111) (= mask!970 #b00000000000000000001111111111111) (= mask!970 #b00000000000000000011111111111111) (= mask!970 #b00000000000000000111111111111111) (= mask!970 #b00000000000000001111111111111111) (= mask!970 #b00000000000000011111111111111111) (= mask!970 #b00000000000000111111111111111111) (= mask!970 #b00000000000001111111111111111111) (= mask!970 #b00000000000011111111111111111111) (= mask!970 #b00000000000111111111111111111111) (= mask!970 #b00000000001111111111111111111111) (= mask!970 #b00000000011111111111111111111111) (= mask!970 #b00000000111111111111111111111111) (= mask!970 #b00000001111111111111111111111111) (= mask!970 #b00000011111111111111111111111111) (= mask!970 #b00000111111111111111111111111111) (= mask!970 #b00001111111111111111111111111111) (= mask!970 #b00011111111111111111111111111111) (= mask!970 #b00111111111111111111111111111111)) (bvsle mask!970 #b00111111111111111111111111111111)))))

(assert (=> start!37950 d!72855))

(declare-fun d!72857 () Bool)

(assert (=> d!72857 (= (array_inv!8084 _values!506) (bvsge (size!11379 _values!506) #b00000000000000000000000000000000))))

(assert (=> start!37950 d!72857))

(declare-fun d!72859 () Bool)

(assert (=> d!72859 (= (array_inv!8085 _keys!658) (bvsge (size!11378 _keys!658) #b00000000000000000000000000000000))))

(assert (=> start!37950 d!72859))

(declare-fun bm!27490 () Bool)

(declare-fun call!27493 () Bool)

(declare-fun c!54057 () Bool)

(assert (=> bm!27490 (= call!27493 (arrayNoDuplicates!0 _keys!658 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54057 (Cons!6360 (select (arr!11026 _keys!658) #b00000000000000000000000000000000) Nil!6361) Nil!6361)))))

(declare-fun b!390180 () Bool)

(declare-fun e!236360 () Bool)

(assert (=> b!390180 (= e!236360 (contains!2453 Nil!6361 (select (arr!11026 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!390181 () Bool)

(declare-fun e!236363 () Bool)

(declare-fun e!236362 () Bool)

(assert (=> b!390181 (= e!236363 e!236362)))

(declare-fun res!223365 () Bool)

(assert (=> b!390181 (=> (not res!223365) (not e!236362))))

(assert (=> b!390181 (= res!223365 (not e!236360))))

(declare-fun res!223366 () Bool)

(assert (=> b!390181 (=> (not res!223366) (not e!236360))))

(assert (=> b!390181 (= res!223366 (validKeyInArray!0 (select (arr!11026 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!390182 () Bool)

(declare-fun e!236361 () Bool)

(assert (=> b!390182 (= e!236361 call!27493)))

(declare-fun d!72861 () Bool)

(declare-fun res!223364 () Bool)

(assert (=> d!72861 (=> res!223364 e!236363)))

(assert (=> d!72861 (= res!223364 (bvsge #b00000000000000000000000000000000 (size!11378 _keys!658)))))

(assert (=> d!72861 (= (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6361) e!236363)))

(declare-fun b!390183 () Bool)

(assert (=> b!390183 (= e!236361 call!27493)))

(declare-fun b!390184 () Bool)

(assert (=> b!390184 (= e!236362 e!236361)))

(assert (=> b!390184 (= c!54057 (validKeyInArray!0 (select (arr!11026 _keys!658) #b00000000000000000000000000000000)))))

(assert (= (and d!72861 (not res!223364)) b!390181))

(assert (= (and b!390181 res!223366) b!390180))

(assert (= (and b!390181 res!223365) b!390184))

(assert (= (and b!390184 c!54057) b!390182))

(assert (= (and b!390184 (not c!54057)) b!390183))

(assert (= (or b!390182 b!390183) bm!27490))

(assert (=> bm!27490 m!386551))

(declare-fun m!386575 () Bool)

(assert (=> bm!27490 m!386575))

(assert (=> b!390180 m!386551))

(assert (=> b!390180 m!386551))

(declare-fun m!386577 () Bool)

(assert (=> b!390180 m!386577))

(assert (=> b!390181 m!386551))

(assert (=> b!390181 m!386551))

(declare-fun m!386579 () Bool)

(assert (=> b!390181 m!386579))

(assert (=> b!390184 m!386551))

(assert (=> b!390184 m!386551))

(assert (=> b!390184 m!386579))

(assert (=> b!390097 d!72861))

(declare-fun b!390193 () Bool)

(declare-fun e!236370 () Bool)

(declare-fun e!236372 () Bool)

(assert (=> b!390193 (= e!236370 e!236372)))

(declare-fun lt!183928 () (_ BitVec 64))

(assert (=> b!390193 (= lt!183928 (select (arr!11026 lt!183878) #b00000000000000000000000000000000))))

(declare-fun lt!183927 () Unit!11925)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23129 (_ BitVec 64) (_ BitVec 32)) Unit!11925)

(assert (=> b!390193 (= lt!183927 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!183878 lt!183928 #b00000000000000000000000000000000))))

(assert (=> b!390193 (arrayContainsKey!0 lt!183878 lt!183928 #b00000000000000000000000000000000)))

(declare-fun lt!183926 () Unit!11925)

(assert (=> b!390193 (= lt!183926 lt!183927)))

(declare-fun res!223371 () Bool)

(declare-datatypes ((SeekEntryResult!3500 0))(
  ( (MissingZero!3500 (index!16179 (_ BitVec 32))) (Found!3500 (index!16180 (_ BitVec 32))) (Intermediate!3500 (undefined!4312 Bool) (index!16181 (_ BitVec 32)) (x!38276 (_ BitVec 32))) (Undefined!3500) (MissingVacant!3500 (index!16182 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!23129 (_ BitVec 32)) SeekEntryResult!3500)

(assert (=> b!390193 (= res!223371 (= (seekEntryOrOpen!0 (select (arr!11026 lt!183878) #b00000000000000000000000000000000) lt!183878 mask!970) (Found!3500 #b00000000000000000000000000000000)))))

(assert (=> b!390193 (=> (not res!223371) (not e!236372))))

(declare-fun b!390194 () Bool)

(declare-fun call!27496 () Bool)

(assert (=> b!390194 (= e!236372 call!27496)))

(declare-fun b!390195 () Bool)

(declare-fun e!236371 () Bool)

(assert (=> b!390195 (= e!236371 e!236370)))

(declare-fun c!54060 () Bool)

(assert (=> b!390195 (= c!54060 (validKeyInArray!0 (select (arr!11026 lt!183878) #b00000000000000000000000000000000)))))

(declare-fun d!72863 () Bool)

(declare-fun res!223372 () Bool)

(assert (=> d!72863 (=> res!223372 e!236371)))

(assert (=> d!72863 (= res!223372 (bvsge #b00000000000000000000000000000000 (size!11378 lt!183878)))))

(assert (=> d!72863 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!183878 mask!970) e!236371)))

(declare-fun b!390196 () Bool)

(assert (=> b!390196 (= e!236370 call!27496)))

(declare-fun bm!27493 () Bool)

(assert (=> bm!27493 (= call!27496 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!183878 mask!970))))

(assert (= (and d!72863 (not res!223372)) b!390195))

(assert (= (and b!390195 c!54060) b!390193))

(assert (= (and b!390195 (not c!54060)) b!390196))

(assert (= (and b!390193 res!223371) b!390194))

(assert (= (or b!390194 b!390196) bm!27493))

(assert (=> b!390193 m!386555))

(declare-fun m!386581 () Bool)

(assert (=> b!390193 m!386581))

(declare-fun m!386583 () Bool)

(assert (=> b!390193 m!386583))

(assert (=> b!390193 m!386555))

(declare-fun m!386585 () Bool)

(assert (=> b!390193 m!386585))

(assert (=> b!390195 m!386555))

(assert (=> b!390195 m!386555))

(assert (=> b!390195 m!386561))

(declare-fun m!386587 () Bool)

(assert (=> bm!27493 m!386587))

(assert (=> b!390106 d!72863))

(declare-fun b!390221 () Bool)

(declare-fun e!236392 () Bool)

(declare-fun e!236389 () Bool)

(assert (=> b!390221 (= e!236392 e!236389)))

(assert (=> b!390221 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11378 _keys!658)))))

(declare-fun res!223383 () Bool)

(declare-fun lt!183948 () ListLongMap!5409)

(assert (=> b!390221 (= res!223383 (contains!2454 lt!183948 (select (arr!11026 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!390221 (=> (not res!223383) (not e!236389))))

(declare-fun b!390222 () Bool)

(declare-fun e!236393 () Bool)

(assert (=> b!390222 (= e!236392 e!236393)))

(declare-fun c!54071 () Bool)

(assert (=> b!390222 (= c!54071 (bvslt #b00000000000000000000000000000000 (size!11378 _keys!658)))))

(declare-fun b!390223 () Bool)

(declare-fun e!236387 () ListLongMap!5409)

(declare-fun e!236391 () ListLongMap!5409)

(assert (=> b!390223 (= e!236387 e!236391)))

(declare-fun c!54072 () Bool)

(assert (=> b!390223 (= c!54072 (validKeyInArray!0 (select (arr!11026 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!390224 () Bool)

(declare-fun isEmpty!552 (ListLongMap!5409) Bool)

(assert (=> b!390224 (= e!236393 (isEmpty!552 lt!183948))))

(declare-fun b!390225 () Bool)

(assert (=> b!390225 (= e!236393 (= lt!183948 (getCurrentListMapNoExtraKeys!949 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun b!390226 () Bool)

(declare-fun res!223384 () Bool)

(declare-fun e!236390 () Bool)

(assert (=> b!390226 (=> (not res!223384) (not e!236390))))

(assert (=> b!390226 (= res!223384 (not (contains!2454 lt!183948 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!390227 () Bool)

(declare-fun lt!183945 () Unit!11925)

(declare-fun lt!183944 () Unit!11925)

(assert (=> b!390227 (= lt!183945 lt!183944)))

(declare-fun lt!183943 () (_ BitVec 64))

(declare-fun lt!183949 () (_ BitVec 64))

(declare-fun lt!183946 () V!13941)

(declare-fun lt!183947 () ListLongMap!5409)

(assert (=> b!390227 (not (contains!2454 (+!1018 lt!183947 (tuple2!6483 lt!183949 lt!183946)) lt!183943))))

(declare-fun addStillNotContains!136 (ListLongMap!5409 (_ BitVec 64) V!13941 (_ BitVec 64)) Unit!11925)

(assert (=> b!390227 (= lt!183944 (addStillNotContains!136 lt!183947 lt!183949 lt!183946 lt!183943))))

(assert (=> b!390227 (= lt!183943 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!5584 (ValueCell!4470 V!13941) V!13941)

(declare-fun dynLambda!639 (Int (_ BitVec 64)) V!13941)

(assert (=> b!390227 (= lt!183946 (get!5584 (select (arr!11027 _values!506) #b00000000000000000000000000000000) (dynLambda!639 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!390227 (= lt!183949 (select (arr!11026 _keys!658) #b00000000000000000000000000000000))))

(declare-fun call!27499 () ListLongMap!5409)

(assert (=> b!390227 (= lt!183947 call!27499)))

(assert (=> b!390227 (= e!236391 (+!1018 call!27499 (tuple2!6483 (select (arr!11026 _keys!658) #b00000000000000000000000000000000) (get!5584 (select (arr!11027 _values!506) #b00000000000000000000000000000000) (dynLambda!639 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!72865 () Bool)

(assert (=> d!72865 e!236390))

(declare-fun res!223381 () Bool)

(assert (=> d!72865 (=> (not res!223381) (not e!236390))))

(assert (=> d!72865 (= res!223381 (not (contains!2454 lt!183948 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!72865 (= lt!183948 e!236387)))

(declare-fun c!54070 () Bool)

(assert (=> d!72865 (= c!54070 (bvsge #b00000000000000000000000000000000 (size!11378 _keys!658)))))

(assert (=> d!72865 (validMask!0 mask!970)))

(assert (=> d!72865 (= (getCurrentListMapNoExtraKeys!949 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!183948)))

(declare-fun b!390228 () Bool)

(assert (=> b!390228 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11378 _keys!658)))))

(assert (=> b!390228 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11379 _values!506)))))

(declare-fun apply!301 (ListLongMap!5409 (_ BitVec 64)) V!13941)

(assert (=> b!390228 (= e!236389 (= (apply!301 lt!183948 (select (arr!11026 _keys!658) #b00000000000000000000000000000000)) (get!5584 (select (arr!11027 _values!506) #b00000000000000000000000000000000) (dynLambda!639 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!390229 () Bool)

(assert (=> b!390229 (= e!236391 call!27499)))

(declare-fun b!390230 () Bool)

(declare-fun e!236388 () Bool)

(assert (=> b!390230 (= e!236388 (validKeyInArray!0 (select (arr!11026 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!390230 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!390231 () Bool)

(assert (=> b!390231 (= e!236387 (ListLongMap!5410 Nil!6362))))

(declare-fun bm!27496 () Bool)

(assert (=> bm!27496 (= call!27499 (getCurrentListMapNoExtraKeys!949 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!390232 () Bool)

(assert (=> b!390232 (= e!236390 e!236392)))

(declare-fun c!54069 () Bool)

(assert (=> b!390232 (= c!54069 e!236388)))

(declare-fun res!223382 () Bool)

(assert (=> b!390232 (=> (not res!223382) (not e!236388))))

(assert (=> b!390232 (= res!223382 (bvslt #b00000000000000000000000000000000 (size!11378 _keys!658)))))

(assert (= (and d!72865 c!54070) b!390231))

(assert (= (and d!72865 (not c!54070)) b!390223))

(assert (= (and b!390223 c!54072) b!390227))

(assert (= (and b!390223 (not c!54072)) b!390229))

(assert (= (or b!390227 b!390229) bm!27496))

(assert (= (and d!72865 res!223381) b!390226))

(assert (= (and b!390226 res!223384) b!390232))

(assert (= (and b!390232 res!223382) b!390230))

(assert (= (and b!390232 c!54069) b!390221))

(assert (= (and b!390232 (not c!54069)) b!390222))

(assert (= (and b!390221 res!223383) b!390228))

(assert (= (and b!390222 c!54071) b!390225))

(assert (= (and b!390222 (not c!54071)) b!390224))

(declare-fun b_lambda!8653 () Bool)

(assert (=> (not b_lambda!8653) (not b!390227)))

(declare-fun t!11533 () Bool)

(declare-fun tb!3125 () Bool)

(assert (=> (and start!37950 (= defaultEntry!514 defaultEntry!514) t!11533) tb!3125))

(declare-fun result!5739 () Bool)

(assert (=> tb!3125 (= result!5739 tp_is_empty!9627)))

(assert (=> b!390227 t!11533))

(declare-fun b_and!16267 () Bool)

(assert (= b_and!16263 (and (=> t!11533 result!5739) b_and!16267)))

(declare-fun b_lambda!8655 () Bool)

(assert (=> (not b_lambda!8655) (not b!390228)))

(assert (=> b!390228 t!11533))

(declare-fun b_and!16269 () Bool)

(assert (= b_and!16267 (and (=> t!11533 result!5739) b_and!16269)))

(assert (=> b!390230 m!386551))

(assert (=> b!390230 m!386551))

(assert (=> b!390230 m!386579))

(declare-fun m!386589 () Bool)

(assert (=> d!72865 m!386589))

(assert (=> d!72865 m!386487))

(declare-fun m!386591 () Bool)

(assert (=> b!390228 m!386591))

(declare-fun m!386593 () Bool)

(assert (=> b!390228 m!386593))

(assert (=> b!390228 m!386551))

(declare-fun m!386595 () Bool)

(assert (=> b!390228 m!386595))

(assert (=> b!390228 m!386593))

(assert (=> b!390228 m!386591))

(declare-fun m!386597 () Bool)

(assert (=> b!390228 m!386597))

(assert (=> b!390228 m!386551))

(assert (=> b!390221 m!386551))

(assert (=> b!390221 m!386551))

(declare-fun m!386599 () Bool)

(assert (=> b!390221 m!386599))

(declare-fun m!386601 () Bool)

(assert (=> b!390224 m!386601))

(declare-fun m!386603 () Bool)

(assert (=> b!390226 m!386603))

(declare-fun m!386605 () Bool)

(assert (=> bm!27496 m!386605))

(assert (=> b!390223 m!386551))

(assert (=> b!390223 m!386551))

(assert (=> b!390223 m!386579))

(assert (=> b!390227 m!386591))

(declare-fun m!386607 () Bool)

(assert (=> b!390227 m!386607))

(assert (=> b!390227 m!386593))

(declare-fun m!386609 () Bool)

(assert (=> b!390227 m!386609))

(declare-fun m!386611 () Bool)

(assert (=> b!390227 m!386611))

(declare-fun m!386613 () Bool)

(assert (=> b!390227 m!386613))

(assert (=> b!390227 m!386593))

(assert (=> b!390227 m!386591))

(assert (=> b!390227 m!386597))

(assert (=> b!390227 m!386611))

(assert (=> b!390227 m!386551))

(assert (=> b!390225 m!386605))

(assert (=> b!390102 d!72865))

(declare-fun d!72867 () Bool)

(declare-fun e!236394 () Bool)

(assert (=> d!72867 e!236394))

(declare-fun res!223386 () Bool)

(assert (=> d!72867 (=> (not res!223386) (not e!236394))))

(declare-fun lt!183950 () ListLongMap!5409)

(assert (=> d!72867 (= res!223386 (contains!2454 lt!183950 (_1!3251 (tuple2!6483 k0!778 v!373))))))

(declare-fun lt!183952 () List!6365)

(assert (=> d!72867 (= lt!183950 (ListLongMap!5410 lt!183952))))

(declare-fun lt!183951 () Unit!11925)

(declare-fun lt!183953 () Unit!11925)

(assert (=> d!72867 (= lt!183951 lt!183953)))

(assert (=> d!72867 (= (getValueByKey!358 lt!183952 (_1!3251 (tuple2!6483 k0!778 v!373))) (Some!363 (_2!3251 (tuple2!6483 k0!778 v!373))))))

(assert (=> d!72867 (= lt!183953 (lemmaContainsTupThenGetReturnValue!182 lt!183952 (_1!3251 (tuple2!6483 k0!778 v!373)) (_2!3251 (tuple2!6483 k0!778 v!373))))))

(assert (=> d!72867 (= lt!183952 (insertStrictlySorted!184 (toList!2720 lt!183879) (_1!3251 (tuple2!6483 k0!778 v!373)) (_2!3251 (tuple2!6483 k0!778 v!373))))))

(assert (=> d!72867 (= (+!1018 lt!183879 (tuple2!6483 k0!778 v!373)) lt!183950)))

(declare-fun b!390235 () Bool)

(declare-fun res!223385 () Bool)

(assert (=> b!390235 (=> (not res!223385) (not e!236394))))

(assert (=> b!390235 (= res!223385 (= (getValueByKey!358 (toList!2720 lt!183950) (_1!3251 (tuple2!6483 k0!778 v!373))) (Some!363 (_2!3251 (tuple2!6483 k0!778 v!373)))))))

(declare-fun b!390236 () Bool)

(assert (=> b!390236 (= e!236394 (contains!2455 (toList!2720 lt!183950) (tuple2!6483 k0!778 v!373)))))

(assert (= (and d!72867 res!223386) b!390235))

(assert (= (and b!390235 res!223385) b!390236))

(declare-fun m!386615 () Bool)

(assert (=> d!72867 m!386615))

(declare-fun m!386617 () Bool)

(assert (=> d!72867 m!386617))

(declare-fun m!386619 () Bool)

(assert (=> d!72867 m!386619))

(declare-fun m!386621 () Bool)

(assert (=> d!72867 m!386621))

(declare-fun m!386623 () Bool)

(assert (=> b!390235 m!386623))

(declare-fun m!386625 () Bool)

(assert (=> b!390236 m!386625))

(assert (=> b!390102 d!72867))

(declare-fun b!390237 () Bool)

(declare-fun e!236400 () Bool)

(declare-fun e!236397 () Bool)

(assert (=> b!390237 (= e!236400 e!236397)))

(assert (=> b!390237 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11378 lt!183878)))))

(declare-fun res!223389 () Bool)

(declare-fun lt!183959 () ListLongMap!5409)

(assert (=> b!390237 (= res!223389 (contains!2454 lt!183959 (select (arr!11026 lt!183878) #b00000000000000000000000000000000)))))

(assert (=> b!390237 (=> (not res!223389) (not e!236397))))

(declare-fun b!390238 () Bool)

(declare-fun e!236401 () Bool)

(assert (=> b!390238 (= e!236400 e!236401)))

(declare-fun c!54075 () Bool)

(assert (=> b!390238 (= c!54075 (bvslt #b00000000000000000000000000000000 (size!11378 lt!183878)))))

(declare-fun b!390239 () Bool)

(declare-fun e!236395 () ListLongMap!5409)

(declare-fun e!236399 () ListLongMap!5409)

(assert (=> b!390239 (= e!236395 e!236399)))

(declare-fun c!54076 () Bool)

(assert (=> b!390239 (= c!54076 (validKeyInArray!0 (select (arr!11026 lt!183878) #b00000000000000000000000000000000)))))

(declare-fun b!390240 () Bool)

(assert (=> b!390240 (= e!236401 (isEmpty!552 lt!183959))))

(declare-fun b!390241 () Bool)

(assert (=> b!390241 (= e!236401 (= lt!183959 (getCurrentListMapNoExtraKeys!949 lt!183878 lt!183877 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun b!390242 () Bool)

(declare-fun res!223390 () Bool)

(declare-fun e!236398 () Bool)

(assert (=> b!390242 (=> (not res!223390) (not e!236398))))

(assert (=> b!390242 (= res!223390 (not (contains!2454 lt!183959 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!390243 () Bool)

(declare-fun lt!183956 () Unit!11925)

(declare-fun lt!183955 () Unit!11925)

(assert (=> b!390243 (= lt!183956 lt!183955)))

(declare-fun lt!183957 () V!13941)

(declare-fun lt!183960 () (_ BitVec 64))

(declare-fun lt!183954 () (_ BitVec 64))

(declare-fun lt!183958 () ListLongMap!5409)

(assert (=> b!390243 (not (contains!2454 (+!1018 lt!183958 (tuple2!6483 lt!183960 lt!183957)) lt!183954))))

(assert (=> b!390243 (= lt!183955 (addStillNotContains!136 lt!183958 lt!183960 lt!183957 lt!183954))))

(assert (=> b!390243 (= lt!183954 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!390243 (= lt!183957 (get!5584 (select (arr!11027 lt!183877) #b00000000000000000000000000000000) (dynLambda!639 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!390243 (= lt!183960 (select (arr!11026 lt!183878) #b00000000000000000000000000000000))))

(declare-fun call!27500 () ListLongMap!5409)

(assert (=> b!390243 (= lt!183958 call!27500)))

(assert (=> b!390243 (= e!236399 (+!1018 call!27500 (tuple2!6483 (select (arr!11026 lt!183878) #b00000000000000000000000000000000) (get!5584 (select (arr!11027 lt!183877) #b00000000000000000000000000000000) (dynLambda!639 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!72869 () Bool)

(assert (=> d!72869 e!236398))

(declare-fun res!223387 () Bool)

(assert (=> d!72869 (=> (not res!223387) (not e!236398))))

(assert (=> d!72869 (= res!223387 (not (contains!2454 lt!183959 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!72869 (= lt!183959 e!236395)))

(declare-fun c!54074 () Bool)

(assert (=> d!72869 (= c!54074 (bvsge #b00000000000000000000000000000000 (size!11378 lt!183878)))))

(assert (=> d!72869 (validMask!0 mask!970)))

(assert (=> d!72869 (= (getCurrentListMapNoExtraKeys!949 lt!183878 lt!183877 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!183959)))

(declare-fun b!390244 () Bool)

(assert (=> b!390244 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11378 lt!183878)))))

(assert (=> b!390244 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11379 lt!183877)))))

(assert (=> b!390244 (= e!236397 (= (apply!301 lt!183959 (select (arr!11026 lt!183878) #b00000000000000000000000000000000)) (get!5584 (select (arr!11027 lt!183877) #b00000000000000000000000000000000) (dynLambda!639 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!390245 () Bool)

(assert (=> b!390245 (= e!236399 call!27500)))

(declare-fun b!390246 () Bool)

(declare-fun e!236396 () Bool)

(assert (=> b!390246 (= e!236396 (validKeyInArray!0 (select (arr!11026 lt!183878) #b00000000000000000000000000000000)))))

(assert (=> b!390246 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!390247 () Bool)

(assert (=> b!390247 (= e!236395 (ListLongMap!5410 Nil!6362))))

(declare-fun bm!27497 () Bool)

(assert (=> bm!27497 (= call!27500 (getCurrentListMapNoExtraKeys!949 lt!183878 lt!183877 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!390248 () Bool)

(assert (=> b!390248 (= e!236398 e!236400)))

(declare-fun c!54073 () Bool)

(assert (=> b!390248 (= c!54073 e!236396)))

(declare-fun res!223388 () Bool)

(assert (=> b!390248 (=> (not res!223388) (not e!236396))))

(assert (=> b!390248 (= res!223388 (bvslt #b00000000000000000000000000000000 (size!11378 lt!183878)))))

(assert (= (and d!72869 c!54074) b!390247))

(assert (= (and d!72869 (not c!54074)) b!390239))

(assert (= (and b!390239 c!54076) b!390243))

(assert (= (and b!390239 (not c!54076)) b!390245))

(assert (= (or b!390243 b!390245) bm!27497))

(assert (= (and d!72869 res!223387) b!390242))

(assert (= (and b!390242 res!223390) b!390248))

(assert (= (and b!390248 res!223388) b!390246))

(assert (= (and b!390248 c!54073) b!390237))

(assert (= (and b!390248 (not c!54073)) b!390238))

(assert (= (and b!390237 res!223389) b!390244))

(assert (= (and b!390238 c!54075) b!390241))

(assert (= (and b!390238 (not c!54075)) b!390240))

(declare-fun b_lambda!8657 () Bool)

(assert (=> (not b_lambda!8657) (not b!390243)))

(assert (=> b!390243 t!11533))

(declare-fun b_and!16271 () Bool)

(assert (= b_and!16269 (and (=> t!11533 result!5739) b_and!16271)))

(declare-fun b_lambda!8659 () Bool)

(assert (=> (not b_lambda!8659) (not b!390244)))

(assert (=> b!390244 t!11533))

(declare-fun b_and!16273 () Bool)

(assert (= b_and!16271 (and (=> t!11533 result!5739) b_and!16273)))

(assert (=> b!390246 m!386555))

(assert (=> b!390246 m!386555))

(assert (=> b!390246 m!386561))

(declare-fun m!386627 () Bool)

(assert (=> d!72869 m!386627))

(assert (=> d!72869 m!386487))

(assert (=> b!390244 m!386591))

(declare-fun m!386629 () Bool)

(assert (=> b!390244 m!386629))

(assert (=> b!390244 m!386555))

(declare-fun m!386631 () Bool)

(assert (=> b!390244 m!386631))

(assert (=> b!390244 m!386629))

(assert (=> b!390244 m!386591))

(declare-fun m!386633 () Bool)

(assert (=> b!390244 m!386633))

(assert (=> b!390244 m!386555))

(assert (=> b!390237 m!386555))

(assert (=> b!390237 m!386555))

(declare-fun m!386635 () Bool)

(assert (=> b!390237 m!386635))

(declare-fun m!386637 () Bool)

(assert (=> b!390240 m!386637))

(declare-fun m!386639 () Bool)

(assert (=> b!390242 m!386639))

(declare-fun m!386641 () Bool)

(assert (=> bm!27497 m!386641))

(assert (=> b!390239 m!386555))

(assert (=> b!390239 m!386555))

(assert (=> b!390239 m!386561))

(assert (=> b!390243 m!386591))

(declare-fun m!386643 () Bool)

(assert (=> b!390243 m!386643))

(assert (=> b!390243 m!386629))

(declare-fun m!386645 () Bool)

(assert (=> b!390243 m!386645))

(declare-fun m!386647 () Bool)

(assert (=> b!390243 m!386647))

(declare-fun m!386649 () Bool)

(assert (=> b!390243 m!386649))

(assert (=> b!390243 m!386629))

(assert (=> b!390243 m!386591))

(assert (=> b!390243 m!386633))

(assert (=> b!390243 m!386647))

(assert (=> b!390243 m!386555))

(assert (=> b!390241 m!386641))

(assert (=> b!390102 d!72869))

(declare-fun bm!27502 () Bool)

(declare-fun call!27506 () ListLongMap!5409)

(assert (=> bm!27502 (= call!27506 (getCurrentListMapNoExtraKeys!949 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun d!72871 () Bool)

(declare-fun e!236407 () Bool)

(assert (=> d!72871 e!236407))

(declare-fun res!223393 () Bool)

(assert (=> d!72871 (=> (not res!223393) (not e!236407))))

(assert (=> d!72871 (= res!223393 (and (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11378 _keys!658)))) (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11379 _values!506)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11378 _keys!658)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11379 _values!506))))))))

(declare-fun lt!183963 () Unit!11925)

(declare-fun choose!1324 (array!23129 array!23131 (_ BitVec 32) (_ BitVec 32) V!13941 V!13941 (_ BitVec 32) (_ BitVec 64) V!13941 (_ BitVec 32) Int) Unit!11925)

(assert (=> d!72871 (= lt!183963 (choose!1324 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> d!72871 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!11378 _keys!658)))))

(assert (=> d!72871 (= (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!244 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514) lt!183963)))

(declare-fun call!27505 () ListLongMap!5409)

(declare-fun e!236406 () Bool)

(declare-fun b!390255 () Bool)

(assert (=> b!390255 (= e!236406 (= call!27505 (+!1018 call!27506 (tuple2!6483 k0!778 v!373))))))

(declare-fun b!390256 () Bool)

(assert (=> b!390256 (= e!236406 (= call!27505 call!27506))))

(declare-fun bm!27503 () Bool)

(assert (=> bm!27503 (= call!27505 (getCurrentListMapNoExtraKeys!949 (array!23130 (store (arr!11026 _keys!658) i!548 k0!778) (size!11378 _keys!658)) (array!23132 (store (arr!11027 _values!506) i!548 (ValueCellFull!4470 v!373)) (size!11379 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!390257 () Bool)

(assert (=> b!390257 (= e!236407 e!236406)))

(declare-fun c!54079 () Bool)

(assert (=> b!390257 (= c!54079 (bvsle #b00000000000000000000000000000000 i!548))))

(assert (= (and d!72871 res!223393) b!390257))

(assert (= (and b!390257 c!54079) b!390255))

(assert (= (and b!390257 (not c!54079)) b!390256))

(assert (= (or b!390255 b!390256) bm!27502))

(assert (= (or b!390255 b!390256) bm!27503))

(assert (=> bm!27502 m!386497))

(declare-fun m!386651 () Bool)

(assert (=> d!72871 m!386651))

(declare-fun m!386653 () Bool)

(assert (=> b!390255 m!386653))

(assert (=> bm!27503 m!386485))

(assert (=> bm!27503 m!386505))

(declare-fun m!386655 () Bool)

(assert (=> bm!27503 m!386655))

(assert (=> b!390102 d!72871))

(declare-fun b!390300 () Bool)

(declare-fun e!236437 () ListLongMap!5409)

(declare-fun call!27526 () ListLongMap!5409)

(assert (=> b!390300 (= e!236437 call!27526)))

(declare-fun b!390302 () Bool)

(declare-fun res!223414 () Bool)

(declare-fun e!236438 () Bool)

(assert (=> b!390302 (=> (not res!223414) (not e!236438))))

(declare-fun e!236443 () Bool)

(assert (=> b!390302 (= res!223414 e!236443)))

(declare-fun res!223419 () Bool)

(assert (=> b!390302 (=> res!223419 e!236443)))

(declare-fun e!236441 () Bool)

(assert (=> b!390302 (= res!223419 (not e!236441))))

(declare-fun res!223418 () Bool)

(assert (=> b!390302 (=> (not res!223418) (not e!236441))))

(assert (=> b!390302 (= res!223418 (bvslt #b00000000000000000000000000000000 (size!11378 lt!183878)))))

(declare-fun b!390303 () Bool)

(declare-fun e!236440 () Bool)

(declare-fun e!236439 () Bool)

(assert (=> b!390303 (= e!236440 e!236439)))

(declare-fun res!223417 () Bool)

(declare-fun call!27525 () Bool)

(assert (=> b!390303 (= res!223417 call!27525)))

(assert (=> b!390303 (=> (not res!223417) (not e!236439))))

(declare-fun bm!27518 () Bool)

(declare-fun call!27524 () ListLongMap!5409)

(declare-fun call!27522 () ListLongMap!5409)

(assert (=> bm!27518 (= call!27524 call!27522)))

(declare-fun b!390304 () Bool)

(declare-fun e!236446 () Bool)

(assert (=> b!390304 (= e!236443 e!236446)))

(declare-fun res!223415 () Bool)

(assert (=> b!390304 (=> (not res!223415) (not e!236446))))

(declare-fun lt!184016 () ListLongMap!5409)

(assert (=> b!390304 (= res!223415 (contains!2454 lt!184016 (select (arr!11026 lt!183878) #b00000000000000000000000000000000)))))

(assert (=> b!390304 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11378 lt!183878)))))

(declare-fun bm!27519 () Bool)

(assert (=> bm!27519 (= call!27525 (contains!2454 lt!184016 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!390305 () Bool)

(declare-fun e!236435 () ListLongMap!5409)

(declare-fun call!27521 () ListLongMap!5409)

(assert (=> b!390305 (= e!236435 (+!1018 call!27521 (tuple2!6483 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun b!390306 () Bool)

(assert (=> b!390306 (= e!236440 (not call!27525))))

(declare-fun bm!27520 () Bool)

(assert (=> bm!27520 (= call!27526 call!27521)))

(declare-fun b!390307 () Bool)

(declare-fun e!236445 () Bool)

(assert (=> b!390307 (= e!236445 (= (apply!301 lt!184016 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun c!54097 () Bool)

(declare-fun call!27523 () ListLongMap!5409)

(declare-fun bm!27521 () Bool)

(declare-fun c!54094 () Bool)

(assert (=> bm!27521 (= call!27521 (+!1018 (ite c!54097 call!27523 (ite c!54094 call!27522 call!27524)) (ite (or c!54097 c!54094) (tuple2!6483 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6483 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun b!390308 () Bool)

(declare-fun e!236442 () Unit!11925)

(declare-fun Unit!11927 () Unit!11925)

(assert (=> b!390308 (= e!236442 Unit!11927)))

(declare-fun b!390309 () Bool)

(declare-fun e!236436 () Bool)

(assert (=> b!390309 (= e!236438 e!236436)))

(declare-fun c!54096 () Bool)

(assert (=> b!390309 (= c!54096 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!390310 () Bool)

(assert (=> b!390310 (= e!236439 (= (apply!301 lt!184016 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun bm!27522 () Bool)

(assert (=> bm!27522 (= call!27522 call!27523)))

(declare-fun b!390311 () Bool)

(assert (=> b!390311 (= e!236436 e!236445)))

(declare-fun res!223416 () Bool)

(declare-fun call!27527 () Bool)

(assert (=> b!390311 (= res!223416 call!27527)))

(assert (=> b!390311 (=> (not res!223416) (not e!236445))))

(declare-fun bm!27523 () Bool)

(assert (=> bm!27523 (= call!27527 (contains!2454 lt!184016 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!72873 () Bool)

(assert (=> d!72873 e!236438))

(declare-fun res!223412 () Bool)

(assert (=> d!72873 (=> (not res!223412) (not e!236438))))

(assert (=> d!72873 (= res!223412 (or (bvsge #b00000000000000000000000000000000 (size!11378 lt!183878)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11378 lt!183878)))))))

(declare-fun lt!184025 () ListLongMap!5409)

(assert (=> d!72873 (= lt!184016 lt!184025)))

(declare-fun lt!184011 () Unit!11925)

(assert (=> d!72873 (= lt!184011 e!236442)))

(declare-fun c!54095 () Bool)

(declare-fun e!236434 () Bool)

(assert (=> d!72873 (= c!54095 e!236434)))

(declare-fun res!223420 () Bool)

(assert (=> d!72873 (=> (not res!223420) (not e!236434))))

(assert (=> d!72873 (= res!223420 (bvslt #b00000000000000000000000000000000 (size!11378 lt!183878)))))

(assert (=> d!72873 (= lt!184025 e!236435)))

(assert (=> d!72873 (= c!54097 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!72873 (validMask!0 mask!970)))

(assert (=> d!72873 (= (getCurrentListMap!2087 lt!183878 lt!183877 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!184016)))

(declare-fun b!390301 () Bool)

(assert (=> b!390301 (= e!236436 (not call!27527))))

(declare-fun bm!27524 () Bool)

(assert (=> bm!27524 (= call!27523 (getCurrentListMapNoExtraKeys!949 lt!183878 lt!183877 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!390312 () Bool)

(declare-fun lt!184019 () Unit!11925)

(assert (=> b!390312 (= e!236442 lt!184019)))

(declare-fun lt!184009 () ListLongMap!5409)

(assert (=> b!390312 (= lt!184009 (getCurrentListMapNoExtraKeys!949 lt!183878 lt!183877 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184021 () (_ BitVec 64))

(assert (=> b!390312 (= lt!184021 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184012 () (_ BitVec 64))

(assert (=> b!390312 (= lt!184012 (select (arr!11026 lt!183878) #b00000000000000000000000000000000))))

(declare-fun lt!184015 () Unit!11925)

(declare-fun addStillContains!277 (ListLongMap!5409 (_ BitVec 64) V!13941 (_ BitVec 64)) Unit!11925)

(assert (=> b!390312 (= lt!184015 (addStillContains!277 lt!184009 lt!184021 zeroValue!472 lt!184012))))

(assert (=> b!390312 (contains!2454 (+!1018 lt!184009 (tuple2!6483 lt!184021 zeroValue!472)) lt!184012)))

(declare-fun lt!184022 () Unit!11925)

(assert (=> b!390312 (= lt!184022 lt!184015)))

(declare-fun lt!184027 () ListLongMap!5409)

(assert (=> b!390312 (= lt!184027 (getCurrentListMapNoExtraKeys!949 lt!183878 lt!183877 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184014 () (_ BitVec 64))

(assert (=> b!390312 (= lt!184014 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184018 () (_ BitVec 64))

(assert (=> b!390312 (= lt!184018 (select (arr!11026 lt!183878) #b00000000000000000000000000000000))))

(declare-fun lt!184024 () Unit!11925)

(declare-fun addApplyDifferent!277 (ListLongMap!5409 (_ BitVec 64) V!13941 (_ BitVec 64)) Unit!11925)

(assert (=> b!390312 (= lt!184024 (addApplyDifferent!277 lt!184027 lt!184014 minValue!472 lt!184018))))

(assert (=> b!390312 (= (apply!301 (+!1018 lt!184027 (tuple2!6483 lt!184014 minValue!472)) lt!184018) (apply!301 lt!184027 lt!184018))))

(declare-fun lt!184017 () Unit!11925)

(assert (=> b!390312 (= lt!184017 lt!184024)))

(declare-fun lt!184008 () ListLongMap!5409)

(assert (=> b!390312 (= lt!184008 (getCurrentListMapNoExtraKeys!949 lt!183878 lt!183877 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184028 () (_ BitVec 64))

(assert (=> b!390312 (= lt!184028 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184020 () (_ BitVec 64))

(assert (=> b!390312 (= lt!184020 (select (arr!11026 lt!183878) #b00000000000000000000000000000000))))

(declare-fun lt!184013 () Unit!11925)

(assert (=> b!390312 (= lt!184013 (addApplyDifferent!277 lt!184008 lt!184028 zeroValue!472 lt!184020))))

(assert (=> b!390312 (= (apply!301 (+!1018 lt!184008 (tuple2!6483 lt!184028 zeroValue!472)) lt!184020) (apply!301 lt!184008 lt!184020))))

(declare-fun lt!184026 () Unit!11925)

(assert (=> b!390312 (= lt!184026 lt!184013)))

(declare-fun lt!184010 () ListLongMap!5409)

(assert (=> b!390312 (= lt!184010 (getCurrentListMapNoExtraKeys!949 lt!183878 lt!183877 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184023 () (_ BitVec 64))

(assert (=> b!390312 (= lt!184023 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184029 () (_ BitVec 64))

(assert (=> b!390312 (= lt!184029 (select (arr!11026 lt!183878) #b00000000000000000000000000000000))))

(assert (=> b!390312 (= lt!184019 (addApplyDifferent!277 lt!184010 lt!184023 minValue!472 lt!184029))))

(assert (=> b!390312 (= (apply!301 (+!1018 lt!184010 (tuple2!6483 lt!184023 minValue!472)) lt!184029) (apply!301 lt!184010 lt!184029))))

(declare-fun b!390313 () Bool)

(declare-fun c!54092 () Bool)

(assert (=> b!390313 (= c!54092 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!236444 () ListLongMap!5409)

(assert (=> b!390313 (= e!236437 e!236444)))

(declare-fun b!390314 () Bool)

(assert (=> b!390314 (= e!236444 call!27524)))

(declare-fun b!390315 () Bool)

(declare-fun res!223413 () Bool)

(assert (=> b!390315 (=> (not res!223413) (not e!236438))))

(assert (=> b!390315 (= res!223413 e!236440)))

(declare-fun c!54093 () Bool)

(assert (=> b!390315 (= c!54093 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!390316 () Bool)

(assert (=> b!390316 (= e!236441 (validKeyInArray!0 (select (arr!11026 lt!183878) #b00000000000000000000000000000000)))))

(declare-fun b!390317 () Bool)

(assert (=> b!390317 (= e!236434 (validKeyInArray!0 (select (arr!11026 lt!183878) #b00000000000000000000000000000000)))))

(declare-fun b!390318 () Bool)

(assert (=> b!390318 (= e!236446 (= (apply!301 lt!184016 (select (arr!11026 lt!183878) #b00000000000000000000000000000000)) (get!5584 (select (arr!11027 lt!183877) #b00000000000000000000000000000000) (dynLambda!639 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!390318 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11379 lt!183877)))))

(assert (=> b!390318 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11378 lt!183878)))))

(declare-fun b!390319 () Bool)

(assert (=> b!390319 (= e!236444 call!27526)))

(declare-fun b!390320 () Bool)

(assert (=> b!390320 (= e!236435 e!236437)))

(assert (=> b!390320 (= c!54094 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!72873 c!54097) b!390305))

(assert (= (and d!72873 (not c!54097)) b!390320))

(assert (= (and b!390320 c!54094) b!390300))

(assert (= (and b!390320 (not c!54094)) b!390313))

(assert (= (and b!390313 c!54092) b!390319))

(assert (= (and b!390313 (not c!54092)) b!390314))

(assert (= (or b!390319 b!390314) bm!27518))

(assert (= (or b!390300 bm!27518) bm!27522))

(assert (= (or b!390300 b!390319) bm!27520))

(assert (= (or b!390305 bm!27522) bm!27524))

(assert (= (or b!390305 bm!27520) bm!27521))

(assert (= (and d!72873 res!223420) b!390317))

(assert (= (and d!72873 c!54095) b!390312))

(assert (= (and d!72873 (not c!54095)) b!390308))

(assert (= (and d!72873 res!223412) b!390302))

(assert (= (and b!390302 res!223418) b!390316))

(assert (= (and b!390302 (not res!223419)) b!390304))

(assert (= (and b!390304 res!223415) b!390318))

(assert (= (and b!390302 res!223414) b!390315))

(assert (= (and b!390315 c!54093) b!390303))

(assert (= (and b!390315 (not c!54093)) b!390306))

(assert (= (and b!390303 res!223417) b!390310))

(assert (= (or b!390303 b!390306) bm!27519))

(assert (= (and b!390315 res!223413) b!390309))

(assert (= (and b!390309 c!54096) b!390311))

(assert (= (and b!390309 (not c!54096)) b!390301))

(assert (= (and b!390311 res!223416) b!390307))

(assert (= (or b!390311 b!390301) bm!27523))

(declare-fun b_lambda!8661 () Bool)

(assert (=> (not b_lambda!8661) (not b!390318)))

(assert (=> b!390318 t!11533))

(declare-fun b_and!16275 () Bool)

(assert (= b_and!16273 (and (=> t!11533 result!5739) b_and!16275)))

(assert (=> bm!27524 m!386501))

(declare-fun m!386657 () Bool)

(assert (=> bm!27519 m!386657))

(assert (=> b!390317 m!386555))

(assert (=> b!390317 m!386555))

(assert (=> b!390317 m!386561))

(declare-fun m!386659 () Bool)

(assert (=> b!390305 m!386659))

(assert (=> b!390316 m!386555))

(assert (=> b!390316 m!386555))

(assert (=> b!390316 m!386561))

(assert (=> b!390318 m!386629))

(assert (=> b!390318 m!386629))

(assert (=> b!390318 m!386591))

(assert (=> b!390318 m!386633))

(assert (=> b!390318 m!386555))

(declare-fun m!386661 () Bool)

(assert (=> b!390318 m!386661))

(assert (=> b!390318 m!386591))

(assert (=> b!390318 m!386555))

(assert (=> b!390304 m!386555))

(assert (=> b!390304 m!386555))

(declare-fun m!386663 () Bool)

(assert (=> b!390304 m!386663))

(declare-fun m!386665 () Bool)

(assert (=> bm!27523 m!386665))

(assert (=> d!72873 m!386487))

(declare-fun m!386667 () Bool)

(assert (=> b!390307 m!386667))

(declare-fun m!386669 () Bool)

(assert (=> b!390310 m!386669))

(declare-fun m!386671 () Bool)

(assert (=> b!390312 m!386671))

(declare-fun m!386673 () Bool)

(assert (=> b!390312 m!386673))

(declare-fun m!386675 () Bool)

(assert (=> b!390312 m!386675))

(declare-fun m!386677 () Bool)

(assert (=> b!390312 m!386677))

(declare-fun m!386679 () Bool)

(assert (=> b!390312 m!386679))

(assert (=> b!390312 m!386671))

(declare-fun m!386681 () Bool)

(assert (=> b!390312 m!386681))

(declare-fun m!386683 () Bool)

(assert (=> b!390312 m!386683))

(assert (=> b!390312 m!386501))

(declare-fun m!386685 () Bool)

(assert (=> b!390312 m!386685))

(declare-fun m!386687 () Bool)

(assert (=> b!390312 m!386687))

(assert (=> b!390312 m!386685))

(declare-fun m!386689 () Bool)

(assert (=> b!390312 m!386689))

(declare-fun m!386691 () Bool)

(assert (=> b!390312 m!386691))

(assert (=> b!390312 m!386679))

(declare-fun m!386693 () Bool)

(assert (=> b!390312 m!386693))

(assert (=> b!390312 m!386555))

(assert (=> b!390312 m!386675))

(declare-fun m!386695 () Bool)

(assert (=> b!390312 m!386695))

(declare-fun m!386697 () Bool)

(assert (=> b!390312 m!386697))

(declare-fun m!386699 () Bool)

(assert (=> b!390312 m!386699))

(declare-fun m!386701 () Bool)

(assert (=> bm!27521 m!386701))

(assert (=> b!390102 d!72873))

(declare-fun b!390321 () Bool)

(declare-fun e!236450 () ListLongMap!5409)

(declare-fun call!27533 () ListLongMap!5409)

(assert (=> b!390321 (= e!236450 call!27533)))

(declare-fun b!390323 () Bool)

(declare-fun res!223423 () Bool)

(declare-fun e!236451 () Bool)

(assert (=> b!390323 (=> (not res!223423) (not e!236451))))

(declare-fun e!236456 () Bool)

(assert (=> b!390323 (= res!223423 e!236456)))

(declare-fun res!223428 () Bool)

(assert (=> b!390323 (=> res!223428 e!236456)))

(declare-fun e!236454 () Bool)

(assert (=> b!390323 (= res!223428 (not e!236454))))

(declare-fun res!223427 () Bool)

(assert (=> b!390323 (=> (not res!223427) (not e!236454))))

(assert (=> b!390323 (= res!223427 (bvslt #b00000000000000000000000000000000 (size!11378 _keys!658)))))

(declare-fun b!390324 () Bool)

(declare-fun e!236453 () Bool)

(declare-fun e!236452 () Bool)

(assert (=> b!390324 (= e!236453 e!236452)))

(declare-fun res!223426 () Bool)

(declare-fun call!27532 () Bool)

(assert (=> b!390324 (= res!223426 call!27532)))

(assert (=> b!390324 (=> (not res!223426) (not e!236452))))

(declare-fun bm!27525 () Bool)

(declare-fun call!27531 () ListLongMap!5409)

(declare-fun call!27529 () ListLongMap!5409)

(assert (=> bm!27525 (= call!27531 call!27529)))

(declare-fun b!390325 () Bool)

(declare-fun e!236459 () Bool)

(assert (=> b!390325 (= e!236456 e!236459)))

(declare-fun res!223424 () Bool)

(assert (=> b!390325 (=> (not res!223424) (not e!236459))))

(declare-fun lt!184038 () ListLongMap!5409)

(assert (=> b!390325 (= res!223424 (contains!2454 lt!184038 (select (arr!11026 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!390325 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11378 _keys!658)))))

(declare-fun bm!27526 () Bool)

(assert (=> bm!27526 (= call!27532 (contains!2454 lt!184038 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!390326 () Bool)

(declare-fun e!236448 () ListLongMap!5409)

(declare-fun call!27528 () ListLongMap!5409)

(assert (=> b!390326 (= e!236448 (+!1018 call!27528 (tuple2!6483 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun b!390327 () Bool)

(assert (=> b!390327 (= e!236453 (not call!27532))))

(declare-fun bm!27527 () Bool)

(assert (=> bm!27527 (= call!27533 call!27528)))

(declare-fun b!390328 () Bool)

(declare-fun e!236458 () Bool)

(assert (=> b!390328 (= e!236458 (= (apply!301 lt!184038 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun call!27530 () ListLongMap!5409)

(declare-fun bm!27528 () Bool)

(declare-fun c!54100 () Bool)

(declare-fun c!54103 () Bool)

(assert (=> bm!27528 (= call!27528 (+!1018 (ite c!54103 call!27530 (ite c!54100 call!27529 call!27531)) (ite (or c!54103 c!54100) (tuple2!6483 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6483 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun b!390329 () Bool)

(declare-fun e!236455 () Unit!11925)

(declare-fun Unit!11928 () Unit!11925)

(assert (=> b!390329 (= e!236455 Unit!11928)))

(declare-fun b!390330 () Bool)

(declare-fun e!236449 () Bool)

(assert (=> b!390330 (= e!236451 e!236449)))

(declare-fun c!54102 () Bool)

(assert (=> b!390330 (= c!54102 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!390331 () Bool)

(assert (=> b!390331 (= e!236452 (= (apply!301 lt!184038 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun bm!27529 () Bool)

(assert (=> bm!27529 (= call!27529 call!27530)))

(declare-fun b!390332 () Bool)

(assert (=> b!390332 (= e!236449 e!236458)))

(declare-fun res!223425 () Bool)

(declare-fun call!27534 () Bool)

(assert (=> b!390332 (= res!223425 call!27534)))

(assert (=> b!390332 (=> (not res!223425) (not e!236458))))

(declare-fun bm!27530 () Bool)

(assert (=> bm!27530 (= call!27534 (contains!2454 lt!184038 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!72875 () Bool)

(assert (=> d!72875 e!236451))

(declare-fun res!223421 () Bool)

(assert (=> d!72875 (=> (not res!223421) (not e!236451))))

(assert (=> d!72875 (= res!223421 (or (bvsge #b00000000000000000000000000000000 (size!11378 _keys!658)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11378 _keys!658)))))))

(declare-fun lt!184047 () ListLongMap!5409)

(assert (=> d!72875 (= lt!184038 lt!184047)))

(declare-fun lt!184033 () Unit!11925)

(assert (=> d!72875 (= lt!184033 e!236455)))

(declare-fun c!54101 () Bool)

(declare-fun e!236447 () Bool)

(assert (=> d!72875 (= c!54101 e!236447)))

(declare-fun res!223429 () Bool)

(assert (=> d!72875 (=> (not res!223429) (not e!236447))))

(assert (=> d!72875 (= res!223429 (bvslt #b00000000000000000000000000000000 (size!11378 _keys!658)))))

(assert (=> d!72875 (= lt!184047 e!236448)))

(assert (=> d!72875 (= c!54103 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!72875 (validMask!0 mask!970)))

(assert (=> d!72875 (= (getCurrentListMap!2087 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!184038)))

(declare-fun b!390322 () Bool)

(assert (=> b!390322 (= e!236449 (not call!27534))))

(declare-fun bm!27531 () Bool)

(assert (=> bm!27531 (= call!27530 (getCurrentListMapNoExtraKeys!949 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!390333 () Bool)

(declare-fun lt!184041 () Unit!11925)

(assert (=> b!390333 (= e!236455 lt!184041)))

(declare-fun lt!184031 () ListLongMap!5409)

(assert (=> b!390333 (= lt!184031 (getCurrentListMapNoExtraKeys!949 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184043 () (_ BitVec 64))

(assert (=> b!390333 (= lt!184043 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184034 () (_ BitVec 64))

(assert (=> b!390333 (= lt!184034 (select (arr!11026 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!184037 () Unit!11925)

(assert (=> b!390333 (= lt!184037 (addStillContains!277 lt!184031 lt!184043 zeroValue!472 lt!184034))))

(assert (=> b!390333 (contains!2454 (+!1018 lt!184031 (tuple2!6483 lt!184043 zeroValue!472)) lt!184034)))

(declare-fun lt!184044 () Unit!11925)

(assert (=> b!390333 (= lt!184044 lt!184037)))

(declare-fun lt!184049 () ListLongMap!5409)

(assert (=> b!390333 (= lt!184049 (getCurrentListMapNoExtraKeys!949 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184036 () (_ BitVec 64))

(assert (=> b!390333 (= lt!184036 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184040 () (_ BitVec 64))

(assert (=> b!390333 (= lt!184040 (select (arr!11026 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!184046 () Unit!11925)

(assert (=> b!390333 (= lt!184046 (addApplyDifferent!277 lt!184049 lt!184036 minValue!472 lt!184040))))

(assert (=> b!390333 (= (apply!301 (+!1018 lt!184049 (tuple2!6483 lt!184036 minValue!472)) lt!184040) (apply!301 lt!184049 lt!184040))))

(declare-fun lt!184039 () Unit!11925)

(assert (=> b!390333 (= lt!184039 lt!184046)))

(declare-fun lt!184030 () ListLongMap!5409)

(assert (=> b!390333 (= lt!184030 (getCurrentListMapNoExtraKeys!949 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184050 () (_ BitVec 64))

(assert (=> b!390333 (= lt!184050 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184042 () (_ BitVec 64))

(assert (=> b!390333 (= lt!184042 (select (arr!11026 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!184035 () Unit!11925)

(assert (=> b!390333 (= lt!184035 (addApplyDifferent!277 lt!184030 lt!184050 zeroValue!472 lt!184042))))

(assert (=> b!390333 (= (apply!301 (+!1018 lt!184030 (tuple2!6483 lt!184050 zeroValue!472)) lt!184042) (apply!301 lt!184030 lt!184042))))

(declare-fun lt!184048 () Unit!11925)

(assert (=> b!390333 (= lt!184048 lt!184035)))

(declare-fun lt!184032 () ListLongMap!5409)

(assert (=> b!390333 (= lt!184032 (getCurrentListMapNoExtraKeys!949 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184045 () (_ BitVec 64))

(assert (=> b!390333 (= lt!184045 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184051 () (_ BitVec 64))

(assert (=> b!390333 (= lt!184051 (select (arr!11026 _keys!658) #b00000000000000000000000000000000))))

(assert (=> b!390333 (= lt!184041 (addApplyDifferent!277 lt!184032 lt!184045 minValue!472 lt!184051))))

(assert (=> b!390333 (= (apply!301 (+!1018 lt!184032 (tuple2!6483 lt!184045 minValue!472)) lt!184051) (apply!301 lt!184032 lt!184051))))

(declare-fun b!390334 () Bool)

(declare-fun c!54098 () Bool)

(assert (=> b!390334 (= c!54098 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!236457 () ListLongMap!5409)

(assert (=> b!390334 (= e!236450 e!236457)))

(declare-fun b!390335 () Bool)

(assert (=> b!390335 (= e!236457 call!27531)))

(declare-fun b!390336 () Bool)

(declare-fun res!223422 () Bool)

(assert (=> b!390336 (=> (not res!223422) (not e!236451))))

(assert (=> b!390336 (= res!223422 e!236453)))

(declare-fun c!54099 () Bool)

(assert (=> b!390336 (= c!54099 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!390337 () Bool)

(assert (=> b!390337 (= e!236454 (validKeyInArray!0 (select (arr!11026 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!390338 () Bool)

(assert (=> b!390338 (= e!236447 (validKeyInArray!0 (select (arr!11026 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!390339 () Bool)

(assert (=> b!390339 (= e!236459 (= (apply!301 lt!184038 (select (arr!11026 _keys!658) #b00000000000000000000000000000000)) (get!5584 (select (arr!11027 _values!506) #b00000000000000000000000000000000) (dynLambda!639 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!390339 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11379 _values!506)))))

(assert (=> b!390339 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11378 _keys!658)))))

(declare-fun b!390340 () Bool)

(assert (=> b!390340 (= e!236457 call!27533)))

(declare-fun b!390341 () Bool)

(assert (=> b!390341 (= e!236448 e!236450)))

(assert (=> b!390341 (= c!54100 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!72875 c!54103) b!390326))

(assert (= (and d!72875 (not c!54103)) b!390341))

(assert (= (and b!390341 c!54100) b!390321))

(assert (= (and b!390341 (not c!54100)) b!390334))

(assert (= (and b!390334 c!54098) b!390340))

(assert (= (and b!390334 (not c!54098)) b!390335))

(assert (= (or b!390340 b!390335) bm!27525))

(assert (= (or b!390321 bm!27525) bm!27529))

(assert (= (or b!390321 b!390340) bm!27527))

(assert (= (or b!390326 bm!27529) bm!27531))

(assert (= (or b!390326 bm!27527) bm!27528))

(assert (= (and d!72875 res!223429) b!390338))

(assert (= (and d!72875 c!54101) b!390333))

(assert (= (and d!72875 (not c!54101)) b!390329))

(assert (= (and d!72875 res!223421) b!390323))

(assert (= (and b!390323 res!223427) b!390337))

(assert (= (and b!390323 (not res!223428)) b!390325))

(assert (= (and b!390325 res!223424) b!390339))

(assert (= (and b!390323 res!223423) b!390336))

(assert (= (and b!390336 c!54099) b!390324))

(assert (= (and b!390336 (not c!54099)) b!390327))

(assert (= (and b!390324 res!223426) b!390331))

(assert (= (or b!390324 b!390327) bm!27526))

(assert (= (and b!390336 res!223422) b!390330))

(assert (= (and b!390330 c!54102) b!390332))

(assert (= (and b!390330 (not c!54102)) b!390322))

(assert (= (and b!390332 res!223425) b!390328))

(assert (= (or b!390332 b!390322) bm!27530))

(declare-fun b_lambda!8663 () Bool)

(assert (=> (not b_lambda!8663) (not b!390339)))

(assert (=> b!390339 t!11533))

(declare-fun b_and!16277 () Bool)

(assert (= b_and!16275 (and (=> t!11533 result!5739) b_and!16277)))

(assert (=> bm!27531 m!386497))

(declare-fun m!386703 () Bool)

(assert (=> bm!27526 m!386703))

(assert (=> b!390338 m!386551))

(assert (=> b!390338 m!386551))

(assert (=> b!390338 m!386579))

(declare-fun m!386705 () Bool)

(assert (=> b!390326 m!386705))

(assert (=> b!390337 m!386551))

(assert (=> b!390337 m!386551))

(assert (=> b!390337 m!386579))

(assert (=> b!390339 m!386593))

(assert (=> b!390339 m!386593))

(assert (=> b!390339 m!386591))

(assert (=> b!390339 m!386597))

(assert (=> b!390339 m!386551))

(declare-fun m!386707 () Bool)

(assert (=> b!390339 m!386707))

(assert (=> b!390339 m!386591))

(assert (=> b!390339 m!386551))

(assert (=> b!390325 m!386551))

(assert (=> b!390325 m!386551))

(declare-fun m!386709 () Bool)

(assert (=> b!390325 m!386709))

(declare-fun m!386711 () Bool)

(assert (=> bm!27530 m!386711))

(assert (=> d!72875 m!386487))

(declare-fun m!386713 () Bool)

(assert (=> b!390328 m!386713))

(declare-fun m!386715 () Bool)

(assert (=> b!390331 m!386715))

(declare-fun m!386717 () Bool)

(assert (=> b!390333 m!386717))

(declare-fun m!386719 () Bool)

(assert (=> b!390333 m!386719))

(declare-fun m!386721 () Bool)

(assert (=> b!390333 m!386721))

(declare-fun m!386723 () Bool)

(assert (=> b!390333 m!386723))

(declare-fun m!386725 () Bool)

(assert (=> b!390333 m!386725))

(assert (=> b!390333 m!386717))

(declare-fun m!386727 () Bool)

(assert (=> b!390333 m!386727))

(declare-fun m!386729 () Bool)

(assert (=> b!390333 m!386729))

(assert (=> b!390333 m!386497))

(declare-fun m!386731 () Bool)

(assert (=> b!390333 m!386731))

(declare-fun m!386733 () Bool)

(assert (=> b!390333 m!386733))

(assert (=> b!390333 m!386731))

(declare-fun m!386735 () Bool)

(assert (=> b!390333 m!386735))

(declare-fun m!386737 () Bool)

(assert (=> b!390333 m!386737))

(assert (=> b!390333 m!386725))

(declare-fun m!386739 () Bool)

(assert (=> b!390333 m!386739))

(assert (=> b!390333 m!386551))

(assert (=> b!390333 m!386721))

(declare-fun m!386741 () Bool)

(assert (=> b!390333 m!386741))

(declare-fun m!386743 () Bool)

(assert (=> b!390333 m!386743))

(declare-fun m!386745 () Bool)

(assert (=> b!390333 m!386745))

(declare-fun m!386747 () Bool)

(assert (=> bm!27528 m!386747))

(assert (=> b!390102 d!72875))

(declare-fun b!390342 () Bool)

(declare-fun e!236460 () Bool)

(declare-fun e!236462 () Bool)

(assert (=> b!390342 (= e!236460 e!236462)))

(declare-fun lt!184054 () (_ BitVec 64))

(assert (=> b!390342 (= lt!184054 (select (arr!11026 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!184053 () Unit!11925)

(assert (=> b!390342 (= lt!184053 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!658 lt!184054 #b00000000000000000000000000000000))))

(assert (=> b!390342 (arrayContainsKey!0 _keys!658 lt!184054 #b00000000000000000000000000000000)))

(declare-fun lt!184052 () Unit!11925)

(assert (=> b!390342 (= lt!184052 lt!184053)))

(declare-fun res!223430 () Bool)

(assert (=> b!390342 (= res!223430 (= (seekEntryOrOpen!0 (select (arr!11026 _keys!658) #b00000000000000000000000000000000) _keys!658 mask!970) (Found!3500 #b00000000000000000000000000000000)))))

(assert (=> b!390342 (=> (not res!223430) (not e!236462))))

(declare-fun b!390343 () Bool)

(declare-fun call!27535 () Bool)

(assert (=> b!390343 (= e!236462 call!27535)))

(declare-fun b!390344 () Bool)

(declare-fun e!236461 () Bool)

(assert (=> b!390344 (= e!236461 e!236460)))

(declare-fun c!54104 () Bool)

(assert (=> b!390344 (= c!54104 (validKeyInArray!0 (select (arr!11026 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun d!72877 () Bool)

(declare-fun res!223431 () Bool)

(assert (=> d!72877 (=> res!223431 e!236461)))

(assert (=> d!72877 (= res!223431 (bvsge #b00000000000000000000000000000000 (size!11378 _keys!658)))))

(assert (=> d!72877 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970) e!236461)))

(declare-fun b!390345 () Bool)

(assert (=> b!390345 (= e!236460 call!27535)))

(declare-fun bm!27532 () Bool)

(assert (=> bm!27532 (= call!27535 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!658 mask!970))))

(assert (= (and d!72877 (not res!223431)) b!390344))

(assert (= (and b!390344 c!54104) b!390342))

(assert (= (and b!390344 (not c!54104)) b!390345))

(assert (= (and b!390342 res!223430) b!390343))

(assert (= (or b!390343 b!390345) bm!27532))

(assert (=> b!390342 m!386551))

(declare-fun m!386749 () Bool)

(assert (=> b!390342 m!386749))

(declare-fun m!386751 () Bool)

(assert (=> b!390342 m!386751))

(assert (=> b!390342 m!386551))

(declare-fun m!386753 () Bool)

(assert (=> b!390342 m!386753))

(assert (=> b!390344 m!386551))

(assert (=> b!390344 m!386551))

(assert (=> b!390344 m!386579))

(declare-fun m!386755 () Bool)

(assert (=> bm!27532 m!386755))

(assert (=> b!390105 d!72877))

(declare-fun mapIsEmpty!16023 () Bool)

(declare-fun mapRes!16023 () Bool)

(assert (=> mapIsEmpty!16023 mapRes!16023))

(declare-fun b!390352 () Bool)

(declare-fun e!236467 () Bool)

(assert (=> b!390352 (= e!236467 tp_is_empty!9627)))

(declare-fun mapNonEmpty!16023 () Bool)

(declare-fun tp!31638 () Bool)

(assert (=> mapNonEmpty!16023 (= mapRes!16023 (and tp!31638 e!236467))))

(declare-fun mapKey!16023 () (_ BitVec 32))

(declare-fun mapRest!16023 () (Array (_ BitVec 32) ValueCell!4470))

(declare-fun mapValue!16023 () ValueCell!4470)

(assert (=> mapNonEmpty!16023 (= mapRest!16017 (store mapRest!16023 mapKey!16023 mapValue!16023))))

(declare-fun b!390353 () Bool)

(declare-fun e!236468 () Bool)

(assert (=> b!390353 (= e!236468 tp_is_empty!9627)))

(declare-fun condMapEmpty!16023 () Bool)

(declare-fun mapDefault!16023 () ValueCell!4470)

(assert (=> mapNonEmpty!16017 (= condMapEmpty!16023 (= mapRest!16017 ((as const (Array (_ BitVec 32) ValueCell!4470)) mapDefault!16023)))))

(assert (=> mapNonEmpty!16017 (= tp!31628 (and e!236468 mapRes!16023))))

(assert (= (and mapNonEmpty!16017 condMapEmpty!16023) mapIsEmpty!16023))

(assert (= (and mapNonEmpty!16017 (not condMapEmpty!16023)) mapNonEmpty!16023))

(assert (= (and mapNonEmpty!16023 ((_ is ValueCellFull!4470) mapValue!16023)) b!390352))

(assert (= (and mapNonEmpty!16017 ((_ is ValueCellFull!4470) mapDefault!16023)) b!390353))

(declare-fun m!386757 () Bool)

(assert (=> mapNonEmpty!16023 m!386757))

(declare-fun b_lambda!8665 () Bool)

(assert (= b_lambda!8661 (or (and start!37950 b_free!8955) b_lambda!8665)))

(declare-fun b_lambda!8667 () Bool)

(assert (= b_lambda!8663 (or (and start!37950 b_free!8955) b_lambda!8667)))

(declare-fun b_lambda!8669 () Bool)

(assert (= b_lambda!8655 (or (and start!37950 b_free!8955) b_lambda!8669)))

(declare-fun b_lambda!8671 () Bool)

(assert (= b_lambda!8657 (or (and start!37950 b_free!8955) b_lambda!8671)))

(declare-fun b_lambda!8673 () Bool)

(assert (= b_lambda!8659 (or (and start!37950 b_free!8955) b_lambda!8673)))

(declare-fun b_lambda!8675 () Bool)

(assert (= b_lambda!8653 (or (and start!37950 b_free!8955) b_lambda!8675)))

(check-sat (not b_lambda!8665) (not b!390243) (not b!390158) tp_is_empty!9627 (not bm!27489) (not b_lambda!8673) (not b!390178) (not b!390224) (not b!390228) (not bm!27493) (not b!390255) (not b!390246) (not b!390236) b_and!16277 (not b!390173) (not mapNonEmpty!16023) (not bm!27526) (not b!390242) (not b!390179) (not b!390337) (not b_lambda!8669) (not b_lambda!8667) (not bm!27530) (not bm!27502) (not d!72867) (not b!390226) (not b!390181) (not b!390170) (not bm!27528) (not b!390325) (not b!390239) (not b!390312) (not b!390304) (not bm!27521) (not b!390195) (not b!390318) (not bm!27503) (not bm!27524) (not b!390235) (not b!390169) (not b!390338) (not b!390227) (not d!72871) (not b!390244) (not d!72875) (not b!390307) (not b!390326) (not b!390180) (not b_lambda!8675) (not bm!27497) (not bm!27531) (not d!72873) (not b!390240) (not b!390230) (not b!390225) (not bm!27490) (not b!390342) (not b!390241) (not b!390333) (not b!390221) (not bm!27523) (not b!390317) (not b!390184) (not b!390316) (not b!390339) (not b_next!8955) (not b!390344) (not b!390193) (not b!390305) (not d!72869) (not bm!27532) (not bm!27496) (not b!390331) (not b!390223) (not b!390310) (not b_lambda!8671) (not d!72853) (not bm!27519) (not b!390328) (not d!72865) (not b!390237))
(check-sat b_and!16277 (not b_next!8955))
