; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73918 () Bool)

(assert start!73918)

(declare-fun b_free!14805 () Bool)

(declare-fun b_next!14805 () Bool)

(assert (=> start!73918 (= b_free!14805 (not b_next!14805))))

(declare-fun tp!51920 () Bool)

(declare-fun b_and!24575 () Bool)

(assert (=> start!73918 (= tp!51920 b_and!24575)))

(declare-fun b!867994 () Bool)

(declare-fun res!589900 () Bool)

(declare-fun e!483490 () Bool)

(assert (=> b!867994 (=> (not res!589900) (not e!483490))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!867994 (= res!589900 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!27011 () Bool)

(declare-fun mapRes!27011 () Bool)

(declare-fun tp!51919 () Bool)

(declare-fun e!483491 () Bool)

(assert (=> mapNonEmpty!27011 (= mapRes!27011 (and tp!51919 e!483491))))

(declare-datatypes ((V!27635 0))(
  ( (V!27636 (val!8518 Int)) )
))
(declare-datatypes ((ValueCell!8031 0))(
  ( (ValueCellFull!8031 (v!10939 V!27635)) (EmptyCell!8031) )
))
(declare-fun mapValue!27011 () ValueCell!8031)

(declare-fun mapRest!27011 () (Array (_ BitVec 32) ValueCell!8031))

(declare-fun mapKey!27011 () (_ BitVec 32))

(declare-datatypes ((array!50020 0))(
  ( (array!50021 (arr!24037 (Array (_ BitVec 32) ValueCell!8031)) (size!24478 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50020)

(assert (=> mapNonEmpty!27011 (= (arr!24037 _values!688) (store mapRest!27011 mapKey!27011 mapValue!27011))))

(declare-fun b!867995 () Bool)

(declare-fun res!589897 () Bool)

(assert (=> b!867995 (=> (not res!589897) (not e!483490))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50022 0))(
  ( (array!50023 (arr!24038 (Array (_ BitVec 32) (_ BitVec 64))) (size!24479 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50022)

(assert (=> b!867995 (= res!589897 (and (= (size!24478 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24479 _keys!868) (size!24478 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!867996 () Bool)

(declare-fun res!589894 () Bool)

(assert (=> b!867996 (=> (not res!589894) (not e!483490))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50022 (_ BitVec 32)) Bool)

(assert (=> b!867996 (= res!589894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!867997 () Bool)

(declare-fun res!589898 () Bool)

(assert (=> b!867997 (=> (not res!589898) (not e!483490))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!867997 (= res!589898 (and (= (select (arr!24038 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!27011 () Bool)

(assert (=> mapIsEmpty!27011 mapRes!27011))

(declare-fun b!867998 () Bool)

(declare-fun res!589896 () Bool)

(assert (=> b!867998 (=> (not res!589896) (not e!483490))))

(declare-datatypes ((List!17166 0))(
  ( (Nil!17163) (Cons!17162 (h!18293 (_ BitVec 64)) (t!24211 List!17166)) )
))
(declare-fun arrayNoDuplicates!0 (array!50022 (_ BitVec 32) List!17166) Bool)

(assert (=> b!867998 (= res!589896 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17163))))

(declare-fun b!867999 () Bool)

(declare-fun tp_is_empty!16941 () Bool)

(assert (=> b!867999 (= e!483491 tp_is_empty!16941)))

(declare-fun b!868000 () Bool)

(declare-fun res!589902 () Bool)

(assert (=> b!868000 (=> (not res!589902) (not e!483490))))

(assert (=> b!868000 (= res!589902 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24479 _keys!868))))))

(declare-fun b!867993 () Bool)

(declare-fun e!483493 () Bool)

(assert (=> b!867993 (= e!483493 (not true))))

(declare-fun v!557 () V!27635)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27635)

(declare-fun zeroValue!654 () V!27635)

(declare-fun lt!394314 () array!50020)

(declare-datatypes ((tuple2!11306 0))(
  ( (tuple2!11307 (_1!5663 (_ BitVec 64)) (_2!5663 V!27635)) )
))
(declare-datatypes ((List!17167 0))(
  ( (Nil!17164) (Cons!17163 (h!18294 tuple2!11306) (t!24212 List!17167)) )
))
(declare-datatypes ((ListLongMap!10089 0))(
  ( (ListLongMap!10090 (toList!5060 List!17167)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3024 (array!50022 array!50020 (_ BitVec 32) (_ BitVec 32) V!27635 V!27635 (_ BitVec 32) Int) ListLongMap!10089)

(declare-fun +!2351 (ListLongMap!10089 tuple2!11306) ListLongMap!10089)

(assert (=> b!867993 (= (getCurrentListMapNoExtraKeys!3024 _keys!868 lt!394314 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2351 (getCurrentListMapNoExtraKeys!3024 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11307 k0!854 v!557)))))

(declare-datatypes ((Unit!29752 0))(
  ( (Unit!29753) )
))
(declare-fun lt!394315 () Unit!29752)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!582 (array!50022 array!50020 (_ BitVec 32) (_ BitVec 32) V!27635 V!27635 (_ BitVec 32) (_ BitVec 64) V!27635 (_ BitVec 32) Int) Unit!29752)

(assert (=> b!867993 (= lt!394315 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!582 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!589901 () Bool)

(assert (=> start!73918 (=> (not res!589901) (not e!483490))))

(assert (=> start!73918 (= res!589901 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24479 _keys!868))))))

(assert (=> start!73918 e!483490))

(assert (=> start!73918 tp_is_empty!16941))

(assert (=> start!73918 true))

(assert (=> start!73918 tp!51920))

(declare-fun array_inv!18970 (array!50022) Bool)

(assert (=> start!73918 (array_inv!18970 _keys!868)))

(declare-fun e!483495 () Bool)

(declare-fun array_inv!18971 (array!50020) Bool)

(assert (=> start!73918 (and (array_inv!18971 _values!688) e!483495)))

(declare-fun b!868001 () Bool)

(declare-fun e!483492 () Bool)

(assert (=> b!868001 (= e!483495 (and e!483492 mapRes!27011))))

(declare-fun condMapEmpty!27011 () Bool)

(declare-fun mapDefault!27011 () ValueCell!8031)

(assert (=> b!868001 (= condMapEmpty!27011 (= (arr!24037 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8031)) mapDefault!27011)))))

(declare-fun b!868002 () Bool)

(assert (=> b!868002 (= e!483492 tp_is_empty!16941)))

(declare-fun b!868003 () Bool)

(declare-fun res!589899 () Bool)

(assert (=> b!868003 (=> (not res!589899) (not e!483490))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!868003 (= res!589899 (validMask!0 mask!1196))))

(declare-fun b!868004 () Bool)

(assert (=> b!868004 (= e!483490 e!483493)))

(declare-fun res!589895 () Bool)

(assert (=> b!868004 (=> (not res!589895) (not e!483493))))

(assert (=> b!868004 (= res!589895 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394316 () ListLongMap!10089)

(assert (=> b!868004 (= lt!394316 (getCurrentListMapNoExtraKeys!3024 _keys!868 lt!394314 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!868004 (= lt!394314 (array!50021 (store (arr!24037 _values!688) i!612 (ValueCellFull!8031 v!557)) (size!24478 _values!688)))))

(declare-fun lt!394317 () ListLongMap!10089)

(assert (=> b!868004 (= lt!394317 (getCurrentListMapNoExtraKeys!3024 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (= (and start!73918 res!589901) b!868003))

(assert (= (and b!868003 res!589899) b!867995))

(assert (= (and b!867995 res!589897) b!867996))

(assert (= (and b!867996 res!589894) b!867998))

(assert (= (and b!867998 res!589896) b!868000))

(assert (= (and b!868000 res!589902) b!867994))

(assert (= (and b!867994 res!589900) b!867997))

(assert (= (and b!867997 res!589898) b!868004))

(assert (= (and b!868004 res!589895) b!867993))

(assert (= (and b!868001 condMapEmpty!27011) mapIsEmpty!27011))

(assert (= (and b!868001 (not condMapEmpty!27011)) mapNonEmpty!27011))

(get-info :version)

(assert (= (and mapNonEmpty!27011 ((_ is ValueCellFull!8031) mapValue!27011)) b!867999))

(assert (= (and b!868001 ((_ is ValueCellFull!8031) mapDefault!27011)) b!868002))

(assert (= start!73918 b!868001))

(declare-fun m!809851 () Bool)

(assert (=> b!867998 m!809851))

(declare-fun m!809853 () Bool)

(assert (=> mapNonEmpty!27011 m!809853))

(declare-fun m!809855 () Bool)

(assert (=> b!867993 m!809855))

(declare-fun m!809857 () Bool)

(assert (=> b!867993 m!809857))

(assert (=> b!867993 m!809857))

(declare-fun m!809859 () Bool)

(assert (=> b!867993 m!809859))

(declare-fun m!809861 () Bool)

(assert (=> b!867993 m!809861))

(declare-fun m!809863 () Bool)

(assert (=> b!868004 m!809863))

(declare-fun m!809865 () Bool)

(assert (=> b!868004 m!809865))

(declare-fun m!809867 () Bool)

(assert (=> b!868004 m!809867))

(declare-fun m!809869 () Bool)

(assert (=> b!867994 m!809869))

(declare-fun m!809871 () Bool)

(assert (=> start!73918 m!809871))

(declare-fun m!809873 () Bool)

(assert (=> start!73918 m!809873))

(declare-fun m!809875 () Bool)

(assert (=> b!867997 m!809875))

(declare-fun m!809877 () Bool)

(assert (=> b!868003 m!809877))

(declare-fun m!809879 () Bool)

(assert (=> b!867996 m!809879))

(check-sat (not b!867993) (not b!867994) (not b_next!14805) (not b!868004) (not b!867998) (not start!73918) (not b!868003) tp_is_empty!16941 (not b!867996) b_and!24575 (not mapNonEmpty!27011))
(check-sat b_and!24575 (not b_next!14805))
