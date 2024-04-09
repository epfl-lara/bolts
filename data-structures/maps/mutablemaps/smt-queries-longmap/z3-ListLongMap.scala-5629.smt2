; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73588 () Bool)

(assert start!73588)

(declare-fun b_free!14475 () Bool)

(declare-fun b_next!14475 () Bool)

(assert (=> start!73588 (= b_free!14475 (not b_next!14475))))

(declare-fun tp!50930 () Bool)

(declare-fun b_and!23947 () Bool)

(assert (=> start!73588 (= tp!50930 b_and!23947)))

(declare-fun b!860034 () Bool)

(declare-fun res!584557 () Bool)

(declare-fun e!479281 () Bool)

(assert (=> b!860034 (=> (not res!584557) (not e!479281))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!860034 (= res!584557 (validMask!0 mask!1196))))

(declare-fun b!860035 () Bool)

(declare-fun res!584556 () Bool)

(assert (=> b!860035 (=> (not res!584556) (not e!479281))))

(declare-datatypes ((array!49380 0))(
  ( (array!49381 (arr!23717 (Array (_ BitVec 32) (_ BitVec 64))) (size!24158 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49380)

(declare-datatypes ((List!16898 0))(
  ( (Nil!16895) (Cons!16894 (h!18025 (_ BitVec 64)) (t!23647 List!16898)) )
))
(declare-fun arrayNoDuplicates!0 (array!49380 (_ BitVec 32) List!16898) Bool)

(assert (=> b!860035 (= res!584556 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16895))))

(declare-fun b!860037 () Bool)

(declare-fun res!584549 () Bool)

(assert (=> b!860037 (=> (not res!584549) (not e!479281))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49380 (_ BitVec 32)) Bool)

(assert (=> b!860037 (= res!584549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!860038 () Bool)

(declare-fun e!479278 () Bool)

(declare-fun e!479276 () Bool)

(assert (=> b!860038 (= e!479278 e!479276)))

(declare-fun res!584558 () Bool)

(assert (=> b!860038 (=> res!584558 e!479276)))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!860038 (= res!584558 (or (bvsge (size!24158 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24158 _keys!868)) (bvsge from!1053 (size!24158 _keys!868))))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!49380 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!860038 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29288 0))(
  ( (Unit!29289) )
))
(declare-fun lt!387630 () Unit!29288)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49380 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29288)

(assert (=> b!860038 (= lt!387630 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!860038 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16895)))

(declare-fun lt!387632 () Unit!29288)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49380 (_ BitVec 32) (_ BitVec 32)) Unit!29288)

(assert (=> b!860038 (= lt!387632 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun mapIsEmpty!26516 () Bool)

(declare-fun mapRes!26516 () Bool)

(assert (=> mapIsEmpty!26516 mapRes!26516))

(declare-fun b!860039 () Bool)

(declare-fun res!584551 () Bool)

(assert (=> b!860039 (=> (not res!584551) (not e!479281))))

(assert (=> b!860039 (= res!584551 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24158 _keys!868))))))

(declare-fun b!860040 () Bool)

(declare-fun res!584547 () Bool)

(assert (=> b!860040 (=> res!584547 e!479276)))

(declare-fun contains!4228 (List!16898 (_ BitVec 64)) Bool)

