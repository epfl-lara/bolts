; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74232 () Bool)

(assert start!74232)

(declare-fun b_free!15011 () Bool)

(declare-fun b_next!15011 () Bool)

(assert (=> start!74232 (= b_free!15011 (not b_next!15011))))

(declare-fun tp!52685 () Bool)

(declare-fun b_and!24781 () Bool)

(assert (=> start!74232 (= tp!52685 b_and!24781)))

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!38497 () Bool)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50602 0))(
  ( (array!50603 (arr!24327 (Array (_ BitVec 32) (_ BitVec 64))) (size!24768 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50602)

(declare-datatypes ((V!28037 0))(
  ( (V!28038 (val!8669 Int)) )
))
(declare-datatypes ((ValueCell!8182 0))(
  ( (ValueCellFull!8182 (v!11090 V!28037)) (EmptyCell!8182) )
))
(declare-datatypes ((array!50604 0))(
  ( (array!50605 (arr!24328 (Array (_ BitVec 32) ValueCell!8182)) (size!24769 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50604)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((tuple2!11454 0))(
  ( (tuple2!11455 (_1!5737 (_ BitVec 64)) (_2!5737 V!28037)) )
))
(declare-datatypes ((List!17339 0))(
  ( (Nil!17336) (Cons!17335 (h!18466 tuple2!11454) (t!24384 List!17339)) )
))
(declare-datatypes ((ListLongMap!10237 0))(
  ( (ListLongMap!10238 (toList!5134 List!17339)) )
))
(declare-fun call!38500 () ListLongMap!10237)

(declare-fun minValue!654 () V!28037)

(declare-fun zeroValue!654 () V!28037)

(declare-fun getCurrentListMapNoExtraKeys!3098 (array!50602 array!50604 (_ BitVec 32) (_ BitVec 32) V!28037 V!28037 (_ BitVec 32) Int) ListLongMap!10237)

(assert (=> bm!38497 (= call!38500 (getCurrentListMapNoExtraKeys!3098 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!872824 () Bool)

(declare-fun res!593301 () Bool)

(declare-fun e!486094 () Bool)

(assert (=> b!872824 (=> (not res!593301) (not e!486094))))

(declare-datatypes ((List!17340 0))(
  ( (Nil!17337) (Cons!17336 (h!18467 (_ BitVec 64)) (t!24385 List!17340)) )
))
(declare-fun arrayNoDuplicates!0 (array!50602 (_ BitVec 32) List!17340) Bool)

(assert (=> b!872824 (= res!593301 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17337))))

(declare-fun call!38501 () ListLongMap!10237)

(declare-fun v!557 () V!28037)

(declare-fun e!486095 () Bool)

(declare-fun b!872825 () Bool)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2412 (ListLongMap!10237 tuple2!11454) ListLongMap!10237)

(assert (=> b!872825 (= e!486095 (= call!38501 (+!2412 call!38500 (tuple2!11455 k!854 v!557))))))

(declare-fun b!872826 () Bool)

(declare-fun res!593300 () Bool)

(assert (=> b!872826 (=> (not res!593300) (not e!486094))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!872826 (= res!593300 (and (= (select (arr!24327 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!24768 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!872827 () Bool)

(declare-fun e!486096 () Bool)

(declare-fun tp_is_empty!17243 () Bool)

(assert (=> b!872827 (= e!486096 tp_is_empty!17243)))

(declare-fun b!872828 () Bool)

(declare-fun res!593299 () Bool)

(assert (=> b!872828 (=> (not res!593299) (not e!486094))))

(assert (=> b!872828 (= res!593299 (and (= (size!24769 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24768 _keys!868) (size!24769 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun bm!38498 () Bool)

(assert (=> bm!38498 (= call!38501 (getCurrentListMapNoExtraKeys!3098 _keys!868 (array!50605 (store (arr!24328 _values!688) i!612 (ValueCellFull!8182 v!557)) (size!24769 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!27467 () Bool)

(declare-fun mapRes!27467 () Bool)

(declare-fun tp!52684 () Bool)

(declare-fun e!486091 () Bool)

(assert (=> mapNonEmpty!27467 (= mapRes!27467 (and tp!52684 e!486091))))

(declare-fun mapValue!27467 () ValueCell!8182)

(declare-fun mapRest!27467 () (Array (_ BitVec 32) ValueCell!8182))

(declare-fun mapKey!27467 () (_ BitVec 32))

(assert (=> mapNonEmpty!27467 (= (arr!24328 _values!688) (store mapRest!27467 mapKey!27467 mapValue!27467))))

(declare-fun b!872829 () Bool)

(declare-fun res!593295 () Bool)

(assert (=> b!872829 (=> (not res!593295) (not e!486094))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!872829 (= res!593295 (validKeyInArray!0 k!854))))

(declare-fun b!872830 () Bool)

(assert (=> b!872830 (= e!486095 (= call!38501 call!38500))))

(declare-fun b!872831 () Bool)

(assert (=> b!872831 (= e!486094 (not (bvslt i!612 (size!24769 _values!688))))))

(assert (=> b!872831 e!486095))

(declare-fun c!92328 () Bool)

(assert (=> b!872831 (= c!92328 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29878 0))(
  ( (Unit!29879) )
))
(declare-fun lt!395616 () Unit!29878)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!644 (array!50602 array!50604 (_ BitVec 32) (_ BitVec 32) V!28037 V!28037 (_ BitVec 32) (_ BitVec 64) V!28037 (_ BitVec 32) Int) Unit!29878)

(assert (=> b!872831 (= lt!395616 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!644 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!872832 () Bool)

(declare-fun e!486092 () Bool)

(assert (=> b!872832 (= e!486092 (and e!486096 mapRes!27467))))

(declare-fun condMapEmpty!27467 () Bool)

(declare-fun mapDefault!27467 () ValueCell!8182)

