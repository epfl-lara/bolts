; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73856 () Bool)

(assert start!73856)

(declare-fun b_free!14743 () Bool)

(declare-fun b_next!14743 () Bool)

(assert (=> start!73856 (= b_free!14743 (not b_next!14743))))

(declare-fun tp!51734 () Bool)

(declare-fun b_and!24483 () Bool)

(assert (=> start!73856 (= tp!51734 b_and!24483)))

(declare-fun b!866675 () Bool)

(declare-fun e!482808 () Bool)

(declare-fun e!482809 () Bool)

(assert (=> b!866675 (= e!482808 (not e!482809))))

(declare-fun res!588980 () Bool)

(assert (=> b!866675 (=> res!588980 e!482809)))

(declare-datatypes ((array!49898 0))(
  ( (array!49899 (arr!23976 (Array (_ BitVec 32) (_ BitVec 64))) (size!24417 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49898)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!866675 (= res!588980 (not (validKeyInArray!0 (select (arr!23976 _keys!868) from!1053))))))

(declare-datatypes ((V!27553 0))(
  ( (V!27554 (val!8487 Int)) )
))
(declare-datatypes ((tuple2!11260 0))(
  ( (tuple2!11261 (_1!5640 (_ BitVec 64)) (_2!5640 V!27553)) )
))
(declare-datatypes ((List!17123 0))(
  ( (Nil!17120) (Cons!17119 (h!18250 tuple2!11260) (t!24140 List!17123)) )
))
(declare-datatypes ((ListLongMap!10043 0))(
  ( (ListLongMap!10044 (toList!5037 List!17123)) )
))
(declare-fun lt!393437 () ListLongMap!10043)

(declare-fun lt!393428 () ListLongMap!10043)

(assert (=> b!866675 (= lt!393437 lt!393428)))

(declare-fun lt!393432 () ListLongMap!10043)

(declare-fun lt!393430 () tuple2!11260)

(declare-fun +!2333 (ListLongMap!10043 tuple2!11260) ListLongMap!10043)

(assert (=> b!866675 (= lt!393428 (+!2333 lt!393432 lt!393430))))

(declare-datatypes ((ValueCell!8000 0))(
  ( (ValueCellFull!8000 (v!10908 V!27553)) (EmptyCell!8000) )
))
(declare-datatypes ((array!49900 0))(
  ( (array!49901 (arr!23977 (Array (_ BitVec 32) ValueCell!8000)) (size!24418 (_ BitVec 32))) )
))
(declare-fun lt!393439 () array!49900)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27553)

(declare-fun zeroValue!654 () V!27553)

(declare-fun getCurrentListMapNoExtraKeys!3003 (array!49898 array!49900 (_ BitVec 32) (_ BitVec 32) V!27553 V!27553 (_ BitVec 32) Int) ListLongMap!10043)

(assert (=> b!866675 (= lt!393437 (getCurrentListMapNoExtraKeys!3003 _keys!868 lt!393439 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun v!557 () V!27553)

(assert (=> b!866675 (= lt!393430 (tuple2!11261 k!854 v!557))))

(declare-fun _values!688 () array!49900)

(assert (=> b!866675 (= lt!393432 (getCurrentListMapNoExtraKeys!3003 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29694 0))(
  ( (Unit!29695) )
))
(declare-fun lt!393440 () Unit!29694)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!567 (array!49898 array!49900 (_ BitVec 32) (_ BitVec 32) V!27553 V!27553 (_ BitVec 32) (_ BitVec 64) V!27553 (_ BitVec 32) Int) Unit!29694)

(assert (=> b!866675 (= lt!393440 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!567 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!866677 () Bool)

(declare-fun e!482805 () Bool)

(declare-fun tp_is_empty!16879 () Bool)

(assert (=> b!866677 (= e!482805 tp_is_empty!16879)))

(declare-fun b!866678 () Bool)

(declare-fun res!588979 () Bool)

(declare-fun e!482804 () Bool)

(assert (=> b!866678 (=> (not res!588979) (not e!482804))))

(declare-datatypes ((List!17124 0))(
  ( (Nil!17121) (Cons!17120 (h!18251 (_ BitVec 64)) (t!24141 List!17124)) )
))
(declare-fun arrayNoDuplicates!0 (array!49898 (_ BitVec 32) List!17124) Bool)

(assert (=> b!866678 (= res!588979 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17121))))

(declare-fun b!866679 () Bool)

(declare-fun e!482806 () Bool)

(assert (=> b!866679 (= e!482806 tp_is_empty!16879)))

(declare-fun mapIsEmpty!26918 () Bool)

(declare-fun mapRes!26918 () Bool)

(assert (=> mapIsEmpty!26918 mapRes!26918))

(declare-fun b!866680 () Bool)

(declare-fun e!482807 () Unit!29694)

(declare-fun Unit!29696 () Unit!29694)

(assert (=> b!866680 (= e!482807 Unit!29696)))

(declare-fun lt!393426 () Unit!29694)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49898 (_ BitVec 32) (_ BitVec 32)) Unit!29694)

(assert (=> b!866680 (= lt!393426 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!866680 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17121)))

(declare-fun lt!393429 () Unit!29694)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49898 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29694)

(assert (=> b!866680 (= lt!393429 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49898 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!866680 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!393435 () Unit!29694)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49898 (_ BitVec 64) (_ BitVec 32) List!17124) Unit!29694)

(assert (=> b!866680 (= lt!393435 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17121))))

(assert (=> b!866680 false))

(declare-fun b!866681 () Bool)

(declare-fun Unit!29697 () Unit!29694)

(assert (=> b!866681 (= e!482807 Unit!29697)))

(declare-fun b!866682 () Bool)

(declare-fun e!482810 () Bool)

(assert (=> b!866682 (= e!482810 true)))

(declare-fun lt!393434 () ListLongMap!10043)

(declare-fun lt!393431 () tuple2!11260)

(assert (=> b!866682 (= lt!393434 (+!2333 (+!2333 lt!393432 lt!393431) lt!393430))))

(declare-fun lt!393427 () Unit!29694)

(declare-fun lt!393438 () V!27553)

(declare-fun addCommutativeForDiffKeys!535 (ListLongMap!10043 (_ BitVec 64) V!27553 (_ BitVec 64) V!27553) Unit!29694)

(assert (=> b!866682 (= lt!393427 (addCommutativeForDiffKeys!535 lt!393432 k!854 v!557 (select (arr!23976 _keys!868) from!1053) lt!393438))))

(declare-fun b!866683 () Bool)

(declare-fun res!588975 () Bool)

(assert (=> b!866683 (=> (not res!588975) (not e!482804))))

(assert (=> b!866683 (= res!588975 (and (= (size!24418 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24417 _keys!868) (size!24418 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!866684 () Bool)

(declare-fun res!588972 () Bool)

(assert (=> b!866684 (=> (not res!588972) (not e!482804))))

(assert (=> b!866684 (= res!588972 (and (= (select (arr!23976 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!866685 () Bool)

(assert (=> b!866685 (= e!482804 e!482808)))

(declare-fun res!588978 () Bool)

(assert (=> b!866685 (=> (not res!588978) (not e!482808))))

(assert (=> b!866685 (= res!588978 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!393436 () ListLongMap!10043)

(assert (=> b!866685 (= lt!393436 (getCurrentListMapNoExtraKeys!3003 _keys!868 lt!393439 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!866685 (= lt!393439 (array!49901 (store (arr!23977 _values!688) i!612 (ValueCellFull!8000 v!557)) (size!24418 _values!688)))))

(declare-fun lt!393441 () ListLongMap!10043)

(assert (=> b!866685 (= lt!393441 (getCurrentListMapNoExtraKeys!3003 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!588981 () Bool)

(assert (=> start!73856 (=> (not res!588981) (not e!482804))))

(assert (=> start!73856 (= res!588981 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24417 _keys!868))))))

(assert (=> start!73856 e!482804))

(assert (=> start!73856 tp_is_empty!16879))

(assert (=> start!73856 true))

(assert (=> start!73856 tp!51734))

(declare-fun array_inv!18930 (array!49898) Bool)

(assert (=> start!73856 (array_inv!18930 _keys!868)))

(declare-fun e!482811 () Bool)

(declare-fun array_inv!18931 (array!49900) Bool)

(assert (=> start!73856 (and (array_inv!18931 _values!688) e!482811)))

(declare-fun b!866676 () Bool)

(declare-fun res!588971 () Bool)

(assert (=> b!866676 (=> (not res!588971) (not e!482804))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49898 (_ BitVec 32)) Bool)

(assert (=> b!866676 (= res!588971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!866686 () Bool)

(assert (=> b!866686 (= e!482809 e!482810)))

(declare-fun res!588973 () Bool)

(assert (=> b!866686 (=> res!588973 e!482810)))

(assert (=> b!866686 (= res!588973 (= k!854 (select (arr!23976 _keys!868) from!1053)))))

(assert (=> b!866686 (not (= (select (arr!23976 _keys!868) from!1053) k!854))))

(declare-fun lt!393433 () Unit!29694)

(assert (=> b!866686 (= lt!393433 e!482807)))

(declare-fun c!92253 () Bool)

(assert (=> b!866686 (= c!92253 (= (select (arr!23976 _keys!868) from!1053) k!854))))

(assert (=> b!866686 (= lt!393436 lt!393434)))

(assert (=> b!866686 (= lt!393434 (+!2333 lt!393428 lt!393431))))

(assert (=> b!866686 (= lt!393431 (tuple2!11261 (select (arr!23976 _keys!868) from!1053) lt!393438))))

(declare-fun get!12697 (ValueCell!8000 V!27553) V!27553)

(declare-fun dynLambda!1199 (Int (_ BitVec 64)) V!27553)

(assert (=> b!866686 (= lt!393438 (get!12697 (select (arr!23977 _values!688) from!1053) (dynLambda!1199 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!866687 () Bool)

(declare-fun res!588976 () Bool)

(assert (=> b!866687 (=> (not res!588976) (not e!482804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!866687 (= res!588976 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26918 () Bool)

(declare-fun tp!51733 () Bool)

(assert (=> mapNonEmpty!26918 (= mapRes!26918 (and tp!51733 e!482805))))

(declare-fun mapValue!26918 () ValueCell!8000)

(declare-fun mapKey!26918 () (_ BitVec 32))

(declare-fun mapRest!26918 () (Array (_ BitVec 32) ValueCell!8000))

(assert (=> mapNonEmpty!26918 (= (arr!23977 _values!688) (store mapRest!26918 mapKey!26918 mapValue!26918))))

(declare-fun b!866688 () Bool)

(assert (=> b!866688 (= e!482811 (and e!482806 mapRes!26918))))

(declare-fun condMapEmpty!26918 () Bool)

(declare-fun mapDefault!26918 () ValueCell!8000)

