; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73110 () Bool)

(assert start!73110)

(declare-fun b_free!13997 () Bool)

(declare-fun b_next!13997 () Bool)

(assert (=> start!73110 (= b_free!13997 (not b_next!13997))))

(declare-fun tp!49496 () Bool)

(declare-fun b_and!23171 () Bool)

(assert (=> start!73110 (= tp!49496 b_and!23171)))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!26557 0))(
  ( (V!26558 (val!8114 Int)) )
))
(declare-datatypes ((ValueCell!7627 0))(
  ( (ValueCellFull!7627 (v!10535 V!26557)) (EmptyCell!7627) )
))
(declare-datatypes ((array!48458 0))(
  ( (array!48459 (arr!23256 (Array (_ BitVec 32) ValueCell!7627)) (size!23697 (_ BitVec 32))) )
))
(declare-fun lt!382542 () array!48458)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!48460 0))(
  ( (array!48461 (arr!23257 (Array (_ BitVec 32) (_ BitVec 64))) (size!23698 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48460)

(declare-datatypes ((tuple2!10644 0))(
  ( (tuple2!10645 (_1!5332 (_ BitVec 64)) (_2!5332 V!26557)) )
))
(declare-datatypes ((List!16543 0))(
  ( (Nil!16540) (Cons!16539 (h!17670 tuple2!10644) (t!22994 List!16543)) )
))
(declare-datatypes ((ListLongMap!9427 0))(
  ( (ListLongMap!9428 (toList!4729 List!16543)) )
))
(declare-fun call!37847 () ListLongMap!9427)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26557)

(declare-fun zeroValue!654 () V!26557)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun bm!37843 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2716 (array!48460 array!48458 (_ BitVec 32) (_ BitVec 32) V!26557 V!26557 (_ BitVec 32) Int) ListLongMap!9427)

(assert (=> bm!37843 (= call!37847 (getCurrentListMapNoExtraKeys!2716 _keys!868 lt!382542 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849934 () Bool)

(declare-fun e!474179 () Bool)

(assert (=> b!849934 (= e!474179 true)))

(declare-fun lt!382548 () ListLongMap!9427)

(declare-fun lt!382545 () tuple2!10644)

(declare-fun lt!382540 () V!26557)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2074 (ListLongMap!9427 tuple2!10644) ListLongMap!9427)

(assert (=> b!849934 (= (+!2074 lt!382548 lt!382545) (+!2074 (+!2074 lt!382548 (tuple2!10645 k!854 lt!382540)) lt!382545))))

(declare-fun lt!382546 () V!26557)

(assert (=> b!849934 (= lt!382545 (tuple2!10645 k!854 lt!382546))))

(declare-datatypes ((Unit!28996 0))(
  ( (Unit!28997) )
))
(declare-fun lt!382541 () Unit!28996)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!261 (ListLongMap!9427 (_ BitVec 64) V!26557 V!26557) Unit!28996)

(assert (=> b!849934 (= lt!382541 (addSameAsAddTwiceSameKeyDiffValues!261 lt!382548 k!854 lt!382540 lt!382546))))

(declare-fun lt!382547 () V!26557)

(declare-fun _values!688 () array!48458)

(declare-fun get!12257 (ValueCell!7627 V!26557) V!26557)

(assert (=> b!849934 (= lt!382540 (get!12257 (select (arr!23256 _values!688) from!1053) lt!382547))))

(declare-fun lt!382543 () ListLongMap!9427)

(assert (=> b!849934 (= lt!382543 (+!2074 lt!382548 (tuple2!10645 (select (arr!23257 _keys!868) from!1053) lt!382546)))))

(declare-fun v!557 () V!26557)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!849934 (= lt!382546 (get!12257 (select (store (arr!23256 _values!688) i!612 (ValueCellFull!7627 v!557)) from!1053) lt!382547))))

(declare-fun dynLambda!1009 (Int (_ BitVec 64)) V!26557)

