; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73244 () Bool)

(assert start!73244)

(declare-fun b_free!14131 () Bool)

(declare-fun b_next!14131 () Bool)

(assert (=> start!73244 (= b_free!14131 (not b_next!14131))))

(declare-fun tp!49897 () Bool)

(declare-fun b_and!23439 () Bool)

(assert (=> start!73244 (= tp!49897 b_and!23439)))

(declare-fun b!853083 () Bool)

(declare-fun e!475788 () Bool)

(declare-datatypes ((V!26737 0))(
  ( (V!26738 (val!8181 Int)) )
))
(declare-datatypes ((tuple2!10764 0))(
  ( (tuple2!10765 (_1!5392 (_ BitVec 64)) (_2!5392 V!26737)) )
))
(declare-datatypes ((List!16642 0))(
  ( (Nil!16639) (Cons!16638 (h!17769 tuple2!10764) (t!23227 List!16642)) )
))
(declare-datatypes ((ListLongMap!9547 0))(
  ( (ListLongMap!9548 (toList!4789 List!16642)) )
))
(declare-fun call!38249 () ListLongMap!9547)

(declare-fun call!38248 () ListLongMap!9547)

(assert (=> b!853083 (= e!475788 (= call!38249 call!38248))))

(declare-fun b!853085 () Bool)

(declare-fun res!579507 () Bool)

(declare-fun e!475784 () Bool)

(assert (=> b!853085 (=> (not res!579507) (not e!475784))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!853085 (= res!579507 (validMask!0 mask!1196))))

(declare-fun b!853086 () Bool)

(declare-fun e!475787 () Bool)

(assert (=> b!853086 (= e!475787 true)))

(declare-fun lt!384549 () V!26737)

(declare-fun lt!384552 () tuple2!10764)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lt!384556 () ListLongMap!9547)

(declare-fun +!2129 (ListLongMap!9547 tuple2!10764) ListLongMap!9547)

(assert (=> b!853086 (= (+!2129 lt!384556 lt!384552) (+!2129 (+!2129 lt!384556 (tuple2!10765 k!854 lt!384549)) lt!384552))))

(declare-fun lt!384554 () V!26737)

(assert (=> b!853086 (= lt!384552 (tuple2!10765 k!854 lt!384554))))

(declare-datatypes ((Unit!29104 0))(
  ( (Unit!29105) )
))
(declare-fun lt!384551 () Unit!29104)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!309 (ListLongMap!9547 (_ BitVec 64) V!26737 V!26737) Unit!29104)

(assert (=> b!853086 (= lt!384551 (addSameAsAddTwiceSameKeyDiffValues!309 lt!384556 k!854 lt!384549 lt!384554))))

(declare-fun lt!384550 () V!26737)

(declare-datatypes ((ValueCell!7694 0))(
  ( (ValueCellFull!7694 (v!10602 V!26737)) (EmptyCell!7694) )
))
(declare-datatypes ((array!48718 0))(
  ( (array!48719 (arr!23386 (Array (_ BitVec 32) ValueCell!7694)) (size!23827 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48718)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun get!12351 (ValueCell!7694 V!26737) V!26737)

(assert (=> b!853086 (= lt!384549 (get!12351 (select (arr!23386 _values!688) from!1053) lt!384550))))

(declare-fun lt!384558 () ListLongMap!9547)

(declare-datatypes ((array!48720 0))(
  ( (array!48721 (arr!23387 (Array (_ BitVec 32) (_ BitVec 64))) (size!23828 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48720)

(assert (=> b!853086 (= lt!384558 (+!2129 lt!384556 (tuple2!10765 (select (arr!23387 _keys!868) from!1053) lt!384554)))))

(declare-fun v!557 () V!26737)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!853086 (= lt!384554 (get!12351 (select (store (arr!23386 _values!688) i!612 (ValueCellFull!7694 v!557)) from!1053) lt!384550))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1057 (Int (_ BitVec 64)) V!26737)

(assert (=> b!853086 (= lt!384550 (dynLambda!1057 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!384555 () array!48718)

(declare-fun minValue!654 () V!26737)

(declare-fun zeroValue!654 () V!26737)

(declare-fun getCurrentListMapNoExtraKeys!2772 (array!48720 array!48718 (_ BitVec 32) (_ BitVec 32) V!26737 V!26737 (_ BitVec 32) Int) ListLongMap!9547)

(assert (=> b!853086 (= lt!384556 (getCurrentListMapNoExtraKeys!2772 _keys!868 lt!384555 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853087 () Bool)

(declare-fun e!475786 () Bool)

(assert (=> b!853087 (= e!475786 (not e!475787))))

(declare-fun res!579502 () Bool)

(assert (=> b!853087 (=> res!579502 e!475787)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!853087 (= res!579502 (not (validKeyInArray!0 (select (arr!23387 _keys!868) from!1053))))))

(assert (=> b!853087 e!475788))

(declare-fun c!91785 () Bool)

(assert (=> b!853087 (= c!91785 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!384553 () Unit!29104)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!392 (array!48720 array!48718 (_ BitVec 32) (_ BitVec 32) V!26737 V!26737 (_ BitVec 32) (_ BitVec 64) V!26737 (_ BitVec 32) Int) Unit!29104)

(assert (=> b!853087 (= lt!384553 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!392 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853088 () Bool)

(declare-fun e!475782 () Bool)

(declare-fun tp_is_empty!16267 () Bool)

(assert (=> b!853088 (= e!475782 tp_is_empty!16267)))

(declare-fun mapIsEmpty!26000 () Bool)

(declare-fun mapRes!26000 () Bool)

(assert (=> mapIsEmpty!26000 mapRes!26000))

(declare-fun b!853089 () Bool)

(assert (=> b!853089 (= e!475788 (= call!38249 (+!2129 call!38248 (tuple2!10765 k!854 v!557))))))

(declare-fun b!853090 () Bool)

(declare-fun res!579508 () Bool)

(assert (=> b!853090 (=> (not res!579508) (not e!475784))))

(declare-datatypes ((List!16643 0))(
  ( (Nil!16640) (Cons!16639 (h!17770 (_ BitVec 64)) (t!23228 List!16643)) )
))
(declare-fun arrayNoDuplicates!0 (array!48720 (_ BitVec 32) List!16643) Bool)

(assert (=> b!853090 (= res!579508 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16640))))

(declare-fun b!853091 () Bool)

(assert (=> b!853091 (= e!475784 e!475786)))

(declare-fun res!579501 () Bool)

(assert (=> b!853091 (=> (not res!579501) (not e!475786))))

(assert (=> b!853091 (= res!579501 (= from!1053 i!612))))

(assert (=> b!853091 (= lt!384558 (getCurrentListMapNoExtraKeys!2772 _keys!868 lt!384555 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!853091 (= lt!384555 (array!48719 (store (arr!23386 _values!688) i!612 (ValueCellFull!7694 v!557)) (size!23827 _values!688)))))

(declare-fun lt!384557 () ListLongMap!9547)

(assert (=> b!853091 (= lt!384557 (getCurrentListMapNoExtraKeys!2772 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!853092 () Bool)

(declare-fun e!475783 () Bool)

(assert (=> b!853092 (= e!475783 (and e!475782 mapRes!26000))))

(declare-fun condMapEmpty!26000 () Bool)

(declare-fun mapDefault!26000 () ValueCell!7694)

