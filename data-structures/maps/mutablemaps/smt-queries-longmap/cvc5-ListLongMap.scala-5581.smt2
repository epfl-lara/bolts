; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73298 () Bool)

(assert start!73298)

(declare-fun b_free!14185 () Bool)

(declare-fun b_next!14185 () Bool)

(assert (=> start!73298 (= b_free!14185 (not b_next!14185))))

(declare-fun tp!50060 () Bool)

(declare-fun b_and!23547 () Bool)

(assert (=> start!73298 (= tp!50060 b_and!23547)))

(declare-fun b!854352 () Bool)

(declare-fun res!580320 () Bool)

(declare-fun e!476435 () Bool)

(assert (=> b!854352 (=> (not res!580320) (not e!476435))))

(declare-datatypes ((array!48822 0))(
  ( (array!48823 (arr!23438 (Array (_ BitVec 32) (_ BitVec 64))) (size!23879 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48822)

(declare-datatypes ((List!16680 0))(
  ( (Nil!16677) (Cons!16676 (h!17807 (_ BitVec 64)) (t!23319 List!16680)) )
))
(declare-fun arrayNoDuplicates!0 (array!48822 (_ BitVec 32) List!16680) Bool)

(assert (=> b!854352 (= res!580320 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16677))))

(declare-fun mapNonEmpty!26081 () Bool)

(declare-fun mapRes!26081 () Bool)

(declare-fun tp!50059 () Bool)

(declare-fun e!476430 () Bool)

(assert (=> mapNonEmpty!26081 (= mapRes!26081 (and tp!50059 e!476430))))

(declare-datatypes ((V!26809 0))(
  ( (V!26810 (val!8208 Int)) )
))
(declare-datatypes ((ValueCell!7721 0))(
  ( (ValueCellFull!7721 (v!10629 V!26809)) (EmptyCell!7721) )
))
(declare-fun mapRest!26081 () (Array (_ BitVec 32) ValueCell!7721))

(declare-fun mapKey!26081 () (_ BitVec 32))

(declare-fun mapValue!26081 () ValueCell!7721)

(declare-datatypes ((array!48824 0))(
  ( (array!48825 (arr!23439 (Array (_ BitVec 32) ValueCell!7721)) (size!23880 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48824)

(assert (=> mapNonEmpty!26081 (= (arr!23439 _values!688) (store mapRest!26081 mapKey!26081 mapValue!26081))))

(declare-fun b!854353 () Bool)

(declare-fun res!580315 () Bool)

(assert (=> b!854353 (=> (not res!580315) (not e!476435))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!854353 (= res!580315 (and (= (select (arr!23438 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!854354 () Bool)

(declare-fun e!476429 () Bool)

(assert (=> b!854354 (= e!476429 true)))

(declare-datatypes ((tuple2!10808 0))(
  ( (tuple2!10809 (_1!5414 (_ BitVec 64)) (_2!5414 V!26809)) )
))
(declare-datatypes ((List!16681 0))(
  ( (Nil!16678) (Cons!16677 (h!17808 tuple2!10808) (t!23320 List!16681)) )
))
(declare-datatypes ((ListLongMap!9591 0))(
  ( (ListLongMap!9592 (toList!4811 List!16681)) )
))
(declare-fun lt!385361 () ListLongMap!9591)

(declare-fun lt!385367 () V!26809)

(declare-fun lt!385365 () tuple2!10808)

(declare-fun +!2146 (ListLongMap!9591 tuple2!10808) ListLongMap!9591)

(assert (=> b!854354 (= (+!2146 lt!385361 lt!385365) (+!2146 (+!2146 lt!385361 (tuple2!10809 k!854 lt!385367)) lt!385365))))

(declare-fun lt!385362 () V!26809)

(assert (=> b!854354 (= lt!385365 (tuple2!10809 k!854 lt!385362))))

(declare-datatypes ((Unit!29134 0))(
  ( (Unit!29135) )
))
(declare-fun lt!385360 () Unit!29134)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!323 (ListLongMap!9591 (_ BitVec 64) V!26809 V!26809) Unit!29134)

(assert (=> b!854354 (= lt!385360 (addSameAsAddTwiceSameKeyDiffValues!323 lt!385361 k!854 lt!385367 lt!385362))))

(declare-fun lt!385366 () V!26809)

(declare-fun get!12383 (ValueCell!7721 V!26809) V!26809)

(assert (=> b!854354 (= lt!385367 (get!12383 (select (arr!23439 _values!688) from!1053) lt!385366))))

(declare-fun lt!385364 () ListLongMap!9591)

(assert (=> b!854354 (= lt!385364 (+!2146 lt!385361 (tuple2!10809 (select (arr!23438 _keys!868) from!1053) lt!385362)))))

(declare-fun v!557 () V!26809)

(assert (=> b!854354 (= lt!385362 (get!12383 (select (store (arr!23439 _values!688) i!612 (ValueCellFull!7721 v!557)) from!1053) lt!385366))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1071 (Int (_ BitVec 64)) V!26809)

(assert (=> b!854354 (= lt!385366 (dynLambda!1071 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26809)

(declare-fun zeroValue!654 () V!26809)

(declare-fun lt!385368 () array!48824)

(declare-fun getCurrentListMapNoExtraKeys!2793 (array!48822 array!48824 (_ BitVec 32) (_ BitVec 32) V!26809 V!26809 (_ BitVec 32) Int) ListLongMap!9591)

(assert (=> b!854354 (= lt!385361 (getCurrentListMapNoExtraKeys!2793 _keys!868 lt!385368 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854355 () Bool)

(declare-fun res!580318 () Bool)

(assert (=> b!854355 (=> (not res!580318) (not e!476435))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48822 (_ BitVec 32)) Bool)

(assert (=> b!854355 (= res!580318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!26081 () Bool)

(assert (=> mapIsEmpty!26081 mapRes!26081))

(declare-fun b!854356 () Bool)

(declare-fun e!476432 () Bool)

(declare-fun call!38410 () ListLongMap!9591)

(declare-fun call!38411 () ListLongMap!9591)

(assert (=> b!854356 (= e!476432 (= call!38410 call!38411))))

(declare-fun bm!38407 () Bool)

(assert (=> bm!38407 (= call!38410 (getCurrentListMapNoExtraKeys!2793 _keys!868 lt!385368 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854357 () Bool)

(declare-fun res!580312 () Bool)

(assert (=> b!854357 (=> (not res!580312) (not e!476435))))

(assert (=> b!854357 (= res!580312 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23879 _keys!868))))))

(declare-fun b!854358 () Bool)

(declare-fun e!476434 () Bool)

(assert (=> b!854358 (= e!476434 (not e!476429))))

(declare-fun res!580311 () Bool)

(assert (=> b!854358 (=> res!580311 e!476429)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!854358 (= res!580311 (not (validKeyInArray!0 (select (arr!23438 _keys!868) from!1053))))))

(assert (=> b!854358 e!476432))

(declare-fun c!91866 () Bool)

(assert (=> b!854358 (= c!91866 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!385363 () Unit!29134)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!406 (array!48822 array!48824 (_ BitVec 32) (_ BitVec 32) V!26809 V!26809 (_ BitVec 32) (_ BitVec 64) V!26809 (_ BitVec 32) Int) Unit!29134)

(assert (=> b!854358 (= lt!385363 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!406 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854359 () Bool)

(assert (=> b!854359 (= e!476435 e!476434)))

(declare-fun res!580317 () Bool)

(assert (=> b!854359 (=> (not res!580317) (not e!476434))))

(assert (=> b!854359 (= res!580317 (= from!1053 i!612))))

(assert (=> b!854359 (= lt!385364 (getCurrentListMapNoExtraKeys!2793 _keys!868 lt!385368 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!854359 (= lt!385368 (array!48825 (store (arr!23439 _values!688) i!612 (ValueCellFull!7721 v!557)) (size!23880 _values!688)))))

(declare-fun lt!385359 () ListLongMap!9591)

(assert (=> b!854359 (= lt!385359 (getCurrentListMapNoExtraKeys!2793 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!854360 () Bool)

(declare-fun e!476431 () Bool)

(declare-fun e!476436 () Bool)

(assert (=> b!854360 (= e!476431 (and e!476436 mapRes!26081))))

(declare-fun condMapEmpty!26081 () Bool)

(declare-fun mapDefault!26081 () ValueCell!7721)

