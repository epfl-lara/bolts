; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74376 () Bool)

(assert start!74376)

(declare-fun b_free!15111 () Bool)

(declare-fun b_next!15111 () Bool)

(assert (=> start!74376 (= b_free!15111 (not b_next!15111))))

(declare-fun tp!53008 () Bool)

(declare-fun b_and!24905 () Bool)

(assert (=> start!74376 (= tp!53008 b_and!24905)))

(declare-fun bm!38555 () Bool)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!50822 0))(
  ( (array!50823 (arr!24435 (Array (_ BitVec 32) (_ BitVec 64))) (size!24876 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50822)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((V!28187 0))(
  ( (V!28188 (val!8725 Int)) )
))
(declare-fun minValue!654 () V!28187)

(declare-fun zeroValue!654 () V!28187)

(declare-datatypes ((tuple2!11528 0))(
  ( (tuple2!11529 (_1!5774 (_ BitVec 64)) (_2!5774 V!28187)) )
))
(declare-datatypes ((List!17418 0))(
  ( (Nil!17415) (Cons!17414 (h!18545 tuple2!11528) (t!24467 List!17418)) )
))
(declare-datatypes ((ListLongMap!10311 0))(
  ( (ListLongMap!10312 (toList!5171 List!17418)) )
))
(declare-fun call!38559 () ListLongMap!10311)

(declare-fun defaultEntry!696 () Int)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8238 0))(
  ( (ValueCellFull!8238 (v!11150 V!28187)) (EmptyCell!8238) )
))
(declare-datatypes ((array!50824 0))(
  ( (array!50825 (arr!24436 (Array (_ BitVec 32) ValueCell!8238)) (size!24877 (_ BitVec 32))) )
))
(declare-fun lt!396002 () array!50824)

(declare-fun getCurrentListMapNoExtraKeys!3135 (array!50822 array!50824 (_ BitVec 32) (_ BitVec 32) V!28187 V!28187 (_ BitVec 32) Int) ListLongMap!10311)

