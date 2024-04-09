; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73182 () Bool)

(assert start!73182)

(declare-fun b_free!14069 () Bool)

(declare-fun b_next!14069 () Bool)

(assert (=> start!73182 (= b_free!14069 (not b_next!14069))))

(declare-fun tp!49712 () Bool)

(declare-fun b_and!23315 () Bool)

(assert (=> start!73182 (= tp!49712 b_and!23315)))

(declare-fun b!851626 () Bool)

(declare-fun e!475038 () Bool)

(declare-fun tp_is_empty!16205 () Bool)

(assert (=> b!851626 (= e!475038 tp_is_empty!16205)))

(declare-fun b!851627 () Bool)

(declare-fun res!578580 () Bool)

(declare-fun e!475043 () Bool)

(assert (=> b!851627 (=> (not res!578580) (not e!475043))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48598 0))(
  ( (array!48599 (arr!23326 (Array (_ BitVec 32) (_ BitVec 64))) (size!23767 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48598)

(assert (=> b!851627 (= res!578580 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23767 _keys!868))))))

(declare-fun b!851628 () Bool)

(declare-fun e!475042 () Bool)

(assert (=> b!851628 (= e!475042 true)))

(declare-datatypes ((V!26653 0))(
  ( (V!26654 (val!8150 Int)) )
))
(declare-datatypes ((tuple2!10710 0))(
  ( (tuple2!10711 (_1!5365 (_ BitVec 64)) (_2!5365 V!26653)) )
))
(declare-datatypes ((List!16596 0))(
  ( (Nil!16593) (Cons!16592 (h!17723 tuple2!10710) (t!23119 List!16596)) )
))
(declare-datatypes ((ListLongMap!9493 0))(
  ( (ListLongMap!9494 (toList!4762 List!16596)) )
))
(declare-fun lt!383621 () ListLongMap!9493)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lt!383626 () V!26653)

(declare-fun lt!383620 () tuple2!10710)

(declare-fun +!2104 (ListLongMap!9493 tuple2!10710) ListLongMap!9493)

(assert (=> b!851628 (= (+!2104 lt!383621 lt!383620) (+!2104 (+!2104 lt!383621 (tuple2!10711 k!854 lt!383626)) lt!383620))))

(declare-fun lt!383625 () V!26653)

(assert (=> b!851628 (= lt!383620 (tuple2!10711 k!854 lt!383625))))

(declare-datatypes ((Unit!29054 0))(
  ( (Unit!29055) )
))
(declare-fun lt!383623 () Unit!29054)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!288 (ListLongMap!9493 (_ BitVec 64) V!26653 V!26653) Unit!29054)

(assert (=> b!851628 (= lt!383623 (addSameAsAddTwiceSameKeyDiffValues!288 lt!383621 k!854 lt!383626 lt!383625))))

(declare-fun lt!383622 () V!26653)

