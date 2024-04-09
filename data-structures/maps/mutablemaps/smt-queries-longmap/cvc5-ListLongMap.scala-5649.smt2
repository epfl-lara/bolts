; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73706 () Bool)

(assert start!73706)

(declare-fun b_free!14593 () Bool)

(declare-fun b_next!14593 () Bool)

(assert (=> start!73706 (= b_free!14593 (not b_next!14593))))

(declare-fun tp!51283 () Bool)

(declare-fun b_and!24183 () Bool)

(assert (=> start!73706 (= tp!51283 b_and!24183)))

(declare-fun b!862925 () Bool)

(declare-fun res!586506 () Bool)

(declare-fun e!480782 () Bool)

(assert (=> b!862925 (=> (not res!586506) (not e!480782))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!862925 (= res!586506 (validKeyInArray!0 k!854))))

(declare-fun b!862926 () Bool)

(declare-fun e!480785 () Bool)

(assert (=> b!862926 (= e!480785 true)))

(declare-datatypes ((V!27353 0))(
  ( (V!27354 (val!8412 Int)) )
))
(declare-datatypes ((tuple2!11128 0))(
  ( (tuple2!11129 (_1!5574 (_ BitVec 64)) (_2!5574 V!27353)) )
))
(declare-fun lt!389829 () tuple2!11128)

(declare-datatypes ((List!16996 0))(
  ( (Nil!16993) (Cons!16992 (h!18123 tuple2!11128) (t!23863 List!16996)) )
))
(declare-datatypes ((ListLongMap!9911 0))(
  ( (ListLongMap!9912 (toList!4971 List!16996)) )
))
(declare-fun lt!389839 () ListLongMap!9911)

(declare-fun lt!389841 () tuple2!11128)

(declare-fun lt!389837 () ListLongMap!9911)

(declare-fun +!2268 (ListLongMap!9911 tuple2!11128) ListLongMap!9911)

(assert (=> b!862926 (= lt!389839 (+!2268 (+!2268 lt!389837 lt!389841) lt!389829))))

(declare-fun v!557 () V!27353)