(assert (=> bm!38555 (= call!38559 (getCurrentListMapNoExtraKeys!3135 _keys!868 lt!396002 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun v!557 () V!28187)

(declare-fun e!487087 () Bool)

(declare-fun b!874871 () Bool)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun call!38558 () ListLongMap!10311)

(declare-fun +!2417 (ListLongMap!10311 tuple2!11528) ListLongMap!10311)

(assert (=> b!874871 (= e!487087 (= call!38559 (+!2417 call!38558 (tuple2!11529 k0!854 v!557))))))

(declare-fun b!874872 () Bool)

(declare-fun res!594685 () Bool)

(declare-fun e!487086 () Bool)

(assert (=> b!874872 (=> (not res!594685) (not e!487086))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!874872 (= res!594685 (and (= (select (arr!24435 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!874873 () Bool)

(declare-fun res!594682 () Bool)

(assert (=> b!874873 (=> (not res!594682) (not e!487086))))

(declare-datatypes ((List!17419 0))(
  ( (Nil!17416) (Cons!17415 (h!18546 (_ BitVec 64)) (t!24468 List!17419)) )
))
(declare-fun arrayNoDuplicates!0 (array!50822 (_ BitVec 32) List!17419) Bool)

(assert (=> b!874873 (= res!594682 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17416))))

(declare-fun b!874874 () Bool)

(declare-fun res!594677 () Bool)

(assert (=> b!874874 (=> (not res!594677) (not e!487086))))

(declare-fun _values!688 () array!50824)

(assert (=> b!874874 (= res!594677 (and (= (size!24877 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24876 _keys!868) (size!24877 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!874875 () Bool)

(declare-fun e!487084 () Bool)

(declare-fun tp_is_empty!17355 () Bool)

(assert (=> b!874875 (= e!487084 tp_is_empty!17355)))

(declare-fun b!874876 () Bool)

(declare-fun res!594680 () Bool)

(assert (=> b!874876 (=> (not res!594680) (not e!487086))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874876 (= res!594680 (validKeyInArray!0 k0!854))))

(declare-fun b!874877 () Bool)

(declare-fun e!487090 () Bool)

(assert (=> b!874877 (= e!487090 tp_is_empty!17355)))

(declare-fun b!874878 () Bool)

(assert (=> b!874878 (= e!487087 (= call!38559 call!38558))))

(declare-fun b!874879 () Bool)

(declare-fun res!594678 () Bool)

(assert (=> b!874879 (=> (not res!594678) (not e!487086))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874879 (= res!594678 (validMask!0 mask!1196))))

(declare-fun b!874880 () Bool)

(declare-fun e!487085 () Bool)

(declare-fun mapRes!27641 () Bool)

(assert (=> b!874880 (= e!487085 (and e!487090 mapRes!27641))))

(declare-fun condMapEmpty!27641 () Bool)

(declare-fun mapDefault!27641 () ValueCell!8238)

(assert (=> b!874880 (= condMapEmpty!27641 (= (arr!24436 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8238)) mapDefault!27641)))))

(declare-fun bm!38556 () Bool)

(assert (=> bm!38556 (= call!38558 (getCurrentListMapNoExtraKeys!3135 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!594683 () Bool)

(assert (=> start!74376 (=> (not res!594683) (not e!487086))))

(assert (=> start!74376 (= res!594683 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24876 _keys!868))))))

(assert (=> start!74376 e!487086))

(assert (=> start!74376 tp_is_empty!17355))

(assert (=> start!74376 true))

(assert (=> start!74376 tp!53008))

(declare-fun array_inv!19248 (array!50822) Bool)

(assert (=> start!74376 (array_inv!19248 _keys!868)))

(declare-fun array_inv!19249 (array!50824) Bool)

(assert (=> start!74376 (and (array_inv!19249 _values!688) e!487085)))

(declare-fun mapIsEmpty!27641 () Bool)

(assert (=> mapIsEmpty!27641 mapRes!27641))

(declare-fun b!874881 () Bool)

(declare-fun e!487088 () Bool)

(assert (=> b!874881 (= e!487086 e!487088)))

(declare-fun res!594681 () Bool)

(assert (=> b!874881 (=> (not res!594681) (not e!487088))))

(assert (=> b!874881 (= res!594681 (= from!1053 i!612))))

(declare-fun lt!396001 () ListLongMap!10311)

(assert (=> b!874881 (= lt!396001 (getCurrentListMapNoExtraKeys!3135 _keys!868 lt!396002 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!874881 (= lt!396002 (array!50825 (store (arr!24436 _values!688) i!612 (ValueCellFull!8238 v!557)) (size!24877 _values!688)))))

(declare-fun lt!396004 () ListLongMap!10311)

(assert (=> b!874881 (= lt!396004 (getCurrentListMapNoExtraKeys!3135 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!874882 () Bool)

(assert (=> b!874882 (= e!487088 (not (bvslt from!1053 (size!24876 _keys!868))))))

(assert (=> b!874882 e!487087))

(declare-fun c!92398 () Bool)

(assert (=> b!874882 (= c!92398 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29888 0))(
  ( (Unit!29889) )
))
(declare-fun lt!396003 () Unit!29888)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!648 (array!50822 array!50824 (_ BitVec 32) (_ BitVec 32) V!28187 V!28187 (_ BitVec 32) (_ BitVec 64) V!28187 (_ BitVec 32) Int) Unit!29888)

(assert (=> b!874882 (= lt!396003 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!648 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!874883 () Bool)

(declare-fun res!594684 () Bool)

(assert (=> b!874883 (=> (not res!594684) (not e!487086))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50822 (_ BitVec 32)) Bool)

(assert (=> b!874883 (= res!594684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!874884 () Bool)

(declare-fun res!594679 () Bool)

(assert (=> b!874884 (=> (not res!594679) (not e!487086))))

(assert (=> b!874884 (= res!594679 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24876 _keys!868))))))

(declare-fun mapNonEmpty!27641 () Bool)

(declare-fun tp!53009 () Bool)

(assert (=> mapNonEmpty!27641 (= mapRes!27641 (and tp!53009 e!487084))))

(declare-fun mapValue!27641 () ValueCell!8238)

(declare-fun mapKey!27641 () (_ BitVec 32))

(declare-fun mapRest!27641 () (Array (_ BitVec 32) ValueCell!8238))

(assert (=> mapNonEmpty!27641 (= (arr!24436 _values!688) (store mapRest!27641 mapKey!27641 mapValue!27641))))

(assert (= (and start!74376 res!594683) b!874879))

(assert (= (and b!874879 res!594678) b!874874))

(assert (= (and b!874874 res!594677) b!874883))

(assert (= (and b!874883 res!594684) b!874873))

(assert (= (and b!874873 res!594682) b!874884))

(assert (= (and b!874884 res!594679) b!874876))

(assert (= (and b!874876 res!594680) b!874872))

(assert (= (and b!874872 res!594685) b!874881))

(assert (= (and b!874881 res!594681) b!874882))

(assert (= (and b!874882 c!92398) b!874871))

(assert (= (and b!874882 (not c!92398)) b!874878))

(assert (= (or b!874871 b!874878) bm!38555))

(assert (= (or b!874871 b!874878) bm!38556))

(assert (= (and b!874880 condMapEmpty!27641) mapIsEmpty!27641))

(assert (= (and b!874880 (not condMapEmpty!27641)) mapNonEmpty!27641))

(get-info :version)

(assert (= (and mapNonEmpty!27641 ((_ is ValueCellFull!8238) mapValue!27641)) b!874875))

(assert (= (and b!874880 ((_ is ValueCellFull!8238) mapDefault!27641)) b!874877))

(assert (= start!74376 b!874880))

(declare-fun m!814947 () Bool)

(assert (=> b!874881 m!814947))

(declare-fun m!814949 () Bool)

(assert (=> b!874881 m!814949))

(declare-fun m!814951 () Bool)

(assert (=> b!874881 m!814951))

(declare-fun m!814953 () Bool)

(assert (=> b!874882 m!814953))

(declare-fun m!814955 () Bool)

(assert (=> b!874876 m!814955))

(declare-fun m!814957 () Bool)

(assert (=> b!874871 m!814957))

(declare-fun m!814959 () Bool)

(assert (=> mapNonEmpty!27641 m!814959))

(declare-fun m!814961 () Bool)

(assert (=> b!874873 m!814961))

(declare-fun m!814963 () Bool)

(assert (=> start!74376 m!814963))

(declare-fun m!814965 () Bool)

(assert (=> start!74376 m!814965))

(declare-fun m!814967 () Bool)

(assert (=> b!874883 m!814967))

(declare-fun m!814969 () Bool)

(assert (=> b!874872 m!814969))

(declare-fun m!814971 () Bool)

(assert (=> bm!38556 m!814971))

(declare-fun m!814973 () Bool)

(assert (=> b!874879 m!814973))

(declare-fun m!814975 () Bool)

(assert (=> bm!38555 m!814975))

(check-sat (not bm!38556) (not b!874881) (not b!874883) (not b!874882) tp_is_empty!17355 (not b!874871) (not b!874873) (not b_next!15111) (not start!74376) (not b!874879) (not mapNonEmpty!27641) (not bm!38555) b_and!24905 (not b!874876))
(check-sat b_and!24905 (not b_next!15111))
