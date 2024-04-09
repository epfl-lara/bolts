; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73072 () Bool)

(assert start!73072)

(declare-fun b_free!13959 () Bool)

(declare-fun b_next!13959 () Bool)

(assert (=> start!73072 (= b_free!13959 (not b_next!13959))))

(declare-fun tp!49382 () Bool)

(declare-fun b_and!23095 () Bool)

(assert (=> start!73072 (= tp!49382 b_and!23095)))

(declare-fun b!849041 () Bool)

(declare-fun res!576928 () Bool)

(declare-fun e!473718 () Bool)

(assert (=> b!849041 (=> (not res!576928) (not e!473718))))

(declare-datatypes ((array!48382 0))(
  ( (array!48383 (arr!23218 (Array (_ BitVec 32) (_ BitVec 64))) (size!23659 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48382)

(declare-datatypes ((List!16510 0))(
  ( (Nil!16507) (Cons!16506 (h!17637 (_ BitVec 64)) (t!22923 List!16510)) )
))
(declare-fun arrayNoDuplicates!0 (array!48382 (_ BitVec 32) List!16510) Bool)

(assert (=> b!849041 (= res!576928 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16507))))

(declare-fun b!849042 () Bool)

(declare-fun res!576926 () Bool)

(assert (=> b!849042 (=> (not res!576926) (not e!473718))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!849042 (= res!576926 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23659 _keys!868))))))

(declare-fun mapIsEmpty!25742 () Bool)

(declare-fun mapRes!25742 () Bool)

(assert (=> mapIsEmpty!25742 mapRes!25742))

(declare-fun b!849043 () Bool)

(declare-fun e!473722 () Bool)

(declare-fun e!473720 () Bool)

(assert (=> b!849043 (= e!473722 (and e!473720 mapRes!25742))))

(declare-fun condMapEmpty!25742 () Bool)

