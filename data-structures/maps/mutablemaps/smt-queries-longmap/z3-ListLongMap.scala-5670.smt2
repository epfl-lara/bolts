; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73834 () Bool)

(assert start!73834)

(declare-fun b_free!14721 () Bool)

(declare-fun b_next!14721 () Bool)

(assert (=> start!73834 (= b_free!14721 (not b_next!14721))))

(declare-fun tp!51668 () Bool)

(declare-fun b_and!24439 () Bool)

(assert (=> start!73834 (= tp!51668 b_and!24439)))

(declare-fun b!866125 () Bool)

(declare-fun res!588608 () Bool)

(declare-fun e!482506 () Bool)

(assert (=> b!866125 (=> (not res!588608) (not e!482506))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!866125 (= res!588608 (validKeyInArray!0 k0!854))))

(declare-fun b!866126 () Bool)

(declare-fun e!482510 () Bool)

(declare-fun tp_is_empty!16857 () Bool)

(assert (=> b!866126 (= e!482510 tp_is_empty!16857)))

(declare-fun res!588612 () Bool)

(assert (=> start!73834 (=> (not res!588612) (not e!482506))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49856 0))(
  ( (array!49857 (arr!23955 (Array (_ BitVec 32) (_ BitVec 64))) (size!24396 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49856)

(assert (=> start!73834 (= res!588612 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24396 _keys!868))))))

(assert (=> start!73834 e!482506))

(assert (=> start!73834 tp_is_empty!16857))

(assert (=> start!73834 true))

(assert (=> start!73834 tp!51668))

(declare-fun array_inv!18918 (array!49856) Bool)

(assert (=> start!73834 (array_inv!18918 _keys!868)))

