; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74382 () Bool)

(assert start!74382)

(declare-fun b_free!15117 () Bool)

(declare-fun b_next!15117 () Bool)

(assert (=> start!74382 (= b_free!15117 (not b_next!15117))))

(declare-fun tp!53027 () Bool)

(declare-fun b_and!24911 () Bool)

(assert (=> start!74382 (= tp!53027 b_and!24911)))

(declare-fun mapNonEmpty!27650 () Bool)

(declare-fun mapRes!27650 () Bool)

(declare-fun tp!53026 () Bool)

(declare-fun e!487158 () Bool)

(assert (=> mapNonEmpty!27650 (= mapRes!27650 (and tp!53026 e!487158))))

(declare-fun mapKey!27650 () (_ BitVec 32))

(declare-datatypes ((V!28195 0))(
  ( (V!28196 (val!8728 Int)) )
))
(declare-datatypes ((ValueCell!8241 0))(
  ( (ValueCellFull!8241 (v!11153 V!28195)) (EmptyCell!8241) )
))
(declare-fun mapValue!27650 () ValueCell!8241)

(declare-fun mapRest!27650 () (Array (_ BitVec 32) ValueCell!8241))

(declare-datatypes ((array!50834 0))(
  ( (array!50835 (arr!24441 (Array (_ BitVec 32) ValueCell!8241)) (size!24882 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50834)

(assert (=> mapNonEmpty!27650 (= (arr!24441 _values!688) (store mapRest!27650 mapKey!27650 mapValue!27650))))

(declare-fun b!875002 () Bool)

(declare-fun res!594767 () Bool)

(declare-fun e!487154 () Bool)

(assert (=> b!875002 (=> (not res!594767) (not e!487154))))

(declare-datatypes ((array!50836 0))(
  ( (array!50837 (arr!24442 (Array (_ BitVec 32) (_ BitVec 64))) (size!24883 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50836)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50836 (_ BitVec 32)) Bool)

(assert (=> b!875002 (= res!594767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!875003 () Bool)

(declare-fun res!594770 () Bool)

(assert (=> b!875003 (=> (not res!594770) (not e!487154))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!875003 (= res!594770 (and (= (select (arr!24442 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!875004 () Bool)

(declare-fun res!594768 () Bool)

(assert (=> b!875004 (=> (not res!594768) (not e!487154))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!875004 (= res!594768 (validMask!0 mask!1196))))

(declare-fun b!875005 () Bool)

(declare-fun tp_is_empty!17361 () Bool)

(assert (=> b!875005 (= e!487158 tp_is_empty!17361)))

(declare-fun b!875006 () Bool)

(declare-fun res!594765 () Bool)

(assert (=> b!875006 (=> (not res!594765) (not e!487154))))

(declare-datatypes ((List!17423 0))(
  ( (Nil!17420) (Cons!17419 (h!18550 (_ BitVec 64)) (t!24472 List!17423)) )
))
(declare-fun arrayNoDuplicates!0 (array!50836 (_ BitVec 32) List!17423) Bool)

(assert (=> b!875006 (= res!594765 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17420))))

(declare-fun res!594769 () Bool)

(assert (=> start!74382 (=> (not res!594769) (not e!487154))))

(assert (=> start!74382 (= res!594769 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24883 _keys!868))))))

(assert (=> start!74382 e!487154))

(assert (=> start!74382 tp_is_empty!17361))

(assert (=> start!74382 true))

(assert (=> start!74382 tp!53027))

(declare-fun array_inv!19254 (array!50836) Bool)

(assert (=> start!74382 (array_inv!19254 _keys!868)))

(declare-fun e!487157 () Bool)

(declare-fun array_inv!19255 (array!50834) Bool)

(assert (=> start!74382 (and (array_inv!19255 _values!688) e!487157)))

(declare-fun b!875007 () Bool)

(declare-fun e!487152 () Bool)

(declare-fun e!487156 () Bool)

(assert (=> b!875007 (= e!487152 (not e!487156))))

(declare-fun res!594763 () Bool)

(assert (=> b!875007 (=> res!594763 e!487156)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!875007 (= res!594763 (not (validKeyInArray!0 (select (arr!24442 _keys!868) from!1053))))))

(declare-fun e!487159 () Bool)

(assert (=> b!875007 e!487159))

(declare-fun c!92407 () Bool)

(assert (=> b!875007 (= c!92407 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!28195)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!28195)

(declare-fun zeroValue!654 () V!28195)

(declare-datatypes ((Unit!29894 0))(
  ( (Unit!29895) )
))
(declare-fun lt!396037 () Unit!29894)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!651 (array!50836 array!50834 (_ BitVec 32) (_ BitVec 32) V!28195 V!28195 (_ BitVec 32) (_ BitVec 64) V!28195 (_ BitVec 32) Int) Unit!29894)

(assert (=> b!875007 (= lt!396037 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!651 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875008 () Bool)

(declare-fun e!487153 () Bool)

(assert (=> b!875008 (= e!487157 (and e!487153 mapRes!27650))))

(declare-fun condMapEmpty!27650 () Bool)

(declare-fun mapDefault!27650 () ValueCell!8241)

(assert (=> b!875008 (= condMapEmpty!27650 (= (arr!24441 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8241)) mapDefault!27650)))))

(declare-fun bm!38573 () Bool)

(declare-datatypes ((tuple2!11534 0))(
  ( (tuple2!11535 (_1!5777 (_ BitVec 64)) (_2!5777 V!28195)) )
))
(declare-datatypes ((List!17424 0))(
  ( (Nil!17421) (Cons!17420 (h!18551 tuple2!11534) (t!24473 List!17424)) )
))
(declare-datatypes ((ListLongMap!10317 0))(
  ( (ListLongMap!10318 (toList!5174 List!17424)) )
))
(declare-fun call!38577 () ListLongMap!10317)

(declare-fun getCurrentListMapNoExtraKeys!3138 (array!50836 array!50834 (_ BitVec 32) (_ BitVec 32) V!28195 V!28195 (_ BitVec 32) Int) ListLongMap!10317)

(assert (=> bm!38573 (= call!38577 (getCurrentListMapNoExtraKeys!3138 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875009 () Bool)

(assert (=> b!875009 (= e!487154 e!487152)))

(declare-fun res!594772 () Bool)

(assert (=> b!875009 (=> (not res!594772) (not e!487152))))

(assert (=> b!875009 (= res!594772 (= from!1053 i!612))))

(declare-fun lt!396040 () ListLongMap!10317)

(declare-fun lt!396038 () array!50834)

(assert (=> b!875009 (= lt!396040 (getCurrentListMapNoExtraKeys!3138 _keys!868 lt!396038 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!875009 (= lt!396038 (array!50835 (store (arr!24441 _values!688) i!612 (ValueCellFull!8241 v!557)) (size!24882 _values!688)))))

(declare-fun lt!396039 () ListLongMap!10317)

(assert (=> b!875009 (= lt!396039 (getCurrentListMapNoExtraKeys!3138 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!875010 () Bool)

(declare-fun res!594766 () Bool)

(assert (=> b!875010 (=> (not res!594766) (not e!487154))))

(assert (=> b!875010 (= res!594766 (validKeyInArray!0 k0!854))))

(declare-fun b!875011 () Bool)

(declare-fun call!38576 () ListLongMap!10317)

(declare-fun +!2420 (ListLongMap!10317 tuple2!11534) ListLongMap!10317)

(assert (=> b!875011 (= e!487159 (= call!38576 (+!2420 call!38577 (tuple2!11535 k0!854 v!557))))))

(declare-fun mapIsEmpty!27650 () Bool)

(assert (=> mapIsEmpty!27650 mapRes!27650))

(declare-fun bm!38574 () Bool)

(assert (=> bm!38574 (= call!38576 (getCurrentListMapNoExtraKeys!3138 _keys!868 lt!396038 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875012 () Bool)

(assert (=> b!875012 (= e!487153 tp_is_empty!17361)))

(declare-fun b!875013 () Bool)

(declare-fun res!594764 () Bool)

(assert (=> b!875013 (=> (not res!594764) (not e!487154))))

(assert (=> b!875013 (= res!594764 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24883 _keys!868))))))

(declare-fun b!875014 () Bool)

(assert (=> b!875014 (= e!487159 (= call!38576 call!38577))))

(declare-fun b!875015 () Bool)

(assert (=> b!875015 (= e!487156 (bvslt i!612 (size!24882 _values!688)))))

(declare-fun b!875016 () Bool)

(declare-fun res!594771 () Bool)

(assert (=> b!875016 (=> (not res!594771) (not e!487154))))

(assert (=> b!875016 (= res!594771 (and (= (size!24882 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24883 _keys!868) (size!24882 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(assert (= (and start!74382 res!594769) b!875004))

(assert (= (and b!875004 res!594768) b!875016))

(assert (= (and b!875016 res!594771) b!875002))

(assert (= (and b!875002 res!594767) b!875006))

(assert (= (and b!875006 res!594765) b!875013))

(assert (= (and b!875013 res!594764) b!875010))

(assert (= (and b!875010 res!594766) b!875003))

(assert (= (and b!875003 res!594770) b!875009))

(assert (= (and b!875009 res!594772) b!875007))

(assert (= (and b!875007 c!92407) b!875011))

(assert (= (and b!875007 (not c!92407)) b!875014))

(assert (= (or b!875011 b!875014) bm!38574))

(assert (= (or b!875011 b!875014) bm!38573))

(assert (= (and b!875007 (not res!594763)) b!875015))

(assert (= (and b!875008 condMapEmpty!27650) mapIsEmpty!27650))

(assert (= (and b!875008 (not condMapEmpty!27650)) mapNonEmpty!27650))

(get-info :version)

(assert (= (and mapNonEmpty!27650 ((_ is ValueCellFull!8241) mapValue!27650)) b!875005))

(assert (= (and b!875008 ((_ is ValueCellFull!8241) mapDefault!27650)) b!875012))

(assert (= start!74382 b!875008))

(declare-fun m!815041 () Bool)

(assert (=> b!875003 m!815041))

(declare-fun m!815043 () Bool)

(assert (=> b!875010 m!815043))

(declare-fun m!815045 () Bool)

(assert (=> b!875007 m!815045))

(assert (=> b!875007 m!815045))

(declare-fun m!815047 () Bool)

(assert (=> b!875007 m!815047))

(declare-fun m!815049 () Bool)

(assert (=> b!875007 m!815049))

(declare-fun m!815051 () Bool)

(assert (=> mapNonEmpty!27650 m!815051))

(declare-fun m!815053 () Bool)

(assert (=> b!875011 m!815053))

(declare-fun m!815055 () Bool)

(assert (=> start!74382 m!815055))

(declare-fun m!815057 () Bool)

(assert (=> start!74382 m!815057))

(declare-fun m!815059 () Bool)

(assert (=> bm!38574 m!815059))

(declare-fun m!815061 () Bool)

(assert (=> b!875002 m!815061))

(declare-fun m!815063 () Bool)

(assert (=> bm!38573 m!815063))

(declare-fun m!815065 () Bool)

(assert (=> b!875006 m!815065))

(declare-fun m!815067 () Bool)

(assert (=> b!875004 m!815067))

(declare-fun m!815069 () Bool)

(assert (=> b!875009 m!815069))

(declare-fun m!815071 () Bool)

(assert (=> b!875009 m!815071))

(declare-fun m!815073 () Bool)

(assert (=> b!875009 m!815073))

(check-sat (not b_next!15117) (not start!74382) (not b!875004) tp_is_empty!17361 (not mapNonEmpty!27650) (not b!875006) b_and!24911 (not b!875002) (not b!875007) (not b!875010) (not bm!38574) (not bm!38573) (not b!875011) (not b!875009))
(check-sat b_and!24911 (not b_next!15117))
