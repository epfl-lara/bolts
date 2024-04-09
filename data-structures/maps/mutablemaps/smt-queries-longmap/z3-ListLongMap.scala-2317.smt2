; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37374 () Bool)

(assert start!37374)

(declare-fun b_free!8493 () Bool)

(declare-fun b_next!8493 () Bool)

(assert (=> start!37374 (= b_free!8493 (not b_next!8493))))

(declare-fun tp!30195 () Bool)

(declare-fun b_and!15753 () Bool)

(assert (=> start!37374 (= tp!30195 b_and!15753)))

(declare-fun b!379350 () Bool)

(declare-fun res!215196 () Bool)

(declare-fun e!230807 () Bool)

(assert (=> b!379350 (=> (not res!215196) (not e!230807))))

(declare-datatypes ((array!22179 0))(
  ( (array!22180 (arr!10555 (Array (_ BitVec 32) (_ BitVec 64))) (size!10907 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22179)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22179 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!379350 (= res!215196 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!379351 () Bool)

(declare-fun e!230808 () Bool)

(declare-fun e!230809 () Bool)

(declare-fun mapRes!15276 () Bool)

(assert (=> b!379351 (= e!230808 (and e!230809 mapRes!15276))))

(declare-fun condMapEmpty!15276 () Bool)

(declare-datatypes ((V!13293 0))(
  ( (V!13294 (val!4615 Int)) )
))
(declare-datatypes ((ValueCell!4227 0))(
  ( (ValueCellFull!4227 (v!6808 V!13293)) (EmptyCell!4227) )
))
(declare-datatypes ((array!22181 0))(
  ( (array!22182 (arr!10556 (Array (_ BitVec 32) ValueCell!4227)) (size!10908 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22181)

(declare-fun mapDefault!15276 () ValueCell!4227)

(assert (=> b!379351 (= condMapEmpty!15276 (= (arr!10556 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4227)) mapDefault!15276)))))

(declare-fun b!379352 () Bool)

(declare-fun e!230806 () Bool)

(assert (=> b!379352 (= e!230807 e!230806)))

(declare-fun res!215198 () Bool)

(assert (=> b!379352 (=> (not res!215198) (not e!230806))))

(declare-fun lt!177243 () array!22179)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22179 (_ BitVec 32)) Bool)

(assert (=> b!379352 (= res!215198 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!177243 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!379352 (= lt!177243 (array!22180 (store (arr!10555 _keys!658) i!548 k0!778) (size!10907 _keys!658)))))

(declare-fun b!379353 () Bool)

(declare-fun e!230811 () Bool)

(declare-fun e!230804 () Bool)

(assert (=> b!379353 (= e!230811 e!230804)))

(declare-fun res!215189 () Bool)

(assert (=> b!379353 (=> res!215189 e!230804)))

(assert (=> b!379353 (= res!215189 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!6142 0))(
  ( (tuple2!6143 (_1!3081 (_ BitVec 64)) (_2!3081 V!13293)) )
))
(declare-datatypes ((List!6015 0))(
  ( (Nil!6012) (Cons!6011 (h!6867 tuple2!6142) (t!11173 List!6015)) )
))
(declare-datatypes ((ListLongMap!5069 0))(
  ( (ListLongMap!5070 (toList!2550 List!6015)) )
))
(declare-fun lt!177242 () ListLongMap!5069)

(declare-fun lt!177249 () ListLongMap!5069)

(assert (=> b!379353 (= lt!177242 lt!177249)))

(declare-fun lt!177248 () ListLongMap!5069)

(declare-fun lt!177247 () tuple2!6142)

(declare-fun +!891 (ListLongMap!5069 tuple2!6142) ListLongMap!5069)

(assert (=> b!379353 (= lt!177249 (+!891 lt!177248 lt!177247))))

(declare-fun lt!177241 () ListLongMap!5069)

(declare-fun lt!177244 () ListLongMap!5069)

(assert (=> b!379353 (= lt!177241 lt!177244)))

(declare-fun lt!177240 () ListLongMap!5069)

(assert (=> b!379353 (= lt!177244 (+!891 lt!177240 lt!177247))))

(declare-fun lt!177250 () ListLongMap!5069)

(assert (=> b!379353 (= lt!177241 (+!891 lt!177250 lt!177247))))

(declare-fun minValue!472 () V!13293)

(assert (=> b!379353 (= lt!177247 (tuple2!6143 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379354 () Bool)

(assert (=> b!379354 (= e!230806 (not e!230811))))

(declare-fun res!215187 () Bool)

(assert (=> b!379354 (=> res!215187 e!230811)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!379354 (= res!215187 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13293)

(declare-fun getCurrentListMap!1978 (array!22179 array!22181 (_ BitVec 32) (_ BitVec 32) V!13293 V!13293 (_ BitVec 32) Int) ListLongMap!5069)

(assert (=> b!379354 (= lt!177242 (getCurrentListMap!1978 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177238 () array!22181)

(assert (=> b!379354 (= lt!177241 (getCurrentListMap!1978 lt!177243 lt!177238 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379354 (and (= lt!177250 lt!177240) (= lt!177240 lt!177250))))

(declare-fun lt!177246 () tuple2!6142)

(assert (=> b!379354 (= lt!177240 (+!891 lt!177248 lt!177246))))

(declare-fun v!373 () V!13293)

(assert (=> b!379354 (= lt!177246 (tuple2!6143 k0!778 v!373))))

(declare-datatypes ((Unit!11677 0))(
  ( (Unit!11678) )
))
(declare-fun lt!177245 () Unit!11677)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!129 (array!22179 array!22181 (_ BitVec 32) (_ BitVec 32) V!13293 V!13293 (_ BitVec 32) (_ BitVec 64) V!13293 (_ BitVec 32) Int) Unit!11677)

(assert (=> b!379354 (= lt!177245 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!129 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!796 (array!22179 array!22181 (_ BitVec 32) (_ BitVec 32) V!13293 V!13293 (_ BitVec 32) Int) ListLongMap!5069)

(assert (=> b!379354 (= lt!177250 (getCurrentListMapNoExtraKeys!796 lt!177243 lt!177238 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379354 (= lt!177238 (array!22182 (store (arr!10556 _values!506) i!548 (ValueCellFull!4227 v!373)) (size!10908 _values!506)))))

(assert (=> b!379354 (= lt!177248 (getCurrentListMapNoExtraKeys!796 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!379355 () Bool)

(declare-fun res!215191 () Bool)

(assert (=> b!379355 (=> (not res!215191) (not e!230807))))

(assert (=> b!379355 (= res!215191 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10907 _keys!658))))))

(declare-fun b!379357 () Bool)

(declare-fun tp_is_empty!9141 () Bool)

(assert (=> b!379357 (= e!230809 tp_is_empty!9141)))

(declare-fun mapIsEmpty!15276 () Bool)

(assert (=> mapIsEmpty!15276 mapRes!15276))

(declare-fun b!379358 () Bool)

(declare-fun res!215193 () Bool)

(assert (=> b!379358 (=> (not res!215193) (not e!230807))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!379358 (= res!215193 (validKeyInArray!0 k0!778))))

(declare-fun mapNonEmpty!15276 () Bool)

(declare-fun tp!30194 () Bool)

(declare-fun e!230805 () Bool)

(assert (=> mapNonEmpty!15276 (= mapRes!15276 (and tp!30194 e!230805))))

(declare-fun mapKey!15276 () (_ BitVec 32))

(declare-fun mapValue!15276 () ValueCell!4227)

(declare-fun mapRest!15276 () (Array (_ BitVec 32) ValueCell!4227))

(assert (=> mapNonEmpty!15276 (= (arr!10556 _values!506) (store mapRest!15276 mapKey!15276 mapValue!15276))))

(declare-fun b!379359 () Bool)

(declare-fun res!215194 () Bool)

(assert (=> b!379359 (=> (not res!215194) (not e!230806))))

(declare-datatypes ((List!6016 0))(
  ( (Nil!6013) (Cons!6012 (h!6868 (_ BitVec 64)) (t!11174 List!6016)) )
))
(declare-fun arrayNoDuplicates!0 (array!22179 (_ BitVec 32) List!6016) Bool)

(assert (=> b!379359 (= res!215194 (arrayNoDuplicates!0 lt!177243 #b00000000000000000000000000000000 Nil!6013))))

(declare-fun b!379360 () Bool)

(declare-fun res!215195 () Bool)

(assert (=> b!379360 (=> (not res!215195) (not e!230807))))

(assert (=> b!379360 (= res!215195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!379361 () Bool)

(declare-fun res!215192 () Bool)

(assert (=> b!379361 (=> (not res!215192) (not e!230807))))

(assert (=> b!379361 (= res!215192 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6013))))

(declare-fun b!379362 () Bool)

(declare-fun res!215197 () Bool)

(assert (=> b!379362 (=> (not res!215197) (not e!230807))))

(assert (=> b!379362 (= res!215197 (and (= (size!10908 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10907 _keys!658) (size!10908 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!379356 () Bool)

(assert (=> b!379356 (= e!230805 tp_is_empty!9141)))

(declare-fun res!215188 () Bool)

(assert (=> start!37374 (=> (not res!215188) (not e!230807))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37374 (= res!215188 (validMask!0 mask!970))))

(assert (=> start!37374 e!230807))

(declare-fun array_inv!7766 (array!22181) Bool)

(assert (=> start!37374 (and (array_inv!7766 _values!506) e!230808)))

(assert (=> start!37374 tp!30195))

(assert (=> start!37374 true))

(assert (=> start!37374 tp_is_empty!9141))

(declare-fun array_inv!7767 (array!22179) Bool)

(assert (=> start!37374 (array_inv!7767 _keys!658)))

(declare-fun b!379363 () Bool)

(assert (=> b!379363 (= e!230804 (bvsle #b00000000000000000000000000000000 (size!10907 _keys!658)))))

(assert (=> b!379363 (= lt!177244 (+!891 lt!177249 lt!177246))))

(declare-fun lt!177239 () Unit!11677)

(declare-fun addCommutativeForDiffKeys!303 (ListLongMap!5069 (_ BitVec 64) V!13293 (_ BitVec 64) V!13293) Unit!11677)

(assert (=> b!379363 (= lt!177239 (addCommutativeForDiffKeys!303 lt!177248 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379364 () Bool)

(declare-fun res!215190 () Bool)

(assert (=> b!379364 (=> (not res!215190) (not e!230807))))

(assert (=> b!379364 (= res!215190 (or (= (select (arr!10555 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10555 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!37374 res!215188) b!379362))

(assert (= (and b!379362 res!215197) b!379360))

(assert (= (and b!379360 res!215195) b!379361))

(assert (= (and b!379361 res!215192) b!379355))

(assert (= (and b!379355 res!215191) b!379358))

(assert (= (and b!379358 res!215193) b!379364))

(assert (= (and b!379364 res!215190) b!379350))

(assert (= (and b!379350 res!215196) b!379352))

(assert (= (and b!379352 res!215198) b!379359))

(assert (= (and b!379359 res!215194) b!379354))

(assert (= (and b!379354 (not res!215187)) b!379353))

(assert (= (and b!379353 (not res!215189)) b!379363))

(assert (= (and b!379351 condMapEmpty!15276) mapIsEmpty!15276))

(assert (= (and b!379351 (not condMapEmpty!15276)) mapNonEmpty!15276))

(get-info :version)

(assert (= (and mapNonEmpty!15276 ((_ is ValueCellFull!4227) mapValue!15276)) b!379356))

(assert (= (and b!379351 ((_ is ValueCellFull!4227) mapDefault!15276)) b!379357))

(assert (= start!37374 b!379351))

(declare-fun m!376277 () Bool)

(assert (=> b!379359 m!376277))

(declare-fun m!376279 () Bool)

(assert (=> b!379360 m!376279))

(declare-fun m!376281 () Bool)

(assert (=> b!379358 m!376281))

(declare-fun m!376283 () Bool)

(assert (=> b!379353 m!376283))

(declare-fun m!376285 () Bool)

(assert (=> b!379353 m!376285))

(declare-fun m!376287 () Bool)

(assert (=> b!379353 m!376287))

(declare-fun m!376289 () Bool)

(assert (=> start!37374 m!376289))

(declare-fun m!376291 () Bool)

(assert (=> start!37374 m!376291))

(declare-fun m!376293 () Bool)

(assert (=> start!37374 m!376293))

(declare-fun m!376295 () Bool)

(assert (=> b!379352 m!376295))

(declare-fun m!376297 () Bool)

(assert (=> b!379352 m!376297))

(declare-fun m!376299 () Bool)

(assert (=> b!379354 m!376299))

(declare-fun m!376301 () Bool)

(assert (=> b!379354 m!376301))

(declare-fun m!376303 () Bool)

(assert (=> b!379354 m!376303))

(declare-fun m!376305 () Bool)

(assert (=> b!379354 m!376305))

(declare-fun m!376307 () Bool)

(assert (=> b!379354 m!376307))

(declare-fun m!376309 () Bool)

(assert (=> b!379354 m!376309))

(declare-fun m!376311 () Bool)

(assert (=> b!379354 m!376311))

(declare-fun m!376313 () Bool)

(assert (=> b!379363 m!376313))

(declare-fun m!376315 () Bool)

(assert (=> b!379363 m!376315))

(declare-fun m!376317 () Bool)

(assert (=> b!379364 m!376317))

(declare-fun m!376319 () Bool)

(assert (=> mapNonEmpty!15276 m!376319))

(declare-fun m!376321 () Bool)

(assert (=> b!379350 m!376321))

(declare-fun m!376323 () Bool)

(assert (=> b!379361 m!376323))

(check-sat (not b!379352) b_and!15753 (not b!379363) (not b!379354) (not b!379360) (not b!379350) (not b_next!8493) (not b!379359) (not mapNonEmpty!15276) (not b!379353) (not b!379361) (not start!37374) tp_is_empty!9141 (not b!379358))
(check-sat b_and!15753 (not b_next!8493))
