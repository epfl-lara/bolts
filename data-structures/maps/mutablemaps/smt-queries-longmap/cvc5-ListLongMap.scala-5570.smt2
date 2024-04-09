; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73232 () Bool)

(assert start!73232)

(declare-fun b_free!14119 () Bool)

(declare-fun b_next!14119 () Bool)

(assert (=> start!73232 (= b_free!14119 (not b_next!14119))))

(declare-fun tp!49862 () Bool)

(declare-fun b_and!23415 () Bool)

(assert (=> start!73232 (= tp!49862 b_and!23415)))

(declare-fun b!852801 () Bool)

(declare-fun e!475639 () Bool)

(declare-fun tp_is_empty!16255 () Bool)

(assert (=> b!852801 (= e!475639 tp_is_empty!16255)))

(declare-fun mapIsEmpty!25982 () Bool)

(declare-fun mapRes!25982 () Bool)

(assert (=> mapIsEmpty!25982 mapRes!25982))

(declare-fun b!852802 () Bool)

(declare-fun res!579321 () Bool)

(declare-fun e!475638 () Bool)

(assert (=> b!852802 (=> (not res!579321) (not e!475638))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!48694 0))(
  ( (array!48695 (arr!23374 (Array (_ BitVec 32) (_ BitVec 64))) (size!23815 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48694)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!852802 (= res!579321 (and (= (select (arr!23374 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!852803 () Bool)

(declare-fun e!475644 () Bool)

(declare-fun e!475643 () Bool)

(assert (=> b!852803 (= e!475644 (not e!475643))))

(declare-fun res!579328 () Bool)

(assert (=> b!852803 (=> res!579328 e!475643)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!852803 (= res!579328 (not (validKeyInArray!0 (select (arr!23374 _keys!868) from!1053))))))

(declare-fun e!475637 () Bool)

(assert (=> b!852803 e!475637))

(declare-fun c!91767 () Bool)

(assert (=> b!852803 (= c!91767 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((V!26721 0))(
  ( (V!26722 (val!8175 Int)) )
))
(declare-fun v!557 () V!26721)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7688 0))(
  ( (ValueCellFull!7688 (v!10596 V!26721)) (EmptyCell!7688) )
))
(declare-datatypes ((array!48696 0))(
  ( (array!48697 (arr!23375 (Array (_ BitVec 32) ValueCell!7688)) (size!23816 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48696)

(declare-fun minValue!654 () V!26721)

(declare-fun zeroValue!654 () V!26721)

(declare-datatypes ((Unit!29094 0))(
  ( (Unit!29095) )
))
(declare-fun lt!384374 () Unit!29094)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!387 (array!48694 array!48696 (_ BitVec 32) (_ BitVec 32) V!26721 V!26721 (_ BitVec 32) (_ BitVec 64) V!26721 (_ BitVec 32) Int) Unit!29094)

(assert (=> b!852803 (= lt!384374 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!387 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((tuple2!10754 0))(
  ( (tuple2!10755 (_1!5387 (_ BitVec 64)) (_2!5387 V!26721)) )
))
(declare-datatypes ((List!16633 0))(
  ( (Nil!16630) (Cons!16629 (h!17760 tuple2!10754) (t!23206 List!16633)) )
))
(declare-datatypes ((ListLongMap!9537 0))(
  ( (ListLongMap!9538 (toList!4784 List!16633)) )
))
(declare-fun call!38213 () ListLongMap!9537)

(declare-fun call!38212 () ListLongMap!9537)

(declare-fun b!852804 () Bool)

(declare-fun +!2124 (ListLongMap!9537 tuple2!10754) ListLongMap!9537)

(assert (=> b!852804 (= e!475637 (= call!38213 (+!2124 call!38212 (tuple2!10755 k!854 v!557))))))

(declare-fun b!852805 () Bool)

(declare-fun e!475642 () Bool)

(assert (=> b!852805 (= e!475642 tp_is_empty!16255)))

(declare-fun bm!38209 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2767 (array!48694 array!48696 (_ BitVec 32) (_ BitVec 32) V!26721 V!26721 (_ BitVec 32) Int) ListLongMap!9537)

(assert (=> bm!38209 (= call!38212 (getCurrentListMapNoExtraKeys!2767 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852806 () Bool)

(assert (=> b!852806 (= e!475643 true)))

(declare-fun lt!384378 () tuple2!10754)

(declare-fun lt!384370 () V!26721)

(declare-fun lt!384376 () ListLongMap!9537)

(assert (=> b!852806 (= (+!2124 lt!384376 lt!384378) (+!2124 (+!2124 lt!384376 (tuple2!10755 k!854 lt!384370)) lt!384378))))

(declare-fun lt!384373 () V!26721)

(assert (=> b!852806 (= lt!384378 (tuple2!10755 k!854 lt!384373))))

(declare-fun lt!384375 () Unit!29094)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!304 (ListLongMap!9537 (_ BitVec 64) V!26721 V!26721) Unit!29094)

(assert (=> b!852806 (= lt!384375 (addSameAsAddTwiceSameKeyDiffValues!304 lt!384376 k!854 lt!384370 lt!384373))))

(declare-fun lt!384371 () V!26721)

(declare-fun get!12342 (ValueCell!7688 V!26721) V!26721)

(assert (=> b!852806 (= lt!384370 (get!12342 (select (arr!23375 _values!688) from!1053) lt!384371))))

(declare-fun lt!384372 () ListLongMap!9537)

(assert (=> b!852806 (= lt!384372 (+!2124 lt!384376 (tuple2!10755 (select (arr!23374 _keys!868) from!1053) lt!384373)))))

(assert (=> b!852806 (= lt!384373 (get!12342 (select (store (arr!23375 _values!688) i!612 (ValueCellFull!7688 v!557)) from!1053) lt!384371))))

(declare-fun dynLambda!1052 (Int (_ BitVec 64)) V!26721)

(assert (=> b!852806 (= lt!384371 (dynLambda!1052 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!384377 () array!48696)

(assert (=> b!852806 (= lt!384376 (getCurrentListMapNoExtraKeys!2767 _keys!868 lt!384377 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852807 () Bool)

(declare-fun res!579329 () Bool)

(assert (=> b!852807 (=> (not res!579329) (not e!475638))))

(assert (=> b!852807 (= res!579329 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23815 _keys!868))))))

(declare-fun b!852808 () Bool)

(declare-fun e!475641 () Bool)

(assert (=> b!852808 (= e!475641 (and e!475639 mapRes!25982))))

(declare-fun condMapEmpty!25982 () Bool)

(declare-fun mapDefault!25982 () ValueCell!7688)

