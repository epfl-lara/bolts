; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73752 () Bool)

(assert start!73752)

(declare-fun b_free!14639 () Bool)

(declare-fun b_next!14639 () Bool)

(assert (=> start!73752 (= b_free!14639 (not b_next!14639))))

(declare-fun tp!51421 () Bool)

(declare-fun b_and!24275 () Bool)

(assert (=> start!73752 (= tp!51421 b_and!24275)))

(declare-fun b!864075 () Bool)

(declare-datatypes ((Unit!29529 0))(
  ( (Unit!29530) )
))
(declare-fun e!481401 () Unit!29529)

(declare-fun Unit!29531 () Unit!29529)

(assert (=> b!864075 (= e!481401 Unit!29531)))

(declare-fun mapIsEmpty!26762 () Bool)

(declare-fun mapRes!26762 () Bool)

(assert (=> mapIsEmpty!26762 mapRes!26762))

(declare-fun b!864076 () Bool)

(declare-fun e!481403 () Bool)

(declare-fun tp_is_empty!16775 () Bool)

(assert (=> b!864076 (= e!481403 tp_is_empty!16775)))

(declare-fun b!864077 () Bool)

(declare-fun res!587264 () Bool)

(declare-fun e!481404 () Bool)

(assert (=> b!864077 (=> (not res!587264) (not e!481404))))

