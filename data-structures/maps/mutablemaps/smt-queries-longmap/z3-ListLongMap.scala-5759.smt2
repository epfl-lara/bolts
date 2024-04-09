; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74432 () Bool)

(assert start!74432)

(declare-fun b_free!15147 () Bool)

(declare-fun b_next!15147 () Bool)

(assert (=> start!74432 (= b_free!15147 (not b_next!15147))))

(declare-fun tp!53119 () Bool)

(declare-fun b_and!24965 () Bool)

(assert (=> start!74432 (= tp!53119 b_and!24965)))

(declare-fun b!875815 () Bool)

(declare-fun res!595267 () Bool)

(declare-fun e!487598 () Bool)

(assert (=> b!875815 (=> (not res!595267) (not e!487598))))

(declare-datatypes ((array!50890 0))(
  ( (array!50891 (arr!24468 (Array (_ BitVec 32) (_ BitVec 64))) (size!24909 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50890)

(declare-datatypes ((List!17446 0))(
  ( (Nil!17443) (Cons!17442 (h!18573 (_ BitVec 64)) (t!24505 List!17446)) )
))
(declare-fun arrayNoDuplicates!0 (array!50890 (_ BitVec 32) List!17446) Bool)

(assert (=> b!875815 (= res!595267 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17443))))

(declare-fun bm!38681 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!28235 0))(
  ( (V!28236 (val!8743 Int)) )
))
(declare-datatypes ((tuple2!11560 0))(
  ( (tuple2!11561 (_1!5790 (_ BitVec 64)) (_2!5790 V!28235)) )
))
(declare-datatypes ((List!17447 0))(
  ( (Nil!17444) (Cons!17443 (h!18574 tuple2!11560) (t!24506 List!17447)) )
))
(declare-datatypes ((ListLongMap!10343 0))(
  ( (ListLongMap!10344 (toList!5187 List!17447)) )
))
(declare-fun call!38684 () ListLongMap!10343)

(declare-datatypes ((ValueCell!8256 0))(
  ( (ValueCellFull!8256 (v!11172 V!28235)) (EmptyCell!8256) )
))
(declare-datatypes ((array!50892 0))(
  ( (array!50893 (arr!24469 (Array (_ BitVec 32) ValueCell!8256)) (size!24910 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50892)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28235)

(declare-fun zeroValue!654 () V!28235)

(declare-fun getCurrentListMapNoExtraKeys!3150 (array!50890 array!50892 (_ BitVec 32) (_ BitVec 32) V!28235 V!28235 (_ BitVec 32) Int) ListLongMap!10343)

(assert (=> bm!38681 (= call!38684 (getCurrentListMapNoExtraKeys!3150 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875816 () Bool)

(declare-fun res!595265 () Bool)

(assert (=> b!875816 (=> (not res!595265) (not e!487598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!875816 (= res!595265 (validMask!0 mask!1196))))

(declare-fun b!875817 () Bool)

(declare-fun e!487595 () Bool)

(assert (=> b!875817 (= e!487598 e!487595)))

(declare-fun res!595270 () Bool)

(assert (=> b!875817 (=> (not res!595270) (not e!487595))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!875817 (= res!595270 (= from!1053 i!612))))

(declare-fun lt!396305 () array!50892)

(declare-fun lt!396306 () ListLongMap!10343)

(assert (=> b!875817 (= lt!396306 (getCurrentListMapNoExtraKeys!3150 _keys!868 lt!396305 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28235)

(assert (=> b!875817 (= lt!396305 (array!50893 (store (arr!24469 _values!688) i!612 (ValueCellFull!8256 v!557)) (size!24910 _values!688)))))

(declare-fun lt!396307 () ListLongMap!10343)

(assert (=> b!875817 (= lt!396307 (getCurrentListMapNoExtraKeys!3150 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!595272 () Bool)

(assert (=> start!74432 (=> (not res!595272) (not e!487598))))

(assert (=> start!74432 (= res!595272 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24909 _keys!868))))))

(assert (=> start!74432 e!487598))

(declare-fun tp_is_empty!17391 () Bool)

(assert (=> start!74432 tp_is_empty!17391))

(assert (=> start!74432 true))

(assert (=> start!74432 tp!53119))

(declare-fun array_inv!19272 (array!50890) Bool)

(assert (=> start!74432 (array_inv!19272 _keys!868)))

(declare-fun e!487597 () Bool)

(declare-fun array_inv!19273 (array!50892) Bool)

(assert (=> start!74432 (and (array_inv!19273 _values!688) e!487597)))

(declare-fun b!875818 () Bool)

(declare-fun e!487596 () Bool)

(declare-fun mapRes!27698 () Bool)

(assert (=> b!875818 (= e!487597 (and e!487596 mapRes!27698))))

(declare-fun condMapEmpty!27698 () Bool)

(declare-fun mapDefault!27698 () ValueCell!8256)

(assert (=> b!875818 (= condMapEmpty!27698 (= (arr!24469 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8256)) mapDefault!27698)))))

(declare-fun b!875819 () Bool)

(declare-fun res!595263 () Bool)

(assert (=> b!875819 (=> (not res!595263) (not e!487598))))

(assert (=> b!875819 (= res!595263 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24909 _keys!868))))))

(declare-fun b!875820 () Bool)

(declare-fun res!595266 () Bool)

(assert (=> b!875820 (=> (not res!595266) (not e!487598))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!875820 (= res!595266 (and (= (select (arr!24468 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun e!487601 () Bool)

(declare-fun call!38685 () ListLongMap!10343)

(declare-fun b!875821 () Bool)

(declare-fun +!2427 (ListLongMap!10343 tuple2!11560) ListLongMap!10343)

(assert (=> b!875821 (= e!487601 (= call!38685 (+!2427 call!38684 (tuple2!11561 k0!854 v!557))))))

(declare-fun b!875822 () Bool)

(declare-fun res!595271 () Bool)

(assert (=> b!875822 (=> (not res!595271) (not e!487598))))

(assert (=> b!875822 (= res!595271 (and (= (size!24910 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24909 _keys!868) (size!24910 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun bm!38682 () Bool)

(assert (=> bm!38682 (= call!38685 (getCurrentListMapNoExtraKeys!3150 _keys!868 lt!396305 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875823 () Bool)

(declare-fun e!487599 () Bool)

(assert (=> b!875823 (= e!487595 (not e!487599))))

(declare-fun res!595269 () Bool)

(assert (=> b!875823 (=> res!595269 e!487599)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!875823 (= res!595269 (not (validKeyInArray!0 (select (arr!24468 _keys!868) from!1053))))))

(assert (=> b!875823 e!487601))

(declare-fun c!92488 () Bool)

(assert (=> b!875823 (= c!92488 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29914 0))(
  ( (Unit!29915) )
))
(declare-fun lt!396308 () Unit!29914)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!661 (array!50890 array!50892 (_ BitVec 32) (_ BitVec 32) V!28235 V!28235 (_ BitVec 32) (_ BitVec 64) V!28235 (_ BitVec 32) Int) Unit!29914)

(assert (=> b!875823 (= lt!396308 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!661 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875824 () Bool)

(declare-fun res!595268 () Bool)

(assert (=> b!875824 (=> (not res!595268) (not e!487598))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50890 (_ BitVec 32)) Bool)

(assert (=> b!875824 (= res!595268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!27698 () Bool)

(declare-fun tp!53120 () Bool)

(declare-fun e!487600 () Bool)

(assert (=> mapNonEmpty!27698 (= mapRes!27698 (and tp!53120 e!487600))))

(declare-fun mapRest!27698 () (Array (_ BitVec 32) ValueCell!8256))

(declare-fun mapValue!27698 () ValueCell!8256)

(declare-fun mapKey!27698 () (_ BitVec 32))

(assert (=> mapNonEmpty!27698 (= (arr!24469 _values!688) (store mapRest!27698 mapKey!27698 mapValue!27698))))

(declare-fun b!875825 () Bool)

(assert (=> b!875825 (= e!487600 tp_is_empty!17391)))

(declare-fun b!875826 () Bool)

(assert (=> b!875826 (= e!487601 (= call!38685 call!38684))))

(declare-fun mapIsEmpty!27698 () Bool)

(assert (=> mapIsEmpty!27698 mapRes!27698))

(declare-fun b!875827 () Bool)

(assert (=> b!875827 (= e!487596 tp_is_empty!17391)))

(declare-fun b!875828 () Bool)

(assert (=> b!875828 (= e!487599 (bvslt i!612 (size!24910 _values!688)))))

(declare-fun get!12881 (ValueCell!8256 V!28235) V!28235)

(declare-fun dynLambda!1211 (Int (_ BitVec 64)) V!28235)

(assert (=> b!875828 (= lt!396306 (+!2427 (getCurrentListMapNoExtraKeys!3150 _keys!868 lt!396305 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11561 (select (arr!24468 _keys!868) from!1053) (get!12881 (select (arr!24469 lt!396305) from!1053) (dynLambda!1211 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!875829 () Bool)

(declare-fun res!595264 () Bool)

(assert (=> b!875829 (=> (not res!595264) (not e!487598))))

(assert (=> b!875829 (= res!595264 (validKeyInArray!0 k0!854))))

(assert (= (and start!74432 res!595272) b!875816))

(assert (= (and b!875816 res!595265) b!875822))

(assert (= (and b!875822 res!595271) b!875824))

(assert (= (and b!875824 res!595268) b!875815))

(assert (= (and b!875815 res!595267) b!875819))

(assert (= (and b!875819 res!595263) b!875829))

(assert (= (and b!875829 res!595264) b!875820))

(assert (= (and b!875820 res!595266) b!875817))

(assert (= (and b!875817 res!595270) b!875823))

(assert (= (and b!875823 c!92488) b!875821))

(assert (= (and b!875823 (not c!92488)) b!875826))

(assert (= (or b!875821 b!875826) bm!38682))

(assert (= (or b!875821 b!875826) bm!38681))

(assert (= (and b!875823 (not res!595269)) b!875828))

(assert (= (and b!875818 condMapEmpty!27698) mapIsEmpty!27698))

(assert (= (and b!875818 (not condMapEmpty!27698)) mapNonEmpty!27698))

(get-info :version)

(assert (= (and mapNonEmpty!27698 ((_ is ValueCellFull!8256) mapValue!27698)) b!875825))

(assert (= (and b!875818 ((_ is ValueCellFull!8256) mapDefault!27698)) b!875827))

(assert (= start!74432 b!875818))

(declare-fun b_lambda!12245 () Bool)

(assert (=> (not b_lambda!12245) (not b!875828)))

(declare-fun t!24504 () Bool)

(declare-fun tb!4915 () Bool)

(assert (=> (and start!74432 (= defaultEntry!696 defaultEntry!696) t!24504) tb!4915))

(declare-fun result!9441 () Bool)

(assert (=> tb!4915 (= result!9441 tp_is_empty!17391)))

(assert (=> b!875828 t!24504))

(declare-fun b_and!24967 () Bool)

(assert (= b_and!24965 (and (=> t!24504 result!9441) b_and!24967)))

(declare-fun m!815731 () Bool)

(assert (=> b!875829 m!815731))

(declare-fun m!815733 () Bool)

(assert (=> start!74432 m!815733))

(declare-fun m!815735 () Bool)

(assert (=> start!74432 m!815735))

(declare-fun m!815737 () Bool)

(assert (=> b!875823 m!815737))

(assert (=> b!875823 m!815737))

(declare-fun m!815739 () Bool)

(assert (=> b!875823 m!815739))

(declare-fun m!815741 () Bool)

(assert (=> b!875823 m!815741))

(declare-fun m!815743 () Bool)

(assert (=> b!875817 m!815743))

(declare-fun m!815745 () Bool)

(assert (=> b!875817 m!815745))

(declare-fun m!815747 () Bool)

(assert (=> b!875817 m!815747))

(declare-fun m!815749 () Bool)

(assert (=> b!875828 m!815749))

(assert (=> b!875828 m!815749))

(declare-fun m!815751 () Bool)

(assert (=> b!875828 m!815751))

(declare-fun m!815753 () Bool)

(assert (=> b!875828 m!815753))

(assert (=> b!875828 m!815753))

(declare-fun m!815755 () Bool)

(assert (=> b!875828 m!815755))

(declare-fun m!815757 () Bool)

(assert (=> b!875828 m!815757))

(assert (=> b!875828 m!815737))

(assert (=> b!875828 m!815755))

(declare-fun m!815759 () Bool)

(assert (=> bm!38681 m!815759))

(declare-fun m!815761 () Bool)

(assert (=> b!875824 m!815761))

(declare-fun m!815763 () Bool)

(assert (=> b!875820 m!815763))

(declare-fun m!815765 () Bool)

(assert (=> b!875815 m!815765))

(declare-fun m!815767 () Bool)

(assert (=> mapNonEmpty!27698 m!815767))

(assert (=> bm!38682 m!815749))

(declare-fun m!815769 () Bool)

(assert (=> b!875816 m!815769))

(declare-fun m!815771 () Bool)

(assert (=> b!875821 m!815771))

(check-sat (not b!875815) (not bm!38681) (not b!875829) b_and!24967 (not b!875823) (not bm!38682) (not b!875824) (not mapNonEmpty!27698) tp_is_empty!17391 (not b!875816) (not start!74432) (not b!875821) (not b!875828) (not b_lambda!12245) (not b!875817) (not b_next!15147))
(check-sat b_and!24967 (not b_next!15147))