(assert (=> b!860040 (= res!584547 (contains!4228 Nil!16895 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!860041 () Bool)

(declare-fun res!584555 () Bool)

(assert (=> b!860041 (=> (not res!584555) (not e!479281))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!860041 (= res!584555 (validKeyInArray!0 k0!854))))

(declare-fun b!860042 () Bool)

(assert (=> b!860042 (= e!479276 true)))

(declare-fun lt!387639 () Bool)

(assert (=> b!860042 (= lt!387639 (contains!4228 Nil!16895 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!26516 () Bool)

(declare-fun tp!50929 () Bool)

(declare-fun e!479282 () Bool)

(assert (=> mapNonEmpty!26516 (= mapRes!26516 (and tp!50929 e!479282))))

(declare-fun mapKey!26516 () (_ BitVec 32))

(declare-datatypes ((V!27195 0))(
  ( (V!27196 (val!8353 Int)) )
))
(declare-datatypes ((ValueCell!7866 0))(
  ( (ValueCellFull!7866 (v!10774 V!27195)) (EmptyCell!7866) )
))
(declare-fun mapValue!26516 () ValueCell!7866)

(declare-fun mapRest!26516 () (Array (_ BitVec 32) ValueCell!7866))

(declare-datatypes ((array!49382 0))(
  ( (array!49383 (arr!23718 (Array (_ BitVec 32) ValueCell!7866)) (size!24159 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49382)

(assert (=> mapNonEmpty!26516 (= (arr!23718 _values!688) (store mapRest!26516 mapKey!26516 mapValue!26516))))

(declare-fun b!860043 () Bool)

(declare-fun e!479283 () Bool)

(assert (=> b!860043 (= e!479281 e!479283)))

(declare-fun res!584550 () Bool)

(assert (=> b!860043 (=> (not res!584550) (not e!479283))))

(assert (=> b!860043 (= res!584550 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!11028 0))(
  ( (tuple2!11029 (_1!5524 (_ BitVec 64)) (_2!5524 V!27195)) )
))
(declare-datatypes ((List!16899 0))(
  ( (Nil!16896) (Cons!16895 (h!18026 tuple2!11028) (t!23648 List!16899)) )
))
(declare-datatypes ((ListLongMap!9811 0))(
  ( (ListLongMap!9812 (toList!4921 List!16899)) )
))
(declare-fun lt!387638 () ListLongMap!9811)

(declare-fun lt!387631 () array!49382)

(declare-fun minValue!654 () V!27195)

(declare-fun zeroValue!654 () V!27195)

(declare-fun getCurrentListMapNoExtraKeys!2901 (array!49380 array!49382 (_ BitVec 32) (_ BitVec 32) V!27195 V!27195 (_ BitVec 32) Int) ListLongMap!9811)

(assert (=> b!860043 (= lt!387638 (getCurrentListMapNoExtraKeys!2901 _keys!868 lt!387631 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27195)

(assert (=> b!860043 (= lt!387631 (array!49383 (store (arr!23718 _values!688) i!612 (ValueCellFull!7866 v!557)) (size!24159 _values!688)))))

(declare-fun lt!387636 () ListLongMap!9811)

(assert (=> b!860043 (= lt!387636 (getCurrentListMapNoExtraKeys!2901 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!584559 () Bool)

(assert (=> start!73588 (=> (not res!584559) (not e!479281))))

(assert (=> start!73588 (= res!584559 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24158 _keys!868))))))

(assert (=> start!73588 e!479281))

(declare-fun tp_is_empty!16611 () Bool)

(assert (=> start!73588 tp_is_empty!16611))

(assert (=> start!73588 true))

(assert (=> start!73588 tp!50930))

(declare-fun array_inv!18748 (array!49380) Bool)

(assert (=> start!73588 (array_inv!18748 _keys!868)))

(declare-fun e!479275 () Bool)

(declare-fun array_inv!18749 (array!49382) Bool)

(assert (=> start!73588 (and (array_inv!18749 _values!688) e!479275)))

(declare-fun b!860036 () Bool)

(declare-fun res!584554 () Bool)

(assert (=> b!860036 (=> res!584554 e!479276)))

(declare-fun noDuplicate!1309 (List!16898) Bool)

(assert (=> b!860036 (= res!584554 (not (noDuplicate!1309 Nil!16895)))))

(declare-fun b!860044 () Bool)

(declare-fun e!479277 () Bool)

(assert (=> b!860044 (= e!479283 (not e!479277))))

(declare-fun res!584546 () Bool)

(assert (=> b!860044 (=> res!584546 e!479277)))

(assert (=> b!860044 (= res!584546 (not (validKeyInArray!0 (select (arr!23717 _keys!868) from!1053))))))

(declare-fun lt!387637 () ListLongMap!9811)

(declare-fun lt!387634 () ListLongMap!9811)

(assert (=> b!860044 (= lt!387637 lt!387634)))

(declare-fun lt!387635 () ListLongMap!9811)

(declare-fun +!2222 (ListLongMap!9811 tuple2!11028) ListLongMap!9811)

(assert (=> b!860044 (= lt!387634 (+!2222 lt!387635 (tuple2!11029 k0!854 v!557)))))

(assert (=> b!860044 (= lt!387637 (getCurrentListMapNoExtraKeys!2901 _keys!868 lt!387631 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!860044 (= lt!387635 (getCurrentListMapNoExtraKeys!2901 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!387633 () Unit!29288)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!478 (array!49380 array!49382 (_ BitVec 32) (_ BitVec 32) V!27195 V!27195 (_ BitVec 32) (_ BitVec 64) V!27195 (_ BitVec 32) Int) Unit!29288)

(assert (=> b!860044 (= lt!387633 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!478 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!860045 () Bool)

(assert (=> b!860045 (= e!479277 e!479278)))

(declare-fun res!584552 () Bool)

(assert (=> b!860045 (=> res!584552 e!479278)))

(assert (=> b!860045 (= res!584552 (not (= (select (arr!23717 _keys!868) from!1053) k0!854)))))

(declare-fun get!12514 (ValueCell!7866 V!27195) V!27195)

(declare-fun dynLambda!1106 (Int (_ BitVec 64)) V!27195)

(assert (=> b!860045 (= lt!387638 (+!2222 lt!387634 (tuple2!11029 (select (arr!23717 _keys!868) from!1053) (get!12514 (select (arr!23718 _values!688) from!1053) (dynLambda!1106 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!860046 () Bool)

(declare-fun res!584553 () Bool)

(assert (=> b!860046 (=> (not res!584553) (not e!479281))))

(assert (=> b!860046 (= res!584553 (and (= (select (arr!23717 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!860047 () Bool)

(declare-fun e!479280 () Bool)

(assert (=> b!860047 (= e!479280 tp_is_empty!16611)))

(declare-fun b!860048 () Bool)

(declare-fun res!584548 () Bool)

(assert (=> b!860048 (=> (not res!584548) (not e!479281))))

(assert (=> b!860048 (= res!584548 (and (= (size!24159 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24158 _keys!868) (size!24159 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!860049 () Bool)

(assert (=> b!860049 (= e!479282 tp_is_empty!16611)))

(declare-fun b!860050 () Bool)

(assert (=> b!860050 (= e!479275 (and e!479280 mapRes!26516))))

(declare-fun condMapEmpty!26516 () Bool)

(declare-fun mapDefault!26516 () ValueCell!7866)

(assert (=> b!860050 (= condMapEmpty!26516 (= (arr!23718 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7866)) mapDefault!26516)))))

(assert (= (and start!73588 res!584559) b!860034))

(assert (= (and b!860034 res!584557) b!860048))

(assert (= (and b!860048 res!584548) b!860037))

(assert (= (and b!860037 res!584549) b!860035))

(assert (= (and b!860035 res!584556) b!860039))

(assert (= (and b!860039 res!584551) b!860041))

(assert (= (and b!860041 res!584555) b!860046))

(assert (= (and b!860046 res!584553) b!860043))

(assert (= (and b!860043 res!584550) b!860044))

(assert (= (and b!860044 (not res!584546)) b!860045))

(assert (= (and b!860045 (not res!584552)) b!860038))

(assert (= (and b!860038 (not res!584558)) b!860036))

(assert (= (and b!860036 (not res!584554)) b!860040))

(assert (= (and b!860040 (not res!584547)) b!860042))

(assert (= (and b!860050 condMapEmpty!26516) mapIsEmpty!26516))

(assert (= (and b!860050 (not condMapEmpty!26516)) mapNonEmpty!26516))

(get-info :version)

(assert (= (and mapNonEmpty!26516 ((_ is ValueCellFull!7866) mapValue!26516)) b!860049))

(assert (= (and b!860050 ((_ is ValueCellFull!7866) mapDefault!26516)) b!860047))

(assert (= start!73588 b!860050))

(declare-fun b_lambda!11857 () Bool)

(assert (=> (not b_lambda!11857) (not b!860045)))

(declare-fun t!23646 () Bool)

(declare-fun tb!4605 () Bool)

(assert (=> (and start!73588 (= defaultEntry!696 defaultEntry!696) t!23646) tb!4605))

(declare-fun result!8813 () Bool)

(assert (=> tb!4605 (= result!8813 tp_is_empty!16611)))

(assert (=> b!860045 t!23646))

(declare-fun b_and!23949 () Bool)

(assert (= b_and!23947 (and (=> t!23646 result!8813) b_and!23949)))

(declare-fun m!800931 () Bool)

(assert (=> b!860036 m!800931))

(declare-fun m!800933 () Bool)

(assert (=> b!860044 m!800933))

(declare-fun m!800935 () Bool)

(assert (=> b!860044 m!800935))

(declare-fun m!800937 () Bool)

(assert (=> b!860044 m!800937))

(declare-fun m!800939 () Bool)

(assert (=> b!860044 m!800939))

(declare-fun m!800941 () Bool)

(assert (=> b!860044 m!800941))

(assert (=> b!860044 m!800939))

(declare-fun m!800943 () Bool)

(assert (=> b!860044 m!800943))

(declare-fun m!800945 () Bool)

(assert (=> b!860038 m!800945))

(declare-fun m!800947 () Bool)

(assert (=> b!860038 m!800947))

(declare-fun m!800949 () Bool)

(assert (=> b!860038 m!800949))

(declare-fun m!800951 () Bool)

(assert (=> b!860038 m!800951))

(declare-fun m!800953 () Bool)

(assert (=> b!860040 m!800953))

(declare-fun m!800955 () Bool)

(assert (=> mapNonEmpty!26516 m!800955))

(declare-fun m!800957 () Bool)

(assert (=> b!860043 m!800957))

(declare-fun m!800959 () Bool)

(assert (=> b!860043 m!800959))

(declare-fun m!800961 () Bool)

(assert (=> b!860043 m!800961))

(declare-fun m!800963 () Bool)

(assert (=> b!860045 m!800963))

(declare-fun m!800965 () Bool)

(assert (=> b!860045 m!800965))

(declare-fun m!800967 () Bool)

(assert (=> b!860045 m!800967))

(declare-fun m!800969 () Bool)

(assert (=> b!860045 m!800969))

(assert (=> b!860045 m!800965))

(assert (=> b!860045 m!800939))

(assert (=> b!860045 m!800967))

(declare-fun m!800971 () Bool)

(assert (=> b!860037 m!800971))

(declare-fun m!800973 () Bool)

(assert (=> b!860034 m!800973))

(declare-fun m!800975 () Bool)

(assert (=> b!860046 m!800975))

(declare-fun m!800977 () Bool)

(assert (=> b!860041 m!800977))

(declare-fun m!800979 () Bool)

(assert (=> b!860042 m!800979))

(declare-fun m!800981 () Bool)

(assert (=> start!73588 m!800981))

(declare-fun m!800983 () Bool)

(assert (=> start!73588 m!800983))

(declare-fun m!800985 () Bool)

(assert (=> b!860035 m!800985))

(check-sat (not b!860045) (not b!860042) (not b!860036) (not b!860038) (not mapNonEmpty!26516) (not b_lambda!11857) (not b!860041) (not b!860040) (not b!860044) (not b!860037) (not start!73588) (not b!860043) (not b!860035) (not b_next!14475) (not b!860034) b_and!23949 tp_is_empty!16611)
(check-sat b_and!23949 (not b_next!14475))
