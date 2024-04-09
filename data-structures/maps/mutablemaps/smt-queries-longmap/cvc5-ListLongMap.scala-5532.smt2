; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73004 () Bool)

(assert start!73004)

(declare-fun b_free!13891 () Bool)

(declare-fun b_next!13891 () Bool)

(assert (=> start!73004 (= b_free!13891 (not b_next!13891))))

(declare-fun tp!49178 () Bool)

(declare-fun b_and!22995 () Bool)

(assert (=> start!73004 (= tp!49178 b_and!22995)))

(declare-fun b!847522 () Bool)

(declare-fun res!575952 () Bool)

(declare-fun e!472949 () Bool)

(assert (=> b!847522 (=> (not res!575952) (not e!472949))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48246 0))(
  ( (array!48247 (arr!23150 (Array (_ BitVec 32) (_ BitVec 64))) (size!23591 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48246)

(declare-datatypes ((V!26417 0))(
  ( (V!26418 (val!8061 Int)) )
))
(declare-datatypes ((ValueCell!7574 0))(
  ( (ValueCellFull!7574 (v!10482 V!26417)) (EmptyCell!7574) )
))
(declare-datatypes ((array!48248 0))(
  ( (array!48249 (arr!23151 (Array (_ BitVec 32) ValueCell!7574)) (size!23592 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48248)

(assert (=> b!847522 (= res!575952 (and (= (size!23592 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23591 _keys!868) (size!23592 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!847523 () Bool)

(declare-fun e!472944 () Bool)

(declare-fun tp_is_empty!16027 () Bool)

(assert (=> b!847523 (= e!472944 tp_is_empty!16027)))

(declare-fun b!847524 () Bool)

(declare-fun e!472945 () Bool)

(assert (=> b!847524 (= e!472945 (not true))))

(declare-fun e!472946 () Bool)

(assert (=> b!847524 e!472946))

(declare-fun c!91425 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!847524 (= c!91425 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!26417)

(declare-fun defaultEntry!696 () Int)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun minValue!654 () V!26417)

(declare-fun zeroValue!654 () V!26417)

(declare-datatypes ((Unit!28930 0))(
  ( (Unit!28931) )
))
(declare-fun lt!381750 () Unit!28930)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!314 (array!48246 array!48248 (_ BitVec 32) (_ BitVec 32) V!26417 V!26417 (_ BitVec 32) (_ BitVec 64) V!26417 (_ BitVec 32) Int) Unit!28930)

(assert (=> b!847524 (= lt!381750 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!314 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!25640 () Bool)

(declare-fun mapRes!25640 () Bool)

(declare-fun tp!49177 () Bool)

(assert (=> mapNonEmpty!25640 (= mapRes!25640 (and tp!49177 e!472944))))

(declare-fun mapValue!25640 () ValueCell!7574)

(declare-fun mapRest!25640 () (Array (_ BitVec 32) ValueCell!7574))

(declare-fun mapKey!25640 () (_ BitVec 32))

(assert (=> mapNonEmpty!25640 (= (arr!23151 _values!688) (store mapRest!25640 mapKey!25640 mapValue!25640))))

(declare-fun b!847525 () Bool)

(declare-fun res!575946 () Bool)

(assert (=> b!847525 (=> (not res!575946) (not e!472949))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!847525 (= res!575946 (validMask!0 mask!1196))))

(declare-datatypes ((tuple2!10544 0))(
  ( (tuple2!10545 (_1!5282 (_ BitVec 64)) (_2!5282 V!26417)) )
))
(declare-datatypes ((List!16457 0))(
  ( (Nil!16454) (Cons!16453 (h!17584 tuple2!10544) (t!22836 List!16457)) )
))
(declare-datatypes ((ListLongMap!9327 0))(
  ( (ListLongMap!9328 (toList!4679 List!16457)) )
))
(declare-fun call!37528 () ListLongMap!9327)

(declare-fun b!847526 () Bool)

(declare-fun call!37529 () ListLongMap!9327)

(declare-fun +!2037 (ListLongMap!9327 tuple2!10544) ListLongMap!9327)

(assert (=> b!847526 (= e!472946 (= call!37528 (+!2037 call!37529 (tuple2!10545 k!854 v!557))))))

(declare-fun b!847527 () Bool)

(declare-fun res!575949 () Bool)

(assert (=> b!847527 (=> (not res!575949) (not e!472949))))

(assert (=> b!847527 (= res!575949 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23591 _keys!868))))))

(declare-fun bm!37525 () Bool)

(declare-fun lt!381749 () array!48248)

(declare-fun getCurrentListMapNoExtraKeys!2668 (array!48246 array!48248 (_ BitVec 32) (_ BitVec 32) V!26417 V!26417 (_ BitVec 32) Int) ListLongMap!9327)

(assert (=> bm!37525 (= call!37528 (getCurrentListMapNoExtraKeys!2668 _keys!868 lt!381749 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!25640 () Bool)

(assert (=> mapIsEmpty!25640 mapRes!25640))

(declare-fun b!847528 () Bool)

(declare-fun e!472948 () Bool)

(declare-fun e!472947 () Bool)

(assert (=> b!847528 (= e!472948 (and e!472947 mapRes!25640))))

(declare-fun condMapEmpty!25640 () Bool)

(declare-fun mapDefault!25640 () ValueCell!7574)

