; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73122 () Bool)

(assert start!73122)

(declare-fun b_free!14009 () Bool)

(declare-fun b_next!14009 () Bool)

(assert (=> start!73122 (= b_free!14009 (not b_next!14009))))

(declare-fun tp!49531 () Bool)

(declare-fun b_and!23195 () Bool)

(assert (=> start!73122 (= tp!49531 b_and!23195)))

(declare-fun b!850216 () Bool)

(declare-fun res!577676 () Bool)

(declare-fun e!474322 () Bool)

(assert (=> b!850216 (=> (not res!577676) (not e!474322))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48480 0))(
  ( (array!48481 (arr!23267 (Array (_ BitVec 32) (_ BitVec 64))) (size!23708 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48480)

(declare-datatypes ((V!26573 0))(
  ( (V!26574 (val!8120 Int)) )
))
(declare-datatypes ((ValueCell!7633 0))(
  ( (ValueCellFull!7633 (v!10541 V!26573)) (EmptyCell!7633) )
))
(declare-datatypes ((array!48482 0))(
  ( (array!48483 (arr!23268 (Array (_ BitVec 32) ValueCell!7633)) (size!23709 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48482)

(assert (=> b!850216 (= res!577676 (and (= (size!23709 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23708 _keys!868) (size!23709 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!577673 () Bool)

(assert (=> start!73122 (=> (not res!577673) (not e!474322))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73122 (= res!577673 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23708 _keys!868))))))

(assert (=> start!73122 e!474322))

(declare-fun tp_is_empty!16145 () Bool)

(assert (=> start!73122 tp_is_empty!16145))

(assert (=> start!73122 true))

(assert (=> start!73122 tp!49531))

(declare-fun array_inv!18452 (array!48480) Bool)

(assert (=> start!73122 (array_inv!18452 _keys!868)))

(declare-fun e!474324 () Bool)

(declare-fun array_inv!18453 (array!48482) Bool)

(assert (=> start!73122 (and (array_inv!18453 _values!688) e!474324)))

(declare-fun b!850217 () Bool)

(declare-fun v!557 () V!26573)

(declare-datatypes ((tuple2!10656 0))(
  ( (tuple2!10657 (_1!5338 (_ BitVec 64)) (_2!5338 V!26573)) )
))
(declare-datatypes ((List!16552 0))(
  ( (Nil!16549) (Cons!16548 (h!17679 tuple2!10656) (t!23015 List!16552)) )
))
(declare-datatypes ((ListLongMap!9439 0))(
  ( (ListLongMap!9440 (toList!4735 List!16552)) )
))
(declare-fun call!37882 () ListLongMap!9439)

(declare-fun e!474320 () Bool)

(declare-fun call!37883 () ListLongMap!9439)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2079 (ListLongMap!9439 tuple2!10656) ListLongMap!9439)

(assert (=> b!850217 (= e!474320 (= call!37883 (+!2079 call!37882 (tuple2!10657 k!854 v!557))))))

(declare-fun b!850218 () Bool)

(declare-fun res!577671 () Bool)

(assert (=> b!850218 (=> (not res!577671) (not e!474322))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!850218 (= res!577671 (and (= (select (arr!23267 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!850219 () Bool)

(declare-fun e!474319 () Bool)

(assert (=> b!850219 (= e!474319 true)))

(declare-fun lt!382719 () tuple2!10656)

(declare-fun lt!382723 () ListLongMap!9439)

(declare-fun lt!382720 () V!26573)

(assert (=> b!850219 (= (+!2079 lt!382723 lt!382719) (+!2079 (+!2079 lt!382723 (tuple2!10657 k!854 lt!382720)) lt!382719))))

(declare-fun lt!382721 () V!26573)

(assert (=> b!850219 (= lt!382719 (tuple2!10657 k!854 lt!382721))))

(declare-datatypes ((Unit!29006 0))(
  ( (Unit!29007) )
))
(declare-fun lt!382727 () Unit!29006)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!266 (ListLongMap!9439 (_ BitVec 64) V!26573 V!26573) Unit!29006)

(assert (=> b!850219 (= lt!382727 (addSameAsAddTwiceSameKeyDiffValues!266 lt!382723 k!854 lt!382720 lt!382721))))

(declare-fun lt!382726 () V!26573)

(declare-fun get!12266 (ValueCell!7633 V!26573) V!26573)

(assert (=> b!850219 (= lt!382720 (get!12266 (select (arr!23268 _values!688) from!1053) lt!382726))))

(declare-fun lt!382722 () ListLongMap!9439)

(assert (=> b!850219 (= lt!382722 (+!2079 lt!382723 (tuple2!10657 (select (arr!23267 _keys!868) from!1053) lt!382721)))))

(assert (=> b!850219 (= lt!382721 (get!12266 (select (store (arr!23268 _values!688) i!612 (ValueCellFull!7633 v!557)) from!1053) lt!382726))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1014 (Int (_ BitVec 64)) V!26573)

(assert (=> b!850219 (= lt!382726 (dynLambda!1014 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!382725 () array!48482)

(declare-fun minValue!654 () V!26573)

(declare-fun zeroValue!654 () V!26573)

(declare-fun getCurrentListMapNoExtraKeys!2721 (array!48480 array!48482 (_ BitVec 32) (_ BitVec 32) V!26573 V!26573 (_ BitVec 32) Int) ListLongMap!9439)

(assert (=> b!850219 (= lt!382723 (getCurrentListMapNoExtraKeys!2721 _keys!868 lt!382725 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850220 () Bool)

(declare-fun res!577678 () Bool)

(assert (=> b!850220 (=> (not res!577678) (not e!474322))))

(assert (=> b!850220 (= res!577678 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23708 _keys!868))))))

(declare-fun b!850221 () Bool)

(declare-fun e!474321 () Bool)

(assert (=> b!850221 (= e!474321 tp_is_empty!16145)))

(declare-fun mapNonEmpty!25817 () Bool)

(declare-fun mapRes!25817 () Bool)

(declare-fun tp!49532 () Bool)

(declare-fun e!474323 () Bool)

(assert (=> mapNonEmpty!25817 (= mapRes!25817 (and tp!49532 e!474323))))

(declare-fun mapRest!25817 () (Array (_ BitVec 32) ValueCell!7633))

(declare-fun mapValue!25817 () ValueCell!7633)

(declare-fun mapKey!25817 () (_ BitVec 32))

(assert (=> mapNonEmpty!25817 (= (arr!23268 _values!688) (store mapRest!25817 mapKey!25817 mapValue!25817))))

(declare-fun b!850222 () Bool)

(assert (=> b!850222 (= e!474320 (= call!37883 call!37882))))

(declare-fun b!850223 () Bool)

(declare-fun res!577675 () Bool)

(assert (=> b!850223 (=> (not res!577675) (not e!474322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!850223 (= res!577675 (validMask!0 mask!1196))))

(declare-fun b!850224 () Bool)

(declare-fun res!577672 () Bool)

(assert (=> b!850224 (=> (not res!577672) (not e!474322))))

(declare-datatypes ((List!16553 0))(
  ( (Nil!16550) (Cons!16549 (h!17680 (_ BitVec 64)) (t!23016 List!16553)) )
))
(declare-fun arrayNoDuplicates!0 (array!48480 (_ BitVec 32) List!16553) Bool)

(assert (=> b!850224 (= res!577672 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16550))))

(declare-fun b!850225 () Bool)

(declare-fun e!474317 () Bool)

(assert (=> b!850225 (= e!474317 (not e!474319))))

(declare-fun res!577680 () Bool)

(assert (=> b!850225 (=> res!577680 e!474319)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!850225 (= res!577680 (not (validKeyInArray!0 (select (arr!23267 _keys!868) from!1053))))))

(assert (=> b!850225 e!474320))

(declare-fun c!91602 () Bool)

(assert (=> b!850225 (= c!91602 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!382728 () Unit!29006)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!350 (array!48480 array!48482 (_ BitVec 32) (_ BitVec 32) V!26573 V!26573 (_ BitVec 32) (_ BitVec 64) V!26573 (_ BitVec 32) Int) Unit!29006)

(assert (=> b!850225 (= lt!382728 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!350 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!25817 () Bool)

(assert (=> mapIsEmpty!25817 mapRes!25817))

(declare-fun b!850226 () Bool)

(assert (=> b!850226 (= e!474322 e!474317)))

(declare-fun res!577679 () Bool)

(assert (=> b!850226 (=> (not res!577679) (not e!474317))))

(assert (=> b!850226 (= res!577679 (= from!1053 i!612))))

(assert (=> b!850226 (= lt!382722 (getCurrentListMapNoExtraKeys!2721 _keys!868 lt!382725 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!850226 (= lt!382725 (array!48483 (store (arr!23268 _values!688) i!612 (ValueCellFull!7633 v!557)) (size!23709 _values!688)))))

(declare-fun lt!382724 () ListLongMap!9439)

(assert (=> b!850226 (= lt!382724 (getCurrentListMapNoExtraKeys!2721 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun bm!37879 () Bool)

(assert (=> bm!37879 (= call!37882 (getCurrentListMapNoExtraKeys!2721 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850227 () Bool)

(assert (=> b!850227 (= e!474323 tp_is_empty!16145)))

(declare-fun b!850228 () Bool)

(declare-fun res!577677 () Bool)

(assert (=> b!850228 (=> (not res!577677) (not e!474322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48480 (_ BitVec 32)) Bool)

(assert (=> b!850228 (= res!577677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!850229 () Bool)

(assert (=> b!850229 (= e!474324 (and e!474321 mapRes!25817))))

(declare-fun condMapEmpty!25817 () Bool)

(declare-fun mapDefault!25817 () ValueCell!7633)

