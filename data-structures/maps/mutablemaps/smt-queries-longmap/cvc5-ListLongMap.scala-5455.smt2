; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72542 () Bool)

(assert start!72542)

(declare-fun b_free!13699 () Bool)

(declare-fun b_next!13699 () Bool)

(assert (=> start!72542 (= b_free!13699 (not b_next!13699))))

(declare-fun tp!48197 () Bool)

(declare-fun b_and!22803 () Bool)

(assert (=> start!72542 (= tp!48197 b_and!22803)))

(declare-fun res!571992 () Bool)

(declare-fun e!469351 () Bool)

(assert (=> start!72542 (=> (not res!571992) (not e!469351))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47376 0))(
  ( (array!47377 (arr!22715 (Array (_ BitVec 32) (_ BitVec 64))) (size!23156 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47376)

(assert (=> start!72542 (= res!571992 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23156 _keys!868))))))

(assert (=> start!72542 e!469351))

(declare-fun tp_is_empty!15565 () Bool)

(assert (=> start!72542 tp_is_empty!15565))

(assert (=> start!72542 true))

(assert (=> start!72542 tp!48197))

(declare-fun array_inv!18060 (array!47376) Bool)

(assert (=> start!72542 (array_inv!18060 _keys!868)))

(declare-datatypes ((V!25801 0))(
  ( (V!25802 (val!7830 Int)) )
))
(declare-datatypes ((ValueCell!7343 0))(
  ( (ValueCellFull!7343 (v!10251 V!25801)) (EmptyCell!7343) )
))
(declare-datatypes ((array!47378 0))(
  ( (array!47379 (arr!22716 (Array (_ BitVec 32) ValueCell!7343)) (size!23157 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47378)

(declare-fun e!469353 () Bool)

(declare-fun array_inv!18061 (array!47378) Bool)

(assert (=> start!72542 (and (array_inv!18061 _values!688) e!469353)))

(declare-fun b!841292 () Bool)

(declare-fun res!571993 () Bool)

(assert (=> b!841292 (=> (not res!571993) (not e!469351))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!841292 (= res!571993 (validMask!0 mask!1196))))

(declare-fun b!841293 () Bool)

(declare-fun res!571998 () Bool)

(assert (=> b!841293 (=> (not res!571998) (not e!469351))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!841293 (= res!571998 (validKeyInArray!0 k!854))))

(declare-fun b!841294 () Bool)

(declare-fun res!571995 () Bool)

(assert (=> b!841294 (=> (not res!571995) (not e!469351))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!841294 (= res!571995 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23156 _keys!868))))))

(declare-fun bm!37327 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10410 0))(
  ( (tuple2!10411 (_1!5215 (_ BitVec 64)) (_2!5215 V!25801)) )
))
(declare-datatypes ((List!16234 0))(
  ( (Nil!16231) (Cons!16230 (h!17361 tuple2!10410) (t!22613 List!16234)) )
))
(declare-datatypes ((ListLongMap!9193 0))(
  ( (ListLongMap!9194 (toList!4612 List!16234)) )
))
(declare-fun call!37330 () ListLongMap!9193)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!25801)

(declare-fun zeroValue!654 () V!25801)

(declare-fun getCurrentListMapNoExtraKeys!2603 (array!47376 array!47378 (_ BitVec 32) (_ BitVec 32) V!25801 V!25801 (_ BitVec 32) Int) ListLongMap!9193)

(assert (=> bm!37327 (= call!37330 (getCurrentListMapNoExtraKeys!2603 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841295 () Bool)

(declare-fun e!469354 () Bool)

(declare-fun call!37331 () ListLongMap!9193)

(assert (=> b!841295 (= e!469354 (= call!37331 call!37330))))

(declare-fun b!841296 () Bool)

(declare-fun res!571996 () Bool)

(assert (=> b!841296 (=> (not res!571996) (not e!469351))))

(declare-datatypes ((List!16235 0))(
  ( (Nil!16232) (Cons!16231 (h!17362 (_ BitVec 64)) (t!22614 List!16235)) )
))
(declare-fun arrayNoDuplicates!0 (array!47376 (_ BitVec 32) List!16235) Bool)

(assert (=> b!841296 (= res!571996 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16232))))

(declare-fun mapNonEmpty!24947 () Bool)

(declare-fun mapRes!24947 () Bool)

(declare-fun tp!48196 () Bool)

(declare-fun e!469352 () Bool)

(assert (=> mapNonEmpty!24947 (= mapRes!24947 (and tp!48196 e!469352))))

(declare-fun mapValue!24947 () ValueCell!7343)

(declare-fun mapKey!24947 () (_ BitVec 32))

(declare-fun mapRest!24947 () (Array (_ BitVec 32) ValueCell!7343))

(assert (=> mapNonEmpty!24947 (= (arr!22716 _values!688) (store mapRest!24947 mapKey!24947 mapValue!24947))))

(declare-fun b!841297 () Bool)

(assert (=> b!841297 (= e!469351 (not true))))

(assert (=> b!841297 e!469354))

(declare-fun c!91326 () Bool)

(assert (=> b!841297 (= c!91326 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!25801)

(declare-datatypes ((Unit!28892 0))(
  ( (Unit!28893) )
))
(declare-fun lt!380859 () Unit!28892)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!295 (array!47376 array!47378 (_ BitVec 32) (_ BitVec 32) V!25801 V!25801 (_ BitVec 32) (_ BitVec 64) V!25801 (_ BitVec 32) Int) Unit!28892)

(assert (=> b!841297 (= lt!380859 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!295 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841298 () Bool)

(declare-fun e!469356 () Bool)

(assert (=> b!841298 (= e!469356 tp_is_empty!15565)))

(declare-fun b!841299 () Bool)

(declare-fun res!571994 () Bool)

(assert (=> b!841299 (=> (not res!571994) (not e!469351))))

(assert (=> b!841299 (= res!571994 (and (= (size!23157 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23156 _keys!868) (size!23157 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun bm!37328 () Bool)

(assert (=> bm!37328 (= call!37331 (getCurrentListMapNoExtraKeys!2603 _keys!868 (array!47379 (store (arr!22716 _values!688) i!612 (ValueCellFull!7343 v!557)) (size!23157 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841300 () Bool)

(declare-fun res!571991 () Bool)

(assert (=> b!841300 (=> (not res!571991) (not e!469351))))

(assert (=> b!841300 (= res!571991 (and (= (select (arr!22715 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23156 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!841301 () Bool)

(assert (=> b!841301 (= e!469353 (and e!469356 mapRes!24947))))

(declare-fun condMapEmpty!24947 () Bool)

(declare-fun mapDefault!24947 () ValueCell!7343)