(declare-datatypes ((ValueCell!7663 0))(
  ( (ValueCellFull!7663 (v!10571 V!26653)) (EmptyCell!7663) )
))
(declare-datatypes ((array!48600 0))(
  ( (array!48601 (arr!23327 (Array (_ BitVec 32) ValueCell!7663)) (size!23768 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48600)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun get!12308 (ValueCell!7663 V!26653) V!26653)

(assert (=> b!851628 (= lt!383626 (get!12308 (select (arr!23327 _values!688) from!1053) lt!383622))))

(declare-fun lt!383619 () ListLongMap!9493)

(assert (=> b!851628 (= lt!383619 (+!2104 lt!383621 (tuple2!10711 (select (arr!23326 _keys!868) from!1053) lt!383625)))))

(declare-fun v!557 () V!26653)

(assert (=> b!851628 (= lt!383625 (get!12308 (select (store (arr!23327 _values!688) i!612 (ValueCellFull!7663 v!557)) from!1053) lt!383622))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1036 (Int (_ BitVec 64)) V!26653)

(assert (=> b!851628 (= lt!383622 (dynLambda!1036 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26653)

(declare-fun zeroValue!654 () V!26653)

(declare-fun lt!383627 () array!48600)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2747 (array!48598 array!48600 (_ BitVec 32) (_ BitVec 32) V!26653 V!26653 (_ BitVec 32) Int) ListLongMap!9493)

(assert (=> b!851628 (= lt!383621 (getCurrentListMapNoExtraKeys!2747 _keys!868 lt!383627 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!578573 () Bool)

(assert (=> start!73182 (=> (not res!578573) (not e!475043))))

(assert (=> start!73182 (= res!578573 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23767 _keys!868))))))

(assert (=> start!73182 e!475043))

(assert (=> start!73182 tp_is_empty!16205))

(assert (=> start!73182 true))

(assert (=> start!73182 tp!49712))

(declare-fun array_inv!18494 (array!48598) Bool)

(assert (=> start!73182 (array_inv!18494 _keys!868)))

(declare-fun e!475040 () Bool)

(declare-fun array_inv!18495 (array!48600) Bool)

(assert (=> start!73182 (and (array_inv!18495 _values!688) e!475040)))

(declare-fun b!851629 () Bool)

(declare-fun res!578576 () Bool)

(assert (=> b!851629 (=> (not res!578576) (not e!475043))))

(assert (=> b!851629 (= res!578576 (and (= (size!23768 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23767 _keys!868) (size!23768 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!851630 () Bool)

(declare-fun e!475044 () Bool)

(assert (=> b!851630 (= e!475043 e!475044)))

(declare-fun res!578575 () Bool)

(assert (=> b!851630 (=> (not res!578575) (not e!475044))))

(assert (=> b!851630 (= res!578575 (= from!1053 i!612))))

(assert (=> b!851630 (= lt!383619 (getCurrentListMapNoExtraKeys!2747 _keys!868 lt!383627 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!851630 (= lt!383627 (array!48601 (store (arr!23327 _values!688) i!612 (ValueCellFull!7663 v!557)) (size!23768 _values!688)))))

(declare-fun lt!383628 () ListLongMap!9493)

(assert (=> b!851630 (= lt!383628 (getCurrentListMapNoExtraKeys!2747 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun call!38063 () ListLongMap!9493)

(declare-fun bm!38059 () Bool)

(assert (=> bm!38059 (= call!38063 (getCurrentListMapNoExtraKeys!2747 _keys!868 lt!383627 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851631 () Bool)

(declare-fun res!578572 () Bool)

(assert (=> b!851631 (=> (not res!578572) (not e!475043))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48598 (_ BitVec 32)) Bool)

(assert (=> b!851631 (= res!578572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!851632 () Bool)

(declare-fun res!578577 () Bool)

(assert (=> b!851632 (=> (not res!578577) (not e!475043))))

(declare-datatypes ((List!16597 0))(
  ( (Nil!16594) (Cons!16593 (h!17724 (_ BitVec 64)) (t!23120 List!16597)) )
))
(declare-fun arrayNoDuplicates!0 (array!48598 (_ BitVec 32) List!16597) Bool)

(assert (=> b!851632 (= res!578577 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16594))))

(declare-fun b!851633 () Bool)

(declare-fun res!578578 () Bool)

(assert (=> b!851633 (=> (not res!578578) (not e!475043))))

(assert (=> b!851633 (= res!578578 (and (= (select (arr!23326 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!851634 () Bool)

(declare-fun e!475039 () Bool)

(assert (=> b!851634 (= e!475039 tp_is_empty!16205)))

(declare-fun b!851635 () Bool)

(declare-fun e!475041 () Bool)

(declare-fun call!38062 () ListLongMap!9493)

(assert (=> b!851635 (= e!475041 (= call!38063 (+!2104 call!38062 (tuple2!10711 k!854 v!557))))))

(declare-fun mapNonEmpty!25907 () Bool)

(declare-fun mapRes!25907 () Bool)

(declare-fun tp!49711 () Bool)

(assert (=> mapNonEmpty!25907 (= mapRes!25907 (and tp!49711 e!475039))))

(declare-fun mapValue!25907 () ValueCell!7663)

(declare-fun mapKey!25907 () (_ BitVec 32))

(declare-fun mapRest!25907 () (Array (_ BitVec 32) ValueCell!7663))

(assert (=> mapNonEmpty!25907 (= (arr!23327 _values!688) (store mapRest!25907 mapKey!25907 mapValue!25907))))

(declare-fun b!851636 () Bool)

(declare-fun res!578574 () Bool)

(assert (=> b!851636 (=> (not res!578574) (not e!475043))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!851636 (= res!578574 (validMask!0 mask!1196))))

(declare-fun bm!38060 () Bool)

(assert (=> bm!38060 (= call!38062 (getCurrentListMapNoExtraKeys!2747 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851637 () Bool)

(assert (=> b!851637 (= e!475041 (= call!38063 call!38062))))

(declare-fun mapIsEmpty!25907 () Bool)

(assert (=> mapIsEmpty!25907 mapRes!25907))

(declare-fun b!851638 () Bool)

(assert (=> b!851638 (= e!475044 (not e!475042))))

(declare-fun res!578579 () Bool)

(assert (=> b!851638 (=> res!578579 e!475042)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!851638 (= res!578579 (not (validKeyInArray!0 (select (arr!23326 _keys!868) from!1053))))))

(assert (=> b!851638 e!475041))

(declare-fun c!91692 () Bool)

(assert (=> b!851638 (= c!91692 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!383624 () Unit!29054)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!370 (array!48598 array!48600 (_ BitVec 32) (_ BitVec 32) V!26653 V!26653 (_ BitVec 32) (_ BitVec 64) V!26653 (_ BitVec 32) Int) Unit!29054)

(assert (=> b!851638 (= lt!383624 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!370 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851639 () Bool)

(assert (=> b!851639 (= e!475040 (and e!475038 mapRes!25907))))

(declare-fun condMapEmpty!25907 () Bool)

(declare-fun mapDefault!25907 () ValueCell!7663)