(assert (=> b!849934 (= lt!382547 (dynLambda!1009 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!849934 (= lt!382548 (getCurrentListMapNoExtraKeys!2716 _keys!868 lt!382542 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849935 () Bool)

(declare-fun e!474174 () Bool)

(declare-fun e!474177 () Bool)

(assert (=> b!849935 (= e!474174 e!474177)))

(declare-fun res!577497 () Bool)

(assert (=> b!849935 (=> (not res!577497) (not e!474177))))

(assert (=> b!849935 (= res!577497 (= from!1053 i!612))))

(assert (=> b!849935 (= lt!382543 (getCurrentListMapNoExtraKeys!2716 _keys!868 lt!382542 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!849935 (= lt!382542 (array!48459 (store (arr!23256 _values!688) i!612 (ValueCellFull!7627 v!557)) (size!23697 _values!688)))))

(declare-fun lt!382544 () ListLongMap!9427)

(assert (=> b!849935 (= lt!382544 (getCurrentListMapNoExtraKeys!2716 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!849936 () Bool)

(declare-fun res!577491 () Bool)

(assert (=> b!849936 (=> (not res!577491) (not e!474174))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!849936 (= res!577491 (validKeyInArray!0 k!854))))

(declare-fun res!577498 () Bool)

(assert (=> start!73110 (=> (not res!577498) (not e!474174))))

(assert (=> start!73110 (= res!577498 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23698 _keys!868))))))

(assert (=> start!73110 e!474174))

(declare-fun tp_is_empty!16133 () Bool)

(assert (=> start!73110 tp_is_empty!16133))

(assert (=> start!73110 true))

(assert (=> start!73110 tp!49496))

(declare-fun array_inv!18442 (array!48460) Bool)

(assert (=> start!73110 (array_inv!18442 _keys!868)))

(declare-fun e!474180 () Bool)

(declare-fun array_inv!18443 (array!48458) Bool)

(assert (=> start!73110 (and (array_inv!18443 _values!688) e!474180)))

(declare-fun b!849937 () Bool)

(declare-fun res!577492 () Bool)

(assert (=> b!849937 (=> (not res!577492) (not e!474174))))

(assert (=> b!849937 (= res!577492 (and (= (select (arr!23257 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!849938 () Bool)

(declare-fun e!474178 () Bool)

(assert (=> b!849938 (= e!474178 tp_is_empty!16133)))

(declare-fun b!849939 () Bool)

(declare-fun e!474173 () Bool)

(assert (=> b!849939 (= e!474173 tp_is_empty!16133)))

(declare-fun b!849940 () Bool)

(declare-fun res!577493 () Bool)

(assert (=> b!849940 (=> (not res!577493) (not e!474174))))

(assert (=> b!849940 (= res!577493 (and (= (size!23697 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23698 _keys!868) (size!23697 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun call!37846 () ListLongMap!9427)

(declare-fun b!849941 () Bool)

(declare-fun e!474176 () Bool)

(assert (=> b!849941 (= e!474176 (= call!37847 (+!2074 call!37846 (tuple2!10645 k!854 v!557))))))

(declare-fun b!849942 () Bool)

(declare-fun res!577499 () Bool)

(assert (=> b!849942 (=> (not res!577499) (not e!474174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!849942 (= res!577499 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!25799 () Bool)

(declare-fun mapRes!25799 () Bool)

(declare-fun tp!49495 () Bool)

(assert (=> mapNonEmpty!25799 (= mapRes!25799 (and tp!49495 e!474173))))

(declare-fun mapRest!25799 () (Array (_ BitVec 32) ValueCell!7627))

(declare-fun mapKey!25799 () (_ BitVec 32))

(declare-fun mapValue!25799 () ValueCell!7627)

(assert (=> mapNonEmpty!25799 (= (arr!23256 _values!688) (store mapRest!25799 mapKey!25799 mapValue!25799))))

(declare-fun b!849943 () Bool)

(assert (=> b!849943 (= e!474177 (not e!474179))))

(declare-fun res!577500 () Bool)

(assert (=> b!849943 (=> res!577500 e!474179)))

(assert (=> b!849943 (= res!577500 (not (validKeyInArray!0 (select (arr!23257 _keys!868) from!1053))))))

(assert (=> b!849943 e!474176))

(declare-fun c!91584 () Bool)

(assert (=> b!849943 (= c!91584 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!382539 () Unit!28996)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!345 (array!48460 array!48458 (_ BitVec 32) (_ BitVec 32) V!26557 V!26557 (_ BitVec 32) (_ BitVec 64) V!26557 (_ BitVec 32) Int) Unit!28996)

(assert (=> b!849943 (= lt!382539 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!345 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849944 () Bool)

(declare-fun res!577495 () Bool)

(assert (=> b!849944 (=> (not res!577495) (not e!474174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48460 (_ BitVec 32)) Bool)

(assert (=> b!849944 (= res!577495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!849945 () Bool)

(assert (=> b!849945 (= e!474180 (and e!474178 mapRes!25799))))

(declare-fun condMapEmpty!25799 () Bool)

(declare-fun mapDefault!25799 () ValueCell!7627)

