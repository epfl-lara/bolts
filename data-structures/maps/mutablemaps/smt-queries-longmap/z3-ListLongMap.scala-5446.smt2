; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72490 () Bool)

(assert start!72490)

(declare-fun b_free!13647 () Bool)

(declare-fun b_next!13647 () Bool)

(assert (=> start!72490 (= b_free!13647 (not b_next!13647))))

(declare-fun tp!48040 () Bool)

(declare-fun b_and!22751 () Bool)

(assert (=> start!72490 (= tp!48040 b_and!22751)))

(declare-fun b!840278 () Bool)

(declare-fun e!468887 () Bool)

(declare-fun e!468883 () Bool)

(declare-fun mapRes!24869 () Bool)

(assert (=> b!840278 (= e!468887 (and e!468883 mapRes!24869))))

(declare-fun condMapEmpty!24869 () Bool)

(declare-datatypes ((V!25731 0))(
  ( (V!25732 (val!7804 Int)) )
))
(declare-datatypes ((ValueCell!7317 0))(
  ( (ValueCellFull!7317 (v!10225 V!25731)) (EmptyCell!7317) )
))
(declare-datatypes ((array!47274 0))(
  ( (array!47275 (arr!22664 (Array (_ BitVec 32) ValueCell!7317)) (size!23105 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47274)

(declare-fun mapDefault!24869 () ValueCell!7317)

(assert (=> b!840278 (= condMapEmpty!24869 (= (arr!22664 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7317)) mapDefault!24869)))))

(declare-fun v!557 () V!25731)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47276 0))(
  ( (array!47277 (arr!22665 (Array (_ BitVec 32) (_ BitVec 64))) (size!23106 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47276)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25731)

(declare-fun zeroValue!654 () V!25731)

(declare-fun bm!37171 () Bool)

(declare-datatypes ((tuple2!10360 0))(
  ( (tuple2!10361 (_1!5190 (_ BitVec 64)) (_2!5190 V!25731)) )
))
(declare-datatypes ((List!16188 0))(
  ( (Nil!16185) (Cons!16184 (h!17315 tuple2!10360) (t!22567 List!16188)) )
))
(declare-datatypes ((ListLongMap!9143 0))(
  ( (ListLongMap!9144 (toList!4587 List!16188)) )
))
(declare-fun call!37174 () ListLongMap!9143)

(declare-fun getCurrentListMapNoExtraKeys!2579 (array!47276 array!47274 (_ BitVec 32) (_ BitVec 32) V!25731 V!25731 (_ BitVec 32) Int) ListLongMap!9143)

(assert (=> bm!37171 (= call!37174 (getCurrentListMapNoExtraKeys!2579 _keys!868 (array!47275 (store (arr!22664 _values!688) i!612 (ValueCellFull!7317 v!557)) (size!23105 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840279 () Bool)

(declare-fun res!571372 () Bool)

(declare-fun e!468884 () Bool)

(assert (=> b!840279 (=> (not res!571372) (not e!468884))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!840279 (= res!571372 (and (= (select (arr!22665 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23106 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!840280 () Bool)

(declare-fun res!571367 () Bool)

(assert (=> b!840280 (=> (not res!571367) (not e!468884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!840280 (= res!571367 (validMask!0 mask!1196))))

(declare-fun b!840281 () Bool)

(declare-fun res!571369 () Bool)

(assert (=> b!840281 (=> (not res!571369) (not e!468884))))

(assert (=> b!840281 (= res!571369 (and (= (size!23105 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23106 _keys!868) (size!23105 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!840282 () Bool)

(declare-fun e!468885 () Bool)

(declare-fun tp_is_empty!15513 () Bool)

(assert (=> b!840282 (= e!468885 tp_is_empty!15513)))

(declare-fun e!468886 () Bool)

(declare-fun call!37175 () ListLongMap!9143)

(declare-fun b!840283 () Bool)

(declare-fun +!1999 (ListLongMap!9143 tuple2!10360) ListLongMap!9143)

(assert (=> b!840283 (= e!468886 (= call!37174 (+!1999 call!37175 (tuple2!10361 k0!854 v!557))))))

(declare-fun b!840284 () Bool)

(declare-fun res!571370 () Bool)

(assert (=> b!840284 (=> (not res!571370) (not e!468884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47276 (_ BitVec 32)) Bool)

(assert (=> b!840284 (= res!571370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!840285 () Bool)

(assert (=> b!840285 (= e!468884 (not true))))

(assert (=> b!840285 e!468886))

(declare-fun c!91248 () Bool)

(assert (=> b!840285 (= c!91248 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28856 0))(
  ( (Unit!28857) )
))
(declare-fun lt!380781 () Unit!28856)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!277 (array!47276 array!47274 (_ BitVec 32) (_ BitVec 32) V!25731 V!25731 (_ BitVec 32) (_ BitVec 64) V!25731 (_ BitVec 32) Int) Unit!28856)

(assert (=> b!840285 (= lt!380781 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!277 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840286 () Bool)

(declare-fun res!571371 () Bool)

(assert (=> b!840286 (=> (not res!571371) (not e!468884))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!840286 (= res!571371 (validKeyInArray!0 k0!854))))

(declare-fun mapIsEmpty!24869 () Bool)

(assert (=> mapIsEmpty!24869 mapRes!24869))

(declare-fun b!840287 () Bool)

(assert (=> b!840287 (= e!468883 tp_is_empty!15513)))

(declare-fun mapNonEmpty!24869 () Bool)

(declare-fun tp!48041 () Bool)

(assert (=> mapNonEmpty!24869 (= mapRes!24869 (and tp!48041 e!468885))))

(declare-fun mapKey!24869 () (_ BitVec 32))

(declare-fun mapValue!24869 () ValueCell!7317)

(declare-fun mapRest!24869 () (Array (_ BitVec 32) ValueCell!7317))

(assert (=> mapNonEmpty!24869 (= (arr!22664 _values!688) (store mapRest!24869 mapKey!24869 mapValue!24869))))

(declare-fun res!571373 () Bool)

(assert (=> start!72490 (=> (not res!571373) (not e!468884))))

(assert (=> start!72490 (= res!571373 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23106 _keys!868))))))

(assert (=> start!72490 e!468884))

(assert (=> start!72490 tp_is_empty!15513))

(assert (=> start!72490 true))

(assert (=> start!72490 tp!48040))

(declare-fun array_inv!18016 (array!47276) Bool)

(assert (=> start!72490 (array_inv!18016 _keys!868)))

(declare-fun array_inv!18017 (array!47274) Bool)

(assert (=> start!72490 (and (array_inv!18017 _values!688) e!468887)))

(declare-fun b!840288 () Bool)

(assert (=> b!840288 (= e!468886 (= call!37174 call!37175))))

(declare-fun b!840289 () Bool)

(declare-fun res!571374 () Bool)

(assert (=> b!840289 (=> (not res!571374) (not e!468884))))

(assert (=> b!840289 (= res!571374 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23106 _keys!868))))))

(declare-fun bm!37172 () Bool)

(assert (=> bm!37172 (= call!37175 (getCurrentListMapNoExtraKeys!2579 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840290 () Bool)

(declare-fun res!571368 () Bool)

(assert (=> b!840290 (=> (not res!571368) (not e!468884))))

(declare-datatypes ((List!16189 0))(
  ( (Nil!16186) (Cons!16185 (h!17316 (_ BitVec 64)) (t!22568 List!16189)) )
))
(declare-fun arrayNoDuplicates!0 (array!47276 (_ BitVec 32) List!16189) Bool)

(assert (=> b!840290 (= res!571368 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16186))))

(assert (= (and start!72490 res!571373) b!840280))

(assert (= (and b!840280 res!571367) b!840281))

(assert (= (and b!840281 res!571369) b!840284))

(assert (= (and b!840284 res!571370) b!840290))

(assert (= (and b!840290 res!571368) b!840289))

(assert (= (and b!840289 res!571374) b!840286))

(assert (= (and b!840286 res!571371) b!840279))

(assert (= (and b!840279 res!571372) b!840285))

(assert (= (and b!840285 c!91248) b!840283))

(assert (= (and b!840285 (not c!91248)) b!840288))

(assert (= (or b!840283 b!840288) bm!37171))

(assert (= (or b!840283 b!840288) bm!37172))

(assert (= (and b!840278 condMapEmpty!24869) mapIsEmpty!24869))

(assert (= (and b!840278 (not condMapEmpty!24869)) mapNonEmpty!24869))

(get-info :version)

(assert (= (and mapNonEmpty!24869 ((_ is ValueCellFull!7317) mapValue!24869)) b!840282))

(assert (= (and b!840278 ((_ is ValueCellFull!7317) mapDefault!24869)) b!840287))

(assert (= start!72490 b!840278))

(declare-fun m!784165 () Bool)

(assert (=> b!840283 m!784165))

(declare-fun m!784167 () Bool)

(assert (=> b!840280 m!784167))

(declare-fun m!784169 () Bool)

(assert (=> b!840285 m!784169))

(declare-fun m!784171 () Bool)

(assert (=> start!72490 m!784171))

(declare-fun m!784173 () Bool)

(assert (=> start!72490 m!784173))

(declare-fun m!784175 () Bool)

(assert (=> b!840290 m!784175))

(declare-fun m!784177 () Bool)

(assert (=> b!840284 m!784177))

(declare-fun m!784179 () Bool)

(assert (=> b!840279 m!784179))

(declare-fun m!784181 () Bool)

(assert (=> mapNonEmpty!24869 m!784181))

(declare-fun m!784183 () Bool)

(assert (=> b!840286 m!784183))

(declare-fun m!784185 () Bool)

(assert (=> bm!37171 m!784185))

(declare-fun m!784187 () Bool)

(assert (=> bm!37171 m!784187))

(declare-fun m!784189 () Bool)

(assert (=> bm!37172 m!784189))

(check-sat (not b!840280) tp_is_empty!15513 (not b!840285) (not start!72490) (not bm!37171) (not b!840290) (not b!840286) (not bm!37172) b_and!22751 (not b!840284) (not mapNonEmpty!24869) (not b!840283) (not b_next!13647))
(check-sat b_and!22751 (not b_next!13647))
