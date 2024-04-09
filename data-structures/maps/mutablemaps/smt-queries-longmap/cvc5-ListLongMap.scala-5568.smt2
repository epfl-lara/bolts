; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73220 () Bool)

(assert start!73220)

(declare-fun b_free!14107 () Bool)

(declare-fun b_next!14107 () Bool)

(assert (=> start!73220 (= b_free!14107 (not b_next!14107))))

(declare-fun tp!49825 () Bool)

(declare-fun b_and!23391 () Bool)

(assert (=> start!73220 (= tp!49825 b_and!23391)))

(declare-fun mapIsEmpty!25964 () Bool)

(declare-fun mapRes!25964 () Bool)

(assert (=> mapIsEmpty!25964 mapRes!25964))

(declare-fun b!852519 () Bool)

(declare-fun e!475496 () Bool)

(declare-fun tp_is_empty!16243 () Bool)

(assert (=> b!852519 (= e!475496 tp_is_empty!16243)))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!26705 0))(
  ( (V!26706 (val!8169 Int)) )
))
(declare-datatypes ((tuple2!10742 0))(
  ( (tuple2!10743 (_1!5381 (_ BitVec 64)) (_2!5381 V!26705)) )
))
(declare-datatypes ((List!16625 0))(
  ( (Nil!16622) (Cons!16621 (h!17752 tuple2!10742) (t!23186 List!16625)) )
))
(declare-datatypes ((ListLongMap!9525 0))(
  ( (ListLongMap!9526 (toList!4778 List!16625)) )
))
(declare-fun call!38176 () ListLongMap!9525)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48672 0))(
  ( (array!48673 (arr!23363 (Array (_ BitVec 32) (_ BitVec 64))) (size!23804 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48672)

(declare-datatypes ((ValueCell!7682 0))(
  ( (ValueCellFull!7682 (v!10590 V!26705)) (EmptyCell!7682) )
))
(declare-datatypes ((array!48674 0))(
  ( (array!48675 (arr!23364 (Array (_ BitVec 32) ValueCell!7682)) (size!23805 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48674)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26705)

(declare-fun zeroValue!654 () V!26705)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun bm!38173 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2762 (array!48672 array!48674 (_ BitVec 32) (_ BitVec 32) V!26705 V!26705 (_ BitVec 32) Int) ListLongMap!9525)

(assert (=> bm!38173 (= call!38176 (getCurrentListMapNoExtraKeys!2762 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852520 () Bool)

(declare-fun e!475494 () Bool)

(declare-fun e!475498 () Bool)

(assert (=> b!852520 (= e!475494 (not e!475498))))

(declare-fun res!579147 () Bool)

(assert (=> b!852520 (=> res!579147 e!475498)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!852520 (= res!579147 (not (validKeyInArray!0 (select (arr!23363 _keys!868) from!1053))))))

(declare-fun e!475493 () Bool)

(assert (=> b!852520 e!475493))

(declare-fun c!91749 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!852520 (= c!91749 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29084 0))(
  ( (Unit!29085) )
))
(declare-fun lt!384198 () Unit!29084)

(declare-fun v!557 () V!26705)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!384 (array!48672 array!48674 (_ BitVec 32) (_ BitVec 32) V!26705 V!26705 (_ BitVec 32) (_ BitVec 64) V!26705 (_ BitVec 32) Int) Unit!29084)

(assert (=> b!852520 (= lt!384198 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!384 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852521 () Bool)

(declare-fun res!579150 () Bool)

(declare-fun e!475500 () Bool)

(assert (=> b!852521 (=> (not res!579150) (not e!475500))))

(assert (=> b!852521 (= res!579150 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23804 _keys!868))))))

(declare-fun call!38177 () ListLongMap!9525)

(declare-fun b!852522 () Bool)

(declare-fun +!2118 (ListLongMap!9525 tuple2!10742) ListLongMap!9525)

(assert (=> b!852522 (= e!475493 (= call!38177 (+!2118 call!38176 (tuple2!10743 k!854 v!557))))))

(declare-fun b!852523 () Bool)

(declare-fun res!579146 () Bool)

(assert (=> b!852523 (=> (not res!579146) (not e!475500))))

(assert (=> b!852523 (= res!579146 (validKeyInArray!0 k!854))))

(declare-fun lt!384193 () array!48674)

(declare-fun bm!38174 () Bool)

(assert (=> bm!38174 (= call!38177 (getCurrentListMapNoExtraKeys!2762 _keys!868 lt!384193 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852524 () Bool)

(assert (=> b!852524 (= e!475500 e!475494)))

(declare-fun res!579141 () Bool)

(assert (=> b!852524 (=> (not res!579141) (not e!475494))))

(assert (=> b!852524 (= res!579141 (= from!1053 i!612))))

(declare-fun lt!384194 () ListLongMap!9525)

(assert (=> b!852524 (= lt!384194 (getCurrentListMapNoExtraKeys!2762 _keys!868 lt!384193 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!852524 (= lt!384193 (array!48675 (store (arr!23364 _values!688) i!612 (ValueCellFull!7682 v!557)) (size!23805 _values!688)))))

(declare-fun lt!384189 () ListLongMap!9525)

(assert (=> b!852524 (= lt!384189 (getCurrentListMapNoExtraKeys!2762 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!852525 () Bool)

(declare-fun e!475499 () Bool)

(assert (=> b!852525 (= e!475499 (and e!475496 mapRes!25964))))

(declare-fun condMapEmpty!25964 () Bool)

(declare-fun mapDefault!25964 () ValueCell!7682)

