; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73924 () Bool)

(assert start!73924)

(declare-fun b_free!14811 () Bool)

(declare-fun b_next!14811 () Bool)

(assert (=> start!73924 (= b_free!14811 (not b_next!14811))))

(declare-fun tp!51938 () Bool)

(declare-fun b_and!24581 () Bool)

(assert (=> start!73924 (= tp!51938 b_and!24581)))

(declare-fun b!868101 () Bool)

(declare-fun e!483549 () Bool)

(assert (=> b!868101 (= e!483549 (not true))))

(declare-datatypes ((V!27643 0))(
  ( (V!27644 (val!8521 Int)) )
))
(declare-fun v!557 () V!27643)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!50032 0))(
  ( (array!50033 (arr!24043 (Array (_ BitVec 32) (_ BitVec 64))) (size!24484 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50032)

(declare-datatypes ((ValueCell!8034 0))(
  ( (ValueCellFull!8034 (v!10942 V!27643)) (EmptyCell!8034) )
))
(declare-datatypes ((array!50034 0))(
  ( (array!50035 (arr!24044 (Array (_ BitVec 32) ValueCell!8034)) (size!24485 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50034)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!27643)

(declare-fun zeroValue!654 () V!27643)

(declare-fun lt!394350 () array!50034)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11310 0))(
  ( (tuple2!11311 (_1!5665 (_ BitVec 64)) (_2!5665 V!27643)) )
))
(declare-datatypes ((List!17170 0))(
  ( (Nil!17167) (Cons!17166 (h!18297 tuple2!11310) (t!24215 List!17170)) )
))
(declare-datatypes ((ListLongMap!10093 0))(
  ( (ListLongMap!10094 (toList!5062 List!17170)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3026 (array!50032 array!50034 (_ BitVec 32) (_ BitVec 32) V!27643 V!27643 (_ BitVec 32) Int) ListLongMap!10093)

(declare-fun +!2352 (ListLongMap!10093 tuple2!11310) ListLongMap!10093)

(assert (=> b!868101 (= (getCurrentListMapNoExtraKeys!3026 _keys!868 lt!394350 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2352 (getCurrentListMapNoExtraKeys!3026 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11311 k0!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29754 0))(
  ( (Unit!29755) )
))
(declare-fun lt!394351 () Unit!29754)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!583 (array!50032 array!50034 (_ BitVec 32) (_ BitVec 32) V!27643 V!27643 (_ BitVec 32) (_ BitVec 64) V!27643 (_ BitVec 32) Int) Unit!29754)

(assert (=> b!868101 (= lt!394351 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!583 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!868102 () Bool)

(declare-fun res!589975 () Bool)

(declare-fun e!483548 () Bool)

(assert (=> b!868102 (=> (not res!589975) (not e!483548))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50032 (_ BitVec 32)) Bool)

(assert (=> b!868102 (= res!589975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!868103 () Bool)

(declare-fun res!589980 () Bool)

(assert (=> b!868103 (=> (not res!589980) (not e!483548))))

(declare-datatypes ((List!17171 0))(
  ( (Nil!17168) (Cons!17167 (h!18298 (_ BitVec 64)) (t!24216 List!17171)) )
))
(declare-fun arrayNoDuplicates!0 (array!50032 (_ BitVec 32) List!17171) Bool)

(assert (=> b!868103 (= res!589980 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17168))))

(declare-fun b!868104 () Bool)

(declare-fun e!483547 () Bool)

(declare-fun tp_is_empty!16947 () Bool)

(assert (=> b!868104 (= e!483547 tp_is_empty!16947)))

(declare-fun b!868105 () Bool)

(declare-fun res!589982 () Bool)

(assert (=> b!868105 (=> (not res!589982) (not e!483548))))

(assert (=> b!868105 (= res!589982 (and (= (select (arr!24043 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!868106 () Bool)

(assert (=> b!868106 (= e!483548 e!483549)))

(declare-fun res!589977 () Bool)

(assert (=> b!868106 (=> (not res!589977) (not e!483549))))

(assert (=> b!868106 (= res!589977 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394353 () ListLongMap!10093)

(assert (=> b!868106 (= lt!394353 (getCurrentListMapNoExtraKeys!3026 _keys!868 lt!394350 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!868106 (= lt!394350 (array!50035 (store (arr!24044 _values!688) i!612 (ValueCellFull!8034 v!557)) (size!24485 _values!688)))))

(declare-fun lt!394352 () ListLongMap!10093)

(assert (=> b!868106 (= lt!394352 (getCurrentListMapNoExtraKeys!3026 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!868107 () Bool)

(declare-fun res!589983 () Bool)

(assert (=> b!868107 (=> (not res!589983) (not e!483548))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!868107 (= res!589983 (validMask!0 mask!1196))))

(declare-fun b!868108 () Bool)

(declare-fun res!589976 () Bool)

(assert (=> b!868108 (=> (not res!589976) (not e!483548))))

(assert (=> b!868108 (= res!589976 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24484 _keys!868))))))

(declare-fun res!589981 () Bool)

(assert (=> start!73924 (=> (not res!589981) (not e!483548))))

(assert (=> start!73924 (= res!589981 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24484 _keys!868))))))

(assert (=> start!73924 e!483548))

(assert (=> start!73924 tp_is_empty!16947))

(assert (=> start!73924 true))

(assert (=> start!73924 tp!51938))

(declare-fun array_inv!18972 (array!50032) Bool)

(assert (=> start!73924 (array_inv!18972 _keys!868)))

(declare-fun e!483545 () Bool)

(declare-fun array_inv!18973 (array!50034) Bool)

(assert (=> start!73924 (and (array_inv!18973 _values!688) e!483545)))

(declare-fun b!868109 () Bool)

(declare-fun res!589978 () Bool)

(assert (=> b!868109 (=> (not res!589978) (not e!483548))))

(assert (=> b!868109 (= res!589978 (and (= (size!24485 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24484 _keys!868) (size!24485 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!868110 () Bool)

(declare-fun e!483544 () Bool)

(declare-fun mapRes!27020 () Bool)

(assert (=> b!868110 (= e!483545 (and e!483544 mapRes!27020))))

(declare-fun condMapEmpty!27020 () Bool)

(declare-fun mapDefault!27020 () ValueCell!8034)

(assert (=> b!868110 (= condMapEmpty!27020 (= (arr!24044 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8034)) mapDefault!27020)))))

(declare-fun b!868111 () Bool)

(assert (=> b!868111 (= e!483544 tp_is_empty!16947)))

(declare-fun b!868112 () Bool)

(declare-fun res!589979 () Bool)

(assert (=> b!868112 (=> (not res!589979) (not e!483548))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!868112 (= res!589979 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!27020 () Bool)

(declare-fun tp!51937 () Bool)

(assert (=> mapNonEmpty!27020 (= mapRes!27020 (and tp!51937 e!483547))))

(declare-fun mapRest!27020 () (Array (_ BitVec 32) ValueCell!8034))

(declare-fun mapKey!27020 () (_ BitVec 32))

(declare-fun mapValue!27020 () ValueCell!8034)

(assert (=> mapNonEmpty!27020 (= (arr!24044 _values!688) (store mapRest!27020 mapKey!27020 mapValue!27020))))

(declare-fun mapIsEmpty!27020 () Bool)

(assert (=> mapIsEmpty!27020 mapRes!27020))

(assert (= (and start!73924 res!589981) b!868107))

(assert (= (and b!868107 res!589983) b!868109))

(assert (= (and b!868109 res!589978) b!868102))

(assert (= (and b!868102 res!589975) b!868103))

(assert (= (and b!868103 res!589980) b!868108))

(assert (= (and b!868108 res!589976) b!868112))

(assert (= (and b!868112 res!589979) b!868105))

(assert (= (and b!868105 res!589982) b!868106))

(assert (= (and b!868106 res!589977) b!868101))

(assert (= (and b!868110 condMapEmpty!27020) mapIsEmpty!27020))

(assert (= (and b!868110 (not condMapEmpty!27020)) mapNonEmpty!27020))

(get-info :version)

(assert (= (and mapNonEmpty!27020 ((_ is ValueCellFull!8034) mapValue!27020)) b!868104))

(assert (= (and b!868110 ((_ is ValueCellFull!8034) mapDefault!27020)) b!868111))

(assert (= start!73924 b!868110))

(declare-fun m!809941 () Bool)

(assert (=> b!868101 m!809941))

(declare-fun m!809943 () Bool)

(assert (=> b!868101 m!809943))

(assert (=> b!868101 m!809943))

(declare-fun m!809945 () Bool)

(assert (=> b!868101 m!809945))

(declare-fun m!809947 () Bool)

(assert (=> b!868101 m!809947))

(declare-fun m!809949 () Bool)

(assert (=> b!868105 m!809949))

(declare-fun m!809951 () Bool)

(assert (=> start!73924 m!809951))

(declare-fun m!809953 () Bool)

(assert (=> start!73924 m!809953))

(declare-fun m!809955 () Bool)

(assert (=> b!868112 m!809955))

(declare-fun m!809957 () Bool)

(assert (=> mapNonEmpty!27020 m!809957))

(declare-fun m!809959 () Bool)

(assert (=> b!868106 m!809959))

(declare-fun m!809961 () Bool)

(assert (=> b!868106 m!809961))

(declare-fun m!809963 () Bool)

(assert (=> b!868106 m!809963))

(declare-fun m!809965 () Bool)

(assert (=> b!868107 m!809965))

(declare-fun m!809967 () Bool)

(assert (=> b!868103 m!809967))

(declare-fun m!809969 () Bool)

(assert (=> b!868102 m!809969))

(check-sat tp_is_empty!16947 (not b!868103) (not mapNonEmpty!27020) (not b_next!14811) b_and!24581 (not b!868106) (not b!868101) (not b!868102) (not b!868112) (not start!73924) (not b!868107))
(check-sat b_and!24581 (not b_next!14811))