(declare-datatypes ((V!27523 0))(
  ( (V!27524 (val!8476 Int)) )
))
(declare-datatypes ((ValueCell!7989 0))(
  ( (ValueCellFull!7989 (v!10897 V!27523)) (EmptyCell!7989) )
))
(declare-datatypes ((array!49858 0))(
  ( (array!49859 (arr!23956 (Array (_ BitVec 32) ValueCell!7989)) (size!24397 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49858)

(declare-fun e!482512 () Bool)

(declare-fun array_inv!18919 (array!49858) Bool)

(assert (=> start!73834 (and (array_inv!18919 _values!688) e!482512)))

(declare-fun b!866127 () Bool)

(declare-fun e!482513 () Bool)

(assert (=> b!866127 (= e!482513 true)))

(declare-datatypes ((tuple2!11242 0))(
  ( (tuple2!11243 (_1!5631 (_ BitVec 64)) (_2!5631 V!27523)) )
))
(declare-fun lt!392912 () tuple2!11242)

(declare-datatypes ((List!17106 0))(
  ( (Nil!17103) (Cons!17102 (h!18233 tuple2!11242) (t!24101 List!17106)) )
))
(declare-datatypes ((ListLongMap!10025 0))(
  ( (ListLongMap!10026 (toList!5028 List!17106)) )
))
(declare-fun lt!392903 () ListLongMap!10025)

(declare-fun lt!392906 () tuple2!11242)

(declare-fun lt!392909 () ListLongMap!10025)

(declare-fun +!2324 (ListLongMap!10025 tuple2!11242) ListLongMap!10025)

(assert (=> b!866127 (= lt!392903 (+!2324 (+!2324 lt!392909 lt!392906) lt!392912))))

(declare-fun v!557 () V!27523)

(declare-datatypes ((Unit!29663 0))(
  ( (Unit!29664) )
))
(declare-fun lt!392913 () Unit!29663)

(declare-fun lt!392910 () V!27523)

(declare-fun addCommutativeForDiffKeys!529 (ListLongMap!10025 (_ BitVec 64) V!27523 (_ BitVec 64) V!27523) Unit!29663)

(assert (=> b!866127 (= lt!392913 (addCommutativeForDiffKeys!529 lt!392909 k0!854 v!557 (select (arr!23955 _keys!868) from!1053) lt!392910))))

(declare-fun b!866128 () Bool)

(declare-fun e!482509 () Bool)

(assert (=> b!866128 (= e!482509 e!482513)))

(declare-fun res!588610 () Bool)

(assert (=> b!866128 (=> res!588610 e!482513)))

(assert (=> b!866128 (= res!588610 (= k0!854 (select (arr!23955 _keys!868) from!1053)))))

(assert (=> b!866128 (not (= (select (arr!23955 _keys!868) from!1053) k0!854))))

(declare-fun lt!392899 () Unit!29663)

(declare-fun e!482511 () Unit!29663)

(assert (=> b!866128 (= lt!392899 e!482511)))

(declare-fun c!92220 () Bool)

(assert (=> b!866128 (= c!92220 (= (select (arr!23955 _keys!868) from!1053) k0!854))))

(declare-fun lt!392902 () ListLongMap!10025)

(assert (=> b!866128 (= lt!392902 lt!392903)))

(declare-fun lt!392901 () ListLongMap!10025)

(assert (=> b!866128 (= lt!392903 (+!2324 lt!392901 lt!392906))))

(assert (=> b!866128 (= lt!392906 (tuple2!11243 (select (arr!23955 _keys!868) from!1053) lt!392910))))

(declare-fun defaultEntry!696 () Int)

(declare-fun get!12681 (ValueCell!7989 V!27523) V!27523)

(declare-fun dynLambda!1191 (Int (_ BitVec 64)) V!27523)

(assert (=> b!866128 (= lt!392910 (get!12681 (select (arr!23956 _values!688) from!1053) (dynLambda!1191 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!866129 () Bool)

(declare-fun res!588616 () Bool)

(assert (=> b!866129 (=> (not res!588616) (not e!482506))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!866129 (= res!588616 (and (= (select (arr!23955 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!866130 () Bool)

(declare-fun Unit!29665 () Unit!29663)

(assert (=> b!866130 (= e!482511 Unit!29665)))

(declare-fun lt!392907 () Unit!29663)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49856 (_ BitVec 32) (_ BitVec 32)) Unit!29663)

(assert (=> b!866130 (= lt!392907 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17107 0))(
  ( (Nil!17104) (Cons!17103 (h!18234 (_ BitVec 64)) (t!24102 List!17107)) )
))
(declare-fun arrayNoDuplicates!0 (array!49856 (_ BitVec 32) List!17107) Bool)

(assert (=> b!866130 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17104)))

(declare-fun lt!392911 () Unit!29663)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49856 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29663)

(assert (=> b!866130 (= lt!392911 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49856 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!866130 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!392908 () Unit!29663)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49856 (_ BitVec 64) (_ BitVec 32) List!17107) Unit!29663)

(assert (=> b!866130 (= lt!392908 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17104))))

(assert (=> b!866130 false))

(declare-fun b!866131 () Bool)

(declare-fun e!482507 () Bool)

(assert (=> b!866131 (= e!482507 (not e!482509))))

(declare-fun res!588618 () Bool)

(assert (=> b!866131 (=> res!588618 e!482509)))

(assert (=> b!866131 (= res!588618 (not (validKeyInArray!0 (select (arr!23955 _keys!868) from!1053))))))

(declare-fun lt!392905 () ListLongMap!10025)

(assert (=> b!866131 (= lt!392905 lt!392901)))

(assert (=> b!866131 (= lt!392901 (+!2324 lt!392909 lt!392912))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27523)

(declare-fun zeroValue!654 () V!27523)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!392900 () array!49858)

(declare-fun getCurrentListMapNoExtraKeys!2995 (array!49856 array!49858 (_ BitVec 32) (_ BitVec 32) V!27523 V!27523 (_ BitVec 32) Int) ListLongMap!10025)

(assert (=> b!866131 (= lt!392905 (getCurrentListMapNoExtraKeys!2995 _keys!868 lt!392900 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!866131 (= lt!392912 (tuple2!11243 k0!854 v!557))))

(assert (=> b!866131 (= lt!392909 (getCurrentListMapNoExtraKeys!2995 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!392904 () Unit!29663)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!560 (array!49856 array!49858 (_ BitVec 32) (_ BitVec 32) V!27523 V!27523 (_ BitVec 32) (_ BitVec 64) V!27523 (_ BitVec 32) Int) Unit!29663)

(assert (=> b!866131 (= lt!392904 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!560 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!866132 () Bool)

(declare-fun res!588611 () Bool)

(assert (=> b!866132 (=> (not res!588611) (not e!482506))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49856 (_ BitVec 32)) Bool)

(assert (=> b!866132 (= res!588611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!26885 () Bool)

(declare-fun mapRes!26885 () Bool)

(assert (=> mapIsEmpty!26885 mapRes!26885))

(declare-fun b!866133 () Bool)

(assert (=> b!866133 (= e!482512 (and e!482510 mapRes!26885))))

(declare-fun condMapEmpty!26885 () Bool)

(declare-fun mapDefault!26885 () ValueCell!7989)

(assert (=> b!866133 (= condMapEmpty!26885 (= (arr!23956 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7989)) mapDefault!26885)))))

(declare-fun mapNonEmpty!26885 () Bool)

(declare-fun tp!51667 () Bool)

(declare-fun e!482514 () Bool)

(assert (=> mapNonEmpty!26885 (= mapRes!26885 (and tp!51667 e!482514))))

(declare-fun mapKey!26885 () (_ BitVec 32))

(declare-fun mapValue!26885 () ValueCell!7989)

(declare-fun mapRest!26885 () (Array (_ BitVec 32) ValueCell!7989))

(assert (=> mapNonEmpty!26885 (= (arr!23956 _values!688) (store mapRest!26885 mapKey!26885 mapValue!26885))))

(declare-fun b!866134 () Bool)

(assert (=> b!866134 (= e!482506 e!482507)))

(declare-fun res!588614 () Bool)

(assert (=> b!866134 (=> (not res!588614) (not e!482507))))

(assert (=> b!866134 (= res!588614 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!866134 (= lt!392902 (getCurrentListMapNoExtraKeys!2995 _keys!868 lt!392900 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!866134 (= lt!392900 (array!49859 (store (arr!23956 _values!688) i!612 (ValueCellFull!7989 v!557)) (size!24397 _values!688)))))

(declare-fun lt!392898 () ListLongMap!10025)

(assert (=> b!866134 (= lt!392898 (getCurrentListMapNoExtraKeys!2995 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!866135 () Bool)

(declare-fun res!588613 () Bool)

(assert (=> b!866135 (=> (not res!588613) (not e!482506))))

(assert (=> b!866135 (= res!588613 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17104))))

(declare-fun b!866136 () Bool)

(declare-fun res!588615 () Bool)

(assert (=> b!866136 (=> (not res!588615) (not e!482506))))

(assert (=> b!866136 (= res!588615 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24396 _keys!868))))))

(declare-fun b!866137 () Bool)

(declare-fun res!588609 () Bool)

(assert (=> b!866137 (=> (not res!588609) (not e!482506))))

(assert (=> b!866137 (= res!588609 (and (= (size!24397 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24396 _keys!868) (size!24397 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!866138 () Bool)

(declare-fun Unit!29666 () Unit!29663)

(assert (=> b!866138 (= e!482511 Unit!29666)))

(declare-fun b!866139 () Bool)

(declare-fun res!588617 () Bool)

(assert (=> b!866139 (=> (not res!588617) (not e!482506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!866139 (= res!588617 (validMask!0 mask!1196))))

(declare-fun b!866140 () Bool)

(assert (=> b!866140 (= e!482514 tp_is_empty!16857)))

(assert (= (and start!73834 res!588612) b!866139))

(assert (= (and b!866139 res!588617) b!866137))

(assert (= (and b!866137 res!588609) b!866132))

(assert (= (and b!866132 res!588611) b!866135))

(assert (= (and b!866135 res!588613) b!866136))

(assert (= (and b!866136 res!588615) b!866125))

(assert (= (and b!866125 res!588608) b!866129))

(assert (= (and b!866129 res!588616) b!866134))

(assert (= (and b!866134 res!588614) b!866131))

(assert (= (and b!866131 (not res!588618)) b!866128))

(assert (= (and b!866128 c!92220) b!866130))

(assert (= (and b!866128 (not c!92220)) b!866138))

(assert (= (and b!866128 (not res!588610)) b!866127))

(assert (= (and b!866133 condMapEmpty!26885) mapIsEmpty!26885))

(assert (= (and b!866133 (not condMapEmpty!26885)) mapNonEmpty!26885))

(get-info :version)

(assert (= (and mapNonEmpty!26885 ((_ is ValueCellFull!7989) mapValue!26885)) b!866140))

(assert (= (and b!866133 ((_ is ValueCellFull!7989) mapDefault!26885)) b!866126))

(assert (= start!73834 b!866133))

(declare-fun b_lambda!12103 () Bool)

(assert (=> (not b_lambda!12103) (not b!866128)))

(declare-fun t!24100 () Bool)

(declare-fun tb!4851 () Bool)

(assert (=> (and start!73834 (= defaultEntry!696 defaultEntry!696) t!24100) tb!4851))

(declare-fun result!9305 () Bool)

(assert (=> tb!4851 (= result!9305 tp_is_empty!16857)))

(assert (=> b!866128 t!24100))

(declare-fun b_and!24441 () Bool)

(assert (= b_and!24439 (and (=> t!24100 result!9305) b_and!24441)))

(declare-fun m!807863 () Bool)

(assert (=> b!866127 m!807863))

(assert (=> b!866127 m!807863))

(declare-fun m!807865 () Bool)

(assert (=> b!866127 m!807865))

(declare-fun m!807867 () Bool)

(assert (=> b!866127 m!807867))

(assert (=> b!866127 m!807867))

(declare-fun m!807869 () Bool)

(assert (=> b!866127 m!807869))

(declare-fun m!807871 () Bool)

(assert (=> mapNonEmpty!26885 m!807871))

(declare-fun m!807873 () Bool)

(assert (=> b!866132 m!807873))

(declare-fun m!807875 () Bool)

(assert (=> b!866139 m!807875))

(declare-fun m!807877 () Bool)

(assert (=> b!866125 m!807877))

(declare-fun m!807879 () Bool)

(assert (=> b!866135 m!807879))

(declare-fun m!807881 () Bool)

(assert (=> b!866129 m!807881))

(declare-fun m!807883 () Bool)

(assert (=> b!866134 m!807883))

(declare-fun m!807885 () Bool)

(assert (=> b!866134 m!807885))

(declare-fun m!807887 () Bool)

(assert (=> b!866134 m!807887))

(declare-fun m!807889 () Bool)

(assert (=> start!73834 m!807889))

(declare-fun m!807891 () Bool)

(assert (=> start!73834 m!807891))

(declare-fun m!807893 () Bool)

(assert (=> b!866130 m!807893))

(declare-fun m!807895 () Bool)

(assert (=> b!866130 m!807895))

(declare-fun m!807897 () Bool)

(assert (=> b!866130 m!807897))

(declare-fun m!807899 () Bool)

(assert (=> b!866130 m!807899))

(declare-fun m!807901 () Bool)

(assert (=> b!866130 m!807901))

(declare-fun m!807903 () Bool)

(assert (=> b!866131 m!807903))

(declare-fun m!807905 () Bool)

(assert (=> b!866131 m!807905))

(assert (=> b!866131 m!807867))

(declare-fun m!807907 () Bool)

(assert (=> b!866131 m!807907))

(assert (=> b!866131 m!807867))

(declare-fun m!807909 () Bool)

(assert (=> b!866131 m!807909))

(declare-fun m!807911 () Bool)

(assert (=> b!866131 m!807911))

(declare-fun m!807913 () Bool)

(assert (=> b!866128 m!807913))

(declare-fun m!807915 () Bool)

(assert (=> b!866128 m!807915))

(declare-fun m!807917 () Bool)

(assert (=> b!866128 m!807917))

(declare-fun m!807919 () Bool)

(assert (=> b!866128 m!807919))

(assert (=> b!866128 m!807915))

(assert (=> b!866128 m!807867))

(assert (=> b!866128 m!807917))

(check-sat (not b!866128) (not start!73834) (not b!866131) (not b!866130) (not b!866127) b_and!24441 (not b!866125) (not b!866132) tp_is_empty!16857 (not b!866134) (not b_next!14721) (not b!866139) (not b!866135) (not mapNonEmpty!26885) (not b_lambda!12103))
(check-sat b_and!24441 (not b_next!14721))