(declare-datatypes ((array!49604 0))(
  ( (array!49605 (arr!23829 (Array (_ BitVec 32) (_ BitVec 64))) (size!24270 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49604)

(declare-fun lt!389826 () V!27353)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((Unit!29453 0))(
  ( (Unit!29454) )
))
(declare-fun lt!389831 () Unit!29453)

(declare-fun addCommutativeForDiffKeys!483 (ListLongMap!9911 (_ BitVec 64) V!27353 (_ BitVec 64) V!27353) Unit!29453)

(assert (=> b!862926 (= lt!389831 (addCommutativeForDiffKeys!483 lt!389837 k!854 v!557 (select (arr!23829 _keys!868) from!1053) lt!389826))))

(declare-fun b!862927 () Bool)

(declare-fun res!586496 () Bool)

(assert (=> b!862927 (=> (not res!586496) (not e!480782))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7925 0))(
  ( (ValueCellFull!7925 (v!10833 V!27353)) (EmptyCell!7925) )
))
(declare-datatypes ((array!49606 0))(
  ( (array!49607 (arr!23830 (Array (_ BitVec 32) ValueCell!7925)) (size!24271 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49606)

(assert (=> b!862927 (= res!586496 (and (= (size!24271 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24270 _keys!868) (size!24271 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!26693 () Bool)

(declare-fun mapRes!26693 () Bool)

(assert (=> mapIsEmpty!26693 mapRes!26693))

(declare-fun b!862928 () Bool)

(declare-fun res!586501 () Bool)

(assert (=> b!862928 (=> (not res!586501) (not e!480782))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!862928 (= res!586501 (and (= (select (arr!23829 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!862930 () Bool)

(declare-fun e!480779 () Bool)

(assert (=> b!862930 (= e!480782 e!480779)))

(declare-fun res!586499 () Bool)

(assert (=> b!862930 (=> (not res!586499) (not e!480779))))

(assert (=> b!862930 (= res!586499 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!389830 () array!49606)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27353)

(declare-fun zeroValue!654 () V!27353)

(declare-fun lt!389836 () ListLongMap!9911)

(declare-fun getCurrentListMapNoExtraKeys!2946 (array!49604 array!49606 (_ BitVec 32) (_ BitVec 32) V!27353 V!27353 (_ BitVec 32) Int) ListLongMap!9911)

(assert (=> b!862930 (= lt!389836 (getCurrentListMapNoExtraKeys!2946 _keys!868 lt!389830 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!862930 (= lt!389830 (array!49607 (store (arr!23830 _values!688) i!612 (ValueCellFull!7925 v!557)) (size!24271 _values!688)))))

(declare-fun lt!389840 () ListLongMap!9911)

(assert (=> b!862930 (= lt!389840 (getCurrentListMapNoExtraKeys!2946 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!862931 () Bool)

(declare-fun res!586504 () Bool)

(assert (=> b!862931 (=> (not res!586504) (not e!480782))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!862931 (= res!586504 (validMask!0 mask!1196))))

(declare-fun b!862932 () Bool)

(declare-fun res!586498 () Bool)

(assert (=> b!862932 (=> (not res!586498) (not e!480782))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49604 (_ BitVec 32)) Bool)

(assert (=> b!862932 (= res!586498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!862933 () Bool)

(declare-fun e!480786 () Bool)

(assert (=> b!862933 (= e!480786 e!480785)))

(declare-fun res!586500 () Bool)

(assert (=> b!862933 (=> res!586500 e!480785)))

(assert (=> b!862933 (= res!586500 (= k!854 (select (arr!23829 _keys!868) from!1053)))))

(assert (=> b!862933 (not (= (select (arr!23829 _keys!868) from!1053) k!854))))

(declare-fun lt!389838 () Unit!29453)

(declare-fun e!480780 () Unit!29453)

(assert (=> b!862933 (= lt!389838 e!480780)))

(declare-fun c!92028 () Bool)

(assert (=> b!862933 (= c!92028 (= (select (arr!23829 _keys!868) from!1053) k!854))))

(assert (=> b!862933 (= lt!389836 lt!389839)))

(declare-fun lt!389834 () ListLongMap!9911)

(assert (=> b!862933 (= lt!389839 (+!2268 lt!389834 lt!389841))))

(assert (=> b!862933 (= lt!389841 (tuple2!11129 (select (arr!23829 _keys!868) from!1053) lt!389826))))

(declare-fun get!12593 (ValueCell!7925 V!27353) V!27353)

(declare-fun dynLambda!1145 (Int (_ BitVec 64)) V!27353)

(assert (=> b!862933 (= lt!389826 (get!12593 (select (arr!23830 _values!688) from!1053) (dynLambda!1145 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!26693 () Bool)

(declare-fun tp!51284 () Bool)

(declare-fun e!480778 () Bool)

(assert (=> mapNonEmpty!26693 (= mapRes!26693 (and tp!51284 e!480778))))

(declare-fun mapValue!26693 () ValueCell!7925)

(declare-fun mapKey!26693 () (_ BitVec 32))

(declare-fun mapRest!26693 () (Array (_ BitVec 32) ValueCell!7925))

(assert (=> mapNonEmpty!26693 (= (arr!23830 _values!688) (store mapRest!26693 mapKey!26693 mapValue!26693))))

(declare-fun b!862934 () Bool)

(declare-fun res!586505 () Bool)

(assert (=> b!862934 (=> (not res!586505) (not e!480782))))

(declare-datatypes ((List!16997 0))(
  ( (Nil!16994) (Cons!16993 (h!18124 (_ BitVec 64)) (t!23864 List!16997)) )
))
(declare-fun arrayNoDuplicates!0 (array!49604 (_ BitVec 32) List!16997) Bool)

(assert (=> b!862934 (= res!586505 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16994))))

(declare-fun b!862935 () Bool)

(declare-fun Unit!29455 () Unit!29453)

(assert (=> b!862935 (= e!480780 Unit!29455)))

(declare-fun b!862936 () Bool)

(declare-fun tp_is_empty!16729 () Bool)

(assert (=> b!862936 (= e!480778 tp_is_empty!16729)))

(declare-fun b!862937 () Bool)

(declare-fun e!480781 () Bool)

(assert (=> b!862937 (= e!480781 tp_is_empty!16729)))

(declare-fun b!862938 () Bool)

(declare-fun Unit!29456 () Unit!29453)

(assert (=> b!862938 (= e!480780 Unit!29456)))

(declare-fun lt!389833 () Unit!29453)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49604 (_ BitVec 32) (_ BitVec 32)) Unit!29453)

(assert (=> b!862938 (= lt!389833 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!862938 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16994)))

(declare-fun lt!389835 () Unit!29453)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49604 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29453)

(assert (=> b!862938 (= lt!389835 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49604 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!862938 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!389828 () Unit!29453)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49604 (_ BitVec 64) (_ BitVec 32) List!16997) Unit!29453)

(assert (=> b!862938 (= lt!389828 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!16994))))

(assert (=> b!862938 false))

(declare-fun b!862939 () Bool)

(assert (=> b!862939 (= e!480779 (not e!480786))))

(declare-fun res!586503 () Bool)

(assert (=> b!862939 (=> res!586503 e!480786)))

(assert (=> b!862939 (= res!586503 (not (validKeyInArray!0 (select (arr!23829 _keys!868) from!1053))))))

(declare-fun lt!389827 () ListLongMap!9911)

(assert (=> b!862939 (= lt!389827 lt!389834)))

(assert (=> b!862939 (= lt!389834 (+!2268 lt!389837 lt!389829))))

(assert (=> b!862939 (= lt!389827 (getCurrentListMapNoExtraKeys!2946 _keys!868 lt!389830 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!862939 (= lt!389829 (tuple2!11129 k!854 v!557))))

(assert (=> b!862939 (= lt!389837 (getCurrentListMapNoExtraKeys!2946 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!389832 () Unit!29453)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!515 (array!49604 array!49606 (_ BitVec 32) (_ BitVec 32) V!27353 V!27353 (_ BitVec 32) (_ BitVec 64) V!27353 (_ BitVec 32) Int) Unit!29453)

(assert (=> b!862939 (= lt!389832 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!515 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!862940 () Bool)

(declare-fun e!480784 () Bool)

(assert (=> b!862940 (= e!480784 (and e!480781 mapRes!26693))))

(declare-fun condMapEmpty!26693 () Bool)

(declare-fun mapDefault!26693 () ValueCell!7925)

