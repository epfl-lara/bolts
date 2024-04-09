; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73248 () Bool)

(assert start!73248)

(declare-fun b_free!14135 () Bool)

(declare-fun b_next!14135 () Bool)

(assert (=> start!73248 (= b_free!14135 (not b_next!14135))))

(declare-fun tp!49909 () Bool)

(declare-fun b_and!23447 () Bool)

(assert (=> start!73248 (= tp!49909 b_and!23447)))

(declare-fun res!579563 () Bool)

(declare-fun e!475836 () Bool)

(assert (=> start!73248 (=> (not res!579563) (not e!475836))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48726 0))(
  ( (array!48727 (arr!23390 (Array (_ BitVec 32) (_ BitVec 64))) (size!23831 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48726)

(assert (=> start!73248 (= res!579563 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23831 _keys!868))))))

(assert (=> start!73248 e!475836))

(declare-fun tp_is_empty!16271 () Bool)

(assert (=> start!73248 tp_is_empty!16271))

(assert (=> start!73248 true))

(assert (=> start!73248 tp!49909))

(declare-fun array_inv!18530 (array!48726) Bool)

(assert (=> start!73248 (array_inv!18530 _keys!868)))

(declare-datatypes ((V!26741 0))(
  ( (V!26742 (val!8183 Int)) )
))
(declare-datatypes ((ValueCell!7696 0))(
  ( (ValueCellFull!7696 (v!10604 V!26741)) (EmptyCell!7696) )
))
(declare-datatypes ((array!48728 0))(
  ( (array!48729 (arr!23391 (Array (_ BitVec 32) ValueCell!7696)) (size!23832 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48728)

(declare-fun e!475833 () Bool)

(declare-fun array_inv!18531 (array!48728) Bool)

(assert (=> start!73248 (and (array_inv!18531 _values!688) e!475833)))

(declare-fun b!853177 () Bool)

(declare-fun e!475832 () Bool)

(declare-datatypes ((tuple2!10768 0))(
  ( (tuple2!10769 (_1!5394 (_ BitVec 64)) (_2!5394 V!26741)) )
))
(declare-datatypes ((List!16646 0))(
  ( (Nil!16643) (Cons!16642 (h!17773 tuple2!10768) (t!23235 List!16646)) )
))
(declare-datatypes ((ListLongMap!9551 0))(
  ( (ListLongMap!9552 (toList!4791 List!16646)) )
))
(declare-fun call!38260 () ListLongMap!9551)

(declare-fun call!38261 () ListLongMap!9551)

(assert (=> b!853177 (= e!475832 (= call!38260 call!38261))))

(declare-fun b!853178 () Bool)

(declare-fun res!579570 () Bool)

(assert (=> b!853178 (=> (not res!579570) (not e!475836))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!853178 (= res!579570 (and (= (size!23832 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23831 _keys!868) (size!23832 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!853179 () Bool)

(declare-fun e!475830 () Bool)

(assert (=> b!853179 (= e!475830 true)))

(declare-fun lt!384615 () tuple2!10768)

(declare-fun lt!384611 () V!26741)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lt!384617 () ListLongMap!9551)

(declare-fun +!2131 (ListLongMap!9551 tuple2!10768) ListLongMap!9551)

(assert (=> b!853179 (= (+!2131 lt!384617 lt!384615) (+!2131 (+!2131 lt!384617 (tuple2!10769 k!854 lt!384611)) lt!384615))))

(declare-fun lt!384614 () V!26741)

(assert (=> b!853179 (= lt!384615 (tuple2!10769 k!854 lt!384614))))

(declare-datatypes ((Unit!29108 0))(
  ( (Unit!29109) )
))
(declare-fun lt!384609 () Unit!29108)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!311 (ListLongMap!9551 (_ BitVec 64) V!26741 V!26741) Unit!29108)

(assert (=> b!853179 (= lt!384609 (addSameAsAddTwiceSameKeyDiffValues!311 lt!384617 k!854 lt!384611 lt!384614))))

(declare-fun lt!384610 () V!26741)

(declare-fun get!12353 (ValueCell!7696 V!26741) V!26741)

(assert (=> b!853179 (= lt!384611 (get!12353 (select (arr!23391 _values!688) from!1053) lt!384610))))

(declare-fun lt!384613 () ListLongMap!9551)

(assert (=> b!853179 (= lt!384613 (+!2131 lt!384617 (tuple2!10769 (select (arr!23390 _keys!868) from!1053) lt!384614)))))

(declare-fun v!557 () V!26741)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!853179 (= lt!384614 (get!12353 (select (store (arr!23391 _values!688) i!612 (ValueCellFull!7696 v!557)) from!1053) lt!384610))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1059 (Int (_ BitVec 64)) V!26741)

(assert (=> b!853179 (= lt!384610 (dynLambda!1059 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun minValue!654 () V!26741)

(declare-fun zeroValue!654 () V!26741)

(declare-fun lt!384618 () array!48728)

(declare-fun getCurrentListMapNoExtraKeys!2774 (array!48726 array!48728 (_ BitVec 32) (_ BitVec 32) V!26741 V!26741 (_ BitVec 32) Int) ListLongMap!9551)

(assert (=> b!853179 (= lt!384617 (getCurrentListMapNoExtraKeys!2774 _keys!868 lt!384618 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!26006 () Bool)

(declare-fun mapRes!26006 () Bool)

(assert (=> mapIsEmpty!26006 mapRes!26006))

(declare-fun b!853180 () Bool)

(declare-fun e!475831 () Bool)

(assert (=> b!853180 (= e!475831 tp_is_empty!16271)))

(declare-fun b!853181 () Bool)

(declare-fun res!579566 () Bool)

(assert (=> b!853181 (=> (not res!579566) (not e!475836))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48726 (_ BitVec 32)) Bool)

(assert (=> b!853181 (= res!579566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!853182 () Bool)

(declare-fun e!475829 () Bool)

(assert (=> b!853182 (= e!475829 (not e!475830))))

(declare-fun res!579565 () Bool)

(assert (=> b!853182 (=> res!579565 e!475830)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!853182 (= res!579565 (not (validKeyInArray!0 (select (arr!23390 _keys!868) from!1053))))))

(assert (=> b!853182 e!475832))

(declare-fun c!91791 () Bool)

(assert (=> b!853182 (= c!91791 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!384616 () Unit!29108)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!394 (array!48726 array!48728 (_ BitVec 32) (_ BitVec 32) V!26741 V!26741 (_ BitVec 32) (_ BitVec 64) V!26741 (_ BitVec 32) Int) Unit!29108)

(assert (=> b!853182 (= lt!384616 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!394 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853183 () Bool)

(assert (=> b!853183 (= e!475832 (= call!38260 (+!2131 call!38261 (tuple2!10769 k!854 v!557))))))

(declare-fun b!853184 () Bool)

(declare-fun res!579564 () Bool)

(assert (=> b!853184 (=> (not res!579564) (not e!475836))))

(declare-datatypes ((List!16647 0))(
  ( (Nil!16644) (Cons!16643 (h!17774 (_ BitVec 64)) (t!23236 List!16647)) )
))
(declare-fun arrayNoDuplicates!0 (array!48726 (_ BitVec 32) List!16647) Bool)

(assert (=> b!853184 (= res!579564 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16644))))

(declare-fun b!853185 () Bool)

(declare-fun e!475835 () Bool)

(assert (=> b!853185 (= e!475835 tp_is_empty!16271)))

(declare-fun bm!38257 () Bool)

(assert (=> bm!38257 (= call!38260 (getCurrentListMapNoExtraKeys!2774 _keys!868 lt!384618 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!38258 () Bool)

(assert (=> bm!38258 (= call!38261 (getCurrentListMapNoExtraKeys!2774 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853186 () Bool)

(declare-fun res!579569 () Bool)

(assert (=> b!853186 (=> (not res!579569) (not e!475836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!853186 (= res!579569 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26006 () Bool)

(declare-fun tp!49910 () Bool)

(assert (=> mapNonEmpty!26006 (= mapRes!26006 (and tp!49910 e!475831))))

(declare-fun mapKey!26006 () (_ BitVec 32))

(declare-fun mapValue!26006 () ValueCell!7696)

(declare-fun mapRest!26006 () (Array (_ BitVec 32) ValueCell!7696))

(assert (=> mapNonEmpty!26006 (= (arr!23391 _values!688) (store mapRest!26006 mapKey!26006 mapValue!26006))))

(declare-fun b!853187 () Bool)

(declare-fun res!579568 () Bool)

(assert (=> b!853187 (=> (not res!579568) (not e!475836))))

(assert (=> b!853187 (= res!579568 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23831 _keys!868))))))

(declare-fun b!853188 () Bool)

(assert (=> b!853188 (= e!475833 (and e!475835 mapRes!26006))))

(declare-fun condMapEmpty!26006 () Bool)

(declare-fun mapDefault!26006 () ValueCell!7696)

