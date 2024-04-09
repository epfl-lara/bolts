; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73658 () Bool)

(assert start!73658)

(declare-fun b_free!14545 () Bool)

(declare-fun b_next!14545 () Bool)

(assert (=> start!73658 (= b_free!14545 (not b_next!14545))))

(declare-fun tp!51140 () Bool)

(declare-fun b_and!24087 () Bool)

(assert (=> start!73658 (= tp!51140 b_and!24087)))

(declare-fun b!861741 () Bool)

(declare-fun res!585722 () Bool)

(declare-fun e!480152 () Bool)

(assert (=> b!861741 (=> (not res!585722) (not e!480152))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49508 0))(
  ( (array!49509 (arr!23781 (Array (_ BitVec 32) (_ BitVec 64))) (size!24222 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49508)

(declare-datatypes ((V!27289 0))(
  ( (V!27290 (val!8388 Int)) )
))
(declare-datatypes ((ValueCell!7901 0))(
  ( (ValueCellFull!7901 (v!10809 V!27289)) (EmptyCell!7901) )
))
(declare-datatypes ((array!49510 0))(
  ( (array!49511 (arr!23782 (Array (_ BitVec 32) ValueCell!7901)) (size!24223 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49510)

(assert (=> b!861741 (= res!585722 (and (= (size!24223 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24222 _keys!868) (size!24223 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!861742 () Bool)

(declare-fun e!480149 () Bool)

(declare-fun tp_is_empty!16681 () Bool)

(assert (=> b!861742 (= e!480149 tp_is_empty!16681)))

(declare-fun mapNonEmpty!26621 () Bool)

(declare-fun mapRes!26621 () Bool)

(declare-fun tp!51139 () Bool)

(declare-fun e!480151 () Bool)

(assert (=> mapNonEmpty!26621 (= mapRes!26621 (and tp!51139 e!480151))))

(declare-fun mapRest!26621 () (Array (_ BitVec 32) ValueCell!7901))

(declare-fun mapKey!26621 () (_ BitVec 32))

(declare-fun mapValue!26621 () ValueCell!7901)

(assert (=> mapNonEmpty!26621 (= (arr!23782 _values!688) (store mapRest!26621 mapKey!26621 mapValue!26621))))

(declare-fun b!861743 () Bool)

(declare-fun res!585728 () Bool)

(assert (=> b!861743 (=> (not res!585728) (not e!480152))))

(declare-datatypes ((List!16954 0))(
  ( (Nil!16951) (Cons!16950 (h!18081 (_ BitVec 64)) (t!23773 List!16954)) )
))
(declare-fun arrayNoDuplicates!0 (array!49508 (_ BitVec 32) List!16954) Bool)

(assert (=> b!861743 (= res!585728 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16951))))

(declare-fun b!861744 () Bool)

(declare-datatypes ((Unit!29375 0))(
  ( (Unit!29376) )
))
(declare-fun e!480153 () Unit!29375)

(declare-fun Unit!29377 () Unit!29375)

(assert (=> b!861744 (= e!480153 Unit!29377)))

(declare-fun lt!388755 () Unit!29375)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49508 (_ BitVec 32) (_ BitVec 32)) Unit!29375)

(assert (=> b!861744 (= lt!388755 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!861744 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16951)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!388761 () Unit!29375)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49508 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29375)

(assert (=> b!861744 (= lt!388761 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!861744 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388754 () Unit!29375)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49508 (_ BitVec 64) (_ BitVec 32) List!16954) Unit!29375)

(assert (=> b!861744 (= lt!388754 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!16951))))

(assert (=> b!861744 false))

(declare-fun b!861745 () Bool)

(declare-fun e!480146 () Bool)

(assert (=> b!861745 (= e!480152 e!480146)))

(declare-fun res!585721 () Bool)

(assert (=> b!861745 (=> (not res!585721) (not e!480146))))

(assert (=> b!861745 (= res!585721 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!388758 () array!49510)

(declare-datatypes ((tuple2!11084 0))(
  ( (tuple2!11085 (_1!5552 (_ BitVec 64)) (_2!5552 V!27289)) )
))
(declare-datatypes ((List!16955 0))(
  ( (Nil!16952) (Cons!16951 (h!18082 tuple2!11084) (t!23774 List!16955)) )
))
(declare-datatypes ((ListLongMap!9867 0))(
  ( (ListLongMap!9868 (toList!4949 List!16955)) )
))
(declare-fun lt!388760 () ListLongMap!9867)

(declare-fun minValue!654 () V!27289)

(declare-fun zeroValue!654 () V!27289)

(declare-fun getCurrentListMapNoExtraKeys!2927 (array!49508 array!49510 (_ BitVec 32) (_ BitVec 32) V!27289 V!27289 (_ BitVec 32) Int) ListLongMap!9867)

(assert (=> b!861745 (= lt!388760 (getCurrentListMapNoExtraKeys!2927 _keys!868 lt!388758 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27289)

(assert (=> b!861745 (= lt!388758 (array!49511 (store (arr!23782 _values!688) i!612 (ValueCellFull!7901 v!557)) (size!24223 _values!688)))))

(declare-fun lt!388763 () ListLongMap!9867)

(assert (=> b!861745 (= lt!388763 (getCurrentListMapNoExtraKeys!2927 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!861746 () Bool)

(declare-fun res!585729 () Bool)

(assert (=> b!861746 (=> (not res!585729) (not e!480152))))

(assert (=> b!861746 (= res!585729 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24222 _keys!868))))))

(declare-fun mapIsEmpty!26621 () Bool)

(assert (=> mapIsEmpty!26621 mapRes!26621))

(declare-fun b!861748 () Bool)

(declare-fun res!585720 () Bool)

(assert (=> b!861748 (=> (not res!585720) (not e!480152))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!861748 (= res!585720 (validMask!0 mask!1196))))

(declare-fun b!861749 () Bool)

(declare-fun res!585726 () Bool)

(assert (=> b!861749 (=> (not res!585726) (not e!480152))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!861749 (= res!585726 (validKeyInArray!0 k!854))))

(declare-fun b!861750 () Bool)

(assert (=> b!861750 (= e!480151 tp_is_empty!16681)))

(declare-fun b!861751 () Bool)

(declare-fun res!585727 () Bool)

(assert (=> b!861751 (=> (not res!585727) (not e!480152))))

(assert (=> b!861751 (= res!585727 (and (= (select (arr!23781 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!861752 () Bool)

(declare-fun e!480150 () Bool)

(assert (=> b!861752 (= e!480146 (not e!480150))))

(declare-fun res!585725 () Bool)

(assert (=> b!861752 (=> res!585725 e!480150)))

(assert (=> b!861752 (= res!585725 (not (validKeyInArray!0 (select (arr!23781 _keys!868) from!1053))))))

(declare-fun lt!388764 () ListLongMap!9867)

(declare-fun lt!388757 () ListLongMap!9867)

(assert (=> b!861752 (= lt!388764 lt!388757)))

(declare-fun lt!388759 () ListLongMap!9867)

(declare-fun +!2246 (ListLongMap!9867 tuple2!11084) ListLongMap!9867)

(assert (=> b!861752 (= lt!388757 (+!2246 lt!388759 (tuple2!11085 k!854 v!557)))))

(assert (=> b!861752 (= lt!388764 (getCurrentListMapNoExtraKeys!2927 _keys!868 lt!388758 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!861752 (= lt!388759 (getCurrentListMapNoExtraKeys!2927 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!388756 () Unit!29375)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!497 (array!49508 array!49510 (_ BitVec 32) (_ BitVec 32) V!27289 V!27289 (_ BitVec 32) (_ BitVec 64) V!27289 (_ BitVec 32) Int) Unit!29375)

(assert (=> b!861752 (= lt!388756 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!497 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!861753 () Bool)

(declare-fun e!480148 () Bool)

(assert (=> b!861753 (= e!480148 (and e!480149 mapRes!26621))))

(declare-fun condMapEmpty!26621 () Bool)

(declare-fun mapDefault!26621 () ValueCell!7901)