(declare-datatypes ((V!26507 0))(
  ( (V!26508 (val!8095 Int)) )
))
(declare-datatypes ((ValueCell!7608 0))(
  ( (ValueCellFull!7608 (v!10516 V!26507)) (EmptyCell!7608) )
))
(declare-datatypes ((array!48384 0))(
  ( (array!48385 (arr!23219 (Array (_ BitVec 32) ValueCell!7608)) (size!23660 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48384)

(declare-fun mapDefault!25742 () ValueCell!7608)

(assert (=> b!849043 (= condMapEmpty!25742 (= (arr!23219 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7608)) mapDefault!25742)))))

(declare-fun b!849044 () Bool)

(declare-fun tp_is_empty!16095 () Bool)

(assert (=> b!849044 (= e!473720 tp_is_empty!16095)))

(declare-fun e!473717 () Bool)

(declare-datatypes ((tuple2!10608 0))(
  ( (tuple2!10609 (_1!5314 (_ BitVec 64)) (_2!5314 V!26507)) )
))
(declare-datatypes ((List!16511 0))(
  ( (Nil!16508) (Cons!16507 (h!17638 tuple2!10608) (t!22924 List!16511)) )
))
(declare-datatypes ((ListLongMap!9391 0))(
  ( (ListLongMap!9392 (toList!4711 List!16511)) )
))
(declare-fun call!37733 () ListLongMap!9391)

(declare-fun v!557 () V!26507)

(declare-fun b!849045 () Bool)

(declare-fun call!37732 () ListLongMap!9391)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2057 (ListLongMap!9391 tuple2!10608) ListLongMap!9391)

(assert (=> b!849045 (= e!473717 (= call!37732 (+!2057 call!37733 (tuple2!10609 k0!854 v!557))))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun bm!37729 () Bool)

(declare-fun minValue!654 () V!26507)

(declare-fun zeroValue!654 () V!26507)

(declare-fun getCurrentListMapNoExtraKeys!2699 (array!48382 array!48384 (_ BitVec 32) (_ BitVec 32) V!26507 V!26507 (_ BitVec 32) Int) ListLongMap!9391)

(assert (=> bm!37729 (= call!37733 (getCurrentListMapNoExtraKeys!2699 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849046 () Bool)

(declare-fun res!576929 () Bool)

(assert (=> b!849046 (=> (not res!576929) (not e!473718))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!849046 (= res!576929 (validMask!0 mask!1196))))

(declare-fun b!849047 () Bool)

(declare-fun e!473723 () Bool)

(declare-fun e!473719 () Bool)

(assert (=> b!849047 (= e!473723 (not e!473719))))

(declare-fun res!576923 () Bool)

(assert (=> b!849047 (=> res!576923 e!473719)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!849047 (= res!576923 (not (validKeyInArray!0 (select (arr!23218 _keys!868) from!1053))))))

(assert (=> b!849047 e!473717))

(declare-fun c!91527 () Bool)

(assert (=> b!849047 (= c!91527 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28968 0))(
  ( (Unit!28969) )
))
(declare-fun lt!382156 () Unit!28968)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!333 (array!48382 array!48384 (_ BitVec 32) (_ BitVec 32) V!26507 V!26507 (_ BitVec 32) (_ BitVec 64) V!26507 (_ BitVec 32) Int) Unit!28968)

(assert (=> b!849047 (= lt!382156 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!333 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!25742 () Bool)

(declare-fun tp!49381 () Bool)

(declare-fun e!473721 () Bool)

(assert (=> mapNonEmpty!25742 (= mapRes!25742 (and tp!49381 e!473721))))

(declare-fun mapRest!25742 () (Array (_ BitVec 32) ValueCell!7608))

(declare-fun mapKey!25742 () (_ BitVec 32))

(declare-fun mapValue!25742 () ValueCell!7608)

(assert (=> mapNonEmpty!25742 (= (arr!23219 _values!688) (store mapRest!25742 mapKey!25742 mapValue!25742))))

(declare-fun b!849049 () Bool)

(assert (=> b!849049 (= e!473717 (= call!37732 call!37733))))

(declare-fun b!849050 () Bool)

(declare-fun res!576930 () Bool)

(assert (=> b!849050 (=> (not res!576930) (not e!473718))))

(assert (=> b!849050 (= res!576930 (and (= (select (arr!23218 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun res!576921 () Bool)

(assert (=> start!73072 (=> (not res!576921) (not e!473718))))

(assert (=> start!73072 (= res!576921 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23659 _keys!868))))))

(assert (=> start!73072 e!473718))

(assert (=> start!73072 tp_is_empty!16095))

(assert (=> start!73072 true))

(assert (=> start!73072 tp!49382))

(declare-fun array_inv!18416 (array!48382) Bool)

(assert (=> start!73072 (array_inv!18416 _keys!868)))

(declare-fun array_inv!18417 (array!48384) Bool)

(assert (=> start!73072 (and (array_inv!18417 _values!688) e!473722)))

(declare-fun b!849048 () Bool)

(assert (=> b!849048 (= e!473718 e!473723)))

(declare-fun res!576927 () Bool)

(assert (=> b!849048 (=> (not res!576927) (not e!473723))))

(assert (=> b!849048 (= res!576927 (= from!1053 i!612))))

(declare-fun lt!382157 () ListLongMap!9391)

(declare-fun lt!382158 () array!48384)

(assert (=> b!849048 (= lt!382157 (getCurrentListMapNoExtraKeys!2699 _keys!868 lt!382158 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!849048 (= lt!382158 (array!48385 (store (arr!23219 _values!688) i!612 (ValueCellFull!7608 v!557)) (size!23660 _values!688)))))

(declare-fun lt!382155 () ListLongMap!9391)

(assert (=> b!849048 (= lt!382155 (getCurrentListMapNoExtraKeys!2699 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!849051 () Bool)

(assert (=> b!849051 (= e!473719 true)))

(declare-fun get!12229 (ValueCell!7608 V!26507) V!26507)

(declare-fun dynLambda!993 (Int (_ BitVec 64)) V!26507)

(assert (=> b!849051 (= lt!382157 (+!2057 (getCurrentListMapNoExtraKeys!2699 _keys!868 lt!382158 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10609 (select (arr!23218 _keys!868) from!1053) (get!12229 (select (arr!23219 lt!382158) from!1053) (dynLambda!993 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!37730 () Bool)

(assert (=> bm!37730 (= call!37732 (getCurrentListMapNoExtraKeys!2699 _keys!868 lt!382158 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849052 () Bool)

(declare-fun res!576922 () Bool)

(assert (=> b!849052 (=> (not res!576922) (not e!473718))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48382 (_ BitVec 32)) Bool)

(assert (=> b!849052 (= res!576922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!849053 () Bool)

(declare-fun res!576925 () Bool)

(assert (=> b!849053 (=> (not res!576925) (not e!473718))))

(assert (=> b!849053 (= res!576925 (validKeyInArray!0 k0!854))))

(declare-fun b!849054 () Bool)

(assert (=> b!849054 (= e!473721 tp_is_empty!16095)))

(declare-fun b!849055 () Bool)

(declare-fun res!576924 () Bool)

(assert (=> b!849055 (=> (not res!576924) (not e!473718))))

(assert (=> b!849055 (= res!576924 (and (= (size!23660 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23659 _keys!868) (size!23660 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(assert (= (and start!73072 res!576921) b!849046))

(assert (= (and b!849046 res!576929) b!849055))

(assert (= (and b!849055 res!576924) b!849052))

(assert (= (and b!849052 res!576922) b!849041))

(assert (= (and b!849041 res!576928) b!849042))

(assert (= (and b!849042 res!576926) b!849053))

(assert (= (and b!849053 res!576925) b!849050))

(assert (= (and b!849050 res!576930) b!849048))

(assert (= (and b!849048 res!576927) b!849047))

(assert (= (and b!849047 c!91527) b!849045))

(assert (= (and b!849047 (not c!91527)) b!849049))

(assert (= (or b!849045 b!849049) bm!37729))

(assert (= (or b!849045 b!849049) bm!37730))

(assert (= (and b!849047 (not res!576923)) b!849051))

(assert (= (and b!849043 condMapEmpty!25742) mapIsEmpty!25742))

(assert (= (and b!849043 (not condMapEmpty!25742)) mapNonEmpty!25742))

(get-info :version)

(assert (= (and mapNonEmpty!25742 ((_ is ValueCellFull!7608) mapValue!25742)) b!849054))

(assert (= (and b!849043 ((_ is ValueCellFull!7608) mapDefault!25742)) b!849044))

(assert (= start!73072 b!849043))

(declare-fun b_lambda!11521 () Bool)

(assert (=> (not b_lambda!11521) (not b!849051)))

(declare-fun t!22922 () Bool)

(declare-fun tb!4269 () Bool)

(assert (=> (and start!73072 (= defaultEntry!696 defaultEntry!696) t!22922) tb!4269))

(declare-fun result!8141 () Bool)

(assert (=> tb!4269 (= result!8141 tp_is_empty!16095)))

(assert (=> b!849051 t!22922))

(declare-fun b_and!23097 () Bool)

(assert (= b_and!23095 (and (=> t!22922 result!8141) b_and!23097)))

(declare-fun m!789857 () Bool)

(assert (=> b!849047 m!789857))

(assert (=> b!849047 m!789857))

(declare-fun m!789859 () Bool)

(assert (=> b!849047 m!789859))

(declare-fun m!789861 () Bool)

(assert (=> b!849047 m!789861))

(declare-fun m!789863 () Bool)

(assert (=> b!849053 m!789863))

(declare-fun m!789865 () Bool)

(assert (=> b!849048 m!789865))

(declare-fun m!789867 () Bool)

(assert (=> b!849048 m!789867))

(declare-fun m!789869 () Bool)

(assert (=> b!849048 m!789869))

(declare-fun m!789871 () Bool)

(assert (=> b!849046 m!789871))

(declare-fun m!789873 () Bool)

(assert (=> start!73072 m!789873))

(declare-fun m!789875 () Bool)

(assert (=> start!73072 m!789875))

(declare-fun m!789877 () Bool)

(assert (=> mapNonEmpty!25742 m!789877))

(declare-fun m!789879 () Bool)

(assert (=> bm!37730 m!789879))

(declare-fun m!789881 () Bool)

(assert (=> b!849045 m!789881))

(assert (=> b!849051 m!789879))

(declare-fun m!789883 () Bool)

(assert (=> b!849051 m!789883))

(declare-fun m!789885 () Bool)

(assert (=> b!849051 m!789885))

(declare-fun m!789887 () Bool)

(assert (=> b!849051 m!789887))

(declare-fun m!789889 () Bool)

(assert (=> b!849051 m!789889))

(assert (=> b!849051 m!789885))

(assert (=> b!849051 m!789879))

(assert (=> b!849051 m!789857))

(assert (=> b!849051 m!789887))

(declare-fun m!789891 () Bool)

(assert (=> bm!37729 m!789891))

(declare-fun m!789893 () Bool)

(assert (=> b!849052 m!789893))

(declare-fun m!789895 () Bool)

(assert (=> b!849041 m!789895))

(declare-fun m!789897 () Bool)

(assert (=> b!849050 m!789897))

(check-sat (not b!849048) (not b!849053) (not b!849052) b_and!23097 tp_is_empty!16095 (not b!849045) (not b!849051) (not b!849041) (not b!849047) (not b_lambda!11521) (not b_next!13959) (not b!849046) (not mapNonEmpty!25742) (not bm!37730) (not bm!37729) (not start!73072))
(check-sat b_and!23097 (not b_next!13959))
