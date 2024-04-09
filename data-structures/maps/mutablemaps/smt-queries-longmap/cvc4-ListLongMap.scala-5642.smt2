; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73668 () Bool)

(assert start!73668)

(declare-fun b_free!14555 () Bool)

(declare-fun b_next!14555 () Bool)

(assert (=> start!73668 (= b_free!14555 (not b_next!14555))))

(declare-fun tp!51170 () Bool)

(declare-fun b_and!24107 () Bool)

(assert (=> start!73668 (= tp!51170 b_and!24107)))

(declare-fun b!861976 () Bool)

(declare-fun res!585873 () Bool)

(declare-fun e!480267 () Bool)

(assert (=> b!861976 (=> (not res!585873) (not e!480267))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!861976 (= res!585873 (validMask!0 mask!1196))))

(declare-fun b!861977 () Bool)

(declare-fun e!480270 () Bool)

(declare-fun e!480269 () Bool)

(assert (=> b!861977 (= e!480270 (not e!480269))))

(declare-fun res!585870 () Bool)

(assert (=> b!861977 (=> res!585870 e!480269)))

(declare-datatypes ((array!49528 0))(
  ( (array!49529 (arr!23791 (Array (_ BitVec 32) (_ BitVec 64))) (size!24232 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49528)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!861977 (= res!585870 (not (validKeyInArray!0 (select (arr!23791 _keys!868) from!1053))))))

(declare-datatypes ((V!27301 0))(
  ( (V!27302 (val!8393 Int)) )
))
(declare-datatypes ((tuple2!11094 0))(
  ( (tuple2!11095 (_1!5557 (_ BitVec 64)) (_2!5557 V!27301)) )
))
(declare-datatypes ((List!16964 0))(
  ( (Nil!16961) (Cons!16960 (h!18091 tuple2!11094) (t!23793 List!16964)) )
))
(declare-datatypes ((ListLongMap!9877 0))(
  ( (ListLongMap!9878 (toList!4954 List!16964)) )
))
(declare-fun lt!388919 () ListLongMap!9877)

(declare-fun lt!388925 () ListLongMap!9877)

(assert (=> b!861977 (= lt!388919 lt!388925)))

(declare-fun v!557 () V!27301)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lt!388926 () ListLongMap!9877)

(declare-fun +!2251 (ListLongMap!9877 tuple2!11094) ListLongMap!9877)

(assert (=> b!861977 (= lt!388925 (+!2251 lt!388926 (tuple2!11095 k!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7906 0))(
  ( (ValueCellFull!7906 (v!10814 V!27301)) (EmptyCell!7906) )
))
(declare-datatypes ((array!49530 0))(
  ( (array!49531 (arr!23792 (Array (_ BitVec 32) ValueCell!7906)) (size!24233 (_ BitVec 32))) )
))
(declare-fun lt!388928 () array!49530)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27301)

(declare-fun zeroValue!654 () V!27301)

(declare-fun getCurrentListMapNoExtraKeys!2931 (array!49528 array!49530 (_ BitVec 32) (_ BitVec 32) V!27301 V!27301 (_ BitVec 32) Int) ListLongMap!9877)

(assert (=> b!861977 (= lt!388919 (getCurrentListMapNoExtraKeys!2931 _keys!868 lt!388928 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun _values!688 () array!49530)

(assert (=> b!861977 (= lt!388926 (getCurrentListMapNoExtraKeys!2931 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29393 0))(
  ( (Unit!29394) )
))
(declare-fun lt!388924 () Unit!29393)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!501 (array!49528 array!49530 (_ BitVec 32) (_ BitVec 32) V!27301 V!27301 (_ BitVec 32) (_ BitVec 64) V!27301 (_ BitVec 32) Int) Unit!29393)

(assert (=> b!861977 (= lt!388924 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!501 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!861978 () Bool)

(declare-fun res!585874 () Bool)

(assert (=> b!861978 (=> (not res!585874) (not e!480267))))

(assert (=> b!861978 (= res!585874 (and (= (select (arr!23791 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!861979 () Bool)

(declare-fun res!585877 () Bool)

(assert (=> b!861979 (=> (not res!585877) (not e!480267))))

(assert (=> b!861979 (= res!585877 (and (= (size!24233 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24232 _keys!868) (size!24233 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!861980 () Bool)

(assert (=> b!861980 (= e!480267 e!480270)))

(declare-fun res!585875 () Bool)

(assert (=> b!861980 (=> (not res!585875) (not e!480270))))

(assert (=> b!861980 (= res!585875 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!388923 () ListLongMap!9877)

(assert (=> b!861980 (= lt!388923 (getCurrentListMapNoExtraKeys!2931 _keys!868 lt!388928 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!861980 (= lt!388928 (array!49531 (store (arr!23792 _values!688) i!612 (ValueCellFull!7906 v!557)) (size!24233 _values!688)))))

(declare-fun lt!388927 () ListLongMap!9877)

(assert (=> b!861980 (= lt!388927 (getCurrentListMapNoExtraKeys!2931 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!26636 () Bool)

(declare-fun mapRes!26636 () Bool)

(declare-fun tp!51169 () Bool)

(declare-fun e!480268 () Bool)

(assert (=> mapNonEmpty!26636 (= mapRes!26636 (and tp!51169 e!480268))))

(declare-fun mapRest!26636 () (Array (_ BitVec 32) ValueCell!7906))

(declare-fun mapKey!26636 () (_ BitVec 32))

(declare-fun mapValue!26636 () ValueCell!7906)

(assert (=> mapNonEmpty!26636 (= (arr!23792 _values!688) (store mapRest!26636 mapKey!26636 mapValue!26636))))

(declare-fun b!861981 () Bool)

(declare-fun e!480271 () Unit!29393)

(declare-fun Unit!29395 () Unit!29393)

(assert (=> b!861981 (= e!480271 Unit!29395)))

(declare-fun lt!388929 () Unit!29393)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49528 (_ BitVec 32) (_ BitVec 32)) Unit!29393)

(assert (=> b!861981 (= lt!388929 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!16965 0))(
  ( (Nil!16962) (Cons!16961 (h!18092 (_ BitVec 64)) (t!23794 List!16965)) )
))
(declare-fun arrayNoDuplicates!0 (array!49528 (_ BitVec 32) List!16965) Bool)

(assert (=> b!861981 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16962)))

(declare-fun lt!388920 () Unit!29393)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49528 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29393)

(assert (=> b!861981 (= lt!388920 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49528 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!861981 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388921 () Unit!29393)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49528 (_ BitVec 64) (_ BitVec 32) List!16965) Unit!29393)

(assert (=> b!861981 (= lt!388921 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!16962))))

(assert (=> b!861981 false))

(declare-fun b!861982 () Bool)

(declare-fun tp_is_empty!16691 () Bool)

(assert (=> b!861982 (= e!480268 tp_is_empty!16691)))

(declare-fun b!861983 () Bool)

(declare-fun e!480266 () Bool)

(declare-fun e!480273 () Bool)

(assert (=> b!861983 (= e!480266 (and e!480273 mapRes!26636))))

(declare-fun condMapEmpty!26636 () Bool)

(declare-fun mapDefault!26636 () ValueCell!7906)