(declare-datatypes ((array!49694 0))(
  ( (array!49695 (arr!23874 (Array (_ BitVec 32) (_ BitVec 64))) (size!24315 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49694)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49694 (_ BitVec 32)) Bool)

(assert (=> b!864077 (= res!587264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!864078 () Bool)

(declare-fun res!587261 () Bool)

(assert (=> b!864078 (=> (not res!587261) (not e!481404))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!864078 (= res!587261 (and (= (select (arr!23874 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!864079 () Bool)

(declare-fun res!587263 () Bool)

(assert (=> b!864079 (=> (not res!587263) (not e!481404))))

(assert (=> b!864079 (= res!587263 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24315 _keys!868))))))

(declare-fun b!864080 () Bool)

(declare-fun e!481406 () Bool)

(declare-fun e!481405 () Bool)

(assert (=> b!864080 (= e!481406 e!481405)))

(declare-fun res!587262 () Bool)

(assert (=> b!864080 (=> res!587262 e!481405)))

(assert (=> b!864080 (= res!587262 (= k!854 (select (arr!23874 _keys!868) from!1053)))))

(assert (=> b!864080 (not (= (select (arr!23874 _keys!868) from!1053) k!854))))

(declare-fun lt!390933 () Unit!29529)

(assert (=> b!864080 (= lt!390933 e!481401)))

(declare-fun c!92097 () Bool)

(assert (=> b!864080 (= c!92097 (= (select (arr!23874 _keys!868) from!1053) k!854))))

(declare-datatypes ((V!27413 0))(
  ( (V!27414 (val!8435 Int)) )
))
(declare-datatypes ((tuple2!11170 0))(
  ( (tuple2!11171 (_1!5595 (_ BitVec 64)) (_2!5595 V!27413)) )
))
(declare-datatypes ((List!17037 0))(
  ( (Nil!17034) (Cons!17033 (h!18164 tuple2!11170) (t!23950 List!17037)) )
))
(declare-datatypes ((ListLongMap!9953 0))(
  ( (ListLongMap!9954 (toList!4992 List!17037)) )
))
(declare-fun lt!390938 () ListLongMap!9953)

(declare-fun lt!390932 () ListLongMap!9953)

(assert (=> b!864080 (= lt!390938 lt!390932)))

(declare-fun lt!390943 () ListLongMap!9953)

(declare-fun lt!390942 () tuple2!11170)

(declare-fun +!2289 (ListLongMap!9953 tuple2!11170) ListLongMap!9953)

(assert (=> b!864080 (= lt!390932 (+!2289 lt!390943 lt!390942))))

(declare-fun lt!390939 () V!27413)

(assert (=> b!864080 (= lt!390942 (tuple2!11171 (select (arr!23874 _keys!868) from!1053) lt!390939))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7948 0))(
  ( (ValueCellFull!7948 (v!10856 V!27413)) (EmptyCell!7948) )
))
(declare-datatypes ((array!49696 0))(
  ( (array!49697 (arr!23875 (Array (_ BitVec 32) ValueCell!7948)) (size!24316 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49696)

(declare-fun get!12623 (ValueCell!7948 V!27413) V!27413)

(declare-fun dynLambda!1161 (Int (_ BitVec 64)) V!27413)

(assert (=> b!864080 (= lt!390939 (get!12623 (select (arr!23875 _values!688) from!1053) (dynLambda!1161 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!864081 () Bool)

(declare-fun e!481399 () Bool)

(assert (=> b!864081 (= e!481399 tp_is_empty!16775)))

(declare-fun b!864082 () Bool)

(declare-fun Unit!29532 () Unit!29529)

(assert (=> b!864082 (= e!481401 Unit!29532)))

(declare-fun lt!390930 () Unit!29529)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49694 (_ BitVec 32) (_ BitVec 32)) Unit!29529)

(assert (=> b!864082 (= lt!390930 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17038 0))(
  ( (Nil!17035) (Cons!17034 (h!18165 (_ BitVec 64)) (t!23951 List!17038)) )
))
(declare-fun arrayNoDuplicates!0 (array!49694 (_ BitVec 32) List!17038) Bool)

(assert (=> b!864082 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17035)))

(declare-fun lt!390944 () Unit!29529)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49694 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29529)

(assert (=> b!864082 (= lt!390944 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49694 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!864082 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!390934 () Unit!29529)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49694 (_ BitVec 64) (_ BitVec 32) List!17038) Unit!29529)

(assert (=> b!864082 (= lt!390934 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17035))))

(assert (=> b!864082 false))

(declare-fun res!587258 () Bool)

(assert (=> start!73752 (=> (not res!587258) (not e!481404))))

(assert (=> start!73752 (= res!587258 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24315 _keys!868))))))

(assert (=> start!73752 e!481404))

(assert (=> start!73752 tp_is_empty!16775))

(assert (=> start!73752 true))

(assert (=> start!73752 tp!51421))

(declare-fun array_inv!18858 (array!49694) Bool)

(assert (=> start!73752 (array_inv!18858 _keys!868)))

(declare-fun e!481407 () Bool)

(declare-fun array_inv!18859 (array!49696) Bool)

(assert (=> start!73752 (and (array_inv!18859 _values!688) e!481407)))

(declare-fun b!864083 () Bool)

(declare-fun e!481400 () Bool)

(assert (=> b!864083 (= e!481400 (not e!481406))))

(declare-fun res!587256 () Bool)

(assert (=> b!864083 (=> res!587256 e!481406)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!864083 (= res!587256 (not (validKeyInArray!0 (select (arr!23874 _keys!868) from!1053))))))

(declare-fun lt!390941 () ListLongMap!9953)

(assert (=> b!864083 (= lt!390941 lt!390943)))

(declare-fun lt!390935 () ListLongMap!9953)

(declare-fun lt!390936 () tuple2!11170)

(assert (=> b!864083 (= lt!390943 (+!2289 lt!390935 lt!390936))))

(declare-fun lt!390940 () array!49696)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27413)

(declare-fun zeroValue!654 () V!27413)

(declare-fun getCurrentListMapNoExtraKeys!2965 (array!49694 array!49696 (_ BitVec 32) (_ BitVec 32) V!27413 V!27413 (_ BitVec 32) Int) ListLongMap!9953)

(assert (=> b!864083 (= lt!390941 (getCurrentListMapNoExtraKeys!2965 _keys!868 lt!390940 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun v!557 () V!27413)

(assert (=> b!864083 (= lt!390936 (tuple2!11171 k!854 v!557))))

(assert (=> b!864083 (= lt!390935 (getCurrentListMapNoExtraKeys!2965 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!390945 () Unit!29529)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!534 (array!49694 array!49696 (_ BitVec 32) (_ BitVec 32) V!27413 V!27413 (_ BitVec 32) (_ BitVec 64) V!27413 (_ BitVec 32) Int) Unit!29529)

(assert (=> b!864083 (= lt!390945 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!534 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!864084 () Bool)

(assert (=> b!864084 (= e!481405 true)))

(assert (=> b!864084 (= lt!390932 (+!2289 (+!2289 lt!390935 lt!390942) lt!390936))))

(declare-fun lt!390931 () Unit!29529)

(declare-fun addCommutativeForDiffKeys!499 (ListLongMap!9953 (_ BitVec 64) V!27413 (_ BitVec 64) V!27413) Unit!29529)

(assert (=> b!864084 (= lt!390931 (addCommutativeForDiffKeys!499 lt!390935 k!854 v!557 (select (arr!23874 _keys!868) from!1053) lt!390939))))

(declare-fun b!864085 () Bool)

(assert (=> b!864085 (= e!481404 e!481400)))

(declare-fun res!587255 () Bool)

(assert (=> b!864085 (=> (not res!587255) (not e!481400))))

(assert (=> b!864085 (= res!587255 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!864085 (= lt!390938 (getCurrentListMapNoExtraKeys!2965 _keys!868 lt!390940 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!864085 (= lt!390940 (array!49697 (store (arr!23875 _values!688) i!612 (ValueCellFull!7948 v!557)) (size!24316 _values!688)))))

(declare-fun lt!390937 () ListLongMap!9953)

(assert (=> b!864085 (= lt!390937 (getCurrentListMapNoExtraKeys!2965 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!864086 () Bool)

(declare-fun res!587265 () Bool)

(assert (=> b!864086 (=> (not res!587265) (not e!481404))))

(assert (=> b!864086 (= res!587265 (and (= (size!24316 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24315 _keys!868) (size!24316 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!864087 () Bool)

(declare-fun res!587260 () Bool)

(assert (=> b!864087 (=> (not res!587260) (not e!481404))))

(assert (=> b!864087 (= res!587260 (validKeyInArray!0 k!854))))

(declare-fun b!864088 () Bool)

(assert (=> b!864088 (= e!481407 (and e!481399 mapRes!26762))))

(declare-fun condMapEmpty!26762 () Bool)

(declare-fun mapDefault!26762 () ValueCell!7948)

